@interface HomeNotificationViewController
- (HomeNotificationViewController)init;
- (id)_cameraProfileWithUUID:(id)a3 retryDelay:(double)a4;
- (id)_configureCameraProfileWithUUID:(id)a3;
- (id)_configureCameraSignificantEventsWithUUIDs:(id)a3;
- (id)_configureHomeWithUUID:(id)a3;
- (id)_configureNotificationSnapshot;
- (id)_homeWithUUID:(id)a3;
- (id)_homeWithUUID:(id)a3 retryDelay:(double)a4;
- (void)_clearUpContentViewController;
- (void)_configureWithContextDictionary:(id)a3;
- (void)_setupContentViewController;
- (void)_setupNotificationActions;
- (void)_showErrorText:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setHome:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HomeNotificationViewController

- (HomeNotificationViewController)init
{
  v6.receiver = self;
  v6.super_class = HomeNotificationViewController;
  v2 = [(HomeNotificationViewController *)&v6 init];
  if (v2)
  {
    v3 = +[HFHomeKitDispatcher sharedDispatcher];
    dispatcher = v2->_dispatcher;
    v2->_dispatcher = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HomeNotificationViewController;
  [(HomeNotificationViewController *)&v8 viewDidLoad];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v6 = +[UIColor systemBackgroundColor];
  v7 = [(HomeNotificationViewController *)self view];
  [v7 setBackgroundColor:v6];
}

- (void)updateViewConstraints
{
  v3 = [(HomeNotificationViewController *)self staticConstraintSet];
  [v3 activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HomeNotificationViewController;
  [(HomeNotificationViewController *)&v4 updateViewConstraints];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v8.receiver = self;
  v8.super_class = HomeNotificationViewController;
  [(HomeNotificationViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(HomeNotificationViewController *)self contentViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v7 = [(HomeNotificationViewController *)self heightConstraint];
  [v7 setConstant:v6];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  [(HomeNotificationViewController *)self setNotification:v4];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 request];
    v7 = [v6 content];
    v8 = [v7 body];
    *buf = 138412546;
    v35 = v4;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController didReceiveNotification:%@ (body: %@)", buf, 0x16u);
  }

  v9 = [(HomeNotificationViewController *)self notificationRequestIdentifier];

  if (v9)
  {
    v10 = [(HomeNotificationViewController *)self cameraNotificationUUID];
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [(HomeNotificationViewController *)self cameraNotificationUUID];
    v12 = [v4 request];
    v13 = [v12 content];
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
    v16 = [v11 isEqual:v15];

    if (v16)
    {
      v17 = [(HomeNotificationViewController *)self contentViewController];
      [v17 reloadAfterNotificationUpdate];
    }

    else
    {
LABEL_7:
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000C348(self);
      }
    }
  }

  else
  {
    v18 = [v4 request];
    v19 = [v18 identifier];
    [(HomeNotificationViewController *)self setNotificationRequestIdentifier:v19];

    v20 = [v4 request];
    v21 = [v20 content];
    v17 = [v21 userInfo];

    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notification UserInfo:%@", buf, 0xCu);
    }

    if ((+[HFUtilities isDeviceUnlocked]& 1) != 0 || ([v17 objectForKeyedSubscript:HMBulletinCameraProfileIDKey], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v24))
    {
      [(HomeNotificationViewController *)self _configureWithContextDictionary:v17];
    }

    else
    {
      v25 = objc_alloc_init(LAContext);
      v33 = 0;
      v26 = [v25 canEvaluatePolicy:2 error:&v33];
      v27 = v33;
      if (v26)
      {
        objc_initWeak(buf, self);
        v28 = HULocalizedString();
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100002388;
        v30[3] = &unk_100018520;
        objc_copyWeak(&v32, buf);
        v31 = v17;
        [v25 evaluatePolicy:2 localizedReason:v28 reply:v30];

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      else
      {
        v29 = [(HomeNotificationViewController *)self extensionContext];
        [v29 dismissNotificationContentExtension];
      }
    }
  }
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 actionIdentifier];
    *buf = 138412546;
    v83 = v6;
    v84 = 2112;
    v85 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController didReceiveNotificationResponse:%@ (actionIdentifier: %@)", buf, 0x16u);
  }

  v10 = [v6 actionIdentifier];
  v11 = [v10 isEqualToString:@"HomeNotificationActionAssociatePerson"];

  if (v11)
  {
    v12 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
        v16 = [v15 count];
        *buf = 134217984;
        v83 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController launching Home for %lu unknown persons", buf, 0xCu);
      }

      v17 = [(HomeNotificationViewController *)self home];
      v18 = [HFURLComponents faceRecognitionSettingsURLForHome:v17];

      v19 = [(HomeNotificationViewController *)self extensionContext];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100002DD4;
      v79[3] = &unk_100018548;
      v80 = v18;
      v81 = self;
      v20 = v18;
      [v19 openURL:v20 completionHandler:v79];

      v7[2](v7, 1);
      v21 = v80;
      goto LABEL_10;
    }

    v70 = v7;
    v71 = v6;
    v28 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
    v29 = [v28 anyObject];

    v69 = v29;
    v67 = [v29 uniqueIdentifier];
    v30 = HFURLComponentsHome;
    v68 = [(HomeNotificationViewController *)self home];
    v31 = [v68 uniqueIdentifier];
    v32 = [v31 UUIDString];
    v33 = [NSURLQueryItem queryItemWithName:v30 value:v32];
    v88[0] = v33;
    v34 = HFURLComponentsCameraProfile;
    v35 = [(HomeNotificationViewController *)self cameraProfile];
    v36 = [v35 uniqueIdentifier];
    v37 = [v36 UUIDString];
    v38 = [NSURLQueryItem queryItemWithName:v34 value:v37];
    v88[1] = v38;
    v39 = [NSArray arrayWithObjects:v88 count:2];
    v40 = [HFURLComponents homeKitObjectURLForDestination:10 secondaryDestination:0 UUID:v67 queryItems:v39];

    v41 = HFLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v83 = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController launching Home for person URL: %@", buf, 0xCu);
    }

    v42 = [(HomeNotificationViewController *)self extensionContext];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100002F80;
    v76[3] = &unk_100018548;
    v77 = v40;
    v78 = self;
    v43 = v40;
    [v42 openURL:v43 completionHandler:v76];

    v7 = v70;
    v70[2](v70, 1);

    v6 = v71;
  }

  else
  {
    v22 = [v6 actionIdentifier];
    v23 = [v22 isEqualToString:@"HomeNotificationActionDisassociatePerson"];

    if (v23)
    {
      v24 = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
      v25 = [v24 anyObject];

      v26 = [(HomeNotificationViewController *)self cameraProfile];
      v27 = [v26 clipManager];
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10000310C;
      v72[3] = &unk_100018598;
      v73 = v25;
      v74 = self;
      v75 = v7;
      v20 = v25;
      [v27 handleFaceMisclassificationForSignificantEvent:v20 completion:v72];

      v21 = v73;
LABEL_10:

      goto LABEL_24;
    }

    v44 = [v6 actionIdentifier];
    v45 = [v44 isEqualToString:@"provide_cameraRecordingFeedback"];

    if (v45)
    {
      v46 = [v6 notification];
      v47 = [v46 request];
      v48 = [v47 content];
      v49 = [v48 userInfo];
      v50 = [v49 objectForKeyedSubscript:HMUserNotificationContentActionURLKey];

      v51 = [v6 notification];
      v52 = [v51 request];
      v53 = [v52 content];
      v54 = [v53 userInfo];
      v55 = [v54 objectForKeyedSubscript:HMBulletinCameraClipIDKey];

      if (v50 && v55)
      {
        v56 = HFNotificationCameraClipKey;
        v57 = +[HFCameraUtilities cameraFeedbackQueryString];
        v58 = [NSString stringWithFormat:@"&%@=%@%@", v56, v55, v57];
        v59 = [v50 stringByAppendingString:v58];

        v60 = [NSURL URLWithString:v59];
        v61 = HFLogForCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v60;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Open app for feedback request with URL:%@.", buf, 0xCu);
        }

        v62 = [(HomeNotificationViewController *)self extensionContext];
        [v62 openURL:v60 completionHandler:0];

        v50 = v59;
      }

      else
      {
        v60 = HFLogForCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [v6 notification];
          v64 = [v63 request];
          v65 = [v64 content];
          v66 = [v65 userInfo];
          *buf = 138412802;
          v83 = v55;
          v84 = 2112;
          v85 = v50;
          v86 = 2112;
          v87 = v66;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Received request to display feedback flow with invalid clip/URL string pair (%@/%@) from userInfo:%@", buf, 0x20u);
        }
      }

      v7[2](v7, 1);
    }

    else
    {
      v7[2](v7, 2);
    }
  }

