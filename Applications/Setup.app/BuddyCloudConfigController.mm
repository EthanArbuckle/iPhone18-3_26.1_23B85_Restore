@interface BuddyCloudConfigController
+ (BOOL)isCredentialsError:(id)error;
+ (BOOL)isSoftwareUpdateError:(id)error;
+ (id)getCertificatesFromCertificateDataArray:(id)array;
- (BFFFlowItemDelegate)delegate;
- (BuddyCloudConfigDisclosureViewController)disclosureViewController;
- (BuddyCloudConfigLoginViewController)loginViewController;
- (NSMutableArray)controllersToRemove;
- (UINavigationController)navController;
- (id)view;
- (id)viewController;
- (void)_completeCloudConfig;
- (void)_suggestSoftwareUpdateWithOSVersion:(id)version buildVersion:(id)buildVersion navigationController:(id)controller;
- (void)_suggestSoftwareUpdateWithSoftwareUpdateRequiredError:(id)error navigationController:(id)controller;
- (void)cloudConfigDidFinishFromViewController:(id)controller wasApplied:(BOOL)applied;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)removeControllersToRemove;
- (void)removeViewControllers:(id)controllers fromNavHierarchyOf:(id)of;
- (void)setDelegate:(id)delegate;
- (void)startOver;
- (void)transitionToDisclosureViewFromController:(id)controller;
- (void)transitionToErrorViewInDisclosureViewControllerFromController:(id)controller lastError:(id)error;
- (void)transitionToLoginViewControllerFromController:(id)controller lastError:(id)error;
- (void)transitionToSoftwareUpdateControllerFromController:(id)controller lastError:(id)error;
@end

@implementation BuddyCloudConfigController

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  pendingRestoreState = [(BuddyCloudConfigController *)selfCopy pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  v5 = backupItem != 0;

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
    v14 = selfCopy;
    v15 = location[0];
    dispatch_async(v8, &v9);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

+ (BOOL)isCredentialsError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v8 = 0;
  if (([domain isEqualToString:DMCHTTPTransactionErrorDomain] & 1) == 0 || (v4 = objc_msgSend(location[0], "code"), v5 = 1, v4 != 23003))
  {
    domain2 = [location[0] domain];
    v8 = 1;
    v6 = [domain2 isEqualToString:MCCloudConfigErrorDomain];
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

+ (BOOL)isSoftwareUpdateError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v4 = 0;
  if ([domain isEqualToString:DMCHTTPTransactionErrorDomain])
  {
    v4 = [location[0] code] == 23006;
  }

  objc_storeStrong(location, 0);
  return v4;
}

+ (id)getCertificatesFromCertificateDataArray:(id)array
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
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

- (void)removeViewControllers:(id)controllers fromNavHierarchyOf:(id)of
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controllers);
  v13 = 0;
  objc_storeStrong(&v13, of);
  viewControllers = [v13 viewControllers];
  v12 = [viewControllers mutableCopy];

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

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
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
    enrollmentCoordinator = [(BuddyCloudConfigController *)self enrollmentCoordinator];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setEnrollmentCoordinator:enrollmentCoordinator];

    managedConfiguration = [(BuddyCloudConfigController *)self managedConfiguration];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setManagedConfiguration:managedConfiguration];

    networkProvider = [(BuddyCloudConfigController *)self networkProvider];
    [(BuddyCloudConfigDisclosureViewController *)self->_disclosureViewController setNetworkProvider:networkProvider];

    delegate = [(BuddyCloudConfigController *)self delegate];
    [(BuddyWelcomeController *)self->_disclosureViewController setDelegate:delegate];
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
    managedConfiguration = [(BuddyCloudConfigController *)self managedConfiguration];
    [(BuddyCloudConfigLoginViewController *)self->_loginViewController setManagedConfiguration:managedConfiguration];
  }

  v5 = self->_loginViewController;

  return v5;
}

