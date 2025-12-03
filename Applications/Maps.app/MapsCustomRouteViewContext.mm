@interface MapsCustomRouteViewContext
- (BOOL)wantsCompassLayoutControl;
- (ChromeViewController)chromeViewController;
- (MapsCustomRouteViewContext)initWithExistingRoute:(id)route;
- (MapsCustomRouteViewContext)initWithExistingRouteData:(id)data;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)_analyticsValue;
- (id)_traits;
- (int)_analyticsTarget;
- (int64_t)preferredMapScaleVisibility;
- (void)_frameRouteAnimated:(BOOL)animated;
- (void)_insertRecenterButton;
- (void)_resetUserInteractionState;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)didSaveCustomRoute:(id)route;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)popContainee;
- (void)pressedRecenter;
- (void)pushSaveContaineeWithCompletionHandler:(id)handler;
- (void)pushSuggestedNavigationMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation MapsCustomRouteViewContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int)_analyticsTarget
{
  composedRoute = [(MapsCustomRouteViewContext *)self composedRoute];
  if ([composedRoute source] == 2)
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
  routeData = [(MapsCustomRouteViewContext *)self routeData];
  mapItemMuid = [routeData mapItemMuid];

  if (mapItemMuid)
  {
    routeData2 = [(MapsCustomRouteViewContext *)self routeData];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [routeData2 mapItemMuid]);
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
      v7 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] pressed recenter", buf, 0xCu);
  }

  [(MapsCustomRouteViewContext *)self _resetUserInteractionState];
  [(MapsCustomRouteViewContext *)self _frameRouteAnimated:1];
}

- (void)_frameRouteAnimated:(BOOL)animated
{
  if (self->_userInteractedWithMap)
  {
    if (self->_loggedFirstCameraSuppress)
    {
      v4 = sub_1007989A4();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        selfCopy = self;
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
          v9 = v8;
          if (v8 && ![v8 isEqualToString:v7])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

            goto LABEL_9;
          }
        }

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

        *buf = 138543362;
        v34 = selfCopy;
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

    selfCopy2 = self;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(MapsCustomRouteViewContext *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy2, v30];

        goto LABEL_26;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy2];
LABEL_26:

    *buf = 138543362;
    v34 = selfCopy;
    v11 = v4;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  animatedCopy = animated;
  v14 = sub_1007989A4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(MapsCustomRouteViewContext *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy3, v19];

        goto LABEL_16;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy3];
LABEL_16:

    *buf = 138543618;
    v34 = selfCopy3;
    v35 = 1024;
    v36 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] _frameRouteAnimated: %d", buf, 0x12u);
  }

  v21 = 0.3;
  if (!animatedCopy)
  {
    v21 = 0.0;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1007C0FD4;
  v31[3] = &unk_101661B18;
  v31[4] = self;
  [UIView animateWithDuration:v31 animations:v21];
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  mapCameraController = [chromeViewController mapCameraController];
  composedRoute = [(MapsCustomRouteViewContext *)self composedRoute];
  v32 = composedRoute;
  v25 = [NSArray arrayWithObjects:&v32 count:1];
  [mapCameraController frameRoutes:v25 includeCompassInset:0 animated:animatedCopy completion:0];
}

