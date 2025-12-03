@interface AXMSemanticTextFactory
- (BOOL)_string:(id)_string containsOnlyCharactersFrom:(id)from;
- (BOOL)_textExistsInLexicon:(id)lexicon withLocale:(id)locale;
- (NLTagger)tagger;
- (NSDataDetector)dataDetector;
- (NSMutableDictionary)cachedLexicons;
- (NSMutableDictionary)compiledPatterns;
- (NSNumberFormatter)numberFormatter;
- (_LXLexicon)_lexiconForLocale:(id)locale;
- (id)_preprocessedText:(id)text;
- (id)semanticTextForText:(id)text withLocale:(id)locale;
- (void)_applyCustomPatterns:(id)patterns;
- (void)_applyDataDetectors:(id)detectors;
- (void)_applyNaturalLanguageTokens:(id)tokens;
- (void)_performSemanticAnalysis:(id)analysis;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_cachedLexicons;
    self->_cachedLexicons = dictionary;

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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_compiledPatterns;
    self->_compiledPatterns = dictionary;

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

- (id)semanticTextForText:(id)text withLocale:(id)locale
{
  v15 = *MEMORY[0x1E69E9840];
  textCopy = text;
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x1E695DF58] currentLocale];
  }

  v8 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = textCopy;
    _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "input text: %@", &v13, 0xCu);
  }

  v9 = [AXMSemanticText alloc];
  v10 = [(AXMSemanticTextFactory *)self _preprocessedText:textCopy];
  v11 = [(AXMSemanticText *)v9 initWithText:v10 locale:localeCopy];

  [(AXMSemanticTextFactory *)self _applyNaturalLanguageTokens:v11];
  [(AXMSemanticTextFactory *)self _applyDataDetectors:v11];
  [(AXMSemanticTextFactory *)self _applyCustomPatterns:v11];
  [(AXMSemanticTextFactory *)self _performSemanticAnalysis:v11];

  return v11;
}