- (id)viewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  cloudConfigState = [(BuddyCloudConfigController *)self cloudConfigState];
  if (cloudConfigState < 2)
  {
    goto LABEL_6;
  }

  if (cloudConfigState == 2)
  {
    goto LABEL_8;
  }

  if (cloudConfigState - 3 < 2)
  {
LABEL_6:
    disclosureViewController = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
    v4 = location[0];
    location[0] = disclosureViewController;

    goto LABEL_8;
  }

  if (cloudConfigState == 6)
  {
    loginViewController = [(BuddyCloudConfigController *)selfCopy loginViewController];
    v6 = location[0];
    location[0] = loginViewController;
  }

LABEL_8:
  v7 = location[0];
  objc_storeStrong(location, 0);
  return v7;
}

- (id)view
{
  v2 = [(BuddyCloudConfigController *)self viewController:a2];
  view = [v2 view];

  return view;
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
  selfCopy = self;
  location[1] = a2;
  [(BuddyCloudConfigController *)self setCloudConfigState:8];
  location[0] = +[NSMutableArray array];
  disclosureViewController = [(BuddyCloudConfigController *)selfCopy disclosureViewController];

  if (disclosureViewController)
  {
    disclosureViewController2 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
    [location[0] addObject:disclosureViewController2];

    disclosureViewController3 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
    [(BuddyCloudConfigDisclosureViewController *)disclosureViewController3 setConfigController:0];
  }

  loginViewController = [(BuddyCloudConfigController *)selfCopy loginViewController];

  if (loginViewController)
  {
    loginViewController2 = [(BuddyCloudConfigController *)selfCopy loginViewController];
    [location[0] addObject:loginViewController2];
  }

  delegate = [(BuddyCloudConfigController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:location[0]];

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  [WeakRetained flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)cloudConfigDidFinishFromViewController:(id)controller wasApplied:(BOOL)applied
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  appliedCopy = applied;
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, appliedCopy);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Completed cloud configuration. Was applied: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (appliedCopy)
  {
    managedConfiguration = [(BuddyCloudConfigController *)selfCopy managedConfiguration];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10022E5B4;
    v10 = &unk_10032F528;
    v11 = location[0];
    v12 = selfCopy;
    [(MCProfileConnection *)managedConfiguration cloudConfigurationUIDidCompleteWasApplied:1 completionHandler:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    [(BuddyCloudConfigController *)selfCopy _completeCloudConfig];
  }

  objc_storeStrong(location, 0);
}

- (void)transitionToDisclosureViewFromController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
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
  [(BuddyCloudConfigController *)selfCopy setCloudConfigState:0];
  navigationController = [location[0] navigationController];
  viewControllers = [navigationController viewControllers];
  v18 = [viewControllers mutableCopy];

  if ([v18 count])
  {
    lastObject = [v18 lastObject];
    v8 = location[0];

    if (lastObject == v8)
    {
      disclosureViewController = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
      [v18 insertObject:disclosureViewController atIndex:{objc_msgSend(v18, "count") - 1}];

      navigationController2 = [location[0] navigationController];
      [navigationController2 setViewControllers:v18];

      navigationController3 = [location[0] navigationController];
      disclosureViewController2 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
      v13 = [(NSMutableArray *)navigationController3 popToViewController:disclosureViewController2 animated:1];
    }

    else
    {
      navigationController4 = [location[0] navigationController];
      disclosureViewController3 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
      [navigationController4 pushViewController:disclosureViewController3 animated:0];

      navigationController3 = [(BuddyCloudConfigController *)selfCopy controllersToRemove];
      [(NSMutableArray *)navigationController3 addObject:location[0]];
    }
  }

  else
  {
    navigationController5 = [location[0] navigationController];
    disclosureViewController4 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
    [navigationController5 pushViewController:disclosureViewController4 animated:0];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToErrorViewInDisclosureViewControllerFromController:(id)controller lastError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, error);
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
  [(BuddyCloudConfigController *)selfCopy setCloudConfigState:5];
  controllersToRemove = [(BuddyCloudConfigController *)selfCopy controllersToRemove];
  [(NSMutableArray *)controllersToRemove addObject:location[0]];

  v8 = v15;
  disclosureViewController = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
  [(BuddyCloudConfigDisclosureViewController *)disclosureViewController setLastRetrievalError:v8];

  navigationController = [location[0] navigationController];
  disclosureViewController2 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
  [navigationController pushViewController:disclosureViewController2 animated:0];

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToLoginViewControllerFromController:(id)controller lastError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, error);
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
  [(BuddyCloudConfigController *)selfCopy setCloudConfigState:6];
  controllersToRemove = [(BuddyCloudConfigController *)selfCopy controllersToRemove];
  [(NSMutableArray *)controllersToRemove addObject:location[0]];

  loginViewController = [(BuddyCloudConfigController *)selfCopy loginViewController];
  [(BuddyCloudConfigLoginViewController *)loginViewController clearInput];

  v9 = v16;
  loginViewController2 = [(BuddyCloudConfigController *)selfCopy loginViewController];
  [(BuddyCloudConfigLoginViewController *)loginViewController2 setLastError:v9];

  navigationController = [location[0] navigationController];
  loginViewController3 = [(BuddyCloudConfigController *)selfCopy loginViewController];
  [navigationController pushViewController:loginViewController3 animated:1];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionToSoftwareUpdateControllerFromController:(id)controller lastError:(id)error
{
  selfCopy = self;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, controller);
  v14 = 0;
  objc_storeStrong(&v14, error);
  if (![BuddyCloudConfigController isSoftwareUpdateError:v14])
  {
    v5 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v5 handleFailureInMethod:v16 object:selfCopy file:@"BuddyCloudConfigController.m" lineNumber:292 description:@"This method should only be called with a Software Update error."];
  }

  [(BuddyCloudConfigController *)selfCopy setCloudConfigState:3];
  v6 = location;
  disclosureViewController = [(BuddyCloudConfigController *)selfCopy disclosureViewController];

  if (v6 != disclosureViewController)
  {
    controllersToRemove = [(BuddyCloudConfigController *)selfCopy controllersToRemove];
    [(NSMutableArray *)controllersToRemove addObject:location];

    navigationController = [location navigationController];
    disclosureViewController2 = [(BuddyCloudConfigController *)selfCopy disclosureViewController];
    [navigationController pushViewController:disclosureViewController2 animated:0];
  }

  v11 = selfCopy;
  v12 = v14;
  navController = [(BuddyCloudConfigController *)selfCopy navController];
  [(BuddyCloudConfigController *)v11 _suggestSoftwareUpdateWithSoftwareUpdateRequiredError:v12 navigationController:navController];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

