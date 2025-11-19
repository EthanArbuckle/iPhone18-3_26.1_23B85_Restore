@interface EVOnboardingWelcomeViewController
- (EVOnboardingWelcomeViewController)initWithVehicles:(id)a3 delegate:(id)a4;
- (id)obViewController;
- (void)_connectPressed;
- (void)_setUpLaterPressed;
@end

@implementation EVOnboardingWelcomeViewController

- (void)_setUpLaterPressed
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:2122 onTarget:659 eventValue:0];

  v4 = sub_100798370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User pressed set up later. Will dismiss.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained welcomeViewControllerDidDismiss:self];
}

- (void)_connectPressed
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:2118 onTarget:659 eventValue:0];

  v4 = sub_100798370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User pressed connect to Maps.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained welcomeViewControllerDidSelectConnect:self];
}

- (id)obViewController
{
  v3 = sub_100F354F8(self->_vehicles);
  v84 = self;
  v4 = self->_vehicles;
  v5 = +[NSMutableSet set];
  v88 = [(NSArray *)v4 mutableCopy];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v6 = v4;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v90;
  do
  {
    v11 = 0;
    do
    {
      if (*v90 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v89 + 1) + 8 * v11);
      v13 = [v12 pairedAppIdentifier];
      if (v13)
      {

LABEL_9:
        v15 = [v12 pairedAppIdentifier];

        if (v15)
        {
          v16 = [v12 pairedAppIdentifier];
          [v5 addObject:v16];
        }

        else
        {
          v17 = v12;

          [v88 removeObject:v17];
          v16 = [v17 iapIdentifier];
          [v5 addObject:v16];
          v9 = v17;
        }

        goto LABEL_12;
      }

      v14 = [v12 iapIdentifier];

      if (v14)
      {
        goto LABEL_9;
      }

      v16 = sub_100798370();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to get paired app id or iap2 identifier for vehicle: %@", buf, 0xCu);
      }

LABEL_12:

      v11 = v11 + 1;
    }

    while (v8 != v11);
    v18 = [(NSArray *)v6 countByEnumeratingWithState:&v89 objects:v97 count:16];
    v8 = v18;
  }

  while (v18);
LABEL_19:

  v19 = [v5 count];
  v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v21 = +[NSBundle mainBundle];
  v22 = v21;
  v85 = v3;
  if (v9 && v19 <= 1)
  {
    v23 = [v21 localizedStringForKey:@"[EV Onboarding] Enable iAP2 subtitle single" value:@"localized string not found" table:0];

    v24 = [v9 manufacturer];
    v25 = v84;
    if (v24)
    {
      v26 = v24;
      goto LABEL_61;
    }

    v45 = [v9 displayName];
    v46 = [NSString stringWithFormat:v23, v45];

    v26 = 0;
  }

  else
  {
    v25 = v84;
    if (v9)
    {
      v23 = [v21 localizedStringForKey:@"[EV Onboarding] Enable iAp2 and apps subtitle plural" value:@"localized string not found" table:0];

      v27 = [v9 displayName];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = [v9 manufacturer];
      }

      v26 = v29;

      v47 = v88;
      if ([v47 count])
      {
        v81 = v26;
        v83 = v23;
        v87 = +[NSMutableSet set];
        v48 = objc_opt_new();
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v80 = v47;
        v49 = v47;
        v50 = [v49 countByEnumeratingWithState:&v93 objects:buf count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v94;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v94 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v93 + 1) + 8 * i);
              v55 = [v54 pairedAppIdentifier];

              if (v55)
              {
                v56 = [v54 pairedAppIdentifier];
                [v87 addObject:v56];

                v57 = [v54 pairedAppIdentifier];
                [v48 setObject:v54 forKeyedSubscript:v57];
              }

              else
              {
                v57 = sub_100798370();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v98) = 138412290;
                  *(&v98 + 4) = v54;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to get paired app id for vehicle: %@", &v98, 0xCu);
                }
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v93 objects:buf count:16];
          }

          while (v51);
        }

        *&v98 = _NSConcreteStackBlock;
        *(&v98 + 1) = 3221225472;
        v99 = sub_100CE68A4;
        v100 = &unk_101650BD8;
        v101 = v48;
        v58 = v48;
        v59 = sub_100021DB0(v87, &v98);
        v60 = [v59 componentsJoinedByString:{@", "}];

        v25 = v84;
        v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        v26 = v81;
        v23 = v83;
        v47 = v80;
      }

      else
      {
        v60 = 0;
      }

      v46 = [NSString stringWithFormat:v23, v26, v60];

      v3 = v85;
    }

    else
    {
      if (v19 <= 1)
      {
        v30 = @"[EV Onboarding] Enable app subtitle single";
      }

      else
      {
        v30 = @"[EV Onboarding] Enable app subtitle plural";
      }

      v23 = [v21 localizedStringForKey:v30 value:@"localized string not found" table:0];

      v31 = v88;
      if ([v31 count])
      {
        v82 = v23;
        v86 = +[NSMutableSet set];
        v32 = objc_opt_new();
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v79 = v31;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v93 objects:buf count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v94;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v94 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v93 + 1) + 8 * j);
              v39 = [v38 pairedAppIdentifier];

              if (v39)
              {
                v40 = [v38 pairedAppIdentifier];
                [v86 addObject:v40];

                v41 = [v38 pairedAppIdentifier];
                [v32 setObject:v38 forKeyedSubscript:v41];
              }

              else
              {
                v41 = sub_100798370();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v98) = 138412290;
                  *(&v98 + 4) = v38;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to get paired app id for vehicle: %@", &v98, 0xCu);
                }
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v93 objects:buf count:16];
          }

          while (v35);
        }

        *&v98 = _NSConcreteStackBlock;
        *(&v98 + 1) = 3221225472;
        v99 = sub_100CE68A4;
        v100 = &unk_101650BD8;
        v101 = v32;
        v42 = v32;
        v43 = sub_100021DB0(v86, &v98);
        v44 = [v43 componentsJoinedByString:{@", "}];

        v26 = v44;
        v25 = v84;
        v3 = v85;
        v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        v23 = v82;
        v31 = v79;
      }

      else
      {
        v26 = 0;
      }

