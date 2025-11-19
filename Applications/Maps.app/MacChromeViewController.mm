@interface MacChromeViewController
- (ACDataSourceDelegate)sidebarSearchDataSourceDelegate;
- (BOOL)_sharingEnabled;
- (BOOL)_shouldHideSidebar;
- (BOOL)_sidebarVisible;
- (BOOL)canDeleteStop;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3;
- (HomeActionDelegate)sidebarHomeActionDelegate;
- (ToolbarController)toolbarController;
- (UIEdgeInsets)labelEdgeInsets;
- (UIEdgeInsets)mapAttributionInsets;
- (double)currentSidebarWidth;
- (id)_currentRouteSearchViewController;
- (id)_macBaseActionCoordinator;
- (id)_mapAndWeatherAttribution;
- (id)allComponents;
- (id)checkForInternetError:(id)a3;
- (id)currentCollectionShareItemSource;
- (id)homeActionDelegateForSelector:(SEL)a3;
- (id)mapItemFromWaypoint:(id)a3;
- (id)preferredFocusEnvironments;
- (id)searchDataSourceDelegateForSelector:(SEL)a3;
- (id)searchDataSourceLogDelegate;
- (id)topSidebarController_forTests;
- (id)urlForRoute:(id)a3;
- (unint64_t)viewportEdgesRespectingSafeAreaInsets;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_setSidebarContentControllers:(id)a3 forContext:(id)a4;
- (void)_showLocationServicesAlertIfNeeded;
- (void)_updateFullScreen;
- (void)_updateShareButton;
- (void)_updateSidebarConstraints;
- (void)_updateSidebarHiddenUserDefault:(BOOL)a3;
- (void)_updateSidebarWithAnimation:(id)a3;
- (void)chromeDelegateProxy:(id)a3 willInvoke:(id)a4 onTarget:(id)a5;
- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)deleteStop;
- (void)find:(id)a3;
- (void)floatingControlsOverlayDidTapDirections:(id)a3;
- (void)hideSideBar:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)hideSideBar:(BOOL)a3 animation:(id)a4 completion:(id)a5;
- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4;
- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)mapViewDidStartUserInteraction:(id)a3;
- (void)mapViewWillStartRenderingMap:(id)a3;
- (void)newSceneInTab:(BOOL)a3;
- (void)notifySideBarVisibilityChanged:(BOOL)a3;
- (void)notifyToolbarOfRoutePlanningState:(id)a3;
- (void)orderFrontStandardAboutPanel:(id)a3;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)popSidebarViewController;
- (void)prepareMapViewForFirstUse;
- (void)presentAddNewCollection;
- (void)presentAddToCollection:(id)a3;
- (void)presentAddToFavorites;
- (void)pushSidebarViewController:(id)a3;
- (void)select3dMode;
- (void)setAppCoordinator:(id)a3;
- (void)setSidebarViewControllers:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)tapDirectionButton:(id)a3;
- (void)tapLocateMe:(id)a3;
- (void)tapShareButton:(id)a3;
- (void)tapUserProfileButton:(id)a3;
- (void)toggleMapScale;
- (void)toggleSidebar:(id)a3;
- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5;
- (void)updateMapViewDisplayOptions;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MacChromeViewController

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 unregisterObserver:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 registerObserver:self];
  }

  [(MacChromeViewController *)self _updateShareButton];
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [v6 updateMapEdgeInsets];

  [(MacChromeViewController *)self notifySideBarVisibilityChanged:a4 == 2];
}

- (void)chromeDelegateProxy:(id)a3 willInvoke:(id)a4 onTarget:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ChromeViewController *)self contexts];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = sub_10000B11C();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_28:

      [(ChromeViewController *)self popToRootContextAnimated:0 completion:0];
      goto LABEL_29;
    }

    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
