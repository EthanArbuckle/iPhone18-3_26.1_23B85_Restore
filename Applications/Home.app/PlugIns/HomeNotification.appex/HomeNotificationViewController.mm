@interface HomeNotificationViewController
- (HomeNotificationViewController)init;
- (id)_cameraProfileWithUUID:(id)d retryDelay:(double)delay;
- (id)_configureCameraProfileWithUUID:(id)d;
- (id)_configureCameraSignificantEventsWithUUIDs:(id)ds;
- (id)_configureHomeWithUUID:(id)d;
- (id)_configureNotificationSnapshot;
- (id)_homeWithUUID:(id)d;
- (id)_homeWithUUID:(id)d retryDelay:(double)delay;
- (void)_clearUpContentViewController;
- (void)_configureWithContextDictionary:(id)dictionary;
- (void)_setupContentViewController;
- (void)_setupNotificationActions;
- (void)_showErrorText:(id)text;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setHome:(id)home;
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
    selfCopy = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v6 = +[UIColor systemBackgroundColor];
  view = [(HomeNotificationViewController *)self view];
  [view setBackgroundColor:v6];
}

- (void)updateViewConstraints
{
  staticConstraintSet = [(HomeNotificationViewController *)self staticConstraintSet];
  [staticConstraintSet activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HomeNotificationViewController;
  [(HomeNotificationViewController *)&v4 updateViewConstraints];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v8.receiver = self;
  v8.super_class = HomeNotificationViewController;
  [(HomeNotificationViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:container];
  contentViewController = [(HomeNotificationViewController *)self contentViewController];
  [contentViewController preferredContentSize];
  v6 = v5;
  heightConstraint = [(HomeNotificationViewController *)self heightConstraint];
  [heightConstraint setConstant:v6];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  [(HomeNotificationViewController *)self setNotification:notificationCopy];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [notificationCopy request];
    content = [request content];
    body = [content body];
    *buf = 138412546;
    v35 = notificationCopy;
    v36 = 2112;
    v37 = body;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController didReceiveNotification:%@ (body: %@)", buf, 0x16u);
  }

  notificationRequestIdentifier = [(HomeNotificationViewController *)self notificationRequestIdentifier];

  if (notificationRequestIdentifier)
  {
    cameraNotificationUUID = [(HomeNotificationViewController *)self cameraNotificationUUID];
    if (!cameraNotificationUUID)
    {
      goto LABEL_7;
    }

    cameraNotificationUUID2 = [(HomeNotificationViewController *)self cameraNotificationUUID];
    request2 = [notificationCopy request];
    content2 = [request2 content];
    userInfo = [content2 userInfo];
    v15 = [userInfo objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
    v16 = [cameraNotificationUUID2 isEqual:v15];

    if (v16)
    {
      contentViewController = [(HomeNotificationViewController *)self contentViewController];
      [contentViewController reloadAfterNotificationUpdate];
    }

    else
    {
LABEL_7:
      contentViewController = HFLogForCategory();
      if (os_log_type_enabled(contentViewController, OS_LOG_TYPE_ERROR))
      {
        sub_10000C348(self);
      }
    }
  }

  else
  {
    request3 = [notificationCopy request];
    identifier = [request3 identifier];
    [(HomeNotificationViewController *)self setNotificationRequestIdentifier:identifier];

    request4 = [notificationCopy request];
    content3 = [request4 content];
    contentViewController = [content3 userInfo];

    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = contentViewController;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notification UserInfo:%@", buf, 0xCu);
    }

    if ((+[HFUtilities isDeviceUnlocked]& 1) != 0 || ([contentViewController objectForKeyedSubscript:HMBulletinCameraProfileIDKey], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v24))
    {
      [(HomeNotificationViewController *)self _configureWithContextDictionary:contentViewController];
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
        v31 = contentViewController;
        [v25 evaluatePolicy:2 localizedReason:v28 reply:v30];

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      else
      {
        extensionContext = [(HomeNotificationViewController *)self extensionContext];
        [extensionContext dismissNotificationContentExtension];
      }
    }
  }
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    actionIdentifier = [responseCopy actionIdentifier];
    *buf = 138412546;
    v83 = responseCopy;
    v84 = 2112;
    v85 = actionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController didReceiveNotificationResponse:%@ (actionIdentifier: %@)", buf, 0x16u);
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  v11 = [actionIdentifier2 isEqualToString:@"HomeNotificationActionAssociatePerson"];

  if (v11)
  {
    faceUnknownSignificantEvents = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
    v13 = [faceUnknownSignificantEvents count];

    if (v13 >= 2)
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        faceUnknownSignificantEvents2 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
        v16 = [faceUnknownSignificantEvents2 count];
        *buf = 134217984;
        v83 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController launching Home for %lu unknown persons", buf, 0xCu);
      }

      home = [(HomeNotificationViewController *)self home];
      v18 = [HFURLComponents faceRecognitionSettingsURLForHome:home];

      extensionContext = [(HomeNotificationViewController *)self extensionContext];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100002DD4;
      v79[3] = &unk_100018548;
      v80 = v18;
      selfCopy = self;
      v20 = v18;
      [extensionContext openURL:v20 completionHandler:v79];

      handlerCopy[2](handlerCopy, 1);
      v21 = v80;
      goto LABEL_10;
    }

    v70 = handlerCopy;
    v71 = responseCopy;
    faceUnknownSignificantEvents3 = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
    anyObject = [faceUnknownSignificantEvents3 anyObject];

    v69 = anyObject;
    uniqueIdentifier = [anyObject uniqueIdentifier];
    v30 = HFURLComponentsHome;
    home2 = [(HomeNotificationViewController *)self home];
    uniqueIdentifier2 = [home2 uniqueIdentifier];
    uUIDString = [uniqueIdentifier2 UUIDString];
    v33 = [NSURLQueryItem queryItemWithName:v30 value:uUIDString];
    v88[0] = v33;
    v34 = HFURLComponentsCameraProfile;
    cameraProfile = [(HomeNotificationViewController *)self cameraProfile];
    uniqueIdentifier3 = [cameraProfile uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier3 UUIDString];
    v38 = [NSURLQueryItem queryItemWithName:v34 value:uUIDString2];
    v88[1] = v38;
    v39 = [NSArray arrayWithObjects:v88 count:2];
    v40 = [HFURLComponents homeKitObjectURLForDestination:10 secondaryDestination:0 UUID:uniqueIdentifier queryItems:v39];

    v41 = HFLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v83 = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController launching Home for person URL: %@", buf, 0xCu);
    }

    extensionContext2 = [(HomeNotificationViewController *)self extensionContext];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100002F80;
    v76[3] = &unk_100018548;
    v77 = v40;
    selfCopy2 = self;
    v43 = v40;
    [extensionContext2 openURL:v43 completionHandler:v76];

    handlerCopy = v70;
    v70[2](v70, 1);

    responseCopy = v71;
  }

  else
  {
    actionIdentifier3 = [responseCopy actionIdentifier];
    v23 = [actionIdentifier3 isEqualToString:@"HomeNotificationActionDisassociatePerson"];

    if (v23)
    {
      faceKnownSignificantEvents = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
      anyObject2 = [faceKnownSignificantEvents anyObject];

      cameraProfile2 = [(HomeNotificationViewController *)self cameraProfile];
      clipManager = [cameraProfile2 clipManager];
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10000310C;
      v72[3] = &unk_100018598;
      v73 = anyObject2;
      selfCopy3 = self;
      v75 = handlerCopy;
      v20 = anyObject2;
      [clipManager handleFaceMisclassificationForSignificantEvent:v20 completion:v72];

      v21 = v73;
LABEL_10:

      goto LABEL_24;
    }

    actionIdentifier4 = [responseCopy actionIdentifier];
    v45 = [actionIdentifier4 isEqualToString:@"provide_cameraRecordingFeedback"];

    if (v45)
    {
      notification = [responseCopy notification];
      request = [notification request];
      content = [request content];
      userInfo = [content userInfo];
      v50 = [userInfo objectForKeyedSubscript:HMUserNotificationContentActionURLKey];

      notification2 = [responseCopy notification];
      request2 = [notification2 request];
      content2 = [request2 content];
      userInfo2 = [content2 userInfo];
      v55 = [userInfo2 objectForKeyedSubscript:HMBulletinCameraClipIDKey];

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

        extensionContext3 = [(HomeNotificationViewController *)self extensionContext];
        [extensionContext3 openURL:v60 completionHandler:0];

        v50 = v59;
      }

      else
      {
        v60 = HFLogForCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          notification3 = [responseCopy notification];
          request3 = [notification3 request];
          content3 = [request3 content];
          userInfo3 = [content3 userInfo];
          *buf = 138412802;
          v83 = v55;
          v84 = 2112;
          v85 = v50;
          v86 = 2112;
          v87 = userInfo3;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Received request to display feedback flow with invalid clip/URL string pair (%@/%@) from userInfo:%@", buf, 0x20u);
        }
      }

      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      handlerCopy[2](handlerCopy, 2);
    }
  }

