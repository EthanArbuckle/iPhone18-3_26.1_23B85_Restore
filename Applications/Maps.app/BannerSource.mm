@interface BannerSource
- (BNBannerSource)carPlaySource;
- (BOOL)_isDynamicIslandTarget:(id)a3;
- (BOOL)_shouldPresentForPreviousGuidance:(id)a3 nextGuidance:(id)a4 type:(unint64_t)a5 target:(id)a6;
- (BOOL)_shouldSuppressNextGuidance:(id)a3 type:(unint64_t)a4 target:(id)a5;
- (BOOL)_shouldUseAperturePresentationForBannerItem:(id)a3 inTarget:(id)a4;
- (BOOL)updateBannerForGuidanceState:(id)a3 onTarget:(id)a4 type:(unint64_t)a5;
- (BannerSource)init;
- (id)_bannerItemForType:(unint64_t)a3 guidanceState:(id)a4;
- (id)_bannerPresentableForBannerItem:(id)a3 inTarget:(id)a4;
- (id)_bannerViewForBannerItem:(id)a3 inTarget:(id)a4;
- (id)activeCarPlayBannerViewController;
- (id)bannerIdForBannerItem:(id)a3;
- (void)_cleanUpType:(Class)a3 onTarget:(id)a4 animated:(BOOL)a5;
- (void)_enqueue:(id)a3 forTarget:(id)a4;
- (void)_revokeBanner:(id)a3 animated:(BOOL)a4;
- (void)_updateCarPlayBannerSource;
- (void)cleanUpCarPlayBanners;
- (void)cleanUpPhoneBanners;
- (void)dealloc;
- (void)mapsApplicationDidTerminate;
- (void)pokeTarget:(id)a3;
- (void)presentBannerItem:(id)a3 onTarget:(id)a4;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)receivedGuidanceState:(id)a3;
- (void)reset;
- (void)resetExcludingJindo;
- (void)setCarPlaySource:(id)a3;
- (void)signalTarget:(id)a3;
@end

@implementation BannerSource

- (BannerSource)init
{
  v21.receiver = self;
  v21.super_class = BannerSource;
  v2 = [(BannerSource *)&v21 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    presentedByTarget = v2->_presentedByTarget;
    v2->_presentedByTarget = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    inAppSeenGuidanceByTarget = v2->_inAppSeenGuidanceByTarget;
    v2->_inAppSeenGuidanceByTarget = v5;

    v7 = +[NSMapTable weakToStrongObjectsMapTable];
    queuedItemsByTarget = v2->_queuedItemsByTarget;
    v2->_queuedItemsByTarget = v7;

    v9 = objc_opt_new();
    bannerIncrements = v2->_bannerIncrements;
    v2->_bannerIncrements = v9;

    v11 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:MapsAppBundleId];
    mainSource = v2->_mainSource;
    v2->_mainSource = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"mapsApplicationDidTerminate" name:UIApplicationWillTerminateNotification object:0];

    v14 = objc_opt_new();
    latestBannerForTarget = v2->_latestBannerForTarget;
    v2->_latestBannerForTarget = v14;

    v16 = v2->_latestBannerForTarget;
    v17 = objc_opt_new();
    [(NSMapTable *)v16 setObject:v17 forKey:v2->_mainSource];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_updateCarPlayBannerSource" name:UISceneWillConnectNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_updateCarPlayBannerSource" name:UISceneDidDisconnectNotification object:0];
  }

  return v2;
}

- (void)_updateCarPlayBannerSource
{
  v3 = [UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay];
  carPlaySource = self->_carPlaySource;
  if (v3)
  {
    if (!carPlaySource)
    {
      v5 = sub_100032C3C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay connected, we can show banners there now", buf, 2u);
      }

      latestBannerForTarget = self->_latestBannerForTarget;
      v7 = objc_opt_new();
      v8 = [(BannerSource *)self carPlaySource];
      [(NSMapTable *)latestBannerForTarget setObject:v7 forKey:v8];
    }
  }

  else if (carPlaySource)
  {
    v9 = sub_100032C3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CarPlay disconnected, tear down all banner support", v10, 2u);
    }

    [(NSMapTable *)self->_latestBannerForTarget removeObjectForKey:self->_carPlaySource];
    [(BannerSource *)self cleanUpCarPlayBanners];
    [(BannerSource *)self setCarPlaySource:0];
  }
}