LABEL_11:

      v35 = v19;
      v20 = v8;
      if (!v20)
      {
        v25 = @"<nil>";
LABEL_19:

        v26 = v25;
        v27 = NSStringFromSelector([v9 selector]);
        v28 = v10;
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
      v17 = [(MacChromeViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_9;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_9:

    goto LABEL_11;
  }

LABEL_29:
}

- (id)searchDataSourceLogDelegate
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (!v3)
  {
    v4 = [(ChromeViewController *)self contexts];
  }

  v5 = [v4 reverseObjectEnumerator];
  v6 = [v5 allObjects];

  if (!v3)
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
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

          v17 = [v16 BOOLValue];

          if (v17)
          {
            v18 = v11;
            goto LABEL_25;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = [v11 searchDataSourceLogContextDelegate];
LABEL_25:
          v8 = v18;
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

- (id)searchDataSourceDelegateForSelector:(SEL)a3
{
  v4 = [(ChromeViewController *)self pendingContexts];
  v5 = v4;
  if (!v4)
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  if (!v4)
  {
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
        v15 = v13;
LABEL_18:
        v14 = v15;
        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        v15 = [v13 searchDataSourceDelegate];
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

- (id)homeActionDelegateForSelector:(SEL)a3
{
  v4 = [(ChromeViewController *)self pendingContexts];
  v5 = v4;
  if (!v4)
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  if (!v4)
  {
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
        v15 = v13;
LABEL_18:
        v14 = v15;
        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        v15 = [v13 homeActionDelegate];
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

- (void)_setSidebarContentControllers:(id)a3 forContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (GEOConfigGetBOOL())
  {
    if (!self->_sidebarControllersForContext)
    {
      v8 = +[NSMapTable weakToStrongObjectsMapTable];
      sidebarControllersForContext = self->_sidebarControllersForContext;
      self->_sidebarControllersForContext = v8;
    }

    v10 = [v6 count];
    v11 = self->_sidebarControllersForContext;
    if (v10)
    {
      v12 = [v6 copy];
      [(NSMapTable *)v11 setObject:v12 forKey:v7];
    }

    else
    {
      [(NSMapTable *)v11 setObject:0 forKey:v7];
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

- (void)_updateSidebarWithAnimation:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    objc_initWeak(&location, v4);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1009DE4AC;
    v5[3] = &unk_101661340;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    [v4 addPreparation:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSidebarHiddenUserDefault:(BOOL)a3
{
  v3 = a3;
  if (GEOConfigGetBOOL())
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:v3 forKey:@"MapsDefaultHideSidebar"];
  }

  else
  {
    v6 = [(ChromeViewController *)self topContext];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      [v5 setBool:v3 forKey:@"MapsDefaultHideSidebar"];
    }
  }
}

- (BOOL)_shouldHideSidebar
{
  if (GEOConfigGetBOOL())
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"MapsDefaultHideSidebar"];
  }

  else
  {
    v3 = [(ChromeViewController *)self topContext];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

- (id)checkForInternetError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:NSURLErrorDomain])
  {
    v6 = [v4 code];

    if (v6 == -1009)
    {
      v7 = v4;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:@"UnderlyingErrors"];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 userInfo];
    v12 = [v11 objectForKey:@"UnderlyingErrors"];

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

  v19 = [v4 userInfo];
  v20 = [v19 objectForKey:@"SimpleTileRequesterUnderlyingErrors"];
  v7 = [v20 count];

  if (!v7)
  {
    goto LABEL_26;
  }

  v21 = [v4 userInfo];
  v22 = [v21 objectForKey:@"SimpleTileRequesterUnderlyingErrors"];

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
  v3 = [(ChromeViewController *)self mapView];
  v4 = [(MacChromeViewController *)self masterViewController];
  v8[1] = v4;
  v5 = [(MacChromeViewController *)self detailViewController];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3
{
  v4 = a3;
  if ([(MacChromeViewController *)self isCurrentInteractionDidDeselect])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(ChromeViewController *)self mapView];
    v7 = [v6 _mapLayer];
    v8 = [v7 selectedLabelMarker];

    if (!v8)
    {
      v9 = [(ChromeViewController *)self mapView];
      v10 = [v9 _mapLayer];
      [v10 clearPreviouslySelectedLabelMarker];
    }

    v13.receiver = self;
    v13.super_class = MacChromeViewController;
    v5 = [(IOSBasedChromeViewController *)&v13 mapViewShouldHandleTapToDeselect:v4];
    if (v5)
    {
      v11 = [(MacChromeViewController *)self _macBaseActionCoordinator];
      [v11 handleMapViewTapToDeselect];
    }

    [(MacChromeViewController *)self setCurrentInteractionDidDeselect:1];
  }

  return v5;
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MacChromeViewController *)self setCurrentInteractionDidDeselect:1];
  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v8 mapView:v7 didDeselectLabelMarker:v6];
}

- (void)mapViewDidStartUserInteraction:(id)a3
{
  v4 = a3;
  [(MacChromeViewController *)self setCurrentInteractionDidDeselect:0];
  v5 = [(ChromeViewController *)self topContext];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ChromeViewController *)self topContext];
    [v7 mapViewDidStartUserInteraction:v4];
  }

  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v8 mapViewDidStartUserInteraction:v4];
}

- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v7 mapView:a3 canEnter3DModeDidChange:a4];
  v5 = [(IOSBasedChromeViewController *)self canEnter3dMode];
  v6 = [(MacChromeViewController *)self toolbarController];
  [v6 setThirdDimensionButtonEnabled:v5];
}

- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v7 mapView:a3 didChangeLookAroundAvailability:?];
  v6 = [(MacChromeViewController *)self toolbarController];
  [v6 setLookAroundEnabled:a4 == 2];
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v8 mapView:a3 didChangeUserTrackingMode:a4 animated:a5];
  v7 = [(MacChromeViewController *)self toolbarController];
  [v7 setLocationButtonActive:a4 == 1];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v7 mapViewDidFinishRenderingMap:a3 fullyRendered:a4];
  if (self->_mapLoadedWithoutError)
  {
    v5 = [(IOSBasedChromeViewController *)self errorString];

    if (v5)
    {
      [(IOSBasedChromeViewController *)self setErrorString:0];
      v6 = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      [v6 refreshTitle];
    }
  }
}

- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v21 mapViewDidFailLoadingMap:a3 withError:v6];
  self->_mapLoadedWithoutError = 0;
  v7 = [(MacChromeViewController *)self checkForInternetError:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;

    v6 = v9;
  }

  v10 = [v6 domain];
  v11 = [v6 code];
  if ([v10 isEqualToString:NSURLErrorDomain])
  {
    v12 = +[NSBundle mainBundle];
    v13 = v12;
    if (v11 == -1009)
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
    v16 = [v10 isEqualToString:v15];

    v17 = 0;
    if (!v16 || v11 != -9)
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
    v18 = [(IOSBasedChromeViewController *)self errorString];
    v19 = [v18 isEqualToString:v17];

    if ((v19 & 1) == 0)
    {
      [(IOSBasedChromeViewController *)self setErrorString:v17];
      v20 = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      [v20 refreshTitle];
    }
  }

LABEL_13:
}

- (void)mapViewWillStartRenderingMap:(id)a3
{
  v4.receiver = self;
  v4.super_class = MacChromeViewController;
  [(MacChromeViewController *)&v4 mapViewWillStartRenderingMap:a3];
  self->_mapLoadedWithoutError = 1;
}

- (id)_macBaseActionCoordinator
{
  v2 = [(IOSBasedChromeViewController *)self appCoordinator];
  v3 = [v2 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(MacChromeViewController *)self _sharingEnabled];
  v4 = [(MacChromeViewController *)self toolbarController];
  [v4 setShareButtonEnabled:v3];
}

- (BOOL)_sharingEnabled
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  v4 = [v3 platformController];

  v5 = [v4 currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 currentRouteCollection];
    v7 = [v6 currentRoute];
    if ([v7 isMultipointRoute])
    {
      v8 = [(IOSBasedChromeViewController *)self currentShareItemSource];
      v9 = v8 != 0;
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

- (void)notifyToolbarOfRoutePlanningState:(id)a3
{
  v4 = [a3 object];
  v5 = [(IOSBasedChromeViewController *)self appCoordinator];
  v6 = [v5 baseActionCoordinator];

  if (v4 == v6)
  {
    v10 = [(IOSBasedChromeViewController *)self appCoordinator];
    v7 = [v10 baseActionCoordinator];
    v8 = [v7 isRoutePlanningPresented];
    v9 = [(MacChromeViewController *)self toolbarController];
    [v9 setRoutePlanningButtonActive:v8];
  }
}

- (id)currentCollectionShareItemSource
{
  v9.receiver = self;
  v9.super_class = MacChromeViewController;
  v3 = [(IOSBasedChromeViewController *)&v9 currentCollectionShareItemSource];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MacChromeViewController *)self _macBaseActionCoordinator];
    v7 = [v6 injectedCollection];
    if (v7)
    {
      v5 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:v7];
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

  v7 = [(ChromeViewController *)self mapView];
  v8 = [v7 mapAttributionWithStringAttributes:v6 underlineText:1 linkAttribution:1];

  v9 = [v8 string];

  return v9;
}