- (id)_preprocessedText:(id)text
{
  textCopy = text;
  if (![textCopy length] || (objc_msgSend(textCopy, "rangeOfComposedCharacterSequenceAtIndex:", 0), v4 == 1) && objc_msgSend(textCopy, "characterAtIndex:", 0) == 0xFFFF)
  {
    v11 = &stru_1F23EA908;
  }

  else
  {
    v5 = [textCopy substringFromIndex:{objc_msgSend(textCopy, "length") - 1}];
    alphanumericCharacterSet = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
    invertedSet = [alphanumericCharacterSet invertedSet];

    v8 = [textCopy stringByTrimmingCharactersInSet:invertedSet];
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

- (BOOL)_string:(id)_string containsOnlyCharactersFrom:(id)from
{
  _stringCopy = _string;
  invertedSet = [from invertedSet];
  v7 = [_stringCopy rangeOfCharacterFromSet:invertedSet];

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_applyNaturalLanguageTokens:(id)tokens
{
  v23 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  preprocessedText = [tokensCopy preprocessedText];
  tagger = [(AXMSemanticTextFactory *)self tagger];
  [tagger setString:preprocessedText];

  v7 = *MEMORY[0x1E69779D0];
  v8 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "will enumerate tags for scheme: %@. options: all", buf, 0xCu);
  }

  tagger2 = [(AXMSemanticTextFactory *)self tagger];
  textRange = [tokensCopy textRange];
  v12 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__AXMSemanticTextFactory__applyNaturalLanguageTokens___block_invoke;
  v18 = &unk_1E7A1DE18;
  v19 = tokensCopy;
  selfCopy = self;
  v13 = tokensCopy;
  [tagger2 enumerateTagsInRange:textRange unit:v12 scheme:0 options:v7 usingBlock:{32, &v15}];

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

- (void)_applyDataDetectors:(id)detectors
{
  detectorsCopy = detectors;
  dataDetector = [(AXMSemanticTextFactory *)self dataDetector];
  preprocessedText = [detectorsCopy preprocessedText];
  textRange = [detectorsCopy textRange];
  v9 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__AXMSemanticTextFactory__applyDataDetectors___block_invoke;
  v11[3] = &unk_1E7A1DE40;
  v12 = detectorsCopy;
  v10 = detectorsCopy;
  [dataDetector enumerateMatchesInString:preprocessedText options:0 range:textRange usingBlock:{v9, v11}];
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

- (void)_applyCustomPatterns:(id)patterns
{
  patternsCopy = patterns;
  compiledPatterns = [(AXMSemanticTextFactory *)self compiledPatterns];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AXMSemanticTextFactory__applyCustomPatterns___block_invoke;
  v7[3] = &unk_1E7A1DE90;
  v8 = patternsCopy;
  v9 = 0;
  v6 = patternsCopy;
  [compiledPatterns enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)_performSemanticAnalysis:(id)analysis
{
  v59 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  string = [MEMORY[0x1E696AD60] string];
  v33 = analysisCopy;
  makeCursor = [analysisCopy makeCursor];
  if (([makeCursor isFinished] & 1) == 0)
  {
    v32 = *MEMORY[0x1E696A250];
    v31 = *MEMORY[0x1E696A580];
    while (1)
    {
      v8 = AXMediaLogTextProcessing();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        remainingRange = [makeCursor remainingRange];
        [makeCursor remainingRange];
        v11 = v10;
        isOtherWord = [makeCursor isOtherWord];
        isInLexicon = [makeCursor isInLexicon];
        isWhitespace = [makeCursor isWhitespace];
        *buf = 134219008;
        v50 = remainingRange;
        v51 = 2048;
        v52 = v11;
        v53 = 2048;
        v54 = isOtherWord;
        v55 = 2048;
        v56 = isInLexicon;
        v57 = 2048;
        v58 = isWhitespace;
        _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "remaining:[%ld %ld] word:%ld lexicon:%ld whitespace:%ld", buf, 0x34u);
      }

      if ([makeCursor isCustomPattern])
      {
        v45 = 0;
        v46 = 0;
        v15 = &v46;
        v16 = &v45;
        v17 = &v46;
        v18 = &v45;
        v19 = makeCursor;
        v20 = @"CustomPattern";
        goto LABEL_16;
      }

      if ([makeCursor isDataDetector])
      {
        break;
      }

      if (([makeCursor isWhitespace] & 1) != 0 || objc_msgSend(makeCursor, "isSentenceTerminator"))
      {
        v41 = 0;
        v42 = 0;
        v15 = &v42;
        v16 = &v41;
        v17 = &v42;
        v18 = &v41;
        goto LABEL_15;
      }

      if ([makeCursor isPunctuation])
      {
        v39 = 0;
        v40 = 0;
        v15 = &v40;
        v16 = &v39;
        v17 = &v40;
        v18 = &v39;
        goto LABEL_15;
      }

      if ([makeCursor isProperNoun])
      {
        v37 = 0;
        v38 = 0;
        v15 = &v38;
        v16 = &v37;
        v17 = &v38;
        v18 = &v37;
        goto LABEL_15;
      }

      if ([makeCursor isOtherWord])
      {
        if ([makeCursor isInLexicon])
        {
          v35 = 0;
          v36 = 0;
          v15 = &v36;
          v16 = &v35;
          v17 = &v36;
          v18 = &v35;
LABEL_15:
          v19 = makeCursor;
          v20 = @"NLPToken";
LABEL_16:
          [v19 processAttribute:v20 getSubstring:v17 advanceCursor:1 markAsSemanticError:0 error:v18];
          v21 = *v15;
          v22 = *v16;
          if (v21)
          {
            [string appendString:v21];
          }

          goto LABEL_18;
        }

        v34 = 0;
        [makeCursor processAttribute:@"NLPToken" getSubstring:0 advanceCursor:1 markAsSemanticError:1 error:&v34];
        v22 = v34;
      }

      else
      {
        v30 = MEMORY[0x1E696ABC0];
        v47 = v31;
        v23 = MEMORY[0x1E696AEC0];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(makeCursor, "remainingRange")}];
        v25 = MEMORY[0x1E696AD98];
        [makeCursor remainingRange];
        v27 = [v25 numberWithUnsignedInteger:v26];
        v28 = [v23 stringWithFormat:@"Failed to match current cursor position. remaining:[%@ %@]", v24, v27];
        v48 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v22 = [v30 errorWithDomain:v32 code:1 userInfo:v29];
      }

LABEL_18:
      if (v22)
      {
        [makeCursor markCurrentIndexAsSemanticErrorAndAdvanceCursor];
      }

      if ([makeCursor isFinished])
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
    v19 = makeCursor;
    v20 = @"DataDetector";
    goto LABEL_16;
  }

LABEL_2:
  [v33 setTransformedSpeechText:string];
  v6 = AXMediaLogTextProcessing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isSemanticallyComplete = [v33 isSemanticallyComplete];
    *buf = 134218242;
    v50 = isSemanticallyComplete;
    v51 = 2112;
    v52 = string;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "semanticallyComplete:%ld speechText: '%@'", buf, 0x16u);
  }
}

- (BOOL)_textExistsInLexicon:(id)lexicon withLocale:(id)locale
{
  lexiconCopy = lexicon;
  localeCopy = locale;
  if ([(AXMSemanticTextFactory *)self _lexiconForLocale:localeCopy])
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

- (_LXLexicon)_lexiconForLocale:(id)locale
{
  v35 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x1E695DF58] currentLocale];
  }

  cachedLexicons = [(AXMSemanticTextFactory *)self cachedLexicons];
  v6 = [cachedLexicons objectForKey:localeCopy];

  if (!v6 && localeCopy)
  {
    v7 = AXMediaLogTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      languageCode = [localeCopy languageCode];
      localeIdentifier = [localeCopy localeIdentifier];
      *buf = 138412802;
      *&buf[4] = localeCopy;
      v31 = 2112;
      v32 = languageCode;
      v33 = 2112;
      v34 = localeIdentifier;
      _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "Creating new lexicon for locale (an expensive operation): %@ (language: %@) (id: %@)", buf, 0x20u);
    }

    v28 = *MEMORY[0x1E69ABFE8];
    v29 = localeCopy;
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
      cachedLexicons2 = [(AXMSemanticTextFactory *)self cachedLexicons];
      [cachedLexicons2 setObject:v6 forKey:localeCopy];
    }

    CFRelease(v6);
LABEL_14:
  }

  if (!v6)
  {
    v20 = AXMediaLogTextProcessing();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(AXMSemanticTextFactory *)localeCopy _lexiconForLocale:v20, v21, v22, v23, v24, v25, v26];
    }
  }

  return v6;
}

@end