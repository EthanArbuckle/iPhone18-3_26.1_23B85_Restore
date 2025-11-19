@interface ClarityUIOnboardingSettingsWrapperController
- (ClarityUIOnboardingSettingsWrapperController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 controller:(id)a6;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addButtonTray;
- (void)cancelButtonTapped:(id)a3;
- (void)didUpdateIsContinueButtonEnabledForController:(id)a3;
- (void)displaySetupController:(id)a3;
- (void)nextButtonTapped:(id)a3;
- (void)setNextButtonEnabled:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation ClarityUIOnboardingSettingsWrapperController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (ClarityUIOnboardingSettingsWrapperController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 controller:(id)a6
{
  v11 = a6;
  v20.receiver = self;
  v20.super_class = ClarityUIOnboardingSettingsWrapperController;
  v12 = [(ClarityUIOnboardingSettingsWrapperController *)&v20 initWithTitle:a3 detailText:a4 icon:a5 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controller, a6);
    v14 = +[OBBoldTrayButton boldButton];
    v15 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v14 setTitle:v15 forState:0];

    [v14 setAccessibilityIdentifier:@"APP_ONBOARDING_CONTINUE"];
    [v14 addTarget:v13 action:"nextButtonTapped:" forControlEvents:0x2000];
    if ([v11 conformsToProtocol:&OBJC_PROTOCOL___AXOnboardingContinueButtonEnabling])
    {
      v16 = v11;
      v17 = [v16 isContinueButtonEnabled];
      [v16 setContinueButtonEnablingDelegate:v13];
    }

    else
    {
      v17 = &dword_0 + 1;
    }

    [v14 setEnabled:v17];
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
  v4 = [(ClarityUIOnboardingSettingsWrapperController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  [(ClarityUIOnboardingSettingsWrapperController *)self displaySetupController:self->_controller];
}

- (void)displaySetupController:(id)a3
{
  v4 = a3;
  [(ClarityUIOnboardingSettingsWrapperController *)self addChildViewController:v4];
  [v4 loadViewIfNeeded];
  v5 = [(ClarityUIOnboardingSettingsWrapperController *)self contentView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(ClarityUIOnboardingSettingsWrapperController *)self contentView];
  v16 = [v4 view];
  [v15 addSubview:v16];

  v17 = [v4 table];
  [(ClarityUIOnboardingSettingsWrapperController *)self setTableView:v17];

  [v4 didMoveToParentViewController:self];
  v18 = [(ClarityUIOnboardingSettingsWrapperController *)self tableView];
  [v18 setBackgroundView:0];

  v19 = [(ClarityUIOnboardingSettingsWrapperController *)self tableView];
  v20 = +[UIColor systemBackgroundColor];
  [v19 setBackgroundColor:v20];

  [(ClarityUIOnboardingSettingsWrapperController *)self _addButtonTray];
}

- (void)_addButtonTray
{
  v3 = [(ClarityUIOnboardingSettingsWrapperController *)self buttonTray];
  [v3 addButton:self->_nextButton];
}

- (void)setNextButtonEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(ClarityUIOnboardingSettingsWrapperController *)self isNextButtonEnabled]!= a3)
  {
    nextButton = self->_nextButton;

    [(OBBoldTrayButton *)nextButton setEnabled:v3];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  controller = self->_controller;
  v6 = a4;
  v7 = a3;
  [(PSListController *)controller tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[UIColor secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  v8 = [v7 tableView:v6 viewForHeaderInSection:a4];

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  [v7 tableView:v6 heightForHeaderInSection:a4];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIOnboardingSettingsWrapperController *)self controller];
  [v7 tableView:v6 estimatedHeightForHeaderInSection:a4];
  v9 = v8;

  return v9;
}

- (void)didUpdateIsContinueButtonEnabledForController:(id)a3
{
  v4 = [a3 isContinueButtonEnabled];

  [(ClarityUIOnboardingSettingsWrapperController *)self setNextButtonEnabled:v4];
}

- (void)nextButtonTapped:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)cancelButtonTapped:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end