@interface VLFSessionStateManager
- (PlatformController)platformController;
- (VLFSessionStateManager)initWithPlatformController:(id)a3;
- (id)allMonitors;
- (void)addObserver:(id)a3;
- (void)buildMonitors;
- (void)calculateCurrentState;
- (void)monitor:(id)a3 didChangeState:(int64_t)a4;
- (void)removeObserver:(id)a3;
- (void)setCurrentState:(int64_t)a3;
@end

@implementation VLFSessionStateManager

- (void)calculateCurrentState
{
  v3 = sub_1000764DC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Re-calculating the current state", buf, 2u);
  }

  v4 = [(VLFSessionStateManager *)self lowThresholdMonitors];
  v5 = [v4 count] != 0;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [(VLFSessionStateManager *)self lowThresholdMonitors];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v39 + 1) + 8 * i) state])
        {
          v11 = sub_1000764DC();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            *buf = 138412290;
            v44 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ did not satisfy the low threshold requirement", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v14 = [(VLFSessionStateManager *)self highThresholdMonitors];
  v15 = [v14 count];
  v16 = v15 != 0;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [(VLFSessionStateManager *)self highThresholdMonitors];
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
LABEL_17:
    v21 = 0;
    while (1)
    {
      if (*v36 != v20)
      {
        objc_enumerationMutation(v17);
      }

      if ([*(*(&v35 + 1) + 8 * v21) state] != 2)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v19)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }

    v22 = sub_1000764DC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ did not satisfy the high threshold requirement", buf, 0xCu);
    }

    if (!v5)
    {
      v16 = 0;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_23:

  if (v5)
  {
    if (!v15)
    {
LABEL_29:
      v25 = sub_1000764DC();
      v26 = 1;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = [(VLFSessionStateManager *)self lowThresholdMonitors];
        v28 = [v27 count];
        *buf = 134217984;
        v44 = v28;
        v26 = 1;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "All %lu low threshold monitors are satisfied; updating state", buf, 0xCu);
      }

      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_32:
  v29 = [(VLFSessionStateManager *)self lowThresholdMonitors];
  v30 = [v29 count];

  if (!v30 && v16)
  {
LABEL_34:
    v25 = sub_1000764DC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v31 = [(VLFSessionStateManager *)self lowThresholdMonitors];
      v32 = [v31 count];
      v33 = [(VLFSessionStateManager *)self highThresholdMonitors];
      v34 = [v33 count];
      *buf = 134218240;
      v44 = v32;
      v45 = 2048;
      v46 = v34;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "All %lu low threshold and %lu high threshold monitors are satisfied; updating state", buf, 0x16u);
    }

    v26 = 2;
    goto LABEL_40;
  }

  v25 = sub_1000764DC();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Neither the low nor the high threshold monitors were satisfied; updating state", buf, 2u);
  }

  v26 = 0;
LABEL_40:

  [(VLFSessionStateManager *)self setCurrentState:v26];
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)monitor:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  didBuildMonitors = self->_didBuildMonitors;
  v8 = sub_1000764DC();
  v9 = v8;
  if (didBuildMonitors)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = v11;
      v13 = @"Hide";
      if (a4 == 1)
      {
        v13 = @"EnablePuck";
      }

      if (a4 == 2)
      {
        v13 = @"EnablePuckAndBanner";
      }

      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ changed its state to %@; re-calculating VLF state", &v18, 0x16u);
    }

    [(VLFSessionStateManager *)self calculateCurrentState];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = v15;
      v17 = @"Hide";
      if (a4 == 1)
      {
        v17 = @"EnablePuck";
      }

      if (a4 == 2)
      {
        v17 = @"EnablePuckAndBanner";
      }

      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ changed its state to %@, but we haven't finished building the monitors yet; ignoring", &v18, 0x16u);
    }
  }
}

