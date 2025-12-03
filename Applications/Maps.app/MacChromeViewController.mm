@interface MacChromeViewController
- (ACDataSourceDelegate)sidebarSearchDataSourceDelegate;
- (BOOL)_sharingEnabled;
- (BOOL)_shouldHideSidebar;
- (BOOL)_sidebarVisible;
- (BOOL)canDeleteStop;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect;
- (HomeActionDelegate)sidebarHomeActionDelegate;
- (ToolbarController)toolbarController;
- (UIEdgeInsets)labelEdgeInsets;
- (UIEdgeInsets)mapAttributionInsets;
- (double)currentSidebarWidth;
- (id)_currentRouteSearchViewController;
- (id)_macBaseActionCoordinator;
- (id)_mapAndWeatherAttribution;
- (id)allComponents;
- (id)checkForInternetError:(id)error;
- (id)currentCollectionShareItemSource;
- (id)homeActionDelegateForSelector:(SEL)selector;
- (id)mapItemFromWaypoint:(id)waypoint;
- (id)preferredFocusEnvironments;
- (id)searchDataSourceDelegateForSelector:(SEL)selector;
- (id)searchDataSourceLogDelegate;
- (id)topSidebarController_forTests;
- (id)urlForRoute:(id)route;
- (unint64_t)viewportEdgesRespectingSafeAreaInsets;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_setSidebarContentControllers:(id)controllers forContext:(id)context;
- (void)_showLocationServicesAlertIfNeeded;
- (void)_updateFullScreen;
- (void)_updateShareButton;
- (void)_updateSidebarConstraints;
- (void)_updateSidebarHiddenUserDefault:(BOOL)default;
- (void)_updateSidebarWithAnimation:(id)animation;
- (void)chromeDelegateProxy:(id)proxy willInvoke:(id)invoke onTarget:(id)target;
- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)deleteStop;
- (void)find:(id)find;
- (void)floatingControlsOverlayDidTapDirections:(id)directions;
- (void)hideSideBar:(BOOL)bar animated:(BOOL)animated completion:(id)completion;
- (void)hideSideBar:(BOOL)bar animation:(id)animation completion:(id)completion;
- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change;
- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)mapViewWillStartRenderingMap:(id)map;
- (void)newSceneInTab:(BOOL)tab;
- (void)notifySideBarVisibilityChanged:(BOOL)changed;
- (void)notifyToolbarOfRoutePlanningState:(id)state;
- (void)orderFrontStandardAboutPanel:(id)panel;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)popSidebarViewController;
- (void)prepareMapViewForFirstUse;
- (void)presentAddNewCollection;
- (void)presentAddToCollection:(id)collection;
- (void)presentAddToFavorites;
- (void)pushSidebarViewController:(id)controller;
- (void)select3dMode;
- (void)setAppCoordinator:(id)coordinator;
- (void)setSidebarViewControllers:(id)controllers;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)tapDirectionButton:(id)button;
- (void)tapLocateMe:(id)me;
- (void)tapShareButton:(id)button;
- (void)tapUserProfileButton:(id)button;
- (void)toggleMapScale;
- (void)toggleSidebar:(id)sidebar;
- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)updateMapViewDisplayOptions;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MacChromeViewController

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [sessionCopy unregisterObserver:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [toSessionCopy registerObserver:self];
  }

  [(MacChromeViewController *)self _updateShareButton];
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [_currentContainerViewController updateMapEdgeInsets];

  [(MacChromeViewController *)self notifySideBarVisibilityChanged:mode == 2];
}

