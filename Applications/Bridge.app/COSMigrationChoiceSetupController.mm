@interface COSMigrationChoiceSetupController
+ (BOOL)controllerNeedsToRun;
- (COSBuddyControllerDelegate)delegate;
- (COSMigrationChoiceSetupController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)userTappedContinue:(id)continue;
- (void)viewDidLoad;
@end

@implementation COSMigrationChoiceSetupController

+ (BOOL)controllerNeedsToRun
{
  v2 = BPSMigrationDevices();
  v3 = [v2 count] > 1;

  return v3;
}

- (COSMigrationChoiceSetupController)init
{
  v10.receiver = self;
  v10.super_class = COSMigrationChoiceSetupController;
  v2 = [(COSMigrationChoiceSetupController *)&v10 initWithStyle:1];
  if (v2)
  {
    v3 = [UIBarButtonItem alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
    v6 = [v3 initWithTitle:v5 style:0 target:v2 action:"controllerCancelled:"];

    navigationItem = [(COSMigrationChoiceSetupController *)v2 navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    tableView = [(COSMigrationChoiceSetupController *)v2 tableView];
    [tableView setBouncesVertically:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = COSMigrationChoiceSetupController;
  [(COSMigrationChoiceSetupController *)&v18 viewDidLoad];
  tableView = [(COSMigrationChoiceSetupController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"COSMigrationChoiceSetupCellID"];

  v4 = [COSMigrationChoiceHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(COSMigrationChoiceHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = height;

  height2 = [[COSMigrationChoiceFooterView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  footerView = self->_footerView;
  self->_footerView = height2;

  [(COSMigrationChoiceFooterView *)self->_footerView setUserInteractionEnabled:1];
  [(COSMigrationChoiceFooterView *)self->_footerView setDelegate:self];
  tableView2 = [(COSMigrationChoiceSetupController *)self tableView];
  v13 = BPSSeparatorColor();
  [tableView2 setSeparatorColor:v13];

  view = [(COSMigrationChoiceSetupController *)self view];
  v15 = +[UIColor clearColor];
  [view setBackgroundColor:v15];

  view2 = [(COSMigrationChoiceSetupController *)self view];
  v17 = BPSBridgeTintColor();
  [view2 setTintColor:v17];
}

- (void)userTappedContinue:(id)continue
{
  migrationPickerView = [(COSMigrationChoiceDevicePickerViewCell *)self->_listCell migrationPickerView];
  selectedMigrationDevices = [migrationPickerView selectedMigrationDevices];

  BPSMigrateDevices();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buddyControllerDone:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"COSMigrationChoiceSetupCellID", path}];
  objc_storeStrong(&self->_listCell, v5);

  return v5;
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end