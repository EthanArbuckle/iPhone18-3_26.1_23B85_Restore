@interface ICSInCallSceneDelegate
- (BOOL)isDeviceAttachedToWindowedAccessory;
- (BOOL)isDeviceAttachedToWindowedAccessoryForScene:(id)a3;
- (BOOL)zombieDetectedForSession:(id)a3 scene:(id)a4 ofType:(unint64_t)a5;
- (CGRect)deviceWindowedAccessoryCutoutFrame;
- (CGRect)deviceWindowedAccessoryCutoutFrameForScene:(id)a3;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (ICSInCallSceneDelegate)init;
- (NSMapTable)windowSceneToWindowMap;
- (id)createCallDisplayStyleManagerForScene:(id)a3;
- (id)createRootViewControllerForScene:(id)a3;
- (id)inCallWindowSceneSystemApertureElementProvider:(id)a3;
- (id)remoteAlertShellViewControllerForWindowScene:(id)a3;
- (int64_t)callDisplayStyleForScene:(id)a3;
- (void)_setupSceneIfNeeded:(id)a3 session:(id)a4;
- (void)configureWindow:(id)a3 windowScene:(id)a4;
- (void)configureWindowScene:(id)a3 forSceneType:(unint64_t)a4;
- (void)handleHardwareButtonEvent:(id)a3 eventHandler:(id)a4;
- (void)inCallWindowScene:(id)a3 didChangePresentationModeWithAnalyticsSource:(id)a4;
- (void)inCallWindowScene:(id)a3 didReceiveDeviceLockEvent:(id)a4 withResultHandler:(id)a5;
- (void)inCallWindowScene:(id)a3 didReceiveHardwareButtonEvents:(id)a4;
- (void)inCallWindowScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5;
- (void)inCallWindowSceneHandleShowingNoticeForRevealingSystemControls:(id)a3;
- (void)inCallWindowSceneHandleSilenceRingtone:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)updateSceneBackgroundMaterialWith:(id)a3;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation ICSInCallSceneDelegate

- (ICSInCallSceneDelegate)init
{
  v11.receiver = self;
  v11.super_class = ICSInCallSceneDelegate;
  v2 = [(ICSInCallSceneDelegate *)&v11 init];
  if (v2)
  {
    v3 = +[CNKFeatures sharedInstance];
    features = v2->_features;
    v2->_features = v3;

    v5 = objc_alloc_init(TUFeatureFlags);
    if ([v5 groupConversations] && TUDeviceHasChinaSKU())
    {
      v6 = objc_alloc_init(ICSDynamicSystemUIPresentationStyleHandler);
      greenTea3PPresentationStyleHandler = v2->_greenTea3PPresentationStyleHandler;
      v2->_greenTea3PPresentationStyleHandler = v6;

      v8 = objc_alloc_init(ICSGreenTea3PUIHardwareEventHandler);
      greenTea3PUIHardwareEventHandler = v2->_greenTea3PUIHardwareEventHandler;
      v2->_greenTea3PUIHardwareEventHandler = v8;
    }
  }

  return v2;
}

- (BOOL)isDeviceAttachedToWindowedAccessory
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 currentInCallScene];
  LOBYTE(self) = [(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:v5];

  return self;
}

- (BOOL)isDeviceAttachedToWindowedAccessoryForScene:(id)a3
{
  v4 = a3;
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:v4];
  v5 = !CGRectIsEmpty(v7);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v4 performSelector:"isDeviceAttachedToWindowedAccessory"])
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)deviceWindowedAccessoryCutoutFrame
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 currentInCallScene];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)deviceWindowedAccessoryCutoutFrameForScene:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 valueForKey:@"windowedAccessoryCutoutFrameInScreen"];
    [v4 CGRectValue];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)inCallWindowScene:(id)a3 didReceiveHardwareButtonEvents:(id)a4
{
  v6 = a4;
  v7 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:a3];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ICSInCallSceneDelegate *)self handleHardwareButtonEvent:*(*(&v13 + 1) + 8 * v12) eventHandler:v7, v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)inCallWindowScene:(id)a3 didReceiveDeviceLockEvent:(id)a4 withResultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A0944;
  v19[3] = &unk_100357CA0;
  v10 = a5;
  v20 = v10;
  v11 = objc_retainBlock(v19);
  if ([v8 ics_sceneType] == 6 && (-[ICSInCallSceneDelegate greenTea3PUIHardwareEventHandler](self, "greenTea3PUIHardwareEventHandler"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = sub_100009960();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Passing device lock event to GreenTea3P UI hardware event handler", v18, 2u);
    }

    v14 = [(ICSInCallSceneDelegate *)self greenTea3PUIHardwareEventHandler];
    v15 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
    [v14 handleDeviceLockEvent:v9 resultHandler:v10 callAnalyticsLogger:v15 completionHandler:&stru_100358528];
  }

  else
  {
    v16 = sub_100009960();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received user-initiated device lock event, handing it off to the root view controller to handle", v18, 2u);
    }

    v14 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:v8];
    if (v14)
    {
      [v14 handleDeviceLockEventWithSourceType:objc_msgSend(v9 resultHandler:{"sourceType"), v11}];
    }

    else
    {
      v17 = sub_100009960();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PHInCallRemoteAlertShellViewController missing for windowScene", v18, 2u);
      }

      (v11[2])(v11, 0);
    }
  }
}

