@interface ATXSuggestedPagesStackLayoutTwoMediumTwoSmall
- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesStackLayoutTwoMediumTwoSmall

- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment
{
  v37[2] = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  environmentCopy = environment;
  if ([MEMORY[0x277D42590] isiPad])
  {
    v8 = objc_opt_new();
    v9 = [ATXSuggestedPagesUtils filterWidgets:widgetsCopy bySize:1 usedPersonalities:v8];
    if ([v9 count] >= 2)
    {
      v11 = +[ATXSuggestedPagesUtils createMediumStack];
      v12 = +[ATXSuggestedPagesUtils createMediumStack];
      v13 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v9 limit:0];
      v31 = v11;
      v37[0] = v11;
      v37[1] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      tunableConstants = [environmentCopy tunableConstants];
      v32 = v13;
      +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v13, 0, 2, v14, v8, [tunableConstants maxWidgetsInStack]);

      v16 = [ATXSuggestedPagesUtils filterWidgets:widgetsCopy bySize:0 usedPersonalities:v8];
      v10 = 0;
      if ([v16 count] >= 2)
      {
        v28 = +[ATXSuggestedPagesUtils createSmallStack];
        v27 = +[ATXSuggestedPagesUtils createSmallStack];
        v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
        v36 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        [v16 sortedArrayUsingDescriptors:v18];
        v19 = v29 = v9;

        v35[0] = v28;
        v35[1] = v27;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        [environmentCopy tunableConstants];
        v21 = v30 = v16;
        +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v19, 0, 2, v20, v8, [v21 maxWidgetsInStack]);

        v22 = [v32 count] - 2;
        v34[0] = v31;
        v34[1] = v12;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
        tunableConstants2 = [environmentCopy tunableConstants];
        v16 = v30;
        +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v32, 2, v22, v23, v8, [tunableConstants2 maxWidgetsInStack]);

        v33[0] = v27;
        v33[1] = v28;
        v33[2] = v12;
        v33[3] = v31;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];

        v9 = v29;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

@end