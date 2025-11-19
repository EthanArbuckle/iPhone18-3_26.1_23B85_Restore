@interface ZWUIServer
+ (BOOL)isSafeToProcessMessageFromUnentitledProcessWithIdentifier:(unint64_t)a3;
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3;
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3;
+ (id)sharedInstance;
- (NSMutableDictionary)zoomRootViewControllers;
- (ZWUIServer)init;
- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_showingOrHidingControllerWillBegin;
- (void)_showingOrHidingControllerWillEnd;
- (void)_waitForControllerShowHideToComplete:(id)a3;
- (void)dealloc;
- (void)externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)notifyOtherDisplaysOfDockedZoomRegionVisibilityChange:(BOOL)a3;
- (void)updateZoomListeners:(id)a3;
@end

@implementation ZWUIServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ZWUIServer sharedInstance];
  }

  v3 = sharedInstance__service;

  return v3;
}

void __28__ZWUIServer_sharedInstance__block_invoke(id a1)
{
  sharedInstance__service = objc_alloc_init(ZWUIServer);

  _objc_release_x1();
}

- (ZWUIServer)init
{
  v21.receiver = self;
  v21.super_class = ZWUIServer;
  v2 = [(ZWUIServer *)&v21 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _appTransitionOccurred, @"com.apple.mobile.SubstantialTransition", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [UIPopoverPresentationController _setAlwaysAllowPopoverPresentations:1];
    v4 = dispatch_group_create();
    [(ZWUIServer *)v2 setShowHideGroup:v4];

    v5 = dispatch_queue_create("com.apple.accessibility.Zoom.ShowHide", 0);
    [(ZWUIServer *)v2 setShowHideQueue:v5];

    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWUIServer *)v2 setKeyboardHideTimer:v6];

    v7 = +[NSMutableArray array];
    [(ZWUIServer *)v2 setExternalWindowScenes:v7];

    v8 = objc_alloc_init(NSMutableSet);
    zoomListeners = v2->_zoomListeners;
    v2->_zoomListeners = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    zoomAttributeListeners = v2->_zoomAttributeListeners;
    v2->_zoomAttributeListeners = v10;

    v12 = dispatch_queue_create("com.apple.accessibility.zoom.update_listeners", 0);
    zoomListenersUpdateQueue = v2->_zoomListenersUpdateQueue;
    v2->_zoomListenersUpdateQueue = v12;

    v14 = dispatch_queue_create("com.apple.accessibility.zoom.focused_apps_retrieval", 0);
    focusedAppsRetrievalQueue = v2->_focusedAppsRetrievalQueue;
    v2->_focusedAppsRetrievalQueue = v14;

    v16 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:v2->_zoomListenersUpdateQueue];
    zoomListenerUpdateTimer = v2->_zoomListenerUpdateTimer;
    v2->_zoomListenerUpdateTimer = v16;

    [(AXDispatchTimer *)v2->_zoomListenerUpdateTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v18 = objc_alloc_init(AXDispatchTimer);
    zoomServicesUpdate = v2->_zoomServicesUpdate;
    v2->_zoomServicesUpdate = v18;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.SubstantialTransition", 0);
  v4.receiver = self;
  v4.super_class = ZWUIServer;
  [(ZWUIServer *)&v4 dealloc];
}

- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = UIWindowLevelNormal;
  if (isKindOfClass)
  {
    return 10000016.0;
  }

  return result;
}

- (void)externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v5 = a3;
  zoomRootViewControllers = self->_zoomRootViewControllers;
  v7 = [v5 _sceneIdentifier];
  v8 = [(NSMutableDictionary *)zoomRootViewControllers objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = [(ZWUIServer *)self externalWindowScenes];
    [v9 addObject:v5];

    v10 = [ZWRootViewController alloc];
    v11 = [v5 screen];
    v12 = [(ZWRootViewController *)v10 initWithAXUIService:self onScreen:v11 isMainDisplay:0];

    v13 = self->_zoomRootViewControllers;
    v14 = [v5 _sceneIdentifier];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

    v15 = [(NSMutableDictionary *)self->_zoomRootViewControllers objectForKeyedSubscript:@"MAIN-DISPLAY"];
    if ([v15 isZoomLensVisible])
    {
      [(ZWUIServer *)self _showingOrHidingControllerWillBegin];
      v16 = +[AXUIDisplayManager sharedDisplayManager];
      [v16 addContentViewController:v12 withUserInteractionEnabled:1 forService:self context:0 userInterfaceStyle:1 forWindowScene:v5 completion:0];

      v17 = +[AXSubsystemZoom sharedInstance];
      v18 = [v17 ignoreLogging];

      if ((v18 & 1) == 0)
      {
        v19 = +[AXSubsystemZoom identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v31 = AXColorizeFormatLog();
          v30 = [(ZWRootViewController *)v12 view];
          [v30 bounds];
          v22 = NSStringFromCGRect(v35);
          [(ZWRootViewController *)v12 view];
          v23 = v29 = v21;
          v24 = [v23 window];
          [v24 bounds];
          v27 = NSStringFromCGRect(v36);
          v28 = [(ZWRootViewController *)v12 interfaceOrientation];
          v26 = v22;
          v25 = _AXStringForArgs();

          if (os_log_type_enabled(v20, v29))
          {
            *buf = 138543362;
            v34 = v25;
            _os_log_impl(&dword_0, v20, v29, "%{public}@", buf, 0xCu);
          }
        }
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __69__ZWUIServer_externalDisplaySceneConnected_forSceneClientIdentifier___block_invoke;
      v32[3] = &unk_78D00;
      v32[4] = self;
      [(ZWRootViewController *)v12 showZoomSlugAndLens:1 completion:v32, v26, v27, v28];
    }
  }
}

- (void)externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(ZWUIServer *)self externalWindowScenes];
  [v6 removeObject:v5];

  v8 = [(ZWUIServer *)self zoomRootViewControllers];
  v7 = [v5 _sceneIdentifier];

  [v8 removeObjectForKey:v7];
}