- (void)inCallWindowScene:(id)a3 didChangePresentationModeWithAnalyticsSource:(id)a4
{
  v6 = a3;
  v53 = a4;
  v7 = [v6 session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:v6 session:v7];

  v8 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:v6];
  v9 = sub_100030C10([v6 ics_sceneType]);
  v10 = sub_100009960();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [v6 presentationMode];
    v12 = SBSInCallPresentationModeDescription();
    *buf = 138543618;
    v55 = v9;
    v56 = 2114;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scene of type '%{public}@' changed presentation mode to %{public}@", buf, 0x16u);
  }

  v13 = [v8 callDisplayStyleManager];
  v14 = [v13 callDisplayStyle];

  v15 = [v8 callDisplayStyleManager];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:v6];
  [v15 updateMiniWindowCutoutFrame:-[ICSInCallSceneDelegate isDeviceAttachedToWindowedAccessoryForScene:](self attachedToWindowedAccessory:{"isDeviceAttachedToWindowedAccessoryForScene:", v6), v16, v17, v18, v19}];

  v20 = [(ICSInCallSceneDelegate *)self callDisplayStyleForScene:v6];
  v21 = [v8 callDisplayStyleManager];
  [v21 setCallDisplayStyle:v20];

  BKSDisplayBrightnessGetCurrent();
  v23 = v22;
  v24 = +[TUCallCenter sharedInstance];
  v25 = [v24 frontmostBargeCall];

  if (v25 && [v25 isPTT] && v20 == 4 && v23 > 0.0 && (SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    v26 = +[UIApplication sharedApplication];
    v27 = [v26 delegate];
    [v27 dismissPTTSessionPresentation];
  }

  v28 = +[TUCallCenter sharedInstance];
  v29 = [v28 frontmostAudioOrVideoCall];

  v52 = v29;
  v30 = [v29 uniqueProxyIdentifierUUID];
  if (!v14)
  {
    v31 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];

    if (v31)
    {
      v32 = sub_100004F84();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v53;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "ICSCallAnalytics: analytcs source changed to %@", buf, 0xCu);
      }

      v33 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
      [v33 setBannerDismissalReasonForAnalyticsSource:v53 callUUID:v30];
    }
  }

  v34 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
  v51 = v30;
  [v34 setPresentationMode:objc_msgSend(v6 callUUID:{"presentationMode"), v30}];

  v35 = +[UIApplication sharedApplication];
  v36 = [v35 delegate];
  v37 = [v36 sceneManager];
  [v37 didUpdatePresentationMode:objc_msgSend(v6 forScene:{"presentationMode"), v6}];

  v38 = [v6 presentationMode];
  v39 = +[UIApplication sharedApplication];
  v40 = [v39 delegate];
  v41 = [v40 bannerPresentationManager];
  v42 = v41;
  if (v38 == 2)
  {
    [v41 didUpdatePresentationModeToFullScreen];
  }

  else
  {
    [v41 didUpdatePresentationModeToDismissed];
  }

  [(ICSInCallSceneDelegate *)self updateSceneBackgroundMaterialWith:v6];
  if (![(CNKFeatures *)self->_features isIncomingCallBannerEnabled]&& v20 == 2)
  {
    v43 = sub_10010D6C4();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v55 = v9;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of presented banner since the ICS scene %{public}@ is now full screen", buf, 0xCu);
    }

    v44 = +[UIApplication sharedApplication];
    v45 = [v44 delegate];
    v46 = [v45 bannerPresentationManager];
    [v46 dismissPresentedBannerForReason:@"InCallService is presenting full screen" animated:1];
  }

  v47 = [v8 pipController];
  if ([v47 isPipped] && v20 == 2)
  {
    v48 = sub_100009960();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v55 = v9;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Returning %{public}@ PiP to full screen since the associated scene is now full screen", buf, 0xCu);
    }

    [v47 manuallyStopPIPWithCompletion:&stru_100358548];
  }

  v49 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];

  if (v49)
  {
    v50 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];
    [v50 handlePresentationModeChanged:objc_msgSend(v6 scene:{"presentationMode"), v6}];
  }
}

