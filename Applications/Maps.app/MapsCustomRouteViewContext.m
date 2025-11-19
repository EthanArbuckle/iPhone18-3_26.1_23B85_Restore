@interface MapsCustomRouteViewContext
- (BOOL)wantsCompassLayoutControl;
- (ChromeViewController)chromeViewController;
- (MapsCustomRouteViewContext)initWithExistingRoute:(id)a3;
- (MapsCustomRouteViewContext)initWithExistingRouteData:(id)a3;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)_analyticsValue;
- (id)_traits;
- (int)_analyticsTarget;
- (int64_t)preferredMapScaleVisibility;
- (void)_frameRouteAnimated:(BOOL)a3;
- (void)_insertRecenterButton;
- (void)_resetUserInteractionState;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)didSaveCustomRoute:(id)a3;
- (void)mapViewDidStartUserInteraction:(id)a3;
- (void)popContainee;
- (void)pressedRecenter;
- (void)pushSaveContaineeWithCompletionHandler:(id)a3;
- (void)pushSuggestedNavigationMode:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation MapsCustomRouteViewContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int)_analyticsTarget
{
  v2 = [(MapsCustomRouteViewContext *)self composedRoute];
  if ([v2 source] == 2)
  {
    v3 = 132;
  }

  else
  {
    v3 = 130;
  }

  return v3;
}

- (id)_analyticsValue
{
  v3 = [(MapsCustomRouteViewContext *)self routeData];
  v4 = [v3 mapItemMuid];

  if (v4)
  {
    v5 = [(MapsCustomRouteViewContext *)self routeData];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v5 mapItemMuid]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pressedRecenter
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsCustomRouteViewContext *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] pressed recenter", buf, 0xCu);
  }

  [(MapsCustomRouteViewContext *)self _resetUserInteractionState];
  [(MapsCustomRouteViewContext *)self _frameRouteAnimated:1];
}

- (void)_frameRouteAnimated:(BOOL)a3
{
  if (self->_userInteractedWithMap)
  {
    if (self->_loggedFirstCameraSuppress)
    {
      v4 = sub_1007989A4();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = self;
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MapsCustomRouteViewContext *)v5 performSelector:"accessibilityIdentifier"];
          v9 = v8;
          if (v8 && ![v8 isEqualToString:v7])
          {
            v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

            goto LABEL_9;
          }
        }

        v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

        *buf = 138543362;
        v34 = v10;
        v11 = v4;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}@] Will suppress camera update, user has interacted with map since last update", buf, 0xCu);
      }

LABEL_28:

      return;
    }

    self->_loggedFirstCameraSuppress = 1;
    v4 = sub_1007989A4();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v26 = self;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(MapsCustomRouteViewContext *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_26;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_26:

    *buf = 138543362;
    v34 = v10;
    v11 = v4;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  v13 = a3;
  v14 = sub_1007989A4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(MapsCustomRouteViewContext *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_16;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_16:

    *buf = 138543618;
    v34 = v20;
    v35 = 1024;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] _frameRouteAnimated: %d", buf, 0x12u);
  }

  v21 = 0.3;
  if (!v13)
  {
    v21 = 0.0;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1007C0FD4;
  v31[3] = &unk_101661B18;
  v31[4] = self;
  [UIView animateWithDuration:v31 animations:v21];
  v22 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v23 = [v22 mapCameraController];
  v24 = [(MapsCustomRouteViewContext *)self composedRoute];
  v32 = v24;
  v25 = [NSArray arrayWithObjects:&v32 count:1];
  [v23 frameRoutes:v25 includeCompassInset:0 animated:v13 completion:0];
}

