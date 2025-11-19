@interface EVOnboardingController
- (BOOL)_validateStateTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (EVOnboardingController)initWithUnpairedVehicles:(id)a3;
- (id)_viewControllerForState:(int64_t)a3;
- (void)_cleanUp;
- (void)_dismissOnboarding;
- (void)_finishConfiguringVehicle:(id)a3;
- (void)_onboardVehicles:(id)a3;
- (void)_proceedFromPrivacyControllerWithSelectedOptIn:(BOOL)a3;
- (void)_proceedToNextState;
- (void)_startSingleVehicleOnboardingWithVehicles:(id)a3;
- (void)_updateCurrentSingleVehicleOnboardingController;
- (void)onboardingController:(id)a3 didFinishOnboardingVehicle:(id)a4 willProceedSettingUpLPR:(BOOL)a5;
- (void)onboardingController:(id)a3 didFinishSettingUpLPRForVehicle:(id)a4;
- (void)onboardingViewControllerWillMoveFromParentViewController:(id)a3;
- (void)presentInViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setState:(int64_t)a3;
- (void)vehicleSelectionViewController:(id)a3 didSelectContinueWithVehicles:(id)a4;
- (void)virtualGarageDidUpdate:(id)a3;
- (void)welcomeViewControllerDidDismiss:(id)a3;
- (void)welcomeViewControllerDidSelectConnect:(id)a3;
@end

@implementation EVOnboardingController

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  if ((MapsFeature_IsEnabled_EVRoutingEnhancements() & 1) == 0 && self->_onboardedVehicleCount)
  {
    v5 = +[MKMapService sharedService];
    v6 = [v4 vehicles];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count] + self->_onboardedVehicleCount - 1);
    v8 = [v7 stringValue];
    [v5 captureUserAction:2107 onTarget:660 eventValue:v8];

    self->_onboardedVehicleCount = 0;
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"EVOnboardingFinishedNotification" object:0 userInfo:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D2A858;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_finishConfiguringVehicle:(id)a3
{
  v4 = a3;
  vehiclesAwaitingOnboarding = self->_vehiclesAwaitingOnboarding;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D2AA0C;
  v16[3] = &unk_1016588C0;
  v6 = v4;
  v17 = v6;
  v7 = sub_1000282CC(vehiclesAwaitingOnboarding, v16);
  v8 = self->_vehiclesAwaitingOnboarding;
  self->_vehiclesAwaitingOnboarding = v7;

  if (self->_onboardedVehicles)
  {
    onboardedVehicles = self->_onboardedVehicles;
  }

  else
  {
    onboardedVehicles = &__NSArray0__struct;
  }

  v10 = [(NSArray *)onboardedVehicles arrayByAddingObject:v6];
  v11 = self->_onboardedVehicles;
  self->_onboardedVehicles = v10;

  v12 = sub_100798370();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v6 displayName];
    v14 = [(NSArray *)self->_vehiclesAwaitingOnboarding count];
    v15 = [(NSArray *)self->_onboardedVehicles count];
    *buf = 138412802;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "onboardingController _finishConfiguringVehicle: %@. state after configuring: _vehiclesAwaitingOnboarding: %lu, _onboardedVehicles: %lu", buf, 0x20u);
  }

  [(EVOnboardingController *)self _updateCurrentSingleVehicleOnboardingController];
}

- (void)onboardingController:(id)a3 didFinishSettingUpLPRForVehicle:(id)a4
{
  v5 = a4;
  v6 = sub_100798370();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 displayName];
    v8 = [(NSArray *)self->_vehiclesAwaitingOnboarding count];
    v9 = [(NSArray *)self->_onboardedVehicles count];
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "onboardingController didFinishSettingUpLPRForVehicle: %@. current state: _vehiclesAwaitingOnboarding: %lu, _onboardedVehicles: %lu", &v11, 0x20u);
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:436 onTarget:660 eventValue:0];

  [(EVOnboardingController *)self _finishConfiguringVehicle:v5];
}