- (void)updateZoomListeners:(id)a3
{
  v4 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = 0;
  v5 = [v4 objectForKeyedSubscript:ZWAttributeKeyDisplayID];
  zoomListenersUpdateQueue = self->_zoomListenersUpdateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__ZWUIServer_updateZoomListeners___block_invoke;
  block[3] = &unk_790F8;
  v20 = v24;
  block[4] = self;
  v7 = v5;
  v18 = v7;
  v21 = v22;
  v8 = v4;
  v19 = v8;
  dispatch_sync(zoomListenersUpdateQueue, block);
  objc_initWeak(&location, self);
  zoomListenerUpdateTimer = self->_zoomListenerUpdateTimer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __34__ZWUIServer_updateZoomListeners___block_invoke_2;
  v12[3] = &unk_79148;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [(AXDispatchTimer *)zoomListenerUpdateTimer afterDelay:v12 processBlock:0.25];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __34__ZWUIServer_updateZoomListeners___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if ([*(*(a1 + 32) + 24) count])
  {
    v6 = objc_opt_new();
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [*(a1 + 48) objectForKeyedSubscript:v14];
          v16 = [v5 objectForKeyedSubscript:v14];
          v17 = [v15 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            v18 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v14];
            if ([v18 count])
            {
              [*(*(*(a1 + 64) + 8) + 40) unionSet:v18];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }
  }

  v27 = v5;
  [*(*(a1 + 32) + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = *(*(*(a1 + 64) + 8) + 40);
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [AXUIClientMessenger clientMessengerWithIdentifier:*(*(&v28 + 1) + 8 * j)];
        v25 = *(a1 + 48);
        v26 = +[AXAccessQueue mainAccessQueue];
        [v24 sendAsynchronousMessage:v25 withIdentifier:3000 targetAccessQueue:v26 completionRequiresWritingBlock:0 completion:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }
}

void __34__ZWUIServer_updateZoomListeners___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained[5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__ZWUIServer_updateZoomListeners___block_invoke_3;
  block[3] = &unk_79120;
  block[4] = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(v3, block);
}

id __34__ZWUIServer_updateZoomListeners___block_invoke_3(void *a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [AXUIClientMessenger clientMessengerWithIdentifier:*(*(&v11 + 1) + 8 * v6), v11];
        v8 = a1[5];
        v9 = +[AXAccessQueue mainAccessQueue];
        [v7 sendAsynchronousMessage:v8 withIdentifier:3000 targetAccessQueue:v9 completionRequiresWritingBlock:0 completion:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1[4] + 32) setObject:a1[5] forKeyedSubscript:a1[6]];
}

- (void)notifyOtherDisplaysOfDockedZoomRegionVisibilityChange:(BOOL)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ZWUIServer *)self zoomRootViewControllers];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) updateDockedZoomRegionVisibility:v3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_waitForControllerShowHideToComplete:(id)a3
{
  v4 = a3;
  v5 = [(ZWUIServer *)self showHideQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__ZWUIServer__waitForControllerShowHideToComplete___block_invoke;
  v7[3] = &unk_79018;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__ZWUIServer__waitForControllerShowHideToComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) showHideGroup];
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = *(a1 + 40);

  dispatch_sync(&_dispatch_main_q, v3);
}

- (void)_showingOrHidingControllerWillBegin
{
  v2 = [(ZWUIServer *)self showHideGroup];
  dispatch_group_enter(v2);
}

- (void)_showingOrHidingControllerWillEnd
{
  v2 = [(ZWUIServer *)self showHideGroup];
  dispatch_group_leave(v2);
}