- (void)inCallWindowScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v11 = a3;
  v12 = sub_100009960();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromBOOL();
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v15 = NSStringFromRect(v24);
    v20 = 138543618;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "In-call scene did transition to device attached to windowed accessory: %{public}@ with frame: %{public}@", &v20, 0x16u);
  }

  v16 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:v11];
  v17 = [v16 callDisplayStyleManager];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:v11];
  [v17 updateMiniWindowCutoutFrame:v9 attachedToWindowedAccessory:?];

  v18 = [(ICSInCallSceneDelegate *)self callDisplayStyleForScene:v11];
  v19 = [v16 callDisplayStyleManager];
  [v19 setCallDisplayStyle:v18];
}

- (void)inCallWindowSceneHandleShowingNoticeForRevealingSystemControls:(id)a3
{
  v3 = sub_10010D6C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Landscape app has requested presentation of home affordance, showing session reminder notice", v7, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 bannerPresentationManager];
  [v6 presentReminderNotice];
}

- (id)remoteAlertShellViewControllerForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 rootViewController];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v8 = [v6 rootViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inCallWindowSceneSystemApertureElementProvider:(id)a3
{
  v4 = a3;
  if (([(CNKFeatures *)self->_features isSystemApertureEnabled]& 1) != 0)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 delegate];
    v7 = [v6 bannerPresentationManager];
    v8 = [v7 makeSystemApertureElementProvider];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v9 = sub_100009960();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100255AD8(v8, v9);
      }
    }

    v10 = sub_100009960();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Provided system aperture element %@ corresponding to scene %@", &v13, 0x16u);
    }
  }

  else
  {
    v11 = sub_100009960();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100255A94(v11);
    }

    v8 = 0;
  }

  return v8;
}

- (void)inCallWindowSceneHandleSilenceRingtone:(id)a3
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 incomingCall];
  if (v4)
  {
    v7 = v4;

    v5 = v7;
  }

  else
  {
    v6 = +[TUCallCenter sharedInstance];
    v8 = [v6 incomingVideoCall];

    v5 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = v5;
  if (([v5 shouldSuppressRingtone] & 1) == 0)
  {
    [v9 suppressRingtone];
  }

  v5 = v9;
LABEL_7:
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v7 = a3;
  v8 = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  v10 = [v8 objectForKey:v7];

  v9 = [v7 coordinateSpace];

  [v9 bounds];
  [v10 setFrame:?];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:v4 session:v5];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = [v6 session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:v6 session:v7];
}

