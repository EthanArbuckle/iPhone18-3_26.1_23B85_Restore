@interface CarChromeNavigationCameraStyleManager
+ (CarChromeNavigationCameraStyleManager)sharedInstance;
- (CarChromeNavigationCameraStyleManager)init;
- (int64_t)_oppositeCameraStyle:(int64_t)style;
- (void)_initialize;
- (void)_teardown;
- (void)_toggleCameraStyle;
- (void)_updateCameraStyles;
- (void)_updateSceneCounts;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)setCenterConsoleCameraStyle:(int64_t)style;
- (void)setInstrumentClusterCameraStyle:(int64_t)style;
- (void)toggleCameraStyle;
- (void)unregisterObserver:(id)observer;
@end

@implementation CarChromeNavigationCameraStyleManager

- (void)_updateCameraStyles
{
  instrumentClusterSceneCount = self->_instrumentClusterSceneCount;
  if (!self->_centerConsoleSceneCount)
  {
    if (!instrumentClusterSceneCount)
    {
      return;
    }

    v21 = sub_100DFEAB0();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    selfCopy = self;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v24, selfCopy, v26];

        goto LABEL_26;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v24, selfCopy];
LABEL_26:

    *buf = 138543362;
    v60 = selfCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] Updating camera style with only IC", buf, 0xCu);

LABEL_27:
    v28 = GEOConfigGetInteger() == 1;
    goto LABEL_56;
  }

  v4 = sub_100DFEAB0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (!instrumentClusterSceneCount)
  {
    if (!v5)
    {
LABEL_35:

      v35 = [NSNumber numberWithInteger:1];
      v36 = +[NSUserDefaults standardUserDefaults];
      v37 = [v36 objectForKey:@"CarNavigationCameraStyle"];

      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35;
      }

      v39 = v38;

      integerValue = [v39 integerValue];
      goto LABEL_65;
    }

    selfCopy2 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarChromeNavigationCameraStyleManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v31, selfCopy2, v33];

        goto LABEL_34;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v31, selfCopy2];
LABEL_34:

    *buf = 138543362;
    v60 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Updating camera style with only CS", buf, 0xCu);

    goto LABEL_35;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  selfCopy3 = self;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CarChromeNavigationCameraStyleManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy3, v10];

      goto LABEL_9;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy3];
LABEL_9:

  *buf = 138543362;
  v60 = selfCopy3;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Updating camera style with dual displays", buf, 0xCu);

LABEL_10:
  if (![(CarChromeNavigationCameraStyleManager *)self hasHadDualDisplayConnected])
  {
    [(CarChromeNavigationCameraStyleManager *)self setHasHadDualDisplayConnected:1];
    v41 = +[NSUserDefaults standardUserDefaults];
    v42 = [v41 objectForKey:@"CarNavigationDualDisplayCameraStyle"];

    if (v42)
    {
      v43 = +[NSUserDefaults standardUserDefaults];
      integerValue = [v43 integerForKey:@"CarNavigationDualDisplayCameraStyle"];

      v35 = sub_100DFEAB0();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
LABEL_65:

        goto LABEL_66;
      }

      selfCopy4 = self;
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      if (objc_opt_respondsToSelector())
      {
        v47 = [(CarChromeNavigationCameraStyleManager *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v48 = v47;
        if (v47 && ![v47 isEqualToString:v46])
        {
          selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v46, selfCopy4, v48];

          goto LABEL_46;
        }
      }

      selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v46, selfCopy4];
LABEL_46:

      if (integerValue > 6)
      {
        v50 = @".Unknown";
      }

      else
      {
        v50 = *(&off_101655628 + integerValue);
      }

      *buf = 138543618;
      v60 = selfCopy4;
      v61 = 2112;
      v62 = v50;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{public}@] This is the first time dual displays have been connected; using saved camera style default: %@", buf, 0x16u);

      goto LABEL_65;
    }

    Integer = GEOConfigGetInteger();
    v52 = sub_100DFEAB0();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      goto LABEL_55;
    }

    selfCopy5 = self;
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    if (objc_opt_respondsToSelector())
    {
      v56 = [(CarChromeNavigationCameraStyleManager *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v57 = v56;
      if (v56 && ![v56 isEqualToString:v55])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v55, selfCopy5, v57];

        goto LABEL_54;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v55, selfCopy5];
LABEL_54:

    *buf = 138543618;
    v60 = selfCopy5;
    v61 = 2048;
    v62 = Integer;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}@] This is the first time dual displays have been connected; use behavior %ld", buf, 0x16u);