LABEL_61:
      v46 = [NSString stringWithFormat:v23, v26];
    }
  }

  if ([(NSArray *)v25->_vehicles count]> 1)
  {
    [UIImage imageNamed:@"multipleEV"];
  }

  else
  {
    sub_1006D43E0(1);
  }
  v61 = ;
  v62 = [[OBWelcomeController alloc] initWithTitle:v3 detailText:v46 icon:v61];
  v63 = [v62 view];
  [v63 setAccessibilityIdentifier:@"EVOnboardingWelcomeView"];

  [v62 setModalPresentationStyle:2];
  v64 = [v62 headerView];
  [v64 setAllowFullWidthIcon:1];

  v65 = +[OBBoldTrayButton boldButton];
  v66 = [v20[410] mainBundle];
  v67 = [v66 localizedStringForKey:@"[EV Onboarding] Connect" value:@"localized string not found" table:0];
  [v65 setTitle:v67 forState:0];

  [v65 addTarget:v25 action:"_connectPressed" forControlEvents:64];
  [v65 setAccessibilityIdentifier:@"ConnectButton"];
  v68 = [v62 buttonTray];
  [v68 addButton:v65];

  v69 = +[OBLinkTrayButton linkButton];
  v70 = [v20[410] mainBundle];
  [v70 localizedStringForKey:@"[EV Onboarding] Set Up Later" value:@"localized string not found" table:0];
  v72 = v71 = v20;
  [v69 setTitle:v72 forState:0];

  [v69 addTarget:v25 action:"_setUpLaterPressed" forControlEvents:64];
  [v69 setAccessibilityIdentifier:@"SetUpLaterButton"];
  v73 = [v62 buttonTray];
  [v73 addButton:v69];

  v74 = [v62 buttonTray];
  [v74 setAccessibilityIdentifier:@"EVOnboardingButtonTray"];

  v75 = [v62 buttonTray];
  v76 = [v71[410] mainBundle];
  v77 = [v76 localizedStringForKey:@"[EV Onboarding] Welcome screen privacy text" value:@"localized string not found" table:0];
  [v75 setCaptionText:v77];

  return v62;
}

- (EVOnboardingWelcomeViewController)initWithVehicles:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = EVOnboardingWelcomeViewController;
  v8 = [(EVOnboardingBaseViewController *)&v12 initWithDelegate:v7];
  if (v8)
  {
    v9 = [v6 copy];
    vehicles = v8->_vehicles;
    v8->_vehicles = v9;

    objc_storeWeak(&v8->_delegate, v7);
  }

  return v8;
}

@end