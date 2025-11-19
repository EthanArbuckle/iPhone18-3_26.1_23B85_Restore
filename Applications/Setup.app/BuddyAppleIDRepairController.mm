@interface BuddyAppleIDRepairController
- (BOOL)responsibleForViewController:(id)a3;
- (BuddyAppleIDRepairController)init;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
    v3 = [location navigationItem];
    [v3 setHidesBackButton:1 animated:0];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v4 = [v3 aa_primaryAppleAccount];
  [(BuddyAppleIDRepairController *)v22 setPrimaryAccount:v4];

  if (location[0])
  {
    v5 = [(BuddyAppleIDRepairController *)v22 primaryAccount];

    if (v5)
    {
      v6 = +[AKAccountManager sharedInstance];
      v7 = [(BuddyAppleIDRepairController *)v22 primaryAccount];
      v8 = [(ACAccount *)v7 aa_altDSID];
      v20 = [(AKAccountManager *)v6 authKitAccountWithAltDSID:v8];

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
        v11 = [(BuddyAppleIDRepairController *)v22 primaryAccount];
        v12 = [(ACAccount *)v11 aa_altDSID];
        v13 = _NSConcreteStackBlock;
        v14 = -1073741824;
        v15 = 0;
        v16 = sub_10015108C;
        v17 = &unk_10032DA70;
        v18 = location[0];
        [v19[0] getUserInformationForAltDSID:v12 completion:&v13];

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

- (void)viewDidAppear:(BOOL)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24.receiver = self;
  v24.super_class = BuddyAppleIDRepairController;
  [(BuddyAppleIDSpinnerPage *)&v24 viewDidAppear:a3];
  v3 = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
  [(BuddyAppleIDRepairController *)v27 setAuthContext:v3];

  v4 = [(BuddyAppleIDRepairController *)v27 primaryAccount];
  v5 = [(ACAccount *)v4 aa_altDSID];
  v6 = [(BuddyAppleIDRepairController *)v27 authContext];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)v6 setAltDSID:v5];

  v7 = [(BuddyAppleIDRepairController *)v27 authContext];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)v7 setNeedsRepair:1];

  v8 = [(BuddyAppleIDRepairController *)v27 authContext];
  v9 = [(BuddyAppleIDRepairController *)v27 navigationController];
  [(AKAppleIDAuthenticationPurpleBuddyContext *)v8 setPresentingViewController:v9];

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
  v13 = [(BuddyAppleIDRepairController *)v27 authContext];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100151494;
  v18 = &unk_10032D598;
  v19 = v27;
  [v12 authenticateWithContext:v13 completion:&v14];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

- (BOOL)responsibleForViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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