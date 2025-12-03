@interface BKUserActivityManager
+ (id)sharedInstance;
- (BOOL)continueActivity:(id)activity sceneController:(id)controller;
- (BOOL)willContinueActivityWithType:(id)type sceneController:(id)controller;
- (void)_continueOpenBookActivity:(id)activity sceneController:(id)controller location:(id)location;
- (void)setCurrentActivity:(id)activity;
- (void)startReadingAsset:(id)asset;
@end

@implementation BKUserActivityManager

+ (id)sharedInstance
{
  if (qword_100AF74E0 != -1)
  {
    sub_10078C84C();
  }

  v3 = qword_100AF74D8;

  return v3;
}

- (void)startReadingAsset:(id)asset
{
  assetCopy = asset;
  v5 = self->_generation + 1;
  self->_generation = v5;
  if ([assetCopy isValid] && (objc_msgSend(assetCopy, "assetID"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    assetID = [assetCopy assetID];
    v8 = +[BKLibraryManager defaultManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A7ED0;
    v10[3] = &unk_100A05F48;
    v11 = assetID;
    selfCopy = self;
    v13 = v5;
    v9 = assetID;
    [v8 performBackgroundReadOnlyBlock:v10];
  }

  else
  {
    [(BKUserActivityManager *)self setCurrentActivity:0];
  }
}

- (BOOL)willContinueActivityWithType:(id)type sceneController:(id)controller
{
  typeCopy = type;
  v6 = [controller willContinueActivityWithType:typeCopy sceneController:controller];
  v11[0] = @"com.apple.iBooks.assetReading";
  v11[1] = CSSearchableItemActionType;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = v7;
  v9 = (v6 & 1) != 0 || typeCopy && [v7 containsObject:typeCopy];

  return v9;
}

- (BOOL)continueActivity:(id)activity sceneController:(id)controller
{
  activityCopy = activity;
  controllerCopy = controller;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    userInfo = [activityCopy userInfo];
    scene = [controllerCopy scene];
    session = [scene session];
    persistentIdentifier = [session persistentIdentifier];
    *buf = 138543874;
    v99 = activityType;
    v100 = 2112;
    v101 = userInfo;
    v102 = 2114;
    v103 = persistentIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityManager continueActivity: activityType=%{public}@, userInfo=%@, withSceneID=%{public}@", buf, 0x20u);
  }

  if (controllerCopy && ([controllerCopy continueActivity:activityCopy sceneController:controllerCopy] & 1) != 0)
  {
    goto LABEL_59;
  }

  activityType2 = [activityCopy activityType];
  v15 = [activityType2 isEqualToString:@"com.apple.iBooks.assetReading"];

  if (v15)
  {
    userInfo2 = [activityCopy userInfo];
    bu_assetIDFromURL = [userInfo2 objectForKeyedSubscript:@"assetID"];
LABEL_48:
    v39 = 0;
    goto LABEL_49;
  }

  activityType3 = [activityCopy activityType];
  v19 = [activityType3 isEqualToString:CSSearchableItemActionType];

  if (v19)
  {
    objc_opt_class();
    userInfo3 = [activityCopy userInfo];
    v21 = [userInfo3 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
    v22 = BUDynamicCast();

    if (![v22 hasPrefix:@"NSUA:"])
    {
      userInfo2 = v22;
      v39 = 0;
      bu_assetIDFromURL = userInfo2;
LABEL_49:

      goto LABEL_50;
    }

    obj = self;
    userInfo2 = v22;
    lastObject = [v22 substringFromIndex:{objc_msgSend(@"NSUA:", "length")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v96[0] = @"com.apple.iBooks.openBook";
    v96[1] = @"com.apple.iBooks.playAudiobook";
    v24 = [NSArray arrayWithObjects:v96 count:2];
    v25 = [v24 countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v91;
LABEL_11:
      v28 = 0;
      while (1)
      {
        if (*v91 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v90 + 1) + 8 * v28) stringByAppendingString:@"."];
        if ([lastObject hasPrefix:v29])
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v24 countByEnumeratingWithState:&v90 objects:v97 count:16];
          if (v26)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      bu_assetIDFromURL = [lastObject substringFromIndex:{objc_msgSend(v29, "length")}];

      self = obj;
      if (bu_assetIDFromURL)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_17:

      self = obj;
    }

    v50 = BooksSiriLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10078CBAC();
    }

    bu_assetIDFromURL = 0;
    goto LABEL_47;
  }

  activityType4 = [activityCopy activityType];
  v31 = [activityType4 isEqualToString:@"INPlayMediaIntent"];

  if (v31)
  {
    objc_opt_class();
    interaction = [activityCopy interaction];
    intent = [interaction intent];
    userInfo2 = BUDynamicCast();

    mediaItems = [userInfo2 mediaItems];
    lastObject = [mediaItems lastObject];

    identifier = [lastObject identifier];
    v36 = [identifier length];

    if (v36)
    {
      identifier2 = [lastObject identifier];
      v38 = [NSURL URLWithString:identifier2];

      bu_assetIDFromURL = [v38 bu_assetIDFromURL];
    }

    else
    {
      v38 = BCSceneLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10078CB6C();
      }

      bu_assetIDFromURL = 0;
    }

LABEL_47:
    goto LABEL_48;
  }

  if ([activityCopy isClassKitDeepLink])
  {
    v40 = BCSceneLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "activityManager handling ClassKit Activity", buf, 2u);
    }

    userInfo2 = [activityCopy userInfo];
    if (userInfo2)
    {
      [activityCopy contextIdentifierPath];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v41 = v89 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v86 objects:v95 count:16];
      v73 = controllerCopy;
      v74 = userInfo2;
      if (v42)
      {
        v43 = v42;
        v44 = v41;
        obja = self;
        v45 = *v87;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v87 != v45)
            {
              objc_enumerationMutation(v44);
            }

            v47 = [*(*(&v86 + 1) + 8 * i) componentsSeparatedByString:@":"];
            firstObject = [v47 firstObject];
            if ([firstObject isEqualToString:@"bookAssetID"])
            {
              v49 = [v47 count];

              if (v49 > 1)
              {
                bu_assetIDFromURL = [v47 objectAtIndex:1];

                goto LABEL_65;
              }
            }

            else
            {
            }
          }

          v43 = [v44 countByEnumeratingWithState:&v86 objects:v95 count:16];
        }

        while (v43);
        bu_assetIDFromURL = 0;
