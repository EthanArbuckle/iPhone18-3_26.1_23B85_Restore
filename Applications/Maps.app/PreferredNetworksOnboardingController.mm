@interface PreferredNetworksOnboardingController
- (BOOL)_validateStateTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (PreferredNetworksOnboardingController)initWithVehicle:(id)vehicle;
- (id)_viewControllerForState:(int64_t)state;
- (void)_dismissOnboarding;
- (void)_proceedToNextState;
- (void)networksOfferViewControllerDidSelectSetupLater:(id)later;
- (void)networksOfferViewControllerDidSelectSetupNow:(id)now;
- (void)networksSelectionViewController:(id)controller didSelectNetworks:(id)networks forVehicle:(id)vehicle;
- (void)onboardingViewControllerWillMoveFromParentViewController:(id)controller;
- (void)presentInViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setState:(int64_t)state;
@end

@implementation PreferredNetworksOnboardingController

- (void)networksSelectionViewController:(id)controller didSelectNetworks:(id)networks forVehicle:(id)vehicle
{
  networksCopy = networks;
  vehicleCopy = vehicle;
  if ([(PreferredNetworksOnboardingController *)self state]!= 2)
  {
    v74 = sub_10006D178();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v102 = "[PreferredNetworksOnboardingController networksSelectionViewController:didSelectNetworks:forVehicle:]";
      v103 = 2080;
      v104 = "PreferredNetworksOnboardingController.m";
      v105 = 1024;
      LODWORD(v106[0]) = 212;
      WORD2(v106[0]) = 2080;
      *(v106 + 6) = "self.state == PreferredNetworksOnboardingControllerStateNetworksSelection";
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v75 = sub_10006D178();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v102 = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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
        v87 = v9;
        selfCopy = self;
        v92 = vehicleCopy;
        v95 = networksCopy;
        v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v84 = v11;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14;
        v16 = *v98;
        while (1)
        {
          v17 = 0;
          do
          {
            if (*v98 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v97 + 1) + 8 * v17);
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
          v24 = [v13 countByEnumeratingWithState:&v97 objects:buf count:16];
          v15 = v24;
          if (!v24)
          {
LABEL_22:

            v25 = [v13 componentsJoinedByString:{@", "}];
            v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

            vehicleCopy = v92;
            networksCopy = v95;
            v9 = v87;
            self = selfCopy;
            v11 = v84;
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
    v102 = v26;
    v103 = 2112;
    v104 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "networksSelectionViewController:didSelectNetworks: %@ forVehicle: %@. will call into VGService", buf, 0x16u);
  }

  preferredChargingNetworks = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
  v28 = preferredChargingNetworks;
  if (preferredChargingNetworks)
  {
    v29 = preferredChargingNetworks;
  }

  else
  {
    v29 = +[NSSet set];
  }

  v30 = v29;

  v31 = [v30 setByAddingObjectsFromArray:networksCopy];
  v32 = sub_100022C48();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    displayName = [(VGVehicle *)self->_vehicle displayName];
    allObjects = [v30 allObjects];
    v35 = allObjects;
    v96 = networksCopy;
    if (allObjects)
    {
      if ([allObjects count])
      {
        v80 = displayName;
        v81 = v32;
        v85 = v30;
        selfCopy2 = self;
        v93 = vehicleCopy;
        v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v35 count]);
        v37 = v35;
        v38 = v36;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v78 = v37;
        v39 = v37;
        v40 = [v39 countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v40)
        {
          goto LABEL_49;
        }

        v41 = v40;
        v42 = *v98;
        while (1)
        {
          v43 = 0;
          do
          {
            if (*v98 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v97 + 1) + 8 * v43);
            if (v44)
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_42;
              }

              v47 = [v44 performSelector:"accessibilityIdentifier"];
              v48 = v47;
              if (v47 && ![v47 isEqualToString:v46])
              {
                v49 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];
              }

              else
              {

LABEL_42:
                v49 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
              }

              goto LABEL_45;
            }

            v49 = @"<nil>";
LABEL_45:

            [v38 addObject:v49];
            v43 = v43 + 1;
          }

          while (v41 != v43);
          v50 = [v39 countByEnumeratingWithState:&v97 objects:buf count:16];
          v41 = v50;
          if (!v50)
          {
LABEL_49:

            v51 = [v39 componentsJoinedByString:{@", "}];
            v52 = [NSString stringWithFormat:@"<%p> [%@]", v39, v51];

            self = selfCopy2;
            vehicleCopy = v93;
            v30 = v85;
            displayName = v80;
            v32 = v81;
            v35 = v78;
            goto LABEL_52;
          }
        }
      }

      v52 = [NSString stringWithFormat:@"<%p> (empty)", v35];
    }

    else
    {
      v52 = @"<nil>";
    }

