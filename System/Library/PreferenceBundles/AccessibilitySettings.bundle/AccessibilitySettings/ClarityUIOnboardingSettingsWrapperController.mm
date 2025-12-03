@interface ClarityUIOnboardingSettingsWrapperController
- (ClarityUIOnboardingSettingsWrapperController)initWithTitle:(id)title detailText:(id)text icon:(id)icon controller:(id)controller;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addButtonTray;
- (void)cancelButtonTapped:(id)tapped;
- (void)didUpdateIsContinueButtonEnabledForController:(id)controller;
- (void)displaySetupController:(id)controller;
- (void)nextButtonTapped:(id)tapped;
- (void)setNextButtonEnabled:(BOOL)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ClarityUIOnboardingSettingsWrapperController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (ClarityUIOnboardingSettingsWrapperController)initWithTitle:(id)title detailText:(id)text icon:(id)icon controller:(id)controller
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = ClarityUIOnboardingSettingsWrapperController;
  v12 = [(ClarityUIOnboardingSettingsWrapperController *)&v20 initWithTitle:title detailText:text icon:icon adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controller, controller);
    v14 = +[OBBoldTrayButton boldButton];
    v15 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v14 setTitle:v15 forState:0];

    [v14 setAccessibilityIdentifier:@"APP_ONBOARDING_CONTINUE"];
    [v14 addTarget:v13 action:"nextButtonTapped:" forControlEvents:0x2000];
    if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___AXOnboardingContinueButtonEnabling])
    {
      v16 = controllerCopy;
      isContinueButtonEnabled = [v16 isContinueButtonEnabled];
      [v16 setContinueButtonEnablingDelegate:v13];
    }

    else
    {
      isContinueButtonEnabled = &dword_0 + 1;
    }

    [v14 setEnabled:isContinueButtonEnabled];
    nextButton = v13->_nextButton;
    v13->_nextButton = v14;
  }

  return v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ClarityUIOnboardingSettingsWrapperController;
  [(ClarityUIOnboardingSettingsWrapperController *)&v5 viewDidLoad];
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
  navigationItem = [(ClarityUIOnboardingSettingsWrapperController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  [(ClarityUIOnboardingSettingsWrapperController *)self displaySetupController:self->_controller];
}

- (void)displaySetupController:(id)controller
{
  controllerCopy = controller;
  [(ClarityUIOnboardingSettingsWrapperController *)self addChildViewController:controllerCopy];
  [controllerCopy loadViewIfNeeded];
  contentView = [(ClarityUIOnboardingSettingsWrapperController *)self contentView];
  [contentView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [controllerCopy view];
  [view setFrame:{v7, v9, v11, v13}];

  contentView2 = [(ClarityUIOnboardingSettingsWrapperController *)self contentView];
  view2 = [controllerCopy view];
  [contentView2 addSubview:view2];

  table = [controllerCopy table];
  [(ClarityUIOnboardingSettingsWrapperController *)self setTableView:table];

  [controllerCopy didMoveToParentViewController:self];
  tableView = [(ClarityUIOnboardingSettingsWrapperController *)self tableView];
  [tableView setBackgroundView:0];

  tableView2 = [(ClarityUIOnboardingSettingsWrapperController *)self tableView];
  v20 = +[UIColor systemBackgroundColor];
  [tableView2 setBackgroundColor:v20];

  [(ClarityUIOnboardingSettingsWrapperController *)self _addButtonTray];
}

- (void)_addButtonTray
{
  buttonTray = [(ClarityUIOnboardingSettingsWrapperController *)self buttonTray];
  [buttonTray addButton:self->_nextButton];
}

- (void)setNextButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(ClarityUIOnboardingSettingsWrapperController *)self isNextButtonEnabled]!= enabled)
  {
    nextButton = self->_nextButton;

    [(OBBoldTrayButton *)nextButton setEnabled:enabledCopy];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  controller = self->_controller;
  pathCopy = path;
  viewCopy = view;
  [(PSListController *)controller tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor secondarySystemBackgroundColor];
  [cellCopy setBackgroundColor:v6];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  controller = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  v8 = [controller tableView:viewCopy viewForHeaderInSection:section];

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  controller = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  [controller tableView:viewCopy heightForHeaderInSection:section];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  controller = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  [controller tableView:viewCopy estimatedHeightForHeaderInSection:section];
  v9 = v8;

  return v9;
}

- (void)didUpdateIsContinueButtonEnabledForController:(id)controller
{
  isContinueButtonEnabled = [controller isContinueButtonEnabled];

  [(ClarityUIOnboardingSettingsWrapperController *)self setNextButtonEnabled:isContinueButtonEnabled];
}

- (void)nextButtonTapped:(id)tapped
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)cancelButtonTapped:(id)tapped
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end