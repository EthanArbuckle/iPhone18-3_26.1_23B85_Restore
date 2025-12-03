@interface AXSSDocumentTextRuleWhitespace
- (AXSSDocumentTextRuleWhitespace)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index;
@end

@implementation AXSSDocumentTextRuleWhitespace

- (AXSSDocumentTextRuleWhitespace)init
{
  v5.receiver = self;
  v5.super_class = AXSSDocumentTextRuleWhitespace;
  v2 = [(AXSSDocumentTextRuleWhitespace *)&v5 init];
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
  v15 = [word length];
  v16 = MEMORY[0x277CBEBF8];
  if (previousWord && v15 && location != 0x7FFFFFFFFFFFFFFFLL && length != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v12 + v11 - location;
    v18 = [textCopy attributedSubstringFromRange:{location, v17}];
    string = [v18 string];
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)|(%@)|(%@)", @"[:AX_ws:]*[:AX_nl:]([:AX_ws:]*[:AX_nl:][:AX_ws:]*)+[:AX_nl:]", @"[:AX_ws:]{2, }[:AX_nl:]?", @"[:AX_ws:]+[:AX_nl:]"];
    v22 = [AXSSDocumentTextRule replaceCustomRegexNotation:v21];

    v23 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v22 options:0 error:0];
    v24 = [string length];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __115__AXSSDocumentTextRuleWhitespace_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v29[3] = &unk_278BF0310;
    v33 = location;
    v34 = v17;
    v30 = textCopy;
    v25 = v20;
    v31 = v25;
    v32 = string;
    v26 = string;
    [v23 enumerateMatchesInString:v26 options:0 range:0 usingBlock:{v24, v29}];
    v27 = v32;
    v16 = v25;
  }

  return v16;
}

void __115__AXSSDocumentTextRuleWhitespace_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [a2 range];
  if (v4 >= 2)
  {
    v5 = *(a1 + 56) + v3;
    if (v5)
    {
      v6 = v4;
      if (v5 + v4 <= [*(a1 + 32) length])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = *(a1 + 40);
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
LABEL_6:
          v11 = 0;
          while (1)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v36.location = [*(*(&v27 + 1) + 8 * v11) range];
            v37.location = v5;
            v37.length = v6;
            if (NSIntersectionRange(v36, v37).location != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
              if (v9)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:

          v7 = [*(a1 + 32) attributedSubstringFromRange:{v5, v6}];
          v12 = [v7 string];
          v13 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v14 = [v12 rangeOfCharacterFromSet:v13 options:0];
          v15 = [v12 rangeOfCharacterFromSet:v13 options:4];
          v16 = objc_opt_new();
          [v16 setOffendingText:v7];
          [v16 setRange:{v5, v6}];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"The term %@ appears to have spacing issues", *(a1 + 48)];
          [v16 setNote:v17];

          [v16 setKind:2];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL || v14 == v15)
          {
            if (v15 == v6 - 1)
            {
              v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
              v32 = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
              [v16 setSuggestions:v21];
            }

            else
            {
              v22 = [v7 string];
              v23 = [v22 substringWithRange:{0, 1}];

              v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];
              v31 = v24;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
              [v16 setSuggestions:v25];

              [*(a1 + 40) addObject:v16];
            }
          }

          else
          {
            v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
            v33 = v18;
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
            [v16 setSuggestions:v19];

            [*(a1 + 40) addObject:v16];
          }
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AXSSDocumentTextRuleWhitespace;
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
      v7.super_class = AXSSDocumentTextRuleWhitespace;
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