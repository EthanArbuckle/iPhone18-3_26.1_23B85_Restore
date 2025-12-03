@interface AXSSDocumentTextRuleset
- (AXSSDocumentTextRuleset)init;
- (NSArray)allRules;
- (id)rulesForGranularity:(int64_t)granularity;
- (void)addRule:(id)rule;
@end

@implementation AXSSDocumentTextRuleset

- (AXSSDocumentTextRuleset)init
{
  v6.receiver = self;
  v6.super_class = AXSSDocumentTextRuleset;
  v2 = [(AXSSDocumentTextRuleset *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rules = v2->__rules;
    v2->__rules = v3;
  }

  return v2;
}

- (void)addRule:(id)rule
{
  ruleCopy = rule;
  _rules = [(AXSSDocumentTextRuleset *)self _rules];
  [_rules addObject:ruleCopy];
}

- (NSArray)allRules
{
  _rules = [(AXSSDocumentTextRuleset *)self _rules];
  v3 = [_rules copy];

  return v3;
}

- (id)rulesForGranularity:(int64_t)granularity
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allRules = [(AXSSDocumentTextRuleset *)self allRules];
  v7 = [allRules countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allRules);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 granularity] == granularity)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allRules countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end