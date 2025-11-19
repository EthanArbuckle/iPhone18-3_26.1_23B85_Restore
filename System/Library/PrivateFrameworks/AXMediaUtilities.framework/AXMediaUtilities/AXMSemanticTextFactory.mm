@interface AXMSemanticTextFactory
- (BOOL)_string:(id)a3 containsOnlyCharactersFrom:(id)a4;
- (BOOL)_textExistsInLexicon:(id)a3 withLocale:(id)a4;
- (NLTagger)tagger;
- (NSDataDetector)dataDetector;
- (NSMutableDictionary)cachedLexicons;
- (NSMutableDictionary)compiledPatterns;
- (NSNumberFormatter)numberFormatter;
- (_LXLexicon)_lexiconForLocale:(id)a3;
- (id)_preprocessedText:(id)a3;
- (id)semanticTextForText:(id)a3 withLocale:(id)a4;
- (void)_applyCustomPatterns:(id)a3;
- (void)_applyDataDetectors:(id)a3;
- (void)_applyNaturalLanguageTokens:(id)a3;
- (void)_performSemanticAnalysis:(id)a3;
@end

@implementation AXMSemanticTextFactory

- (NLTagger)tagger
{
  v10[4] = *MEMORY[0x1E69E9840];
  tagger = self->_tagger;
  if (!tagger)
  {
    v4 = *MEMORY[0x1E69779C8];
    v10[0] = *MEMORY[0x1E69779F0];
    v10[1] = v4;
    v5 = *MEMORY[0x1E69779E0];
    v10[2] = *MEMORY[0x1E69779D0];
    v10[3] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
    v7 = [objc_alloc(MEMORY[0x1E6977A80]) initWithTagSchemes:v6];
    v8 = self->_tagger;
    self->_tagger = v7;

    tagger = self->_tagger;
  }

  return tagger;
}

- (NSMutableDictionary)cachedLexicons
{
  cachedLexicons = self->_cachedLexicons;
  if (!cachedLexicons)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_cachedLexicons;
    self->_cachedLexicons = v4;

    cachedLexicons = self->_cachedLexicons;
  }

  return cachedLexicons;
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (NSMutableDictionary)compiledPatterns
{
  v32 = *MEMORY[0x1E69E9840];
  compiledPatterns = self->_compiledPatterns;
  if (!compiledPatterns)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_compiledPatterns;
    self->_compiledPatterns = v4;

    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v20 URLForResource:@"SemanticTextPatterns" withExtension:@"plist"];
    [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:?];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v26 = 0u;
    obj = [v18 objectForKeyedSubscript:@"Patterns"];
    v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"Identifier"];
          v12 = MEMORY[0x1E696AE70];
          v13 = [v10 objectForKeyedSubscript:@"Pattern"];
          v22 = 0;
          v14 = [v12 regularExpressionWithPattern:v13 options:2 error:&v22];
          v15 = v22;

          if (v15)
          {
            v16 = AXMediaLogTextProcessing();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v11;
              v29 = 2112;
              v30 = v15;
              _os_log_error_impl(&dword_1AE37B000, v16, OS_LOG_TYPE_ERROR, "Error compiling pattern '%@' : %@", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_compiledPatterns setObject:v14 forKeyedSubscript:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v7);
    }

    compiledPatterns = self->_compiledPatterns;
  }

  return compiledPatterns;
}

- (NSDataDetector)dataDetector
{
  dataDetector = self->_dataDetector;
  if (!dataDetector)
  {
    v15 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:-1 error:&v15];
    v5 = v15;
    v6 = self->_dataDetector;
    self->_dataDetector = v4;

    if (v5)
    {
      v7 = AXMediaLogTextProcessing();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(AXMSemanticTextFactory *)v5 dataDetector:v7];
      }
    }

    dataDetector = self->_dataDetector;
  }

  return dataDetector;
}

- (id)semanticTextForText:(id)a3 withLocale:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v8 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "input text: %@", &v13, 0xCu);
  }

  v9 = [AXMSemanticText alloc];
  v10 = [(AXMSemanticTextFactory *)self _preprocessedText:v6];
  v11 = [(AXMSemanticText *)v9 initWithText:v10 locale:v7];

  [(AXMSemanticTextFactory *)self _applyNaturalLanguageTokens:v11];
  [(AXMSemanticTextFactory *)self _applyDataDetectors:v11];
  [(AXMSemanticTextFactory *)self _applyCustomPatterns:v11];
  [(AXMSemanticTextFactory *)self _performSemanticAnalysis:v11];

  return v11;
}

