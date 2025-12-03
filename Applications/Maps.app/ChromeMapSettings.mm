@interface ChromeMapSettings
+ (id)_nameForType:(unint64_t)type;
+ (void)_registerDefaultsIfNeeded;
+ (void)initialize;
- (BOOL)_isCamera:(id)camera equalToCamera:(id)toCamera;
- (CLLocationCoordinate2D)centerCoordinate;
- (ChromeMapSettings)initWithType:(unint64_t)type userInterfaceIdiom:(int64_t)idiom;
- (ChromeMapSettingsDelegate)delegate;
- (MKMapView)mapView;
- (id)_defaultsKeysForType:(unint64_t)type;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_readFromUserDefaultsWithKeys:(id)keys;
- (void)_saveIfNeeded;
- (void)_writeToUserDefaultsWithKeys:(id)keys;
- (void)applyToMapViewAnimated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)clear;
- (void)readFromMapSettings:(id)settings;
- (void)readFromMapView;
- (void)reload;
- (void)save;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setMapView:(id)view;
- (void)setNeedsSaving;
- (void)setPitched:(BOOL)pitched;
- (void)setTrackingMode:(int64_t)mode;
- (void)setType:(unint64_t)type;
- (void)setZoomLevel:(double)level;
@end

@implementation ChromeMapSettings

- (CLLocationCoordinate2D)centerCoordinate
{
  latitude = self->_centerCoordinate.latitude;
  longitude = self->_centerCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (ChromeMapSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(ChromeMapSettings *)self hasCenterCoordinate])
  {
    v4 = [NSString stringWithFormat:@"%+.8f, %+.8f", *&self->_centerCoordinate.latitude, *&self->_centerCoordinate.longitude];
    [v3 setObject:v4 forKeyedSubscript:@"centerCoordinate"];
  }

  if ([(ChromeMapSettings *)self hasPitched])
  {
    [v3 setObject:self->_pitched forKeyedSubscript:@"pitched"];
  }

  if ([(ChromeMapSettings *)self hasTrackingMode])
  {
    [v3 setObject:self->_trackingMode forKeyedSubscript:@"trackingMode"];
  }

  if ([(ChromeMapSettings *)self hasZoomLevel])
  {
    [v3 setObject:self->_zoomLevel forKeyedSubscript:@"zoomLevel"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)_writeToUserDefaultsWithKeys:(id)keys
{
  keysCopy = keys;
  saveTimer = [(ChromeMapSettings *)self saveTimer];
  [saveTimer invalidate];

  [(ChromeMapSettings *)self setSaveTimer:0];
  if (![keysCopy count])
  {
    goto LABEL_31;
  }

  v6 = sub_1007B0F80();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

LABEL_11:
    v13 = [(ChromeMapSettings *)selfCopy description];
    *buf = 138543618;
    v25 = selfCopy;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Saving to defaults: %@", buf, 0x16u);
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [keysCopy objectForKeyedSubscript:@"centerCoordinate.latitude"];
  v16 = [keysCopy objectForKeyedSubscript:@"centerCoordinate.longitude"];
  v17 = [keysCopy objectForKeyedSubscript:@"zoomLevel"];
  v18 = [keysCopy objectForKeyedSubscript:@"trackingMode"];
  v19 = [keysCopy objectForKeyedSubscript:@"pitched"];
  if (v15 && v16)
  {
    v20 = 0;
    if (fabs(self->_centerCoordinate.longitude) > 180.0 || (latitude = self->_centerCoordinate.latitude, latitude < -90.0))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      if (latitude <= 90.0)
      {
        v22 = [NSNumber numberWithDouble:?];
        v20 = [NSNumber numberWithDouble:self->_centerCoordinate.longitude];
      }
    }

    [v14 setObject:v22 forKey:v15];
    [v14 setObject:v20 forKey:v16];
  }

  if (v17)
  {
    [v14 setObject:self->_zoomLevel forKey:v17];
  }

  if (v18)
  {
    if ([(ChromeMapSettings *)self userInterfaceIdiom]== 3 && ([(NSNumber *)self->_trackingMode isEqual:&off_1016E6E30]& 1) != 0)
    {
      trackingMode = &off_1016E6E00;
    }

    else
    {
      trackingMode = self->_trackingMode;
    }

    [v14 setObject:trackingMode forKey:v18];
  }

  if (v19)
  {
    [v14 setObject:self->_pitched forKey:v19];
  }

LABEL_31:
}

