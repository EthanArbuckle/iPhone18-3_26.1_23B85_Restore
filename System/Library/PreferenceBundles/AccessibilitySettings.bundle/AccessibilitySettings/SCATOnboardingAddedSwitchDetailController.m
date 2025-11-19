@interface SCATOnboardingAddedSwitchDetailController
- (SCATOnboardingAddedSwitchDetailController)initWithSwitch:(id)a3 title:(id)a4 detailText:(id)a5 completion:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)reloadSwitchesForDetailsView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingAddedSwitchDetailController

- (SCATOnboardingAddedSwitchDetailController)initWithSwitch:(id)a3 title:(id)a4 detailText:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SCATOnboardingAddedSwitchDetailController;
  v12 = [(SCATOnboardingAddedSwitchDetailController *)&v15 initWithTitle:a4 detailText:a5 symbolName:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    [(SCATOnboardingAddedSwitchDetailController *)v12 setCompletionHandler:v11];
    [(SCATOnboardingAddedSwitchDetailController *)v13 setASwitch:v10];
  }

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SCATOnboardingAddedSwitchDetailController;
  [(SCATOnboardingAddedSwitchDetailController *)&v8 viewDidLoad];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v3 setTitle:v4 forState:0];

  [v3 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingAddedSwitchDetailController *)self buttonTray];
  [v5 addButton:v3];

  v6 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  v7 = +[UIColor systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [(SCATOnboardingAddedSwitchDetailController *)self setTableView:v6];
}

- (void)reloadSwitchesForDetailsView
{
  v2 = [(SCATOnboardingAddedSwitchDetailController *)self tableView];
  [v2 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"SCATOnboardingSelectItemSwitchCell", a4}];
  if (!v5)
  {
    v5 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SCATOnboardingSelectItemSwitchCell"];
  }

  v6 = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch];
  v7 = [v6 name];
  v8 = [v5 textLabel];
  [v8 setText:v7];

  [v5 setAccessoryType:1];
  v9 = +[UIColor secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v9];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch];
  v9 = [SCATSwitchDetailsViewController switchDetailsViewControllerWithSwitch:v8 SCATOnboarding:1];

  [v9 setDelegate:self];
  [(SCATOnboardingAddedSwitchDetailController *)self presentViewController:v9 animated:1 completion:0];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch:a3];
  v5 = [v4 action];

  if (v5 == (&stru_20.flags + 3) || v5 == &stru_68)
  {
    v6 = AXParameterizedLocalizedString();
  }

  else
  {
    v6 = &stru_25D420;
  }

  return v6;
}

@end