- (id)_preprocessedText:(id)a3
{
  v3 = a3;
  if (![v3 length] || (objc_msgSend(v3, "rangeOfComposedCharacterSequenceAtIndex:", 0), v4 == 1) && objc_msgSend(v3, "characterAtIndex:", 0) == 0xFFFF)
  {
    v11 = &stru_1F23EA908;
  }

  else
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 1}];
    v6 = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
    v7 = [v6 invertedSet];

    v8 = [v3 stringByTrimmingCharactersInSet:v7];
    if ([(__CFString *)v8 length])
    {
      v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".?"];
      if ([v5 rangeOfCharacterFromSet:v9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [(__CFString *)v8 stringByAppendingString:v5];

        v8 = v10;
      }

      v8 = v8;

      v11 = v8;
    }

    else
    {
      v11 = &stru_1F23EA908;
    }
  }

  return v11;
}

- (BOOL)_string:(id)a3 containsOnlyCharactersFrom:(id)a4
{
  v5 = a3;
  v6 = [a4 invertedSet];
  v7 = [v5 rangeOfCharacterFromSet:v6];

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_applyNaturalLanguageTokens:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 preprocessedText];
  v6 = [(AXMSemanticTextFactory *)self tagger];
  [v6 setString:v5];

  v7 = *MEMORY[0x1E69779D0];
  v8 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "will enumerate tags for scheme: %@. options: all", buf, 0xCu);
  }

  v9 = [(AXMSemanticTextFactory *)self tagger];
  v10 = [v4 textRange];
  v12 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__AXMSemanticTextFactory__applyNaturalLanguageTokens___block_invoke;
  v18 = &unk_1E7A1DE18;
  v19 = v4;
  v20 = self;
  v13 = v4;
  [v9 enumerateTagsInRange:v10 unit:v12 scheme:0 options:v7 usingBlock:{32, &v15}];

  v14 = [(AXMSemanticTextFactory *)self tagger:v15];
  [v14 setString:0];
}

void __54__AXMSemanticTextFactory__applyNaturalLanguageTokens___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v9 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1AE37B000, v9, OS_LOG_TYPE_DEFAULT, "  %@ -> %@", &v27, 0x16u);
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977A10]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:Whitespace";
LABEL_5:
    [v10 addNLPToken:v11 withRange:{a3, a4}];
    goto LABEL_6;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977978]])
  {
    [*(a1 + 32) addNLPToken:@"NLP:OtherWord" withRange:{a3, a4}];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) locale];
    v14 = [v12 _textExistsInLexicon:v8 withLocale:v13];

    [*(a1 + 32) addIsInLexionMarker:v14 withRange:{a3, a4}];
    if (v14)
    {
      goto LABEL_6;
    }

    v15 = [*(a1 + 40) numberFormatter];
    v16 = [v15 numberFromString:v8];

    if (!v16)
    {
LABEL_12:

      goto LABEL_6;
    }

    v17 = *(a1 + 32);
LABEL_11:
    [v17 addNumericToken:v16 withRange:{a3, a4}];
    goto LABEL_12;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977988]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:PersonalName";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977960]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:OrganizationName";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977998]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:PlaceName";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977940]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:Dash";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69779B8]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:Punctuation";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977A00]])
  {
    v10 = *(a1 + 32);
    v11 = @"NLP:SentenceTerminator";
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6977970]])
  {
    v18 = [*(a1 + 32) tokenizedLength];
    v19 = *(a1 + 40);
    if (v18 > 3)
    {
      v24 = [v8 lowercaseString];
      v25 = [*(a1 + 32) locale];
      v26 = [v19 _textExistsInLexicon:v24 withLocale:v25];

      [*(a1 + 32) addIsInLexionMarker:v26 withRange:{a3, a4}];
      if (!v26 || [v8 length] < 3)
      {
        v10 = *(a1 + 32);
        v11 = @"NLP:Unknown";
        goto LABEL_5;
      }
    }

    else
    {
      v20 = [*(a1 + 32) locale];
      v21 = [v19 _textExistsInLexicon:v8 withLocale:v20];

      [*(a1 + 32) addIsInLexionMarker:v21 withRange:{a3, a4}];
      if (!v21 || [v8 length] < 3)
      {
        v22 = [*(a1 + 40) numberFormatter];
        v16 = [v22 numberFromString:v8];

        v17 = *(a1 + 32);
        if (!v16)
        {
          [v17 addNLPToken:@"NLP:Unknown" withRange:{a3, a4}];
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    v10 = *(a1 + 32);
    v11 = @"NLP:OtherWord";
    goto LABEL_5;
  }

  v23 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __54__AXMSemanticTextFactory__applyNaturalLanguageTokens___block_invoke_cold_1();
  }

LABEL_6:
}

- (void)_applyDataDetectors:(id)a3
{
  v4 = a3;
  v5 = [(AXMSemanticTextFactory *)self dataDetector];
  v6 = [v4 preprocessedText];
  v7 = [v4 textRange];
  v9 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__AXMSemanticTextFactory__applyDataDetectors___block_invoke;
  v11[3] = &unk_1E7A1DE40;
  v12 = v4;
  v10 = v4;
  [v5 enumerateMatchesInString:v6 options:0 range:v7 usingBlock:{v9, v11}];
}

void __46__AXMSemanticTextFactory__applyDataDetectors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 resultType];
    v6 = *(a1 + 32);
    v8 = [v4 range];
    if (v5 <= 31)
    {
      if (v5 == 8)
      {
        v9 = @"DD:Date";
        goto LABEL_13;
      }

      if (v5 == 16)
      {
        v9 = @"DD:Address";
        goto LABEL_13;
      }
    }

    else
    {
      switch(v5)
      {
        case 32:
          v9 = @"DD:Link";
          goto LABEL_13;
        case 2048:
          v9 = @"DD:PhoneNumber";
          goto LABEL_13;
        case 4096:
          v9 = @"DD:TransitInfo";
LABEL_13:
          [v6 addDataDetector:v9 withRange:{v8, v7}];
          goto LABEL_14;
      }
    }

    v10 = [v6 substringWithRange:{v8, v7}];
    v11 = AXMediaLogTextProcessing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__AXMSemanticTextFactory__applyDataDetectors___block_invoke_cold_1();
    }
  }

