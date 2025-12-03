@interface SingleVehicleOnboardingController
- (BOOL)_validateStateTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (SingleVehicleOnboardingController)initWithUnpairedVehicle:(id)vehicle isLastUnpairedVehicle:(BOOL)unpairedVehicle isSoleUnpairedVehicle:(BOOL)soleUnpairedVehicle navigationController:(id)controller delegate:(id)delegate;
- (id)_viewControllerForState:(int64_t)state;
- (void)_cleanUp;
- (void)_proceedToNextState;
- (void)didCancelConfiguringLPRForVehicle:(id)vehicle;
- (void)didFinishConfiguringLPRForVehicle:(id)vehicle;
- (void)networksOfferViewControllerDidSelectSetupLater:(id)later;
- (void)networksOfferViewControllerDidSelectSetupNow:(id)now;
- (void)networksSelectionViewController:(id)controller didSelectNetworks:(id)networks forVehicle:(id)vehicle;
- (void)onboardingViewControllerWillMoveFromParentViewController:(id)controller;
- (void)setState:(int64_t)state;
- (void)vehicleAddedViewControllerDidSelectDone:(id)done;
- (void)vehicleAddedViewControllerDidSelectNext:(id)next;
@end

@implementation SingleVehicleOnboardingController

- (void)didFinishConfiguringLPRForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    displayName = [(VGVehicle *)self->_vehicle displayName];
    v8 = 138412290;
    v9 = displayName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didFinishConfiguringLPRForVehicle: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained onboardingController:self didFinishSettingUpLPRForVehicle:vehicleCopy];

  [(SingleVehicleOnboardingController *)self _cleanUp];
}

- (void)didCancelConfiguringLPRForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    displayName = [(VGVehicle *)self->_vehicle displayName];
    v8 = 138412290;
    v9 = displayName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didCancelConfiguringLPRForVehicle: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained onboardingController:self didFinishSettingUpLPRForVehicle:vehicleCopy];

  [(SingleVehicleOnboardingController *)self _cleanUp];
}

- (void)vehicleAddedViewControllerDidSelectNext:(id)next
{
  if ([(SingleVehicleOnboardingController *)self state]!= 3)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[SingleVehicleOnboardingController vehicleAddedViewControllerDidSelectNext:]";
      v18 = 2080;
      v19 = "SingleVehicleOnboardingController.m";
      v20 = 1024;
      v21 = 263;
      v22 = 2080;
      v23 = "self.state == SingleVehicleOnboardingControllerStateVehicleAdded";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained onboardingController:self didFinishOnboardingVehicle:self->_vehicle willProceedSettingUpLPR:self->_isLPREnabled];

  isLPREnabled = self->_isLPREnabled;
  v6 = sub_100798370();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isLPREnabled)
  {
    if (v7)
    {
      displayName = [(VGVehicle *)self->_vehicle displayName];
      *buf = 138412290;
      v17 = displayName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "vehicleAddedViewControllerDidSelectNext: LPR is enabled, did onboarding in VGService and will continue setting up vehicle: %@", buf, 0xCu);
    }

    [(SingleVehicleOnboardingController *)self setState:4];
    v9 = [(SingleVehicleOnboardingController *)self _viewControllerForState:4];
    navigationController = self->_navigationController;
    v15 = v9;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    [(UINavigationController *)navigationController setViewControllers:v11 animated:1];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "vehicleAddedViewControllerDidSelectNext: LPR is not enabled, will finish onboarding and continue with next vehicle", buf, 2u);
    }

    [(SingleVehicleOnboardingController *)self _cleanUp];
  }
}

- (void)vehicleAddedViewControllerDidSelectDone:(id)done
{
  if ([(SingleVehicleOnboardingController *)self state]!= 3)
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "[SingleVehicleOnboardingController vehicleAddedViewControllerDidSelectDone:]";
      v16 = 2080;
      v17 = "SingleVehicleOnboardingController.m";
      v18 = 1024;
      v19 = 252;
      v20 = 2080;
      v21 = "self.state == SingleVehicleOnboardingControllerStateVehicleAdded";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }
  }

  if (self->_isLPREnabled)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "[SingleVehicleOnboardingController vehicleAddedViewControllerDidSelectDone:]";
      v16 = 2080;
      v17 = "SingleVehicleOnboardingController.m";
      v18 = 1024;
      v19 = 253;
      v20 = 2080;
      v21 = "!_isLPREnabled";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }
  }

  v4 = sub_100798370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    displayName = [(VGVehicle *)self->_vehicle displayName];
    v14 = 138412290;
    v15 = displayName;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "vehicleAddedViewControllerDidSelectDone: LPR is not enabled, will finish onboarding for vehicle: %@", &v14, 0xCu);
  }

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:41 onTarget:121 eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained onboardingController:self didFinishOnboardingVehicle:self->_vehicle willProceedSettingUpLPR:self->_isLPREnabled];

  [(SingleVehicleOnboardingController *)self _cleanUp];
}