- (NSMutableDictionary)zoomRootViewControllers
{
  _AXAssertIsMainThread();
  zoomRootViewControllers = self->_zoomRootViewControllers;
  if (!zoomRootViewControllers)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_zoomRootViewControllers;
    self->_zoomRootViewControllers = v4;

    v6 = [ZWRootViewController alloc];
    v7 = +[UIScreen mainScreen];
    v8 = [(ZWRootViewController *)v6 initWithAXUIService:self onScreen:v7 isMainDisplay:1];
    [(NSMutableDictionary *)self->_zoomRootViewControllers setObject:v8 forKeyedSubscript:@"MAIN-DISPLAY"];

    zoomRootViewControllers = self->_zoomRootViewControllers;
  }

  return zoomRootViewControllers;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3
{
  result = 0;
  if (a3 > 2500)
  {
    v4 = a3 + 59;
    if (a3 - 2501 > 0xD)
    {
      return result;
    }

    if (((1 << v4) & 0x3C03) == 0)
    {
      if (((1 << v4) & 0x3C0) != 0)
      {
        return @"com.apple.accessibility.Carousel";
      }

      else
      {
        return 0;
      }
    }

    return @"com.apple.accessibility.SpringBoard";
  }

  if (a3 > 2015)
  {
    if (a3 - 2200 < 4 || a3 - 2019 < 3)
    {
      return @"com.apple.accessibility.zoom.client";
    }

    if (a3 == 2016)
    {
      return @"com.apple.springboard.inCallPresentation";
    }

    return 0;
  }

  if (a3 - 2007 < 2)
  {
    return @"com.apple.accessibility.SpringBoard";
  }

  if (a3 - 2013 < 2)
  {
    return @"com.apple.accessibility.voiceover";
  }

  if (a3 == 2003)
  {
    return @"com.apple.accessibility.SpringBoard";
  }

  return result;
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3
{
  if (a3 - 2004 <= 0xB && ((1 << (a3 + 44)) & 0x821) != 0)
  {
    v4 = &off_7B6B0;
LABEL_8:
    v3 = [NSSet setWithArray:v4];
    goto LABEL_9;
  }

  if (a3 - 1000 < 2)
  {
    v3 = [NSMutableSet setWithObject:@"com.apple.accessibility.BackBoard"];
    [v3 addObject:@"com.apple.ClarityBoard"];
    goto LABEL_9;
  }

  if (a3 == 2500)
  {
    v4 = &off_7B698;
    goto LABEL_8;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

+ (BOOL)isSafeToProcessMessageFromUnentitledProcessWithIdentifier:(unint64_t)a3
{
  result = 1;
  if (a3 - 2000 > 0x18 || ((1 << (a3 + 48)) & 0x1C20467) == 0)
  {
    return a3 == 3000;
  }

  return result;
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 > 2199)
  {
    v13 = 0;
    if (a4 <= 2506)
    {
      if (a4 <= 2202)
      {
        if (a4 == 2200)
        {
          v245 = [v8 objectForKeyedSubscript:@"displayID"];
          v246 = [v245 unsignedIntValue];

          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          v247 = [(ZWUIServer *)self zoomRootViewControllers];
          v248 = [v247 allKeys];

          objb = v248;
          v249 = [v248 countByEnumeratingWithState:&v345 objects:v438 count:16];
          if (v249)
          {
            v250 = v249;
            v293 = v10;
            v302 = *v346;
            while (1)
            {
              for (i = 0; i != v250; i = i + 1)
              {
                if (*v346 != v302)
                {
                  objc_enumerationMutation(objb);
                }

                v252 = *(*(&v345 + 1) + 8 * i);
                v253 = [(ZWUIServer *)self zoomRootViewControllers];
                v239 = [v253 objectForKeyedSubscript:v252];

                v254 = [v239 view];
                v255 = [v254 window];
                v256 = [v255 screen];
                v257 = [v256 displayIdentity];
                if ([v257 displayID] == v246)
                {

LABEL_271:
                  v436 = @"result";
                  [v239 zoomLevel];
                  v278 = [NSNumber numberWithDouble:?];
                  v437 = v278;
                  v279 = &v437;
                  v280 = &v436;
LABEL_272:
                  v13 = [NSDictionary dictionaryWithObjects:v279 forKeys:v280 count:1];

LABEL_273:
                  v10 = v293;
LABEL_274:

                  goto LABEL_255;
                }

                if (v246)
                {
                }

                else
                {
                  v258 = [v252 isEqualToString:@"MAIN-DISPLAY"];

                  if (v258)
                  {
                    goto LABEL_271;
                  }
                }
              }

              v250 = [objb countByEnumeratingWithState:&v345 objects:v438 count:16];
              if (!v250)
              {
                goto LABEL_243;
              }
            }
          }
        }

        else
        {
          if (a4 != 2201)
          {
            v35 = v9;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v36 = [(ZWUIServer *)self zoomRootViewControllers];
            v37 = [v36 allKeys];

            v38 = [v37 countByEnumeratingWithState:&v349 objects:v439 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v350;
              do
              {
                for (j = 0; j != v39; j = j + 1)
                {
                  if (*v350 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v349 + 1) + 8 * j);
                  v43 = [(ZWUIServer *)self zoomRootViewControllers];
                  v44 = [v43 objectForKeyedSubscript:v42];

                  if ([v42 isEqualToString:@"MAIN-DISPLAY"])
                  {
                    [v44 toggleZoomMenu];

                    goto LABEL_262;
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v349 objects:v439 count:16];
              }

              while (v39);
            }

LABEL_262:

            v13 = 0;
            v10 = v35;
            goto LABEL_255;
          }

          v230 = [v8 objectForKeyedSubscript:@"displayID"];
          v231 = [v230 unsignedIntValue];

          v343 = 0u;
          v344 = 0u;
          v341 = 0u;
          v342 = 0u;
          v232 = [(ZWUIServer *)self zoomRootViewControllers];
          v233 = [v232 allKeys];

          objb = v233;
          v234 = [v233 countByEnumeratingWithState:&v341 objects:v435 count:16];
          if (v234)
          {
            v235 = v234;
            v293 = v10;
            v301 = *v342;
            while (1)
            {
              for (k = 0; k != v235; k = k + 1)
              {
                if (*v342 != v301)
                {
                  objc_enumerationMutation(objb);
                }

                v237 = *(*(&v341 + 1) + 8 * k);
                v238 = [(ZWUIServer *)self zoomRootViewControllers];
                v239 = [v238 objectForKeyedSubscript:v237];

                v240 = [v239 view];
                v241 = [v240 window];
                v242 = [v241 screen];
                v243 = [v242 displayIdentity];
                if ([v243 displayID] == v231)
                {

LABEL_269:
                  v433 = @"result";
                  [v239 zoomFrame];
                  v278 = NSStringFromCGRect(v456);
                  v434 = v278;
                  v279 = &v434;
                  v280 = &v433;
                  goto LABEL_272;
                }

                if (v231)
                {
                }

                else
                {
                  v244 = [v237 isEqualToString:@"MAIN-DISPLAY"];

                  if (v244)
                  {
                    goto LABEL_269;
                  }
                }
              }

              v235 = [objb countByEnumeratingWithState:&v341 objects:v435 count:16];
              if (!v235)
              {
LABEL_243:
                v13 = 0;
                goto LABEL_273;
              }
            }
          }
        }

        v13 = 0;
        goto LABEL_274;
      }

      if (a4 - 2500 < 3)
      {
        goto LABEL_255;
      }

      if (a4 == 2203)
      {
        v20 = v9;
        v339 = 0u;
        v340 = 0u;
        v337 = 0u;
        v338 = 0u;
        v21 = [(ZWUIServer *)self zoomRootViewControllers];
        v22 = [v21 allKeys];

        v23 = [v22 countByEnumeratingWithState:&v337 objects:v432 count:16];
        if (!v23)
        {
          goto LABEL_27;
        }

        v24 = v23;
        v25 = *v338;
        while (1)
        {
          for (m = 0; m != v24; m = m + 1)
          {
            if (*v338 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v337 + 1) + 8 * m);
            v28 = [(ZWUIServer *)self zoomRootViewControllers];
            v29 = [v28 objectForKeyedSubscript:v27];

            if ([v27 isEqualToString:@"MAIN-DISPLAY"])
            {
              v265 = [v29 getLastSpeakUnderFingerPhrase];
              v266 = v265;
              if (v265)
              {
                v430 = @"result";
                v431 = v265;
                v13 = [NSDictionary dictionaryWithObjects:&v431 forKeys:&v430 count:1];
              }

              else
              {
                v13 = 0;
              }

              v10 = v20;

              goto LABEL_284;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v337 objects:v432 count:16];
          if (!v24)
          {
LABEL_27:
            v13 = 0;
            v10 = v20;
LABEL_284:

            goto LABEL_255;
          }
        }
      }
    }

    else
    {
      if (a4 <= 2509)
      {
        if (a4 == 2507)
        {
          goto LABEL_255;
        }

        if (a4 == 2508)
        {
          v380 = 0u;
          v379 = 0u;
          v378 = 0u;
          v377 = 0u;
          v47 = [(ZWUIServer *)self zoomRootViewControllers];
          v15 = [v47 allValues];

          v48 = [v15 countByEnumeratingWithState:&v377 objects:v446 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v378;
            do
            {
              for (n = 0; n != v49; n = n + 1)
              {
                if (*v378 != v50)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v377 + 1) + 8 * n) handleDeviceReturnedToClockAtIdle];
              }

              v49 = [v15 countByEnumeratingWithState:&v377 objects:v446 count:16];
            }

            while (v49);
          }
        }

        else
        {
          v376 = 0u;
          v375 = 0u;
          v374 = 0u;
          v373 = 0u;
          v14 = [(ZWUIServer *)self zoomRootViewControllers];
          v15 = [v14 allValues];

          v16 = [v15 countByEnumeratingWithState:&v373 objects:v445 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v374;
            do
            {
              for (ii = 0; ii != v17; ii = ii + 1)
              {
                if (*v374 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v373 + 1) + 8 * ii) handleCarouselLockBegan];
              }

              v17 = [v15 countByEnumeratingWithState:&v373 objects:v445 count:16];
            }

            while (v17);
          }
        }

        goto LABEL_253;
      }

      if (a4 - 2512 < 3)
      {
        goto LABEL_255;
      }

      if (a4 == 2510)
      {
        v372 = 0u;
        v371 = 0u;
        v370 = 0u;
        v369 = 0u;
        v259 = [(ZWUIServer *)self zoomRootViewControllers];
        v15 = [v259 allValues];

        v260 = [v15 countByEnumeratingWithState:&v369 objects:v444 count:16];
        if (v260)
        {
          v261 = v260;
          v262 = *v370;
          do
          {
            for (jj = 0; jj != v261; jj = jj + 1)
            {
              if (*v370 != v262)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v369 + 1) + 8 * jj) handleCarouselLockEnded];
            }

            v261 = [v15 countByEnumeratingWithState:&v369 objects:v444 count:16];
          }

          while (v261);
        }

        goto LABEL_253;
      }

      if (a4 == 2511)
      {
        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        v30 = [(ZWUIServer *)self zoomRootViewControllers];
        v15 = [v30 allValues];

        v31 = [v15 countByEnumeratingWithState:&v325 objects:v427 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v326;
          do
          {
            for (kk = 0; kk != v32; kk = kk + 1)
            {
              if (*v326 != v33)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v325 + 1) + 8 * kk) handleDeviceWillWake];
            }

            v32 = [v15 countByEnumeratingWithState:&v325 objects:v427 count:16];
          }

          while (v32);
        }

