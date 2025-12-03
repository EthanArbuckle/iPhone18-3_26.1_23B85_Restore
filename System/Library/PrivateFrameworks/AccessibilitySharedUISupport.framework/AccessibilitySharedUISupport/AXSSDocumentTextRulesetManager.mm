@interface AXSSDocumentTextRulesetManager
+ (id)sharedManager;
- (AXSSDocumentTextRulesetManager)init;
- (NSArray)rulesets;
- (id)description;
- (void)_loadCustomRulesets;
@end

@implementation AXSSDocumentTextRulesetManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXSSDocumentTextRulesetManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __47__AXSSDocumentTextRulesetManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AXSSDocumentTextRulesetManager)init
{
  v6.receiver = self;
  v6.super_class = AXSSDocumentTextRulesetManager;
  v2 = [(AXSSDocumentTextRulesetManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rulesets = v2->__rulesets;
    v2->__rulesets = v3;

    [(AXSSDocumentTextRulesetManager *)v2 loadRulesets];
  }

  return v2;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19.receiver = self;
  v19.super_class = AXSSDocumentTextRulesetManager;
  v4 = [(AXSSDocumentTextRulesetManager *)&v19 description];
  [v3 appendString:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _rulesets = [(AXSSDocumentTextRulesetManager *)self _rulesets];
  v6 = [_rulesets countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_rulesets);
        }

        allRules = [*(*(&v15 + 1) + 8 * i) allRules];
        v8 += [allRules count];
      }

      v7 = [_rulesets countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  _rulesets2 = [(AXSSDocumentTextRulesetManager *)self _rulesets];
  [v3 appendFormat:@" RuleSets:%li Rules:%li", objc_msgSend(_rulesets2, "count"), v8];

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)rulesets
{
  _rulesets = [(AXSSDocumentTextRulesetManager *)self _rulesets];
  v3 = [_rulesets copy];

  return v3;
}

- (void)_loadCustomRulesets
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(AXSSDocumentTextRuleset);
  [(AXSSDocumentTextRuleset *)v3 setName:@"custom"];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = objc_alloc_init(*(*(&v14 + 1) + 8 * v8));
        if (v9)
        {
          [(AXSSDocumentTextRuleset *)v3 addRule:v9, v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  allRules = [(AXSSDocumentTextRuleset *)v3 allRules];
  v11 = [allRules count];

  if (v11)
  {
    _rulesets = [(AXSSDocumentTextRulesetManager *)self _rulesets];
    [_rulesets addObject:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end