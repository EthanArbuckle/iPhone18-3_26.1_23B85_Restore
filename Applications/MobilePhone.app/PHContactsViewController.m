@interface PHContactsViewController
+ ($1FF454C5B48E436092D281DABF654916)badge;
- (BOOL)contactNavigationController:(id)a3 shouldShowCardForContact:(id)a4;
- (BOOL)shouldSaveAndRestoreState;
- (BOOL)shouldSnapshot;
- (BOOL)tabBarControllerShouldSelectViewController:(id)a3;
- (CNContact)savedPerson;
- (PHContactsControllerDelegate)contactsControllerDelegate;
- (PHContactsViewController)initWithContactStore:(id)a3;
- (PHContactsViewController)initWithContactStore:(id)a3 allowsLargeTitles:(BOOL)a4 allowsSearch:(BOOL)a5;
- (PHContactsViewController)initWithDataSource:(id)a3 allowsLargeTitles:(BOOL)a4 allowsSearch:(BOOL)a5;
- (id)tabBarIconName;
- (void)_restoreState;
- (void)contactNavigationControllerDidCancel:(id)a3;
- (void)handleURL:(id)a3;
- (void)savedPerson;
- (void)setSavedPerson:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHContactsViewController

- (PHContactsViewController)initWithContactStore:(id)a3
{
  v5 = a3;
  v6 = [[CNContactStoreDataSource alloc] initWithStore:v5];
  v7 = [(PHContactsViewController *)self initWithDataSource:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_contactStore, a3);
  }

  return v7;
}

- (PHContactsViewController)initWithContactStore:(id)a3 allowsLargeTitles:(BOOL)a4 allowsSearch:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[CNContactStoreDataSource alloc] initWithStore:v7];

  v9 = [(PHContactsViewController *)self initWithDataSource:v8 allowsLargeTitles:1 allowsSearch:v5];
  return v9;
}

- (PHContactsViewController)initWithDataSource:(id)a3 allowsLargeTitles:(BOOL)a4 allowsSearch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = PHContactsViewController;
  if ([(PHContactsViewController *)&v16 respondsToSelector:"initWithDataSource:withOptions:"])
  {
    v15.receiver = self;
    v15.super_class = [(PHContactsViewController *)self superclass];
    v17[0] = @"allowsLargeTitles";
    v9 = [NSNumber numberWithBool:v6];
    v17[1] = @"allowsSearch";
    v18[0] = v9;
    v10 = [NSNumber numberWithBool:v5];
    v18[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [(PHContactsViewController *)&v15 initWithDataSource:v8 withOptions:v11];

    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = PHContactsViewController;
  v12 = [(PHContactsViewController *)&v14 initWithDataSource:v8 allowsLargeTitles:v6];
  if (v12)
  {
LABEL_5:
    [(PHContactsViewController *)v12 setAllowsCardDeletion:1];
    [(PHContactsViewController *)v12 setAllowsCardEditing:1];
    [(PHContactsViewController *)v12 setAllowsContactBlocking:1];
    [(PHContactsViewController *)v12 setDelegate:v12];
    InitializeIconAndTitle();
  }

LABEL_6:

  return v12;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PHContactsViewController;
  [(PHContactsViewController *)&v6 viewDidLoad];
  [(PHContactsViewController *)self setDefinesPresentationContext:0];
  v3 = [(PHContactsViewController *)self contactListViewController];
  [v3 setShouldDisplayMeContactBanner:1];

  [(PHContactsViewController *)self _restoreState];
  v4 = objc_opt_new();
  v5 = [(PHContactsViewController *)self tabBarItem];
  [v5 setStandardAppearance:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PHContactsViewController;
  [(PHContactsViewController *)&v13 viewWillAppear:a3];
  v4 = objc_alloc_init(TUFeatureFlags);
  v5 = [v4 nameAndPhotoEnabledC3];

  if (v5)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going to present CNKCNSharedProfileOnboardingController on launch", v12, 2u);
    }

    v7 = [(PHContactsViewController *)self onboardingController];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(PHContactsViewController *)self setOnboardingController:v8];
    }

    v9 = [(PHContactsViewController *)self onboardingController];
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 contactStore];
    [v9 presentOnboardingControllerOnLaunchIfNeededFrom:self withContactStore:v11];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PHContactsViewController;
  [(PHContactsViewController *)&v9 viewDidAppear:a3];
  [(PHContactsViewController *)self finishSwitchTestIfNeeded];
  v4 = +[MPSignpost sharedInstance];
  [v4 contactsTabViewAppeared];

  if (![(PHContactsViewController *)self checkedForFacebookContacts])
  {
    [(PHContactsViewController *)self setCheckedForFacebookContacts:1];
    [(PHContactsViewController *)self checkForFacebookContactsWithDelay:1 allowAlert:0.5];
  }

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHContactsViewController viewDidAppear:", v8, 2u);
  }

  v6 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(3, self);
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v6];
}