- (void)_insertRecenterButton
{
  v3 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v4 = [v3 viewport];

  v5 = [(CardView *)self->_recenterButtonContainer contentView];
  [v5 addSubview:self->_recenterButton];

  [v4 addSubview:self->_recenterButtonContainer];
  v25 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
  v23 = v4;
  v24 = [v4 trailingAnchor];
  v22 = [v25 constraintEqualToAnchor:v24 constant:-10.0];
  v26[0] = v22;
  v21 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
  v20 = [v4 bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:-10.0];
  v26[1] = v19;
  v18 = [(UIButton *)self->_recenterButton leadingAnchor];
  v17 = [(CardView *)self->_recenterButtonContainer leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v26[2] = v16;
  v6 = [(UIButton *)self->_recenterButton trailingAnchor];
  v7 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v26[3] = v8;
  v9 = [(UIButton *)self->_recenterButton topAnchor];
  v10 = [(CardView *)self->_recenterButtonContainer topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[4] = v11;
  v12 = [(UIButton *)self->_recenterButton bottomAnchor];
  v13 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v26[5] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:6];
  [NSLayoutConstraint activateConstraints:v15];
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v3 = [RouteAnnotationsMutableConfiguration alloc];
  v4 = [(MapsCustomRouteViewContext *)self composedRoute];
  v5 = [(RouteAnnotationsConfiguration *)v3 initWithRoute:v4];

  [(RouteAnnotationsConfiguration *)v5 setRouteTrafficFeaturesActive:0];
  v6 = [(RouteAnnotationsMutableConfiguration *)v5 copy];

  return v6;
}

- (BOOL)wantsCompassLayoutControl
{
  v2 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v3 = sub_10000FA08(v2) != 5;

  return v3;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007C155C;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [v7 addPreparation:v15];
  v8 = [v6 currentContextTransition];
  v9 = [v8 enterAnimation];

  if (v9)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1007C1638;
    v13[3] = &unk_101661B98;
    v10 = &v14;
    objc_copyWeak(&v14, &location);
    [v9 addAnimations:v13];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007C1684;
    v11[3] = &unk_1016619A8;
    v10 = &v12;
    objc_copyWeak(&v12, &location);
    [v7 addCompletion:v11];
  }

  objc_destroyWeak(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isAnimated];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007C1888;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007C1994;
  v12[3] = &unk_101661368;
  objc_copyWeak(&v13, &location);
  v14 = v8;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007C19E8;
  v9[3] = &unk_10162A208;
  objc_copyWeak(&v10, &location);
  v11 = v8;
  [v7 addPreparation:v15 animations:v12 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int64_t)preferredMapScaleVisibility
{
  v2 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v3 = sub_10000FA08(v2) == 5;

  return v3;
}

- (void)_resetUserInteractionState
{
  if (self->_userInteractedWithMap)
  {
    v3 = sub_1007989A4();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      *&self->_userInteractedWithMap = 0;
      return;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsCustomRouteViewContext *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing user interacted state, will allow camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)mapViewDidStartUserInteraction:(id)a3
{
  v4 = a3;
  if (!self->_userInteractedWithMap)
  {
    v5 = sub_1007989A4();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_userInteractedWithMap = 1;
      goto LABEL_10;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MapsCustomRouteViewContext *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] User started interacting with map, will suppress camera updates", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  [(CardView *)self->_recenterButtonContainer alpha];
  if (v12 < 1.0)
  {
    v13 = sub_1007989A4();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_18:

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1007C1F38;
      v20[3] = &unk_101661B18;
      v20[4] = self;
      [UIView animateWithDuration:v20 animations:0.3];
      goto LABEL_19;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(MapsCustomRouteViewContext *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

    *buf = 138543362;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] animating to show recenter button", buf, 0xCu);

    goto LABEL_18;
  }

LABEL_19:
}

- (void)didSaveCustomRoute:(id)a3
{
  v4 = sub_1007989A4();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v5 = self;
  if (!v5)
  {
    v10 = @"<nil>";
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MapsCustomRouteViewContext *)v5 performSelector:"accessibilityIdentifier"];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:v7])
    {
      v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

      goto LABEL_8;
    }
  }

  v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
  *buf = 138543618;
  v15 = v10;
  v16 = 2080;
  v17 = "[MapsCustomRouteViewContext didSaveCustomRoute:]";
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);

LABEL_11:
  [(GEOComposedRoute *)self->_composedRoute updateWithPersistentData:self->_routeData];
  [(NSMutableArray *)self->_containees removeLastObject];
  v11 = [(MapsCustomRouteViewContext *)self chromeViewController];
  [v11 setNeedsUpdateComponent:@"cards" animated:1];

  saveCompletionHandler = self->_saveCompletionHandler;
  if (saveCompletionHandler)
  {
    saveCompletionHandler[2]();
    v13 = self->_saveCompletionHandler;
    self->_saveCompletionHandler = 0;
  }
}

