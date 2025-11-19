@interface CSAccountsSupportingDelegationController
- (CSAccountsSupportingDelegationController)init;
- (id)specifiers;
- (id)specifiersForAccountsSupportingDelegation;
- (void)reloadDelegates;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CSAccountsSupportingDelegationController

- (CSAccountsSupportingDelegationController)init
{
  v6.receiver = self;
  v6.super_class = CSAccountsSupportingDelegationController;
  v2 = [(CSAccountsSupportingDelegationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(EKEventStore);
    eventStore = v2->_eventStore;
    v2->_eventStore = v3;

    [(CSAccountsSupportingDelegationController *)v2 reloadDelegates];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CSAccountsSupportingDelegationController;
  [(CSAccountsSupportingDelegationController *)&v16 viewDidAppear:a3];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/DELEGATE_CALENDARS"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Delegate Calendars" table:@"MobileCalSettings" locale:v6 bundleURL:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:v13];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [(CSAccountsSupportingDelegationController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)reloadDelegates
{
  v3 = [(EKEventStore *)self->_eventStore sources];
  v4 = [NSPredicate predicateWithBlock:&stru_20D68];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  accountsSupportingDelegation = self->_accountsSupportingDelegation;
  self->_accountsSupportingDelegation = v5;

  [(CSAccountsSupportingDelegationController *)self reloadSpecifiers];
}

- (id)specifiersForAccountsSupportingDelegation
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_accountsSupportingDelegation, "count")}];
  [(NSArray *)self->_accountsSupportingDelegation sortedArrayUsingComparator:&stru_20D88];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = CUIKDisplayedTitleForSource();
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        v11 = [v8 sourceIdentifier];
        [v10 setIdentifier:v11];

        [v10 setProperty:v8 forKey:@"CSSourceKey"];
        [v10 setProperty:&__kCFBooleanTrue forKey:@"CSPresentedFromDisambiguationControllerKey"];
        [v3 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Delegation first screen group title" value:@"Accounts supporting delegation" table:@"MobileCalSettings"];
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    [v5 addObject:v8];
    v9 = [(CSAccountsSupportingDelegationController *)self specifiersForAccountsSupportingDelegation];
    [v5 addObjectsFromArray:v9];

    v10 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end