- (void)onboardingController:(id)a3 didFinishOnboardingVehicle:(id)a4 willProceedSettingUpLPR:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = sub_100798370();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v11 = [v7 displayName];
    v12 = [(NSArray *)self->_vehiclesAwaitingOnboarding count];
    v13 = [(NSArray *)self->_onboardedVehicles count];
    v16 = 138413058;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "onboardingController didFinishOnboardingVehicle: %@ willProceedSettingUpLPR: %@. current state: _vehiclesAwaitingOnboarding: %lu, _onboardedVehicles: %lu", &v16, 0x2Au);
  }

  v14 = +[MKMapService sharedService];
  [v14 captureUserAction:441 onTarget:660 eventValue:0];

  v15 = +[VGVirtualGarageService sharedService];
  [v15 virtualGarageOnboardVehicle:v7];

  if (!v5)
  {
    [(EVOnboardingController *)self _finishConfiguringVehicle:v7];
  }
}

- (void)_updateCurrentSingleVehicleOnboardingController
{
  v2 = self;
  if ([(NSArray *)self->_vehiclesAwaitingOnboarding count])
  {
    v3 = [(NSArray *)v2->_vehiclesAwaitingOnboarding count];
    v4 = v3 == 1 && [(NSArray *)v2->_onboardedVehicles count]== 0;
    v8 = [SingleVehicleOnboardingController alloc];
    v9 = [(NSArray *)v2->_vehiclesAwaitingOnboarding firstObject];
    v10 = [(SingleVehicleOnboardingController *)v8 initWithUnpairedVehicle:v9 isLastUnpairedVehicle:v3 == 1 isSoleUnpairedVehicle:v4 navigationController:v2->_navigationController delegate:v2];
    [(EVOnboardingController *)v2 setCurrentSingleVehicleOnboardingController:v10];

    v11 = [(EVOnboardingController *)v2 currentSingleVehicleOnboardingController];
    v12 = [v11 currentViewController];

    v13 = sub_100798370();
    v14 = v13;
    if (v12)
    {
      v15 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = [(UINavigationController *)v2->_navigationController viewControllers];
        v17 = v16;
        if (v16)
        {
          if ([v16 count])
          {
            v57 = v12;
            v59 = v2;
            v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v54 = v17;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v60 objects:buf count:16];
            if (!v20)
            {
              goto LABEL_31;
            }

            v21 = v20;
            v22 = *v61;
            while (1)
            {
              v23 = 0;
              do
              {
                if (*v61 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v60 + 1) + 8 * v23);
                if (v24)
                {
                  v25 = objc_opt_class();
                  v26 = NSStringFromClass(v25);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_24;
                  }

                  v27 = [v24 performSelector:"accessibilityIdentifier"];
                  v28 = v27;
                  if (v27 && ![v27 isEqualToString:v26])
                  {
                    v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];
                  }

                  else
                  {

LABEL_24:
                    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
                  }

                  goto LABEL_27;
                }

                v29 = @"<nil>";
LABEL_27:

                [v18 addObject:v29];
                v23 = v23 + 1;
              }

              while (v21 != v23);
              v30 = [v19 countByEnumeratingWithState:&v60 objects:buf count:16];
              v21 = v30;
              if (!v30)
              {
LABEL_31:

                v31 = [v19 componentsJoinedByString:{@", "}];
                v32 = [NSString stringWithFormat:@"<%p> [%@]", v19, v31];

                v12 = v57;
                v2 = v59;
                v17 = v54;
                v15 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                goto LABEL_36;
              }
            }
          }

          v32 = [NSString stringWithFormat:@"<%p> (empty)", v17];
        }

        else
        {
          v32 = @"<nil>";
        }

