@interface NSArray(ATXScoredAction)
- (id)atx_actionsFromActionResults;
@end

@implementation NSArray(ATXScoredAction)

- (id)atx_actionsFromActionResults
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"NSArray+ATXScoredAction.mm" lineNumber:21 description:@"Array should only contains ATXActionResult object"];
        }

        v10 = v9;
        scoredAction = [v10 scoredAction];
        v12 = scoredAction == 0;

        if (!v12)
        {
          scoredAction2 = [v10 scoredAction];
          [v4 addObject:scoredAction2];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

@end