LABEL_14:
}

- (void)_applyCustomPatterns:(id)a3
{
  v4 = a3;
  v5 = [(AXMSemanticTextFactory *)self compiledPatterns];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AXMSemanticTextFactory__applyCustomPatterns___block_invoke;
  v7[3] = &unk_1E7A1DE90;
  v8 = v4;
  v9 = 0;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __47__AXMSemanticTextFactory__applyCustomPatterns___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 preprocessedText];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) textRange];
  v12 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__AXMSemanticTextFactory__applyCustomPatterns___block_invoke_2;
  v14[3] = &unk_1E7A1DE68;
  v15 = *(a1 + 32);
  v16 = v5;
  v13 = v5;
  [v7 enumerateMatchesInString:v8 options:v9 range:v10 usingBlock:{v12, v14}];
}

uint64_t __47__AXMSemanticTextFactory__applyCustomPatterns___block_invoke_2(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3 = *(result + 40);
    v5 = [a2 range];

    return [v2 addCustomPattern:v3 withRange:{v5, v4}];
  }

  return result;
}

- (void)_performSemanticAnalysis:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v33 = v3;
  v5 = [v3 makeCursor];
  if (([v5 isFinished] & 1) == 0)
  {
    v32 = *MEMORY[0x1E696A250];
    v31 = *MEMORY[0x1E696A580];
    while (1)
    {
      v8 = AXMediaLogTextProcessing();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 remainingRange];
        [v5 remainingRange];
        v11 = v10;
        v12 = [v5 isOtherWord];
        v13 = [v5 isInLexicon];
        v14 = [v5 isWhitespace];
        *buf = 134219008;
        v50 = v9;
        v51 = 2048;
        v52 = v11;
        v53 = 2048;
        v54 = v12;
        v55 = 2048;
        v56 = v13;
        v57 = 2048;
        v58 = v14;
        _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "remaining:[%ld %ld] word:%ld lexicon:%ld whitespace:%ld", buf, 0x34u);
      }

      if ([v5 isCustomPattern])
      {
        v45 = 0;
        v46 = 0;
        v15 = &v46;
        v16 = &v45;
        v17 = &v46;
        v18 = &v45;
        v19 = v5;
        v20 = @"CustomPattern";
        goto LABEL_16;
      }

      if ([v5 isDataDetector])
      {
        break;
      }

      if (([v5 isWhitespace] & 1) != 0 || objc_msgSend(v5, "isSentenceTerminator"))
      {
        v41 = 0;
        v42 = 0;
        v15 = &v42;
        v16 = &v41;
        v17 = &v42;
        v18 = &v41;
        goto LABEL_15;
      }

      if ([v5 isPunctuation])
      {
        v39 = 0;
        v40 = 0;
        v15 = &v40;
        v16 = &v39;
        v17 = &v40;
        v18 = &v39;
        goto LABEL_15;
      }

      if ([v5 isProperNoun])
      {
        v37 = 0;
        v38 = 0;
        v15 = &v38;
        v16 = &v37;
        v17 = &v38;
        v18 = &v37;
        goto LABEL_15;
      }

      if ([v5 isOtherWord])
      {
        if ([v5 isInLexicon])
        {
          v35 = 0;
          v36 = 0;
          v15 = &v36;
          v16 = &v35;
          v17 = &v36;
          v18 = &v35;
LABEL_15:
          v19 = v5;
          v20 = @"NLPToken";
LABEL_16:
          [v19 processAttribute:v20 getSubstring:v17 advanceCursor:1 markAsSemanticError:0 error:v18];
          v21 = *v15;
          v22 = *v16;
          if (v21)
          {
            [v4 appendString:v21];
          }

          goto LABEL_18;
        }

        v34 = 0;
        [v5 processAttribute:@"NLPToken" getSubstring:0 advanceCursor:1 markAsSemanticError:1 error:&v34];
        v22 = v34;
      }

      else
      {
        v30 = MEMORY[0x1E696ABC0];
        v47 = v31;
        v23 = MEMORY[0x1E696AEC0];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "remainingRange")}];
        v25 = MEMORY[0x1E696AD98];
        [v5 remainingRange];
        v27 = [v25 numberWithUnsignedInteger:v26];
        v28 = [v23 stringWithFormat:@"Failed to match current cursor position. remaining:[%@ %@]", v24, v27];
        v48 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v22 = [v30 errorWithDomain:v32 code:1 userInfo:v29];
      }