LABEL_36:

        v33 = v32;
        v65 = v12;
        v34 = [v15[286] arrayWithObjects:&v65 count:1];
        v35 = v34;
        if (v34)
        {
          if ([v34 count])
          {
            v53 = v33;
            v55 = v17;
            v56 = v14;
            v58 = v12;
            v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v35 count]);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v52 = v35;
            v37 = v35;
            v38 = [v37 countByEnumeratingWithState:&v60 objects:buf count:16];
            if (!v38)
            {
              goto LABEL_55;
            }

            v39 = v38;
            v40 = *v61;
            while (1)
            {
              v41 = 0;
              do
              {
                if (*v61 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v60 + 1) + 8 * v41);
                if (v42)
                {
                  v43 = objc_opt_class();
                  v44 = NSStringFromClass(v43);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_48;
                  }

                  v45 = [v42 performSelector:"accessibilityIdentifier"];
                  v46 = v45;
                  if (v45 && ![v45 isEqualToString:v44])
                  {
                    v47 = [NSString stringWithFormat:@"%@<%p, %@>", v44, v42, v46];
                  }

                  else
                  {

LABEL_48:
                    v47 = [NSString stringWithFormat:@"%@<%p>", v44, v42];
                  }

                  goto LABEL_51;
                }

                v47 = @"<nil>";
LABEL_51:

                [v36 addObject:v47];
                v41 = v41 + 1;
              }

              while (v39 != v41);
              v48 = [v37 countByEnumeratingWithState:&v60 objects:buf count:16];
              v39 = v48;
              if (!v48)
              {
LABEL_55:

                v49 = [v37 componentsJoinedByString:{@", "}];
                v50 = [NSString stringWithFormat:@"<%p> [%@]", v37, v49];

                v12 = v58;
                v17 = v55;
                v14 = v56;
                v15 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                v35 = v52;
                v33 = v53;
                goto LABEL_58;
              }
            }
          }

          v50 = [NSString stringWithFormat:@"<%p> (empty)", v35];
        }

        else
        {
          v50 = @"<nil>";
        }

LABEL_58:

        *buf = 138412546;
        v67 = v33;
        v68 = 2112;
        v69 = v50;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "_updateCurrentSingleVehicleOnboardingController replacing VCs: %@ with VC: %@", buf, 0x16u);
      }

      navigationController = v2->_navigationController;
      v64 = v12;
      v14 = [v15[286] arrayWithObjects:&v64 count:1];
      [(UINavigationController *)navigationController setViewControllers:v14 animated:1];
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "_updateCurrentSingleVehicleOnboardingController couldn't retrieve a vehicle onboarding VC.", buf, 2u);
    }
  }

  else
  {
    v5 = sub_100798370();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_updateCurrentSingleVehicleOnboardingController. There are no vehicles awaiting onboarding, we can dismiss", buf, 2u);
    }

    if ([(NSArray *)v2->_onboardedVehicles count]== 1)
    {
      v6 = +[VGVirtualGarageService sharedService];
      v7 = [(NSArray *)v2->_onboardedVehicles firstObject];
      [v6 virtualGarageSelectVehicle:v7];
    }

    [(EVOnboardingController *)v2 _dismissOnboarding];
  }
}

- (void)vehicleSelectionViewController:(id)a3 didSelectContinueWithVehicles:(id)a4
{
  v5 = a4;
  if ([(EVOnboardingController *)self state]!= 3)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[EVOnboardingController vehicleSelectionViewController:didSelectContinueWithVehicles:]";
      v21 = 2080;
      v22 = "EVOnboardingController.m";
      v23 = 1024;
      v24 = 334;
      v25 = 2080;
      v26 = "self.state == EVOnboardingControllerStateVehicleSelection";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }
    }
  }

  if (![v5 count])
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[EVOnboardingController vehicleSelectionViewController:didSelectContinueWithVehicles:]";
      v21 = 2080;
      v22 = "EVOnboardingController.m";
      v23 = 1024;
      v24 = 335;
      v25 = 2080;
      v26 = "vehicles.count > 0";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }
    }
  }

  if (![v5 count])
  {
    v10 = sub_100798370();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      [(EVOnboardingController *)self _dismissOnboarding];
      goto LABEL_16;
    }

    LOWORD(v19) = 0;
    v11 = "Didn't select any vehicles to onboard. Will dismiss onboarding.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, &v19, 2u);
    goto LABEL_15;
  }

  IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
  v7 = sub_100798370();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((IsEnabled_EVRoutingEnhancements & 1) == 0)
  {
    if (v8)
    {
      v12 = [v5 count];
      v19 = 134217984;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Selected %lu vehicles to onboard.", &v19, 0xCu);
    }

    [(EVOnboardingController *)self _onboardVehicles:v5];
    v10 = sub_100798370();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LOWORD(v19) = 0;
    v11 = "EV Enhancements not enabled. Will dismiss onboarding.";
    goto LABEL_14;
  }

  if (v8)
  {
    v9 = [v5 count];
    v19 = 134217984;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "EV Enhancements enabled. Will continue onboarding %lu vehicles one by one.", &v19, 0xCu);
  }

  [(EVOnboardingController *)self _startSingleVehicleOnboardingWithVehicles:v5];