- (id)allMonitors
{
  v3 = [(VLFSessionStateManager *)self lowThresholdMonitors];
  v4 = [(VLFSessionStateManager *)self highThresholdMonitors];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (void)buildMonitors
{
  if (self->_didBuildMonitors)
  {
    v266 = sub_10006D178();
    if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
    {
      v269 = 136315906;
      v270 = "[VLFSessionStateManager buildMonitors]";
      v271 = 2080;
      v272 = "VLFSessionStateManager.m";
      v273 = 1024;
      v274 = 125;
      v275 = 2080;
      v276 = "!_didBuildMonitors";
      _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v269, 0x26u);
    }

    if (sub_100E03634())
    {
      v267 = sub_10006D178();
      if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
      {
        v268 = +[NSThread callStackSymbols];
        v269 = 138412290;
        v270 = v268;
        _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_ERROR, "%@", &v269, 0xCu);
      }
    }
  }

  if (self->_didBuildMonitors)
  {
    v3 = sub_1000764DC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v269) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Can't build the monitors more than once; ignoring", &v269, 2u);
    }

    return;
  }

  v4 = +[VLFSessionAppLaunchDelayMonitor isEnabled];
  v5 = sub_1000764DC();
  v6 = os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v269 = 138412290;
      v270 = v8;
      _os_log_impl(&_mh_execute_header, &v5->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v5 = [[VLFSessionAppLaunchDelayMonitor alloc] initWithObserver:self];
    if (+[VLFSessionAppLaunchDelayMonitor affectsPuckVisibility])
    {
      v9 = sub_1000764DC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v269 = 138412290;
        v270 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v5];
    }

    if (+[VLFSessionAppLaunchDelayMonitor affectsBannerVisibility])
    {
      v12 = sub_1000764DC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v269 = 138412290;
        v270 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v5];
    }
  }

  else if (v6)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v269 = 138412290;
    v270 = v16;
    _os_log_impl(&_mh_execute_header, &v5->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v17 = +[VLFSessionCarPlayConnectionMonitor isEnabled];
  v18 = sub_1000764DC();
  v19 = os_log_type_enabled(&v18->super.super, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v269 = 138412290;
      v270 = v21;
      _os_log_impl(&_mh_execute_header, &v18->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v18 = [[VLFSessionCarPlayConnectionMonitor alloc] initWithObserver:self];
    if (+[VLFSessionCarPlayConnectionMonitor affectsPuckVisibility])
    {
      v22 = sub_1000764DC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v269 = 138412290;
        v270 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v18];
    }

    if (+[VLFSessionCarPlayConnectionMonitor affectsBannerVisibility])
    {
      v25 = sub_1000764DC();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v269 = 138412290;
        v270 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v18];
    }
  }

  else if (v19)
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v269 = 138412290;
    v270 = v29;
    _os_log_impl(&_mh_execute_header, &v18->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v30 = +[VLFSessionChromeStackMonitor isEnabled];
  v31 = sub_1000764DC();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
  if (v30)
  {
    if (v32)
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v269 = 138412290;
      v270 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v35 = [VLFSessionChromeStackMonitor alloc];
    v36 = [(VLFSessionStateManager *)self platformController];
    v31 = [(VLFSessionChromeStackMonitor *)v35 initWithObserver:self platformController:v36];

    if (+[VLFSessionChromeStackMonitor affectsPuckVisibility])
    {
      v37 = sub_1000764DC();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v269 = 138412290;
        v270 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v31];
    }

    if (+[VLFSessionChromeStackMonitor affectsBannerVisibility])
    {
      v40 = sub_1000764DC();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v269 = 138412290;
        v270 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v31];
    }
  }

  else if (v32)
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v269 = 138412290;
    v270 = v44;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v45 = +[VLFSessionCoarseLocationMonitor isEnabled];
  v46 = sub_1000764DC();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
  if (v45)
  {
    if (v47)
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v269 = 138412290;
      v270 = v49;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v50 = [VLFSessionCoarseLocationMonitor alloc];
    v51 = objc_alloc_init(MKLocationManager);
    v46 = [(VLFSessionCoarseLocationMonitor *)v50 initWithObserver:self locationManager:v51];

    if (+[VLFSessionCoarseLocationMonitor affectsPuckVisibility])
    {
      v52 = sub_1000764DC();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v269 = 138412290;
        v270 = v54;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v46];
    }

    if (+[VLFSessionCoarseLocationMonitor affectsBannerVisibility])
    {
      v55 = sub_1000764DC();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v269 = 138412290;
        v270 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v46];
    }
  }

  else if (v47)
  {
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    v269 = 138412290;
    v270 = v59;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v60 = +[VLFSessionHistoricalLocationAccuracyMonitor isEnabled];
  v61 = sub_1000764DC();
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);
  if (v60)
  {
    if (v62)
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      v269 = 138412290;
      v270 = v64;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v65 = [VLFSessionHistoricalLocationAccuracyMonitor alloc];
    v66 = +[MKLocationManager sharedLocationManager];
    v61 = [(VLFSessionHistoricalLocationAccuracyMonitor *)v65 initWithObserver:self locationManager:v66];

    if (+[VLFSessionHistoricalLocationAccuracyMonitor affectsPuckVisibility])
    {
      v67 = sub_1000764DC();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        v269 = 138412290;
        v270 = v69;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v61];
    }

    if (+[VLFSessionHistoricalLocationAccuracyMonitor affectsBannerVisibility])
    {
      v70 = sub_1000764DC();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        v269 = 138412290;
        v270 = v72;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v61];
    }
  }

  else if (v62)
  {
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v269 = 138412290;
    v270 = v74;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  if (+[VLFSessionHomeWorkMonitor isEnabled])
  {
    v75 = sub_1000764DC();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      v269 = 138412290;
      v270 = v77;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v78 = [VLFSessionHomeWorkMonitor alloc];
    v79 = +[MKLocationManager sharedLocationManager];
    v80 = +[MNNavigationService sharedService];
    v81 = [(VLFSessionHomeWorkMonitor *)v78 initWithObserver:self locationManager:v79 navigationService:v80 transportTypeSupportProvider:objc_opt_class()];

    if (+[VLFSessionHomeWorkMonitor affectsPuckVisibility])
    {
      v82 = sub_1000764DC();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v269 = 138412290;
        v270 = v84;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v81];
    }

    if (+[VLFSessionHomeWorkMonitor affectsBannerVisibility])
    {
      v85 = sub_1000764DC();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        v269 = 138412290;
        v270 = v87;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v81];
    }
  }

  if (+[VLFSessionLocationHorizontalAccuracyMonitor isEnabled])
  {
    v88 = sub_1000764DC();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v269 = 138412290;
      v270 = v90;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v91 = [VLFSessionLocationHorizontalAccuracyMonitor alloc];
    v92 = +[MKLocationManager sharedLocationManager];
    v93 = [(VLFSessionLocationHorizontalAccuracyMonitor *)v91 initWithObserver:self locationManager:v92];

    if (+[VLFSessionLocationHorizontalAccuracyMonitor affectsPuckVisibility])
    {
      v94 = sub_1000764DC();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v95 = objc_opt_class();
        v96 = NSStringFromClass(v95);
        v269 = 138412290;
        v270 = v96;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v93];
    }

    if (+[VLFSessionLocationHorizontalAccuracyMonitor affectsBannerVisibility])
    {
      v97 = sub_1000764DC();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = objc_opt_class();
        v99 = NSStringFromClass(v98);
        v269 = 138412290;
        v270 = v99;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v93];
    }
  }

  if (+[VLFSessionLocationOutdoorMonitor isEnabled])
  {
    v100 = sub_1000764DC();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      v269 = 138412290;
      v270 = v102;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v103 = [VLFSessionLocationOutdoorMonitor alloc];
    v104 = +[VLFLocationManager sharedLocationManager];
    v105 = [(VLFSessionLocationOutdoorMonitor *)v103 initWithObserver:self locationManager:v104];

    if (+[VLFSessionLocationOutdoorMonitor affectsPuckVisibility])
    {
      v106 = sub_1000764DC();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = objc_opt_class();
        v108 = NSStringFromClass(v107);
        v269 = 138412290;
        v270 = v108;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v105];
    }

    if (+[VLFSessionLocationOutdoorMonitor affectsBannerVisibility])
    {
      v109 = sub_1000764DC();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        v110 = objc_opt_class();
        v111 = NSStringFromClass(v110);
        v269 = 138412290;
        v270 = v111;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v105];
    }
  }

  if (+[VLFSessionLocationSignalEnvironmentMonitor isEnabled])
  {
    v112 = sub_1000764DC();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v113 = objc_opt_class();
      v114 = NSStringFromClass(v113);
      v269 = 138412290;
      v270 = v114;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v115 = [VLFSessionLocationSignalEnvironmentMonitor alloc];
    v116 = +[VLFLocationManager sharedLocationManager];
    v117 = [(VLFSessionLocationSignalEnvironmentMonitor *)v115 initWithObserver:self locationManager:v116];

    if (+[VLFSessionLocationSignalEnvironmentMonitor affectsPuckVisibility])
    {
      v118 = sub_1000764DC();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
      {
        v119 = objc_opt_class();
        v120 = NSStringFromClass(v119);
        v269 = 138412290;
        v270 = v120;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v117];
    }

    if (+[VLFSessionLocationSignalEnvironmentMonitor affectsBannerVisibility])
    {
      v121 = sub_1000764DC();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        v122 = objc_opt_class();
        v123 = NSStringFromClass(v122);
        v269 = 138412290;
        v270 = v123;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v117];
    }
  }

  if (+[VLFSessionLocationTypeMonitor isEnabled])
  {
    v124 = sub_1000764DC();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
    {
      v125 = objc_opt_class();
      v126 = NSStringFromClass(v125);
      v269 = 138412290;
      v270 = v126;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v127 = [VLFSessionLocationTypeMonitor alloc];
    v128 = +[VLFLocationManager sharedLocationManager];
    v129 = [(VLFSessionLocationTypeMonitor *)v127 initWithObserver:self locationManager:v128];

    if (+[VLFSessionLocationTypeMonitor affectsPuckVisibility])
    {
      v130 = sub_1000764DC();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        v131 = objc_opt_class();
        v132 = NSStringFromClass(v131);
        v269 = 138412290;
        v270 = v132;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v129];
    }

    if (+[VLFSessionLocationTypeMonitor affectsBannerVisibility])
    {
      v133 = sub_1000764DC();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        v134 = objc_opt_class();
        v135 = NSStringFromClass(v134);
        v269 = 138412290;
        v270 = v135;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v129];
    }
  }

  v136 = +[VLFSessionMapsHomeMonitor isEnabled];
  v137 = sub_1000764DC();
  v138 = os_log_type_enabled(v137, OS_LOG_TYPE_INFO);
  if (v136)
  {
    if (v138)
    {
      v139 = objc_opt_class();
      v140 = NSStringFromClass(v139);
      v269 = 138412290;
      v270 = v140;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v141 = [VLFSessionMapsHomeMonitor alloc];
    v142 = [(VLFSessionStateManager *)self platformController];
    v137 = [(VLFSessionMapsHomeMonitor *)v141 initWithObserver:self platformController:v142];

    if (+[VLFSessionMapsHomeMonitor affectsPuckVisibility])
    {
      v143 = sub_1000764DC();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
      {
        v144 = objc_opt_class();
        v145 = NSStringFromClass(v144);
        v269 = 138412290;
        v270 = v145;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v137];
    }

    if (+[VLFSessionMapsHomeMonitor affectsBannerVisibility])
    {
      v146 = sub_1000764DC();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
      {
        v147 = objc_opt_class();
        v148 = NSStringFromClass(v147);
        v269 = 138412290;
        v270 = v148;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v137];
    }
  }

  else if (v138)
  {
    v149 = objc_opt_class();
    v150 = NSStringFromClass(v149);
    v269 = 138412290;
    v270 = v150;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v151 = +[VLFSessionNetworkReachabilityMonitor isEnabled];
  v152 = sub_1000764DC();
  v153 = os_log_type_enabled(&v152->super.super, OS_LOG_TYPE_INFO);
  if (v151)
  {
    if (v153)
    {
      v154 = objc_opt_class();
      v155 = NSStringFromClass(v154);
      v269 = 138412290;
      v270 = v155;
      _os_log_impl(&_mh_execute_header, &v152->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v152 = [[VLFSessionNetworkReachabilityMonitor alloc] initWithObserver:self];
    if (+[VLFSessionNetworkReachabilityMonitor affectsPuckVisibility])
    {
      v156 = sub_1000764DC();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
      {
        v157 = objc_opt_class();
        v158 = NSStringFromClass(v157);
        v269 = 138412290;
        v270 = v158;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v152];
    }

    if (+[VLFSessionNetworkReachabilityMonitor affectsBannerVisibility])
    {
      v159 = sub_1000764DC();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
      {
        v160 = objc_opt_class();
        v161 = NSStringFromClass(v160);
        v269 = 138412290;
        v270 = v161;
        _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v152];
    }
  }

  else if (v153)
  {
    v162 = objc_opt_class();
    v163 = NSStringFromClass(v162);
    v269 = 138412290;
    v270 = v163;
    _os_log_impl(&_mh_execute_header, &v152->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v164 = +[VLFSessionOfflineMonitor isEnabled];
  v165 = sub_1000764DC();
  v166 = os_log_type_enabled(&v165->super.super, OS_LOG_TYPE_INFO);
  if (v164)
  {
    if (v166)
    {
      v167 = objc_opt_class();
      v168 = NSStringFromClass(v167);
      v269 = 138412290;
      v270 = v168;
      _os_log_impl(&_mh_execute_header, &v165->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v165 = [[VLFSessionOfflineMonitor alloc] initWithObserver:self];
    if (+[VLFSessionOfflineMonitor affectsPuckVisibility])
    {
      v169 = sub_1000764DC();
      if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
      {
        v170 = objc_opt_class();
        v171 = NSStringFromClass(v170);
        v269 = 138412290;
        v270 = v171;
        _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v165];
    }

    if (+[VLFSessionOfflineMonitor affectsBannerVisibility])
    {
      v172 = sub_1000764DC();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
      {
        v173 = objc_opt_class();
        v174 = NSStringFromClass(v173);
        v269 = 138412290;
        v270 = v174;
        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v165];
    }
  }

  else if (v166)
  {
    v175 = objc_opt_class();
    v176 = NSStringFromClass(v175);
    v269 = 138412290;
    v270 = v176;
    _os_log_impl(&_mh_execute_header, &v165->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v177 = +[VLFSessionThermalStateMonitor isEnabled];
  v178 = sub_1000764DC();
  v179 = os_log_type_enabled(&v178->super.super, OS_LOG_TYPE_INFO);
  if (v177)
  {
    if (v179)
    {
      v180 = objc_opt_class();
      v181 = NSStringFromClass(v180);
      v269 = 138412290;
      v270 = v181;
      _os_log_impl(&_mh_execute_header, &v178->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v178 = [[VLFSessionThermalStateMonitor alloc] initWithObserver:self];
    if (+[VLFSessionThermalStateMonitor affectsPuckVisibility])
    {
      v182 = sub_1000764DC();
      if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
      {
        v183 = objc_opt_class();
        v184 = NSStringFromClass(v183);
        v269 = 138412290;
        v270 = v184;
        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v178];
    }

    if (+[VLFSessionThermalStateMonitor affectsBannerVisibility])
    {
      v185 = sub_1000764DC();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
      {
        v186 = objc_opt_class();
        v187 = NSStringFromClass(v186);
        v269 = 138412290;
        v270 = v187;
        _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v178];
    }
  }

  else if (v179)
  {
    v188 = objc_opt_class();
    v189 = NSStringFromClass(v188);
    v269 = 138412290;
    v270 = v189;
    _os_log_impl(&_mh_execute_header, &v178->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v190 = +[VLFSessionTileAvailabilityMonitor isEnabled];
  v191 = sub_1000764DC();
  v192 = os_log_type_enabled(v191, OS_LOG_TYPE_INFO);
  if (v190)
  {
    if (v192)
    {
      v193 = objc_opt_class();
      v194 = NSStringFromClass(v193);
      v269 = 138412290;
      v270 = v194;
      _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v195 = [VLFTileObserver alloc];
    v196 = +[MKLocationManager sharedLocationManager];
    v197 = +[MNNavigationService sharedService];
    v198 = +[CarDisplayController sharedInstance];
    v191 = [(VLFTileObserver *)v195 initWithLocationManager:v196 navigationService:v197 carDisplayController:v198 purpose:1];

    v199 = [[VLFSessionTileAvailabilityMonitor alloc] initWithObserver:self tileObserver:v191];
    if (+[VLFSessionTileAvailabilityMonitor affectsPuckVisibility])
    {
      v200 = sub_1000764DC();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        v201 = objc_opt_class();
        v202 = NSStringFromClass(v201);
        v269 = 138412290;
        v270 = v202;
        _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v199];
    }

    if (+[VLFSessionTileAvailabilityMonitor affectsBannerVisibility])
    {
      v203 = sub_1000764DC();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
      {
        v204 = objc_opt_class();
        v205 = NSStringFromClass(v204);
        v269 = 138412290;
        v270 = v205;
        _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v199];
    }

    goto LABEL_196;
  }

  if (v192)
  {
    v206 = objc_opt_class();
    v199 = NSStringFromClass(v206);
    v269 = 138412290;
    v270 = v199;
    _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);

LABEL_196:
  }

  v207 = +[VLFSessionTransitSteppingMonitor isEnabled];
  v208 = sub_1000764DC();
  v209 = os_log_type_enabled(v208, OS_LOG_TYPE_INFO);
  if (v207)
  {
    if (v209)
    {
      v210 = objc_opt_class();
      v211 = NSStringFromClass(v210);
      v269 = 138412290;
      v270 = v211;
      _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v212 = [VLFSessionTransitSteppingMonitor alloc];
    v213 = +[MNNavigationService sharedService];
    v208 = [(VLFSessionTransitSteppingMonitor *)v212 initWithObserver:self navigationService:v213];

    if (+[VLFSessionTransitSteppingMonitor affectsPuckVisibility])
    {
      v214 = sub_1000764DC();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
      {
        v215 = objc_opt_class();
        v216 = NSStringFromClass(v215);
        v269 = 138412290;
        v270 = v216;
        _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v208];
    }

    if (+[VLFSessionTransitSteppingMonitor affectsBannerVisibility])
    {
      v217 = sub_1000764DC();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
      {
        v218 = objc_opt_class();
        v219 = NSStringFromClass(v218);
        v269 = 138412290;
        v270 = v219;
        _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v208];
    }
  }

  else if (v209)
  {
    v220 = objc_opt_class();
    v221 = NSStringFromClass(v220);
    v269 = 138412290;
    v270 = v221;
    _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  v222 = +[VLFSessionUsageMonitor isEnabled];
  v223 = sub_1000764DC();
  v224 = os_log_type_enabled(&v223->super.super, OS_LOG_TYPE_INFO);
  if (v222)
  {
    if (v224)
    {
      v225 = objc_opt_class();
      v226 = NSStringFromClass(v225);
      v269 = 138412290;
      v270 = v226;
      _os_log_impl(&_mh_execute_header, &v223->super.super, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v223 = [[VLFSessionUsageMonitor alloc] initWithObserver:self];
    if (+[VLFSessionUsageMonitor affectsPuckVisibility])
    {
      v227 = sub_1000764DC();
      if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
      {
        v228 = objc_opt_class();
        v229 = NSStringFromClass(v228);
        v269 = 138412290;
        v270 = v229;
        _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v223];
    }

    if (+[VLFSessionUsageMonitor affectsBannerVisibility])
    {
      v230 = sub_1000764DC();
      if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
      {
        v231 = objc_opt_class();
        v232 = NSStringFromClass(v231);
        v269 = 138412290;
        v270 = v232;
        _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v223];
    }
  }

  else if (v224)
  {
    v233 = objc_opt_class();
    v234 = NSStringFromClass(v233);
    v269 = 138412290;
    v270 = v234;
    _os_log_impl(&_mh_execute_header, &v223->super.super, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  if (+[VLFSessionDebugPuckVisibilityMonitor isEnabled])
  {
    v235 = sub_1000764DC();
    if (os_log_type_enabled(v235, OS_LOG_TYPE_INFO))
    {
      v236 = objc_opt_class();
      v237 = NSStringFromClass(v236);
      v269 = 138412290;
      v270 = v237;
      _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v238 = [[VLFSessionDebugPuckVisibilityMonitor alloc] initWithObserver:self];
    v239 = sub_1000764DC();
    if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
    {
      v240 = objc_opt_class();
      v241 = NSStringFromClass(v240);
      v269 = 138412290;
      v270 = v241;
      _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
    }

    [(NSMutableSet *)self->_lowThresholdMonitors addObject:v238];
  }

  if (+[VLFSessionDebugBannerVisibilityMonitor isEnabled])
  {
    v242 = sub_1000764DC();
    if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
    {
      v243 = objc_opt_class();
      v244 = NSStringFromClass(v243);
      v269 = 138412290;
      v270 = v244;
      _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v245 = [[VLFSessionDebugBannerVisibilityMonitor alloc] initWithObserver:self];
    v246 = sub_1000764DC();
    if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
    {
      v247 = objc_opt_class();
      v248 = NSStringFromClass(v247);
      v269 = 138412290;
      v270 = v248;
      _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
    }

    [(NSMutableSet *)self->_highThresholdMonitors addObject:v245];
  }

  v249 = +[VLFSessionSunsetSunriseMonitor isEnabled];
  v250 = sub_1000764DC();
  v251 = os_log_type_enabled(v250, OS_LOG_TYPE_INFO);
  if (v249)
  {
    if (v251)
    {
      v252 = objc_opt_class();
      v253 = NSStringFromClass(v252);
      v269 = 138412290;
      v270 = v253;
      _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_INFO, "Enabling %@", &v269, 0xCu);
    }

    v254 = [VLFSessionSunsetSunriseMonitor alloc];
    v255 = +[MKLocationManager sharedLocationManager];
    v256 = +[SunsetSunriseCalculator sharedCalculator];
    v257 = [(VLFSessionStateManager *)self platformController];
    v250 = [(VLFSessionSunsetSunriseMonitor *)v254 initWithObserver:self locationManager:v255 sunsetSunriseCalculator:v256 platformController:v257 transportTypeSupportProvider:objc_opt_class()];

    if (+[VLFSessionSunsetSunriseMonitor affectsPuckVisibility])
    {
      v258 = sub_1000764DC();
      if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
      {
        v259 = objc_opt_class();
        v260 = NSStringFromClass(v259);
        v269 = 138412290;
        v270 = v260;
        _os_log_impl(&_mh_execute_header, v258, OS_LOG_TYPE_INFO, "%@ has passive state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_lowThresholdMonitors addObject:v250];
    }

    if (+[VLFSessionSunsetSunriseMonitor affectsBannerVisibility])
    {
      v261 = sub_1000764DC();
      if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
      {
        v262 = objc_opt_class();
        v263 = NSStringFromClass(v262);
        v269 = 138412290;
        v270 = v263;
        _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_INFO, "%@ has active state", &v269, 0xCu);
      }

      [(NSMutableSet *)self->_highThresholdMonitors addObject:v250];
    }
  }

  else if (v251)
  {
    v264 = objc_opt_class();
    v265 = NSStringFromClass(v264);
    v269 = 138412290;
    v270 = v265;
    _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_INFO, "Not enabling %@", &v269, 0xCu);
  }

  self->_didBuildMonitors = 1;
}

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    v4 = sub_1000764DC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentState = self->_currentState;
      v6 = @"Off";
      if (currentState == 1)
      {
        v6 = @"Puck";
      }

      if (currentState == 2)
      {
        v7 = @"PuckAndBanner";
      }

      else
      {
        v7 = v6;
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "State changed to %@", &v9, 0xCu);
    }

    v8 = [(VLFSessionStateManager *)self observers];
    [v8 stateManager:self didChangeState:self->_currentState];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VLFSessionStateManager *)self observers];
    [v5 unregisterObserver:v4];
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VLFSessionStateManager *)self observers];
    [v5 registerObserver:v4];
  }
}

- (VLFSessionStateManager)initWithPlatformController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[VLFSessionStateManager initWithPlatformController:]";
      v20 = 2080;
      v21 = "VLFSessionStateManager.m";
      v22 = 1024;
      v23 = 69;
      v24 = 2080;
      v25 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = VLFSessionStateManager;
  v5 = [(VLFSessionStateManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, v4);
    v7 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VLFSessionStateManagerDelegate queue:0];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = +[NSMutableSet set];
    highThresholdMonitors = v6->_highThresholdMonitors;
    v6->_highThresholdMonitors = v9;

    v11 = +[NSMutableSet set];
    lowThresholdMonitors = v6->_lowThresholdMonitors;
    v6->_lowThresholdMonitors = v11;

    [(VLFSessionStateManager *)v6 buildMonitors];
    [(VLFSessionStateManager *)v6 calculateCurrentState];
  }

  return v6;
}

@end