LABEL_55:
    v28 = Integer == 1;
LABEL_56:
    if (v28)
    {
      integerValue = 1;
    }

    else
    {
      integerValue = 2;
    }

    goto LABEL_66;
  }

  v12 = sub_100DFEAB0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    selfCopy6 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarChromeNavigationCameraStyleManager *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy6, v17];

        goto LABEL_17;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy6];
LABEL_17:

    centerConsoleDualDisplayCameraStyle = [(CarChromeNavigationCameraStyleManager *)selfCopy6 centerConsoleDualDisplayCameraStyle];
    if (centerConsoleDualDisplayCameraStyle > 6)
    {
      v20 = @".Unknown";
    }

    else
    {
      v20 = *(&off_101655628 + centerConsoleDualDisplayCameraStyle);
    }

    *buf = 138543618;
    v60 = selfCopy6;
    v61 = 2112;
    v62 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Dual displays have been connected more than once; use the last saved camera style: %@", buf, 0x16u);
  }

  integerValue = [(CarChromeNavigationCameraStyleManager *)self centerConsoleDualDisplayCameraStyle];
LABEL_66:
  [(CarChromeNavigationCameraStyleManager *)self setCenterConsoleCameraStyle:integerValue];
}

- (void)_updateSceneCounts
{
  [(CarChromeNavigationCameraStyleManager *)self setInstrumentClusterSceneCount:+[CarDisplayConfigAuxiliaryTask instrumentClusterSceneCount]];
  [(CarChromeNavigationCameraStyleManager *)self setCenterConsoleSceneCount:+[CarDisplayConfigAuxiliaryTask centerConsoleSceneCount]];

  [(CarChromeNavigationCameraStyleManager *)self _updateCameraStyles];
}

- (void)setInstrumentClusterCameraStyle:(int64_t)style
{
  if (self->_instrumentClusterCameraStyle != style)
  {
    v5 = sub_100DFEAB0();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      self->_instrumentClusterCameraStyle = style;
      observers = [(CarChromeNavigationCameraStyleManager *)self observers];
      [observers carChromeNavigationCameraStyleManager:self didChangeInstrumentClusterCameraStyle:self->_instrumentClusterCameraStyle];

      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    if (style > 6)
    {
      v12 = @".Unknown";
    }

    else
    {
      v12 = *(&off_101655628 + style);
    }

    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Got new IC camera style: %@", buf, 0x16u);

    goto LABEL_12;
  }
}

- (void)setCenterConsoleCameraStyle:(int64_t)style
{
  if (self->_centerConsoleSceneCount && self->_instrumentClusterSceneCount)
  {
    v5 = sub_100DFEAB0();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      self->_centerConsoleDualDisplayCameraStyle = style;
      goto LABEL_14;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_9:

    if (style > 6)
    {
      v12 = @".Unknown";
    }

    else
    {
      v12 = *(&off_101655628 + style);
    }

    *buf = 138543618;
    v23 = selfCopy;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Updating dual display camera style: %@", buf, 0x16u);

    goto LABEL_13;
  }

LABEL_14:
  if (self->_centerConsoleCameraStyle == style)
  {
    return;
  }

  v13 = sub_100DFEAB0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarChromeNavigationCameraStyleManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy2, v18];

        goto LABEL_21;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy2];
