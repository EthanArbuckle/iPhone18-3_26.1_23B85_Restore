@interface SCATOnboardingBluetoothController
- (SCATOnboardingBluetoothController)initWithCompletion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingBluetoothController

- (SCATOnboardingBluetoothController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AXParameterizedLocalizedString();
  v8.receiver = self;
  v8.super_class = SCATOnboardingBluetoothController;
  v6 = [(SCATOnboardingBluetoothController *)&v8 initWithTitle:v5 detailText:0 icon:0 adoptTableViewScrollView:1];

  if (v6)
  {
    [(SCATOnboardingBluetoothController *)v6 setCompletionHandler:completionCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = SCATOnboardingBluetoothController;
  [(SCATOnboardingBluetoothController *)&v13 viewDidLoad];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v3 setTitle:v4 forState:0];

  [v3 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingBluetoothController *)self buttonTray];
  [buttonTray addButton:v3];

  v6 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(SCATOnboardingBluetoothController *)self setTableView:v6];

  tableView = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[UIColor systemBackgroundColor];
  tableView4 = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView4 setBackgroundColor:v10];

  tableView5 = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView5 setScrollEnabled:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = objc_opt_new();
  navigationController = [(SCATOnboardingBluetoothController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];

  tableView = [(SCATOnboardingBluetoothController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SCATOnboardingBluetoothCell"];
  v5 = +[UIColor secondarySystemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = AXParameterizedLocalizedString();
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessoryType:1];

  return v4;
}

@end