- (void)popContainee
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsCustomRouteViewContext *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = v9;
    v14 = 2080;
    v15 = "[MapsCustomRouteViewContext popContainee]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  [(NSMutableArray *)self->_containees removeLastObject];
  v10 = [(MapsCustomRouteViewContext *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"cards" animated:1];

  saveCompletionHandler = self->_saveCompletionHandler;
  self->_saveCompletionHandler = 0;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MapsCustomRouteViewContext *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v22 = v11;
    v23 = 2080;
    v24 = "[MapsCustomRouteViewContext containeeViewControllerGoToPreviousState:withSender:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  v12 = [(MapsCustomRouteViewContext *)self exitRouteCreationOnClose];
  v13 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 contexts];

    if ([v15 count] < 2)
    {
LABEL_17:
      v18 = 0;
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (++v16 >= [v15 count])
        {
          goto LABEL_17;
        }
      }

      v18 = v16 - 1;
    }

    v19 = [(MapsCustomRouteViewContext *)self chromeViewController];
    v20 = [v15 objectAtIndexedSubscript:v18];
    [v19 popToContext:v20 animated:1 completion:0];
  }

  else
  {
    [v13 popContext:self animated:1 completion:0];
    v15 = v14;
  }
}

- (id)_traits
{
  v3 = +[GEOMapService sharedService];
  v4 = [v3 defaultUserInitiatedTraits];

  v5 = [(MapsCustomRouteViewContext *)self chromeViewController];
  v6 = [v5 currentTraits];

  if (v6)
  {
    [v4 copyTo:v6];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)pushSaveContaineeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MapsCustomRouteViewContext *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v17 = v11;
    v18 = 2080;
    v19 = "[MapsCustomRouteViewContext pushSaveContaineeWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  v12 = objc_retainBlock(v4);
  saveCompletionHandler = self->_saveCompletionHandler;
  self->_saveCompletionHandler = v12;

  v14 = [(MapsCustomRouteViewContext *)self _traits];
  [(MapsSaveRouteContainee *)self->_saveRouteContainee setTraits:v14];

  [(NSMutableArray *)self->_containees addObject:self->_saveRouteContainee];
  v15 = [(MapsCustomRouteViewContext *)self chromeViewController];
  [v15 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)pushSuggestedNavigationMode:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(MapsCustomRouteViewContext *)self composedRoute];
  v8 = [v7 userProvidedName];
  if ([v8 length])
  {
    [v7 userProvidedName];
  }

  else
  {
    [v7 name];
  }
  v9 = ;

  v10 = [(MapsCustomRouteViewContext *)self chromeViewController];
  [v10 resetForcedExploreModernMapFlag];

  if (a3 - 1 < 3)
  {
    v11 = [(MapsCustomRouteViewContext *)self _analyticsTarget];
    v12 = [(MapsCustomRouteViewContext *)self _analyticsValue];
    [GEOAPPortal captureUserAction:3001 target:v11 value:v12];

    v13 = [(MapsCustomRouteViewContext *)self chromeViewController];
    v14 = [v13 _maps_platformController];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1007C2E80;
    v36[3] = &unk_101630FB0;
    v37 = v7;
    v38 = v9;
    v39 = v6;
    [v14 pushNavigationWithRoute:v37 navigationMode:a3 shouldCheckNavSafetyAlert:1 completion:v36];

    v15 = v37;
LABEL_32:

    goto LABEL_33;
  }

  if (a3 == 4)
  {
    v16 = [(MapsCustomRouteViewContext *)self _analyticsTarget];
    v17 = [(MapsCustomRouteViewContext *)self _analyticsValue];
    [GEOAPPortal captureUserAction:6003 target:v16 value:v17];

    v18 = [(MapsCustomRouteViewContext *)self chromeViewController];
    v15 = [v18 contexts];

    v19 = sub_100030774(v15, &stru_10162A1E0);
    if (v19)
    {
      v20 = [(MapsCustomRouteViewContext *)self chromeViewController];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1007C2F40;
      v32[3] = &unk_1016605F8;
      v33 = v19;
      v34 = self;
      v35 = v6;
      [v20 popToContext:v33 animated:0 completion:v32];

      v21 = v33;
LABEL_30:

      goto LABEL_31;
    }

    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "[MapsCustomRouteViewContext pushSuggestedNavigationMode:withCompletionHandler:]";
      v42 = 2080;
      v43 = "MapsCustomRouteViewContext.m";
      v44 = 1024;
      v45 = 251;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v41 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v21 = sub_1007989A4();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_29;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(MapsCustomRouteViewContext *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_27;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v41 = v31;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Missing base mode controller for pushing route planning", buf, 0xCu);

    goto LABEL_30;
  }

  v22 = sub_10006D178();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v41 = "[MapsCustomRouteViewContext pushSuggestedNavigationMode:withCompletionHandler:]";
    v42 = 2080;
    v43 = "MapsCustomRouteViewContext.m";
    v44 = 1024;
    v45 = 279;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v15 = sub_10006D178();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v19 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:
}