- (void)_readFromUserDefaultsWithKeys:(id)keys
{
  keysCopy = keys;
  saveTimer = [(ChromeMapSettings *)self saveTimer];
  [saveTimer invalidate];

  [(ChromeMapSettings *)self setSaveTimer:0];
  if ([keysCopy count])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [keysCopy objectForKeyedSubscript:@"centerCoordinate.latitude"];
    v8 = [keysCopy objectForKeyedSubscript:@"centerCoordinate.longitude"];
    v9 = [keysCopy objectForKeyedSubscript:@"zoomLevel"];
    v10 = [keysCopy objectForKeyedSubscript:@"trackingMode"];
    v11 = [keysCopy objectForKeyedSubscript:@"pitched"];
    if (v7)
    {
      v12 = [v6 objectForKey:v7];

      v13 = v12 != 0;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = 0;
      if (v8)
      {
LABEL_4:
        v35 = [v6 objectForKey:v8];
        if (v35)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          [v6 doubleForKey:v7];
          v16 = v15;
          [v6 doubleForKey:v8];
          self->_centerCoordinate.latitude = v16;
          self->_centerCoordinate.longitude = v17;
          if (!v9)
          {
LABEL_9:
            v18 = 0;
            goto LABEL_14;
          }

LABEL_13:
          v18 = [v6 objectForKey:v9];
LABEL_14:
          zoomLevel = self->_zoomLevel;
          self->_zoomLevel = v18;

          if (v10)
          {
            v20 = [v6 objectForKey:v10];
          }

          else
          {
            v20 = 0;
          }

          trackingMode = self->_trackingMode;
          self->_trackingMode = v20;

          if ([(NSNumber *)self->_trackingMode isEqual:&off_1016E6E30])
          {
            v22 = self->_trackingMode;
            self->_trackingMode = &off_1016E6E00;
          }

          if (v11)
          {
            v23 = [v6 objectForKey:v11];
          }

          else
          {
            v23 = 0;
          }

          pitched = self->_pitched;
          self->_pitched = v23;

          v25 = sub_1007B0F80();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            goto LABEL_29;
          }

          v33 = v9;
          selfCopy = self;
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v34 = v7;
          if (objc_opt_respondsToSelector())
          {
            v29 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
            v30 = v29;
            if (v29 && ![v29 isEqualToString:v28])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy, v30];

              goto LABEL_28;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy];
LABEL_28:

          v32 = [(ChromeMapSettings *)selfCopy description];
          *buf = 138543618;
          v37 = selfCopy;
          v38 = 2112;
          v39 = v32;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}@] Read from defaults: %@", buf, 0x16u);

          v9 = v33;
          v7 = v34;
LABEL_29:

          goto LABEL_30;
        }

LABEL_12:
        self->_centerCoordinate = *MKCoordinateInvalid;
        if (!v9)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    v35 = 0;
    goto LABEL_12;
  }

LABEL_30:
}

- (void)_saveIfNeeded
{
  saveTimer = [(ChromeMapSettings *)self saveTimer];

  if (saveTimer)
  {

    [(ChromeMapSettings *)self save];
  }
}

- (void)save
{
  saveTimer = [(ChromeMapSettings *)self saveTimer];
  [saveTimer invalidate];

  [(ChromeMapSettings *)self setSaveTimer:0];
  v4 = [(ChromeMapSettings *)self _defaultsKeysForType:[(ChromeMapSettings *)self type]];
  if ([v4 count])
  {
    [(ChromeMapSettings *)self _writeToUserDefaultsWithKeys:v4];
  }
}