- (void)cleanUpPhoneBanners
{
  [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:self->_mainSource animated:1];
  [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:self->_mainSource animated:1];
  if (SBUIIsSystemApertureEnabled())
  {
    v3 = objc_opt_class();
    mainSource = self->_mainSource;

    [(BannerSource *)self _cleanUpType:v3 onTarget:mainSource animated:1];
  }
}

- (void)cleanUpCarPlayBanners
{
  [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:self->_carPlaySource animated:1];
  v3 = objc_opt_class();
  carPlaySource = self->_carPlaySource;

  [(BannerSource *)self _cleanUpType:v3 onTarget:carPlaySource animated:1];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  presentedByTarget = self->_presentedByTarget;
  v9 = [v6 target];
  v10 = [(NSMapTable *)presentedByTarget objectForKey:v9];

  v11 = sub_100032C3C();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10 == v6)
  {
    if (v12)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Finished presenting banner: %@ reason: %@", &v15, 0x16u);
    }

    v13 = self->_presentedByTarget;
    v11 = [v6 target];
    [(NSMapTable *)v13 removeObjectForKey:v11];
  }

  else if (v12)
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BannerKit revoked banner: %@ reason: %@", &v15, 0x16u);
  }

  v14 = [v6 target];
  [(BannerSource *)self signalTarget:v14];
}

- (void)mapsApplicationDidTerminate
{
  [(BannerSource *)self cleanUpPhoneBanners];
  if (self->_carPlaySource)
  {

    [(BannerSource *)self cleanUpCarPlayBanners];
  }
}

- (BOOL)updateBannerForGuidanceState:(id)a3 onTarget:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  presentedByTarget = self->_presentedByTarget;
  v10 = a4;
  v11 = [(NSMapTable *)presentedByTarget objectForKey:v10];
  v12 = [v11 bannerView];
  v13 = [v12 aperturePresentation];
  v14 = [(BannerSource *)self _isDynamicIslandTarget:v10];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && (v13 & 1) != 0 || ([v8 uniqueIdForBannerType:a5], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "item"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "uniqueId"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v16, "isEqual:", v18), v18, v17, v16, v19))
  {
    [v11 updateFromGuidanceState:v8];
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_bannerItemForType:(unint64_t)a3 guidanceState:(id)a4
{
  v5 = a4;
  if (a3 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(*off_10162ADC0[a3]) initWithGuidanceState:v5];
  }

  return v6;
}

- (void)_enqueue:(id)a3 forTarget:(id)a4
{
  queuedItemsByTarget = self->_queuedItemsByTarget;
  v7 = a4;
  v8 = a3;
  v9 = [(NSMapTable *)queuedItemsByTarget objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 addItem:v8];
  [(NSMapTable *)self->_queuedItemsByTarget setObject:v12 forKey:v7];
}

- (void)_revokeBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100032C3C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 target];
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Revoking specific banner: %@ on target: %@", buf, 0x16u);
  }

  v9 = [v6 target];
  v10 = [v6 requestIdentifier];
  v14 = 0;
  v11 = [v9 revokePresentableWithRequestIdentifier:v10 reason:@"Dismissed" animated:v4 userInfo:&__NSDictionary0__struct error:&v14];
  v12 = v14;

  if (v12)
  {
    v13 = sub_100032C3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: %@ revoking specific banner: %@", buf, 0x16u);
    }

    if ([v12 code] == 3)
    {
      [(BannerSource *)self presentableDidDisappearAsBanner:v6 withReason:@"MapsRevocationReasonErrorRecovery"];
    }
  }
}