LABEL_24:
}

- (void)setHome:(id)a3
{
  objc_storeStrong(&self->_home, a3);
  v5 = a3;
  v6 = [(HomeNotificationViewController *)self dispatcher];
  [v6 setOverrideHome:v5];
}

- (void)_configureWithContextDictionary:(id)a3
{
  v4 = a3;
  [(HomeNotificationViewController *)self setContext:v4];
  v5 = [NSUUID alloc];
  v6 = [v4 objectForKeyedSubscript:HMBulletinContextHomeIDKey];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [NSUUID alloc];
  v9 = [v4 objectForKeyedSubscript:HMBulletinCameraProfileIDKey];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [NSUUID alloc];
  v12 = [v4 objectForKeyedSubscript:HMBulletinContextServiceIDKey];
  v13 = [v11 initWithUUIDString:v12];

  v14 = [v4 objectForKeyedSubscript:HMBulletinCameraSignificantEventUUIDsKey];
  v15 = [v14 na_map:&stru_1000185D8];
  v16 = [NSSet setWithArray:v15];

  v17 = [NSUUID alloc];
  v18 = [v4 objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
  v19 = [v17 initWithUUIDString:v18];
  [(HomeNotificationViewController *)self setCameraNotificationUUID:v19];

  v20 = [NSUUID alloc];
  v21 = [v4 objectForKeyedSubscript:HMBulletinCameraClipIDKey];
  v22 = [v20 initWithUUIDString:v21];
  [(HomeNotificationViewController *)self setCameraClipUUID:v22];

  v23 = [(HomeNotificationViewController *)self _configureHomeWithUUID:v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000038B0;
  v29[3] = &unk_100018678;
  v30 = v4;
  v31 = self;
  v32 = v13;
  v33 = v10;
  v34 = v16;
  v24 = v16;
  v25 = v10;
  v26 = v13;
  v27 = v4;
  v28 = [v23 addCompletionBlock:v29];
}

- (id)_configureHomeWithUUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E64;
  v8[3] = &unk_1000186F0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [NAFuture futureWithBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (id)_configureCameraProfileWithUUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004140;
  v8[3] = &unk_1000186F0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [NAFuture futureWithBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (id)_configureCameraSignificantEventsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HomeNotificationViewController *)self cameraProfile];
  v6 = [v5 clipManager];

  if (v6)
  {
    if ([v4 count])
    {
      objc_initWeak(location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004558;
      v13[3] = &unk_100018790;
      objc_copyWeak(&v15, location);
      v14 = v4;
      v7 = [NAFuture futureWithBlock:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No significant event UUIDs to fetch", location, 2u);
    }

    v10 = +[NAFuture futureWithNoResult];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HomeNotificationViewController *)self cameraProfile];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Need a clip manager to fetch significant events: %@", location, 0xCu);
    }

    v10 = +[NAFuture futureWithNoResult];
  }

  v7 = v10;
LABEL_11:

  return v7;
}

