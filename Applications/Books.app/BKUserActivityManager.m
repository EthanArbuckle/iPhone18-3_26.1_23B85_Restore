@interface BKUserActivityManager
+ (id)sharedInstance;
- (BOOL)continueActivity:(id)a3 sceneController:(id)a4;
- (BOOL)willContinueActivityWithType:(id)a3 sceneController:(id)a4;
- (void)_continueOpenBookActivity:(id)a3 sceneController:(id)a4 location:(id)a5;
- (void)setCurrentActivity:(id)a3;
- (void)startReadingAsset:(id)a3;
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

- (void)startReadingAsset:(id)a3
{
  v4 = a3;
  v5 = self->_generation + 1;
  self->_generation = v5;
  if ([v4 isValid] && (objc_msgSend(v4, "assetID"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 assetID];
    v8 = +[BKLibraryManager defaultManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A7ED0;
    v10[3] = &unk_100A05F48;
    v11 = v7;
    v12 = self;
    v13 = v5;
    v9 = v7;
    [v8 performBackgroundReadOnlyBlock:v10];
  }

  else
  {
    [(BKUserActivityManager *)self setCurrentActivity:0];
  }
}

- (BOOL)willContinueActivityWithType:(id)a3 sceneController:(id)a4
{
  v5 = a3;
  v6 = [a4 willContinueActivityWithType:v5 sceneController:a4];
  v11[0] = @"com.apple.iBooks.assetReading";
  v11[1] = CSSearchableItemActionType;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = v7;
  v9 = (v6 & 1) != 0 || v5 && [v7 containsObject:v5];

  return v9;
}

- (BOOL)continueActivity:(id)a3 sceneController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 activityType];
    v10 = [v6 userInfo];
    v11 = [v7 scene];
    v12 = [v11 session];
    v13 = [v12 persistentIdentifier];
    *buf = 138543874;
    v99 = v9;
    v100 = 2112;
    v101 = v10;
    v102 = 2114;
    v103 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityManager continueActivity: activityType=%{public}@, userInfo=%@, withSceneID=%{public}@", buf, 0x20u);
  }

  if (v7 && ([v7 continueActivity:v6 sceneController:v7] & 1) != 0)
  {
    goto LABEL_59;
  }

  v14 = [v6 activityType];
  v15 = [v14 isEqualToString:@"com.apple.iBooks.assetReading"];

  if (v15)
  {
    v16 = [v6 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"assetID"];
LABEL_48:
    v39 = 0;
    goto LABEL_49;
  }

  v18 = [v6 activityType];
  v19 = [v18 isEqualToString:CSSearchableItemActionType];

  if (v19)
  {
    objc_opt_class();
    v20 = [v6 userInfo];
    v21 = [v20 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
    v22 = BUDynamicCast();

    if (![v22 hasPrefix:@"NSUA:"])
    {
      v16 = v22;
      v39 = 0;
      v17 = v16;
LABEL_49:

      goto LABEL_50;
    }

    obj = self;
    v16 = v22;
    v23 = [v22 substringFromIndex:{objc_msgSend(@"NSUA:", "length")}];
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
        if ([v23 hasPrefix:v29])
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

      v17 = [v23 substringFromIndex:{objc_msgSend(v29, "length")}];

      self = obj;
      if (v17)
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

    v17 = 0;
    goto LABEL_47;
  }

  v30 = [v6 activityType];
  v31 = [v30 isEqualToString:@"INPlayMediaIntent"];

  if (v31)
  {
    objc_opt_class();
    v32 = [v6 interaction];
    v33 = [v32 intent];
    v16 = BUDynamicCast();

    v34 = [v16 mediaItems];
    v23 = [v34 lastObject];

    v35 = [v23 identifier];
    v36 = [v35 length];

    if (v36)
    {
      v37 = [v23 identifier];
      v38 = [NSURL URLWithString:v37];

      v17 = [v38 bu_assetIDFromURL];
    }

    else
    {
      v38 = BCSceneLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10078CB6C();
      }

      v17 = 0;
    }

LABEL_47:
    goto LABEL_48;
  }

  if ([v6 isClassKitDeepLink])
  {
    v40 = BCSceneLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "activityManager handling ClassKit Activity", buf, 2u);
    }

    v16 = [v6 userInfo];
    if (v16)
    {
      [v6 contextIdentifierPath];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v41 = v89 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v86 objects:v95 count:16];
      v73 = v7;
      v74 = v16;
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
            v48 = [v47 firstObject];
            if ([v48 isEqualToString:@"bookAssetID"])
            {
              v49 = [v47 count];

              if (v49 > 1)
              {
                v17 = [v47 objectAtIndex:1];

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
        v17 = 0;
LABEL_65:
        v16 = v74;
        self = obja;
        v41 = v44;
        v7 = v73;
      }

      else
      {
        v17 = 0;
      }

      if ([v17 length])
      {
        v63 = self;
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
              v69 = [v68 firstObject];
              if ([v69 isEqualToString:v17])
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

                  self = v63;
                  v7 = v73;
                  v16 = v74;
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
          self = v63;
          v7 = v73;
          v16 = v74;
          v41 = v72;
        }

        else
        {
          v39 = 0;
          v16 = v74;
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
      v17 = 0;
    }

    goto LABEL_49;
  }

  v39 = 0;
  v17 = 0;