- (void)_cleanUpType:(Class)a3 onTarget:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  queuedItemsByTarget = self->_queuedItemsByTarget;
  v8 = a4;
  v9 = [(NSMapTable *)queuedItemsByTarget objectForKey:v8];
  [v9 removeItemsOfType:objc_opt_class()];

  v13 = [(NSMapTable *)self->_presentedByTarget objectForKey:v8];

  v10 = [v13 bannerView];
  v11 = [v10 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(BannerSource *)self _revokeBanner:v13 animated:v5];
  }
}

- (void)presentBannerItem:(id)a3 onTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BannerSource *)self _bannerPresentableForBannerItem:v6 inTarget:v7];
  v9 = [v8 bannerView];
  v10 = [v9 aperturePresentation];

  if (v10)
  {
    v32 = kSBUIPresentableSystemApertureSupportingUserInfoKey;
    v33 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v12 = sub_100032C3C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 requestIdentifier];
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Registering banner %@", buf, 0xCu);
  }

  v25 = 0;
  v14 = [v7 postPresentable:v8 options:1 userInfo:v11 error:&v25];
  v15 = v25;
  v16 = sub_100032C3C();
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      v18 = "Presenting next banner: %@ (%@)";
      v19 = v17;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v27 = v6;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v7;
    v18 = "Failed to add new banner: %@ error: %@ (%@)";
    v19 = v17;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 32;
    goto LABEL_11;
  }

  [(NSMapTable *)self->_presentedByTarget setObject:v8 forKey:v7];
  v22 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:v7];
  v23 = [v8 bannerView];
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 bannerType]);
  [v22 setObject:v8 forKeyedSubscript:v24];
}

- (void)signalTarget:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_queuedItemsByTarget objectForKey:?];
  v5 = [v4 popItem];
  if (v5)
  {
    [(BannerSource *)self presentBannerItem:v5 onTarget:v6];
  }
}

- (void)pokeTarget:(id)a3
{
  v5 = a3;
  v4 = [(NSMapTable *)self->_presentedByTarget objectForKey:?];

  if (!v4)
  {
    [(BannerSource *)self signalTarget:v5];
  }
}

- (id)bannerIdForBannerItem:(id)a3
{
  v4 = [a3 uniqueId];
  v5 = [(NSMutableDictionary *)self->_bannerIncrements objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = &off_1016E7058;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [NSString stringWithFormat:@"%@-%@", v4, v8];
  v10 = [v8 unsignedIntegerValue];

  v11 = [NSNumber numberWithUnsignedInteger:v10 + 1];
  [(NSMutableDictionary *)self->_bannerIncrements setObject:v11 forKeyedSubscript:v4];

  return v9;
}

- (id)_bannerPresentableForBannerItem:(id)a3 inTarget:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BannerSource *)self _bannerViewForBannerItem:v7 inTarget:v6];
  v9 = [MapsBannerViewController alloc];
  v10 = [(BannerSource *)self bannerIdForBannerItem:v7];

  v11 = -[MapsBannerViewController initWithRequestId:target:bannerView:delegate:aperturePresentation:](v9, "initWithRequestId:target:bannerView:delegate:aperturePresentation:", v10, v6, v8, self, [v8 aperturePresentation]);

  return v11;
}

- (id)_bannerViewForBannerItem:(id)a3 inTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v7 destination];
LABEL_4:
    v8 = objc_opt_class();
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:
  v9 = [[v8 alloc] initWithTarget:v7 item:v6 aperturePresentation:{-[BannerSource _shouldUseAperturePresentationForBannerItem:inTarget:](self, "_shouldUseAperturePresentationForBannerItem:inTarget:", v6, v7)}];

  return v9;
}

- (BOOL)_shouldUseAperturePresentationForBannerItem:(id)a3 inTarget:(id)a4
{
  v6 = a3;
  if ([(BannerSource *)self _isDynamicIslandTarget:a4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 guidanceState];
      v8 = [v7 isMapsForegroundOnMainScreen] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_shouldPresentForPreviousGuidance:(id)a3 nextGuidance:(id)a4 type:(unint64_t)a5 target:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(BannerSource *)self _isDynamicIslandTarget:v12])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v10 shouldPresentNextGuidanceUpdate:v11 forType:a5 target:v12];
  }

  return v13;
}