- (void)setNeedsSaving
{
  saveTimer = [(ChromeMapSettings *)self saveTimer];
  [saveTimer invalidate];

  [(ChromeMapSettings *)self setSaveTimer:0];
  v4 = [(ChromeMapSettings *)self _defaultsKeysForType:[(ChromeMapSettings *)self type]];
  if ([v4 count])
  {
    type = [(ChromeMapSettings *)self type];
    objc_initWeak(&location, self);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1007B1618;
    v10 = &unk_10162A010;
    objc_copyWeak(v12, &location);
    v12[1] = type;
    v11 = v4;
    v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v7 block:1.0];
    [(ChromeMapSettings *)self setSaveTimer:v6, v7, v8, v9, v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = ChromeMapSettings;
  v3 = [(ChromeMapSettings *)&v12 description];
  name = [(ChromeMapSettings *)self name];
  v5 = [NSNumber numberWithUnsignedInteger:[(ChromeMapSettings *)self type]];
  v6 = [NSString stringWithFormat:@"%+.8f, %+.8f", *&self->_centerCoordinate.latitude, *&self->_centerCoordinate.longitude];
  integerValue = [(NSNumber *)self->_trackingMode integerValue];
  if (integerValue >= 3)
  {
    v9 = [NSNumber numberWithInteger:integerValue];
    v8 = [NSString stringWithFormat:@"Unknown %@", v9];
  }

  else
  {
    v8 = *(&off_10162A050 + integerValue);
  }

  v10 = [NSString stringWithFormat:@"%@ <name:%@, type:%@, centerCoordinate:%@, trackingMode:%@, zoomLevel:%@, pitched:%@>", v3, name, v5, v6, v8, self->_zoomLevel, self->_pitched];

  return v10;
}

- (void)clear
{
  v3 = sub_1007B0F80();
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
      v7 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Resetting to original default values", buf, 0xCu);
  }

  self->_centerCoordinate = *MKCoordinateInvalid;
  trackingMode = self->_trackingMode;
  self->_trackingMode = 0;

  zoomLevel = self->_zoomLevel;
  self->_zoomLevel = 0;

  pitched = self->_pitched;
  self->_pitched = 0;

  [(ChromeMapSettings *)self save];
  [(ChromeMapSettings *)self reload];
}