- (void)_setupSceneIfNeeded:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ICSInCallSceneDelegate *)self hasSetupForScene])
  {
    v8 = v6;
    if ([v8 activationState] != -1 || objc_msgSend(v8, "presentationMode") || (objc_msgSend(v8, "requestedPresentationConfigurationIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      [(ICSInCallSceneDelegate *)self setHasSetupForScene:1];
      v10 = [v8 ics_sceneType];
      v11 = sub_100009960();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = sub_100030C10(v10);
        *buf = 138543874;
        v78 = v13;
        v79 = 2114;
        v80 = v8;
        v81 = 2114;
        v82 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connecting new scene of type '%{public}@'; scene: %{public}@; to session: %{public}@", buf, 0x20u);
      }

      if (![(ICSInCallSceneDelegate *)self zombieDetectedForSession:v7 scene:v8 ofType:v10])
      {
        v14 = +[TUCallCenter sharedInstance];
        v15 = [v14 frontmostAudioOrVideoCall];

        if (v15)
        {
          v16 = [v15 provider];
          v17 = [v16 localizedName];
          [v8 setTitle:v17];
        }

        v75 = v15;
        v76 = v6;
        v18 = +[UIApplication sharedApplication];
        v19 = [v18 delegate];
        v20 = [v19 sceneManager];
        v21 = [v20 sceneOfType:v10];

        if (v21)
        {
          v22 = sub_100009960();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v71 = v22;
            v72 = sub_100030C10(v10);
            *buf = 138543874;
            v78 = v72;
            v79 = 2112;
            v80 = v8;
            v81 = 2112;
            v82 = v21;
            _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Attempting to connect a new scene of type '%{public}@'; scene:%@ even though we already have one active:%@, undefined behavior may ensue", buf, 0x20u);
          }
        }

        v74 = v21;
        v23 = [[ICSSecureWindow alloc] initWithWindowScene:v8];
        v24 = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
        [v24 setObject:v23 forKey:v8];

        v25 = objc_alloc_init(ICSCallAnalyticsLogger);
        [(ICSInCallSceneDelegate *)self setCallAnalyticsLogger:v25];

        v73 = v23;
        [(ICSInCallSceneDelegate *)self configureWindow:v23 windowScene:v8];
        [(ICSInCallSceneDelegate *)self configureWindowScene:v8 forSceneType:v10];
        v26 = +[UIApplication sharedApplication];
        v27 = [v26 delegate];
        v28 = [v27 allInCallScenes];
        [v28 addObject:v8];

        v29 = +[UIApplication sharedApplication];
        v30 = [v29 delegate];
        v31 = [v30 connectedSceneSessionIdentifiers];
        v32 = [v7 persistentIdentifier];
        v33 = [v32 copy];
        [v31 addObject:v33];

        v34 = +[UIApplication sharedApplication];
        v35 = [v34 delegate];
        v36 = [v35 sceneManager];
        [v36 registerScene:v8 ofType:v10];

        v37 = sub_100009960();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          v39 = +[UIApplication sharedApplication];
          v40 = [v39 delegate];
          v41 = [v40 currentInCallScene];
          v42 = +[UIApplication sharedApplication];
          v43 = [v42 delegate];
          v44 = [v43 allInCallScenes];
          *buf = 138543618;
          v78 = v41;
          v79 = 2114;
          v80 = v44;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "The current in-call scene is: %{public}@; the set of all tracked scenes is now: %{public}@", buf, 0x16u);
        }

        v45 = sub_100009960();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
          v47 = +[UIApplication sharedApplication];
          v48 = [v47 delegate];
          v49 = [v48 allInCallScenes];
          v50 = [v49 count];
          *buf = 134217984;
          v78 = v50;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Number of scenes tracked is %lu", buf, 0xCu);
        }

        v51 = sub_100009960();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = +[UIApplication sharedApplication];
          v54 = [v53 delegate];
          v55 = [v54 connectedSceneSessionIdentifiers];
          *buf = 138543362;
          v78 = v55;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "The set of all scene sessions that have ever connected is %{public}@", buf, 0xCu);
        }

        v56 = +[UIApplication sharedApplication];
        v57 = [v56 delegate];
        v58 = [v57 sceneManager];
        [v58 didUpdatePresentationMode:objc_msgSend(v8 forScene:{"presentationMode"), v8}];

        v59 = [(ICSSecureWindow *)v73 rootViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
          v61 = v60;
          if (v60)
          {
            v62 = [v60 pipController];
            [v62 setWindowForTransitionAnimation:v73];

            [v61 sceneSessionDidChange];
          }
        }

        else
        {
          v61 = 0;
        }

        if ((-[CNKFeatures isIncomingCallBannerEnabled](self->_features, "isIncomingCallBannerEnabled") & 1) == 0 && [v8 presentationMode] == 2 && objc_msgSend(v8, "ics_sceneType") != 6)
        {
          v63 = sub_10010D6C4();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
            v65 = sub_100030C10([v8 ics_sceneType]);
            *buf = 138543362;
            v78 = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of presented banner since a new full screen ICS scene %{public}@ is connecting", buf, 0xCu);
          }

          v66 = +[UIApplication sharedApplication];
          v67 = [v66 delegate];
          v68 = [v67 bannerPresentationManager];
          [v68 dismissPresentedBannerForReason:@"InCallService is connecting a new full screen scene" animated:1];
        }

        [CATransaction setFrameStallSkipRequest:1];
        v69 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];

        if (v69)
        {
          v70 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];
          [v70 handlePresentationModeChanged:objc_msgSend(v8 scene:{"presentationMode"), v8}];
        }

        v6 = v76;
      }
    }
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = sub_100030C10([v4 ics_sceneType]);
    v39 = 138543618;
    v40 = v7;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnected scene of type %{public}@: %@", &v39, 0x16u);
  }

  v8 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:v4];
  v9 = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  [v9 removeObjectForKey:v4];

  v10 = +[UIApplication sharedApplication];
  v11 = [v10 delegate];
  v12 = [v11 allInCallScenes];
  v13 = [v12 containsObject:v4];

  v14 = sub_100009960();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v39 = 138412290;
      v40 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing scene %@ from the set of all tracked scenes", &v39, 0xCu);
    }

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 delegate];
    v18 = [v17 allInCallScenes];
    [v18 removeObject:v4];
  }

  else if (v15)
  {
    v39 = 138412290;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Warning]: Not removing scene %@ from the set of all tracked scenes because it was already untracked", &v39, 0xCu);
  }

  v19 = sub_100009960();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = +[UIApplication sharedApplication];
    v22 = [v21 delegate];
    v23 = [v22 allInCallScenes];
    v39 = 138412290;
    v40 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "The set of all tracked scenes is now %@", &v39, 0xCu);
  }

  v24 = sub_100009960();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = +[UIApplication sharedApplication];
    v27 = [v26 delegate];
    v28 = [v27 allInCallScenes];
    v29 = [v28 count];
    v39 = 134217984;
    v40 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Number of scenes tracked is %lu", &v39, 0xCu);
  }

  v30 = [(ICSInCallSceneDelegate *)self sceneDidDisconnectBlock];

  if (v30)
  {
    v31 = [(ICSInCallSceneDelegate *)self sceneDidDisconnectBlock];
    v31[2]();

    [(ICSInCallSceneDelegate *)self setSceneDidDisconnectBlock:0];
  }

  if ([v4 presentationMode] == 1)
  {
    v32 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
    [v32 bannerDidDisconnect];
  }

  [(ICSInCallSceneDelegate *)self setCallAnalyticsLogger:0];
  [v8 sceneSessionDidChange];
  v33 = [v4 requestedPresentationConfigurationIdentifier];

  if (v33)
  {
    v34 = +[UIApplication sharedApplication];
    v35 = [v34 delegate];
    v36 = [v35 sceneManager];
    v37 = [v4 ics_sceneType];
    v38 = [v4 requestedPresentationConfigurationIdentifier];
    [v36 didDisconnectSceneOfType:v37 withIdentifier:v38];
  }

  else
  {
    v34 = sub_100004F84();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_100255B50(v4, v34);
    }
  }
}

