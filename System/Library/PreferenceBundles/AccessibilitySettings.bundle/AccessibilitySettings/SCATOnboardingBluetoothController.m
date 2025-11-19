@interface SCATOnboardingBluetoothController
- (SCATOnboardingBluetoothController)initWithCompletion:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingBluetoothController

- (SCATOnboardingBluetoothController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AXParameterizedLocalizedString();
  v8.receiver = self;
  v8.super_class = SCATOnboardingBluetoothController;
  v6 = [(SCATOnboardingBluetoothController *)&v8 initWithTitle:v5 detailText:0 icon:0 adoptTableViewScrollView:1];

  if (v6)
  {
    [(SCATOnboardingBluetoothController *)v6 setCompletionHandler:v4];
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
  v5 = [(SCATOnboardingBluetoothController *)self buttonTray];
  [v5 addButton:v3];

  v6 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(SCATOnboardingBluetoothController *)self setTableView:v6];

  v7 = [(SCATOnboardingBluetoothController *)self tableView];
  [v7 setDataSource:self];

  v8 = [(SCATOnboardingBluetoothController *)self tableView];
  [v8 setDelegate:self];

  v9 = [(SCATOnboardingBluetoothController *)self tableView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[UIColor systemBackgroundColor];
  v11 = [(SCATOnboardingBluetoothController *)self tableView];
  [v11 setBackgroundColor:v10];

  v12 = [(SCATOnboardingBluetoothController *)self tableView];
  [v12 setScrollEnabled:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v8 = objc_opt_new();
  v6 = [(SCATOnboardingBluetoothController *)self navigationController];
  [v6 pushViewController:v8 animated:1];

  v7 = [(SCATOnboardingBluetoothController *)self tableView];
  [v7 deselectRowAtIndexPath:v5 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SCATOnboardingBluetoothCell"];
  v5 = +[UIColor secondarySystemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = AXParameterizedLocalizedString();
  v7 = [v4 textLabel];
  [v7 setText:v6];

  [v4 setAccessoryType:1];

  return v4;
}

@end