- (void)orderFrontStandardAboutPanel:(id)a3
{
  v3 = [(MacChromeViewController *)self _mapAndWeatherAttribution];
  v4 = v3;
  if (v3)
  {
    v7 = @"Credits";
    v8 = v3;
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

- (void)newSceneInTab:(BOOL)a3
{
  v16 = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
  v4 = [v16 entryPointsCoordinator];
  v5 = [v4 launchAlertsManager];
  if ([v5 currentlyShowingAlert])
  {
  }

  else
  {
    v6 = +[MapsWelcomeScreenViewController mapsWelcomeCurrentlyBeingPresented];

    if ((v6 & 1) == 0)
    {
      v7 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
      [v7 setEligibleForHandoff:0];
      v8 = [(MacChromeViewController *)self _maps_mapsSceneDelegate];
      v9 = [v8 mapsActivityWithFidelity:2];

      v10 = [v9 data];
      v11 = [v10 bzip2CompressedData];

      if (v11)
      {
        v17 = @"bs";
        v18 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v7 setUserInfo:v12];
      }

      v13 = objc_alloc_init(UISceneActivationRequestOptions);
      v14 = [(MacChromeViewController *)self _maps_uiScene];
      [v13 setRequestingScene:v14];

      v15 = +[UIApplication sharedApplication];
      [v15 requestSceneSessionActivation:0 userActivity:v7 options:v13 errorHandler:0];
    }
  }
}

- (void)presentAddToFavorites
{
  v5 = [(IOSBasedChromeViewController *)self appCoordinator];
  v3 = [v5 baseActionCoordinator];
  v4 = +[ShortcutEditSession addSession];
  [v3 viewController:self showAddShortcut:v4];
}

- (void)presentAddToCollection:(id)a3
{
  v4 = [a3 propertyList];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = +[CollectionManager sharedManager];
  v6 = [v5 currentCollections];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v16 = [(IOSBasedChromeViewController *)self appCoordinator];
    v17 = [v16 baseActionCoordinator];
    [v17 viewController:self addItemsFromACToCollection:v15];

    v6 = v14;
  }

LABEL_12:

LABEL_13:
}

- (void)presentAddNewCollection
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  v4 = [v3 baseActionCoordinator];
  [v4 viewController:self createNewCollectionWithSession:0];

  [GEOAPPortal captureUserAction:2072 target:0 value:0];
}

- (id)urlForRoute:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MKURLSerializer);
  if ([v4 transportType] == 1)
  {
    v6 = [v4 routeAttributes];
    v7 = [v6 hasTimepoint];

    if (v7)
    {
      v8 = [v4 routeAttributes];
      v9 = v8;
      if (v8)
      {
        [v8 timepoint];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  v10 = [v4 origin];
  v11 = [(MacChromeViewController *)self mapItemFromWaypoint:v10];

  v12 = [v4 destination];
  v13 = [(MacChromeViewController *)self mapItemFromWaypoint:v12];

  v14 = 0;
  if (v11 && v13)
  {
    v15 = [v4 transportType];
    if (v15 > 5)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_1012160D0[v15];
    }

    v14 = [v5 urlForDirectionsFromMapItem:v11 toMapItem:v13 transportType:v16 options:0];
  }

  return v14;
}

- (id)mapItemFromWaypoint:(id)a3
{
  v3 = a3;
  v4 = [v3 geoMapItem];
  if (v4)
  {
    v5 = [[MKMapItem alloc] initWithGeoMapItem:v4 isPlaceHolderPlace:0];
  }

  else
  {
    v6 = [v3 location];
    [v6 coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [[CLLocation alloc] initWithLatitude:v8 longitude:v10];
    v5 = [[MKMapItem alloc] initWithCLLocation:v11];
  }

  return v5;
}

- (void)find:(id)a3
{
  v4 = [(ChromeViewController *)self topContext];
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
  v2 = [(IOSBasedChromeViewController *)self appCoordinator];
  v3 = [v2 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 containerViewController];

  v7 = [v6 currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 routeSearchViewController];

  return v10;
}

- (void)deleteStop
{
  v2 = [(MacChromeViewController *)self _currentRouteSearchViewController];
  [v2 deleteCurrentFieldIndex];
}

- (BOOL)canDeleteStop
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  if ([v3 isRoutePlanningPresented])
  {
    v4 = [(MacChromeViewController *)self _currentRouteSearchViewController];
    v5 = [v4 canDeleteCurrentFieldIndex];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleMapScale
{
  v2 = +[MapsSettings alwaysShowScale]^ 1;

  [MapsSettings setAlwaysShowScale:v2];
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  if (v5 == "toggleSidebar:")
  {
    v7 = [(MacChromeViewController *)self _sidebarVisible];
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = @"[Menu] Hide Sidebar";
    }

    else
    {
      v10 = @"[Menu] Show Sidebar";
    }

    goto LABEL_15;
  }

  v6 = v5;
  if (v5 == "toggleDirections")
  {
    v9 = [(IOSBasedChromeViewController *)self appCoordinator];
    [v4 _maps_setUseDisableFeatureTitle:{objc_msgSend(v9, "isRoutePlanningPresented")}];
LABEL_16:

    goto LABEL_19;
  }

  if (v5 == "toggleMapScale")
  {
    [v4 _maps_setUseDisableFeatureTitle:{+[MapsSettings alwaysShowScale](MapsSettings, "alwaysShowScale")}];
    goto LABEL_19;
  }

  if (v5 == "deleteStop" && ![(MacChromeViewController *)self canDeleteStop]|| v6 == "delete:" || v6 == "pasteAndMatchStyle:")
  {
    goto LABEL_17;
  }

  if (v6 == "copy:")
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Copy Link";
LABEL_15:
    v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    [v4 setTitle:v11];

    goto LABEL_16;
  }

  if (v6 == "redo:")
  {
LABEL_17:
    [v4 setAttributes:4];
    goto LABEL_19;
  }

  v12.receiver = self;
  v12.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v12 validateCommand:v4];
LABEL_19:
}