- (BOOL)_isCamera:(id)camera equalToCamera:(id)toCamera
{
  cameraCopy = camera;
  toCameraCopy = toCamera;
  [cameraCopy centerCoordinate];
  [toCameraCopy centerCoordinate];
  if (CLCoordinateEqualToCoordinateEpsilon() && ([cameraCopy heading], v8 = v7, objc_msgSend(toCameraCopy, "heading"), v8 == v9) && (objc_msgSend(cameraCopy, "pitch"), v11 = v10, objc_msgSend(toCameraCopy, "pitch"), v11 == v12))
  {
    [cameraCopy altitude];
    v14 = v13;
    [toCameraCopy altitude];
    v16 = v14 == v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)applyToMapViewAnimated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = sub_1007B0F80();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (objc_opt_respondsToSelector())
  {
    v12 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
    v13 = v12;
    if (v12 && ![v12 isEqualToString:v11])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
  v15 = [(ChromeMapSettings *)selfCopy description];
  if (animatedCopy)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v16;
  if (completionCopy)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  *buf = 138544642;
  *&buf[4] = selfCopy;
  *&buf[12] = 2114;
  *&buf[14] = uUIDString;
  *&buf[22] = 2112;
  v177 = v15;
  v178 = 2114;
  v179 = v17;
  v180 = 2048;
  durationCopy2 = duration;
  v182 = 2114;
  v183 = v19;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ applyToMapViewAnimated:duration:completion: %@ (animated:%{public}@, duration:%#.2lfs, completion:%{public}@)", buf, 0x3Eu);

LABEL_17:
  v20 = +[NSThread callStackSymbols];
  v21 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007B2FA4;
  block[3] = &unk_101661A40;
  block[4] = self;
  v159 = uUIDString;
  v174 = v159;
  v158 = v20;
  v175 = v158;
  dispatch_async(v21, block);

  dictionaryRepresentation = [(ChromeMapSettings *)self dictionaryRepresentation];
  applicationsByRunIndex = self->_applicationsByRunIndex;
  v23 = [NSNumber numberWithUnsignedInteger:self->_runningApplicationCount];
  v24 = [(NSMutableDictionary *)applicationsByRunIndex objectForKeyedSubscript:v23];

  if (!v24 || ([v24 settingsDictionary], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToDictionary:", dictionaryRepresentation), v25, !v26))
  {
    mapView = [(ChromeMapSettings *)self mapView];
    v27 = mapView;
    if (!mapView)
    {
      goto LABEL_144;
    }

    [mapView frame];
    if (v37 == CGSizeZero.width && v36 == CGSizeZero.height)
    {
      v38 = sub_1007B0F80();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
LABEL_36:

        goto LABEL_144;
      }

      selfCopy2 = self;
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      if (objc_opt_respondsToSelector())
      {
        v42 = [(ChromeMapSettings *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v43 = v42;
        if (v42 && ![v42 isEqualToString:v41])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v41, selfCopy2, v43];

          goto LABEL_35;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v41, selfCopy2];
LABEL_35:

      *buf = 138543618;
      *&buf[4] = selfCopy2;
      *&buf[12] = 2114;
      *&buf[14] = v159;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Will not apply, mapView has zero size", buf, 0x16u);

      goto LABEL_36;
    }

    window = [v27 window];
    if (window)
    {
      window2 = [v27 window];
      windowScene = [window2 windowScene];
      if ([windowScene activationState] == 2)
      {
      }

      else
      {
        window3 = [v27 window];
        windowScene2 = [window3 windowScene];
        v50 = [windowScene2 activationState] == -1;

        if (!v50)
        {
          goto LABEL_42;
        }
      }
    }

    LOBYTE(animatedCopy) = 0;
LABEL_42:
    delegate = [(ChromeMapSettings *)self delegate];
    v52 = objc_opt_respondsToSelector();

    if ((v52 & 1) == 0)
    {
      goto LABEL_45;
    }

    LOBYTE(location[0]) = animatedCopy;
    delegate2 = [(ChromeMapSettings *)self delegate];
    v54 = [delegate2 mapSettings:self shouldApplyAnimated:location];

    if (v54)
    {
      LOBYTE(animatedCopy) = location[0];
LABEL_45:
      pitched = [(ChromeMapSettings *)self pitched];
      trackingMode = [(ChromeMapSettings *)self trackingMode];
      [(ChromeMapSettings *)self zoomLevel];
      [(ChromeMapSettings *)self centerCoordinate];
      v56 = v55;
      v58 = v57;
      if (trackingMode)
      {
        v59 = +[MKLocationManager sharedLocationManager];
        isAuthorizedForPreciseLocation = [v59 isAuthorizedForPreciseLocation];

        if (isAuthorizedForPreciseLocation)
        {
          memset(buf, 0, sizeof(buf));
          [v27 _userTrackingBehavior];
          buf[0] = 0;
          *location = *buf;
          location[2] = *&buf[16];
          [v27 _setUserTrackingBehavior:location];
        }

        else
        {
          *buf = *VKAnnotationTrackingBehaviorDefault;
          *&buf[16] = VKAnnotationTrackingBehaviorDefault[2];
          [v27 _setUserTrackingBehavior:buf];
        }
      }

      else if ([v27 userTrackingMode])
      {
        [v27 setUserTrackingMode:0 animated:0];
      }

      userLocation = [v27 userLocation];
      location = [userLocation location];
      if (location)
      {
      }

      else
      {
        v71 = +[MKLocationManager sharedLocationManager];
        location = [v71 lastLocation];

        if (!location)
        {
          goto LABEL_72;
        }
      }

      if (trackingMode || fabs(v58) > 180.0 || v56 < -90.0 || v56 > 90.0)
      {
        v72 = sub_1007B0F80();
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
LABEL_71:

          [location coordinate];
          v56 = v79;
          v58 = v80;
          goto LABEL_72;
        }

        selfCopy3 = self;
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        if (objc_opt_respondsToSelector())
        {
          v76 = [(ChromeMapSettings *)selfCopy3 performSelector:"accessibilityIdentifier"];
          v77 = v76;
          if (v76 && ![v76 isEqualToString:v75])
          {
            selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v75, selfCopy3, v77];

            goto LABEL_70;
          }
        }

        selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v75, selfCopy3];
LABEL_70:

        *buf = 138543874;
        *&buf[4] = selfCopy3;
        *&buf[12] = 2114;
        *&buf[14] = v159;
        *&buf[22] = 2112;
        v177 = location;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Will try to use centerCoordinate from userLocation: %@", buf, 0x20u);

        goto LABEL_71;
      }

LABEL_72:
      if (fabs(v58) > 180.0 || v56 < -90.0 || v56 > 90.0)
      {
        v103 = sub_1007B0F80();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v104 = [(ChromeMapSettings *)self description];
          *buf = 138543874;
          *&buf[4] = v159;
          *&buf[12] = 2112;
          *&buf[14] = v104;
          *&buf[22] = 2112;
          v177 = location;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%{public}@ Will not apply due to invalid center coordinate %@, userLocation: %@", buf, 0x20u);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_143;
      }

      [v27 bounds];
      v82 = v81;
      v84 = v83;
      [v27 _edgeInsets];
      v87 = v82 - (v85 + v86);
      v90 = v84 - (v88 + v89);
      MKCoordinateRegionMakeWithZoomLevel();
      MKMapRectForCoordinateRegion();
      v95 = v91;
      v96 = v92;
      v97 = v93;
      v98 = v94;
      if (duration < 0.0)
      {
        v99 = [[GEOMapRegion alloc] initWithMapRect:{v91, v92, v93, v94}];
        duration = 0.0;
        if (animatedCopy)
        {
          _mapLayer = [v27 _mapLayer];
          [_mapLayer durationToAnimateToMapRegion:v99];
          duration = v101;
        }
      }

      v154 = [MKMapCamera _cameraLookingAtMapRect:v95 forViewSize:v96, v97, v98, v87, v90];
      if (pitched)
      {
        if ([v27 _isPitched])
        {
          camera = [v27 camera];
          [camera pitch];
          [v154 setPitch:?];
        }
      }

      else
      {
        [v154 setPitch:0.0];
      }

      if (trackingMode == 2)
      {
        if ([v27 userTrackingMode]== 2)
        {
          camera2 = [v27 camera];
          [camera2 heading];
          [v154 setHeading:?];
        }
      }

      else
      {
        [v154 setHeading:0.0];
      }

      [v154 centerCoordinate];
      if (fabs(v107) <= 180.0 && v106 >= -90.0 && v106 <= 90.0)
      {
        if (trackingMode == [v27 userTrackingMode])
        {
          camera3 = [v27 camera];
          v109 = [(ChromeMapSettings *)self _isCamera:v154 equalToCamera:camera3];

          if (v109)
          {
            v110 = sub_1007B0F80();
            if (!os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
            {
              goto LABEL_108;
            }

            selfCopy4 = self;
            v112 = objc_opt_class();
            v113 = NSStringFromClass(v112);
            if (objc_opt_respondsToSelector())
            {
              v114 = [(ChromeMapSettings *)selfCopy4 performSelector:"accessibilityIdentifier"];
              v115 = v114;
              if (v114 && ![v114 isEqualToString:v113])
              {
                v115 = [NSString stringWithFormat:@"%@<%p, %@>", v113, selfCopy4, v115];

                goto LABEL_107;
              }
            }

            v115 = [NSString stringWithFormat:@"%@<%p>", v113, selfCopy4];
LABEL_107:

            *buf = 138543618;
            *&buf[4] = v115;
            *&buf[12] = 2114;
            *&buf[14] = v159;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Will not apply because the map is already correctly framed", buf, 0x16u);

LABEL_108:
            if (completionCopy)
            {
              completionCopy[2](completionCopy, 1);
            }

LABEL_142:

LABEL_143:
            goto LABEL_144;
          }
        }

        ++self->_runningApplicationCount;
        objc_initWeak(location, self);
        v125 = [[ChromeMapSettingsApplication alloc] initWithSettingsDictionary:dictionaryRepresentation];
        [(ChromeMapSettingsApplication *)v125 addCompletionHandler:completionCopy];
        runningApplicationCount = self->_runningApplicationCount;
        v127 = self->_applicationsByRunIndex;
        if (!v127)
        {
          v128 = self->_runningApplicationCount;
          v129 = +[NSMutableDictionary dictionary];
          v130 = self->_applicationsByRunIndex;
          self->_applicationsByRunIndex = v129;

          v127 = self->_applicationsByRunIndex;
          runningApplicationCount = v128;
        }

        v152 = runningApplicationCount;
        v131 = [NSNumber numberWithUnsignedInteger:?];
        [(NSMutableDictionary *)v127 setObject:v125 forKeyedSubscript:v131];

        v132 = sub_1007B0F80();
        if (!os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
        {
LABEL_134:

          delegate3 = [(ChromeMapSettings *)self delegate];
          v146 = objc_opt_respondsToSelector();

          if (v146)
          {
            delegate4 = [(ChromeMapSettings *)self delegate];
            [delegate4 mapSettings:self willApplyAnimated:animatedCopy & 1];
          }

          v167[0] = _NSConcreteStackBlock;
          v167[1] = 3221225472;
          v167[2] = sub_1007B3140;
          v167[3] = &unk_10164DFE0;
          objc_copyWeak(&v171, location);
          v167[4] = self;
          v148 = v159;
          v168 = v148;
          v169 = v27;
          v170 = v154;
          v149 = objc_retainBlock(v167);
          v162[0] = _NSConcreteStackBlock;
          v162[1] = 3221225472;
          v162[2] = sub_1007B3310;
          v162[3] = &unk_101629FC8;
          objc_copyWeak(v164, location);
          v165 = animatedCopy & 1;
          v166 = pitched;
          v164[1] = v152;
          v164[2] = trackingMode;
          v162[4] = self;
          v163 = v148;
          v150 = objc_retainBlock(v162);
          if (animatedCopy)
          {
            [UIView animateWithDuration:v149 animations:v150 completion:duration];
          }

          else
          {
            (v149[2])(v149);
            (v150[2])(v150, 1);
          }

          objc_destroyWeak(v164);
          objc_destroyWeak(&v171);

          objc_destroyWeak(location);
          goto LABEL_142;
        }

        log = v132;
        selfCopy5 = self;
        v134 = objc_opt_class();
        v135 = NSStringFromClass(v134);
        if (objc_opt_respondsToSelector())
        {
          v136 = [(ChromeMapSettings *)selfCopy5 performSelector:"accessibilityIdentifier"];
          v137 = v136;
          if (v136 && ([v136 isEqualToString:v135] & 1) == 0)
          {
            v137 = [NSString stringWithFormat:@"%@<%p, %@>", v135, selfCopy5, v137];

            goto LABEL_127;
          }
        }

        v137 = [NSString stringWithFormat:@"%@<%p>", v135, selfCopy5];
LABEL_127:

        v139 = v137;
        v140 = [(ChromeMapSettings *)selfCopy5 description];
        if (animatedCopy)
        {
          v141 = @"YES";
        }

        else
        {
          v141 = @"NO";
        }

        v142 = v141;
        if (completionCopy)
        {
          v143 = @"YES";
        }

        else
        {
          v143 = @"NO";
        }

        v144 = v143;
        *buf = 138544642;
        *&buf[4] = v139;
        *&buf[12] = 2114;
        *&buf[14] = v159;
        *&buf[22] = 2112;
        v177 = v140;
        v178 = 2112;
        v179 = v142;
        v180 = 2048;
        durationCopy2 = duration;
        v182 = 2112;
        v183 = v144;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Will apply %@ (animated:%@, duration:%#.2lfs, completion:%@)", buf, 0x3Eu);

        v132 = log;
        goto LABEL_134;
      }

      v117 = sub_1007B0F80();
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
LABEL_117:

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_142;
      }

      selfCopy6 = self;
      v119 = objc_opt_class();
      v120 = NSStringFromClass(v119);
      if (objc_opt_respondsToSelector())
      {
        v121 = [(ChromeMapSettings *)selfCopy6 performSelector:"accessibilityIdentifier"];
        v122 = v121;
        if (v121 && ![v121 isEqualToString:v120])
        {
          v122 = [NSString stringWithFormat:@"%@<%p, %@>", v120, selfCopy6, v122];

          goto LABEL_116;
        }
      }

      v122 = [NSString stringWithFormat:@"%@<%p>", v120, selfCopy6];
LABEL_116:

      [v27 bounds];
      v124 = NSStringFromCGRect(v184);
      *buf = 138544130;
      *&buf[4] = v122;
      *&buf[12] = 2114;
      *&buf[14] = v159;
      *&buf[22] = 2112;
      v177 = v154;
      v178 = 2112;
      v179 = v124;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ Will not apply due to invalid center coordinate on the camera. Camera is %@ and map view bounds is %@", buf, 0x2Au);

      goto LABEL_117;
    }

    v61 = sub_1007B0F80();
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
LABEL_57:

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_144;
    }

    selfCopy7 = self;
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    if (objc_opt_respondsToSelector())
    {
      v65 = [(ChromeMapSettings *)selfCopy7 performSelector:"accessibilityIdentifier"];
      v66 = v65;
      if (v65 && ![v65 isEqualToString:v64])
      {
        selfCopy7 = [NSString stringWithFormat:@"%@<%p, %@>", v64, selfCopy7, v66];

        goto LABEL_56;
      }
    }

    selfCopy7 = [NSString stringWithFormat:@"%@<%p>", v64, selfCopy7];
LABEL_56:

    v68 = [(ChromeMapSettings *)selfCopy7 description];
    *buf = 138543874;
    *&buf[4] = selfCopy7;
    *&buf[12] = 2114;
    *&buf[14] = v159;
    *&buf[22] = 2112;
    v177 = v68;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Will not apply, not permitted by delegate (%@)", buf, 0x20u);

    goto LABEL_57;
  }

  [v24 addCompletionHandler:completionCopy];
  v27 = sub_1007B0F80();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    selfCopy8 = self;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [(ChromeMapSettings *)selfCopy8 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        selfCopy8 = [NSString stringWithFormat:@"%@<%p, %@>", v30, selfCopy8, v32];

        goto LABEL_25;
      }
    }

    selfCopy8 = [NSString stringWithFormat:@"%@<%p>", v30, selfCopy8];
LABEL_25:

    v34 = [(ChromeMapSettings *)selfCopy8 description];
    *buf = 138543874;
    *&buf[4] = selfCopy8;
    *&buf[12] = 2114;
    *&buf[14] = v159;
    *&buf[22] = 2112;
    v177 = v34;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ piggy-backing on an in-flight application %@", buf, 0x20u);
  }

LABEL_144:
}