- (void)chromeDelegateProxy:(id)proxy willInvoke:(id)invoke onTarget:(id)target
{
  proxyCopy = proxy;
  invokeCopy = invoke;
  targetCopy = target;
  contexts = [(ChromeViewController *)self contexts];
  v12 = [contexts count];

  if (v12 >= 2)
  {
    v13 = sub_10000B11C();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_28:

      [(ChromeViewController *)self popToRootContextAnimated:0 completion:0];
      goto LABEL_29;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_11:

      v35 = selfCopy;
      v20 = proxyCopy;
      if (!v20)
      {
        v25 = @"<nil>";
LABEL_19:

        v26 = v25;
        v27 = NSStringFromSelector([invokeCopy selector]);
        v28 = targetCopy;
        if (!v28)
        {
          v33 = @"<nil>";
          goto LABEL_27;
        }

        v34 = v13;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        if (objc_opt_respondsToSelector())
        {
          v31 = [v28 performSelector:"accessibilityIdentifier"];
          v32 = v31;
          if (v31 && ![v31 isEqualToString:v30])
          {
            v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

            goto LABEL_25;
          }
        }

        v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_25:

        v13 = v34;
LABEL_27:

        *buf = 138544130;
        v37 = v35;
        v38 = 2114;
        v39 = v26;
        v40 = 2114;
        v41 = v27;
        v42 = 2114;
        v43 = v33;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Popping to root context for %{public}@ invocation %{public}@ on %{public}@", buf, 0x2Au);

        goto LABEL_28;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      if (objc_opt_respondsToSelector())
      {
        v23 = [v20 performSelector:"accessibilityIdentifier"];
        v24 = v23;
        if (v23 && ![v23 isEqualToString:v22])
        {
          v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

          goto LABEL_17;
        }
      }

      v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_17:

      goto LABEL_19;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(MacChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_9:

    goto LABEL_11;
  }

LABEL_29:
}

- (id)searchDataSourceLogDelegate
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  contexts = pendingContexts;
  if (!pendingContexts)
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  reverseObjectEnumerator = [contexts reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  if (!pendingContexts)
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = &OBJC_PROTOCOL___GEOLogContextDelegate;
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
        }

        else
        {
          v15 = objc_getAssociatedObject(v11, off_10192F4C8);
          v16 = v15;
          if (!v15)
          {
            v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 conformsToProtocol:{v13, v20}]);
            objc_setAssociatedObject(v11, off_10192F4C8, v16, 1);
          }

          bOOLValue = [v16 BOOLValue];

          if (bOOLValue)
          {
            searchDataSourceLogContextDelegate = v11;
            goto LABEL_25;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          searchDataSourceLogContextDelegate = [v11 searchDataSourceLogContextDelegate];
LABEL_25:
          v8 = searchDataSourceLogContextDelegate;
          goto LABEL_26;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  return v8;
}

- (id)searchDataSourceDelegateForSelector:(SEL)selector
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  contexts = pendingContexts;
  if (!pendingContexts)
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  reverseObjectEnumerator = [contexts reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  if (!pendingContexts)
  {
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v18;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        searchDataSourceDelegate = v13;
LABEL_18:
        v14 = searchDataSourceDelegate;
        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        searchDataSourceDelegate = [v13 searchDataSourceDelegate];
        goto LABEL_18;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v14 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_19:

  return v14;
}

- (ACDataSourceDelegate)sidebarSearchDataSourceDelegate
{
  sidebarSearchDataSourceDelegate = self->_sidebarSearchDataSourceDelegate;
  if (!sidebarSearchDataSourceDelegate)
  {
    v4 = [[ChromeSearchDataSourceDelegateProxy alloc] initWithChromeViewController:self];
    v5 = self->_sidebarSearchDataSourceDelegate;
    self->_sidebarSearchDataSourceDelegate = v4;

    [(ChromeDelegateProxy *)self->_sidebarSearchDataSourceDelegate setListener:self];
    sidebarSearchDataSourceDelegate = self->_sidebarSearchDataSourceDelegate;
  }

  return sidebarSearchDataSourceDelegate;
}

- (id)homeActionDelegateForSelector:(SEL)selector
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  contexts = pendingContexts;
  if (!pendingContexts)
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  reverseObjectEnumerator = [contexts reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  if (!pendingContexts)
  {
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v18;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        homeActionDelegate = v13;
LABEL_18:
        v14 = homeActionDelegate;
        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        homeActionDelegate = [v13 homeActionDelegate];
        goto LABEL_18;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v14 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_19:

  return v14;
}

- (HomeActionDelegate)sidebarHomeActionDelegate
{
  sidebarHomeActionDelegate = self->_sidebarHomeActionDelegate;
  if (!sidebarHomeActionDelegate)
  {
    v4 = [[ChromeHomeActionDelegateProxy alloc] initWithChromeViewController:self];
    v5 = self->_sidebarHomeActionDelegate;
    self->_sidebarHomeActionDelegate = v4;

    [(ChromeDelegateProxy *)self->_sidebarHomeActionDelegate setListener:self];
    sidebarHomeActionDelegate = self->_sidebarHomeActionDelegate;
  }

  return sidebarHomeActionDelegate;
}

- (void)_setSidebarContentControllers:(id)controllers forContext:(id)context
{
  controllersCopy = controllers;
  contextCopy = context;
  if (GEOConfigGetBOOL())
  {
    if (!self->_sidebarControllersForContext)
    {
      v8 = +[NSMapTable weakToStrongObjectsMapTable];
      sidebarControllersForContext = self->_sidebarControllersForContext;
      self->_sidebarControllersForContext = v8;
    }

    v10 = [controllersCopy count];
    v11 = self->_sidebarControllersForContext;
    if (v10)
    {
      v12 = [controllersCopy copy];
      [(NSMapTable *)v11 setObject:v12 forKey:contextCopy];
    }

    else
    {
      [(NSMapTable *)v11 setObject:0 forKey:contextCopy];
    }

    [(ChromeViewController *)self setNeedsUpdateComponent:@"sidebar" animated:1];
  }

  else
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [NSString stringWithFormat:@"Attempting to store sidebar controllers for context but sidebar isn't a chrome component"];
      v17 = 136315906;
      v18 = "[MacChromeViewController _setSidebarContentControllers:forContext:]";
      v19 = 2080;
      v20 = "MacChromeViewController.m";
      v21 = 1024;
      v22 = 1190;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v17, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }
}

- (void)_updateSidebarWithAnimation:(id)animation
{
  animationCopy = animation;
  if (GEOConfigGetBOOL())
  {
    objc_initWeak(&location, animationCopy);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1009DE4AC;
    v5[3] = &unk_101661340;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    [animationCopy addPreparation:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSidebarHiddenUserDefault:(BOOL)default
{
  defaultCopy = default;
  if (GEOConfigGetBOOL())
  {
    topContext = +[NSUserDefaults standardUserDefaults];
    [topContext setBool:defaultCopy forKey:@"MapsDefaultHideSidebar"];
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
    if (!topContext || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      [v5 setBool:defaultCopy forKey:@"MapsDefaultHideSidebar"];
    }
  }
}

- (BOOL)_shouldHideSidebar
{
  if (GEOConfigGetBOOL())
  {
    topContext = +[NSUserDefaults standardUserDefaults];
    v4 = [topContext BOOLForKey:@"MapsDefaultHideSidebar"];
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
    if (topContext && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v4 = 1;
    }

    else
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v4 = [v5 BOOLForKey:@"MapsDefaultHideSidebar"];
    }
  }

  return v4;
}

- (id)checkForInternetError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:NSURLErrorDomain])
  {
    code = [errorCopy code];

    if (code == -1009)
    {
      v7 = errorCopy;
      goto LABEL_26;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKey:@"UnderlyingErrors"];
  v10 = [v9 count];

  if (v10)
  {
    userInfo2 = [errorCopy userInfo];
    v12 = [userInfo2 objectForKey:@"UnderlyingErrors"];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(MacChromeViewController *)self checkForInternetError:*(*(&v32 + 1) + 8 * v17)];
        if (v18)
        {
          goto LABEL_25;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v15)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  userInfo3 = [errorCopy userInfo];
  v20 = [userInfo3 objectForKey:@"SimpleTileRequesterUnderlyingErrors"];
  v7 = [v20 count];

  if (!v7)
  {
    goto LABEL_26;
  }

  userInfo4 = [errorCopy userInfo];
  v22 = [userInfo4 objectForKey:@"SimpleTileRequesterUnderlyingErrors"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v22;
  v23 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v23)
  {
LABEL_24:

    v7 = 0;
    goto LABEL_26;
  }

  v24 = v23;
  v25 = *v29;
LABEL_18:
  v26 = 0;
  while (1)
  {
    if (*v29 != v25)
    {
      objc_enumerationMutation(v13);
    }

    v18 = [(MacChromeViewController *)self checkForInternetError:*(*(&v28 + 1) + 8 * v26), v28];
    if (v18)
    {
      break;
    }

    if (v24 == ++v26)
    {
      v24 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v24)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v7 = v18;

LABEL_26:

  return v7;
}

- (id)preferredFocusEnvironments
{
  mapView = [(ChromeViewController *)self mapView];
  masterViewController = [(MacChromeViewController *)self masterViewController];
  v8[1] = masterViewController;
  detailViewController = [(MacChromeViewController *)self detailViewController];
  v8[2] = detailViewController;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect
{
  deselectCopy = deselect;
  if ([(MacChromeViewController *)self isCurrentInteractionDidDeselect])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    mapView = [(ChromeViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    selectedLabelMarker = [_mapLayer selectedLabelMarker];

    if (!selectedLabelMarker)
    {
      mapView2 = [(ChromeViewController *)self mapView];
      _mapLayer2 = [mapView2 _mapLayer];
      [_mapLayer2 clearPreviouslySelectedLabelMarker];
    }

    v13.receiver = self;
    v13.super_class = MacChromeViewController;
    v5 = [(IOSBasedChromeViewController *)&v13 mapViewShouldHandleTapToDeselect:deselectCopy];
    if (v5)
    {
      _macBaseActionCoordinator = [(MacChromeViewController *)self _macBaseActionCoordinator];
      [_macBaseActionCoordinator handleMapViewTapToDeselect];
    }

    [(MacChromeViewController *)self setCurrentInteractionDidDeselect:1];
  }

  return v5;
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  markerCopy = marker;
  viewCopy = view;
  [(MacChromeViewController *)self setCurrentInteractionDidDeselect:1];
  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v8 mapView:viewCopy didDeselectLabelMarker:markerCopy];
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  [(MacChromeViewController *)self setCurrentInteractionDidDeselect:0];
  topContext = [(ChromeViewController *)self topContext];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    topContext2 = [(ChromeViewController *)self topContext];
    [topContext2 mapViewDidStartUserInteraction:interactionCopy];
  }

  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v8 mapViewDidStartUserInteraction:interactionCopy];
}

- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v7 mapView:view canEnter3DModeDidChange:change];
  canEnter3dMode = [(IOSBasedChromeViewController *)self canEnter3dMode];
  toolbarController = [(MacChromeViewController *)self toolbarController];
  [toolbarController setThirdDimensionButtonEnabled:canEnter3dMode];
}

- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v7 mapView:view didChangeLookAroundAvailability:?];
  toolbarController = [(MacChromeViewController *)self toolbarController];
  [toolbarController setLookAroundEnabled:availability == 2];
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v8 mapView:view didChangeUserTrackingMode:mode animated:animated];
  toolbarController = [(MacChromeViewController *)self toolbarController];
  [toolbarController setLocationButtonActive:mode == 1];
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v7 mapViewDidFinishRenderingMap:map fullyRendered:rendered];
  if (self->_mapLoadedWithoutError)
  {
    errorString = [(IOSBasedChromeViewController *)self errorString];

    if (errorString)
    {
      [(IOSBasedChromeViewController *)self setErrorString:0];
      _maps_mapsSceneDelegate = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      [_maps_mapsSceneDelegate refreshTitle];
    }
  }
}

- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error
{
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v21 mapViewDidFailLoadingMap:map withError:errorCopy];
  self->_mapLoadedWithoutError = 0;
  v7 = [(MacChromeViewController *)self checkForInternetError:errorCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;

    errorCopy = v9;
  }

  domain = [errorCopy domain];
  code = [errorCopy code];
  if ([domain isEqualToString:NSURLErrorDomain])
  {
    v12 = +[NSBundle mainBundle];
    v13 = v12;
    if (code == -1009)
    {
      v14 = @"No Internet Connection";
    }

    else
    {
      v14 = @"Connection Issue.";
    }
  }

  else
  {
    v15 = GEOErrorDomain();
    v16 = [domain isEqualToString:v15];

    v17 = 0;
    if (!v16 || code != -9)
    {
      goto LABEL_13;
    }

    v12 = +[NSBundle mainBundle];
    v13 = v12;
    v14 = @"No Internet Connection";
  }

  v17 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:0];

  if (v17)
  {
    errorString = [(IOSBasedChromeViewController *)self errorString];
    v19 = [errorString isEqualToString:v17];

    if ((v19 & 1) == 0)
    {
      [(IOSBasedChromeViewController *)self setErrorString:v17];
      _maps_mapsSceneDelegate = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      [_maps_mapsSceneDelegate refreshTitle];
    }
  }

LABEL_13:
}

- (void)mapViewWillStartRenderingMap:(id)map
{
  v4.receiver = self;
  v4.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v4 mapViewWillStartRenderingMap:map];
  self->_mapLoadedWithoutError = 1;
}

- (id)_macBaseActionCoordinator
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = baseActionCoordinator;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_updateShareButton
{
  _sharingEnabled = [(MacChromeViewController *)self _sharingEnabled];
  toolbarController = [(MacChromeViewController *)self toolbarController];
  [toolbarController setShareButtonEnabled:_sharingEnabled];
}

