@interface SCATOnboardingAddedSwitchDetailController
- (SCATOnboardingAddedSwitchDetailController)initWithSwitch:(id)switch title:(id)title detailText:(id)text completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)reloadSwitchesForDetailsView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingAddedSwitchDetailController

- (SCATOnboardingAddedSwitchDetailController)initWithSwitch:(id)switch title:(id)title detailText:(id)text completion:(id)completion
{
  switchCopy = switch;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = SCATOnboardingAddedSwitchDetailController;
  v12 = [(SCATOnboardingAddedSwitchDetailController *)&v15 initWithTitle:title detailText:text symbolName:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    [(SCATOnboardingAddedSwitchDetailController *)v12 setCompletionHandler:completionCopy];
    [(SCATOnboardingAddedSwitchDetailController *)v13 setASwitch:switchCopy];
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
  buttonTray = [(SCATOnboardingAddedSwitchDetailController *)self buttonTray];
  [buttonTray addButton:v3];

  v6 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  v7 = +[UIColor systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [(SCATOnboardingAddedSwitchDetailController *)self setTableView:v6];
}

- (void)reloadSwitchesForDetailsView
{
  tableView = [(SCATOnboardingAddedSwitchDetailController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"SCATOnboardingSelectItemSwitchCell", path}];
  if (!v5)
  {
    v5 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SCATOnboardingSelectItemSwitchCell"];
  }

  aSwitch = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch];
  name = [aSwitch name];
  textLabel = [v5 textLabel];
  [textLabel setText:name];

  [v5 setAccessoryType:1];
  v9 = +[UIColor secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v9];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  aSwitch = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch];
  v9 = [SCATSwitchDetailsViewController switchDetailsViewControllerWithSwitch:aSwitch SCATOnboarding:1];

  [v9 setDelegate:self];
  [(SCATOnboardingAddedSwitchDetailController *)self presentViewController:v9 animated:1 completion:0];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(SCATOnboardingAddedSwitchDetailController *)self aSwitch:view];
  action = [v4 action];

  if (action == (&stru_20.flags + 3) || action == &stru_68)
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