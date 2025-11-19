@interface CarChromeNavigationCameraStyleManager
+ (CarChromeNavigationCameraStyleManager)sharedInstance;
- (CarChromeNavigationCameraStyleManager)init;
- (int64_t)_oppositeCameraStyle:(int64_t)a3;
- (void)_initialize;
- (void)_teardown;
- (void)_toggleCameraStyle;
- (void)_updateCameraStyles;
- (void)_updateSceneCounts;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)setCenterConsoleCameraStyle:(int64_t)a3;
- (void)setInstrumentClusterCameraStyle:(int64_t)a3;
- (void)toggleCameraStyle;
- (void)unregisterObserver:(id)a3;
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

    v22 = self;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(CarChromeNavigationCameraStyleManager *)v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        goto LABEL_26;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_26:

    *buf = 138543362;
    v60 = v27;
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

      v40 = [v39 integerValue];
      goto LABEL_65;
    }

    v29 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarChromeNavigationCameraStyleManager *)v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_34;
      }
    }

    v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_34:

    *buf = 138543362;
    v60 = v34;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Updating camera style with only CS", buf, 0xCu);

    goto LABEL_35;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = self;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CarChromeNavigationCameraStyleManager *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_9;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

  *buf = 138543362;
  v60 = v11;
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
      v40 = [v43 integerForKey:@"CarNavigationDualDisplayCameraStyle"];

      v35 = sub_100DFEAB0();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
LABEL_65:

        goto LABEL_66;
      }

      v44 = self;
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      if (objc_opt_respondsToSelector())
      {
        v47 = [(CarChromeNavigationCameraStyleManager *)v44 performSelector:"accessibilityIdentifier"];
        v48 = v47;
        if (v47 && ![v47 isEqualToString:v46])
        {
          v49 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];

          goto LABEL_46;
        }
      }

      v49 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
LABEL_46:

      if (v40 > 6)
      {
        v50 = @".Unknown";
      }

      else
      {
        v50 = *(&off_101655628 + v40);
      }

      *buf = 138543618;
      v60 = v49;
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

    v53 = self;
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    if (objc_opt_respondsToSelector())
    {
      v56 = [(CarChromeNavigationCameraStyleManager *)v53 performSelector:"accessibilityIdentifier"];
      v57 = v56;
      if (v56 && ![v56 isEqualToString:v55])
      {
        v58 = [NSString stringWithFormat:@"%@<%p, %@>", v55, v53, v57];

        goto LABEL_54;
      }
    }

    v58 = [NSString stringWithFormat:@"%@<%p>", v55, v53];
LABEL_54:

    *buf = 138543618;
    v60 = v58;
    v61 = 2048;
    v62 = Integer;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}@] This is the first time dual displays have been connected; use behavior %ld", buf, 0x16u);

LABEL_55:
    v28 = Integer == 1;
LABEL_56:
    if (v28)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    goto LABEL_66;
  }

  v12 = sub_100DFEAB0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarChromeNavigationCameraStyleManager *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_17;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_17:

    v19 = [(CarChromeNavigationCameraStyleManager *)v13 centerConsoleDualDisplayCameraStyle];
    if (v19 > 6)
    {
      v20 = @".Unknown";
    }

    else
    {
      v20 = *(&off_101655628 + v19);
    }

    *buf = 138543618;
    v60 = v18;
    v61 = 2112;
    v62 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Dual displays have been connected more than once; use the last saved camera style: %@", buf, 0x16u);
  }

  v40 = [(CarChromeNavigationCameraStyleManager *)self centerConsoleDualDisplayCameraStyle];
LABEL_66:
  [(CarChromeNavigationCameraStyleManager *)self setCenterConsoleCameraStyle:v40];
}

- (void)_updateSceneCounts
{
  [(CarChromeNavigationCameraStyleManager *)self setInstrumentClusterSceneCount:+[CarDisplayConfigAuxiliaryTask instrumentClusterSceneCount]];
  [(CarChromeNavigationCameraStyleManager *)self setCenterConsoleSceneCount:+[CarDisplayConfigAuxiliaryTask centerConsoleSceneCount]];

  [(CarChromeNavigationCameraStyleManager *)self _updateCameraStyles];
}

- (void)setInstrumentClusterCameraStyle:(int64_t)a3
{
  if (self->_instrumentClusterCameraStyle != a3)
  {
    v5 = sub_100DFEAB0();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      self->_instrumentClusterCameraStyle = a3;
      v13 = [(CarChromeNavigationCameraStyleManager *)self observers];
      [v13 carChromeNavigationCameraStyleManager:self didChangeInstrumentClusterCameraStyle:self->_instrumentClusterCameraStyle];

      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarChromeNavigationCameraStyleManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    if (a3 > 6)
    {
      v12 = @".Unknown";
    }

    else
    {
      v12 = *(&off_101655628 + a3);
    }

    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Got new IC camera style: %@", buf, 0x16u);

    goto LABEL_12;
  }
}

