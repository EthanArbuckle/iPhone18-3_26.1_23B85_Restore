@interface AXSSDocumentTextRule
+ (id)matchReplacementArrayCapitalization:(id)a3 withSource:(id)a4;
+ (id)matchReplacementCapitalization:(id)a3 withSource:(id)a4;
+ (id)replaceCustomRegexNotation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8;
@end

@implementation AXSSDocumentTextRule

- (id)issuesForWord:(id)a3 atRange:(_NSRange)a4 previousWord:(id)a5 previousWordRange:(_NSRange)a6 inText:(id)a7 ignoreRuleUntilIndex:(int64_t *)a8
{
  v9 = a3;
  v10 = a5;
  v11 = a7;
  __assert_rtn("[AXSSDocumentTextRule issuesForWord:atRange:previousWord:previousWordRange:inText:ignoreRuleUntilIndex:]", "AXSSDocumentTextRule.m", 20, "false");
}

+ (id)replaceCustomRegexNotation:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"[:AX_ws:]" withString:@"[  \\t]"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"[:AX_bullet:]" withString:@"[•▪◦◉◉◆◇◈◊○◎◘⦾⦿◦‣‧∙∘]"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"[:AX_nl:]" withString:@"[\\n\u2028]"];

  return v5;
}

+ (id)matchReplacementArrayCapitalization:(id)a3 withSource:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

        v14 = [a1 matchReplacementCapitalization:*(*(&v17 + 1) + 8 * i) withSource:{v7, v17}];
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

+ (id)matchReplacementCapitalization:(id)a3 withSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 length] || !objc_msgSend(v5, "length"))
  {
    goto LABEL_5;
  }

  v7 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  if ([v6 rangeOfCharacterFromSet:v7])
  {

LABEL_5:
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];
    goto LABEL_6;
  }

  v10 = [v5 mutableCopy];
  v11 = [v5 length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__AXSSDocumentTextRule_matchReplacementCapitalization_withSource___block_invoke;
  v13[3] = &unk_278BF01F8;
  v14 = v10;
  v12 = v10;
  [v12 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v13}];
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];

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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setGranularity:{-[AXSSDocumentTextRule granularity](self, "granularity")}];
  [v4 setSeverity:{-[AXSSDocumentTextRule severity](self, "severity")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [(AXSSDocumentTextRule *)v4 granularity], v5 != [(AXSSDocumentTextRule *)self granularity]) || (v6 = [(AXSSDocumentTextRule *)v4 severity], v6 != [(AXSSDocumentTextRule *)self severity]))
    {
      v7 = 0;
    }
  }

  return v7;
}

@end