- (BOOL)_sharingEnabled
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  platformController = [appCoordinator platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentRouteCollection = [currentSession currentRouteCollection];
    currentRoute = [currentRouteCollection currentRoute];
    if ([currentRoute isMultipointRoute])
    {
      currentShareItemSource = [(IOSBasedChromeViewController *)self currentShareItemSource];
      v9 = currentShareItemSource != 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)notifyToolbarOfRoutePlanningState:(id)state
{
  object = [state object];
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  if (object == baseActionCoordinator)
  {
    appCoordinator2 = [(IOSBasedChromeViewController *)self appCoordinator];
    baseActionCoordinator2 = [appCoordinator2 baseActionCoordinator];
    isRoutePlanningPresented = [baseActionCoordinator2 isRoutePlanningPresented];
    toolbarController = [(MacChromeViewController *)self toolbarController];
    [toolbarController setRoutePlanningButtonActive:isRoutePlanningPresented];
  }
}

- (id)currentCollectionShareItemSource
{
  v9.receiver = self;
  v9.super_class = MacChromeViewController;
  currentCollectionShareItemSource = [(IOSBasedChromeViewController *)&v9 currentCollectionShareItemSource];
  v4 = currentCollectionShareItemSource;
  if (currentCollectionShareItemSource)
  {
    v5 = currentCollectionShareItemSource;
  }

  else
  {
    _macBaseActionCoordinator = [(MacChromeViewController *)self _macBaseActionCoordinator];
    injectedCollection = [_macBaseActionCoordinator injectedCollection];
    if (injectedCollection)
    {
      v5 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:injectedCollection];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_mapAndWeatherAttribution
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  [v3 setAlignment:1];
  v11[0] = NSForegroundColorAttributeName;
  v4 = +[UIColor labelColor];
  v12[0] = v4;
  v11[1] = NSFontAttributeName;
  v5 = [UIFont systemFontOfSize:10.0];
  v11[2] = NSParagraphStyleAttributeName;
  v12[1] = v5;
  v12[2] = v3;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  mapView = [(ChromeViewController *)self mapView];
  v8 = [mapView mapAttributionWithStringAttributes:v6 underlineText:1 linkAttribution:1];

  string = [v8 string];

  return string;
}

- (void)orderFrontStandardAboutPanel:(id)panel
{
  _mapAndWeatherAttribution = [(MacChromeViewController *)self _mapAndWeatherAttribution];
  v4 = _mapAndWeatherAttribution;
  if (_mapAndWeatherAttribution)
  {
    v7 = @"Credits";
    v8 = _mapAndWeatherAttribution;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[UIApplication sharedMapsDelegate];
  [objc_msgSend(v6 "appKitBundleClass")];
}

- (void)select3dMode
{
  v2.receiver = self;
  v2.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v2 select3dMode];
}

- (void)newSceneInTab:(BOOL)tab
{
  _maps_mapsSceneDelegate = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
  entryPointsCoordinator = [_maps_mapsSceneDelegate entryPointsCoordinator];
  launchAlertsManager = [entryPointsCoordinator launchAlertsManager];
  if ([launchAlertsManager currentlyShowingAlert])
  {
  }

  else
  {
    v6 = +[MapsWelcomeScreenViewController mapsWelcomeCurrentlyBeingPresented];

    if ((v6 & 1) == 0)
    {
      v7 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
      [v7 setEligibleForHandoff:0];
      _maps_mapsSceneDelegate2 = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      v9 = [_maps_mapsSceneDelegate2 mapsActivityWithFidelity:2];

      data = [v9 data];
      bzip2CompressedData = [data bzip2CompressedData];

      if (bzip2CompressedData)
      {
        v17 = @"bs";
        v18 = bzip2CompressedData;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v7 setUserInfo:v12];
      }

      v13 = objc_alloc_init(UISceneActivationRequestOptions);
      _maps_uiScene = [(MacChromeViewController *)self _maps_uiScene];
      [v13 setRequestingScene:_maps_uiScene];

      v15 = +[UIApplication sharedApplication];
      [v15 requestSceneSessionActivation:0 userActivity:v7 options:v13 errorHandler:0];
    }
  }
}

- (void)presentAddToFavorites
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  v4 = +[ShortcutEditSession addSession];
  [baseActionCoordinator viewController:self showAddShortcut:v4];
}

- (void)presentAddToCollection:(id)collection
{
  propertyList = [collection propertyList];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = +[CollectionManager sharedManager];
  currentCollections = [v5 currentCollections];

  v7 = [currentCollections countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(currentCollections);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:propertyList];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [currentCollections countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = [(CollectionEditSession *)[CollectionSaveSession alloc] initWithCollection:v14];
    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    [baseActionCoordinator viewController:self addItemsFromACToCollection:v15];

    currentCollections = v14;
  }

LABEL_12:

LABEL_13:
}

- (void)presentAddNewCollection
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  [baseActionCoordinator viewController:self createNewCollectionWithSession:0];

  [GEOAPPortal captureUserAction:2072 target:0 value:0];
}