LABEL_16:
}

- (void)_startSingleVehicleOnboardingWithVehicles:(id)a3
{
  v4 = a3;
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v26 = v5;
        v27 = v4;
        v28 = self;
        v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v25 = v7;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = *v30;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * v13);
            if (v14)
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_14;
              }

              v17 = [v14 performSelector:"accessibilityIdentifier"];
              v18 = v17;
              if (v17 && ![v17 isEqualToString:v16])
              {
                v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];
              }

              else
              {

LABEL_14:
                v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
              }

              goto LABEL_17;
            }

            v19 = @"<nil>";
LABEL_17:

            [v8 addObject:v19];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v20 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
          v11 = v20;
          if (!v20)
          {
LABEL_21:

            v21 = [v9 componentsJoinedByString:{@", "}];
            v22 = [NSString stringWithFormat:@"<%p> [%@]", v9, v21];

            v4 = v27;
            self = v28;
            v7 = v25;
            v5 = v26;
            goto LABEL_24;
          }
        }
      }

      v22 = [NSString stringWithFormat:@"<%p> (empty)", v7];
    }

    else
    {
      v22 = @"<nil>";
    }

LABEL_24:

    *buf = 138412290;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_startSingleVehicleOnboardingWithVehicles: %@", buf, 0xCu);
  }

  v23 = [v4 copy];
  vehiclesAwaitingOnboarding = self->_vehiclesAwaitingOnboarding;
  self->_vehiclesAwaitingOnboarding = v23;

  [(EVOnboardingController *)self _updateCurrentSingleVehicleOnboardingController];
  [(EVOnboardingController *)self setState:4];
}

- (void)_proceedFromPrivacyControllerWithSelectedOptIn:(BOOL)a3
{
  v3 = a3;
  if ([(EVOnboardingController *)self state]!= 2)
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[EVOnboardingController _proceedFromPrivacyControllerWithSelectedOptIn:]";
      v21 = 2080;
      v22 = "EVOnboardingController.m";
      v23 = 1024;
      v24 = 303;
      v25 = 2080;
      v26 = "self.state == EVOnboardingControllerStatePrivacy";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }
    }
  }

  GEOConfigSetBOOL();
  if ([(NSArray *)self->_unpairedVehicles count]< 2)
  {
    IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
    v10 = sub_100798370();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (IsEnabled_EVRoutingEnhancements)
    {
      if (v11)
      {
        v12 = @"NO";
        if (v3)
        {
          v12 = @"YES";
        }

        v13 = v12;
        v19 = 138412290;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_proceedFromPrivacyControllerWithSelectedOptIn: %@ and there was only one vehicle. Will skip vehicle selection and go straight to single vehicle onboarding.", &v19, 0xCu);
      }

      [(EVOnboardingController *)self _startSingleVehicleOnboardingWithVehicles:self->_unpairedVehicles];
    }

    else
    {
      if (v11)
      {
        v14 = @"NO";
        if (v3)
        {
          v14 = @"YES";
        }

        v15 = v14;
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_proceedFromPrivacyControllerWithSelectedOptIn: %@, and had only one vehicle, but EV2.0 was not enabled. Will only onboard the vehicle and dimiss onboarding.", &v19, 0xCu);
      }

      [(EVOnboardingController *)self _onboardVehicles:self->_unpairedVehicles];
      [(EVOnboardingController *)self _dismissOnboarding];
    }
  }

  else
  {
    v5 = sub_100798370();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = [(NSArray *)self->_unpairedVehicles count];
      v19 = 138412546;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_proceedFromPrivacyControllerWithSelectedOptIn: %@, will continue onboarding %lu vehicles", &v19, 0x16u);
    }

    [(EVOnboardingController *)self _proceedToNextState];
  }
}

