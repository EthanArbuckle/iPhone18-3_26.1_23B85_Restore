@interface VLFPuckAnimationTask
- (PlatformController)platformController;
- (VLFPuckAnimationTask)initWithPlatformController:(id)a3;
- (void)animateVLFPuckOnce;
- (void)animateVLFPuckOnceIfNecessary;
- (void)mapViewDidFinishInitialUserTrackingModeAnimationNotification:(id)a3;
- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)setCurrentNavigationSession:(id)a3;
- (void)setCurrentRoutePlanningSession:(id)a3;
- (void)userTrackingViewModeDidChangeNotification:(id)a3;
@end

@implementation VLFPuckAnimationTask

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)mapViewDidFinishInitialUserTrackingModeAnimationNotification:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKMapViewDidFinishInitialUserTrackingModeAnimationNotification object:0];

  v5 = sub_100AC59E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "User tracking animation ended; animating the puck", v6, 2u);
  }

  [(VLFPuckAnimationTask *)self animateVLFPuckOnceIfNecessary];
}

- (void)userTrackingViewModeDidChangeNotification:(id)a3
{
  v4 = a3;
  if ([(VLFPuckAnimationTask *)self isShowingVLF])
  {
    v5 = sub_100AC59E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "User tracking mode changed but we're currently showing vlf; ignoring", buf, 2u);
    }

    goto LABEL_15;
  }

  v5 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = MKMapViewDidFinishInitialUserTrackingModeAnimationNotification;
  [v6 removeObserver:self name:MKMapViewDidFinishInitialUserTrackingModeAnimationNotification object:0];

  if (![v5 userTrackingMode])
  {
    goto LABEL_15;
  }

  [v5 centerCoordinate];
  v9 = v8;
  v11 = v10;
  v12 = [v5 userLocation];
  [v12 coordinate];
  if (vabdd_f64(v9, v14) >= 0.00000000999999994)
  {
  }

  else
  {
    v15 = vabdd_f64(v11, v13);

    if (v15 < 0.00000000999999994)
    {
      v16 = sub_100AC59E0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "User tapped on My Location but they're already close to their location; animating the puck", v20, 2u);
      }

      [(VLFPuckAnimationTask *)self animateVLFPuckOnceIfNecessary];
      goto LABEL_15;
    }
  }

  v17 = sub_100AC59E0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "User tapped on My Location but they're far from their location; waiting for tracking animation to end before animating the puck", v19, 2u);
  }

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"mapViewDidFinishInitialUserTrackingModeAnimationNotification:" name:v7 object:0];

LABEL_15:
}

- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4
{
  if ([VLFSessionTask isSupportedForTransportType:a4])
  {
    v6 = sub_100AC59E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if ((a4 - 1) > 4)
      {
        v7 = @"Undefined";
      }

      else
      {
        v7 = *(&off_1016372D0 + a4 - 1);
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Changed transport types during navigation to a supported VLF transport type (%@); animating the puck", &v8, 0xCu);
    }

    [(VLFPuckAnimationTask *)self animateVLFPuckOnce];
  }
}

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  if ([VLFSessionTask isSupportedForTransportType:a4])
  {
    v7 = sub_100AC59E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if ((a4 - 1) > 4)
      {
        v8 = @"Undefined";
      }

      else
      {
        v8 = *(&off_1016372D0 + a4 - 1);
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Changed transport types during route planning to a supported VLF transport type (%@); animating the puck", &v9, 0xCu);
    }

    [(VLFPuckAnimationTask *)self animateVLFPuckOnce];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(VLFPuckAnimationTask *)self setCurrentRoutePlanningSession:v8];

  v11 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(VLFPuckAnimationTask *)self setCurrentNavigationSession:v10];
}

- (void)setCurrentNavigationSession:(id)a3
{
  v5 = a3;
  p_currentNavigationSession = &self->_currentNavigationSession;
  currentNavigationSession = self->_currentNavigationSession;
  if (currentNavigationSession != v5)
  {
    [currentNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_currentNavigationSession, a3);
    [self->_currentNavigationSession registerObserver:self];
    v8 = self->_currentNavigationSession;
    if (v8)
    {
      if ([VLFSessionTask isSupportedForTransportType:[(NavigationSession *)v8 currentTransportType]]&& [*p_currentNavigationSession navigationType]== 3)
      {
        v9 = sub_100AC59E0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [*p_currentNavigationSession currentTransportType];
          if ((v10 - 1) > 4)
          {
            v11 = @"Undefined";
          }

          else
          {
            v11 = *(&off_1016372D0 + (v10 - 1));
          }

          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Started TbT navigation with a supported VLF transport type (%@); animating the puck", &v12, 0xCu);
        }

        [(VLFPuckAnimationTask *)self animateVLFPuckOnce];
      }
    }
  }
}

