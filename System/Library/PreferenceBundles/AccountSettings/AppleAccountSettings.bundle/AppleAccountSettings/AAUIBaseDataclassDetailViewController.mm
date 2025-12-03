@interface AAUIBaseDataclassDetailViewController
- (AAUIBaseDataclassDetailViewController)initWithBundleID:(id)d account:(id)account;
- (id)accountsForAccountManager:(id)manager;
- (id)specifiers;
- (void)_loadNotesDetailViewController;
@end

@implementation AAUIBaseDataclassDetailViewController

- (AAUIBaseDataclassDetailViewController)initWithBundleID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  v17.receiver = self;
  v17.super_class = AAUIBaseDataclassDetailViewController;
  v9 = [(AAUIBaseDataclassDetailViewController *)&v17 init];
  if (v9)
  {
    v10 = +[ACAccountStore defaultStore];
    accountStore = v9->_accountStore;
    v9->_accountStore = v10;

    v12 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v9->_accountStore];
    serviceOwnersManager = v9->_serviceOwnersManager;
    v9->_serviceOwnersManager = v12;

    v14 = [[AIDAAccountManager alloc] initWithAccountStore:v9->_accountStore];
    accountManager = v9->_accountManager;
    v9->_accountManager = v14;

    [(AIDAAccountManager *)v9->_accountManager setDelegate:v9];
    objc_storeStrong(&v9->_bundleID, d);
    [(AAUIBaseDataclassDetailViewController *)v9 setAccount:accountCopy];
  }

  return v9;
}

- (void)_loadNotesDetailViewController
{
  _notesDataclassDetailViewController = [(AAUIBaseDataclassDetailViewController *)self _notesDataclassDetailViewController];
  [(AAUIBaseDataclassDetailViewController *)self addChildViewController:_notesDataclassDetailViewController];
  view = [(AAUIBaseDataclassDetailViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [_notesDataclassDetailViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(AAUIBaseDataclassDetailViewController *)self view];
  view4 = [_notesDataclassDetailViewController view];
  [view3 addSubview:view4];

  [_notesDataclassDetailViewController didMoveToParentViewController:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      v16 = 138412290;
      v17 = bundleID;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAUIBaseDataclassDetailViewController is loading specifier for bundle id: %@", &v16, 0xCu);
    }

    if ([(AAUIBaseDataclassDetailViewController *)self _shouldShowDataclassSwitchForAppBundleID:self->_bundleID])
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DATACLASS_CELL_TITLE"];
      v9 = [v7 localizedStringForKey:v8 value:&stru_5A5F0 table:@"Localizable"];
      v10 = [PSSpecifier groupSpecifierWithID:@"DATACLASS_SWITCH_GROUP" name:v9];

      [v6 addObject:v10];
      if ([(NSString *)self->_bundleID isEqualToString:@"com.apple.reminders"])
      {
        v11 = &ACAccountDataclassReminders;
      }

      else
      {
        if (![(NSString *)self->_bundleID isEqualToString:@"com.apple.MobileAddressBook"])
        {
LABEL_10:
          v13 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];
          *&self->ACUIDataclassConfigurationViewController_opaque[v3] = v6;

          goto LABEL_11;
        }

        v11 = &ACAccountDataclassContacts;
      }

      v12 = [(AAUIBaseDataclassDetailViewController *)self specifierForDataclass:*v11];
      [v6 addObject:v12];

      goto LABEL_10;
    }
  }

LABEL_11:
  v14 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];

  return v14;
}

- (id)accountsForAccountManager:(id)manager
{
  v4 = objc_opt_new();
  v5 = AIDAServiceTypeCloud;
  v6 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeCloud];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [v4 copy];

  return v7;
}

@end