LABEL_253:

LABEL_254:
        v13 = 0;
        goto LABEL_255;
      }
    }

LABEL_61:
    v52 = [NSNumber numberWithUnsignedInteger:a4];
    v53 = [NSString stringWithFormat:@"Unexpected message sent: %@", v52];
    v54 = [NSException exceptionWithName:@"Zoom Exception" reason:v53 userInfo:0];
    [v54 raise];

LABEL_281:
    goto LABEL_254;
  }

  switch(a4)
  {
    case 0x7D0uLL:
      focusedAppsRetrievalQueue = self->_focusedAppsRetrievalQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_4;
      block[3] = &unk_79170;
      v416 = v8;
      v417 = self;
      dispatch_async(focusedAppsRetrievalQueue, block);
      v12 = v416;
      goto LABEL_199;
    case 0x7D1uLL:
      v166 = self->_focusedAppsRetrievalQueue;
      v412[0] = _NSConcreteStackBlock;
      v412[1] = 3221225472;
      v412[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_6;
      v412[3] = &unk_79170;
      v413 = v8;
      v414 = self;
      dispatch_async(v166, v412);
      v12 = v413;
      goto LABEL_199;
    case 0x7D2uLL:
      v120 = [v8 objectForKeyedSubscript:@"focusType"];
      v121 = [v120 unsignedIntegerValue];

      v122 = +[AXSettings sharedInstance];
      v123 = [v122 zoomShouldFollowFocus];

      if ((v123 & 1) == 0 && v121 != &dword_0 + 1)
      {
        goto LABEL_254;
      }

      v290 = v121;
      v124 = [v8 objectForKeyedSubscript:@"focusFrame"];
      v453 = NSRectFromString(v124);
      x = v453.origin.x;
      y = v453.origin.y;
      width = v453.size.width;
      height = v453.size.height;

      v129 = [v8 objectForKeyedSubscript:@"contextId"];
      v288 = [v129 unsignedIntValue];

      v130 = [v8 objectForKeyedSubscript:@"keyboardFrame"];
      v454 = NSRectFromString(v130);
      v131 = v454.origin.x;
      v132 = v454.origin.y;
      v133 = v454.size.width;
      v134 = v454.size.height;

      v52 = [v8 objectForKeyedSubscript:@"appID"];
      v135 = [v8 objectForKeyedSubscript:@"displayID"];
      v299 = [v135 unsignedIntValue];

      v400 = 0u;
      v399 = 0u;
      v398 = 0u;
      v397 = 0u;
      v136 = [(ZWUIServer *)self zoomRootViewControllers];
      v137 = [v136 allValues];

      obja = v137;
      v138 = [v137 countByEnumeratingWithState:&v397 objects:v451 count:16];
      if (!v138)
      {
        goto LABEL_280;
      }

      v139 = v138;
      v304 = *v398;
      v292 = v52;
      while (2)
      {
        for (mm = 0; mm != v139; mm = mm + 1)
        {
          v141 = v10;
          if (*v398 != v304)
          {
            objc_enumerationMutation(obja);
          }

          v142 = *(*(&v397 + 1) + 8 * mm);
          v143 = [v142 view];
          v144 = [v143 window];
          v145 = [v144 screen];
          v146 = [v145 displayIdentity];
          v147 = [v146 displayID];

          if (v147 == v299)
          {
            v52 = v292;
            [v142 handleFocusChangedWithType:v290 rect:v288 keyboardFrame:v292 contextId:x appID:{y, width, height, v131, v132, v133, v134}];
            v10 = v141;
            goto LABEL_280;
          }

          v10 = v141;
        }

        v139 = [obja countByEnumeratingWithState:&v397 objects:v451 count:16];
        v52 = v292;
        if (v139)
        {
          continue;
        }

        break;
      }

LABEL_280:

      goto LABEL_281;
    case 0x7D3uLL:
      v396 = 0u;
      v395 = 0u;
      v394 = 0u;
      v393 = 0u;
      v177 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v177 allValues];

      v178 = [v15 countByEnumeratingWithState:&v393 objects:v450 count:16];
      if (v178)
      {
        v179 = v178;
        v180 = *v394;
        do
        {
          for (nn = 0; nn != v179; nn = nn + 1)
          {
            if (*v394 != v180)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v393 + 1) + 8 * nn) handleLockButtonWasPressed];
          }

          v179 = [v15 countByEnumeratingWithState:&v393 objects:v450 count:16];
        }

        while (v179);
      }

      goto LABEL_253;
    case 0x7D4uLL:
      v111 = v9;
      v392 = 0u;
      v391 = 0u;
      v390 = 0u;
      v389 = 0u;
      v182 = [(ZWUIServer *)self zoomRootViewControllers];
      v113 = [v182 allValues];

      v183 = [v113 countByEnumeratingWithState:&v389 objects:v449 count:16];
      if (v183)
      {
        v184 = v183;
        v185 = *v390;
        do
        {
          for (i1 = 0; i1 != v184; i1 = i1 + 1)
          {
            if (*v390 != v185)
            {
              objc_enumerationMutation(v113);
            }

            v187 = *(*(&v389 + 1) + 8 * i1);
            v188 = [v8 objectForKeyedSubscript:@"lensMode"];
            [v187 handleSettingsAppDidUpdatePreferredLensMode:v188];
          }

          v184 = [v113 countByEnumeratingWithState:&v389 objects:v449 count:16];
        }

        while (v184);
      }

      goto LABEL_186;
    case 0x7D5uLL:
      v148 = v9;
      v149 = [v8 objectForKey:@"appID"];
      v150 = [v8 objectForKeyedSubscript:@"keyboardFrame"];
      v455 = NSRectFromString(v150);
      v151 = v455.origin.x;
      v152 = v455.origin.y;
      v153 = v455.size.width;
      v154 = v455.size.height;

      v368 = 0u;
      v367 = 0u;
      v366 = 0u;
      v365 = 0u;
      v155 = [(ZWUIServer *)self zoomRootViewControllers];
      v156 = [v155 allValues];

      v157 = [v156 countByEnumeratingWithState:&v365 objects:v443 count:16];
      if (v157)
      {
        v158 = v157;
        v159 = *v366;
        do
        {
          for (i2 = 0; i2 != v158; i2 = i2 + 1)
          {
            if (*v366 != v159)
            {
              objc_enumerationMutation(v156);
            }

            [*(*(&v365 + 1) + 8 * i2) handleAppDidBecomeActiveWithID:v149 initialKeyboardFrame:{v151, v152, v153, v154}];
          }

          v158 = [v156 countByEnumeratingWithState:&v365 objects:v443 count:16];
        }

        while (v158);
      }

      goto LABEL_154;
    case 0x7D6uLL:
      v148 = v9;
      v149 = [v8 objectForKey:@"appID"];
      v361 = 0u;
      v362 = 0u;
      v363 = 0u;
      v364 = 0u;
      v167 = [(ZWUIServer *)self zoomRootViewControllers];
      v156 = [v167 allValues];

      v168 = [v156 countByEnumeratingWithState:&v361 objects:v442 count:16];
      if (v168)
      {
        v169 = v168;
        v170 = *v362;
        do
        {
          for (i3 = 0; i3 != v169; i3 = i3 + 1)
          {
            if (*v362 != v170)
            {
              objc_enumerationMutation(v156);
            }

            [*(*(&v361 + 1) + 8 * i3) handleAppDidEnterBackgroundWithID:v149];
          }

          v169 = [v156 countByEnumeratingWithState:&v361 objects:v442 count:16];
        }

        while (v169);
      }

