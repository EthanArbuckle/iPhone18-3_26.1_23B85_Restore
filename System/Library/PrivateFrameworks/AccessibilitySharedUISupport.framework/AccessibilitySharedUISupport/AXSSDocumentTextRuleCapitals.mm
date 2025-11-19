@interface AXSSDocumentTextRuleCapitals
- (AXSSDocumentTextRuleCapitals)init;
- (BOOL)checkSpelledCorrectly:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_NSRange)checkSpellingOfString:(id)a3 includeAutocorrect:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8;
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

    v6 = [MEMORY[0x277D75B98] availableLanguages];
    v7 = [v6 firstObject];
    textCheckerLanguage = v3->_textCheckerLanguage;
    v3->_textCheckerLanguage = v7;

    if (!v3->_textCheckerLanguage)
    {
      v3->_textCheckerLanguage = @"en_US";
    }
  }

  return v3;
}

- (BOOL)checkSpelledCorrectly:(id)a3
{
  v4 = a3;
  if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:v4 includeAutocorrect:0]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if ([v4 length] != 3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:v4 includeAutocorrect:1]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@.", v4, v4];
    if ([(AXSSDocumentTextRuleCapitals *)self checkSpellingOfString:v5 includeAutocorrect:1])
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

- (_NSRange)checkSpellingOfString:(id)a3 includeAutocorrect:(BOOL)a4
{
  v5 = a3;
  v6 = [(AXSSDocumentTextRuleCapitals *)self textChecker];
  v7 = [v5 length];
  v8 = [(AXSSDocumentTextRuleCapitals *)self textCheckerLanguage];
  v9 = [v6 rangeOfMisspelledWordInString:v5 range:0 startingAt:v7 wrap:0 language:{0, v8}];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8
{
  length = a4.length;
  location = a4.location;
  v46[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v32 = a5;
  v13 = a7;
  if ([v12 length])
  {
    v14 = [v12 string];
    v15 = [v14 length];
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
    v19 = [v14 length];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __113__AXSSDocumentTextRuleCapitals_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v33[3] = &unk_278BF0418;
    v36 = &v38;
    v20 = v14;
    v34 = v20;
    v35 = self;
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
      [v24 setOffendingText:v12];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = AXSSDocumentTextRuleCapitals;
  return [(AXSSDocumentTextRule *)&v4 copyWithZone:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
      v5 = [(AXSSDocumentTextRule *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end