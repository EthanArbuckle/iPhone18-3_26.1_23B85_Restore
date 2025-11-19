@interface ATXSuggestedPagesStackLayoutSmallSpiral
- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5;
- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5;
@end

@implementation ATXSuggestedPagesStackLayoutSmallSpiral

- (id)makeStacksFromWidgets:(id)a3 pageType:(int64_t)a4 environment:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  if ([MEMORY[0x277D42590] isiPad])
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (![v15 size])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    if ([v9 count] >= 3)
    {
      v16 = objc_opt_new();
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v27 = +[ATXSuggestedPagesUtils createSmallStack];
      v19 = +[ATXSuggestedPagesUtils createSmallStack];
      v20 = +[ATXSuggestedPagesUtils createSmallStack];
      v26 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v9 limit:0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __86__ATXSuggestedPagesStackLayoutSmallSpiral_makeStacksFromWidgets_pageType_environment___block_invoke;
      v28[3] = &unk_27859FE08;
      v29 = v17;
      v30 = v18;
      v31 = v16;
      v32 = v7;
      v21 = v16;
      v22 = v18;
      v23 = v17;
      [v26 enumerateObjectsUsingBlock:v28];
      [v27 setWidgets:v21];
      [v19 setWidgets:v23];
      [v20 setWidgets:v22];
      v37[0] = v27;
      v37[1] = v19;
      v37[2] = v20;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    }

    else
    {
      v8 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __86__ATXSuggestedPagesStackLayoutSmallSpiral_makeStacksFromWidgets_pageType_environment___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (a3 == 2)
  {
    v5 = a1 + 5;
  }

  else if (a3 == 1)
  {
    v5 = a1 + 4;
  }

  else
  {
    v6 = a1[6];
    v5 = a1 + 6;
    v7 = [v6 count];
    v8 = [v5[1] tunableConstants];
    v9 = [v8 maxWidgetsInStack];

    v11 = v13;
    if (v7 >= v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [*v5 addObject:v13];
  v11 = v13;
LABEL_7:

  return MEMORY[0x2821F96F8](v10, v11);
}

- (void)layOutStacks:(id)a3 numberOfColumns:(unint64_t)a4 forPageType:(int64_t)a5
{
  v7 = a3;
  if ([v7 count] != 3)
  {
    [ATXSuggestedPagesStackLayoutSmallSpiral layOutStacks:a2 numberOfColumns:self forPageType:?];
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 setCoordinateRow:0];

  v9 = [v7 objectAtIndexedSubscript:0];
  [v9 setCoordinateColumn:0];

  v10 = [v7 objectAtIndexedSubscript:1];
  [v10 setCoordinateRow:2];

  v11 = [v7 objectAtIndexedSubscript:1];
  [v11 setCoordinateColumn:2];

  v12 = [v7 objectAtIndexedSubscript:2];
  [v12 setCoordinateRow:4];

  v13 = [v7 objectAtIndexedSubscript:2];

  [v13 setCoordinateColumn:0];
}

- (void)layOutStacks:(uint64_t)a1 numberOfColumns:(uint64_t)a2 forPageType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesStackLayoutSmallSpiral.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"stacks.count == 3"}];
}

@end