- (void)_insertRecenterButton
{
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  viewport = [chromeViewController viewport];

  contentView = [(CardView *)self->_recenterButtonContainer contentView];
  [contentView addSubview:self->_recenterButton];

  [viewport addSubview:self->_recenterButtonContainer];
  trailingAnchor = [(CardView *)self->_recenterButtonContainer trailingAnchor];
  v23 = viewport;
  trailingAnchor2 = [viewport trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v26[0] = v22;
  bottomAnchor = [(CardView *)self->_recenterButtonContainer bottomAnchor];
  bottomAnchor2 = [viewport bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v26[1] = v19;
  leadingAnchor = [(UIButton *)self->_recenterButton leadingAnchor];
  leadingAnchor2 = [(CardView *)self->_recenterButtonContainer leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[2] = v16;
  trailingAnchor3 = [(UIButton *)self->_recenterButton trailingAnchor];
  trailingAnchor4 = [(CardView *)self->_recenterButtonContainer trailingAnchor];
  v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v26[3] = v8;
  topAnchor = [(UIButton *)self->_recenterButton topAnchor];
  topAnchor2 = [(CardView *)self->_recenterButtonContainer topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[4] = v11;
  bottomAnchor3 = [(UIButton *)self->_recenterButton bottomAnchor];
  bottomAnchor4 = [(CardView *)self->_recenterButtonContainer bottomAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v26[5] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:6];
  [NSLayoutConstraint activateConstraints:v15];
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v3 = [RouteAnnotationsMutableConfiguration alloc];
  composedRoute = [(MapsCustomRouteViewContext *)self composedRoute];
  v5 = [(RouteAnnotationsConfiguration *)v3 initWithRoute:composedRoute];

  [(RouteAnnotationsConfiguration *)v5 setRouteTrafficFeaturesActive:0];
  v6 = [(RouteAnnotationsMutableConfiguration *)v5 copy];

  return v6;
}

- (BOOL)wantsCompassLayoutControl
{
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  v3 = sub_10000FA08(chromeViewController) != 5;

  return v3;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007C155C;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  [animationCopy addPreparation:v15];
  currentContextTransition = [controllerCopy currentContextTransition];
  enterAnimation = [currentContextTransition enterAnimation];

  if (enterAnimation)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1007C1638;
    v13[3] = &unk_101661B98;
    v10 = &v14;
    objc_copyWeak(&v14, &location);
    [enterAnimation addAnimations:v13];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007C1684;
    v11[3] = &unk_1016619A8;
    v10 = &v12;
    objc_copyWeak(&v12, &location);
    [animationCopy addCompletion:v11];
  }

  objc_destroyWeak(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  isAnimated = [animationCopy isAnimated];
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
  v14 = isAnimated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007C19E8;
  v9[3] = &unk_10162A208;
  objc_copyWeak(&v10, &location);
  v11 = isAnimated;
  [animationCopy addPreparation:v15 animations:v12 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int64_t)preferredMapScaleVisibility
{
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  v3 = sub_10000FA08(chromeViewController) == 5;

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

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing user interacted state, will allow camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (!self->_userInteractedWithMap)
  {
    v5 = sub_1007989A4();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_userInteractedWithMap = 1;
      goto LABEL_10;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    *buf = 138543362;
    v22 = selfCopy;
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

    selfCopy2 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(MapsCustomRouteViewContext *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy2, v18];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy2];
LABEL_17:

    *buf = 138543362;
    v22 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] animating to show recenter button", buf, 0xCu);

    goto LABEL_18;
  }

LABEL_19:
}

- (void)didSaveCustomRoute:(id)route
{
  v4 = sub_1007989A4();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:v7])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

LABEL_10:
  *buf = 138543618;
  v15 = selfCopy;
  v16 = 2080;
  v17 = "[MapsCustomRouteViewContext didSaveCustomRoute:]";
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);

LABEL_11:
  [(GEOComposedRoute *)self->_composedRoute updateWithPersistentData:self->_routeData];
  [(NSMutableArray *)self->_containees removeLastObject];
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];

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
      v7 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v15 = "[MapsCustomRouteViewContext popContainee]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  [(NSMutableArray *)self->_containees removeLastObject];
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];

  saveCompletionHandler = self->_saveCompletionHandler;
  self->_saveCompletionHandler = 0;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
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
      v9 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v22 = selfCopy;
    v23 = 2080;
    v24 = "[MapsCustomRouteViewContext containeeViewControllerGoToPreviousState:withSender:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  exitRouteCreationOnClose = [(MapsCustomRouteViewContext *)self exitRouteCreationOnClose];
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  v14 = chromeViewController;
  if (exitRouteCreationOnClose)
  {
    contexts = [chromeViewController contexts];

    if ([contexts count] < 2)
    {
LABEL_17:
      v18 = 0;
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = [contexts objectAtIndexedSubscript:v16];
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

        if (++v16 >= [contexts count])
        {
          goto LABEL_17;
        }
      }

      v18 = v16 - 1;
    }

    chromeViewController2 = [(MapsCustomRouteViewContext *)self chromeViewController];
    v20 = [contexts objectAtIndexedSubscript:v18];
    [chromeViewController2 popToContext:v20 animated:1 completion:0];
  }

  else
  {
    [chromeViewController popContext:self animated:1 completion:0];
    contexts = v14;
  }
}

- (id)_traits
{
  v3 = +[GEOMapService sharedService];
  defaultUserInitiatedTraits = [v3 defaultUserInitiatedTraits];

  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  if (currentTraits)
  {
    [defaultUserInitiatedTraits copyTo:currentTraits];
  }

  else
  {
    currentTraits = defaultUserInitiatedTraits;
  }

  return currentTraits;
}