- (UIEdgeInsets)labelEdgeInsets
{
  v3 = 0.0;
  if ([(MacChromeViewController *)self _sidebarVisible])
  {
    v4 = [(MacChromeViewController *)self splitViewController];
    [v4 primaryColumnWidth];
    v3 = v5;
  }

  v6 = [(MacChromeViewController *)self view];
  v7 = [v6 effectiveUserInterfaceLayoutDirection];

  v8 = [(MacChromeViewController *)self view];
  [v8 safeAreaInsets];
  v10 = v9;

  if (v7 == 1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  if (v7 == 1)
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
  v2 = [(MacChromeViewController *)self splitViewController];
  v3 = [v2 displayMode] == 2;

  return v3;
}

- (void)tapUserProfileButton:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v3 openUserProfile];
}

- (void)tapShareButton:(id)a3
{
  v14 = [(MacChromeViewController *)self view];
  [v14 bounds];
  Width = CGRectGetWidth(v16);
  [v14 bounds];
  MinY = CGRectGetMinY(v17);
  v6 = [(MacChromeViewController *)self view];
  v7 = [v6 effectiveUserInterfaceLayoutDirection];

  if (v7 == 1)
  {
    [v14 bounds];
    MinY = CGRectGetMinY(v18);
    v8 = 50.0;
  }

  else
  {
    v8 = Width + -50.0;
  }

  v9 = [(IOSBasedChromeViewController *)self currentShareItemSource];
  v10 = [[MapsActivityViewController alloc] initWithShareItem:v9];
  v11 = [(MapsActivityViewController *)v10 popoverPresentationController];
  [v11 setSourceView:v14];

  v12 = [(MapsActivityViewController *)v10 popoverPresentationController];
  [v12 setSourceRect:{v8, MinY + 33.0, 1.0, 1.0}];

  v13 = [(MapsActivityViewController *)v10 popoverPresentationController];
  [v13 setPermittedArrowDirections:1];

  [(MacChromeViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)tapDirectionButton:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v3 toggleRoutePlanning];
}

- (void)toggleSidebar:(id)a3
{
  v4 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MacChromeViewController *)self _sidebarVisible];
    [(MacChromeViewController *)self hideSideBar:v6 animated:1 completion:0];

    [(MacChromeViewController *)self _updateSidebarHiddenUserDefault:v6];
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
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:MKLocationErrorDomain];

    if (v7)
    {
      v8 = +[UIApplication sharedMapsDelegate];
      [v8 showLocationServicesAlertWithError:v5];
    }
  }
}

- (void)tapLocateMe:(id)a3
{
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v5 = [(ChromeViewController *)self mapView];
  v6 = v5;
  if (IsEnabled_SearchAndDiscovery)
  {
    [v5 _setUserTrackingMode:1 animated:1 fromTrackingButton:1];
  }

  else
  {
    [v5 setUserTrackingMode:1 animated:1];
  }

  [(MacChromeViewController *)self _showLocationServicesAlertIfNeeded];
}

- (void)hideSideBar:(BOOL)a3 animation:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(MacChromeViewController *)self splitViewController];
  v12 = [v11 displayMode];

  if (v12 == v10)
  {
    if (v9)
    {
      v9[2](v9, 1);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1009E0DB8;
    v13[3] = &unk_101631598;
    v16 = [v8 isAnimated];
    v13[4] = self;
    v15 = v10;
    v17 = v6;
    v14 = v9;
    [v8 addAnimations:v13];
  }
}

