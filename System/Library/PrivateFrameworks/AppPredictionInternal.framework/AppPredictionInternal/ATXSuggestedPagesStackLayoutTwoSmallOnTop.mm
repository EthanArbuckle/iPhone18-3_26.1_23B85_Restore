@interface ATXSuggestedPagesStackLayoutTwoSmallOnTop
- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5;
- (unint64_t)maxAppRowsForPageType:(int64_t)a3;
- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5;
@end

@implementation ATXSuggestedPagesStackLayoutTwoSmallOnTop

- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (![v14 size])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  if ([v8 count] >= 2)
  {
    v16 = +[ATXSuggestedPagesUtils createSmallStack];
    v17 = +[ATXSuggestedPagesUtils createSmallStack];
    v18 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v8 limit:0];
    v19 = [v18 count];
    v29[0] = v16;
    v29[1] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v21 = [v7 tunableConstants];
    +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v18, 0, v19, v20, 0, [v21 maxWidgetsInStack]);

    v28[0] = v16;
    v28[1] = v17;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  }

  else
  {
    v15 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5
{
  v7 = a3;
  if ([v7 count] != 2)
  {
    [ATXSuggestedPagesStackLayoutTwoSmallOnTop layOutStacks:a2 numberOfColumns:self forPageType:?];
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 assignWidgetSpaceCoordinateWithRow:0 column:0];

  v9 = [v7 objectAtIndexedSubscript:1];

  [v9 assignWidgetSpaceCoordinateWithRow:0 column:1];
}

- (unint64_t)maxAppRowsForPageType:(int64_t)a3
{
  if ([MEMORY[0x277D42590] isiPad])
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (void)layOutStacks:(uint64_t)a1 numberOfColumns:(uint64_t)a2 forPageType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesStackLayoutTwoSmallOnTop.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"stacks.count == 2"}];
}

@end