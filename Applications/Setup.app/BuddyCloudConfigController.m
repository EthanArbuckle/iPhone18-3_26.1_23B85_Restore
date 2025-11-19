@interface BuddyCloudConfigController
+ (BOOL)isCredentialsError:(id)a3;
+ (BOOL)isSoftwareUpdateError:(id)a3;
+ (id)getCertificatesFromCertificateDataArray:(id)a3;
- (BFFFlowItemDelegate)delegate;
- (BuddyCloudConfigDisclosureViewController)disclosureViewController;
- (BuddyCloudConfigLoginViewController)loginViewController;
- (NSMutableArray)controllersToRemove;
- (UINavigationController)navController;
- (id)view;
- (id)viewController;
- (void)_completeCloudConfig;
- (void)_suggestSoftwareUpdateWithOSVersion:(id)a3 buildVersion:(id)a4 navigationController:(id)a5;
- (void)_suggestSoftwareUpdateWithSoftwareUpdateRequiredError:(id)a3 navigationController:(id)a4;
- (void)cloudConfigDidFinishFromViewController:(id)a3 wasApplied:(BOOL)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)removeControllersToRemove;
- (void)removeViewControllers:(id)a3 fromNavHierarchyOf:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startOver;
- (void)transitionToDisclosureViewFromController:(id)a3;
- (void)transitionToErrorViewInDisclosureViewControllerFromController:(id)a3 lastError:(id)a4;
- (void)transitionToLoginViewControllerFromController:(id)a3 lastError:(id)a4;
- (void)transitionToSoftwareUpdateControllerFromController:(id)a3 lastError:(id)a4;
@end

@implementation BuddyCloudConfigController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigController *)v21 pendingRestoreState];
  v4 = [(BuddyPendingRestoreState *)v3 backupItem];
  v5 = v4 != 0;

  v19 = v5;
  if (v5)
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Skipping cloud configuration due to pending restore", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location[0] + 2))(location[0], 0);
  }

  else
  {
    v8 = dispatch_get_global_queue(25, 0);
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10022D4C4;
    v13 = &unk_10032AFD0;
    v14 = v21;
    v15 = location[0];
    dispatch_async(v8, &v9);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

+ (BOOL)isCredentialsError:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] domain];
  v8 = 0;
  if (([v3 isEqualToString:DMCHTTPTransactionErrorDomain] & 1) == 0 || (v4 = objc_msgSend(location[0], "code"), v5 = 1, v4 != 23003))
  {
    v9 = [location[0] domain];
    v8 = 1;
    v6 = [v9 isEqualToString:MCCloudConfigErrorDomain];
    v5 = 0;
    if (v6)
    {
      v5 = [location[0] code] == 33000;
    }
  }

  v11 = v5;
  if (v8)
  {
  }

  objc_storeStrong(location, 0);
  return v11;
}

+ (BOOL)isSoftwareUpdateError:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] domain];
  v4 = 0;
  if ([v3 isEqualToString:DMCHTTPTransactionErrorDomain])
  {
    v4 = [location[0] code] == 23006;
  }

  objc_storeStrong(location, 0);
  return v4;
}

+ (id)getCertificatesFromCertificateDataArray:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  if (location[0])
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [location[0] count]);
    v4 = v19;
    v19 = v3;

    memset(__b, 0, sizeof(__b));
    v5 = location[0];
    v6 = [v5 countByEnumeratingWithState:__b objects:v21 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          data = *(__b[1] + 8 * i);
          cf = SecCertificateCreateWithData(0, data);
          if (cf)
          {
            [v19 addObject:cf];
            CFRelease(cf);
          }

          else
          {
            oslog = _BYLoggingFacility();
            v14 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v9 = oslog;
              v10 = v14;
              sub_10006AA68(v13);
              _os_log_impl(&_mh_execute_header, v9, v10, "Could not parse anchor certificate data. Ignoring.", v13, 2u);
            }

            objc_storeStrong(&oslog, 0);
          }
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v21 count:16];
      }

      while (v6);
    }
  }

  v11 = v19;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)startOver
{
  v2 = [(BuddyCloudConfigController *)self enrollmentCoordinator:a2];
  [(BuddyEnrollmentCoordinator *)v2 interruptEnrollment];
}