- (void)handleHardwareButtonEvent:(id)a3 eventHandler:(id)a4
{
  v8 = a4;
  v5 = [a3 buttonEventType];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [v8 handleVolumeUpButtonPressed];
    }

    else
    {
      v6 = v5 == 2;
      v7 = v8;
      if (!v6)
      {
        goto LABEL_13;
      }

      [v8 handleVolumeDownButtonPressed];
    }

LABEL_12:
    v7 = v8;
    goto LABEL_13;
  }

  if (v5 == 3)
  {
    [v8 handleHeadsetButtonPressed];
    goto LABEL_12;
  }

  v6 = v5 == 4;
  v7 = v8;
  if (v6)
  {
    [v8 handleHeadsetButtonLongPressed];
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)zombieDetectedForSession:(id)a3 scene:(id)a4 ofType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 delegate];
  v11 = [v10 connectedSceneSessionIdentifiers];
  v12 = [v8 persistentIdentifier];

  v13 = [v11 containsObject:v12];
  v14 = +[UIApplication sharedApplication];
  v15 = [v14 delegate];
  v16 = [v15 sceneManager];
  v17 = [v16 hasPendingSceneOfType:a5];

  if (objc_opt_respondsToSelector())
  {
    v18 = [v7 requestedPresentationConfigurationIdentifier];
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v17 ^ 1;
  v21 = v13 | v20 | v19;
  if (v21)
  {
    v22 = sub_100009960();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100255BC8(v13, v20, v22);
    }
  }

  return v21 & 1;
}