- (void)setCurrentRoutePlanningSession:(id)a3
{
  v5 = a3;
  currentRoutePlanningSession = self->_currentRoutePlanningSession;
  if (currentRoutePlanningSession != v5)
  {
    [currentRoutePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_currentRoutePlanningSession, a3);
    [self->_currentRoutePlanningSession registerObserver:self];
    v7 = self->_currentRoutePlanningSession;
    if (v7)
    {
      if ([VLFSessionTask isSupportedForTransportType:[(RoutePlanningSession *)v7 currentTransportType]])
      {
        v8 = sub_100AC59E0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [self->_currentRoutePlanningSession currentTransportType];
          if ((v9 - 1) > 4)
          {
            v10 = @"Undefined";
          }

          else
          {
            v10 = *(&off_1016372D0 + v9 - 1);
          }

          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Started route planning with a supported VLF transport type (%@); animating the puck", &v11, 0xCu);
        }

        [(VLFPuckAnimationTask *)self animateVLFPuckOnce];
      }
    }
  }
}

- (void)animateVLFPuckOnce
{
  if ([(VLFPuckAnimationTask *)self isShowingVLF])
  {
    v3 = sub_100AC59E0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Asked to animate the VLF puck once but we're currently showing VLF; ignoring", buf, 2u);
    }
  }

  else
  {
    v4 = [(VLFPuckAnimationTask *)self platformController];
    v5 = [v4 chromeViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;

    v7 = v9;
    if (v9)
    {
      v8 = [v9 userLocationView];
      [v8 animateVLFPuckOnce];

      v7 = v9;
    }
  }
}

- (void)animateVLFPuckOnceIfNecessary
{
  v3 = [(VLFPuckAnimationTask *)self currentNavigationSession];

  if (!v3)
  {
    v9 = [(VLFPuckAnimationTask *)self currentRoutePlanningSession];

    if (v9)
    {
      v10 = [(VLFPuckAnimationTask *)self currentRoutePlanningSession];
      v11 = +[VLFSessionTask isSupportedForTransportType:](VLFSessionTask, "isSupportedForTransportType:", [v10 currentTransportType]);

      if (!v11)
      {
        return;
      }

      v6 = sub_100AC59E0();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v14 = 0;
      v7 = "Animating VLF puck during route planning";
      v8 = &v14;
    }

    else
    {
      v6 = sub_100AC59E0();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:

        [(VLFPuckAnimationTask *)self animateVLFPuckOnce];
        return;
      }

      *buf = 0;
      v7 = "Animating VLF puck while neither in route planning nor navigation";
      v8 = buf;
    }

LABEL_15:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v7, v8, 2u);
    goto LABEL_16;
  }

  v12 = [(VLFPuckAnimationTask *)self currentNavigationSession];
  if (+[VLFSessionTask isSupportedForTransportType:](VLFSessionTask, "isSupportedForTransportType:", [v12 currentTransportType]))
  {
    v4 = [(VLFPuckAnimationTask *)self currentNavigationSession];
    v5 = [v4 navigationType];

    if (v5 != 3)
    {
      return;
    }

    v6 = sub_100AC59E0();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v15 = 0;
    v7 = "Animating VLF puck during TbT navigation";
    v8 = &v15;
    goto LABEL_15;
  }
}

- (VLFPuckAnimationTask)initWithPlatformController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[VLFPuckAnimationTask initWithPlatformController:]";
      v17 = 2080;
      v18 = "VLFPuckAnimationTask.m";
      v19 = 1024;
      v20 = 41;
      v21 = 2080;
      v22 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
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
  }

  v14.receiver = self;
  v14.super_class = VLFPuckAnimationTask;
  v5 = [(VLFPuckAnimationTask *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, v4);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"userTrackingViewModeDidChangeNotification:" name:MKUserTrackingViewModeDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"vlfSessionTaskWillShowVLFUINotification:" name:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"vlfSessionTaskDidHideVLFUINotification:" name:@"VLFSessionTaskDidHideVLFUINotification" object:0];
  }

  return v6;
}

@end