LABEL_65:
        userInfo2 = v74;
        self = obja;
        v41 = v44;
        controllerCopy = v73;
      }

      else
      {
        bu_assetIDFromURL = 0;
      }

      if ([bu_assetIDFromURL length])
      {
        selfCopy = self;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        objb = v41;
        v64 = [objb countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (v64)
        {
          v65 = v64;
          v72 = v41;
          v66 = *v83;
          while (2)
          {
            for (j = 0; j != v65; j = j + 1)
            {
              if (*v83 != v66)
              {
                objc_enumerationMutation(objb);
              }

              v68 = [*(*(&v82 + 1) + 8 * j) componentsSeparatedByString:@":"];
              firstObject2 = [v68 firstObject];
              if ([firstObject2 isEqualToString:bu_assetIDFromURL])
              {
                v70 = [v68 count];

                if (v70 >= 2)
                {
                  v71 = [v68 objectAtIndex:1];
                  if ([v71 length])
                  {
                    v39 = [[BKAnchorPathLocation alloc] initWithPath:v71];
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v41 = v72;

                  self = selfCopy;
                  controllerCopy = v73;
                  userInfo2 = v74;
                  goto LABEL_88;
                }
              }

              else
              {
              }
            }

            v65 = [objb countByEnumeratingWithState:&v82 objects:v94 count:16];
            if (v65)
            {
              continue;
            }

            break;
          }

          v39 = 0;
          self = selfCopy;
          controllerCopy = v73;
          userInfo2 = v74;
          v41 = v72;
        }

        else
        {
          v39 = 0;
          userInfo2 = v74;
        }
      }

      else
      {
        objb = BCSceneLog();
        if (os_log_type_enabled(objb, OS_LOG_TYPE_ERROR))
        {
          sub_10078CAEC();
        }

        v39 = 0;
      }

LABEL_88:
    }

    else
    {
      v41 = BCSceneLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10078CB2C();
      }

      v39 = 0;
      bu_assetIDFromURL = 0;
    }

    goto LABEL_49;
  }

  v39 = 0;
  bu_assetIDFromURL = 0;