- (void)removeViewControllers:(id)a3 fromNavHierarchyOf:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = [v13 viewControllers];
  v12 = [v5 mutableCopy];

  memset(__b, 0, sizeof(__b));
  v6 = location[0];
  v7 = [v6 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v7)
  {
    v8 = *__b[2];
    do
    {
      for (i = 0; i < v7; ++i)
      {
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(__b[1] + 8 * i);
        [v12 removeObject:v11];
      }

      v7 = [v6 countByEnumeratingWithState:__b objects:v15 count:16];
    }

    while (v7);
  }

  [v13 setViewControllers:v12 animated:0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)setDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_delegate, location[0]);
  objc_storeStrong(location, 0);
}

- (BuddyCloudConfigDisclosureViewController)disclosureViewController
{
  if (!self->_disclosureViewController)
  {
    v2 = objc_alloc_init(BuddyCloudConfigDisclosureViewController);
    disclosureViewController = self->_disclosureViewController;
    self->_disclosureViewController = v2;

    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setConfigController:self, a2];
    v4 = [(BuddyCloudConfigController *)self enrollmentCoordinator];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setEnrollmentCoordinator:v4];

    v5 = [(BuddyCloudConfigController *)self managedConfiguration];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setManagedConfiguration:v5];

    v6 = [(BuddyCloudConfigController *)self networkProvider];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setNetworkProvider:v6];

    v7 = [(BuddyCloudConfigController *)self delegate];
    [(BuddyWelcomeController *)self->_disclosureViewController setDelegate:v7];
  }

  v8 = self->_disclosureViewController;

  return v8;
}

- (BuddyCloudConfigLoginViewController)loginViewController
{
  if (!self->_loginViewController)
  {
    v2 = objc_alloc_init(BuddyCloudConfigLoginViewController);
    loginViewController = self->_loginViewController;
    self->_loginViewController = v2;

    [(BuddyCloudConfigLoginViewController *)self->_loginViewController setConfigController:self, a2];
    v4 = [(BuddyCloudConfigController *)self managedConfiguration];
    [(BuddyCloudConfigLoginViewController *)self->_loginViewController setManagedConfiguration:v4];
  }

  v5 = self->_loginViewController;

  return v5;
}

- (id)viewController
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  v2 = [(BuddyCloudConfigController *)self cloudConfigState];
  if (v2 < 2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    goto LABEL_8;
  }

  if (v2 - 3 < 2)
  {
LABEL_6:
    v3 = [(BuddyCloudConfigController *)v10 disclosureViewController];
    v4 = location[0];
    location[0] = v3;

    goto LABEL_8;
  }

  if (v2 == 6)
  {
    v5 = [(BuddyCloudConfigController *)v10 loginViewController];
    v6 = location[0];
    location[0] = v5;
  }

LABEL_8:
  v7 = location[0];
  objc_storeStrong(location, 0);
  return v7;
}

- (id)view
{
  v2 = [(BuddyCloudConfigController *)self viewController:a2];
  v3 = [v2 view];

  return v3;
}

- (NSMutableArray)controllersToRemove
{
  if (!self->_controllersToRemove)
  {
    v2 = objc_alloc_init(NSMutableArray);
    controllersToRemove = self->_controllersToRemove;
    self->_controllersToRemove = v2;
  }

  v4 = self->_controllersToRemove;

  return v4;
}