- (id)urlForRoute:(id)route
{
  routeCopy = route;
  v5 = objc_alloc_init(MKURLSerializer);
  if ([routeCopy transportType] == 1)
  {
    routeAttributes = [routeCopy routeAttributes];
    hasTimepoint = [routeAttributes hasTimepoint];

    if (hasTimepoint)
    {
      routeAttributes2 = [routeCopy routeAttributes];
      v9 = routeAttributes2;
      if (routeAttributes2)
      {
        [routeAttributes2 timepoint];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  origin = [routeCopy origin];
  v11 = [(MacChromeViewController *)self mapItemFromWaypoint:origin];

  destination = [routeCopy destination];
  v13 = [(MacChromeViewController *)self mapItemFromWaypoint:destination];

  v14 = 0;
  if (v11 && v13)
  {
    transportType = [routeCopy transportType];
    if (transportType > 5)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_1012160D0[transportType];
    }

    v14 = [v5 urlForDirectionsFromMapItem:v11 toMapItem:v13 transportType:v16 options:0];
  }

  return v14;
}

- (id)mapItemFromWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  geoMapItem = [waypointCopy geoMapItem];
  if (geoMapItem)
  {
    v5 = [[MKMapItem alloc] initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
  }

  else
  {
    location = [waypointCopy location];
    [location coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [[CLLocation alloc] initWithLatitude:v8 longitude:v10];
    v5 = [[MKMapItem alloc] initWithCLLocation:v11];
  }

  return v5;
}

- (void)find:(id)find
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1009E0360;
    v6[3] = &unk_101661738;
    v6[4] = self;
    [(MacChromeViewController *)self hideSideBar:0 animated:1 completion:v6];
    [(MacChromeViewController *)self _updateSidebarHiddenUserDefault:0];
  }
}

- (id)_currentRouteSearchViewController
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = baseActionCoordinator;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  containerViewController = [v5 containerViewController];

  currentViewController = [containerViewController currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = currentViewController;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  routeSearchViewController = [v9 routeSearchViewController];

  return routeSearchViewController;
}

- (void)deleteStop
{
  _currentRouteSearchViewController = [(MacChromeViewController *)self _currentRouteSearchViewController];
  [_currentRouteSearchViewController deleteCurrentFieldIndex];
}

- (BOOL)canDeleteStop
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  if ([appCoordinator isRoutePlanningPresented])
  {
    _currentRouteSearchViewController = [(MacChromeViewController *)self _currentRouteSearchViewController];
    canDeleteCurrentFieldIndex = [_currentRouteSearchViewController canDeleteCurrentFieldIndex];
  }

  else
  {
    canDeleteCurrentFieldIndex = 0;
  }

  return canDeleteCurrentFieldIndex;
}

- (void)toggleMapScale
{
  v2 = +[MapsSettings alwaysShowScale]^ 1;

  [MapsSettings setAlwaysShowScale:v2];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  if (action == "toggleSidebar:")
  {
    _sidebarVisible = [(MacChromeViewController *)self _sidebarVisible];
    v8 = +[NSBundle mainBundle];
    appCoordinator = v8;
    if (_sidebarVisible)
    {
      v10 = @"[Menu] Hide Sidebar";
    }

    else
    {
      v10 = @"[Menu] Show Sidebar";
    }

    goto LABEL_15;
  }

  v6 = action;
  if (action == "toggleDirections")
  {
    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    [commandCopy _maps_setUseDisableFeatureTitle:{objc_msgSend(appCoordinator, "isRoutePlanningPresented")}];
LABEL_16:

    goto LABEL_19;
  }

  if (action == "toggleMapScale")
  {
    [commandCopy _maps_setUseDisableFeatureTitle:{+[MapsSettings alwaysShowScale](MapsSettings, "alwaysShowScale")}];
    goto LABEL_19;
  }

  if (action == "deleteStop" && ![(MacChromeViewController *)self canDeleteStop]|| v6 == "delete:" || v6 == "pasteAndMatchStyle:")
  {
    goto LABEL_17;
  }

  if (v6 == "copy:")
  {
    v8 = +[NSBundle mainBundle];
    appCoordinator = v8;
    v10 = @"Copy Link";
LABEL_15:
    v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    [commandCopy setTitle:v11];

    goto LABEL_16;
  }

  if (v6 == "redo:")
  {
LABEL_17:
    [commandCopy setAttributes:4];
    goto LABEL_19;
  }

  v12.receiver = self;
  v12.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v12 validateCommand:commandCopy];
LABEL_19:
}

- (UIEdgeInsets)labelEdgeInsets
{
  v3 = 0.0;
  if ([(MacChromeViewController *)self _sidebarVisible])
  {
    splitViewController = [(MacChromeViewController *)self splitViewController];
    [splitViewController primaryColumnWidth];
    v3 = v5;
  }

  view = [(MacChromeViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  view2 = [(MacChromeViewController *)self view];
  [view2 safeAreaInsets];
  v10 = v9;

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = 0.0;
  v14 = v10;
  result.right = v12;
  result.bottom = v13;
  result.left = v11;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)mapAttributionInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_sidebarVisible
{
  splitViewController = [(MacChromeViewController *)self splitViewController];
  v3 = [splitViewController displayMode] == 2;

  return v3;
}

- (void)tapUserProfileButton:(id)button
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator openUserProfile];
}

- (void)tapShareButton:(id)button
{
  view = [(MacChromeViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v16);
  [view bounds];
  MinY = CGRectGetMinY(v17);
  view2 = [(MacChromeViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    [view bounds];
    MinY = CGRectGetMinY(v18);
    v8 = 50.0;
  }

  else
  {
    v8 = Width + -50.0;
  }

  currentShareItemSource = [(IOSBasedChromeViewController *)self currentShareItemSource];
  v10 = [[MapsActivityViewController alloc] initWithShareItem:currentShareItemSource];
  popoverPresentationController = [(MapsActivityViewController *)v10 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [(MapsActivityViewController *)v10 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v8, MinY + 33.0, 1.0, 1.0}];

  popoverPresentationController3 = [(MapsActivityViewController *)v10 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:1];

  [(MacChromeViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)tapDirectionButton:(id)button
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator toggleRoutePlanning];
}

- (void)toggleSidebar:(id)sidebar
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _sidebarVisible = [(MacChromeViewController *)self _sidebarVisible];
    [(MacChromeViewController *)self hideSideBar:_sidebarVisible animated:1 completion:0];

    [(MacChromeViewController *)self _updateSidebarHiddenUserDefault:_sidebarVisible];
  }
}

- (void)updateMapViewDisplayOptions
{
  v3.receiver = self;
  v3.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v3 updateMapViewDisplayOptions];
  [(MacChromeViewController *)self updateMapViewSettings:self];
}

