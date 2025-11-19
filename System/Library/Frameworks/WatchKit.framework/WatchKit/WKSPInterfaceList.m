@interface WKSPInterfaceList
- (WKInterfaceController)controller;
- (id)rowControllerAtIndex:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)_setupWithDescription:(id)a3 forController:(id)a4;
- (void)setNumberOfRows:(int64_t)a3 withRowType:(id)a4;
- (void)setRowTypes:(id)a3;
@end

@implementation WKSPInterfaceList

- (void)_setupWithDescription:(id)a3 forController:(id)a4
{
  v6 = a4;
  [(WKSPInterfaceList *)self setRowDescriptions:a3];
  [(WKSPInterfaceList *)self setController:v6];
}

- (void)setNumberOfRows:(int64_t)a3 withRowType:(id)a4
{
  v8 = a4;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      [v6 setObject:v8 atIndexedSubscript:v7++];
    }

    while (a3 != v7);
  }

  [(WKSPInterfaceList *)self setRowTypes:v6];
}

- (void)setRowTypes:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  v20 = [MEMORY[0x277CBEB18] array];
  v23 = v4;
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
  v22 = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v23 objectAtIndexedSubscript:v6];
      v8 = [(WKSPInterfaceList *)self rowDescriptions];
      v9 = [v8 objectForKeyedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"controllerClass"];

      v11 = objc_alloc_init(NSClassFromString(v10));
      if (v11)
      {
        v25 = v10;
        v24 = [(WKSPInterfaceList *)self rowDescriptions];
        v12 = [v24 objectForKeyedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:@"rows"];
        v14 = [(WKSPInterfaceObject *)self viewControllerID];
        v15 = [(WKSPInterfaceList *)self rowDescriptions];
        v16 = [v15 objectForKeyedSubscript:@"index"];
        v17 = +[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:](SPRemoteInterface, "controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:", v11, v13, v14, [v16 integerValue], v6, 0);
        [v20 addObjectsFromArray:v17];

        v10 = v25;
        [v21 setObject:v11 atIndexedSubscript:v6];
      }

      else
      {
        NSLog(&cfstr_ErrorUnableToI.isa, v10, v6);
        v18 = wk_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v27 = "[WKSPInterfaceList setRowTypes:]";
          v28 = 1024;
          v29 = 263;
          v30 = 2114;
          v31 = v10;
          v32 = 2048;
          v33 = v6;
          _os_log_error_impl(&dword_23B338000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error unable to instantiate row controller class %{public}@ for row %ld", buf, 0x26u);
        }
      }

      ++v6;
    }

    while (v22 != v6);
  }

  [(WKSPInterfaceList *)self setRowControllers:v21];
  [(WKSPInterfaceList *)self setRowControllerProperties:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfRows
{
  v2 = [(WKSPInterfaceList *)self rowControllers];
  v3 = [v2 count];

  return v3;
}

- (id)rowControllerAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(WKSPInterfaceList *)self rowControllers];
    if ([v5 count] <= a3)
    {
      v7 = 0;
    }

    else
    {
      v6 = [(WKSPInterfaceList *)self rowControllers];
      v7 = [v6 objectAtIndexedSubscript:a3];
    }
  }

  return v7;
}

- (WKInterfaceController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end