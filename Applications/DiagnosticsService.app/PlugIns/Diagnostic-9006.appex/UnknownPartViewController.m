@interface UnknownPartViewController
- (RepairSummaryNavigationCoordinator)coordinator;
- (UnknownPartViewController)initWithSPC:(id)a3;
- (void)_continueTapped;
@end

@implementation UnknownPartViewController

- (UnknownPartViewController)initWithSPC:(id)a3
{
  v4 = [CRLocalization localizedStringWithFormat:@"UNABLE_CONFIGURE_%@" component:[CRDeviceMap getComponentTypeWithSPC:a3]];
  v5 = [(UnknownPartViewController *)self navigationItem];
  [v5 setHidesBackButton:1];

  [(UnknownPartViewController *)self setScrollingDisabled:0];
  v6 = +[UIColor systemYellowColor];
  v7 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v6];

  v8 = [UIImage systemImageNamed:@"exclamationmark.triangle"];
  v9 = [v8 imageByApplyingSymbolConfiguration:v7];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"UNKOWN_PART_DETAIL_TEXT" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];

  v18.receiver = self;
  v18.super_class = UnknownPartViewController;
  v12 = [(UnknownPartViewController *)&v18 initWithTitle:v4 detailText:v11 icon:v9];
  if (v12)
  {
    v13 = +[OBBoldTrayButton boldButton];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"CONTINUE" value:&stru_10000C3F8 table:@"RepairSummaryPlugin-Release"];
    [v13 setTitle:v15 forState:0];

    [v13 addTarget:v12 action:"_continueTapped" forControlEvents:64];
    v16 = [(UnknownPartViewController *)v12 buttonTray];
    [v16 addButton:v13];
  }

  return v12;
}

- (void)_continueTapped
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Continue button tapped", v5, 2u);
  }

  v4 = [(UnknownPartViewController *)self coordinator];
  [v4 moveToNextViewController];
}

- (RepairSummaryNavigationCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end