- (void)_showLocationServicesAlertIfNeeded
{
  v2 = +[UIApplication sharedMapsDelegate];
  [v2 promptLocationServicesAuthorizationWithHandler:0];

  v3 = +[MKLocationManager sharedLocationManager];
  v9 = 0;
  v4 = [v3 isLocationServicesPossiblyAvailable:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    domain = [v5 domain];
    v7 = [domain isEqualToString:MKLocationErrorDomain];

    if (v7)
    {
      v8 = +[UIApplication sharedMapsDelegate];
      [v8 showLocationServicesAlertWithError:v5];
    }
  }
}

- (void)tapLocateMe:(id)me
{
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  mapView = [(ChromeViewController *)self mapView];
  v6 = mapView;
  if (IsEnabled_SearchAndDiscovery)
  {
    [mapView _setUserTrackingMode:1 animated:1 fromTrackingButton:1];
  }

  else
  {
    [mapView setUserTrackingMode:1 animated:1];
  }

  [(MacChromeViewController *)self _showLocationServicesAlertIfNeeded];
}

- (void)hideSideBar:(BOOL)bar animation:(id)animation completion:(id)completion
{
  barCopy = bar;
  animationCopy = animation;
  completionCopy = completion;
  if (barCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  splitViewController = [(MacChromeViewController *)self splitViewController];
  displayMode = [splitViewController displayMode];

  if (displayMode == v10)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1009E0DB8;
    v13[3] = &unk_101631598;
    isAnimated = [animationCopy isAnimated];
    v13[4] = self;
    v15 = v10;
    v17 = barCopy;
    v14 = completionCopy;
    [animationCopy addAnimations:v13];
  }
}

- (void)hideSideBar:(BOOL)bar animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  barCopy = bar;
  completionCopy = completion;
  v9 = [GroupAnimation animationForAnimatedFlag:animatedCopy];
  v11 = v9;
  v10 = 0.200000003;
  if (!animatedCopy)
  {
    v10 = 0.0;
  }

  [v9 setDuration:v10];
  [(MacChromeViewController *)self hideSideBar:barCopy animation:v11 completion:completionCopy];

  [v11 runWithDefaultOptions];
}

- (void)notifySideBarVisibilityChanged:(BOOL)changed
{
  changedCopy = changed;
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [_currentContainerViewController sidebarVisibilityDidChange:changedCopy];
}

- (ToolbarController)toolbarController
{
  if (_UISolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    toolbarController = self->_toolbarController;
    if (!toolbarController)
    {
      v5 = [ToolbarController alloc];
      settingsController = [(IOSBasedChromeViewController *)self settingsController];
      v7 = [(ToolbarController *)v5 initWithSettingsController:settingsController];
      v8 = self->_toolbarController;
      self->_toolbarController = v7;

      toolbarController = self->_toolbarController;
    }

    v3 = toolbarController;
  }

  return v3;
}

- (void)floatingControlsOverlayDidTapDirections:(id)directions
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator toggleRoutePlanning];
}

- (id)topSidebarController_forTests
{
  masterViewController = [(MacChromeViewController *)self masterViewController];
  topContainee_forTests = [masterViewController topContainee_forTests];

  return topContainee_forTests;
}

- (void)setSidebarViewControllers:(id)controllers
{
  controllersCopy = controllers;
  objc_initWeak(&location, self);
  masterViewController = [(MacChromeViewController *)self masterViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009E12DC;
  v6[3] = &unk_1016619A8;
  objc_copyWeak(&v7, &location);
  [masterViewController setContainees:controllersCopy animated:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)popSidebarViewController
{
  if (GEOConfigGetBOOL())
  {
    topContext = [(ChromeViewController *)self topContext];
    v3 = [(NSMapTable *)self->_sidebarControllersForContext objectForKey:?];
    v4 = [v3 mutableCopy];

    if ([v4 count])
    {
      [v4 removeLastObject];
      [(MacChromeViewController *)self _setSidebarContentControllers:v4 forContext:topContext];
    }
  }

  else
  {
    topContext = [(MacChromeViewController *)self masterViewController];
    [topContext popContainee:1 completion:0];
  }
}

- (void)pushSidebarViewController:(id)controller
{
  controllerCopy = controller;
  if (GEOConfigGetBOOL())
  {
    nextTopContext = [(ChromeViewController *)self nextTopContext];
    v5 = nextTopContext;
    if (nextTopContext)
    {
      topContext = nextTopContext;
    }

    else
    {
      topContext = [(ChromeViewController *)self topContext];
    }

    masterViewController = topContext;

    v8 = [(NSMapTable *)self->_sidebarControllersForContext objectForKey:masterViewController];
    v9 = [NSMutableArray arrayWithArray:v8];

    lastObject = [v9 lastObject];

    if (lastObject != controllerCopy)
    {
      [v9 addObject:controllerCopy];
      [(MacChromeViewController *)self _setSidebarContentControllers:v9 forContext:masterViewController];
    }
  }

  else
  {
    masterViewController = [(MacChromeViewController *)self masterViewController];
    [masterViewController pushContainee:controllerCopy animated:1 completion:0];
  }
}

- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  v11.receiver = self;
  v11.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v11 updateComponent:componentCopy forTiming:timing withAnimation:animationCopy];
  if (componentCopy == @"sidebar")
  {
    [(MacChromeViewController *)self _updateSidebarWithAnimation:animationCopy];
  }

  else if (componentCopy == @"mapInsets")
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009E1654;
    v10[3] = &unk_101661B18;
    v10[4] = self;
    [animationCopy addAnimations:v10];
  }
}

- (id)allComponents
{
  v5.receiver = self;
  v5.super_class = MacChromeViewController;
  allComponents = [(IOSBasedChromeViewController *)&v5 allComponents];
  v3 = [allComponents arrayByAddingObject:@"sidebar"];

  return v3;
}