- (void)configureWindowScene:(id)a3 forSceneType:(unint64_t)a4
{
  v6 = a3;
  [(ICSInCallSceneDelegate *)self updateSceneBackgroundMaterialWith:v6];
  v7 = sub_1000EDC00(a4);
  [v6 setPreferredBackgroundActivitiesToSuppress:v7];

  [v6 setShouldBecomeVisibleWhenWakingDisplay:0];
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [v9 shouldActivateSOS];

  if (v10)
  {
    v11 = sub_100009960();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICSApplicationDelegate wants SOS while connecting a new scene. Immediately transition to full-screen overlay for SOS", buf, 2u);
    }

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 delegate];
    [v13 transitionSceneToOverlayForSOS];
  }

  else
  {
    v14 = +[UIApplication sharedApplication];
    v15 = [v14 delegate];
    v16 = [v15 activationContext];
    v17 = [v16 pendingRestrictedScreenTimeRequest];

    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = sub_100009960();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ICSApplicationDelegate wants Screen Time while connecting a new scene. Immediately transition to full-screen overlay for Screen Time", v19, 2u);
    }

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 delegate];
    [v13 transitionSceneToOverlayForScreenTime];
  }

LABEL_10:
  if ([v6 isScreenSharingPresentation])
  {
    [v6 setSupportsDeviceLockEvents:0];
    [v6 setIdleTimerDisabled:1];
    [v6 setCallConnected:0];
    [v6 setPreferredHardwareButtonEventTypes:0];
  }

  if (a4 == 6)
  {
    [v6 setSupportsDeviceLockEvents:1];
    [v6 setShouldBecomeVisibleWhenWakingDisplay:0];
    [v6 setPrefersHiddenWhenDismissed:1];
  }
}

- (void)updateSceneBackgroundMaterialWith:(id)a3
{
  v16 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 frontmostCall];
  if ([v5 isRTT])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 frontmostCall];
    v6 = [v8 isTTY] ^ 1;
  }

  if ([v16 presentationMode] != 1 && -[CNKFeatures isHeroImageEnabled](self->_features, "isHeroImageEnabled") && (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = (objc_msgSend(v9, "currentCallCount") != 0) & v6, v9, v10 == 1))
  {
    v11 = +[TUCallCenter sharedInstance];
    v12 = +[TUCallCenter sharedInstance];
    v13 = [v12 frontmostAudioOrVideoCall];
    v14 = [v11 activeConversationForCall:v13];

    if (v14 && ![v14 avMode])
    {
      v15 = 4;
    }

    else
    {
      v15 = 1;
    }

    [v16 _setBackgroundStyle:v15];
  }

  else
  {
    [v16 _setBackgroundStyle:4];
  }
}

- (void)configureWindow:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [v6 coordinateSpace];
  [v7 bounds];
  [v9 setFrame:?];

  v8 = [(ICSInCallSceneDelegate *)self createRootViewControllerForScene:v6];

  [v9 setRootViewController:v8];
  [v9 makeKeyAndVisible];
}

- (id)createRootViewControllerForScene:(id)a3
{
  v3 = [(ICSInCallSceneDelegate *)self createCallDisplayStyleManagerForScene:a3];
  v4 = [[PHInCallRemoteAlertShellViewController alloc] initWithCallDisplayStyleManager:v3];

  return v4;
}

- (id)createCallDisplayStyleManagerForScene:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICSCallDisplayStyleManager);
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:v4];
  [(ICSCallDisplayStyleManager *)v5 updateMiniWindowCutoutFrame:[(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:v4] attachedToWindowedAccessory:v6, v7, v8, v9];
  [(ICSCallDisplayStyleManager *)v5 setCallDisplayStyle:[(ICSInCallSceneDelegate *)self callDisplayStyleForScene:v4]];
  v10 = [v4 session];
  v11 = [v10 persistentIdentifier];
  [(ICSCallDisplayStyleManager *)v5 setSceneSessionIdentifier:v11];

  v12 = [v4 ics_sceneType];
  [(ICSCallDisplayStyleManager *)v5 setSceneType:v12];

  return v5;
}

- (int64_t)callDisplayStyleForScene:(id)a3
{
  v4 = a3;
  v5 = [v4 presentationMode];
  if ((v5 - 2) >= 2)
  {
    if (v5 == 1)
    {
      v7 = +[ICSPreferences sharedPreferences];
      if ([v7 hasBannersEnabled])
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 4;
    }
  }

  else if ([(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (NSMapTable)windowSceneToWindowMap
{
  windowSceneToWindowMap = self->_windowSceneToWindowMap;
  if (!windowSceneToWindowMap)
  {
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    v5 = self->_windowSceneToWindowMap;
    self->_windowSceneToWindowMap = v4;

    windowSceneToWindowMap = self->_windowSceneToWindowMap;
  }

  return windowSceneToWindowMap;
}

@end