- (void)networksSelectionViewController:(id)controller didSelectNetworks:(id)networks forVehicle:(id)vehicle
{
  networksCopy = networks;
  vehicleCopy = vehicle;
  if ([(SingleVehicleOnboardingController *)self state]!= 2)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v41 = "[SingleVehicleOnboardingController networksSelectionViewController:didSelectNetworks:forVehicle:]";
      v42 = 2080;
      v43 = "SingleVehicleOnboardingController.m";
      v44 = 1024;
      v45 = 240;
      v46 = 2080;
      v47 = "self.state == SingleVehicleOnboardingControllerStateNetworksSelection";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v41 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = sub_100798370();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = networksCopy;
    v11 = v10;
    if (v10)
    {
      if ([v10 count])
      {
        v32 = v9;
        v33 = vehicleCopy;
        selfCopy = self;
        v35 = networksCopy;
        v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v31 = v11;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v36 objects:buf count:16];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14;
        v16 = *v37;
        while (1)
        {
          v17 = 0;
          do
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v36 + 1) + 8 * v17);
            if (v18)
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_15;
              }

              v21 = [v18 performSelector:"accessibilityIdentifier"];
              v22 = v21;
              if (v21 && ![v21 isEqualToString:v20])
              {
                v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
              }

              else
              {

LABEL_15:
                v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
              }

              goto LABEL_18;
            }

            v23 = @"<nil>";
LABEL_18:

            [v12 addObject:v23];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v24 = [v13 countByEnumeratingWithState:&v36 objects:buf count:16];
          v15 = v24;
          if (!v24)
          {
LABEL_22:

            v25 = [v13 componentsJoinedByString:{@", "}];
            v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

            self = selfCopy;
            networksCopy = v35;
            v9 = v32;
            vehicleCopy = v33;
            v11 = v31;
            goto LABEL_25;
          }
        }
      }

      v26 = [NSString stringWithFormat:@"<%p> (empty)", v11];
    }

    else
    {
      v26 = @"<nil>";
    }

LABEL_25:

    *buf = 138412546;
    v41 = v26;
    v42 = 2112;
    v43 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "networksSelectionViewController:didSelectNetworks: %@ forVehicle: %@. will call into VGService", buf, 0x16u);
  }

  v27 = [[NSSet alloc] initWithArray:networksCopy];
  [vehicleCopy setPreferredChargingNetworks:v27];

  [vehicleCopy setUsesPreferredNetworksForRouting:{objc_msgSend(networksCopy, "count") != 0}];
  [(SingleVehicleOnboardingController *)self _proceedToNextState];
}

- (void)networksOfferViewControllerDidSelectSetupLater:(id)later
{
  if ([(SingleVehicleOnboardingController *)self state]!= 1)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[SingleVehicleOnboardingController networksOfferViewControllerDidSelectSetupLater:]";
      v11 = 2080;
      v12 = "SingleVehicleOnboardingController.m";
      v13 = 1024;
      v14 = 228;
      v15 = 2080;
      v16 = "self.state == SingleVehicleOnboardingControllerStateNetworksOffer";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  v4 = sub_100798370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "networksOfferViewControllerDidSelectSetupLater:", &v9, 2u);
  }

  [(SingleVehicleOnboardingController *)self setState:3];
  v5 = [(SingleVehicleOnboardingController *)self _viewControllerForState:[(SingleVehicleOnboardingController *)self state]];
  [(UINavigationController *)self->_navigationController pushViewController:v5 animated:1];
}

- (void)networksOfferViewControllerDidSelectSetupNow:(id)now
{
  if ([(SingleVehicleOnboardingController *)self state]!= 1)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[SingleVehicleOnboardingController networksOfferViewControllerDidSelectSetupNow:]";
      v10 = 2080;
      v11 = "SingleVehicleOnboardingController.m";
      v12 = 1024;
      v13 = 221;
      v14 = 2080;
      v15 = "self.state == SingleVehicleOnboardingControllerStateNetworksOffer";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v8, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }

  v4 = sub_100798370();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "networksOfferViewControllerDidSelectSetupNow:", &v8, 2u);
  }

  [(SingleVehicleOnboardingController *)self _proceedToNextState];
}

- (void)onboardingViewControllerWillMoveFromParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SingleVehicleOnboardingController *)self _viewControllerForState:[(SingleVehicleOnboardingController *)self state]];

  if (v5 != controllerCopy)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[SingleVehicleOnboardingController onboardingViewControllerWillMoveFromParentViewController:]";
      v31 = 2080;
      v32 = "SingleVehicleOnboardingController.m";
      v33 = 1024;
      v34 = 206;
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

  navigationController = [controllerCopy navigationController];
  childViewControllers = [navigationController childViewControllers];
  lastObject = [childViewControllers lastObject];

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

        if (v20 == lastObject)
        {
          -[SingleVehicleOnboardingController setState:](self, "setState:", [v19 integerValue]);
        }
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)_cleanUp
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    vehicle = self->_vehicle;
    v8 = 138412290;
    v9 = vehicle;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SingleVehicleOnboardingController _cleanUp with vehicle: %@", &v8, 0xCu);
  }

  [(SingleVehicleOnboardingController *)self setState:5];
  viewControllersByState = self->_viewControllersByState;
  self->_viewControllersByState = 0;

  navigationController = self->_navigationController;
  self->_navigationController = 0;

  v7 = self->_vehicle;
  self->_vehicle = 0;
}

- (id)_viewControllerForState:(int64_t)state
{
  viewControllersByState = self->_viewControllersByState;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)viewControllersByState objectForKeyedSubscript:v6];

  if (!v7)
  {
    if (state > 2)
    {
      if (state == 3)
      {
        if (self->_isLPREnabled)
        {
          v15 = 0;
        }

        else
        {
          v15 = self->_isSoleUnpairedVehicle || self->_isLastUnpairedVehicle;
        }

        combinedDisplayName = [[EVOnboardingVehicleAddedViewController alloc] initWithVehicle:self->_vehicle isLastPresentedController:v15 delegate:self];
        v9 = self->_viewControllersByState;
        v10 = 3;
        goto LABEL_29;
      }

      if (state == 4)
      {
        combinedDisplayName = [[LPROnboardingPageViewController alloc] initWithScenario:2 vehicle:self->_vehicle delegate:self];
        v9 = self->_viewControllersByState;
        v10 = 4;
        goto LABEL_29;
      }

      if (state != 5)
      {
        goto LABEL_31;
      }
    }

    else if (state)
    {
      if (state == 1)
      {
        if (self->_isSoleUnpairedVehicle)
        {
          combinedDisplayName = 0;
        }

        else
        {
          combinedDisplayName = [(VGVehicle *)self->_vehicle combinedDisplayName];
        }

        v16 = [[EVOnboardingNetworksOfferViewController alloc] initWithDelegate:self vehicleName:combinedDisplayName];
        v17 = self->_viewControllersByState;
        v18 = [NSNumber numberWithInteger:1];
        [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

        goto LABEL_30;
      }

      if (state != 2)
      {
        goto LABEL_31;
      }

      combinedDisplayName = [[EVOnboardingNetworksSelectionViewController alloc] initWithVehicle:self->_vehicle delegate:self];
      v9 = self->_viewControllersByState;
      v10 = 2;
LABEL_29:
      v19 = [NSNumber numberWithInteger:v10];
      [(NSMutableDictionary *)v9 setObject:combinedDisplayName forKeyedSubscript:v19];

LABEL_30:
      goto LABEL_31;
    }

    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315906;
      v31 = "[SingleVehicleOnboardingController _viewControllerForState:]";
      v32 = 2080;
      v33 = "SingleVehicleOnboardingController.m";
      v34 = 1024;
      v35 = 160;
      v36 = 2080;
      v37 = "state != SingleVehicleOnboardingControllerStateNone && state != SingleVehicleOnboardingControllerStateDismissed";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v30, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v30 = 138412290;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v30, 0xCu);
      }
    }

    combinedDisplayName = sub_100798370();
    if (os_log_type_enabled(&combinedDisplayName->super.super.super.super, OS_LOG_TYPE_FAULT))
    {
      v14 = off_10165CBF8[state];
      v30 = 138412290;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, &combinedDisplayName->super.super.super.super, OS_LOG_TYPE_FAULT, "Tried to get a VC for %@ state", &v30, 0xCu);
    }

    goto LABEL_30;
  }