- (BOOL)_shouldSuppressNextGuidance:(id)a3 type:(unint64_t)a4 target:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BannerSource *)self _isDynamicIslandTarget:v9];
  v11 = 0;
  if (!a4 && (v10 & 1) == 0)
  {
    v12 = [(NSMapTable *)self->_inAppSeenGuidanceByTarget objectForKey:v9];
    v13 = v12;
    if (!v12 || ([v12 shouldPresentNextGuidanceUpdate:v8 forType:0 target:v9] & 1) != 0 || objc_msgSend(v9, "destination") == 1 && (objc_msgSend(v8, "isAlerting") & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v14 = sub_100032C3C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v13 shortDescription];
        v16 = [v8 shortDescription];
        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Suppressing alert as it is not significantly different to what was seen in app; seen: %@ vs new: %@", &v18, 0x16u);
      }

      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)_isDynamicIslandTarget:(id)a3
{
  v4 = a3;
  if (SBUIIsSystemApertureEnabled())
  {
    v5 = self->_mainSource == v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)receivedGuidanceState:(id)a3
{
  v4 = a3;
  v5 = sub_100032C3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 shortDescription];
    *buf = 138412290;
    v85 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received: %@", buf, 0xCu);
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:2];
  if ([v4 showInMainScreen])
  {
    [v7 addObject:self->_mainSource];
  }

  else
  {
    [(NSMapTable *)self->_inAppSeenGuidanceByTarget setObject:v4 forKey:self->_mainSource];
    [(BannerSource *)self cleanUpPhoneBanners];
  }

  if (self->_carPlaySource)
  {
    if ([v4 showInCarPlay])
    {
      [v7 addObject:self->_carPlaySource];
    }

    else
    {
      [(NSMapTable *)self->_inAppSeenGuidanceByTarget setObject:v4 forKey:self->_carPlaySource];
      [(BannerSource *)self cleanUpCarPlayBanners];
    }
  }

  v8 = [v4 transportType];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v7;
  v77 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v77)
  {
    v75 = *v80;
    v78 = v4;
    v76 = v8;
    do
    {
      for (i = 0; i != v77; i = i + 1)
      {
        if (*v80 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v79 + 1) + 8 * i);
        v11 = sub_100032C3C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v85 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ - Processing", buf, 0xCu);
        }

        if (v8 > 3 || v8 == 1)
        {
          [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
          [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
        }

        else
        {
          if (![(BannerSource *)self updateBannerForGuidanceState:v4 onTarget:v10 type:0])
          {
            [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
            if (![(BannerSource *)self _shouldSuppressNextGuidance:v4 type:0 target:v10])
            {
              v12 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:v10];
              v13 = [v12 objectForKeyedSubscript:&off_1016E6FF8];

              v14 = sub_100032C3C();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v13;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "New guidance; removing banner. previousBanner: %@", buf, 0xCu);
              }

              if (!v13 || ([v13 bannerView], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "item"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "guidanceState"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[BannerSource _shouldPresentForPreviousGuidance:nextGuidance:type:target:](self, "_shouldPresentForPreviousGuidance:nextGuidance:type:target:", v17, v4, 0, v10), v17, v16, v15, v18))
              {
                v19 = sub_100032C3C();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  v20 = [v4 uniqueIdForBannerType:0];
                  *buf = 138412290;
                  v85 = v20;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Enqueue item for this maneuver: %@", buf, 0xCu);
                }

                v21 = [(BannerSource *)self _bannerItemForType:0 guidanceState:v4];
                [(BannerSource *)self _enqueue:v21 forTarget:v10];
              }
            }
          }

          v22 = [v4 trafficIncidentAlert];

          if (v22)
          {
            v23 = [(BannerSource *)self updateBannerForGuidanceState:v4 onTarget:v10 type:1];
            if ([(BannerSource *)self _isDynamicIslandTarget:v10])
            {
              v24 = [(NSMapTable *)self->_presentedByTarget objectForKey:v10];
              v25 = [v4 uniqueIdForBannerType:1];
              v26 = [v24 alternateBannerView];
              v27 = [v26 item];
              v28 = [v27 uniqueId];
              v29 = [v25 isEqual:v28];

              if ((v29 & 1) == 0)
              {
                v30 = [(BannerSource *)self _bannerItemForType:1 guidanceState:v78];
                v31 = [(BannerSource *)self _bannerViewForBannerItem:v30 inTarget:v10];
                [v24 postTemporaryAlternateBannerView:v31];
              }

              v4 = v78;
            }

            else if ((v23 & 1) == 0)
            {
              v32 = sub_100032C3C();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "New traffic alert state; removing previous maneuver", buf, 2u);
              }

              [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
              v33 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:v10];
              v34 = [v33 objectForKeyedSubscript:&off_1016E7010];

              if (!v34 || ([v34 bannerView], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "item"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "guidanceState"), v37 = objc_claimAutoreleasedReturnValue(), v38 = -[BannerSource _shouldPresentForPreviousGuidance:nextGuidance:type:target:](self, "_shouldPresentForPreviousGuidance:nextGuidance:type:target:", v37, v78, 1, v10), v37, v36, v4 = v78, v35, v38))
              {
                v39 = sub_100032C3C();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v40 = [v4 uniqueIdForBannerType:1];
                  *buf = 138412290;
                  v85 = v40;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Enqueuing new traffic alert: %@", buf, 0xCu);
                }

                v41 = [(BannerSource *)self _bannerItemForType:1 guidanceState:v4];
                [(BannerSource *)self _enqueue:v41 forTarget:v10];
              }
            }
          }
        }

        v42 = [v4 alightMessage];
        if (v42)
        {
          v43 = [v4 isMapsForegroundOnMainScreen];
        }

        else
        {
          v43 = 0;
        }

        if ([(BannerSource *)self _isDynamicIslandTarget:v10]&& v8 == 1 && (v43 & 1) == 0)
        {
          if (![(BannerSource *)self updateBannerForGuidanceState:v4 onTarget:v10 type:3])
          {
            [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
            v44 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:v10];
            v45 = [v44 objectForKeyedSubscript:&off_1016E7028];

            v46 = sub_100032C3C();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v85 = v45;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "New guidance; removing banner. previousBanner: %@", buf, 0xCu);
            }

            if (!v45 || ([v45 bannerView], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "item"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "guidanceState"), v49 = objc_claimAutoreleasedReturnValue(), v50 = -[BannerSource _shouldPresentForPreviousGuidance:nextGuidance:type:target:](self, "_shouldPresentForPreviousGuidance:nextGuidance:type:target:", v49, v78, 3, v10), v49, v48, v4 = v78, v47, v50))
            {
              v51 = sub_100032C3C();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = [v4 uniqueIdForBannerType:3];
                *buf = 138412290;
                v85 = v52;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Enqueue item for this maneuver: %@", buf, 0xCu);
              }

              v53 = [(BannerSource *)self _bannerItemForType:3 guidanceState:v4];
              [(BannerSource *)self _enqueue:v53 forTarget:v10];
            }
          }
        }

        else
        {
          [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
          if (v8 != 1)
          {
            goto LABEL_76;
          }
        }

        v54 = [v4 alightMessage];

        if (v54)
        {
          v55 = [(BannerSource *)self _bannerItemForType:2 guidanceState:v4];
          v56 = [(BannerSource *)self _shouldUseAperturePresentationForBannerItem:v55 inTarget:v10];
          v57 = sub_100032C3C();
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_INFO);
          if (v56)
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "New transit alight message; populating jindo", buf, 2u);
            }

            v59 = [(NSMapTable *)self->_presentedByTarget objectForKey:v10];
            v60 = [v4 uniqueIdForBannerType:2];
            v61 = [v59 alternateBannerView];
            v62 = [v61 item];
            v63 = [v62 uniqueId];
            v64 = [v60 isEqual:v63];

            if ((v64 & 1) == 0)
            {
              v65 = [(BannerSource *)self _bannerViewForBannerItem:v55 inTarget:v10];
              [v59 postTemporaryAlternateBannerView:v65];
            }

            v4 = v78;
