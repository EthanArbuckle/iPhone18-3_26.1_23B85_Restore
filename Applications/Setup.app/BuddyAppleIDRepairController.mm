@interface BuddyAppleIDRepairController
- (BOOL)responsibleForViewController:(id)controller;
- (BuddyAppleIDRepairController)init;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyAppleIDRepairController

- (BuddyAppleIDRepairController)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDRepairController;
  v2 = [(BuddyAppleIDSpinnerPage *)&v6 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    navigationItem = [location navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  [(BuddyAppleIDRepairController *)selfCopy setPrimaryAccount:aa_primaryAppleAccount];

  if (location[0])
  {
    primaryAccount = [(BuddyAppleIDRepairController *)selfCopy primaryAccount];

    if (primaryAccount)
    {
      v6 = +[AKAccountManager sharedInstance];
      primaryAccount2 = [(BuddyAppleIDRepairController *)selfCopy primaryAccount];
      aa_altDSID = [(ACAccount *)primaryAccount2 aa_altDSID];
      v20 = [(AKAccountManager *)v6 authKitAccountWithAltDSID:aa_altDSID];

      v9 = +[AKAccountManager sharedInstance];
      v10 = [(AKAccountManager *)v9 repairStateForAccount:v20];

      v19[1] = v10;
      if (v10)
      {
        (*(location[0] + 2))();
      }

      else
      {
        v19[0] = objc_opt_new();
        primaryAccount3 = [(BuddyAppleIDRepairController *)selfCopy primaryAccount];
        aa_altDSID2 = [(ACAccount *)primaryAccount3 aa_altDSID];
        v13 = _NSConcreteStackBlock;
        v14 = -1073741824;
        v15 = 0;
        v16 = sub_10015108C;
        v17 = &unk_10032DA70;
        v18 = location[0];
        [v19[0] getUserInformationForAltDSID:aa_altDSID2 completion:&v13];

        objc_storeStrong(&v18, 0);
        objc_storeStrong(v19, 0);
      }

      objc_storeStrong(&v20, 0);
    }

    else
    {
      (*(location[0] + 2))(location[0], 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v26 = a2;
  appearCopy = appear;
  v24.receiver = self;
  v24.super_class = BuddyAppleIDRepairController;
  [(BuddyAppleIDSpinnerPage *)&v24 viewDidAppear:appear];
  v3 = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
  [(BuddyAppleIDRepairController *)selfCopy setAuthContext:v3];

  primaryAccount = [(BuddyAppleIDRepairController *)selfCopy primaryAccount];
  aa_altDSID = [(ACAccount *)primaryAccount aa_altDSID];
  authContext = [(BuddyAppleIDRepairController *)selfCopy authContext];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)authContext setAltDSID:aa_altDSID];

  authContext2 = [(BuddyAppleIDRepairController *)selfCopy authContext];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)authContext2 setNeedsRepair:1];

  authContext3 = [(BuddyAppleIDRepairController *)selfCopy authContext];
  navigationController = [(BuddyAppleIDRepairController *)selfCopy navigationController];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)authContext3 setPresentingViewController:navigationController];

  location = objc_alloc_init(AKAppleIDAuthenticationController);
  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = oslog;
    v11 = v21;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting Apple ID repair flow...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v12 = location;
  authContext4 = [(BuddyAppleIDRepairController *)selfCopy authContext];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100151494;
  v18 = &unk_10032D598;
  v19 = selfCopy;
  [v12 authenticateWithContext:authContext4 completion:&v14];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

- (BOOL)responsibleForViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    sub_10006AE18(buf, v6);
    _os_log_impl(&_mh_execute_header, oslog, v7, "Repair flow responsibleForViewController %@", buf, 0xCu);

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_opt_class();
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

@end