LABEL_24:
}

- (void)setHome:(id)home
{
  objc_storeStrong(&self->_home, home);
  homeCopy = home;
  dispatcher = [(HomeNotificationViewController *)self dispatcher];
  [dispatcher setOverrideHome:homeCopy];
}

- (void)_configureWithContextDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(HomeNotificationViewController *)self setContext:dictionaryCopy];
  v5 = [NSUUID alloc];
  v6 = [dictionaryCopy objectForKeyedSubscript:HMBulletinContextHomeIDKey];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [NSUUID alloc];
  v9 = [dictionaryCopy objectForKeyedSubscript:HMBulletinCameraProfileIDKey];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [NSUUID alloc];
  v12 = [dictionaryCopy objectForKeyedSubscript:HMBulletinContextServiceIDKey];
  v13 = [v11 initWithUUIDString:v12];

  v14 = [dictionaryCopy objectForKeyedSubscript:HMBulletinCameraSignificantEventUUIDsKey];
  v15 = [v14 na_map:&stru_1000185D8];
  v16 = [NSSet setWithArray:v15];

  v17 = [NSUUID alloc];
  v18 = [dictionaryCopy objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
  v19 = [v17 initWithUUIDString:v18];
  [(HomeNotificationViewController *)self setCameraNotificationUUID:v19];

  v20 = [NSUUID alloc];
  v21 = [dictionaryCopy objectForKeyedSubscript:HMBulletinCameraClipIDKey];
  v22 = [v20 initWithUUIDString:v21];
  [(HomeNotificationViewController *)self setCameraClipUUID:v22];

  v23 = [(HomeNotificationViewController *)self _configureHomeWithUUID:v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000038B0;
  v29[3] = &unk_100018678;
  v30 = dictionaryCopy;
  selfCopy = self;
  v32 = v13;
  v33 = v10;
  v34 = v16;
  v24 = v16;
  v25 = v10;
  v26 = v13;
  v27 = dictionaryCopy;
  v28 = [v23 addCompletionBlock:v29];
}

- (id)_configureHomeWithUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E64;
  v8[3] = &unk_1000186F0;
  v8[4] = self;
  v5 = dCopy;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [NAFuture futureWithBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (id)_configureCameraProfileWithUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004140;
  v8[3] = &unk_1000186F0;
  v8[4] = self;
  v5 = dCopy;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [NAFuture futureWithBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (id)_configureCameraSignificantEventsWithUUIDs:(id)ds
{
  dsCopy = ds;
  cameraProfile = [(HomeNotificationViewController *)self cameraProfile];
  clipManager = [cameraProfile clipManager];

  if (clipManager)
  {
    if ([dsCopy count])
    {
      objc_initWeak(location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004558;
      v13[3] = &unk_100018790;
      objc_copyWeak(&v15, location);
      v14 = dsCopy;
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
      cameraProfile2 = [(HomeNotificationViewController *)self cameraProfile];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = cameraProfile2;
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
  contentViewController = [(HomeNotificationViewController *)self contentViewController];

  if (!contentViewController)
  {
    cameraProfile = [(HomeNotificationViewController *)self cameraProfile];

    if (!cameraProfile)
    {
      notificationSnapshot = HFLogForCategory();
      if (os_log_type_enabled(notificationSnapshot, OS_LOG_TYPE_ERROR))
      {
        sub_10000C72C();
      }

      goto LABEL_19;
    }

    affectedService = [(HomeNotificationViewController *)self affectedService];
    serviceType = [affectedService serviceType];
    if ([serviceType isEqualToString:HMServiceTypeMotionSensor])
    {
      cameraNotificationUUID = [(HomeNotificationViewController *)self cameraNotificationUUID];
      if (cameraNotificationUUID)
      {
        notificationSnapshot = 0;
      }

      else
      {
        notificationSnapshot = [(HomeNotificationViewController *)self notificationSnapshot];
      }

      if (notificationSnapshot)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    affectedService2 = [(HomeNotificationViewController *)self affectedService];
    serviceType2 = [affectedService2 serviceType];
    if ([serviceType2 isEqualToString:HMServiceTypeMotionSensor])
    {
      notification = [(HomeNotificationViewController *)self notification];
      request = [notification request];
      content = [request content];
      attachments = [content attachments];
      v15 = [attachments count];

      if (!v15)
      {
        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Legacy cameras without an embedded snapshot don't get a long look.", buf, 2u);
        }

        notificationSnapshot = [(HomeNotificationViewController *)self view];
        [notificationSnapshot bounds];
        [(HomeNotificationViewController *)self setPreferredContentSize:v17, 1.0];
        goto LABEL_19;
      }
    }

    else
    {
    }

    notificationSnapshot = 0;
LABEL_18:
    v18 = [HomeNotificationTableViewController alloc];
    notification2 = [(HomeNotificationViewController *)self notification];
    home = [(HomeNotificationViewController *)self home];
    cameraProfile2 = [(HomeNotificationViewController *)self cameraProfile];
    cameraNotificationUUID2 = [(HomeNotificationViewController *)self cameraNotificationUUID];
    cameraClipUUID = [(HomeNotificationViewController *)self cameraClipUUID];
    v24 = [(HomeNotificationTableViewController *)v18 initWithNotification:notification2 home:home cameraProfile:cameraProfile2 notificationUUID:cameraNotificationUUID2 clipUUID:cameraClipUUID snapshot:notificationSnapshot];
    [(HomeNotificationViewController *)self setContentViewController:v24];

    contentViewController2 = [(HomeNotificationViewController *)self contentViewController];
    [(HomeNotificationViewController *)self addChildViewController:contentViewController2];

    contentViewController3 = [(HomeNotificationViewController *)self contentViewController];
    view = [contentViewController3 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(HomeNotificationViewController *)self view];
    contentViewController4 = [(HomeNotificationViewController *)self contentViewController];
    view3 = [contentViewController4 view];
    [view2 addSubview:view3];

    objc_initWeak(buf, self);
    v31 = [NAUILayoutConstraintSet alloc];
    view4 = [(HomeNotificationViewController *)self view];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000521C;
    v36[3] = &unk_100018808;
    objc_copyWeak(&v37, buf);
    v33 = [v31 initWithOwningView:view4 constraintBuilder:v36];
    [(HomeNotificationViewController *)self setStaticConstraintSet:v33];

    staticConstraintSet = [(HomeNotificationViewController *)self staticConstraintSet];
    [staticConstraintSet activateIfNeeded];

    contentViewController5 = [(HomeNotificationViewController *)self contentViewController];
    [contentViewController5 didMoveToParentViewController:self];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
LABEL_19:
  }
}

- (void)_clearUpContentViewController
{
  contentViewController = [(HomeNotificationViewController *)self contentViewController];
  [contentViewController willMoveToParentViewController:0];

  contentViewController2 = [(HomeNotificationViewController *)self contentViewController];
  view = [contentViewController2 view];
  [view removeFromSuperview];

  contentViewController3 = [(HomeNotificationViewController *)self contentViewController];
  [contentViewController3 removeFromParentViewController];

  [(HomeNotificationViewController *)self setStaticConstraintSet:0];

  [(HomeNotificationViewController *)self setContentViewController:0];
}

- (void)_setupNotificationActions
{
  faceKnownSignificantEvents = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
  v4 = [faceKnownSignificantEvents count];

  faceUnknownSignificantEvents = [(HomeNotificationViewController *)self faceUnknownSignificantEvents];
  v6 = [faceUnknownSignificantEvents count];

  home = [(HomeNotificationViewController *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (v4 != 1 && v6 && hf_currentUserIsAdministrator)
  {
    v9 = HULocalizedString();
    v10 = [UNNotificationActionIcon iconWithSystemImageName:@"person.crop.circle.badge.plus"];
    v11 = [UNNotificationAction actionWithIdentifier:@"HomeNotificationActionAssociatePerson" title:v9 options:0 icon:v10];

    v24 = v11;
    v12 = &v24;
LABEL_13:
    v20 = [NSArray arrayWithObjects:v12 count:1];
    extensionContext = [(HomeNotificationViewController *)self extensionContext];
    [extensionContext setNotificationActions:v20];

    return;
  }

  v14 = v4 == 1 && v6 == 0;
  if ((v14 & hf_currentUserIsAdministrator) == 1)
  {
    faceKnownSignificantEvents2 = [(HomeNotificationViewController *)self faceKnownSignificantEvents];
    anyObject = [faceKnownSignificantEvents2 anyObject];
    faceClassification = [anyObject faceClassification];
    person = [faceClassification person];
    name = [person name];
    v9 = HULocalizedStringWithFormat();

    v19 = [UNNotificationActionIcon iconWithSystemImageName:@"person.crop.circle.badge.xmark", name];
    v11 = [UNNotificationAction actionWithIdentifier:@"HomeNotificationActionDisassociatePerson" title:v9 options:4 icon:v19];

    v23 = v11;
    v12 = &v23;
    goto LABEL_13;
  }
}

- (void)_showErrorText:(id)text
{
  textCopy = text;
  contentViewController = [(HomeNotificationViewController *)self contentViewController];
  view = [contentViewController view];
  [view setHidden:1];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005974;
  v11[3] = &unk_100018830;
  v11[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000059E0;
  v8[3] = &unk_100018548;
  v9 = textCopy;
  selfCopy = self;
  v7 = textCopy;
  [UIView animateWithDuration:0x10000 delay:v11 options:v8 animations:0.2 completion:0.0];
}

- (id)_homeWithUUID:(id)d
{
  dCopy = d;
  dispatcher = [(HomeNotificationViewController *)self dispatcher];
  allHomesFuture = [dispatcher allHomesFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005B98;
  v10[3] = &unk_100018880;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [allHomesFuture flatMap:v10];

  return v8;
}

- (id)_homeWithUUID:(id)d retryDelay:(double)delay
{
  dCopy = d;
  v7 = [(HomeNotificationViewController *)self _homeWithUUID:dCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005F14;
  v11[3] = &unk_1000188F8;
  delayCopy = delay;
  v11[4] = self;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [v7 recover:v11];

  return v9;
}

- (id)_cameraProfileWithUUID:(id)d retryDelay:(double)delay
{
  dCopy = d;
  home = [(HomeNotificationViewController *)self home];
  v8 = [home hf_cameraProfileWithIdentifier:dCopy];

  v9 = HFLogForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = dCopy;
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
    homeManager = [v13 homeManager];

    v15 = [NSDate dateWithTimeIntervalSinceNow:delay];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000646C;
    v20[3] = &unk_1000188D0;
    v20[4] = self;
    v21 = dCopy;
    v16 = v12;
    v22 = v16;
    v17 = [homeManager _refreshBeforeDate:v15 completionHandler:v20];

    v18 = v22;
    v11 = v16;
  }

  return v11;
}

@end