LABEL_75:

            goto LABEL_76;
          }

          if (v58)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "New transit alight message; removing previous banner", buf, 2u);
          }

          [(BannerSource *)self _cleanUpType:objc_opt_class() onTarget:v10 animated:1];
          v66 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:v10];
          v59 = [v66 objectForKeyedSubscript:&off_1016E7040];

          if (v59)
          {
            v67 = [v59 bannerView];
            v68 = [v67 item];
            v69 = [v68 guidanceState];
            v70 = [(BannerSource *)self _shouldPresentForPreviousGuidance:v69 nextGuidance:v78 type:2 target:v10];

            v4 = v78;
            if (!v70)
            {
              goto LABEL_75;
            }
          }

          v71 = sub_100032C3C();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = [v4 uniqueIdForBannerType:2];
            *buf = 138412290;
            v85 = v72;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Enqueuing new transit alight: %@", buf, 0xCu);
          }

          [(BannerSource *)self _enqueue:v55 forTarget:v10];
          v73 = [(BannerSource *)self _isDynamicIslandTarget:v10];

          if (v73)
          {
            [(BannerSource *)self signalTarget:v10];
            goto LABEL_77;
          }
        }

LABEL_76:
        [(BannerSource *)self pokeTarget:v10];
LABEL_77:
        v8 = v76;
      }

      v77 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v77);
  }
}