- (void)readFromMapSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    if ([settingsCopy hasCenterCoordinate])
    {
      [settingsCopy centerCoordinate];
      [(ChromeMapSettings *)self setCenterCoordinate:?];
    }

    if ([settingsCopy hasTrackingMode])
    {
      -[ChromeMapSettings setTrackingMode:](self, "setTrackingMode:", [settingsCopy trackingMode]);
    }

    if ([settingsCopy hasZoomLevel])
    {
      [settingsCopy zoomLevel];
      [(ChromeMapSettings *)self setZoomLevel:?];
    }

    if ([settingsCopy hasPitched])
    {
      -[ChromeMapSettings setPitched:](self, "setPitched:", [settingsCopy pitched]);
    }
  }
}

- (void)readFromMapView
{
  mapView = [(ChromeMapSettings *)self mapView];
  if (mapView)
  {
    v7 = mapView;
    userTrackingMode = [mapView userTrackingMode];
    if (userTrackingMode)
    {
      v5 = MKCoordinateInvalid[0];
      v6 = MKCoordinateInvalid[1];
    }

    else
    {
      [v7 centerCoordinate];
    }

    [(ChromeMapSettings *)self setCenterCoordinate:v5, v6];
    [(ChromeMapSettings *)self setTrackingMode:userTrackingMode];
    [v7 _zoomLevel];
    [(ChromeMapSettings *)self setZoomLevel:?];
    -[ChromeMapSettings setPitched:](self, "setPitched:", [v7 _isPitched]);
    mapView = v7;
  }
}

