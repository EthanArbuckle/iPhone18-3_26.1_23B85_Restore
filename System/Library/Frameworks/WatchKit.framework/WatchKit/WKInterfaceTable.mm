@interface WKInterfaceTable
- (WKInterfaceController)controller;
- (id)rowControllerAtIndex:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)_getRowControllers:(id)a3 rowControllerProperties:(id)a4 forRowTypes:(id)a5;
- (void)_setupWithDescription:(id)a3 forController:(id)a4;
- (void)insertRowsAtIndexes:(id)a3 withRowType:(id)a4;
- (void)performSegueForRow:(int64_t)a3;
- (void)removeRowsAtIndexes:(id)a3;
- (void)resequenceRowControllerPropertyIndexes;
- (void)scrollToRowAtIndex:(int64_t)a3;
- (void)setNumberOfRows:(int64_t)a3 withRowType:(id)a4;
- (void)setRowTypes:(id)a3;
@end

@implementation WKInterfaceTable

- (void)_setupWithDescription:(id)a3 forController:(id)a4
{
  v6 = a4;
  [(WKInterfaceTable *)self setRowDescriptions:a3];
  [(WKInterfaceTable *)self setController:v6];
}

- (void)_getRowControllers:(id)a3 rowControllerProperties:(id)a4 forRowTypes:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v29 = a4;
  v32 = a5;
  v8 = [(WKInterfaceTable *)self rowDescriptions];
  v9 = [v8 objectForKeyedSubscript:@"index"];
  if ([v9 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0;
  }

  else
  {
    v10 = [(WKInterfaceTable *)self rowDescriptions];
    v11 = [v10 objectForKeyedSubscript:@"index"];
    v28 = [v11 integerValue];
  }

  v31 = [v32 count];
  if (v31 >= 1)
  {
    v13 = 0;
    *&v12 = 136446978;
    v27 = v12;
    do
    {
      v14 = [v32 objectAtIndexedSubscript:{v13, v27}];
      v15 = [(WKInterfaceTable *)self rowDescriptions];
      v16 = [v15 objectForKeyedSubscript:v14];
      v17 = [v16 objectForKeyedSubscript:@"controllerClass"];

      v18 = objc_alloc_init(NSClassFromString(v17));
      if (v18)
      {
        v19 = [(WKInterfaceTable *)self rowDescriptions];
        v20 = [v19 objectForKeyedSubscript:v14];
        v21 = [v20 objectForKeyedSubscript:@"rows"];
        v22 = [(WKInterfaceObject *)self viewControllerID];
        v23 = [SPRemoteInterface controller:v18 setupProperties:v21 viewControllerID:v22 tableIndex:v28 rowIndex:v13 classForType:_WKInterfaceObjectClassWithType];
        [v29 addObject:v23];

        [v30 setObject:v18 atIndexedSubscript:v13];
      }

      else if (v17)
      {
        v24 = wk_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v34 = "[WKInterfaceTable _getRowControllers:rowControllerProperties:forRowTypes:]";
          v35 = 1024;
          v36 = 65;
          v37 = 2114;
          v38 = v17;
          v39 = 2048;
          v40 = v13;
          _os_log_error_impl(&dword_23B338000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - unable to instantiate row controller class %{public}@ for row %ld", buf, 0x26u);
        }
      }

      else
      {
        v25 = objc_opt_new();
        [v30 setObject:v25 atIndexedSubscript:v13];
      }

      ++v13;
    }

    while (v31 != v13);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setNumberOfRows:(int64_t)a3 withRowType:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "[WKInterfaceTable setNumberOfRows:withRowType:]";
    v14 = 1024;
    v15 = 74;
    v16 = 2048;
    v17 = a3;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_23B338000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: numberOfRows=%ld rowType=%{public}@", &v12, 0x26u);
  }

  v8 = [v6 copy];
  v9 = [MEMORY[0x277CBEB18] array];
  if (a3 >= 1)
  {
    v10 = 0;
    do
    {
      [v9 setObject:v8 atIndexedSubscript:v10++];
    }

    while (a3 != v10);
  }

  [(WKInterfaceTable *)self setRowTypes:v9];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setRowTypes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446978;
    v11 = "[WKInterfaceTable setRowTypes:]";
    v12 = 1024;
    v13 = 85;
    v14 = 2048;
    v15 = [v4 count];
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %lu rowTypes: %{public}@", &v10, 0x26u);
  }

  v6 = [v4 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v6 forProperty:@"rowTypes"];

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceTable *)self _getRowControllers:v7 rowControllerProperties:v8 forRowTypes:v4];
  [(WKInterfaceTable *)self setRowControllers:v7];
  [(WKInterfaceTable *)self setRowControllerProperties:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfRows
{
  v2 = [(WKInterfaceTable *)self rowControllers];
  v3 = [v2 count];

  return v3;
}

- (id)rowControllerAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[WKInterfaceTable rowControllers](self, "rowControllers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WKInterfaceTable *)self rowControllerAtIndex:a3, v11];
    }

    v10 = 0;
  }

  else
  {
    v7 = [(WKInterfaceTable *)self rowControllers];
    v8 = [v7 objectAtIndexedSubscript:a3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  return v10;
}

- (void)insertRowsAtIndexes:(id)a3 withRowType:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v25 = "[WKInterfaceTable insertRowsAtIndexes:withRowType:]";
    v26 = 1024;
    v27 = 123;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: rows=%{public}@ rowType=%{public}@", buf, 0x26u);
  }

  v9 = [v6 count];
  v10 = [MEMORY[0x277CBEB18] array];
  if (v9 >= 1)
  {
    do
    {
      [v10 addObject:v7];
      --v9;
    }

    while (v9);
  }

  v11 = [v10 copy];
  v12 = [v6 copy];
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [(WKInterfaceObject *)self _sendValueChanged:v13 forProperty:@".insert"];

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceTable *)self _getRowControllers:v14 rowControllerProperties:v15 forRowTypes:v10];
  v16 = [(WKInterfaceTable *)self rowControllers];

  if (!v16)
  {
    v17 = [MEMORY[0x277CBEB18] array];
    [(WKInterfaceTable *)self setRowControllers:v17];
  }

  v18 = [(WKInterfaceTable *)self rowControllerProperties];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEB18] array];
    [(WKInterfaceTable *)self setRowControllerProperties:v19];
  }

  if ([v14 count])
  {
    v20 = [(WKInterfaceTable *)self rowControllers];
    [v20 insertObjects:v14 atIndexes:v6];
  }

  if ([v15 count])
  {
    v21 = [(WKInterfaceTable *)self rowControllerProperties];
    [v21 insertObjects:v15 atIndexes:v6];
  }

  [(WKInterfaceTable *)self resequenceRowControllerPropertyIndexes];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeRowsAtIndexes:(id)a3
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WKInterfaceTable_removeRowsAtIndexes___block_invoke;
  v11[3] = &unk_278B7F7C0;
  v11[4] = self;
  v4 = [a3 indexesPassingTest:v11];
  if ([v4 count])
  {
    v5 = [(WKInterfaceTable *)self rowControllers];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(WKInterfaceTable *)self rowControllers];
      [v7 removeObjectsAtIndexes:v4];
    }

    v8 = [(WKInterfaceTable *)self rowControllerProperties];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(WKInterfaceTable *)self rowControllerProperties];
      [v10 removeObjectsAtIndexes:v4];
    }

    [(WKInterfaceTable *)self resequenceRowControllerPropertyIndexes];
    [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@".remove"];
  }
}

