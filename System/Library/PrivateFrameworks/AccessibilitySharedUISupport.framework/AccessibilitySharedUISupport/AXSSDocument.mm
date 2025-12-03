@interface AXSSDocument
+ (id)documentWithAttributedText:(id)text;
+ (id)documentWithText:(id)text;
- (AXSSDocument)init;
- (NSArray)nodes;
- (id)_generateAllDocIssues;
- (id)_generateAllWordIssues;
- (id)generateAllIssues;
- (id)stringByAcceptingFirstSuggestionForIssues:(id)issues;
- (void)addNode:(id)node;
@end

@implementation AXSSDocument

+ (id)documentWithText:(id)text
{
  v4 = MEMORY[0x277CCA898];
  textCopy = text;
  v6 = [[v4 alloc] initWithString:textCopy];

  v7 = [self documentWithAttributedText:v6];

  return v7;
}

+ (id)documentWithAttributedText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(AXSSDocumentNode);
  [(AXSSDocumentNode *)v4 setText:textCopy];

  v5 = objc_opt_new();
  [v5 addNode:v4];

  return v5;
}

- (AXSSDocument)init
{
  v6.receiver = self;
  v6.super_class = AXSSDocument;
  v2 = [(AXSSDocument *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->__nodes;
    v2->__nodes = v3;
  }

  return v2;
}

- (NSArray)nodes
{
  _nodes = [(AXSSDocument *)self _nodes];
  v3 = [_nodes copy];

  return v3;
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  _nodes = [(AXSSDocument *)self _nodes];
  [_nodes addObject:nodeCopy];
}

- (id)generateAllIssues
{
  _generateAllWordIssues = [(AXSSDocument *)self _generateAllWordIssues];
  _generateAllDocIssues = [(AXSSDocument *)self _generateAllDocIssues];
  v5 = [_generateAllWordIssues arrayByAddingObjectsFromArray:_generateAllDocIssues];

  return v5;
}

- (id)_generateAllDocIssues
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v20 = +[AXSSDocumentTextRulesetManager sharedManager];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v22 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v22)
  {
    v21 = *v34;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        text = [*(*(&v33 + 1) + 8 * i) text];
        if ([text length])
        {
          v23 = i;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          rulesets = [v20 rulesets];
          v6 = [rulesets countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v30;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v30 != v8)
                {
                  objc_enumerationMutation(rulesets);
                }

                v10 = [*(*(&v29 + 1) + 8 * j) rulesForGranularity:2];
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                v11 = [v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v26;
                  do
                  {
                    for (k = 0; k != v12; ++k)
                    {
                      if (*v26 != v13)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v15 = [*(*(&v25 + 1) + 8 * k) issuesInText:text];
                      if ([v15 count])
                      {
                        [v3 addObjectsFromArray:v15];
                      }
                    }

                    v12 = [v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
                  }

                  while (v12);
                }
              }

              v7 = [rulesets countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v7);
          }

          i = v23;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v22);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_generateAllWordIssues
{
  v46 = *MEMORY[0x277D85DE8];
  v22 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v3 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v3)
  {
    v21 = *v42;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    v20 = vnegq_f64(v4);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        v7 = objc_opt_new();
        text = [v6 text];
        string = [text string];
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy_;
        v39 = __Block_byref_object_dispose_;
        v40 = 0;
        v30 = 0;
        v31 = &v30;
        v32 = 0x3010000000;
        v33 = &unk_23DBBDEAD;
        v34 = v20;
        v10 = [string length];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __38__AXSSDocument__generateAllWordIssues__block_invoke;
        v23[3] = &unk_278BF03B8;
        v11 = text;
        v24 = v11;
        v25 = v6;
        v28 = &v35;
        v29 = &v30;
        v12 = v7;
        v26 = v12;
        v13 = v22;
        v27 = v13;
        [string enumerateSubstringsInRange:0 options:v10 usingBlock:{1027, v23}];
        if (v36[5] && [v11 length] >= 3)
        {
          v14 = objc_opt_new();
          v15 = [v11 length];
          v16 = _CheckNodeWord(v6, v11, v14, v15, 0, v36[5], v31[4], v31[5], v12);

          if ([v16 count])
          {
            [v13 addObjectsFromArray:v16];
          }
        }

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(&v35, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v3);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v22;
}

void __38__AXSSDocument__generateAllWordIssues__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) attributedSubstringFromRange:?];
  v11 = _CheckNodeWord(*(a1 + 40), *(a1 + 32), v7, a3, a4, *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  if ([v11 count])
  {
    [*(a1 + 56) addObjectsFromArray:v11];
  }

  v8 = *(*(a1 + 72) + 8);
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (id)stringByAcceptingFirstSuggestionForIssues:(id)issues
{
  v47 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  v29 = objc_opt_new();
  v27 = issuesCopy;
  v31 = [issuesCopy mutableCopy];
  [v31 sortUsingComparator:&__block_literal_global_0];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v30 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v41 + 1) + 8 * v5);
        text = [v6 text];
        v34 = [text mutableCopy];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = v31;
        v8 = [v36 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v38;
          do
          {
            v12 = 0;
            v35 = v9;
            do
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(v36);
              }

              v13 = *(*(&v37 + 1) + 8 * v12);
              node = [v13 node];
              v15 = [node isEqual:v6];

              if (v15)
              {
                range = [v13 range];
                v18 = v17;
                suggestions = [v13 suggestions];
                firstObject = [suggestions firstObject];
                if (firstObject)
                {
                  v21 = v6;
                  v22 = [v34 length];
                  [v34 replaceCharactersInRange:range - v10 withAttributedString:{v18, firstObject}];
                  v23 = [v34 length];
                  v24 = v22 + v10;
                  v6 = v21;
                  v9 = v35;
                  v10 = v24 - v23;
                }
              }

              ++v12;
            }

            while (v9 != v12);
            v9 = [v36 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v9);
        }

        if ([v34 length])
        {
          [v29 appendAttributedString:v34];
        }

        v5 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __58__AXSSDocument_stringByAcceptingFirstSuggestionForIssues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 range];
  if (v6 == [v5 range])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 range];
    if (v8 < [v5 range])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

@end