- (void)setMapView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mapView, obj);
    v5 = obj;
  }
}

- (void)setPitched:(BOOL)pitched
{
  pitchedCopy = pitched;
  pitched = self->_pitched;
  if (!pitched || [(NSNumber *)pitched BOOLValue]!= pitched)
  {
    v6 = [NSNumber numberWithBool:pitchedCopy];
    v7 = self->_pitched;
    self->_pitched = v6;

    [(ChromeMapSettings *)self setNeedsSaving];
  }
}

- (void)setTrackingMode:(int64_t)mode
{
  trackingMode = self->_trackingMode;
  if (trackingMode && [(NSNumber *)trackingMode integerValue]== mode)
  {
    return;
  }

  v6 = sub_1007B0F80();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

    v13 = selfCopy;
    if (mode >= 3)
    {
      v15 = [NSNumber numberWithInteger:mode];
      v14 = [NSString stringWithFormat:@"Unknown %@", v15];
    }

    else
    {
      v14 = *(&off_10162A050 + mode);
    }

    *buf = 138543618;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] setTrackingMode (%{public}@)", buf, 0x16u);
  }

  v16 = [NSNumber numberWithInteger:mode];
  v17 = self->_trackingMode;
  self->_trackingMode = v16;

  if (mode)
  {
    self->_centerCoordinate = *MKCoordinateInvalid;
  }

  [(ChromeMapSettings *)self setNeedsSaving];
}

