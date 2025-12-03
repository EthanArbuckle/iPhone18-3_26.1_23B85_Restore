@interface AXSSDocumentTextRule
+ (id)matchReplacementArrayCapitalization:(id)capitalization withSource:(id)source;
+ (id)matchReplacementCapitalization:(id)capitalization withSource:(id)source;
+ (id)replaceCustomRegexNotation:(id)notation;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index;
@end

@implementation AXSSDocumentTextRule

- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index
{
  wordCopy = word;
  previousWordCopy = previousWord;
  textCopy = text;
  __assert_rtn("[AXSSDocumentTextRule issuesForWord:atRange:previousWord:previousWordRange:inText:ignoreRuleUntilIndex:]", "AXSSDocumentTextRule.m", 20, "false");
}

+ (id)replaceCustomRegexNotation:(id)notation
{
  v3 = [notation stringByReplacingOccurrencesOfString:@"[:AX_ws:]" withString:@"[  \\t]"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"[:AX_bullet:]" withString:@"[•▪◦◉◉◆◇◈◊○◎◘⦾⦿◦‣‧∙∘]"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"[:AX_nl:]" withString:@"[\\n\u2028]"];

  return v5;
}

+ (id)matchReplacementArrayCapitalization:(id)capitalization withSource:(id)source
{
  v22 = *MEMORY[0x277D85DE8];
  capitalizationCopy = capitalization;
  sourceCopy = source;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = capitalizationCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self matchReplacementCapitalization:*(*(&v17 + 1) + 8 * i) withSource:{sourceCopy, v17}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)matchReplacementCapitalization:(id)capitalization withSource:(id)source
{
  capitalizationCopy = capitalization;
  sourceCopy = source;
  if (![sourceCopy length] || !objc_msgSend(capitalizationCopy, "length"))
  {
    goto LABEL_5;
  }

  uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  if ([sourceCopy rangeOfCharacterFromSet:uppercaseLetterCharacterSet])
  {

LABEL_5:
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:capitalizationCopy];
    goto LABEL_6;
  }

  v10 = [capitalizationCopy mutableCopy];
  v11 = [capitalizationCopy length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__AXSSDocumentTextRule_matchReplacementCapitalization_withSource___block_invoke;
  v13[3] = &unk_278BF01F8;
  v14 = v10;
  v12 = v10;
  [v12 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v13}];
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:capitalizationCopy];

LABEL_6:

  return v8;
}

void __66__AXSSDocumentTextRule_matchReplacementCapitalization_withSource___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = [*(a1 + 32) substringWithRange:?];
  v11 = *(a1 + 32);
  v12 = [v13 capitalizedString];
  [v11 replaceCharactersInRange:a3 withString:{a4, v12}];

  *a7 = 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setGranularity:{-[AXSSDocumentTextRule granularity](self, "granularity")}];
  [v4 setSeverity:{-[AXSSDocumentTextRule severity](self, "severity")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [(AXSSDocumentTextRule *)equalCopy granularity], v5 != [(AXSSDocumentTextRule *)self granularity]) || (v6 = [(AXSSDocumentTextRule *)equalCopy severity], v6 != [(AXSSDocumentTextRule *)self severity]))
    {
      v7 = 0;
    }
  }

  return v7;
}

@end