LABEL_31:
  v20 = self->_viewControllersByState;
  v21 = [NSNumber numberWithInteger:state];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315906;
      v31 = "[SingleVehicleOnboardingController _viewControllerForState:]";
      v32 = 2080;
      v33 = "SingleVehicleOnboardingController.m";
      v34 = 1024;
      v35 = 183;
      v36 = 2080;
      v37 = "_viewControllersByState[@(state)]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v30, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        v30 = 138412290;
        v31 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", &v30, 0xCu);
      }
    }
  }

  v23 = self->_viewControllersByState;
  v24 = [NSNumber numberWithInteger:state];
  v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:v24];

  return v25;
}

- (void)_proceedToNextState
{
  state = [(SingleVehicleOnboardingController *)self state];
  v4 = state;
  if (state >= 4)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[SingleVehicleOnboardingController _proceedToNextState]";
      v17 = 2080;
      v18 = "SingleVehicleOnboardingController.m";
      v19 = 1024;
      v20 = 143;
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
          v16 = "NSString *NSStringFromSingleVehicleOnboardingControllerState(SingleVehicleOnboardingControllerState)";
          v17 = 2080;
          v18 = "SingleVehicleOnboardingController.m";
          v19 = 1024;
          v20 = 55;
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
    [(SingleVehicleOnboardingController *)self setState:state + 1];
    v14 = [(SingleVehicleOnboardingController *)self _viewControllerForState:[(SingleVehicleOnboardingController *)self state]];
    [UINavigationController pushViewController:"pushViewController:animated:" animated:?];
  }
}

- (BOOL)_validateStateTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v4 = toState - state;
  if (toState - state < 0)
  {
    v4 = state - toState;
  }

  result = 1;
  if (toState != 5 && v4 != 1 && (state != 1 || toState != 3))
  {
    return state == 3 && toState == 1;
  }

  return result;
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    if ([(SingleVehicleOnboardingController *)self _validateStateTransitionFromState:state toState:state])
    {
      v6 = sub_100798370();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = self->_state;
        if (v7 >= 6)
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromSingleVehicleOnboardingControllerState(SingleVehicleOnboardingControllerState)";
            v31 = 2080;
            v32 = "SingleVehicleOnboardingController.m";
            v33 = 1024;
            v34 = 55;
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
          v8 = off_10165CBF8[v7];
        }

        if (state >= 6)
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromSingleVehicleOnboardingControllerState(SingleVehicleOnboardingControllerState)";
            v31 = 2080;
            v32 = "SingleVehicleOnboardingController.m";
            v33 = 1024;
            v34 = 55;
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
          v18 = off_10165CBF8[state];
        }

        v29 = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting state from: %@, to: %@", &v29, 0x16u);
      }

      self->_state = state;
    }

    else
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315650;
        v30 = "[SingleVehicleOnboardingController setState:]";
        v31 = 2080;
        v32 = "SingleVehicleOnboardingController.m";
        v33 = 1024;
        v34 = 109;
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
            v30 = "NSString *NSStringFromSingleVehicleOnboardingControllerState(SingleVehicleOnboardingControllerState)";
            v31 = 2080;
            v32 = "SingleVehicleOnboardingController.m";
            v33 = 1024;
            v34 = 55;
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
          v14 = off_10165CBF8[v13];
        }

        if (state >= 6)
        {
          v26 = sub_10006D178();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromSingleVehicleOnboardingControllerState(SingleVehicleOnboardingControllerState)";
            v31 = 2080;
            v32 = "SingleVehicleOnboardingController.m";
            v33 = 1024;
            v34 = 55;
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
          v22 = off_10165CBF8[state];
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

- (SingleVehicleOnboardingController)initWithUnpairedVehicle:(id)vehicle isLastUnpairedVehicle:(BOOL)unpairedVehicle isSoleUnpairedVehicle:(BOOL)soleUnpairedVehicle navigationController:(id)controller delegate:(id)delegate
{
  vehicleCopy = vehicle;
  controllerCopy = controller;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = SingleVehicleOnboardingController;
  v16 = [(SingleVehicleOnboardingController *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_vehicle, vehicle);
    v17->_isLastUnpairedVehicle = unpairedVehicle;
    v17->_isSoleUnpairedVehicle = soleUnpairedVehicle;
    objc_storeStrong(&v17->_navigationController, controller);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v17->_isLPREnabled = MapsFeature_IsEnabled_Alberta();
    v17->_state = 1;
    v18 = objc_opt_new();
    viewControllersByState = v17->_viewControllersByState;
    v17->_viewControllersByState = v18;
  }

  return v17;
}

@end