- (void)_completeCloudConfig
{
  v10 = self;
  location[1] = a2;
  [(BuddyCloudConfigController *)self setCloudConfigState:8];
  location[0] = +[NSMutableArray array];
  v2 = [(BuddyCloudConfigController *)v10 disclosureViewController];

  if (v2)
  {
    v3 = [(BuddyCloudConfigController *)v10 disclosureViewController];
    [location[0] addObject:v3];

    v4 = [(BuddyCloudConfigController *)v10 disclosureViewController];
    [(BuddyCloudConfigDisclosureViewController *)v4 setConfigController:0];
  }

  v5 = [(BuddyCloudConfigController *)v10 loginViewController];

  if (v5)
  {
    v6 = [(BuddyCloudConfigController *)v10 loginViewController];
    [location[0] addObject:v6];
  }

  v7 = [(BuddyCloudConfigController *)v10 delegate];
  [(BFFFlowItemDelegate *)v7 removeViewControllersOnNextPush:location[0]];

  WeakRetained = objc_loadWeakRetained(&v10->_delegate);
  [WeakRetained flowItemDone:v10];

  objc_storeStrong(location, 0);
}

- (void)cloudConfigDidFinishFromViewController:(id)a3 wasApplied:(BOOL)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v15);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Completed cloud configuration. Was applied: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (v15)
  {
    v5 = [(BuddyCloudConfigController *)v17 managedConfiguration];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10022E5B4;
    v10 = &unk_10032F528;
    v11 = location[0];
    v12 = v17;
    [(MCProfileConnection *)v5 cloudConfigurationUIDidCompleteWasApplied:1 completionHandler:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    [(BuddyCloudConfigController *)v17 _completeCloudConfig];
  }

  objc_storeStrong(location, 0);
}

- (void)transitionToDisclosureViewFromController:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v20;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing disclosure view controller.", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigController *)v23 setCloudConfigState:0];
  v5 = [location[0] navigationController];
  v6 = [v5 viewControllers];
  v18 = [v6 mutableCopy];

  if ([v18 count])
  {
    v7 = [v18 lastObject];
    v8 = location[0];

    if (v7 == v8)
    {
      v9 = [(BuddyCloudConfigController *)v23 disclosureViewController];
      [v18 insertObject:v9 atIndex:{objc_msgSend(v18, "count") - 1}];

      v10 = [location[0] navigationController];
      [v10 setViewControllers:v18];

      v11 = [location[0] navigationController];
      v12 = [(BuddyCloudConfigController *)v23 disclosureViewController];
      v13 = [(NSMutableArray *)v11 popToViewController:v12 animated:1];
    }

    else
    {
      v14 = [location[0] navigationController];
      v15 = [(BuddyCloudConfigController *)v23 disclosureViewController];
      [v14 pushViewController:v15 animated:0];

      v11 = [(BuddyCloudConfigController *)v23 controllersToRemove];
      [(NSMutableArray *)v11 addObject:location[0]];
    }
  }

  else
  {
    v16 = [location[0] navigationController];
    v17 = [(BuddyCloudConfigController *)v23 disclosureViewController];
    [v16 pushViewController:v17 animated:0];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToErrorViewInDisclosureViewControllerFromController:(id)a3 lastError:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v13;
    sub_10006AA68(v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "Showing disclosure view controller to show error.", v12, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigController *)v17 setCloudConfigState:5];
  v7 = [(BuddyCloudConfigController *)v17 controllersToRemove];
  [(NSMutableArray *)v7 addObject:location[0]];

  v8 = v15;
  v9 = [(BuddyCloudConfigController *)v17 disclosureViewController];
  [(BuddyCloudConfigDisclosureViewController *)v9 setLastRetrievalError:v8];

  v10 = [location[0] navigationController];
  v11 = [(BuddyCloudConfigController *)v17 disclosureViewController];
  [v10 pushViewController:v11 animated:0];

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToLoginViewControllerFromController:(id)a3 lastError:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v14;
    sub_10006AA68(v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "Showing login view contoller.", v13, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigController *)v18 setCloudConfigState:6];
  v7 = [(BuddyCloudConfigController *)v18 controllersToRemove];
  [(NSMutableArray *)v7 addObject:location[0]];

  v8 = [(BuddyCloudConfigController *)v18 loginViewController];
  [(BuddyCloudConfigLoginViewController *)v8 clearInput];

  v9 = v16;
  v10 = [(BuddyCloudConfigController *)v18 loginViewController];
  [(BuddyCloudConfigLoginViewController *)v10 setLastError:v9];

  v11 = [location[0] navigationController];
  v12 = [(BuddyCloudConfigController *)v18 loginViewController];
  [v11 pushViewController:v12 animated:1];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToSoftwareUpdateControllerFromController:(id)a3 lastError:(id)a4
{
  v17 = self;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  if (![BuddyCloudConfigController isSoftwareUpdateError:v14])
  {
    v5 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v5 handleFailureInMethod:v16 object:v17 file:@"BuddyCloudConfigController.m" lineNumber:292 description:@"This method should only be called with a Software Update error."];
  }

  [(BuddyCloudConfigController *)v17 setCloudConfigState:3];
  v6 = location;
  v7 = [(BuddyCloudConfigController *)v17 disclosureViewController];

  if (v6 != v7)
  {
    v8 = [(BuddyCloudConfigController *)v17 controllersToRemove];
    [(NSMutableArray *)v8 addObject:location];

    v9 = [location navigationController];
    v10 = [(BuddyCloudConfigController *)v17 disclosureViewController];
    [v9 pushViewController:v10 animated:0];
  }

  v11 = v17;
  v12 = v14;
  v13 = [(BuddyCloudConfigController *)v17 navController];
  [(BuddyCloudConfigController *)v11 _suggestSoftwareUpdateWithSoftwareUpdateRequiredError:v12 navigationController:v13];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

