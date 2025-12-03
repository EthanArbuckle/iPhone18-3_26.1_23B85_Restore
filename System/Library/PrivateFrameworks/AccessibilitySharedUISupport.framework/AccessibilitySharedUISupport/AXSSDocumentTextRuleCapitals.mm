@interface AXSSDocumentTextRuleCapitals
- (AXSSDocumentTextRuleCapitals)init;
- (BOOL)checkSpelledCorrectly:(id)correctly;
- (BOOL)isEqual:(id)equal;
- (_NSRange)checkSpellingOfString:(id)string includeAutocorrect:(BOOL)autocorrect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index;
@end

@implementation AXSSDocumentTextRuleCapitals

- (AXSSDocumentTextRuleCapitals)init
{
  v10.receiver = self;
  v10.super_class = AXSSDocumentTextRuleCapitals;
  v2 = [(AXSSDocumentTextRuleCapitals *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(AXSSDocumentTextRule *)v2 setGranularity:1];
    v4 = objc_alloc_init(MEMORY[0x277D75B98]);
    textChecker = v3->_textChecker;
    v3->_textChecker = v4;

    availableLanguages = [MEMORY[0x277D75B98] availableLanguages];
    firstObject = [availableLanguages firstObject];
    textCheckerLanguage = v3->_textCheckerLanguage;
    v3->_textCheckerLanguage = firstObject;

    if (!v3->_textCheckerLanguage)
    {
      v3->_textCheckerLanguage = @"en_US";
    }
  }

  return v3;
}

- (BOOL)checkSpelledCorrectly:(id)correctly
{
  correctlyCopy = correctly;
  if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:correctlyCopy includeAutocorrect:0]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if ([correctlyCopy length] != 3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:correctlyCopy includeAutocorrect:1]== 0x7FFFFFFFFFFFFFFFLL)
  {
    correctlyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@.", correctlyCopy, correctlyCopy];
    if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:correctlyCopy includeAutocorrect:1])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 3;
    }

    v8 = !v7;
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (_NSRange)checkSpellingOfString:(id)string includeAutocorrect:(BOOL)autocorrect
{
  stringCopy = string;
  textChecker = [(AXSSDocumentTextRuleCapitals *)self textChecker];
  v7 = [stringCopy length];
  textCheckerLanguage = [(AXSSDocumentTextRuleCapitals *)self textCheckerLanguage];
  v9 = [textChecker rangeOfMisspelledWordInString:stringCopy range:0 startingAt:v7 wrap:0 language:{0, textCheckerLanguage}];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index
{
  length = range.length;
  location = range.location;
  v46[1] = *MEMORY[0x277D85DE8];
  wordCopy = word;
  previousWordCopy = previousWord;
  textCopy = text;
  if ([wordCopy length])
  {
    string = [wordCopy string];
    v15 = [string length];
    v16 = v15 == 3;
    if (v15 == 3)
    {
      v17 = @"[A-Z]{2}[a-z]";
    }

    else
    {
      v17 = @"[A-Z]{2,}[a-z]{2,}";
    }

    v44 = 0;
    v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v17 options:0 error:&v44];
    if (v44)
    {
      [AXSSDocumentTextRuleCapitals issuesForWord:atRange:previousWord:previousWordRange:inText:ignoreRuleUntilIndex:];
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    v43 = 0;
    v19 = [string length];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __113__AXSSDocumentTextRuleCapitals_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v33[3] = &unk_278BF0418;
    v36 = &v38;
    v20 = string;
    v34 = v20;
    selfCopy = self;
    v37 = v16;
    [v18 enumerateMatchesInString:v20 options:0 range:0 usingBlock:{v19, v33}];
    v21 = [v39[5] length];
    if (v21 < [v20 length])
    {
      v22 = v39[5];
      v23 = [v20 substringFromIndex:{objc_msgSend(v22, "length")}];
      [v22 appendString:v23];
    }

    if ([v39[5] length] && (objc_msgSend(v39[5], "isEqual:", v20) & 1) == 0)
    {
      v24 = objc_opt_new();
      [v24 setOffendingText:wordCopy];
      [v24 setRange:{location, length}];
      v28 = objc_alloc(MEMORY[0x277CCA898]);
      v29 = [v28 initWithString:v39[5]];
      v46[0] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      [v24 setSuggestions:v30];

      [v24 setKind:1];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"The term %@ appears to have capitalization issues", v20];
      [v24 setNote:v31];

      if (v24)
      {
        v45 = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        goto LABEL_12;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = MEMORY[0x277CBEBF8];
LABEL_12:

    _Block_object_dispose(&v38, 8);
    goto LABEL_14;
  }

  v25 = MEMORY[0x277CBEBF8];
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __113__AXSSDocumentTextRuleCapitals_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v17;
  }

  v7 = [v3 range];
  v9 = [*(a1 + 32) substringWithRange:{v7, v8}];
  if (v7 > [*(*(*(a1 + 48) + 8) + 40) length])
  {
    v10 = [*(*(*(a1 + 48) + 8) + 40) length];
    v11 = v7 - [*(*(*(a1 + 48) + 8) + 40) length];
    if (v11 + v10 < [*(a1 + 32) length])
    {
      v12 = [*(a1 + 32) substringWithRange:{v10, v11}];
      if ([v12 length])
      {
        [*(*(*(a1 + 48) + 8) + 40) appendString:v12];
      }
    }
  }

  v13 = [v9 capitalizedString];
  if (([*(a1 + 40) checkSpelledCorrectly:v13] & 1) == 0)
  {
    v15 = *(*(*(a1 + 48) + 8) + 40);
    goto LABEL_13;
  }

  if (*(a1 + 56) == 1)
  {
    v14 = [*(a1 + 40) checkSpelledCorrectly:v9];
    v15 = *(*(*(a1 + 48) + 8) + 40);
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_13:
    v16 = v9;
    goto LABEL_16;
  }

  v15 = *(*(*(a1 + 48) + 8) + 40);
LABEL_15:
  v16 = v13;
LABEL_16:
  [v15 appendString:v16];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AXSSDocumentTextRuleCapitals;
  return [(AXSSDocumentTextRule *)&v4 copyWithZone:zone];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = AXSSDocumentTextRuleCapitals;
      v5 = [(AXSSDocumentTextRule *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end