- (void)removeControllersToRemove
{
  controllersToRemove = [(BuddyCloudConfigController *)self controllersToRemove];
  navController = [(BuddyCloudConfigController *)self navController];
  [(BuddyCloudConfigController *)self removeViewControllers:controllersToRemove fromNavHierarchyOf:navController];

  controllersToRemove2 = [(BuddyCloudConfigController *)self controllersToRemove];
  [(NSMutableArray *)controllersToRemove2 removeAllObjects];
}

- (void)_suggestSoftwareUpdateWithSoftwareUpdateRequiredError:(id)error navigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v25 = 0;
  objc_storeStrong(&v25, controller);
  userInfo = [location[0] userInfo];
  v6 = [userInfo objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v24 = [v6 objectForKeyedSubscript:@"OSVersion"];

  userInfo2 = [location[0] userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v23 = [v8 objectForKeyedSubscript:@"BuildVersion"];

  userInfo3 = [location[0] userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
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

  [(BuddyCloudConfigController *)selfCopy _suggestSoftwareUpdateWithOSVersion:v24 buildVersion:v23 navigationController:v25];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_suggestSoftwareUpdateWithOSVersion:(id)version buildVersion:(id)buildVersion navigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v12 = 0;
  objc_storeStrong(&v12, buildVersion);
  v11 = 0;
  objc_storeStrong(&v11, controller);
  v10 = objc_alloc_init(SUScanOptions);
  [v10 setForced:1];
  [v10 setIdentifier:@"com.apple.purplebuddy.software_update"];
  [v10 setRequestedPMV:location[0]];
  [v10 setRequestedBuild:v12];
  v9 = objc_alloc_init(BuddyMandatoryUpdateController);
  [v9 setMdmUpdateOptions:v10];
  networkProvider = [(BuddyCloudConfigController *)selfCopy networkProvider];
  [v9 setNetworkProvider:networkProvider];

  delegate = [(BuddyCloudConfigController *)selfCopy delegate];
  [v9 setDelegate:delegate];

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