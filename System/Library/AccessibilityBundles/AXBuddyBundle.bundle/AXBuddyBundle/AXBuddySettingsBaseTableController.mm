@interface AXBuddySettingsBaseTableController
- (AXBuddySettingsBaseTableController)initWithCoder:(id)coder;
- (AXBuddySettingsBaseTableController)initWithNibName:(id)name bundle:(id)bundle;
- (AXBuddySettingsBaseTableController)initWithStyle:(int64_t)style;
- (BOOL)isItemAtIndexPathSelectable:(id)selectable;
- (id)_baseTableControllerCommonInit;
- (id)tableSections;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)viewControllerForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_registerCellClassesIfNecessary;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXBuddySettingsBaseTableController

- (id)_baseTableControllerCommonInit
{
  tableView = [(AXBuddySettingsBaseTableController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  v4 = sub_4A24();
  tableView2 = [(AXBuddySettingsBaseTableController *)self tableView];
  [v4 edgeInsetsForTable:tableView2];
  v7 = v6;

  tableView3 = [(AXBuddySettingsBaseTableController *)self tableView];
  [tableView3 setScrollIndicatorInsets:{0.0, 0.0, 0.0, -v7}];

  v9 = sub_4A24();
  backgroundColor = [v9 backgroundColor];
  tableView4 = [(AXBuddySettingsBaseTableController *)self tableView];
  [tableView4 setBackgroundColor:backgroundColor];

  return self;
}

- (AXBuddySettingsBaseTableController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AXBuddySettingsBaseTableController;
  v4 = [(AXBuddySettingsBaseTableController *)&v7 initWithNibName:name bundle:bundle];
  _baseTableControllerCommonInit = [(AXBuddySettingsBaseTableController *)v4 _baseTableControllerCommonInit];

  return _baseTableControllerCommonInit;
}

- (AXBuddySettingsBaseTableController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXBuddySettingsBaseTableController;
  v3 = [(AXBuddySettingsBaseTableController *)&v6 initWithCoder:coder];
  _baseTableControllerCommonInit = [(AXBuddySettingsBaseTableController *)v3 _baseTableControllerCommonInit];

  return _baseTableControllerCommonInit;
}

- (AXBuddySettingsBaseTableController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = AXBuddySettingsBaseTableController;
  v3 = [(AXBuddySettingsBaseTableController *)&v6 initWithStyle:style];
  _baseTableControllerCommonInit = [(AXBuddySettingsBaseTableController *)v3 _baseTableControllerCommonInit];

  return _baseTableControllerCommonInit;
}

- (id)tableSections
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (id)viewControllerForIndexPath:(id)path
{
  pathCopy = path;
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  subitems = [v6 subitems];
  v8 = [pathCopy row];

  v9 = [subitems objectAtIndexedSubscript:v8];

  viewControllerInstantiator = [v9 viewControllerInstantiator];
  v11 = viewControllerInstantiator[2]();

  if (v11)
  {
    name = [v9 name];
    [v11 setTitle:name];
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v4 = [tableSections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:section];

  subitems = [v6 subitems];
  v8 = [subitems count];

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
          subitems = [v7 subitems];
          v9 = [subitems countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                  objc_enumerationMutation(subitems);
                }

                v13 = *(*(&v16 + 1) + 8 * j);
                tableView = [(AXBuddySettingsBaseTableController *)self tableView];
                [v13 registerCellClassWithTableView:tableView];
              }

              v10 = [subitems countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(AXBuddySettingsBaseTableController *)self _registerCellClassesIfNecessary];
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v9 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  subitems = [v9 subitems];
  v11 = [subitems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v12 = [v11 representativeCellForIndexPath:pathCopy inTableView:viewCopy];

  v13 = +[UIColor systemGroupedBackgroundColor];
  [v12 setBackgroundColor:v13];

  LIIconContinuousCornerRadiusForVariant();
  v15 = v14;
  imageView = [v12 imageView];
  [imageView _setContinuousCornerRadius:v15];

  imageView2 = [v12 imageView];
  [imageView2 setClipsToBounds:1];

  return v12;
}

- (BOOL)isItemAtIndexPathSelectable:(id)selectable
{
  selectableCopy = selectable;
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:{objc_msgSend(selectableCopy, "section")}];
  subitems = [v6 subitems];
  v8 = [selectableCopy row];

  v9 = [subitems objectAtIndexedSubscript:v8];

  objc_opt_class();
  LOBYTE(tableSections) = objc_opt_isKindOfClass();

  return tableSections & 1;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:pathCopy])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(AXBuddySettingsBaseTableController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  if (![(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:pathCopy])
  {
    _AXAssert();
  }

  if ([(AXBuddySettingsBaseTableController *)self isItemAtIndexPathSelectable:pathCopy])
  {
    tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
    v7 = [tableSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    subitems = [v7 subitems];
    v9 = [subitems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    viewControllerInstantiator = [v9 viewControllerInstantiator];
    v11 = viewControllerInstantiator[2]();

    if (v11)
    {
      name = [v9 name];
      [v11 setTitle:name];

      navigationController = [(AXBuddySettingsBaseTableController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];
    }
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:section];
  name = [v6 name];

  return name;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  tableSections = [(AXBuddySettingsBaseTableController *)self tableSections];
  v6 = [tableSections objectAtIndexedSubscript:section];
  footerText = [v6 footerText];

  return footerText;
}

@end