LABEL_21:

    if (style > 6)
    {
      v20 = @".Unknown";
    }

    else
    {
      v20 = *(&off_101655628 + style);
    }

    *buf = 138543618;
    v23 = selfCopy2;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Got new CS camera style style: %@", buf, 0x16u);
  }

  self->_centerConsoleCameraStyle = style;
  [(CarChromeNavigationCameraStyleManager *)self setInstrumentClusterCameraStyle:[(CarChromeNavigationCameraStyleManager *)self _oppositeCameraStyle:style]];
  observers = [(CarChromeNavigationCameraStyleManager *)self observers];
  [observers carChromeNavigationCameraStyleManager:self didChangeCenterConsoleCameraStyle:self->_centerConsoleCameraStyle];
}

- (int64_t)_oppositeCameraStyle:(int64_t)style
{
  if (style == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_toggleCameraStyle
{
  v3 = sub_100DFEAB0();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

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
    v7 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
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
  centerConsoleCameraStyle = [(CarChromeNavigationCameraStyleManager *)selfCopy centerConsoleCameraStyle];
  if (centerConsoleCameraStyle > 6)
  {
    v11 = @".Unknown";
  }

  else
  {
    v11 = *(&off_101655628 + centerConsoleCameraStyle);
  }

  *buf = 138543618;
  v13 = selfCopy;
  v14 = 2112;
  v15 = v11;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Toggling camera style from existing style: %@", buf, 0x16u);

LABEL_14:
  [(CarChromeNavigationCameraStyleManager *)self setCenterConsoleCameraStyle:[(CarChromeNavigationCameraStyleManager *)self _oppositeCameraStyle:[(CarChromeNavigationCameraStyleManager *)self centerConsoleCameraStyle]]];
}

- (void)_teardown
{
  v3 = sub_100DFEAB0();
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
      v7 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Tearing down", buf, 0xCu);
  }

  self->_hasHadDualDisplayConnected = 0;
  self->_instrumentClusterSceneCount = 0;
  self->_centerConsoleSceneCount = 0;
  self->_centerConsoleDualDisplayCameraStyle = self->_centerConsoleCameraStyle;
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self];
}

- (void)_initialize
{
  if (GEOConfigGetBOOL())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"carDisplayConfigDidChangeNotification:" name:@"CarDisplayConfigDidChangeNotification" object:0];

    [(CarChromeNavigationCameraStyleManager *)self _updateSceneCounts];
    v4 = sub_100DFEAB0();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

LABEL_11:
    instrumentClusterSceneCount = selfCopy->_instrumentClusterSceneCount;
    centerConsoleSceneCount = selfCopy->_centerConsoleSceneCount;
    *buf = 138543874;
    v14 = selfCopy;
    v15 = 2048;
    v16 = instrumentClusterSceneCount;
    v17 = 2048;
    v18 = centerConsoleSceneCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Initializing with %lu IC screens & %lu CC screens", buf, 0x20u);

    goto LABEL_12;
  }
}