- (void)setCenterConsoleCameraStyle:(int64_t)a3
{
  if (self->_centerConsoleSceneCount && self->_instrumentClusterSceneCount)
  {
    v5 = sub_100DFEAB0();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      self->_centerConsoleDualDisplayCameraStyle = a3;
      goto LABEL_14;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarChromeNavigationCameraStyleManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

    if (a3 > 6)
    {
      v12 = @".Unknown";
    }

    else
    {
      v12 = *(&off_101655628 + a3);
    }

    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Updating dual display camera style: %@", buf, 0x16u);

    goto LABEL_13;
  }

LABEL_14:
  if (self->_centerConsoleCameraStyle == a3)
  {
    return;
  }

  v13 = sub_100DFEAB0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarChromeNavigationCameraStyleManager *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_21;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_21:

    if (a3 > 6)
    {
      v20 = @".Unknown";
    }

    else
    {
      v20 = *(&off_101655628 + a3);
    }

    *buf = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Got new CS camera style style: %@", buf, 0x16u);
  }

  self->_centerConsoleCameraStyle = a3;
  [(CarChromeNavigationCameraStyleManager *)self setInstrumentClusterCameraStyle:[(CarChromeNavigationCameraStyleManager *)self _oppositeCameraStyle:a3]];
  v21 = [(CarChromeNavigationCameraStyleManager *)self observers];
  [v21 carChromeNavigationCameraStyleManager:self didChangeCenterConsoleCameraStyle:self->_centerConsoleCameraStyle];
}

- (int64_t)_oppositeCameraStyle:(int64_t)a3
{
  if (a3 == 2)
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

LABEL_10:
  v10 = [(CarChromeNavigationCameraStyleManager *)v4 centerConsoleCameraStyle];
  if (v10 > 6)
  {
    v11 = @".Unknown";
  }

  else
  {
    v11 = *(&off_101655628 + v10);
  }

  *buf = 138543618;
  v13 = v9;
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

LABEL_10:
    *buf = 138543362;
    v12 = v9;
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

    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarChromeNavigationCameraStyleManager *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_11:
    instrumentClusterSceneCount = v5->_instrumentClusterSceneCount;
    centerConsoleSceneCount = v5->_centerConsoleSceneCount;
    *buf = 138543874;
    v14 = v10;
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

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100DFEAB0();
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
      v9 = [(CarChromeNavigationCameraStyleManager *)v6 performSelector:"accessibilityIdentifier"];
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
    v24 = v11;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Unregistering observer: %@", buf, 0x16u);
  }

  v12 = [(CarChromeNavigationCameraStyleManager *)self observers];
  [v12 unregisterObserver:v4];

  v13 = [(CarChromeNavigationCameraStyleManager *)self observers];
  v14 = [v13 allObservers];
  v15 = [v14 count];

  if (!v15)
  {
    v16 = sub_100DFEAB0();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      [(CarChromeNavigationCameraStyleManager *)self _teardown];
      goto LABEL_23;
    }

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_21;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeNavigationCameraStyleManager *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_19;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

LABEL_21:
    *buf = 138543362;
    v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Lost last observer; will tear down now", buf, 0xCu);

    goto LABEL_22;
  }

LABEL_23:
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100DFEAB0();
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
      v9 = [(CarChromeNavigationCameraStyleManager *)v6 performSelector:"accessibilityIdentifier"];
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
    v24 = v11;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Registering observer: %@", buf, 0x16u);
  }

  v12 = [(CarChromeNavigationCameraStyleManager *)self observers];
  [v12 registerObserver:v4];

  v13 = [(CarChromeNavigationCameraStyleManager *)self observers];
  v14 = [v13 allObservers];
  v15 = [v14 count];

  if (v15 == 1)
  {
    v16 = sub_100DFEAB0();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      [(CarChromeNavigationCameraStyleManager *)self _initialize];
      goto LABEL_23;
    }

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_21;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarChromeNavigationCameraStyleManager *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_19;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

LABEL_21:
    *buf = 138543362;
    v24 = v22;
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

LABEL_10:
    *buf = 138543362;
    v12 = v9;
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

    v17 = [v16 integerValue];
    [(CarChromeNavigationCameraStyleManager *)v2 setCenterConsoleCameraStyle:v17];
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