- (BOOL)tabBarControllerShouldSelectViewController:(id)a3
{
  v4 = [a3 selectedViewController];

  if (v4 == self)
  {
    [(PHContactsViewController *)self showAllContactsList];
  }

  return v4 != self;
}

- (BOOL)shouldSnapshot
{
  v2 = [(PHContactsViewController *)self contactListViewController];
  v3 = [v2 isSearching];

  return v3 ^ 1;
}

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = PhoneBadgeKnownZero[0];
  v3 = PhoneBadgeKnownZero[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)tabBarIconName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTACTS_TITLE" value:&stru_10028F310 table:@"General"];

  return v3;
}

- (void)contactNavigationControllerDidCancel:(id)a3
{
  v4 = [(PHContactsViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(PHContactsViewController *)self contactsControllerDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(PHContactsViewController *)self contactsControllerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PHContactsViewController *)self contactsControllerDelegate];
      [v9 contactsControllerDidCancel:self];
    }
  }
}

- (BOOL)contactNavigationController:(id)a3 shouldShowCardForContact:(id)a4
{
  v5 = a4;
  v6 = [(PHContactsViewController *)self contactsControllerDelegate];
  if (v6 && (v7 = v6, [(PHContactsViewController *)self contactsControllerDelegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [(PHContactsViewController *)self contactsControllerDelegate];
    v11 = [v10 contactsControllerShouldContinueAfterSelectingContact:v5];
  }

  else
  {
    v11 = 1;
  }

  if ([(PHContactsViewController *)self shouldSaveAndRestoreState]&& v11)
  {
    [(PHContactsViewController *)self setSavedPerson:v5];
  }

  return v11;
}

- (BOOL)shouldSaveAndRestoreState
{
  v2 = PHPreferencesGetValueInDomain();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNContact)savedPerson
{
  v3 = PHPreferencesGetValueInDomain();
  if (v3)
  {
    v4 = [(PHContactsViewController *)self contactStore];
    v5 = +[CNContactViewController descriptorForRequiredKeys];
    v13 = v5;
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    v12 = 0;
    v7 = [v4 unifiedContactWithIdentifier:v3 keysToFetch:v6 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (!v9)
    {
      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PHContactsViewController *)v8 savedPerson];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSavedPerson:(id)a3
{
  v3 = [a3 identifier];
  PHPreferencesSetValueInDomain();
}

- (void)_restoreState
{
  if ([(PHContactsViewController *)self shouldSaveAndRestoreState])
  {
    v3 = [(PHContactsViewController *)self savedPerson];

    if (v3)
    {
      v4 = [(PHContactsViewController *)self savedPerson];
      [(PHContactsViewController *)self showCardForContact:v4 animated:0];
    }
  }
}

- (void)handleURL:(id)a3
{
  v3 = a3;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to open URL %@", buf, 0xCu);
  }

  v5 = v3;
  TUGuaranteeExecutionOnMainThreadSync();
}

void __38__PHContactsViewController_handleURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchResultIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
    if (v4 != -1)
    {
      v5 = v4;
      v6 = [*(a1 + 40) dataSource];
      v7 = [v6 store];
      v8 = [CNContact predicateForLegacyIdentifier:v5];
      v9 = +[CNContactViewController descriptorForRequiredKeys];
      v18 = v9;
      v10 = [NSArray arrayWithObjects:&v18 count:1];
      v15 = 0;
      v11 = [v7 unifiedContactsMatchingPredicate:v8 keysToFetch:v10 error:&v15];
      v12 = v15;

      if ([v11 count])
      {
        v13 = [v11 firstObject];
        v14 = PHDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presenting contact card for contact %{sensitive}@", buf, 0xCu);
        }

        [*(a1 + 40) showCardForContact:v13 animated:0];
      }

      else
      {
        if (v11 || !v12 || [v12 code] == 200)
        {
          goto LABEL_8;
        }

        v13 = PHDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __38__PHContactsViewController_handleURL___block_invoke_cold_1(v12, v13);
        }
      }

LABEL_8:
    }
  }
}

- (PHContactsControllerDelegate)contactsControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsControllerDelegate);

  return WeakRetained;
}

- (void)savedPerson
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to fetch contact with identifier from saved store: %@", &v2, 0xCu);
}

void __38__PHContactsViewController_handleURL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Contact fetch failed with the following error %@", &v2, 0xCu);
}

@end