- (void)resetExcludingJindo
{
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    v3 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:self->_mainSource];
    [v3 removeAllObjects];

    [(BannerSource *)self cleanUpPhoneBanners];
  }

  if (self->_carPlaySource)
  {
    v4 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:?];
    [v4 removeAllObjects];

    [(BannerSource *)self cleanUpCarPlayBanners];
  }
}

- (void)reset
{
  v3 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:self->_mainSource];
  [v3 removeAllObjects];

  [(NSMapTable *)self->_inAppSeenGuidanceByTarget removeObjectForKey:self->_mainSource];
  [(BannerSource *)self cleanUpPhoneBanners];
  if (self->_carPlaySource)
  {
    v4 = [(NSMapTable *)self->_latestBannerForTarget objectForKey:?];
    [v4 removeAllObjects];

    [(NSMapTable *)self->_inAppSeenGuidanceByTarget removeObjectForKey:self->_carPlaySource];

    [(BannerSource *)self cleanUpCarPlayBanners];
  }
}

- (id)activeCarPlayBannerViewController
{
  if (self->_carPlaySource)
  {
    v3 = [(NSMapTable *)self->_presentedByTarget objectForKey:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCarPlaySource:(id)a3
{
  v5 = a3;
  carPlaySource = self->_carPlaySource;
  p_carPlaySource = &self->_carPlaySource;
  v6 = carPlaySource;
  if (carPlaySource != v5)
  {
    v9 = v5;
    [(BNBannerSource *)v6 invalidate];
    objc_storeStrong(p_carPlaySource, a3);
    v5 = v9;
  }
}

- (BNBannerSource)carPlaySource
{
  carPlaySource = self->_carPlaySource;
  if (!carPlaySource)
  {
    v4 = [BNBannerSource bannerSourceForDestination:1 forRequesterIdentifier:MapsAppBundleId];
    v5 = self->_carPlaySource;
    self->_carPlaySource = v4;

    carPlaySource = self->_carPlaySource;
  }

  return carPlaySource;
}

- (void)dealloc
{
  [(BNBannerSource *)self->_mainSource invalidate];
  [(BNBannerSource *)self->_carPlaySource invalidate];
  v3.receiver = self;
  v3.super_class = BannerSource;
  [(BannerSource *)&v3 dealloc];
}

@end