- (void)welcomeViewControllerDidSelectConnect:(id)a3
{
  if ([(EVOnboardingController *)self state]!= 1)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = "[EVOnboardingController welcomeViewControllerDidSelectConnect:]";
      v9 = 2080;
      v10 = "EVOnboardingController.m";
      v11 = 1024;
      v12 = 285;
      v13 = 2080;
      v14 = "self.state == EVOnboardingControllerStateWelcome";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v7, 0x26u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  [(EVOnboardingController *)self _proceedToNextState];
}

- (void)welcomeViewControllerDidDismiss:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:446 onTarget:660 eventValue:0];

  [(EVOnboardingController *)self _dismissOnboarding];
}

- (void)onboardingViewControllerWillMoveFromParentViewController:(id)a3
{
  v4 = a3;
  v5 = [(EVOnboardingController *)self _viewControllerForState:[(EVOnboardingController *)self state]];

  if (v5 != v4)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[EVOnboardingController onboardingViewControllerWillMoveFromParentViewController:]";
      v31 = 2080;
      v32 = "EVOnboardingController.m";
      v33 = 1024;
      v34 = 264;
      v35 = 2080;
      v36 = "viewController == [self _viewControllerForState:self.state]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = [v4 navigationController];
  v7 = [v6 childViewControllers];
  v8 = [v7 lastObject];

  v9 = sub_100798370();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "onboardingViewControllerWillMoveFromParentViewController: %@ to: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_viewControllersByState;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_viewControllersByState objectForKeyedSubscript:v19, v24];

        if (v20 == v8)
        {
          -[EVOnboardingController setState:](self, "setState:", [v19 integerValue]);
        }
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)_onboardVehicles:(id)a3
{
  v34 = a3;
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v34;
    v5 = v4;
    log = v3;
    v32 = v4;
    if (v4)
    {
      if ([v4 count])
      {
        v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v7 = v32;
        v8 = [v7 countByEnumeratingWithState:&v41 objects:buf count:16];
        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = *v42;
        while (1)
        {
          v10 = 0;
          do
          {
            if (*v42 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v41 + 1) + 8 * v10);
            if (v11)
            {
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_14;
              }

              v14 = [v11 performSelector:"accessibilityIdentifier"];
              v15 = v14;
              if (v14 && ![v14 isEqualToString:v13])
              {
                v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];
              }

              else
              {

LABEL_14:
                v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
              }

              goto LABEL_17;
            }

            v16 = @"<nil>";
LABEL_17:

            [v6 addObject:v16];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v17 = [v7 countByEnumeratingWithState:&v41 objects:buf count:16];
          v8 = v17;
          if (!v17)
          {
LABEL_21:

            v18 = [v7 componentsJoinedByString:{@", "}];
            v19 = [NSString stringWithFormat:@"<%p> [%@]", v7, v18];

            goto LABEL_24;
          }
        }
      }

      v19 = [NSString stringWithFormat:@"<%p> (empty)", v5];
LABEL_24:
      v5 = v32;
    }

    else
    {
      v19 = @"<nil>";
    }

    *buf = 138412290;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Onboarding vehicles: %@", buf, 0xCu);

    v3 = log;
  }

  v20 = [v34 copy];
  onboardedVehicles = self->_onboardedVehicles;
  self->_onboardedVehicles = v20;

  self->_onboardedVehicleCount = [v34 count];
  objc_storeStrong(&self->_strongSelf, self);
  objc_initWeak(buf, self);
  v22 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D2C9B8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v40, buf);
  dispatch_after(v22, &_dispatch_main_q, block);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v34;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        v28 = +[VGVirtualGarageService sharedService];
        [v28 virtualGarageOnboardVehicle:v27];
      }

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v24);
  }

  if ([v23 count] == 1)
  {
    v29 = +[VGVirtualGarageService sharedService];
    v30 = [v23 firstObject];
    [v29 virtualGarageSelectVehicle:v30];
  }

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);
}

