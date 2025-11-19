@interface ATXSuggestedPagesStackLayoutOneMediumOnTop
- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5;
- (unint64_t)maxAppRowsForPageType:(int64_t)a3;
@end

@implementation ATXSuggestedPagesStackLayoutOneMediumOnTop

- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 size] == 1)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = +[ATXSuggestedPagesUtils createMediumStack];
    v16 = [v7 tunableConstants];
    v17 = +[ATXSuggestedPagesUtils sortWidgetsByDescendingScore:limit:](ATXSuggestedPagesUtils, "sortWidgetsByDescendingScore:limit:", v8, [v16 maxWidgetsInStack]);
    [v15 setWidgets:v17];

    v25 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
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

@end