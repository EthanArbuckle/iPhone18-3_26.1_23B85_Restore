@interface ATXSuggestedPagesStackLayoutTwoLargeTwoSmallOneMedium
- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesStackLayoutTwoLargeTwoSmallOneMedium

- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment
{
  v45[2] = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  environmentCopy = environment;
  if ([MEMORY[0x277D42590] isiPad])
  {
    v8 = objc_opt_new();
    v9 = [ATXSuggestedPagesUtils filterWidgets:widgetsCopy bySize:2 usedPersonalities:v8];
    if ([v9 count] >= 2)
    {
      v11 = +[ATXSuggestedPagesUtils createLargeStack];
      v12 = +[ATXSuggestedPagesUtils createLargeStack];
      v13 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v9 limit:0];
      v39 = v11;
      v45[0] = v11;
      v45[1] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      tunableConstants = [environmentCopy tunableConstants];
      v38 = v13;
      +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v13, 0, 2, v14, v8, [tunableConstants maxWidgetsInStack]);

      v16 = [ATXSuggestedPagesUtils filterWidgets:widgetsCopy bySize:1 usedPersonalities:v8];
      if ([v16 count])
      {
        v37 = v12;
        v17 = +[ATXSuggestedPagesUtils createMediumStack];
        v35 = v16;
        v18 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v16 limit:0];
        v36 = v17;
        v44 = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        tunableConstants2 = [environmentCopy tunableConstants];
        +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v18, 0, 1, v19, v8, [tunableConstants2 maxWidgetsInStack]);

        v21 = [ATXSuggestedPagesUtils filterWidgets:widgetsCopy bySize:0 usedPersonalities:v8];
        v10 = 0;
        if ([v21 count] >= 2)
        {
          v33 = +[ATXSuggestedPagesUtils createSmallStack];
          v32 = +[ATXSuggestedPagesUtils createSmallStack];
          [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
          v22 = v34 = v21;
          v43 = v22;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
          v31 = [v34 sortedArrayUsingDescriptors:v23];

          v42[0] = v33;
          v42[1] = v32;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
          tunableConstants3 = [environmentCopy tunableConstants];
          +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v31, 0, 2, v24, v8, [tunableConstants3 maxWidgetsInStack]);

          v26 = [v38 count] - 2;
          v41[0] = v39;
          v41[1] = v37;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
          tunableConstants4 = [environmentCopy tunableConstants];
          +[ATXSuggestedPagesUtils evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:](ATXSuggestedPagesUtils, "evenlyDistributeWidgets:inRange:amongStacks:usedPersonalities:maxWidgetsInStack:", v38, 2, v26, v27, v8, [tunableConstants4 maxWidgetsInStack]);

          v40[0] = v32;
          v40[1] = v33;
          v40[2] = v36;
          v40[3] = v37;
          v40[4] = v39;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];

          v21 = v34;
        }

        v12 = v37;
        v16 = v35;
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
  }

  else
  {
    v10 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

@end