- (void)_proceedToNextState
{
  v3 = [(EVOnboardingController *)self state];
  v4 = v3;
  if (v3 >= 4)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[EVOnboardingController _proceedToNextState]";
      v17 = 2080;
      v18 = "EVOnboardingController.m";
      v19 = 1024;
      v20 = 223;
      v21 = 2080;
      v22 = "canPresentViewControllerForState";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v8 = sub_100798370();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = &unk_1011E4000;
      if (v4 == -1)
      {
        v10 = @"None";
      }

      else if (v4 == 4)
      {
        v10 = @"Dismissed";
      }

      else
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v16 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
          v17 = 2080;
          v18 = "EVOnboardingController.m";
          v19 = 1024;
          v20 = 51;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v12 = sub_10006D178();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v16 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v10 = @"Unknown";
        v9 = &unk_1011E4000;
      }

      *buf = v9[290];
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Tried to proceed to next state (%@) in EV onboarding, but that was not possible.", buf, 0xCu);
    }
  }

  else
  {
    [(EVOnboardingController *)self setState:v3 + 1];
    v14 = [(EVOnboardingController *)self _viewControllerForState:[(EVOnboardingController *)self state]];
    [UINavigationController pushViewController:"pushViewController:animated:" animated:?];
  }
}

- (void)_cleanUp
{
  currentSingleVehicleOnboardingController = self->_currentSingleVehicleOnboardingController;
  self->_currentSingleVehicleOnboardingController = 0;

  [(EVOnboardingController *)self setState:5];
  viewControllersByState = self->_viewControllersByState;
  self->_viewControllersByState = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;
}

- (void)_dismissOnboarding
{
  if (MapsFeature_IsEnabled_EVRoutingEnhancements() && [(NSArray *)self->_onboardedVehicles count])
  {
    v3 = +[MKMapService sharedService];
    v4 = [NSNumber numberWithUnsignedInteger:self->_onboardedVehicleCount];
    v5 = [v4 stringValue];
    [v3 captureUserAction:2107 onTarget:660 eventValue:v5];
  }

  presentingViewController = self->_presentingViewController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D2CEE0;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  [(UIViewController *)presentingViewController dismissViewControllerAnimated:1 completion:v7];
}

- (id)_viewControllerForState:(int64_t)a3
{
  viewControllersByState = self->_viewControllersByState;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)viewControllersByState objectForKeyedSubscript:v6];

  if (v7)
  {
    goto LABEL_22;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = [[EVOnboardingWelcomeViewController alloc] initWithVehicles:self->_unpairedVehicles delegate:self];
        v9 = self->_viewControllersByState;
        v10 = 1;
        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v8 = [[EVOnboardingPrivacyViewController alloc] initWithDelegate:self];
        v9 = self->_viewControllersByState;
        v10 = 2;
LABEL_20:
        v15 = [NSNumber numberWithInteger:v10];
        [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v15];

LABEL_21:
      }

LABEL_22:
      v16 = self->_viewControllersByState;
      v17 = [NSNumber numberWithInteger:a3];
      v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

      if (!v18)
      {
        v29 = sub_10006D178();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315906;
          v36 = "[EVOnboardingController _viewControllerForState:]";
          v37 = 2080;
          v38 = "EVOnboardingController.m";
          v39 = 1024;
          v40 = 192;
          v41 = 2080;
          v42 = "_viewControllersByState[@(state)]";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v35, 0x26u);
        }

        if (sub_100E03634())
        {
          v30 = sub_10006D178();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = +[NSThread callStackSymbols];
            v35 = 138412290;
            v36 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", &v35, 0xCu);
          }
        }
      }

      v19 = self->_viewControllersByState;
      v20 = [NSNumber numberWithInteger:a3];
      v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
      goto LABEL_24;
    }

