@interface NSArray(ATXScoredAction)
- (id)atx_actionsFromActionResults;
@end

@implementation NSArray(ATXScoredAction)

- (id)atx_actionsFromActionResults
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MEMORY[0x277CCA890] currentHandler];
          [v14 handleFailureInMethod:a2 object:v5 file:@"NSArray+ATXScoredAction.mm" lineNumber:21 description:@"Array should only contains ATXActionResult object"];
        }

        v10 = v9;
        v11 = [v10 scoredAction];
        v12 = v11 == 0;

        if (!v12)
        {
          v13 = [v10 scoredAction];
          [v4 addObject:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

@end