LABEL_50:
  if ([bu_assetIDFromURL length])
  {
    v51 = BCSceneLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v99 = bu_assetIDFromURL;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Handling incoming assetID to continue user activity: %@", buf, 0xCu);
    }

    v52 = +[BKAppDelegate delegate];
    appLaunchCoordinator = [v52 appLaunchCoordinator];

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1000A94E8;
    v78[3] = &unk_100A05F98;
    v79 = bu_assetIDFromURL;
    selfCopy2 = self;
    v81 = v39;
    v54 = v39;
    webpageURL = bu_assetIDFromURL;
    [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:65 blockID:@"Handle incoming asset continueActivity" performBlock:v78];

    v56 = v79;
  }

  else
  {
    [(BKUserActivityManager *)self setHoldAtLaunchScreenAssertion:0];

    activityType5 = [activityCopy activityType];
    v58 = [activityType5 isEqualToString:NSUserActivityTypeBrowsingWeb];

    if (!v58)
    {
      v61 = 0;
      goto LABEL_60;
    }

    webpageURL = [activityCopy webpageURL];
    appLaunchCoordinator = objc_opt_new();
    _sourceApplication = [activityCopy _sourceApplication];

    if (_sourceApplication)
    {
      _sourceApplication2 = [activityCopy _sourceApplication];
      [appLaunchCoordinator setObject:_sourceApplication2 forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    }

    v54 = +[BKAppDelegate delegate];
    v56 = [appLaunchCoordinator copy];
    [v54 applicationOpenURL:webpageURL options:v56 sceneController:0];
  }

LABEL_59:
  v61 = 1;
LABEL_60:

  return v61;
}

- (void)_continueOpenBookActivity:(id)activity sceneController:(id)controller location:(id)location
{
  locationCopy = location;
  controllerCopy = controller;
  activityCopy = activity;
  v11 = +[BKAppDelegate delegate];
  appLaunchCoordinator = [v11 appLaunchCoordinator];

  appLaunchCoordinatorHasAppLaunched = [appLaunchCoordinator appLaunchCoordinatorHasAppLaunched];
  v24[0] = @"BKBookPresentingUseLargeCoverIfNeeded";
  v24[1] = AEAudiobookOptionsShouldNotAutoplayKey;
  v25[0] = &__kCFBooleanTrue;
  v25[1] = &__kCFBooleanFalse;
  v24[2] = @"BKBookPresentingFromUserActivity";
  v25[2] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  v15 = [v14 mutableCopy];

  sceneManager = [(BKUserActivityManager *)self sceneManager];
  bookPresenter = [sceneManager bookPresenter];

  newShowAssetTransaction = [controllerCopy newShowAssetTransaction];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A9B10;
  v20[3] = &unk_100A05FC0;
  v21 = appLaunchCoordinator;
  selfCopy = self;
  v23 = appLaunchCoordinatorHasAppLaunched;
  v19 = appLaunchCoordinator;
  [bookPresenter showAssetWithTransaction:newShowAssetTransaction assetID:activityCopy location:locationCopy options:v15 completion:v20];
}

- (void)setCurrentActivity:(id)activity
{
  activityCopy = activity;
  [(NSUserActivity *)self->_currentActivity resignCurrent];
  currentActivity = self->_currentActivity;
  self->_currentActivity = activityCopy;
  v6 = activityCopy;

  [(NSUserActivity *)self->_currentActivity becomeCurrent];
}

@end