LABEL_10:
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v35 = 136315906;
      v36 = "[EVOnboardingController _viewControllerForState:]";
      v37 = 2080;
      v38 = "EVOnboardingController.m";
      v39 = 1024;
      v40 = 170;
      v41 = 2080;
      v42 = "state != EVOnboardingControllerStateNone && state != EVOnboardingControllerStateDismissed";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v35, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v35 = 138412290;
        v36 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v35, 0xCu);
      }
    }

    v8 = sub_100798370();
    if (os_log_type_enabled(&v8->super.super.super.super, OS_LOG_TYPE_FAULT))
    {
      v14 = *(&off_101651A18 + a3);
      v35 = 138412290;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, &v8->super.super.super.super, OS_LOG_TYPE_FAULT, "Tried to get a VC for %@ state", &v35, 0xCu);
    }

    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v8 = [[EVOnboardingVehicleSelectionViewController alloc] initWithVehicles:self->_unpairedVehicles delegate:self];
    v9 = self->_viewControllersByState;
    v10 = 3;
    goto LABEL_20;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v24 = [(EVOnboardingController *)self currentSingleVehicleOnboardingController];
  v25 = [v24 currentViewController];

  if (!v25)
  {
    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v35 = 136315906;
      v36 = "[EVOnboardingController _viewControllerForState:]";
      v37 = 2080;
      v38 = "EVOnboardingController.m";
      v39 = 1024;
      v40 = 183;
      v41 = 2080;
      v42 = "self.currentSingleVehicleOnboardingController.currentViewController";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v35, 0x26u);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        v35 = 138412290;
        v36 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", &v35, 0xCu);
      }
    }
  }

  v26 = [(EVOnboardingController *)self currentSingleVehicleOnboardingController];
  v27 = [v26 currentViewController];

  if (v27)
  {
    v20 = [(EVOnboardingController *)self currentSingleVehicleOnboardingController];
    v21 = [v20 currentViewController];
LABEL_24:
    v22 = v21;
    goto LABEL_25;
  }

  v20 = sub_100798370();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v28 = [(EVOnboardingController *)self currentSingleVehicleOnboardingController];
    v35 = 138412290;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Tried to get a single vehicle onboarding VC, but failed. Current onboarding controller: %@", &v35, 0xCu);
  }

  v22 = 0;
LABEL_25:

  return v22;
}

- (void)presentInViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 presentedViewController];

  if (v10)
  {
    do
    {
      v11 = [v8 presentedViewController];

      v12 = [v11 presentedViewController];

      v8 = v11;
    }

    while (v12);
    if (v11)
    {
LABEL_4:
      if (self->_state)
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v28 = 136315906;
          v29 = "[EVOnboardingController presentInViewController:animated:completion:]";
          v30 = 2080;
          v31 = "EVOnboardingController.m";
          v32 = 1024;
          v33 = 146;
          v34 = 2080;
          v35 = "_state == EVOnboardingControllerStateNone";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v28, 0x26u);
        }

        if (sub_100E03634())
        {
          v21 = sub_10006D178();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = +[NSThread callStackSymbols];
            v28 = 138412290;
            v29 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
          }
        }

        if (self->_state)
        {
          v13 = sub_100798370();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          state = self->_state;
          if (state >= 6)
          {
            v25 = sub_10006D178();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v28 = 136315650;
              v29 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
              v30 = 2080;
              v31 = "EVOnboardingController.m";
              v32 = 1024;
              v33 = 51;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v28, 0x1Cu);
            }

            if (sub_100E03634())
            {
              v26 = sub_10006D178();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = +[NSThread callStackSymbols];
                v28 = 138412290;
                v29 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
              }
            }

            v24 = @"Unknown";
          }

          else
          {
            v24 = *(&off_101651A18 + state);
          }

          v28 = 138412290;
          v29 = v24;
          v17 = "Tried to present welcome onboarding VC, but state of the controller was: %@.";
          v18 = v13;
          v19 = 12;
          goto LABEL_9;
        }
      }

      objc_storeStrong(&self->_presentingViewController, v11);
      [(EVOnboardingController *)self setState:1];
      v13 = [(EVOnboardingController *)self _viewControllerForState:self->_state];
      v14 = [[OBNavigationController alloc] initWithRootViewController:v13];
      [(UINavigationController *)v14 setModalPresentationStyle:2];
      navigationController = self->_navigationController;
      self->_navigationController = v14;
      v16 = v14;

      [v11 presentViewController:v16 animated:v6 completion:v9];
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v13 = sub_100798370();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v28) = 0;
    v17 = "Tried to present on a nil presenting VC.";
    v18 = v13;
    v19 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, &v28, v19);
  }