- (id)_configureNotificationSnapshot
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004AA0;
  v5[3] = &unk_1000187E0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  v3 = [NAFuture futureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_setupContentViewController
{
  v3 = [(HomeNotificationViewController *)self contentViewController];

  if (!v3)
  {
    v4 = [(HomeNotificationViewController *)self cameraProfile];

    if (!v4)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000C72C();
      }

      goto LABEL_19;
    }

    v5 = [(HomeNotificationViewController *)self affectedService];
    v6 = [v5 serviceType];
    if ([v6 isEqualToString:HMServiceTypeMotionSensor])
    {
      v7 = [(HomeNotificationViewController *)self cameraNotificationUUID];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(HomeNotificationViewController *)self notificationSnapshot];
      }

      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v9 = [(HomeNotificationViewController *)self affectedService];
    v10 = [v9 serviceType];
    if ([v10 isEqualToString:HMServiceTypeMotionSensor])
    {
      v11 = [(HomeNotificationViewController *)self notification];
      v12 = [v11 request];
      v13 = [v12 content];
      v14 = [v13 attachments];
      v15 = [v14 count];

      if (!v15)
      {
        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Legacy cameras without an embedded snapshot don't get a long look.", buf, 2u);
        }

        v8 = [(HomeNotificationViewController *)self view];
        [v8 bounds];
        [(HomeNotificationViewController *)self setPreferredContentSize:v17, 1.0];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v8 = 0;
LABEL_18:
    v18 = [HomeNotificationTableViewController alloc];
    v19 = [(HomeNotificationViewController *)self notification];
    v20 = [(HomeNotificationViewController *)self home];
    v21 = [(HomeNotificationViewController *)self cameraProfile];
    v22 = [(HomeNotificationViewController *)self cameraNotificationUUID];
    v23 = [(HomeNotificationViewController *)self cameraClipUUID];
    v24 = [(HomeNotificationTableViewController *)v18 initWithNotification:v19 home:v20 cameraProfile:v21 notificationUUID:v22 clipUUID:v23 snapshot:v8];
    [(HomeNotificationViewController *)self setContentViewController:v24];

    v25 = [(HomeNotificationViewController *)self contentViewController];
    [(HomeNotificationViewController *)self addChildViewController:v25];

    v26 = [(HomeNotificationViewController *)self contentViewController];
    v27 = [v26 view];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(HomeNotificationViewController *)self view];
    v29 = [(HomeNotificationViewController *)self contentViewController];
    v30 = [v29 view];
    [v28 addSubview:v30];

    objc_initWeak(buf, self);
    v31 = [NAUILayoutConstraintSet alloc];
    v32 = [(HomeNotificationViewController *)self view];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000521C;
    v36[3] = &unk_100018808;
    objc_copyWeak(&v37, buf);
    v33 = [v31 initWithOwningView:v32 constraintBuilder:v36];
    [(HomeNotificationViewController *)self setStaticConstraintSet:v33];

    v34 = [(HomeNotificationViewController *)self staticConstraintSet];
    [v34 activateIfNeeded];

    v35 = [(HomeNotificationViewController *)self contentViewController];
    [v35 didMoveToParentViewController:self];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