- (void)pushSaveContaineeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
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
      v9 = [(MapsCustomRouteViewContext *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v17 = selfCopy;
    v18 = 2080;
    v19 = "[MapsCustomRouteViewContext pushSaveContaineeWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  v12 = objc_retainBlock(handlerCopy);
  saveCompletionHandler = self->_saveCompletionHandler;
  self->_saveCompletionHandler = v12;

  _traits = [(MapsCustomRouteViewContext *)self _traits];
  [(MapsSaveRouteContainee *)self->_saveRouteContainee setTraits:_traits];

  [(NSMutableArray *)self->_containees addObject:self->_saveRouteContainee];
  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)pushSuggestedNavigationMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  composedRoute = [(MapsCustomRouteViewContext *)self composedRoute];
  userProvidedName = [composedRoute userProvidedName];
  if ([userProvidedName length])
  {
    [composedRoute userProvidedName];
  }

  else
  {
    [composedRoute name];
  }
  v9 = ;

  chromeViewController = [(MapsCustomRouteViewContext *)self chromeViewController];
  [chromeViewController resetForcedExploreModernMapFlag];

  if (mode - 1 < 3)
  {
    _analyticsTarget = [(MapsCustomRouteViewContext *)self _analyticsTarget];
    _analyticsValue = [(MapsCustomRouteViewContext *)self _analyticsValue];
    [GEOAPPortal captureUserAction:3001 target:_analyticsTarget value:_analyticsValue];

    chromeViewController2 = [(MapsCustomRouteViewContext *)self chromeViewController];
    _maps_platformController = [chromeViewController2 _maps_platformController];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1007C2E80;
    v36[3] = &unk_101630FB0;
    v37 = composedRoute;
    v38 = v9;
    v39 = handlerCopy;
    [_maps_platformController pushNavigationWithRoute:v37 navigationMode:mode shouldCheckNavSafetyAlert:1 completion:v36];

    contexts = v37;
LABEL_32:

    goto LABEL_33;
  }

  if (mode == 4)
  {
    _analyticsTarget2 = [(MapsCustomRouteViewContext *)self _analyticsTarget];
    _analyticsValue2 = [(MapsCustomRouteViewContext *)self _analyticsValue];
    [GEOAPPortal captureUserAction:6003 target:_analyticsTarget2 value:_analyticsValue2];

    chromeViewController3 = [(MapsCustomRouteViewContext *)self chromeViewController];
    contexts = [chromeViewController3 contexts];

    v19 = sub_100030774(contexts, &stru_10162A1E0);
    if (v19)
    {
      chromeViewController4 = [(MapsCustomRouteViewContext *)self chromeViewController];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1007C2F40;
      v32[3] = &unk_1016605F8;
      v33 = v19;
      selfCopy = self;
      v35 = handlerCopy;
      [chromeViewController4 popToContext:v33 animated:0 completion:v32];

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

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_29;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(MapsCustomRouteViewContext *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy2, v30];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy2];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v41 = selfCopy2;
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
    contexts = sub_10006D178();
    if (!os_log_type_enabled(contexts, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v19 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&_mh_execute_header, contexts, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:
}

- (MapsCustomRouteViewContext)initWithExistingRouteData:(id)data
{
  dataCopy = data;
  v5 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:dataCopy];

  buildRoute = [v5 buildRoute];
  v7 = [(MapsCustomRouteViewContext *)self initWithExistingRoute:buildRoute];

  return v7;
}

- (MapsCustomRouteViewContext)initWithExistingRoute:(id)route
{
  routeCopy = route;
  v52.receiver = self;
  v52.super_class = MapsCustomRouteViewContext;
  v6 = [(MapsCustomRouteViewContext *)&v52 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composedRoute, route);
    [(GEOComposedRoute *)v7->_composedRoute updateCustomRouteStartEndCaptions];
    v51 = routeCopy;
    persistentData = [routeCopy persistentData];
    routeData = v7->_routeData;
    v7->_routeData = persistentData;

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
      cGColor = [v17 CGColor];
      layer = [(CardView *)v16 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(CardView *)v16 layer];
      [layer2 setCornerRadius:8.0];

      layer3 = [(CardView *)v16 layer];
      [layer3 setBorderWidth:0.5];

      v22 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor2 = [v22 CGColor];
      layer4 = [(CardView *)v16 layer];
      [layer4 setShadowColor:cGColor2];

      layer5 = [(CardView *)v16 layer];
      LODWORD(v26) = *"\nף=";
      [layer5 setShadowOpacity:v26];

      layer6 = [(CardView *)v16 layer];
      [layer6 setShadowOffset:{0.0, -2.0}];

      layer7 = [(CardView *)v16 layer];
      [layer7 setShadowPathIsBounds:1];
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
    widthAnchor = [(CardView *)v30 widthAnchor];
    v39 = [widthAnchor constraintEqualToConstant:44.0];
    v53[0] = v39;
    heightAnchor = [(CardView *)v30 heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:44.0];
    v53[1] = v41;
    widthAnchor2 = [(UIButton *)v7->_recenterButton widthAnchor];
    v43 = [widthAnchor2 constraintEqualToConstant:44.0];
    v53[2] = v43;
    heightAnchor2 = [(UIButton *)v7->_recenterButton heightAnchor];
    v45 = [heightAnchor2 constraintEqualToConstant:44.0];
    v53[3] = v45;
    v46 = [NSArray arrayWithObjects:v53 count:4];
    [NSLayoutConstraint activateConstraints:v46];

    routeCopy = v51;
  }

  return v7;
}

@end