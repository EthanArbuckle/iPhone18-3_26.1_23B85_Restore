@interface ATXSuggestedPagesStackLayoutFourSmallOnTop
- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5;
- (unint64_t)maxAppRowsForPageType:(int64_t)a3;
- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5;
@end

@implementation ATXSuggestedPagesStackLayoutFourSmallOnTop

- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (a4 == 4 || ([MEMORY[0x277D42590] isiPad] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if (![v16 size])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    if ([v10 count] >= 4)
    {
      v17 = +[ATXSuggestedPagesUtils createSmallStack];
      v18 = +[ATXSuggestedPagesUtils createSmallStack];
      v19 = +[ATXSuggestedPagesUtils createSmallStack];
      v20 = +[ATXSuggestedPagesUtils createSmallStack];
      v31[0] = v17;
      v31[1] = v18;
      v31[2] = v19;
      v31[3] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      v22 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v10 limit:4];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __89__ATXSuggestedPagesStackLayoutFourSmallOnTop_makeStacksFromWidgets_pageType_environment___block_invoke;
      v25[3] = &unk_27859C210;
      v9 = v21;
      v26 = v9;
      [v22 enumerateObjectsUsingBlock:v25];
    }

    else
    {
      v9 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

void __89__ATXSuggestedPagesStackLayoutFourSmallOnTop_makeStacksFromWidgets_pageType_environment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:&v10 count:1];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:{a3, v10, v11}];

  [v8 setWidgets:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5
{
  v7 = a3;
  if ([v7 count] != 4)
  {
    [ATXSuggestedPagesStackLayoutFourSmallOnTop layOutStacks:a2 numberOfColumns:self forPageType:?];
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 assignWidgetSpaceCoordinateWithRow:0 column:0];

  v9 = [v7 objectAtIndexedSubscript:1];
  [v9 assignWidgetSpaceCoordinateWithRow:0 column:1];

  v10 = [v7 objectAtIndexedSubscript:2];
  [v10 assignWidgetSpaceCoordinateWithRow:1 column:0];

  v11 = [v7 objectAtIndexedSubscript:3];

  [v11 assignWidgetSpaceCoordinateWithRow:1 column:1];
}

- (unint64_t)maxAppRowsForPageType:(int64_t)a3
{
  if ([MEMORY[0x277D42590] isiPad])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)layOutStacks:(uint64_t)a1 numberOfColumns:(uint64_t)a2 forPageType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesStackLayoutFourSmallOnTop.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"stacks.count == 4"}];
}

@end