LABEL_19:
  }
}

- (void)_clearUpContentViewController
{
  v3 = [(HomeNotificationViewController *)self contentViewController];
  [v3 willMoveToParentViewController:0];

  v4 = [(HomeNotificationViewController *)self contentViewController];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  v6 = [(HomeNotificationViewController *)self contentViewController];
  [v6 removeFromParentViewController];

  [(HomeNotificationViewController *)self setStaticConstraintSet:0];

  [(HomeNotificationViewController *)self setContentViewController:0];
}

- (void)_setupNotificationActions
{
  v3 = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
  v4 = [v3 count];

  v5 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
  v6 = [v5 count];

  v7 = [(HomeNotificationViewController *)self home];
  v8 = [v7 hf_currentUserIsAdministrator];

  if (v4 != 1 && v6 && v8)
  {
    v9 = HULocalizedString();
    v10 = [UNNotificationActionIcon iconWithSystemImageName:@"person.crop.circle.badge.plus"];
    v11 = [UNNotificationAction actionWithIdentifier:@"HomeNotificationActionAssociatePerson" title:v9 options:0 icon:v10];

    v24 = v11;
    v12 = &v24;
LABEL_13:
    v20 = [NSArray arrayWithObjects:v12 count:1];
    v21 = [(HomeNotificationViewController *)self extensionContext];
    [v21 setNotificationActions:v20];

    return;
  }

  v14 = v4 == 1 && v6 == 0;
  if ((v14 & v8) == 1)
  {
    v15 = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
    v16 = [v15 anyObject];
    v17 = [v16 faceClassification];
    v18 = [v17 person];
    v22 = [v18 name];
    v9 = HULocalizedStringWithFormat();

    v19 = [UNNotificationActionIcon iconWithSystemImageName:@"person.crop.circle.badge.xmark", v22];
    v11 = [UNNotificationAction actionWithIdentifier:@"HomeNotificationActionDisassociatePerson" title:v9 options:4 icon:v19];

    v23 = v11;
    v12 = &v23;
    goto LABEL_13;
  }
}

- (void)_showErrorText:(id)a3
{
  v4 = a3;
  v5 = [(HomeNotificationViewController *)self contentViewController];
  v6 = [v5 view];
  [v6 setHidden:1];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005974;
  v11[3] = &unk_100018830;
  v11[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000059E0;
  v8[3] = &unk_100018548;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [UIView animateWithDuration:0x10000 delay:v11 options:v8 animations:0.2 completion:0.0];
}

- (id)_homeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HomeNotificationViewController *)self dispatcher];
  v6 = [v5 allHomesFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005B98;
  v10[3] = &unk_100018880;
  v11 = v4;
  v7 = v4;
  v8 = [v6 flatMap:v10];

  return v8;
}

- (id)_homeWithUUID:(id)a3 retryDelay:(double)a4
{
  v6 = a3;
  v7 = [(HomeNotificationViewController *)self _homeWithUUID:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005F14;
  v11[3] = &unk_1000188F8;
  v13 = a4;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 recover:v11];

  return v9;
}

- (id)_cameraProfileWithUUID:(id)a3 retryDelay:(double)a4
{
  v6 = a3;
  v7 = [(HomeNotificationViewController *)self home];
  v8 = [v7 hf_cameraProfileWithIdentifier:v6];

  v9 = HFLogForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(NC) Found camera profile for UUID:%@", buf, 0xCu);
    }

    v11 = [NAFuture futureWithResult:v8];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000C84C(self);
    }

    v12 = objc_opt_new();
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    v14 = [v13 homeManager];

    v15 = [NSDate dateWithTimeIntervalSinceNow:a4];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000646C;
    v20[3] = &unk_1000188D0;
    v20[4] = self;
    v21 = v6;
    v16 = v12;
    v22 = v16;
    v17 = [v14 _refreshBeforeDate:v15 completionHandler:v20];

    v18 = v22;
    v11 = v16;
  }

  return v11;
}

@end