LABEL_52:

    v53 = v52;
    allObjects2 = [v31 allObjects];
    v88 = v53;
    if (allObjects2)
    {
      v55 = allObjects2;
      if ([allObjects2 count])
      {
        v79 = v35;
        v82 = v32;
        v83 = v31;
        v86 = v30;
        selfCopy3 = self;
        v94 = vehicleCopy;
        v56 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v55 count]);
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v77 = v55;
        v57 = v55;
        v58 = [v57 countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v58)
        {
          goto LABEL_71;
        }

        v59 = v58;
        v60 = *v98;
        while (1)
        {
          v61 = 0;
          do
          {
            if (*v98 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v97 + 1) + 8 * v61);
            if (v62)
            {
              v63 = objc_opt_class();
              v64 = NSStringFromClass(v63);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_64;
              }

              v65 = [v62 performSelector:"accessibilityIdentifier"];
              v66 = v65;
              if (v65 && ![v65 isEqualToString:v64])
              {
                v67 = [NSString stringWithFormat:@"%@<%p, %@>", v64, v62, v66];
              }

              else
              {

LABEL_64:
                v67 = [NSString stringWithFormat:@"%@<%p>", v64, v62];
              }

              goto LABEL_67;
            }

            v67 = @"<nil>";
LABEL_67:

            [v56 addObject:v67];
            v61 = v61 + 1;
          }

          while (v59 != v61);
          v68 = [v57 countByEnumeratingWithState:&v97 objects:buf count:16];
          v59 = v68;
          if (!v68)
          {
LABEL_71:

            v69 = [v57 componentsJoinedByString:{@", "}];
            v70 = [NSString stringWithFormat:@"<%p> [%@]", v57, v69];

            self = selfCopy3;
            v71 = v94;
            v31 = v83;
            v30 = v86;
            v32 = v82;
            allObjects2 = v77;
            v35 = v79;
            goto LABEL_74;
          }
        }
      }

      v71 = vehicleCopy;
      v70 = [NSString stringWithFormat:@"<%p> (empty)", v55];
      allObjects2 = v55;
    }

    else
    {
      v71 = vehicleCopy;
      v70 = @"<nil>";
    }

LABEL_74:
    v72 = allObjects2;

    *buf = 138412802;
    v102 = displayName;
    v103 = 2112;
    v104 = v88;
    v105 = 2112;
    v106[0] = v70;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "networksSelectionViewController will update vehicle: %@ from networks: %@ to networks: %@)", buf, 0x20u);

    vehicleCopy = v71;
    networksCopy = v96;
  }

  [(VGVehicle *)self->_vehicle setPreferredChargingNetworks:v31];
  -[VGVehicle setUsesPreferredNetworksForRouting:](self->_vehicle, "setUsesPreferredNetworksForRouting:", [v31 count] != 0);
  v73 = +[VGVirtualGarageService sharedService];
  [v73 virtualGarageSaveVehicle:self->_vehicle];

  [(PreferredNetworksOnboardingController *)self _dismissOnboarding];
}

- (void)networksOfferViewControllerDidSelectSetupLater:(id)later
{
  if ([(PreferredNetworksOnboardingController *)self state]!= 1)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[PreferredNetworksOnboardingController networksOfferViewControllerDidSelectSetupLater:]";
      v10 = 2080;
      v11 = "PreferredNetworksOnboardingController.m";
      v12 = 1024;
      v13 = 203;
      v14 = 2080;
      v15 = "self.state == PreferredNetworksOnboardingControllerStateNetworksOffer";
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "networksOfferViewControllerDidSelectSetupLater:", &v8, 2u);
  }

  [(PreferredNetworksOnboardingController *)self _dismissOnboarding];
}

- (void)networksOfferViewControllerDidSelectSetupNow:(id)now
{
  if ([(PreferredNetworksOnboardingController *)self state]!= 1)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[PreferredNetworksOnboardingController networksOfferViewControllerDidSelectSetupNow:]";
      v10 = 2080;
      v11 = "PreferredNetworksOnboardingController.m";
      v12 = 1024;
      v13 = 196;
      v14 = 2080;
      v15 = "self.state == PreferredNetworksOnboardingControllerStateNetworksOffer";
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

  [(PreferredNetworksOnboardingController *)self _proceedToNextState];
}