- (void)hideSideBar:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [GroupAnimation animationForAnimatedFlag:v5];
  v11 = v9;
  v10 = 0.200000003;
  if (!v5)
  {
    v10 = 0.0;
  }

  [v9 setDuration:v10];
  [(MacChromeViewController *)self hideSideBar:v6 animation:v11 completion:v8];

  [v11 runWithDefaultOptions];
}

- (void)notifySideBarVisibilityChanged:(BOOL)a3
{
  v3 = a3;
  v4 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [v4 sidebarVisibilityDidChange:v3];
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
      v6 = [(IOSBasedChromeViewController *)self settingsController];
      v7 = [(ToolbarController *)v5 initWithSettingsController:v6];
      v8 = self->_toolbarController;
      self->_toolbarController = v7;

      toolbarController = self->_toolbarController;
    }

    v3 = toolbarController;
  }

  return v3;
}

- (void)floatingControlsOverlayDidTapDirections:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v3 toggleRoutePlanning];
}

- (id)topSidebarController_forTests
{
  v2 = [(MacChromeViewController *)self masterViewController];
  v3 = [v2 topContainee_forTests];

  return v3;
}

- (void)setSidebarViewControllers:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MacChromeViewController *)self masterViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009E12DC;
  v6[3] = &unk_1016619A8;
  objc_copyWeak(&v7, &location);
  [v5 setContainees:v4 animated:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)popSidebarViewController
{
  if (GEOConfigGetBOOL())
  {
    v5 = [(ChromeViewController *)self topContext];
    v3 = [(NSMapTable *)self->_sidebarControllersForContext objectForKey:?];
    v4 = [v3 mutableCopy];

    if ([v4 count])
    {
      [v4 removeLastObject];
      [(MacChromeViewController *)self _setSidebarContentControllers:v4 forContext:v5];
    }
  }

  else
  {
    v5 = [(MacChromeViewController *)self masterViewController];
    [v5 popContainee:1 completion:0];
  }
}

- (void)pushSidebarViewController:(id)a3
{
  v11 = a3;
  if (GEOConfigGetBOOL())
  {
    v4 = [(ChromeViewController *)self nextTopContext];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(ChromeViewController *)self topContext];
    }

    v7 = v6;

    v8 = [(NSMapTable *)self->_sidebarControllersForContext objectForKey:v7];
    v9 = [NSMutableArray arrayWithArray:v8];

    v10 = [v9 lastObject];

    if (v10 != v11)
    {
      [v9 addObject:v11];
      [(MacChromeViewController *)self _setSidebarContentControllers:v9 forContext:v7];
    }
  }

  else
  {
    v7 = [(MacChromeViewController *)self masterViewController];
    [v7 pushContainee:v11 animated:1 completion:0];
  }
}

- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v11.receiver = self;
  v11.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v11 updateComponent:v8 forTiming:a4 withAnimation:v9];
  if (v8 == @"sidebar")
  {
    [(MacChromeViewController *)self _updateSidebarWithAnimation:v9];
  }

  else if (v8 == @"mapInsets")
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009E1654;
    v10[3] = &unk_101661B18;
    v10[4] = self;
    [v9 addAnimations:v10];
  }
}

- (id)allComponents
{
  v5.receiver = self;
  v5.super_class = MacChromeViewController;
  v2 = [(IOSBasedChromeViewController *)&v5 allComponents];
  v3 = [v2 arrayByAddingObject:@"sidebar"];

  return v3;
}

- (unint64_t)viewportEdgesRespectingSafeAreaInsets
{
  v2 = [(MacChromeViewController *)self view];
  v3 = [v2 isWindowFullScreen];

  if (v3)
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
  v4 = [(ChromeViewController *)self mapView];
  [v4 setTintColor:v3];

  v5 = [(ChromeViewController *)self mapView];
  [v5 _setAutomaticallySnapsToNorth:1];
}

- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v21 contextStackDidUpdateFrom:a3 to:v8 withAnimation:v9];
  v10 = [v8 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v8 lastObject];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1009E1B44;
  v18[3] = &unk_101660130;
  v18[4] = self;
  v19 = isKindOfClass & 1;
  v20 = v13 & 1;
  [v9 addPreparation:v18];
  if ((isKindOfClass & 1) != 0 && (GEOConfigGetBOOL() & 1) == 0)
  {
    -[MacChromeViewController hideSideBar:animated:completion:](self, "hideSideBar:animated:completion:", -[MacChromeViewController _shouldHideSidebar](self, "_shouldHideSidebar"), [v9 isAnimated], 0);
  }

  if (v13)
  {
    [v8 lastObject];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1009E1CA0;
    v17 = v16[3] = &unk_101661738;
    v14 = v17;
    [v9 addCompletion:v16];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009E1CA8;
  v15[3] = &unk_101661B18;
  v15[4] = self;
  [v9 addAnimations:v15];
}

- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v20 contextStackWillUpdateFrom:v8 to:v9 withAnimation:v10];
  v11 = [v8 lastObject];
  v12 = [v9 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (GEOConfigGetBOOL())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 lastObject];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1009E1F8C;
      v17 = v16[3] = &unk_101661B18;
      v13 = v17;
      [v10 addPreparation:v16 animations:0 completion:0];
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1009E1F70;
    v18[3] = &unk_101661AE0;
    v18[4] = self;
    v19 = [v10 isAnimated];
    [v10 addPreparation:v18 animations:0 completion:0];
  }

  if (GEOConfigGetBOOL())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1009E1F9C;
    v14[3] = &unk_101661570;
    v14[4] = self;
    v15 = v9;
    [v10 addCompletion:v14];
  }
}

- (double)currentSidebarWidth
{
  v3 = [(MacChromeViewController *)self splitViewController];
  v4 = 0.0;
  if ([v3 displayMode] != 1)
  {
    v5 = [(MacChromeViewController *)self splitViewController];
    [v5 primaryColumnWidth];
    v4 = v6;
  }

  return v4;
}

- (void)_updateSidebarConstraints
{
  [(MacChromeViewController *)self currentSidebarWidth];
  v4 = sub_100019A44() + v3;
  v5 = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
  [v5 constant];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
    [v8 setConstant:v4];

    v9 = [(MacChromeViewController *)self mapViewInsetsSideBarWidthConstraint];
    [v9 setConstant:v4];

    v10 = [(MacChromeViewController *)self view];
    [v10 layoutIfNeeded];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:0];

    [(ChromeViewController *)self updateComponentsIfNeeded];
  }
}

- (void)_locationManagerApprovalDidChange:(id)a3
{
  v6 = +[MKLocationManager sharedLocationManager];
  if ([v6 isLocationServicesEnabled])
  {
    v4 = [v6 isLocationServicesApproved];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MacChromeViewController *)self toolbarController];
  [v5 setLocationServicesEnabled:v4];
}