- (void)toggleCameraStyle
{
  [(CarChromeNavigationCameraStyleManager *)self _toggleCameraStyle];
  if (!self->_instrumentClusterSceneCount)
  {
    v6 = [NSNumber numberWithInteger:self->_centerConsoleCameraStyle];
    v3 = +[NSUserDefaults standardUserDefaults];
    if (v6)
    {
      v4 = @"CarNavigationCameraStyle";
      goto LABEL_7;
    }

    v5 = @"CarNavigationCameraStyle";
LABEL_11:
    [v3 removeObjectForKey:v5];
    v6 = 0;
    goto LABEL_12;
  }

  if (!self->_centerConsoleSceneCount)
  {
    return;
  }

  v6 = [NSNumber numberWithInteger:self->_centerConsoleCameraStyle];
  v3 = +[NSUserDefaults standardUserDefaults];
  if (!v6)
  {
    v5 = @"CarNavigationDualDisplayCameraStyle";
    goto LABEL_11;
  }

  v4 = @"CarNavigationDualDisplayCameraStyle";
LABEL_7:
  [v3 setObject:v6 forKey:v4];
LABEL_12:
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100DFEAB0();
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
      v9 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v24 = selfCopy;
    v25 = 2112;
    v26 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Unregistering observer: %@", buf, 0x16u);
  }

  observers = [(CarChromeNavigationCameraStyleManager *)self observers];
  [observers unregisterObserver:observerCopy];

  observers2 = [(CarChromeNavigationCameraStyleManager *)self observers];
  allObservers = [observers2 allObservers];
  v15 = [allObservers count];

  if (!v15)
  {
    v16 = sub_100DFEAB0();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      [(CarChromeNavigationCameraStyleManager *)self _teardown];
      goto LABEL_23;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_21;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeNavigationCameraStyleManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_19:

LABEL_21:
    *buf = 138543362;
    v24 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Lost last observer; will tear down now", buf, 0xCu);

    goto LABEL_22;
  }

LABEL_23:
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100DFEAB0();
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
      v9 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v24 = selfCopy;
    v25 = 2112;
    v26 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Registering observer: %@", buf, 0x16u);
  }

  observers = [(CarChromeNavigationCameraStyleManager *)self observers];
  [observers registerObserver:observerCopy];

  observers2 = [(CarChromeNavigationCameraStyleManager *)self observers];
  allObservers = [observers2 allObservers];
  v15 = [allObservers count];

  if (v15 == 1)
  {
    v16 = sub_100DFEAB0();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      [(CarChromeNavigationCameraStyleManager *)self _initialize];
      goto LABEL_23;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_21;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeNavigationCameraStyleManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_19:

LABEL_21:
    *buf = 138543362;
    v24 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Got 1st observer; will initialize now", buf, 0xCu);

    goto LABEL_22;
  }

LABEL_23:
}

- (void)dealloc
{
  v3 = sub_100DFEAB0();
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
      v7 = [(CarChromeNavigationCameraStyleManager *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CarChromeNavigationCameraStyleManager;
  [(CarChromeNavigationCameraStyleManager *)&v10 dealloc];
}

- (CarChromeNavigationCameraStyleManager)init
{
  v28.receiver = self;
  v28.super_class = CarChromeNavigationCameraStyleManager;
  v2 = [(CarChromeNavigationCameraStyleManager *)&v28 init];
  if (v2)
  {
    v3 = sub_100DFEAB0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarChromeNavigationCameraStyleManager *)v4 performSelector:"accessibilityIdentifier"];
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
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Initializing", buf, 0xCu);

LABEL_9:
    v10 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CarChromeNavigationCameraStyleManagerObserver queue:&_dispatch_main_q];
    observers = v2->_observers;
    v2->_observers = v10;

    v12 = [NSNumber numberWithInteger:1];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 objectForKey:@"CarNavigationCameraStyle"];

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;

    integerValue = [v16 integerValue];
    [(CarChromeNavigationCameraStyleManager *)v2 setCenterConsoleCameraStyle:integerValue];
    v18 = sub_100DFEAB0();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v19 = v2;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(CarChromeNavigationCameraStyleManager *)v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_18;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_18:

    centerConsoleCameraStyle = v19->_centerConsoleCameraStyle;
    if (centerConsoleCameraStyle > 6)
    {
      v26 = @".Unknown";
    }

    else
    {
      v26 = *(&off_101655628 + centerConsoleCameraStyle);
    }

    *buf = 138543618;
    v30 = v24;
    v31 = 2112;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Initializing with camera style: %@", buf, 0x16u);

LABEL_22:
  }

  return v2;
}

+ (CarChromeNavigationCameraStyleManager)sharedInstance
{
  if (qword_10195F278 != -1)
  {
    dispatch_once(&qword_10195F278, &stru_1016555E8);
  }

  v3 = qword_10195F270;

  return v3;
}

@end