- (void)removeControllersToRemove
{
  v3 = [(BuddyCloudConfigController *)self controllersToRemove];
  v4 = [(BuddyCloudConfigController *)self navController];
  [(BuddyCloudConfigController *)self removeViewControllers:v3 fromNavHierarchyOf:v4];

  v5 = [(BuddyCloudConfigController *)self controllersToRemove];
  [(NSMutableArray *)v5 removeAllObjects];
}

- (void)_suggestSoftwareUpdateWithSoftwareUpdateRequiredError:(id)a3 navigationController:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v5 = [location[0] userInfo];
  v6 = [v5 objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v24 = [v6 objectForKeyedSubscript:@"OSVersion"];

  v7 = [location[0] userInfo];
  v8 = [v7 objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v23 = [v8 objectForKeyedSubscript:@"BuildVersion"];

  v9 = [location[0] userInfo];
  v10 = [v9 objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v22 = [v10 objectForKeyedSubscript:@"RequireBetaProgram"];

  oslog = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v22);
    _os_log_impl(&_mh_execute_header, oslog, v20, "Required Beta Program: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v22)
  {
    v11 = [v22 objectForKeyedSubscript:@"Token"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = sub_10022F4D4();
      v14 = [v22 objectForKeyedSubscript:@"Token"];
      [v13 enrollInProgramWithMDMToken:v14 completion:&stru_10032F548];
    }

    else
    {
      v19 = _BYLoggingFacility();
      v18 = 17;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v15 = v19;
        v16 = v18;
        sub_10006AA68(v17);
        _os_log_fault_impl(&_mh_execute_header, v15, v16, "Required Beta Program but no valid token provided, skipping beta enrollment", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
    }
  }

  [(BuddyCloudConfigController *)v27 _suggestSoftwareUpdateWithOSVersion:v24 buildVersion:v23 navigationController:v25];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_suggestSoftwareUpdateWithOSVersion:(id)a3 buildVersion:(id)a4 navigationController:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = objc_alloc_init(SUScanOptions);
  [v10 setForced:1];
  [v10 setIdentifier:@"com.apple.purplebuddy.software_update"];
  [v10 setRequestedPMV:location[0]];
  [v10 setRequestedBuild:v12];
  v9 = objc_alloc_init(BuddyMandatoryUpdateController);
  [v9 setMdmUpdateOptions:v10];
  v7 = [(BuddyCloudConfigController *)v14 networkProvider];
  [v9 setNetworkProvider:v7];

  v8 = [(BuddyCloudConfigController *)v14 delegate];
  [v9 setDelegate:v8];

  [v11 pushViewController:v9 animated:1];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)navController
{
  WeakRetained = objc_loadWeakRetained(&self->_navController);

  return WeakRetained;
}

@end