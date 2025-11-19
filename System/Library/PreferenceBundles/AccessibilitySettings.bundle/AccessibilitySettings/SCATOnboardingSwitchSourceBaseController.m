@interface SCATOnboardingSwitchSourceBaseController
- (SCATOnboardingSwitchSourceBaseController)initWithSourceController:(id)a3 completion:(id)a4;
- (SCATOnboardingSwitchSourceBaseController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 controller:(id)a6 completion:(id)a7;
- (id)_switchSourceStringForController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addNextButton:(id)a3;
- (void)_displayControllerTable:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATOnboardingSwitchSourceBaseController

- (SCATOnboardingSwitchSourceBaseController)initWithSourceController:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SCATOnboardingSwitchSourceBaseController *)self _switchSourceStringForController:v7];
  v10 = +[SCATOnboardingManager sharedInstance];
  [v10 onboardAction];

  v16 = SCATLocStringForAction();
  v11 = AXParameterizedLocalizedString();

  v17.receiver = self;
  v17.super_class = SCATOnboardingSwitchSourceBaseController;
  v12 = [(SCATOnboardingSwitchSourceBaseController *)&v17 initWithTitle:v9 detailText:v11 symbolName:0 adoptTableViewScrollView:1, v16];
  v13 = v12;
  if (v12)
  {
    [(SCATOnboardingSwitchSourceBaseController *)v12 setCompletionHandler:v8];
    objc_storeStrong(&v13->_sourceController, a3);
    v14 = AXParameterizedLocalizedString();
    [(SCATOnboardingSwitchSourceBaseController *)v13 _addNextButton:v14];
  }

  return v13;
}

- (SCATOnboardingSwitchSourceBaseController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 controller:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SCATOnboardingSwitchSourceBaseController;
  v15 = [(SCATOnboardingSwitchSourceBaseController *)&v18 initWithTitle:a3 detailText:a4 symbolName:0 adoptTableViewScrollView:1];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingSwitchSourceBaseController *)v15 setCompletionHandler:v14];
    objc_storeStrong(&v16->_sourceController, a6);
    [(SCATOnboardingSwitchSourceBaseController *)v16 _addNextButton:v12];
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = [(SCATOnboardingSwitchSourceBaseController *)self tableView];

  if (v4)
  {
    v5 = [(SCATOnboardingSwitchSourceBaseController *)self tableView];
    [v5 reloadData];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SCATOnboardingSwitchSourceBaseController;
  [(SCATOnboardingSwitchSourceBaseController *)&v5 viewDidLoad];
  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [(SCATOnboardingSwitchSourceBaseController *)self setTableView:v3];
  [(SCATOnboardingSwitchSourceBaseController *)self _displayControllerTable:self->_sourceController];
}

- (void)_addNextButton:(id)a3
{
  v4 = a3;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingSwitchSourceBaseController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)_displayControllerTable:(id)a3
{
  v4 = a3;
  [(SCATOnboardingSwitchSourceBaseController *)self addChildViewController:v4];
  [v4 loadViewIfNeeded];
  v5 = [(SCATOnboardingSwitchSourceBaseController *)self contentView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v16 = [(SCATOnboardingSwitchSourceBaseController *)self contentView];
  v15 = [v4 view];

  [v16 addSubview:v15];
}

- (id)_switchSourceStringForController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = AXParameterizedLocalizedString();
  }

  else
  {
    v4 = &stru_25D420;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [(PSListController *)self->_sourceController tableView:a3 cellForRowAtIndexPath:a4];
  [v4 setAccessoryType:0];
  v5 = +[UIColor systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  sourceController = self->_sourceController;
  v7 = a4;
  v9 = a3;
  [(PSListController *)sourceController tableView:v9 didSelectRowAtIndexPath:v7];
  v8 = +[SCATOnboardingManager sharedInstance];
  [v8 setLastSwitchSourceController:self];

  [v9 deselectRowAtIndexPath:v7 animated:1];
}

@end