@interface AXSSDocumentTextRuleBullets
- (AXSSDocumentTextRuleBullets)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index;
@end

@implementation AXSSDocumentTextRuleBullets

- (AXSSDocumentTextRuleBullets)init
{
  v5.receiver = self;
  v5.super_class = AXSSDocumentTextRuleBullets;
  v2 = [(AXSSDocumentTextRuleBullets *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXSSDocumentTextRule *)v2 setGranularity:1];
  }

  return v3;
}

- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index
{
  length = wordRange.length;
  location = wordRange.location;
  v11 = range.length;
  v12 = range.location;
  textCopy = text;
  v14 = textCopy;
  v15 = 0;
  if (previousWord && location != 0x7FFFFFFFFFFFFFFFLL && length != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v12 + v11 - location;
    v17 = [textCopy attributedSubstringFromRange:{location, v16}];
    string = [v17 string];
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"[:AX_nl:]([:AX_ws:]*[:AX_bullet:][:AX_ws:]*[:AX_nl:])+"];
    v21 = [AXSSDocumentTextRule replaceCustomRegexNotation:v20];

    v22 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v21 options:0 error:0];
    v23 = [string length];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __112__AXSSDocumentTextRuleBullets_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v28[3] = &unk_278BF0310;
    v32 = location;
    v33 = v16;
    v29 = v14;
    v30 = string;
    v24 = v19;
    v31 = v24;
    v25 = string;
    [v22 enumerateMatchesInString:v25 options:0 range:0 usingBlock:{v23, v28}];
    v26 = v31;
    v15 = v24;
  }

  return v15;
}

void __112__AXSSDocumentTextRuleBullets_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 range];
  if (v4 >= 2)
  {
    v5 = *(a1 + 56) + v3;
    if (v5)
    {
      v6 = v4;
      if (v5 + v4 <= [*(a1 + 32) length])
      {
        v7 = [*(a1 + 32) attributedSubstringFromRange:{v5, v6}];
        v8 = objc_opt_new();
        [v8 setOffendingText:v7];
        [v8 setRange:{v5, v6}];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The term %@ appears to have spacing issues", *(a1 + 40)];
        [v8 setNote:v9];

        [v8 setKind:3];
        v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
        v13[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        [v8 setSuggestions:v11];

        [*(a1 + 48) addObject:v8];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AXSSDocumentTextRuleBullets;
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
      v7.super_class = AXSSDocumentTextRuleBullets;
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