BOOL __40__WKInterfaceTable_removeRowsAtIndexes___block_invoke(uint64_t a1, unint64_t a2, BOOL *a3)
{
  v6 = [*(a1 + 32) rowControllers];
  *a3 = [v6 count] <= a2;

  v7 = [*(a1 + 32) rowControllers];
  v8 = [v7 count] > a2;

  return v8;
}

- (void)resequenceRowControllerPropertyIndexes
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(WKInterfaceTable *)self rowControllerProperties];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v15 + 1) + 8 * v13++) setRowIndex:v5];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }

        ++v5;
        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performSegueForRow:(int64_t)a3
{
  NSLog(&cfstr_Wkinterfacetab_4.isa, a2, a3);
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [WKInterfaceTable performSegueForRow:v3];
  }
}

- (void)scrollToRowAtIndex:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@".scroll"];
}

- (WKInterfaceController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)rowControllerAtIndex:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a1 rowControllers];
  v7 = 136446978;
  v8 = "[WKInterfaceTable rowControllerAtIndex:]";
  v9 = 1024;
  v10 = 116;
  v11 = 2048;
  v12 = a2;
  v13 = 2048;
  v14 = [v5 count];
  _os_log_error_impl(&dword_23B338000, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - attempt to ask for row %ld. Valid range is 0..%ld", &v7, 0x26u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performSegueForRow:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446466;
  v3 = "[WKInterfaceTable performSegueForRow:]";
  v4 = 1024;
  v5 = 196;
  _os_log_error_impl(&dword_23B338000, log, OS_LOG_TYPE_ERROR, "%{public}s:%d: WKInterfaceTable performSegueForRow: has no effect in a WatchKit extension that runs on iPhone.", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end