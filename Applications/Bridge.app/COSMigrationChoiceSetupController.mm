@interface COSMigrationChoiceSetupController
+ (BOOL)controllerNeedsToRun;
- (COSBuddyControllerDelegate)delegate;
- (COSMigrationChoiceSetupController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)userTappedContinue:(id)a3;
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

    v7 = [(COSMigrationChoiceSetupController *)v2 navigationItem];
    [v7 setRightBarButtonItem:v6];

    v8 = [(COSMigrationChoiceSetupController *)v2 tableView];
    [v8 setBouncesVertically:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = COSMigrationChoiceSetupController;
  [(COSMigrationChoiceSetupController *)&v18 viewDidLoad];
  v3 = [(COSMigrationChoiceSetupController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"COSMigrationChoiceSetupCellID"];

  v4 = [COSMigrationChoiceHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(COSMigrationChoiceHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = v8;

  v10 = [[COSMigrationChoiceFooterView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  footerView = self->_footerView;
  self->_footerView = v10;

  [(COSMigrationChoiceFooterView *)self->_footerView setUserInteractionEnabled:1];
  [(COSMigrationChoiceFooterView *)self->_footerView setDelegate:self];
  v12 = [(COSMigrationChoiceSetupController *)self tableView];
  v13 = BPSSeparatorColor();
  [v12 setSeparatorColor:v13];

  v14 = [(COSMigrationChoiceSetupController *)self view];
  v15 = +[UIColor clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [(COSMigrationChoiceSetupController *)self view];
  v17 = BPSBridgeTintColor();
  [v16 setTintColor:v17];
}

- (void)userTappedContinue:(id)a3
{
  v4 = [(COSMigrationChoiceDevicePickerViewCell *)self->_listCell migrationPickerView];
  v6 = [v4 selectedMigrationDevices];

  BPSMigrateDevices();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buddyControllerDone:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"COSMigrationChoiceSetupCellID", a4}];
  objc_storeStrong(&self->_listCell, v5);

  return v5;
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end