- (unint64_t)viewportEdgesRespectingSafeAreaInsets
{
  view = [(MacChromeViewController *)self view];
  isWindowFullScreen = [view isWindowFullScreen];

  if (isWindowFullScreen)
  {
    return 15;
  }

  else
  {
    return 14;
  }
}

- (void)prepareMapViewForFirstUse
{
  v6.receiver = self;
  v6.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v6 prepareMapViewForFirstUse];
  v3 = +[UIColor systemBlueColor];
  mapView = [(ChromeViewController *)self mapView];
  [mapView setTintColor:v3];

  mapView2 = [(ChromeViewController *)self mapView];
  [mapView2 _setAutomaticallySnapsToNorth:1];
}

- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  toCopy = to;
  animationCopy = animation;
  v21.receiver = self;
  v21.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v21 contextStackDidUpdateFrom:from to:toCopy withAnimation:animationCopy];
  lastObject = [toCopy lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  lastObject2 = [toCopy lastObject];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1009E1B44;
  v18[3] = &unk_101660130;
  v18[4] = self;
  v19 = isKindOfClass & 1;
  v20 = v13 & 1;
  [animationCopy addPreparation:v18];
  if ((isKindOfClass & 1) != 0 && (GEOConfigGetBOOL() & 1) == 0)
  {
    -[MacChromeViewController hideSideBar:animated:completion:](self, "hideSideBar:animated:completion:", -[MacChromeViewController _shouldHideSidebar](self, "_shouldHideSidebar"), [animationCopy isAnimated], 0);
  }

  if (v13)
  {
    [toCopy lastObject];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1009E1CA0;
    v17 = v16[3] = &unk_101661738;
    v14 = v17;
    [animationCopy addCompletion:v16];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009E1CA8;
  v15[3] = &unk_101661B18;
  v15[4] = self;
  [animationCopy addAnimations:v15];
}

- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  fromCopy = from;
  toCopy = to;
  animationCopy = animation;
  v20.receiver = self;
  v20.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v20 contextStackWillUpdateFrom:fromCopy to:toCopy withAnimation:animationCopy];
  lastObject = [fromCopy lastObject];
  lastObject2 = [toCopy lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (GEOConfigGetBOOL())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [fromCopy lastObject];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1009E1F8C;
      v17 = v16[3] = &unk_101661B18;
      v13 = v17;
      [animationCopy addPreparation:v16 animations:0 completion:0];
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1009E1F70;
    v18[3] = &unk_101661AE0;
    v18[4] = self;
    isAnimated = [animationCopy isAnimated];
    [animationCopy addPreparation:v18 animations:0 completion:0];
  }

  if (GEOConfigGetBOOL())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1009E1F9C;
    v14[3] = &unk_101661570;
    v14[4] = self;
    v15 = toCopy;
    [animationCopy addCompletion:v14];
  }
}

- (double)currentSidebarWidth
{
  splitViewController = [(MacChromeViewController *)self splitViewController];
  v4 = 0.0;
  if ([splitViewController displayMode] != 1)
  {
    splitViewController2 = [(MacChromeViewController *)self splitViewController];
    [splitViewController2 primaryColumnWidth];
    v4 = v6;
  }

  return v4;
}

- (void)_updateSidebarConstraints
{
  [(MacChromeViewController *)self currentSidebarWidth];
  v4 = sub_100019A44() + v3;
  viewportSideBarWidthConstraint = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
  [viewportSideBarWidthConstraint constant];
  v7 = v6;

  if (v7 != v4)
  {
    viewportSideBarWidthConstraint2 = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
    [viewportSideBarWidthConstraint2 setConstant:v4];

    mapViewInsetsSideBarWidthConstraint = [(MacChromeViewController *)self mapViewInsetsSideBarWidthConstraint];
    [mapViewInsetsSideBarWidthConstraint setConstant:v4];

    view = [(MacChromeViewController *)self view];
    [view layoutIfNeeded];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:0];

    [(ChromeViewController *)self updateComponentsIfNeeded];
  }
}

- (void)_locationManagerApprovalDidChange:(id)change
{
  v6 = +[MKLocationManager sharedLocationManager];
  if ([v6 isLocationServicesEnabled])
  {
    isLocationServicesApproved = [v6 isLocationServicesApproved];
  }

  else
  {
    isLocationServicesApproved = 0;
  }

  toolbarController = [(MacChromeViewController *)self toolbarController];
  [toolbarController setLocationServicesEnabled:isLocationServicesApproved];
}

