@interface ATXSuggestedPagesStackLayoutTwoMedium
- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5;
- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5;
@end

@implementation ATXSuggestedPagesStackLayoutTwoMedium

- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  if ([MEMORY[0x277D42590] isiPad])
  {
    v8 = [ATXSuggestedPagesUtils filterWidgets:v6 bySize:1 usedPersonalities:0];
    v9 = 0;
    if ([v8 count] >= 2)
    {
      v10 = +[ATXSuggestedPagesUtils createMediumStack];
      v11 = +[ATXSuggestedPagesUtils createMediumStack];
      v12 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v8 limit:0];
      v13 = [v12 count];
      v19[0] = v10;
      v19[1] = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v15 = [v7 tunableConstants];
      +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v12, 0, v13, v14, 0, [v15 maxWidgetsInStack]);

      v18[0] = v10;
      v18[1] = v11;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5
{
  v7 = a3;
  if ([v7 count] != 2)
  {
    [ATXSuggestedPagesStackLayoutTwoMedium layOutStacks:a2 numberOfColumns:self forPageType:?];
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 assignWidgetSpaceCoordinateWithRow:0 column:0];

  v9 = [v7 objectAtIndexedSubscript:1];

  [v9 assignWidgetSpaceCoordinateWithRow:0 column:2];
}

- (void)layOutStacks:(uint64_t)a1 numberOfColumns:(uint64_t)a2 forPageType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesStackLayoutTwoMedium.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"stacks.count == 2"}];
}

@end