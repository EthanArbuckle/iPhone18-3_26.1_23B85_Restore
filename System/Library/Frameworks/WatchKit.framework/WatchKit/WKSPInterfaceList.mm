@interface WKSPInterfaceList
- (WKInterfaceController)controller;
- (id)rowControllerAtIndex:(int64_t)index;
- (int64_t)numberOfRows;
- (void)_setupWithDescription:(id)description forController:(id)controller;
- (void)setNumberOfRows:(int64_t)rows withRowType:(id)type;
- (void)setRowTypes:(id)types;
@end

@implementation WKSPInterfaceList

- (void)_setupWithDescription:(id)description forController:(id)controller
{
  controllerCopy = controller;
  [(WKSPInterfaceList *)self setRowDescriptions:description];
  [(WKSPInterfaceList *)self setController:controllerCopy];
}

- (void)setNumberOfRows:(int64_t)rows withRowType:(id)type
{
  typeCopy = type;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:rows];
  if (rows >= 1)
  {
    v7 = 0;
    do
    {
      [v6 setObject:typeCopy atIndexedSubscript:v7++];
    }

    while (rows != v7);
  }

  [(WKSPInterfaceList *)self setRowTypes:v6];
}

- (void)setRowTypes:(id)types
{
  v34 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = [typesCopy count];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  array = [MEMORY[0x277CBEB18] array];
  v23 = typesCopy;
  [(WKSPInterfaceObject *)self _sendValueChanged:typesCopy];
  v22 = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v23 objectAtIndexedSubscript:v6];
      rowDescriptions = [(WKSPInterfaceList *)self rowDescriptions];
      v9 = [rowDescriptions objectForKeyedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"controllerClass"];

      v11 = objc_alloc_init(NSClassFromString(v10));
      if (v11)
      {
        v25 = v10;
        rowDescriptions2 = [(WKSPInterfaceList *)self rowDescriptions];
        v12 = [rowDescriptions2 objectForKeyedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:@"rows"];
        viewControllerID = [(WKSPInterfaceObject *)self viewControllerID];
        rowDescriptions3 = [(WKSPInterfaceList *)self rowDescriptions];
        v16 = [rowDescriptions3 objectForKeyedSubscript:@"index"];
        v17 = +[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:](SPRemoteInterface, "controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:", v11, v13, viewControllerID, [v16 integerValue], v6, 0);
        [array addObjectsFromArray:v17];

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
  [(WKSPInterfaceList *)self setRowControllerProperties:array];

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfRows
{
  rowControllers = [(WKSPInterfaceList *)self rowControllers];
  v3 = [rowControllers count];

  return v3;
}

- (id)rowControllerAtIndex:(int64_t)index
{
  if (index < 0)
  {
    v7 = 0;
  }

  else
  {
    rowControllers = [(WKSPInterfaceList *)self rowControllers];
    if ([rowControllers count] <= index)
    {
      v7 = 0;
    }

    else
    {
      rowControllers2 = [(WKSPInterfaceList *)self rowControllers];
      v7 = [rowControllers2 objectAtIndexedSubscript:index];
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