- (void)_updateFullScreen
{
  view = [(MacChromeViewController *)self view];
  isWindowFullScreen = [view isWindowFullScreen];
  masterViewController = [(MacChromeViewController *)self masterViewController];
  [masterViewController setTopSafeAreaInsetConstraining:isWindowFullScreen];

  [(ChromeViewController *)self updateViewportConstraints];

  [(ChromeViewController *)self updateOverlayContentConstraints];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v5 viewDidAppear:appear];
  mapView = [(ChromeViewController *)self mapView];
  [mapView becomeFirstResponder];

  [(MacChromeViewController *)self _updateFullScreen];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v72 viewDidLoad];
  v3 = [[SupplementalStackViewController alloc] initWithTopSafeAreaInsetConstraining:0];
  [(MacChromeViewController *)self setMasterViewController:v3];

  masterViewController = [(MacChromeViewController *)self masterViewController];
  view = [masterViewController view];
  [view setClipsToBounds:1];

  v6 = objc_alloc_init(PassThroughViewController);
  [(PassThroughViewController *)v6 setDelegate:self];
  view2 = [(PassThroughViewController *)v6 view];
  [view2 setAccessibilityIdentifier:@"MacChromePassthroughView"];

  v71 = v6;
  [(MacChromeViewController *)self setDetailViewController:v6];
  v8 = [[BlurInWindowSplitViewController alloc] initWithStyle:1];
  [(MacChromeViewController *)self setSplitViewController:v8];

  masterViewController2 = [(MacChromeViewController *)self masterViewController];
  v74[0] = masterViewController2;
  detailViewController = [(MacChromeViewController *)self detailViewController];
  v74[1] = detailViewController;
  v11 = [NSArray arrayWithObjects:v74 count:2];
  splitViewController = [(MacChromeViewController *)self splitViewController];
  [splitViewController setViewControllers:v11];

  splitViewController2 = [(MacChromeViewController *)self splitViewController];
  [splitViewController2 setPreferredPrimaryColumnWidthFraction:0.150000006];

  splitViewController3 = [(MacChromeViewController *)self splitViewController];
  [splitViewController3 setPresentsWithGesture:0];

  splitViewController4 = [(MacChromeViewController *)self splitViewController];
  [splitViewController4 setDisplayModeButtonVisibility:2];

  splitViewController5 = [(MacChromeViewController *)self splitViewController];
  [splitViewController5 setMinimumPrimaryColumnWidth:200.0];

  splitViewController6 = [(MacChromeViewController *)self splitViewController];
  [splitViewController6 setMaximumPrimaryColumnWidth:UISplitViewControllerAutomaticDimension];

  v18 = +[UIColor clearColor];
  splitViewController7 = [(MacChromeViewController *)self splitViewController];
  view3 = [splitViewController7 view];
  [view3 setBackgroundColor:v18];

  splitViewController8 = [(MacChromeViewController *)self splitViewController];
  [splitViewController8 setGutterWidth:0.0];

  splitViewController9 = [(MacChromeViewController *)self splitViewController];
  [splitViewController9 setPrimaryBackgroundStyle:1];

  if ([(MacChromeViewController *)self _shouldHideSidebar])
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  splitViewController10 = [(MacChromeViewController *)self splitViewController];
  [splitViewController10 setPreferredDisplayMode:v23];

  splitViewController11 = [(MacChromeViewController *)self splitViewController];
  [splitViewController11 setDelegate:self];

  splitViewController12 = [(MacChromeViewController *)self splitViewController];
  [(MacChromeViewController *)self addChildViewController:splitViewController12];

  view4 = [(MacChromeViewController *)self view];
  splitViewController13 = [(MacChromeViewController *)self splitViewController];
  view5 = [splitViewController13 view];
  mapView = [(ChromeViewController *)self mapView];
  [view4 insertSubview:view5 aboveSubview:mapView];

  splitViewController14 = [(MacChromeViewController *)self splitViewController];
  [splitViewController14 didMoveToParentViewController:self];

  splitViewController15 = [(MacChromeViewController *)self splitViewController];
  view6 = [splitViewController15 view];
  view7 = [(MacChromeViewController *)self view];
  v34 = view6;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [v34 topAnchor];
  topAnchor2 = [view7 topAnchor];
  v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v75[0] = v67;
  leadingAnchor = [v34 leadingAnchor];
  leadingAnchor2 = [view7 leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[1] = v64;
  bottomAnchor = [v34 bottomAnchor];
  bottomAnchor2 = [view7 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v75[2] = v37;
  widthAnchor = [v34 widthAnchor];

  widthAnchor2 = [view7 widthAnchor];
  v40 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v75[3] = v40;
  v41 = [NSArray arrayWithObjects:v75 count:4];
  [NSLayoutConstraint activateConstraints:v41];

  viewportLayoutGuide = [(ChromeViewController *)self viewportLayoutGuide];
  leadingAnchor3 = [viewportLayoutGuide leadingAnchor];
  view8 = [(MacChromeViewController *)self view];
  safeAreaLayoutGuide = [view8 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v47 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:0.0];
  [(MacChromeViewController *)self setViewportSideBarWidthConstraint:v47];

  v48 = objc_alloc_init(NSMutableArray);
  v49 = sub_100019A44();
  viewportSideBarWidthConstraint = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
  v73[0] = viewportSideBarWidthConstraint;
  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  topAnchor3 = [mapInsetsLayoutGuide topAnchor];
  mapInsetEdgesRespectingSafeAreaInsets = [(MacChromeViewController *)self mapInsetEdgesRespectingSafeAreaInsets];
  view9 = [(MacChromeViewController *)self view];
  v55 = view9;
  if (mapInsetEdgesRespectingSafeAreaInsets)
  {
    splitViewController15 = [view9 safeAreaLayoutGuide];
    [splitViewController15 topAnchor];
  }

  else
  {
    [view9 topAnchor];
  }
  v56 = ;
  v57 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:v56 constant:v49];
  v73[1] = v57;
  v58 = [NSArray arrayWithObjects:v73 count:2];
  [v48 addObjectsFromArray:v58];

  if (mapInsetEdgesRespectingSafeAreaInsets)
  {

    v56 = splitViewController15;
  }

  [NSLayoutConstraint activateConstraints:v48];
  v59 = +[NSNotificationCenter defaultCenter];
  [v59 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v60 = +[NSNotificationCenter defaultCenter];
  v61 = +[MapsSettings settingsUpdatedNotificationKey];
  [v60 addObserver:self selector:"updateMapViewSettings:" name:v61 object:0];

  v62 = +[NSNotificationCenter defaultCenter];
  [v62 addObserver:self selector:"notifyToolbarOfRoutePlanningState:" name:@"RoutePlanningPresentedDidChangeNotification" object:0];

  mapView2 = [(ChromeViewController *)self mapView];
  [mapView2 _forceFrame];
}

- (void)setAppCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = MacChromeViewController;
  coordinatorCopy = coordinator;
  [(IOSBasedChromeViewController *)&v6 setAppCoordinator:coordinatorCopy];
  platformController = [coordinatorCopy platformController];

  [platformController registerObserver:self];
}

@end