- (void)_updateFullScreen
{
  v3 = [(MacChromeViewController *)self view];
  v4 = [v3 isWindowFullScreen];
  v5 = [(MacChromeViewController *)self masterViewController];
  [v5 setTopSafeAreaInsetConstraining:v4];

  [(ChromeViewController *)self updateViewportConstraints];

  [(ChromeViewController *)self updateOverlayContentConstraints];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v5 viewDidAppear:a3];
  v4 = [(ChromeViewController *)self mapView];
  [v4 becomeFirstResponder];

  [(MacChromeViewController *)self _updateFullScreen];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = MacChromeViewController;
  [(IOSBasedChromeViewController *)&v72 viewDidLoad];
  v3 = [[SupplementalStackViewController alloc] initWithTopSafeAreaInsetConstraining:0];
  [(MacChromeViewController *)self setMasterViewController:v3];

  v4 = [(MacChromeViewController *)self masterViewController];
  v5 = [v4 view];
  [v5 setClipsToBounds:1];

  v6 = objc_alloc_init(PassThroughViewController);
  [(PassThroughViewController *)v6 setDelegate:self];
  v7 = [(PassThroughViewController *)v6 view];
  [v7 setAccessibilityIdentifier:@"MacChromePassthroughView"];

  v71 = v6;
  [(MacChromeViewController *)self setDetailViewController:v6];
  v8 = [[BlurInWindowSplitViewController alloc] initWithStyle:1];
  [(MacChromeViewController *)self setSplitViewController:v8];

  v9 = [(MacChromeViewController *)self masterViewController];
  v74[0] = v9;
  v10 = [(MacChromeViewController *)self detailViewController];
  v74[1] = v10;
  v11 = [NSArray arrayWithObjects:v74 count:2];
  v12 = [(MacChromeViewController *)self splitViewController];
  [v12 setViewControllers:v11];

  v13 = [(MacChromeViewController *)self splitViewController];
  [v13 setPreferredPrimaryColumnWidthFraction:0.150000006];

  v14 = [(MacChromeViewController *)self splitViewController];
  [v14 setPresentsWithGesture:0];

  v15 = [(MacChromeViewController *)self splitViewController];
  [v15 setDisplayModeButtonVisibility:2];

  v16 = [(MacChromeViewController *)self splitViewController];
  [v16 setMinimumPrimaryColumnWidth:200.0];

  v17 = [(MacChromeViewController *)self splitViewController];
  [v17 setMaximumPrimaryColumnWidth:UISplitViewControllerAutomaticDimension];

  v18 = +[UIColor clearColor];
  v19 = [(MacChromeViewController *)self splitViewController];
  v20 = [v19 view];
  [v20 setBackgroundColor:v18];

  v21 = [(MacChromeViewController *)self splitViewController];
  [v21 setGutterWidth:0.0];

  v22 = [(MacChromeViewController *)self splitViewController];
  [v22 setPrimaryBackgroundStyle:1];

  if ([(MacChromeViewController *)self _shouldHideSidebar])
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = [(MacChromeViewController *)self splitViewController];
  [v24 setPreferredDisplayMode:v23];

  v25 = [(MacChromeViewController *)self splitViewController];
  [v25 setDelegate:self];

  v26 = [(MacChromeViewController *)self splitViewController];
  [(MacChromeViewController *)self addChildViewController:v26];

  v27 = [(MacChromeViewController *)self view];
  v28 = [(MacChromeViewController *)self splitViewController];
  v29 = [v28 view];
  v30 = [(ChromeViewController *)self mapView];
  [v27 insertSubview:v29 aboveSubview:v30];

  v31 = [(MacChromeViewController *)self splitViewController];
  [v31 didMoveToParentViewController:self];

  v70 = [(MacChromeViewController *)self splitViewController];
  v32 = [v70 view];
  v33 = [(MacChromeViewController *)self view];
  v34 = v32;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = [v34 topAnchor];
  v68 = [v33 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v75[0] = v67;
  v66 = [v34 leadingAnchor];
  v65 = [v33 leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v75[1] = v64;
  v35 = [v34 bottomAnchor];
  v36 = [v33 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v75[2] = v37;
  v38 = [v34 widthAnchor];

  v39 = [v33 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v75[3] = v40;
  v41 = [NSArray arrayWithObjects:v75 count:4];
  [NSLayoutConstraint activateConstraints:v41];

  v42 = [(ChromeViewController *)self viewportLayoutGuide];
  v43 = [v42 leadingAnchor];
  v44 = [(MacChromeViewController *)self view];
  v45 = [v44 safeAreaLayoutGuide];
  v46 = [v45 leadingAnchor];
  v47 = [v43 constraintGreaterThanOrEqualToAnchor:v46 constant:0.0];
  [(MacChromeViewController *)self setViewportSideBarWidthConstraint:v47];

  v48 = objc_alloc_init(NSMutableArray);
  v49 = sub_100019A44();
  v50 = [(MacChromeViewController *)self viewportSideBarWidthConstraint];
  v73[0] = v50;
  v51 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v52 = [v51 topAnchor];
  v53 = [(MacChromeViewController *)self mapInsetEdgesRespectingSafeAreaInsets];
  v54 = [(MacChromeViewController *)self view];
  v55 = v54;
  if (v53)
  {
    v70 = [v54 safeAreaLayoutGuide];
    [v70 topAnchor];
  }

  else
  {
    [v54 topAnchor];
  }
  v56 = ;
  v57 = [v52 constraintGreaterThanOrEqualToAnchor:v56 constant:v49];
  v73[1] = v57;
  v58 = [NSArray arrayWithObjects:v73 count:2];
  [v48 addObjectsFromArray:v58];

  if (v53)
  {

    v56 = v70;
  }

  [NSLayoutConstraint activateConstraints:v48];
  v59 = +[NSNotificationCenter defaultCenter];
  [v59 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v60 = +[NSNotificationCenter defaultCenter];
  v61 = +[MapsSettings settingsUpdatedNotificationKey];
  [v60 addObserver:self selector:"updateMapViewSettings:" name:v61 object:0];

  v62 = +[NSNotificationCenter defaultCenter];
  [v62 addObserver:self selector:"notifyToolbarOfRoutePlanningState:" name:@"RoutePlanningPresentedDidChangeNotification" object:0];

  v63 = [(ChromeViewController *)self mapView];
  [v63 _forceFrame];
}

- (void)setAppCoordinator:(id)a3
{
  v6.receiver = self;
  v6.super_class = MacChromeViewController;
  v4 = a3;
  [(IOSBasedChromeViewController *)&v6 setAppCoordinator:v4];
  v5 = [v4 platformController];

  [v5 registerObserver:self];
}

@end