- (void)_proceedToNextState
{
  state = [(PreferredNetworksOnboardingController *)self state];
  v4 = state + 1;
  v5 = sub_100798370();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(PreferredNetworksOnboardingController *)selfCopy performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
  v12 = selfCopy;
  if (v4 >= 4)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
      v27 = 2080;
      v28 = "PreferredNetworksOnboardingController.m";
      v29 = 1024;
      LODWORD(v30[0]) = 41;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v13 = @"Unknown";
  }

  else
  {
    v13 = *(&off_1016284C8 + v4);
  }

  *buf = 138543874;
  v26 = v12;
  v27 = 2080;
  v28 = "[PreferredNetworksOnboardingController _proceedToNextState]";
  v29 = 2114;
  v30[0] = v13;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s, nextState: %{public}@", buf, 0x20u);

LABEL_20:
  if (state >= 2)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[PreferredNetworksOnboardingController _proceedToNextState]";
      v27 = 2080;
      v28 = "PreferredNetworksOnboardingController.m";
      v29 = 1024;
      LODWORD(v30[0]) = 181;
      WORD2(v30[0]) = 2080;
      *(v30 + 6) = "canPresentViewControllerForState";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v17 = sub_100798370();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      if (state == -1)
      {
        v21 = @"None";
      }

      else if (state == 2)
      {
        v21 = @"Dismissed";
      }

      else
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v26 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
          v27 = 2080;
          v28 = "PreferredNetworksOnboardingController.m";
          v29 = 1024;
          LODWORD(v30[0]) = 41;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v26 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v21 = @"Unknown";
      }

      *buf = 138412290;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Tried to proceed to next state (%@) in preferred networks onboarding, but that was not possible.", buf, 0xCu);
    }
  }

  else
  {
    [(PreferredNetworksOnboardingController *)self setState:v4];
    v17 = [(PreferredNetworksOnboardingController *)self _viewControllerForState:[(PreferredNetworksOnboardingController *)self state]];
    [(UINavigationController *)self->_navigationController pushViewController:v17 animated:1];
  }
}

- (void)_dismissOnboarding
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(PreferredNetworksOnboardingController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2080;
    v15 = "[PreferredNetworksOnboardingController _dismissOnboarding]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s", buf, 0x16u);
  }

  presentingViewController = self->_presentingViewController;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10075F148;
  v11[3] = &unk_101661B18;
  v11[4] = self;
  [(UIViewController *)presentingViewController dismissViewControllerAnimated:1 completion:v11];
}

- (id)_viewControllerForState:(int64_t)state
{
  viewControllersByState = self->_viewControllersByState;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)viewControllersByState objectForKeyedSubscript:v6];

  if (!v7)
  {
    if (state > 1)
    {
      if (state == 2)
      {
        v8 = [[EVOnboardingNetworksSelectionViewController alloc] initWithVehicle:self->_vehicle delegate:self];
        v9 = self->_viewControllersByState;
        v10 = 2;
LABEL_17:
        v15 = [NSNumber numberWithInteger:v10];
        [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v15];

LABEL_18:
        goto LABEL_19;
      }

      if (state != 3)
      {
        goto LABEL_19;
      }
    }

    else if (state)
    {
      if (state != 1)
      {
        goto LABEL_19;
      }

      v8 = [[EVOnboardingNetworksOfferViewController alloc] initWithDelegate:self vehicleName:0];
      v9 = self->_viewControllersByState;
      v10 = 1;
      goto LABEL_17;
    }

    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315906;
      v27 = "[PreferredNetworksOnboardingController _viewControllerForState:]";
      v28 = 2080;
      v29 = "PreferredNetworksOnboardingController.m";
      v30 = 1024;
      v31 = 150;
      v32 = 2080;
      v33 = "state != PreferredNetworksOnboardingControllerStateNone && state != PreferredNetworksOnboardingControllerStateDismissed";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v26, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v26 = 138412290;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
      }
    }

    v8 = sub_100798370();
    if (os_log_type_enabled(&v8->super.super.super.super, OS_LOG_TYPE_FAULT))
    {
      v14 = *(&off_1016284C8 + state);
      v26 = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, &v8->super.super.super.super, OS_LOG_TYPE_FAULT, "Tried to get a VC for %@ state", &v26, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:
  v16 = self->_viewControllersByState;
  v17 = [NSNumber numberWithInteger:state];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315906;
      v27 = "[PreferredNetworksOnboardingController _viewControllerForState:]";
      v28 = 2080;
      v29 = "PreferredNetworksOnboardingController.m";
      v30 = 1024;
      v31 = 162;
      v32 = 2080;
      v33 = "_viewControllersByState[@(state)]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v26, 0x26u);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        v26 = 138412290;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
      }
    }
  }

  v19 = self->_viewControllersByState;
  v20 = [NSNumber numberWithInteger:state];
  v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];

  return v21;
}

