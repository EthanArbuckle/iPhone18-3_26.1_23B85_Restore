@interface iCloudMailAdvancedController
- (iCloudMailAdvancedController)initWithPageType:(int64_t)type;
- (id)specifiers;
- (void)configureNavigationItems;
- (void)save;
- (void)viewDidLoad;
@end

@implementation iCloudMailAdvancedController

- (iCloudMailAdvancedController)initWithPageType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = iCloudMailAdvancedController;
  result = [(iCloudMailAdvancedController *)&v5 init];
  if (result)
  {
    result->_pageType = type;
  }

  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = iCloudMailAdvancedController;
  [(AccountPSAdvancedController *)&v3 viewDidLoad];
  [(iCloudMailAdvancedController *)self configureNavigationItems];
}

- (void)configureNavigationItems
{
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"save"];
  navigationItem = [(iCloudMailAdvancedController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancel"];
  navigationItem2 = [(iCloudMailAdvancedController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v6];
}

- (id)specifiers
{
  v36.receiver = self;
  v36.super_class = iCloudMailAdvancedController;
  specifiers = [(AccountPSAdvancedController *)&v36 specifiers];
  pageType = self->_pageType;
  if (pageType == 1)
  {
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"SMIME_PREFS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v37[0] = v32;
    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"ENABLE_SIGNING" value:&stru_B9FC8 table:@"AccountPreferences"];
    v37[1] = v30;
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"ENABLE_ENCRYPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
    v37[2] = v28;
    v4 = [NSArray arrayWithObjects:v37 count:3];
    v12 = [NSSet setWithArray:v4];
  }

  else
  {
    if (pageType)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"MAILBOX_BEHAVIORS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[0] = v32;
    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"DRAFTS_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[1] = v30;
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SENT_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[2] = v28;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v4 localizedStringForKey:@"DELETED_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[3] = v26;
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ARCHIVE_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[4] = v25;
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"MOVE_DISCARDED_MESSAGES_INTO" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[5] = v23;
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"DELETED_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[6] = v21;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ARCHIVE_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[7] = v6;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DELETED_MESSAGES_GROUP" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[8] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
    v38[9] = v10;
    v11 = [NSArray arrayWithObjects:v38 count:10];
    v12 = [NSSet setWithArray:v11];
  }

LABEL_7:
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_6EF84;
  v34[3] = &unk_B9B68;
  v35 = v12;
  v13 = v12;
  v14 = [specifiers ef_filter:v34];
  v15 = OBJC_IVAR___PSListController__specifiers;
  v16 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v14;

  v17 = *&self->super.PSListController_opaque[v15];
  v18 = v17;

  return v17;
}

- (void)save
{
  account = [(AccountPSAdvancedController *)self account];
  accountValues = [(AccountPSAdvancedController *)self accountValues];
  [account setAccountPropertiesWithDictionary:accountValues];

  account2 = [(AccountPSAdvancedController *)self account];
  [account2 savePersistentAccount];

  [(iCloudMailAdvancedController *)self dismissViewControllerAnimated:1 completion:0];
}

@end