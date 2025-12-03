@interface FailedPartViewController
- (FailedPartViewController)initWithComponents:(id)components;
- (RepairResultNavigationCoordinator)coordinator;
- (void)_continueTapped;
@end

@implementation FailedPartViewController

- (FailedPartViewController)initWithComponents:(id)components
{
  componentsCopy = components;
  v5 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = componentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CRDeviceMap getComponentNameWithSPC:*(*(&v28 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"FAILED_PART_TITLE" value:&stru_100008370 table:@"RepairResultPlugin-Release"];

  v14 = [v5 componentsJoinedByString:@"\n"];
  navigationItem = [(FailedPartViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  [(FailedPartViewController *)self setScrollingDisabled:0];
  v16 = [v6 count];
  v17 = +[NSBundle mainBundle];
  v18 = v17;
  if (v16 <= 1)
  {
    v19 = @"FAILED_PART_DETAIL_TEXT";
  }

  else
  {
    v19 = @"FAILED_PARTS_DETAIL_TEXT";
  }

  v20 = [v17 localizedStringForKey:v19 value:&stru_100008370 table:@"RepairResultPlugin-Release"];

  v27.receiver = self;
  v27.super_class = FailedPartViewController;
  v21 = [(OBBoldSubtitleController *)&v27 initWithTitle:v13 subtitle:v14 detailText:v20 symbolName:@"exclamationmark.triangle"];
  if (v21)
  {
    v22 = +[OBBoldTrayButton boldButton];
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"CONTINUE" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
    [v22 setTitle:v24 forState:0];

    [v22 addTarget:v21 action:"_continueTapped" forControlEvents:64];
    buttonTray = [(FailedPartViewController *)v21 buttonTray];
    [buttonTray addButton:v22];
  }

  return v21;
}

- (void)_continueTapped
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Continue button tapped", v5, 2u);
  }

  coordinator = [(FailedPartViewController *)self coordinator];
  [coordinator moveToNextViewController];
}

- (RepairResultNavigationCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end