- (void)presentInViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  topMostPresentedViewController = [controller topMostPresentedViewController];
  if (topMostPresentedViewController)
  {
    if (self->_state)
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315906;
        v26 = "[PreferredNetworksOnboardingController presentInViewController:animated:completion:]";
        v27 = 2080;
        v28 = "PreferredNetworksOnboardingController.m";
        v29 = 1024;
        v30 = 125;
        v31 = 2080;
        v32 = "_state == PreferredNetworksOnboardingControllerStateNone";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v25, 0x26u);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v25 = 138412290;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
        }
      }

      if (self->_state)
      {
        v10 = sub_100798370();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        state = self->_state;
        if (state >= 4)
        {
          v22 = sub_10006D178();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v25 = 136315650;
            v26 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
            v27 = 2080;
            v28 = "PreferredNetworksOnboardingController.m";
            v29 = 1024;
            v30 = 41;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v25, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v23 = sub_10006D178();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = +[NSThread callStackSymbols];
              v25 = 138412290;
              v26 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
            }
          }

          v21 = @"Unknown";
        }

        else
        {
          v21 = *(&off_1016284C8 + state);
        }

        v25 = 138412290;
        v26 = v21;
        v14 = "Tried to present networks offer onboarding VC, but state of the controller was: %@.";
        v15 = v10;
        v16 = 12;
        goto LABEL_8;
      }
    }

    objc_storeStrong(&self->_presentingViewController, topMostPresentedViewController);
    [(PreferredNetworksOnboardingController *)self setState:1];
    v10 = [(PreferredNetworksOnboardingController *)self _viewControllerForState:self->_state];
    v11 = [[OBNavigationController alloc] initWithRootViewController:v10];
    [v11 setModalPresentationStyle:2];
    objc_storeStrong(&self->_navigationController, v11);
    v12 = sub_100798370();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(VGVehicle *)self->_vehicle displayName];
      v25 = 138412290;
      v26 = displayName;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will present preferred networks onboarding for vehicle: %@.", &v25, 0xCu);
    }

    [topMostPresentedViewController presentViewController:v11 animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100798370();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      v14 = "Tried to present on a nil presenting VC.";
      v15 = v10;
      v16 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v25, v16);
    }
  }

LABEL_9:
}

- (BOOL)_validateStateTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v4 = toState - state;
  if (toState - state < 0)
  {
    v4 = state - toState;
  }

  return toState == 3 || v4 == 1;
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    if ([(PreferredNetworksOnboardingController *)self _validateStateTransitionFromState:state toState:state])
    {
      v6 = sub_100798370();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = self->_state;
        if (v7 >= 4)
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
            v31 = 2080;
            v32 = "PreferredNetworksOnboardingController.m";
            v33 = 1024;
            v34 = 41;
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
          v8 = *(&off_1016284C8 + v7);
        }

        if (state >= 4)
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
            v31 = 2080;
            v32 = "PreferredNetworksOnboardingController.m";
            v33 = 1024;
            v34 = 41;
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
          v18 = *(&off_1016284C8 + state);
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
        v30 = "[PreferredNetworksOnboardingController setState:]";
        v31 = 2080;
        v32 = "PreferredNetworksOnboardingController.m";
        v33 = 1024;
        v34 = 93;
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
        if (v13 >= 4)
        {
          v19 = sub_10006D178();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
            v31 = 2080;
            v32 = "PreferredNetworksOnboardingController.m";
            v33 = 1024;
            v34 = 41;
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
          v14 = *(&off_1016284C8 + v13);
        }

        if (state >= 4)
        {
          v26 = sub_10006D178();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315650;
            v30 = "NSString *NSStringFromPreferredNetworksOnboardingControllerState(PreferredNetworksOnboardingControllerState)";
            v31 = 2080;
            v32 = "PreferredNetworksOnboardingController.m";
            v33 = 1024;
            v34 = 41;
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
          v22 = *(&off_1016284C8 + state);
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

- (void)onboardingViewControllerWillMoveFromParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(PreferredNetworksOnboardingController *)self _viewControllerForState:[(PreferredNetworksOnboardingController *)self state]];

  if (v5 != controllerCopy)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[PreferredNetworksOnboardingController onboardingViewControllerWillMoveFromParentViewController:]";
      v31 = 2080;
      v32 = "PreferredNetworksOnboardingController.m";
      v33 = 1024;
      v34 = 73;
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
          -[PreferredNetworksOnboardingController setState:](self, "setState:", [v19 integerValue]);
        }
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

- (PreferredNetworksOnboardingController)initWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v11.receiver = self;
  v11.super_class = PreferredNetworksOnboardingController;
  v6 = [(PreferredNetworksOnboardingController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, vehicle);
    v8 = objc_opt_new();
    viewControllersByState = v7->_viewControllersByState;
    v7->_viewControllersByState = v8;
  }

  return v7;
}

@end