LABEL_50:
  if ([v17 length])
  {
    v51 = BCSceneLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v99 = v17;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Handling incoming assetID to continue user activity: %@", buf, 0xCu);
    }

    v52 = +[BKAppDelegate delegate];
    v53 = [v52 appLaunchCoordinator];

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1000A94E8;
    v78[3] = &unk_100A05F98;
    v79 = v17;
    v80 = self;
    v81 = v39;
    v54 = v39;
    v55 = v17;
    [v53 appLaunchCoordinatorOnConditionMask:65 blockID:@"Handle incoming asset continueActivity" performBlock:v78];

    v56 = v79;
  }

  else
  {
    [(BKUserActivityManager *)self setHoldAtLaunchScreenAssertion:0];

    v57 = [v6 activityType];
    v58 = [v57 isEqualToString:NSUserActivityTypeBrowsingWeb];

    if (!v58)
    {
      v61 = 0;
      goto LABEL_60;
    }

    v55 = [v6 webpageURL];
    v53 = objc_opt_new();
    v59 = [v6 _sourceApplication];

    if (v59)
    {
      v60 = [v6 _sourceApplication];
      [v53 setObject:v60 forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    }

    v54 = +[BKAppDelegate delegate];
    v56 = [v53 copy];
    [v54 applicationOpenURL:v55 options:v56 sceneController:0];
  }

LABEL_59:
  v61 = 1;
LABEL_60:

  return v61;
}

- (void)_continueOpenBookActivity:(id)a3 sceneController:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[BKAppDelegate delegate];
  v12 = [v11 appLaunchCoordinator];

  v13 = [v12 appLaunchCoordinatorHasAppLaunched];
  v24[0] = @"BKBookPresentingUseLargeCoverIfNeeded";
  v24[1] = AEAudiobookOptionsShouldNotAutoplayKey;
  v25[0] = &__kCFBooleanTrue;
  v25[1] = &__kCFBooleanFalse;
  v24[2] = @"BKBookPresentingFromUserActivity";
  v25[2] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  v15 = [v14 mutableCopy];

  v16 = [(BKUserActivityManager *)self sceneManager];
  v17 = [v16 bookPresenter];

  v18 = [v9 newShowAssetTransaction];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A9B10;
  v20[3] = &unk_100A05FC0;
  v21 = v12;
  v22 = self;
  v23 = v13;
  v19 = v12;
  [v17 showAssetWithTransaction:v18 assetID:v10 location:v8 options:v15 completion:v20];
}

- (void)setCurrentActivity:(id)a3
{
  v4 = a3;
  [(NSUserActivity *)self->_currentActivity resignCurrent];
  currentActivity = self->_currentActivity;
  self->_currentActivity = v4;
  v6 = v4;

  [(NSUserActivity *)self->_currentActivity becomeCurrent];
}

@end