@interface AXBuddySettingsBaseTableController
- (AXBuddySettingsBaseTableController)initWithCoder:(id)a3;
- (AXBuddySettingsBaseTableController)initWithNibName:(id)a3 bundle:(id)a4;
- (AXBuddySettingsBaseTableController)initWithStyle:(int64_t)a3;
- (BOOL)isItemAtIndexPathSelectable:(id)a3;
- (id)_baseTableControllerCommonInit;
- (id)tableSections;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)viewControllerForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_registerCellClassesIfNecessary;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AXBuddySettingsBaseTableController

- (id)_baseTableControllerCommonInit
{
  v3 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v3 setEstimatedRowHeight:44.0];

  v4 = sub_4A24();
  v5 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v4 edgeInsetsForTable:v5];
  v7 = v6;

  v8 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v8 setScrollIndicatorInsets:{0.0, 0.0, 0.0, -v7}];

  v9 = sub_4A24();
  v10 = [v9 backgroundColor];
  v11 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v11 setBackgroundColor:v10];

  return self;
}

- (AXBuddySettingsBaseTableController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXBuddySettingsBaseTableController;
  v4 = [(AXBuddySettingsBaseTableController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = [(AXBuddySettingsBaseTableController *)v4 _baseTableControllerCommonInit];

  return v5;
}

- (AXBuddySettingsBaseTableController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXBuddySettingsBaseTableController;
  v3 = [(AXBuddySettingsBaseTableController *)&v6 initWithCoder:a3];
  v4 = [(AXBuddySettingsBaseTableController *)v3 _baseTableControllerCommonInit];

  return v4;
}

- (AXBuddySettingsBaseTableController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = AXBuddySettingsBaseTableController;
  v3 = [(AXBuddySettingsBaseTableController *)&v6 initWithStyle:a3];
  v4 = [(AXBuddySettingsBaseTableController *)v3 _baseTableControllerCommonInit];

  return v4;
}

- (id)tableSections
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (id)viewControllerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
  v7 = [v6 subitems];
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 viewControllerInstantiator];
  v11 = v10[2]();

  if (v11)
  {
    v12 = [v9 name];
    [v11 setTitle:v12];
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 subitems];
  v8 = [v7 count];

  return v8;
}

- (void)_registerCellClassesIfNecessary
{
  if (!self->_registeredCellClasses)
  {
    self->_registeredCellClasses = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(AXBuddySettingsBaseTableController *)self tableSections];
    v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = [v7 subitems];
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v16 + 1) + 8 * j);
                v14 = [(AXBuddySettingsBaseTableController *)self tableView];
                [v13 registerCellClassWithTableView:v14];
              }

              v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v10);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v4);
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AXBuddySettingsBaseTableController *)self _registerCellClassesIfNecessary];
  v8 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v9 subitems];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v12 = [v11 representativeCellForIndexPath:v6 inTableView:v7];

  v13 = +[UIColor systemGroupedBackgroundColor];
  [v12 setBackgroundColor:v13];

  LIIconContinuousCornerRadiusForVariant();
  v15 = v14;
  v16 = [v12 imageView];
  [v16 _setContinuousCornerRadius:v15];

  v17 = [v12 imageView];
  [v17 setClipsToBounds:1];

  return v12;
}

- (BOOL)isItemAtIndexPathSelectable:(id)a3
{
  v4 = a3;
  v5 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
  v7 = [v6 subitems];
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  return v5 & 1;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v5 deselectRowAtIndexPath:v14 animated:1];

  if (![(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:v14])
  {
    _AXAssert();
  }

  if ([(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:v14])
  {
    v6 = [(AXBuddySettingsBaseTableController *)self tableSections];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v14, "section")}];
    v8 = [v7 subitems];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v14, "row")}];

    v10 = [v9 viewControllerInstantiator];
    v11 = v10[2]();

    if (v11)
    {
      v12 = [v9 name];
      [v11 setTitle:v12];

      v13 = [(AXBuddySettingsBaseTableController *)self navigationController];
      [v13 pushViewController:v11 animated:1];
    }
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 name];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 footerText];

  return v7;
}

@end