- (void)setZoomLevel:(double)level
{
  v5 = sub_1007B0F80();
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
      v9 = [(ChromeMapSettings *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v18 = 2048;
    levelCopy = level;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] setZoomLevel (%f)", buf, 0x16u);
  }

  zoomLevel = self->_zoomLevel;
  if (!zoomLevel || ([(NSNumber *)zoomLevel floatValue], v13 != level))
  {
    if (level <= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = [NSNumber numberWithDouble:level];
    }

    v15 = self->_zoomLevel;
    self->_zoomLevel = v14;

    [(ChromeMapSettings *)self setNeedsSaving];
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  if (vabdd_f64(coordinate.latitude, self->_centerCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(coordinate.longitude, self->_centerCoordinate.longitude) >= 0.00000000999999994)
  {
    self->_centerCoordinate = coordinate;
    [(ChromeMapSettings *)self setNeedsSaving];
  }
}

- (id)_defaultsKeysForType:(unint64_t)type
{
  if ([(ChromeMapSettings *)self userInterfaceIdiom]!= 3)
  {
    if (type == 1)
    {
      v9[0] = @"centerCoordinate.latitude";
      v9[1] = @"centerCoordinate.longitude";
      v10[0] = @"map.browse.centerCoordinate.latitude";
      v10[1] = @"map.browse.centerCoordinate.longitude";
      v9[2] = @"zoomLevel";
      v9[3] = @"pitched";
      v10[2] = @"map.browse.zoomLevel";
      v10[3] = @"map.browse.pitched";
      v9[4] = @"trackingMode";
      v10[4] = @"map.browse.trackingMode";
      v4 = v10;
      v5 = v9;
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  if (type == 2)
  {
    v11 = @"zoomLevel";
    v12 = @"StarkNavigationOverviewZoomLevel";
    v4 = &v12;
    v5 = &v11;
    v6 = 1;
    goto LABEL_10;
  }

  if (type != 1)
  {
    goto LABEL_8;
  }

  v13[0] = @"centerCoordinate.latitude";
  v13[1] = @"centerCoordinate.longitude";
  v14[0] = @"StarkMapCenterLatitude";
  v14[1] = @"StarkMapCenterLongitude";
  v13[2] = @"zoomLevel";
  v13[3] = @"pitched";
  v14[2] = @"StarkMapZoomLevel";
  v14[3] = @"StarkEnter3DMode";
  v13[4] = @"trackingMode";
  v14[4] = @"StarkUserTrackingMode";
  v4 = v14;
  v5 = v13;
LABEL_7:
  v6 = 5;
LABEL_10:
  v7 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:v6];
LABEL_11:

  return v7;
}

- (void)setType:(unint64_t)type
{
  if (self->_type != type)
  {
    [(ChromeMapSettings *)self _saveIfNeeded];
    self->_type = type;
    v6 = [objc_opt_class() _nameForType:self->_type];
    name = self->_name;
    self->_name = v6;

    v8 = [(ChromeMapSettings *)self _defaultsKeysForType:self->_type];
    [(ChromeMapSettings *)self _readFromUserDefaultsWithKeys:v8];
  }
}

- (void)reload
{
  v3 = [(ChromeMapSettings *)self _defaultsKeysForType:self->_type];
  [(ChromeMapSettings *)self _readFromUserDefaultsWithKeys:v3];
}

- (ChromeMapSettings)initWithType:(unint64_t)type userInterfaceIdiom:(int64_t)idiom
{
  v9.receiver = self;
  v9.super_class = ChromeMapSettings;
  v6 = [(ChromeMapSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ChromeMapSettings *)v6 setUserInterfaceIdiom:idiom];
    [(ChromeMapSettings *)v7 setType:type];
  }

  return v7;
}

+ (void)_registerDefaultsIfNeeded
{
  if (qword_10195D808 != -1)
  {
    dispatch_once(&qword_10195D808, &stru_101629FE8);
  }
}

+ (id)_nameForType:(unint64_t)type
{
  v3 = @"other";
  if (type == 2)
  {
    v3 = @"navigation-overview";
  }

  if (type == 1)
  {
    return @"browsing";
  }

  else
  {
    return v3;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self _registerDefaultsIfNeeded];
  }
}

@end