LABEL_154:

      v13 = 0;
      v10 = v148;
      goto LABEL_255;
    case 0x7D7uLL:
      v331 = 0u;
      v332 = 0u;
      v329 = 0u;
      v330 = 0u;
      v201 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v201 allValues];

      v202 = [v15 countByEnumeratingWithState:&v329 objects:v428 count:16];
      if (v202)
      {
        v203 = v202;
        v204 = *v330;
        do
        {
          for (i4 = 0; i4 != v203; i4 = i4 + 1)
          {
            if (*v330 != v204)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v329 + 1) + 8 * i4) handleDeviceWasUnlocked];
          }

          v203 = [v15 countByEnumeratingWithState:&v329 objects:v428 count:16];
        }

        while (v203);
      }

      goto LABEL_253;
    case 0x7D8uLL:
      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v172 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v172 allValues];

      v173 = [v15 countByEnumeratingWithState:&v321 objects:v426 count:16];
      if (v173)
      {
        v174 = v173;
        v175 = *v322;
        do
        {
          for (i5 = 0; i5 != v174; i5 = i5 + 1)
          {
            if (*v322 != v175)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v321 + 1) + 8 * i5) handleHomeButtonWasPressed];
          }

          v174 = [v15 countByEnumeratingWithState:&v321 objects:v426 count:16];
        }

        while (v174);
      }

      goto LABEL_253;
    case 0x7D9uLL:
      v111 = v9;
      v384 = 0u;
      v383 = 0u;
      v382 = 0u;
      v381 = 0u;
      v189 = [(ZWUIServer *)self zoomRootViewControllers];
      v113 = [v189 allValues];

      v190 = [v113 countByEnumeratingWithState:&v381 objects:v447 count:16];
      if (v190)
      {
        v191 = v190;
        v192 = *v382;
        do
        {
          for (i6 = 0; i6 != v191; i6 = i6 + 1)
          {
            if (*v382 != v192)
            {
              objc_enumerationMutation(v113);
            }

            v194 = *(*(&v381 + 1) + 8 * i6);
            v195 = [v8 objectForKeyedSubscript:@"idleSlugOpacity"];
            [v195 floatValue];
            [v194 handleSettingsAppDidUpdateIdleSlugOpacity:v196];
          }

          v191 = [v113 countByEnumeratingWithState:&v381 objects:v447 count:16];
        }

        while (v191);
      }

      goto LABEL_186;
    case 0x7DAuLL:
      v207 = [v8 objectForKeyedSubscript:@"register"];
      v208 = [v207 BOOLValue];

      zoomListenersUpdateQueue = self->_zoomListenersUpdateQueue;
      v406[0] = _NSConcreteStackBlock;
      v406[1] = 3221225472;
      v406[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_11;
      v406[3] = &unk_78EE8;
      v408 = v208;
      v406[4] = self;
      v407 = v10;
      dispatch_async(zoomListenersUpdateQueue, v406);
      v12 = v407;
      goto LABEL_199;
    case 0x7DBuLL:
    case 0x7DCuLL:
    case 0x7E2uLL:
      goto LABEL_61;
    case 0x7DDuLL:
      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v161 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v161 allValues];

      v162 = [v15 countByEnumeratingWithState:&v317 objects:v425 count:16];
      if (v162)
      {
        v163 = v162;
        v164 = *v318;
        do
        {
          for (i7 = 0; i7 != v163; i7 = i7 + 1)
          {
            if (*v318 != v164)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v317 + 1) + 8 * i7) setBrailleInputUIIsShowing:1];
          }

          v163 = [v15 countByEnumeratingWithState:&v317 objects:v425 count:16];
        }

        while (v163);
      }

      goto LABEL_253;
    case 0x7DEuLL:
      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      v73 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v73 allValues];

      v74 = [v15 countByEnumeratingWithState:&v313 objects:v424 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v314;
        do
        {
          for (i8 = 0; i8 != v75; i8 = i8 + 1)
          {
            if (*v314 != v76)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v313 + 1) + 8 * i8) setBrailleInputUIIsShowing:0];
          }

          v75 = [v15 countByEnumeratingWithState:&v313 objects:v424 count:16];
        }

        while (v75);
      }

      goto LABEL_253;
    case 0x7DFuLL:
      v111 = v9;
      v388 = 0u;
      v387 = 0u;
      v386 = 0u;
      v385 = 0u;
      v112 = [(ZWUIServer *)self zoomRootViewControllers];
      v113 = [v112 allValues];

      v114 = [v113 countByEnumeratingWithState:&v385 objects:v448 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v386;
        do
        {
          for (i9 = 0; i9 != v115; i9 = i9 + 1)
          {
            if (*v386 != v116)
            {
              objc_enumerationMutation(v113);
            }

            v118 = *(*(&v385 + 1) + 8 * i9);
            v119 = [v8 objectForKeyedSubscript:@"dockPosition"];
            [v118 handleSettingsAppDidUpdatePreferredDockPosition:v119];
          }

          v115 = [v113 countByEnumeratingWithState:&v385 objects:v448 count:16];
        }

        while (v115);
      }

