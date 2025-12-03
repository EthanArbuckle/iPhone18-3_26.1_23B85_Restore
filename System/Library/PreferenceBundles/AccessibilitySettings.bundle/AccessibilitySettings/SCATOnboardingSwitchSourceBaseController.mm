@interface SCATOnboardingSwitchSourceBaseController
- (SCATOnboardingSwitchSourceBaseController)initWithSourceController:(id)controller completion:(id)completion;
- (SCATOnboardingSwitchSourceBaseController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle controller:(id)controller completion:(id)completion;
- (id)_switchSourceStringForController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addNextButton:(id)button;
- (void)_displayControllerTable:(id)table;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATOnboardingSwitchSourceBaseController

- (SCATOnboardingSwitchSourceBaseController)initWithSourceController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v9 = [(SCATOnboardingSwitchSourceBaseController *)self _switchSourceStringForController:controllerCopy];
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
    [(SCATOnboardingSwitchSourceBaseController *)v12 setCompletionHandler:completionCopy];
    objc_storeStrong(&v13->_sourceController, controller);
    v14 = AXParameterizedLocalizedString();
    [(SCATOnboardingSwitchSourceBaseController *)v13 _addNextButton:v14];
  }

  return v13;
}

- (SCATOnboardingSwitchSourceBaseController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle controller:(id)controller completion:(id)completion
{
  buttonTitleCopy = buttonTitle;
  controllerCopy = controller;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = SCATOnboardingSwitchSourceBaseController;
  v15 = [(SCATOnboardingSwitchSourceBaseController *)&v18 initWithTitle:title detailText:text symbolName:0 adoptTableViewScrollView:1];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingSwitchSourceBaseController *)v15 setCompletionHandler:completionCopy];
    objc_storeStrong(&v16->_sourceController, controller);
    [(SCATOnboardingSwitchSourceBaseController *)v16 _addNextButton:buttonTitleCopy];
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  tableView = [(SCATOnboardingSwitchSourceBaseController *)self tableView];

  if (tableView)
  {
    tableView2 = [(SCATOnboardingSwitchSourceBaseController *)self tableView];
    [tableView2 reloadData];
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

- (void)_addNextButton:(id)button
{
  buttonCopy = button;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:buttonCopy forState:0];

  [v6 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingSwitchSourceBaseController *)self buttonTray];
  [buttonTray addButton:v6];
}

- (void)_displayControllerTable:(id)table
{
  tableCopy = table;
  [(SCATOnboardingSwitchSourceBaseController *)self addChildViewController:tableCopy];
  [tableCopy loadViewIfNeeded];
  contentView = [(SCATOnboardingSwitchSourceBaseController *)self contentView];
  [contentView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [tableCopy view];
  [view setFrame:{v7, v9, v11, v13}];

  contentView2 = [(SCATOnboardingSwitchSourceBaseController *)self contentView];
  view2 = [tableCopy view];

  [contentView2 addSubview:view2];
}

- (id)_switchSourceStringForController:(id)controller
{
  controllerCopy = controller;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [(PSListController *)self->_sourceController tableView:view cellForRowAtIndexPath:path];
  [v4 setAccessoryType:0];
  v5 = +[UIColor systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  sourceController = self->_sourceController;
  pathCopy = path;
  viewCopy = view;
  [(PSListController *)sourceController tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = +[SCATOnboardingManager sharedInstance];
  [v8 setLastSwitchSourceController:self];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end