LABEL_18:
      if (v22)
      {
        [v5 markCurrentIndexAsSemanticErrorAndAdvanceCursor];
      }

      if ([v5 isFinished])
      {
        goto LABEL_2;
      }
    }

    v43 = 0;
    v44 = 0;
    v15 = &v44;
    v16 = &v43;
    v17 = &v44;
    v18 = &v43;
    v19 = v5;
    v20 = @"DataDetector";
    goto LABEL_16;
  }

LABEL_2:
  [v33 setTransformedSpeechText:v4];
  v6 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v33 isSemanticallyComplete];
    *buf = 134218242;
    v50 = v7;
    v51 = 2112;
    v52 = v4;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "semanticallyComplete:%ld speechText: '%@'", buf, 0x16u);
  }
}

- (BOOL)_textExistsInLexicon:(id)a3 withLocale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXMSemanticTextFactory *)self _lexiconForLocale:v7])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    LXLexiconEnumerateEntriesForString();
    v8 = v11[3] > 0;
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58__AXMSemanticTextFactory__textExistsInLexicon_withLocale___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = LXEntryCopyString();
  MetaFlags = LXEntryGetMetaFlags();
  LXEntryGetProbability();
  v5 = v4;
  LXEntryGetPartialProbability();
  v7 = v6;
  UsageCount = LXEntryGetUsageCount();
  v9 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = 134219266;
    v12 = v10;
    v13 = 2112;
    v14 = v2;
    v15 = 2048;
    v16 = MetaFlags;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v7;
    v21 = 1024;
    v22 = UsageCount;
    _os_log_impl(&dword_1AE37B000, v9, OS_LOG_TYPE_DEFAULT, "lex #%ld: '%@' flags:%lu prob:%.2f partialProb:%.2f usageCount:%u", &v11, 0x3Au);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

- (_LXLexicon)_lexiconForLocale:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v5 = [(AXMSemanticTextFactory *)self cachedLexicons];
  v6 = [v5 objectForKey:v4];

  if (!v6 && v4)
  {
    v7 = AXMediaLogTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 languageCode];
      v9 = [v4 localeIdentifier];
      *buf = 138412802;
      *&buf[4] = v4;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "Creating new lexicon for locale (an expensive operation): %@ (language: %@) (id: %@)", buf, 0x20u);
    }

    v28 = *MEMORY[0x1E69ABFE8];
    v29 = v4;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *buf = 0;
    v11 = LXLexiconCreate();
    v6 = v11;
    if (*buf || !v11)
    {
      v13 = AXMediaLogTextProcessing();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AXMSemanticTextFactory *)buf _lexiconForLocale:v13, v14, v15, v16, v17, v18, v19];
      }

      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = [(AXMSemanticTextFactory *)self cachedLexicons];
      [v12 setObject:v6 forKey:v4];
    }

    CFRelease(v6);
LABEL_14:
  }

  if (!v6)
  {
    v20 = AXMediaLogTextProcessing();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(AXMSemanticTextFactory *)v4 _lexiconForLocale:v20, v21, v22, v23, v24, v25, v26];
    }
  }

  return v6;
}

@end