LABEL_186:

      v13 = 0;
      v10 = v111;
      goto LABEL_255;
    case 0x7E0uLL:
      v96 = +[AXSubsystemZoom sharedInstance];
      v97 = [v96 ignoreLogging];

      if ((v97 & 1) == 0)
      {
        v98 = +[AXSubsystemZoom identifier];
        v99 = AXLoggerForFacility();

        v100 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = AXColorizeFormatLog();
          v102 = _AXStringForArgs();
          if (os_log_type_enabled(v99, v100))
          {
            *buf = 138543362;
            v423 = v102;
            _os_log_impl(&dword_0, v99, v100, "%{public}@", buf, 0xCu);
          }
        }
      }

      v103 = +[AXSettings sharedInstance];
      v104 = [v103 zoomInStandby];

      if (v104)
      {
        goto LABEL_254;
      }

      v105 = +[AXSettings sharedInstance];
      [v105 setZoomInStandby:1];
      goto LABEL_188;
    case 0x7E1uLL:
      v206 = self->_focusedAppsRetrievalQueue;
      v409[0] = _NSConcreteStackBlock;
      v409[1] = 3221225472;
      v409[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_9;
      v409[3] = &unk_79170;
      v410 = v8;
      v411 = self;
      dispatch_async(v206, v409);
      v12 = v410;
LABEL_199:

      goto LABEL_254;
    case 0x7E3uLL:
      v291 = v9;
      v210 = [v8 objectForKeyedSubscript:@"displayID"];
      v211 = [v210 unsignedIntValue];

      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v212 = [(ZWUIServer *)self zoomRootViewControllers];
      v213 = [v212 allKeys];

      obj = v213;
      v214 = [v213 countByEnumeratingWithState:&v357 objects:v441 count:16];
      if (!v214)
      {
        goto LABEL_287;
      }

      v215 = v214;
      v300 = *v358;
LABEL_202:
      v216 = 0;
      break;
    case 0x7E4uLL:
      v78 = [v8 objectForKeyedSubscript:@"zoomLevel"];
      [v78 doubleValue];
      v80 = v79;

      if (v80 < 1.0)
      {
        goto LABEL_254;
      }

      v291 = v10;
      v81 = [v8 objectForKeyedSubscript:@"displayID"];
      v82 = [v81 unsignedIntValue];

      v355 = 0u;
      v356 = 0u;
      v353 = 0u;
      v354 = 0u;
      v83 = [(ZWUIServer *)self zoomRootViewControllers];
      v84 = [v83 allKeys];

      obj = v84;
      v85 = [v84 countByEnumeratingWithState:&v353 objects:v440 count:16];
      if (!v85)
      {
        goto LABEL_287;
      }

      v86 = v85;
      v298 = *v354;
      while (1)
      {
        for (i10 = 0; i10 != v86; i10 = i10 + 1)
        {
          if (*v354 != v298)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(*(&v353 + 1) + 8 * i10);
          v89 = [(ZWUIServer *)self zoomRootViewControllers];
          v90 = [v89 objectForKeyedSubscript:v88];

          v91 = [v90 view];
          v92 = [v91 window];
          v93 = [v92 screen];
          v94 = [v93 displayIdentity];
          if ([v94 displayID] == v82)
          {

LABEL_286:
            v283 = [v8 objectForKeyedSubscript:@"zoomLevel"];
            [v283 doubleValue];
            [v90 externalClientSetZoomFactor:?];

            goto LABEL_287;
          }

          if (v82)
          {
          }

          else
          {
            v95 = [v88 isEqualToString:@"MAIN-DISPLAY"];

            if (v95)
            {
              goto LABEL_286;
            }
          }
        }

        v86 = [obj countByEnumeratingWithState:&v353 objects:v440 count:16];
        if (!v86)
        {
          goto LABEL_287;
        }
      }

    case 0x7E5uLL:
      v291 = v9;
      v55 = [v8 objectForKeyedSubscript:@"autoPanLocation"];
      v56 = CGPointFromString(v55);

      v57 = [v8 objectForKeyedSubscript:@"panningStyle"];
      v289 = [v57 unsignedIntegerValue];

      v58 = [v8 objectForKeyedSubscript:@"displayID"];
      v59 = [v58 unsignedIntValue];

      v335 = 0u;
      v336 = 0u;
      v333 = 0u;
      v334 = 0u;
      v60 = [(ZWUIServer *)self zoomRootViewControllers];
      v61 = [v60 allKeys];

      obj = v61;
      v62 = [v61 countByEnumeratingWithState:&v333 objects:v429 count:16];
      if (!v62)
      {
        goto LABEL_287;
      }

      v63 = v62;
      v297 = *v334;
      while (1)
      {
        for (i11 = 0; i11 != v63; i11 = i11 + 1)
        {
          if (*v334 != v297)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v333 + 1) + 8 * i11);
          v66 = [(ZWUIServer *)self zoomRootViewControllers];
          v67 = [v66 objectForKeyedSubscript:v65];

          v68 = [v67 view];
          v69 = [v68 window];
          v70 = [v69 screen];
          v71 = [v70 displayIdentity];
          if ([v71 displayID] == v59)
          {

LABEL_264:
            [v67 externalClientWantsToAutopan:v289 withPanningStyle:{v56.x, v56.y}];

            goto LABEL_287;
          }

          if (v59)
          {
          }

          else
          {
            v72 = [v65 isEqualToString:@"MAIN-DISPLAY"];

            if (v72)
            {
              goto LABEL_264;
            }
          }
        }

        v63 = [obj countByEnumeratingWithState:&v333 objects:v429 count:16];
        if (!v63)
        {
          goto LABEL_287;
        }
      }

    case 0x7E6uLL:
      v311 = 0u;
      v312 = 0u;
      v309 = 0u;
      v310 = 0u;
      v106 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v106 allValues];

      v107 = [v15 countByEnumeratingWithState:&v309 objects:v421 count:16];
      if (v107)
      {
        v108 = v107;
        v109 = *v310;
        do
        {
          for (i12 = 0; i12 != v108; i12 = i12 + 1)
          {
            if (*v310 != v109)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v309 + 1) + 8 * i12) handleDragWillStart];
          }

          v108 = [v15 countByEnumeratingWithState:&v309 objects:v421 count:16];
        }

        while (v108);
      }

      goto LABEL_253;
    case 0x7E7uLL:
      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      v225 = [(ZWUIServer *)self zoomRootViewControllers];
      v15 = [v225 allValues];

      v226 = [v15 countByEnumeratingWithState:&v305 objects:v420 count:16];
      if (v226)
      {
        v227 = v226;
        v228 = *v306;
        do
        {
          for (i13 = 0; i13 != v227; i13 = i13 + 1)
          {
            if (*v306 != v228)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v305 + 1) + 8 * i13) handleDragWillEnd];
          }

          v227 = [v15 countByEnumeratingWithState:&v305 objects:v420 count:16];
        }

        while (v227);
      }

      goto LABEL_253;
    case 0x7E8uLL:
      v197 = [v8 objectForKeyedSubscript:@"register"];
      v198 = [v197 BOOLValue];

      v199 = [v8 objectForKeyedSubscript:@"attributes"];
      v200 = self->_zoomListenersUpdateQueue;
      v401[0] = _NSConcreteStackBlock;
      v401[1] = 3221225472;
      v401[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_13;
      v401[3] = &unk_79198;
      v402 = v199;
      v403 = self;
      v405 = v198;
      v404 = v10;
      v105 = v199;
      dispatch_async(v200, v401);

LABEL_188:
      goto LABEL_254;
    default:
      if (a4 == 1000)
      {
        v419[0] = _NSConcreteStackBlock;
        v419[1] = 3221225472;
        v419[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke;
        v419[3] = &unk_78D00;
        v45 = self;
        v419[4] = self;
        v46 = v419;
      }

      else
      {
        if (a4 != 1001)
        {
          goto LABEL_61;
        }

        v418[0] = _NSConcreteStackBlock;
        v418[1] = 3221225472;
        v418[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_2;
        v418[3] = &unk_78D00;
        v45 = self;
        v418[4] = self;
        v46 = v418;
      }

      [(ZWUIServer *)v45 _waitForControllerShowHideToComplete:v46];
      goto LABEL_254;
  }

  do
  {
    if (*v358 != v300)
    {
      objc_enumerationMutation(obj);
    }

    v217 = *(*(&v357 + 1) + 8 * v216);
    v218 = [(ZWUIServer *)self zoomRootViewControllers];
    v219 = [v218 objectForKeyedSubscript:v217];

    v220 = [v219 view];
    v221 = [v220 window];
    v222 = [v221 screen];
    v223 = [v222 displayIdentity];
    if ([v223 displayID] == v211)
    {

LABEL_266:
      [v219 zoomPanOffset];
      v268 = v267;
      v270 = v269;
      [v219 zoomFrame];
      v272 = v271;
      v274 = v273;
      v275 = [v8 objectForKeyedSubscript:@"direction"];
      v276 = [v275 isEqualToString:@"left"];

      if (v276)
      {
        v277 = -0.5;
      }

      else
      {
        v281 = [v8 objectForKeyedSubscript:@"direction"];
        v282 = [v281 isEqualToString:@"right"];

        if (!v282)
        {
          v284 = [v8 objectForKeyedSubscript:@"direction"];
          v285 = [v284 isEqualToString:@"up"];

          if (v285)
          {
            v270 = v270 + v274 * -0.5;
          }

          else
          {
            v286 = [v8 objectForKeyedSubscript:@"direction"];
            v287 = [v286 isEqualToString:@"down"];

            if (v287)
            {
              v270 = v270 + v274 * 0.5;
            }
          }

          goto LABEL_278;
        }

        v277 = 0.5;
      }

      v268 = v268 + v272 * v277;
LABEL_278:
      [v219 externalClientSetZoomPanOffset:{v268, v270}];

      goto LABEL_287;
    }

    if (v211)
    {
    }

    else
    {
      v224 = [v217 isEqualToString:@"MAIN-DISPLAY"];

      if (v224)
      {
        goto LABEL_266;
      }
    }

    v216 = v216 + 1;
  }

  while (v215 != v216);
  v215 = [obj countByEnumeratingWithState:&v357 objects:v441 count:16];
  if (v215)
  {
    goto LABEL_202;
  }

LABEL_287:

  v13 = 0;
  v10 = v291;
LABEL_255:

  return v13;
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v2 = [*(a1 + 32) zoomRootViewControllers];
  v3 = [v2 allKeys];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v46;
    v35 = v1;
    v37 = *v46;
    do
    {
      v7 = 0;
      v38 = v5;
      do
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * v7);
        v9 = [*(v1 + 32) zoomRootViewControllers];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (([v10 isZoomLensVisible] & 1) == 0)
        {
          [*(v1 + 32) _showingOrHidingControllerWillBegin];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v11 = [*(v1 + 32) externalWindowScenes];
          v12 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v42;
            while (2)
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v42 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v41 + 1) + 8 * i);
                v17 = [v16 _sceneIdentifier];
                v18 = [v17 isEqualToString:v8];

                if (v18)
                {
                  v19 = v16;
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v19 = 0;
LABEL_17:
            v1 = v35;
          }

          else
          {
            v19 = 0;
          }

          v20 = +[AXUIDisplayManager sharedDisplayManager];
          [v20 addContentViewController:v10 withUserInteractionEnabled:1 forService:*(v1 + 32) forSceneClientIdentifier:@"kAXZoomSceneClientIdentifier" context:0 userInterfaceStyle:1 forWindowScene:v19 completion:0];

          v21 = +[AXSubsystemZoom sharedInstance];
          v22 = [v21 ignoreLogging];

          if ((v22 & 1) == 0)
          {
            v23 = +[AXSubsystemZoom identifier];
            v24 = AXLoggerForFacility();

            v25 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v24, v25))
            {
              v36 = AXColorizeFormatLog();
              v34 = [v10 view];
              [v34 bounds];
              v26 = NSStringFromCGRect(v53);
              [v10 view];
              v27 = v33 = v25;
              v28 = [v27 window];
              [v28 bounds];
              v31 = NSStringFromCGRect(v54);
              v32 = [v10 interfaceOrientation];
              v30 = v26;
              v29 = _AXStringForArgs();

              if (os_log_type_enabled(v24, v33))
              {
                *buf = 138543362;
                v50 = v29;
                _os_log_impl(&dword_0, v24, v33, "%{public}@", buf, 0xCu);
              }
            }
          }

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_340;
          v40[3] = &unk_78D00;
          v40[4] = *(v1 + 32);
          [v10 showZoomSlugAndLens:1 completion:{v40, v30, v31, v32}];

          v6 = v37;
          v5 = v38;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v5);
  }
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_2(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) zoomRootViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isZoomLensVisible])
        {
          [*(a1 + 32) _showingOrHidingControllerWillBegin];
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_3;
          v10[3] = &unk_79170;
          v9 = *(a1 + 32);
          v10[4] = v8;
          v10[5] = v9;
          [v8 hideZoomSlugAndLens:1 completion:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

id __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_3(uint64_t a1)
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  [v2 removeContentViewController:*(a1 + 32) withUserInteractionEnabled:1 forService:*(a1 + 40)];

  v3 = *(a1 + 40);

  return [v3 _showingOrHidingControllerWillEnd];
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_4(uint64_t a1)
{
  v2 = +[AXSystemAppServer server];
  v3 = [v2 focusedApps];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"appID"];
  v7 = *(a1 + 32);
  v4 = v6;
  v5 = v3;
  AXPerformBlockOnMainThread();
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_5(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v36 + 1) + 8 * i) bundleIdentifier];
        LODWORD(v7) = [v7 isEqualToString:v8];

        if (v7)
        {
          v29 = v2;
          v9 = [*(a1 + 48) objectForKeyedSubscript:@"keyboardFrame"];
          v42 = NSRectFromString(v9);
          x = v42.origin.x;
          y = v42.origin.y;
          width = v42.size.width;
          height = v42.size.height;

          v14 = [*(a1 + 48) objectForKeyedSubscript:@"displayID"];
          v15 = [v14 unsignedIntValue];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [*(a1 + 56) zoomRootViewControllers];
          v17 = [v16 allKeys];

          obj = v17;
          v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v18)
          {
            v19 = v18;
            v31 = *v33;
            while (2)
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v33 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v32 + 1) + 8 * j);
                v22 = [*(a1 + 56) zoomRootViewControllers];
                v23 = [v22 objectForKeyedSubscript:v21];

                v24 = [v23 view];
                v25 = [v24 window];
                v26 = [v25 screen];
                v27 = [v26 displayIdentity];
                if ([v27 displayID] == v15)
                {

LABEL_23:
                  [v23 handleKeyboardWillAppearWithFrame:*(a1 + 40) inAppWithBundleID:{x, y, width, height}];

                  goto LABEL_24;
                }

                if (v15)
                {
                }

                else
                {
                  v28 = [v21 isEqualToString:@"MAIN-DISPLAY"];

                  if (v28)
                  {
                    goto LABEL_23;
                  }
                }
              }

              v19 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v2 = v29;
          goto LABEL_25;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_6(uint64_t a1)
{
  v2 = +[AXSystemAppServer server];
  v3 = [v2 focusedApps];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"appID"];
  v4 = v6;
  v5 = v3;
  AXPerformBlockOnMainThread();
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_7(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v15 + 1) + 8 * i) bundleIdentifier];
        LODWORD(v7) = [v7 isEqualToString:v8];

        if (v7)
        {
          processMessage_withIdentifier_fromClientWithIdentifier_error__LastKbHideNotification = CFAbsoluteTimeGetCurrent();
          v9 = [*(a1 + 48) keyboardHideTimer];
          [v9 cancel];

          v10 = [*(a1 + 48) keyboardHideTimer];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_8;
          v13[3] = &unk_79170;
          v12 = *(a1 + 40);
          v11 = v12.i64[0];
          v14 = vextq_s8(v12, v12, 8uLL);
          [v10 afterDelay:v13 processBlock:0.1];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) zoomRootViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) handleKeyboardWillHideInAppWithBundleID:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_9(uint64_t a1)
{
  v2 = +[AXSystemAppServer server];
  v3 = [v2 focusedApps];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"appID"];
  v4 = v6;
  v5 = v3;
  AXPerformBlockOnMainThread();
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_10(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * i) bundleIdentifier];
        LODWORD(v7) = [v7 isEqualToString:v8];

        if (v7)
        {
          if (CFAbsoluteTimeGetCurrent() - *&processMessage_withIdentifier_fromClientWithIdentifier_error__LastKbHideNotification < 0.1)
          {
            v9 = [*(a1 + 48) keyboardHideTimer];
            [v9 cancel];
          }

          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  if (v2 == 1)
  {
    [v4 addObject:v3];
  }

  else
  {
    [v4 removeObject:v3];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_12;
  block[3] = &unk_78EE8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_12(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) zoomRootViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) zoomListenerRegisteredForAllAttributeUpdatesCoalesced:*(a1 + 48) clientIdentifier:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_13(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 24) objectForKey:v7];
        v9 = v8;
        if (*(a1 + 56) == 1)
        {
          if (!v8)
          {
            v9 = objc_opt_new();
            [*(*(a1 + 40) + 24) setObject:v9 forKey:v7];
          }

          [v9 addObject:*(a1 + 48)];
        }

        else
        {
          [v8 removeObject:*(a1 + 48)];
          v10 = [v9 count];
          v11 = *(*(a1 + 40) + 24);
          if (v10)
          {
            [v11 setObject:v9 forKey:*(a1 + 48)];
          }

          else
          {
            [v11 removeObjectForKey:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_14;
  block[3] = &unk_79198;
  v13 = *(a1 + 32);
  v12 = v13.i64[0];
  v15 = vextq_s8(v13, v13, 8uLL);
  v17 = *(a1 + 56);
  v16 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void __75__ZWUIServer_processMessage_withIdentifier_fromClientWithIdentifier_error___block_invoke_14(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) zoomRootViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) zoomListenerRegisteredForAttributeUpdatesImmediately:*(a1 + 40) registered:*(a1 + 56) clientIdentifier:*(a1 + 48)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end