- (MapsCustomRouteViewContext)initWithExistingRouteData:(id)a3
{
  v4 = a3;
  v5 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v4];

  v6 = [v5 buildRoute];
  v7 = [(MapsCustomRouteViewContext *)self initWithExistingRoute:v6];

  return v7;
}

- (MapsCustomRouteViewContext)initWithExistingRoute:(id)a3
{
  v5 = a3;
  v52.receiver = self;
  v52.super_class = MapsCustomRouteViewContext;
  v6 = [(MapsCustomRouteViewContext *)&v52 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composedRoute, a3);
    [(GEOComposedRoute *)v7->_composedRoute updateCustomRouteStartEndCaptions];
    v51 = v5;
    v8 = [v5 persistentData];
    routeData = v7->_routeData;
    v7->_routeData = v8;

    v10 = [[MapsCustomRouteViewContainee alloc] initWithContext:v7];
    customRouteViewContainee = v7->_customRouteViewContainee;
    v7->_customRouteViewContainee = v10;

    [(ContaineeViewController *)v7->_customRouteViewContainee setContaineeDelegate:v7];
    v12 = [NSMutableArray arrayWithObject:v7->_customRouteViewContainee];
    containees = v7->_containees;
    v7->_containees = v12;

    v14 = [[MapsSaveRouteContainee alloc] initWithDelegate:v7 isEditing:0 showInitialKeyboard:1];
    saveRouteContainee = v7->_saveRouteContainee;
    v7->_saveRouteContainee = v14;

    v16 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [(CardView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CardView *)v16 setLayoutStyle:6];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v17 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v18 = [v17 CGColor];
      v19 = [(CardView *)v16 layer];
      [v19 setBorderColor:v18];

      v20 = [(CardView *)v16 layer];
      [v20 setCornerRadius:8.0];

      v21 = [(CardView *)v16 layer];
      [v21 setBorderWidth:0.5];

      v22 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v23 = [v22 CGColor];
      v24 = [(CardView *)v16 layer];
      [v24 setShadowColor:v23];

      v25 = [(CardView *)v16 layer];
      LODWORD(v26) = *"\nף=";
      [v25 setShadowOpacity:v26];

      v27 = [(CardView *)v16 layer];
      [v27 setShadowOffset:{0.0, -2.0}];

      v28 = [(CardView *)v16 layer];
      [v28 setShadowPathIsBounds:1];
    }

    recenterButtonContainer = v7->_recenterButtonContainer;
    v7->_recenterButtonContainer = v16;
    v30 = v16;

    v31 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 44.0, 44.0}];
    [(UIButton *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v31 setAccessibilityIdentifier:@"RecenterButton"];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"[Route Creation][AX] Recenter on Route" value:@"localized string not found" table:0];
    [(UIButton *)v31 setAccessibilityLabel:v33];

    v34 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
    v50 = [UIImageSymbolConfiguration configurationWithFont:v34];

    v35 = [UIImage _systemImageNamed:@"location.bottomleft.forward.to.point.topright.scurvepath" withConfiguration:v50];
    [(UIButton *)v31 setImage:v35 forState:0];

    [(UIButton *)v31 addTarget:v7 action:"pressedRecenter" forControlEvents:64];
    [(CardView *)v30 setAlpha:0.0];
    v36 = [UIColor colorWithDynamicProvider:&stru_10162A1C0];
    [(UIButton *)v31 setTintColor:v36];

    [(UIButton *)v31 imageEdgeInsets];
    [(UIButton *)v31 setImageEdgeInsets:?];
    recenterButton = v7->_recenterButton;
    v7->_recenterButton = v31;
    v48 = v31;

    v38 = v30;
    v49 = [(CardView *)v30 widthAnchor];
    v39 = [v49 constraintEqualToConstant:44.0];
    v53[0] = v39;
    v40 = [(CardView *)v30 heightAnchor];
    v41 = [v40 constraintEqualToConstant:44.0];
    v53[1] = v41;
    v42 = [(UIButton *)v7->_recenterButton widthAnchor];
    v43 = [v42 constraintEqualToConstant:44.0];
    v53[2] = v43;
    v44 = [(UIButton *)v7->_recenterButton heightAnchor];
    v45 = [v44 constraintEqualToConstant:44.0];
    v53[3] = v45;
    v46 = [NSArray arrayWithObjects:v53 count:4];
    [NSLayoutConstraint activateConstraints:v46];

    v5 = v51;
  }

  return v7;
}

@end