LABEL_10:
}

- (BOOL)_validateStateTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  v4 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v4 = a3 - a4;
  }

  v6 = a3 == 2 && a4 == 4;
  v7 = v4 == 1 || v6;
  return a4 == 5 || v7;
}

- (void)setState:(int64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    if ([(EVOnboardingController *)self _validateStateTransitionFromState:state toState:a3])
    {
      v6 = sub_100798370();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = self->_state;
        if (v7 >= 6)
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
            v31 = 2080;
            v32 = "EVOnboardingController.m";
            v33 = 1024;
            v34 = 51;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v16 = sub_10006D178();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = +[NSThread callStackSymbols];
              v29 = 138412290;
              v30 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
            }
          }

          v8 = @"Unknown";
        }

        else
        {
          v8 = *(&off_101651A18 + v7);
        }

        if (a3 >= 6)
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
            v31 = 2080;
            v32 = "EVOnboardingController.m";
            v33 = 1024;
            v34 = 51;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v24 = sub_10006D178();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = +[NSThread callStackSymbols];
              v29 = 138412290;
              v30 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
            }
          }

          v18 = @"Unknown";
        }

        else
        {
          v18 = *(&off_101651A18 + a3);
        }

        v29 = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Setting state from: %@, to: %@", &v29, 0x16u);
      }

      self->_state = a3;
    }

    else
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315650;
        v30 = "[EVOnboardingController setState:]";
        v31 = 2080;
        v32 = "EVOnboardingController.m";
        v33 = 1024;
        v34 = 108;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v29 = 138412290;
          v30 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
        }
      }

      v12 = sub_100798370();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_state;
        if (v13 >= 6)
        {
          v19 = sub_10006D178();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
            v31 = 2080;
            v32 = "EVOnboardingController.m";
            v33 = 1024;
            v34 = 51;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v20 = sub_10006D178();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = +[NSThread callStackSymbols];
              v29 = 138412290;
              v30 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
            }
          }

          v14 = @"Unknown";
        }

        else
        {
          v14 = *(&off_101651A18 + v13);
        }

        if (a3 >= 6)
        {
          v26 = sub_10006D178();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromEVOnboardingControllerState(EVOnboardingControllerState)";
            v31 = 2080;
            v32 = "EVOnboardingController.m";
            v33 = 1024;
            v34 = 51;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v27 = sub_10006D178();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = +[NSThread callStackSymbols];
              v29 = 138412290;
              v30 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
            }
          }

          v22 = @"Unknown";
        }

        else
        {
          v22 = *(&off_101651A18 + a3);
        }

        v29 = 138412546;
        v30 = v14;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Tried to set state from: %@, to: %@, which is not supported", &v29, 0x16u);
      }
    }
  }
}

- (EVOnboardingController)initWithUnpairedVehicles:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = EVOnboardingController;
  v6 = [(EVOnboardingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    v8 = +[NSMutableDictionary dictionary];
    viewControllersByState = v7->_viewControllersByState;
    v7->_viewControllersByState = v8;

    objc_storeStrong(&v7->_unpairedVehicles, a3);
    v10 = +[VGVirtualGarageService sharedService];
    [v10 registerObserver:v7];
  }

  return v7;
}

@end