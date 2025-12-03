@interface SRAuthorizationPromptViewController
+ (void)initialize;
- (id)authorizationTableCompletedPromptSuccessfully:(id)result;
- (void)authorizationTable:(id)table foundIssueWithApp:(id)app;
- (void)authorizationTable:(id)table openURL:(id)l;
- (void)dealloc;
- (void)requestAuthorizationForBundle:(id)bundle services:(id)services;
- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services;
- (void)showAppsAndStudies;
- (void)showFirstRunOnboarding;
- (void)showResearchData;
- (void)showStudyAuthorizationForBundlePath:(id)path;
@end

@implementation SRAuthorizationPromptViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F30 = os_log_create("com.apple.SensorKit", "AuthorizationPromptViewController");
  }
}

- (void)dealloc
{
  [(SRAuthorizationPromptViewController *)self setError:0];
  [(SRAuthorizationPromptViewController *)self setRequestedServices:0];
  [(SRAuthorizationPromptViewController *)self setAuthorizationStore:0];
  [(SRAuthorizationPromptViewController *)self setAppBundle:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationPromptViewController;
  [(SRAuthorizationPromptViewController *)&v3 dealloc];
}

- (void)requestAuthorizationForBundle:(id)bundle services:(id)services
{
  if (![bundle length])
  {
    v31 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Empty bundle identifier", buf, 2u);
    }

    [(SRAuthorizationPromptViewController *)self setError:[SRError errorWithCode:8200]];
    selfCopy = self;
    goto LABEL_60;
  }

  bundleCopy = bundle;
  selfCopy2 = self;
  v7 = +[NSMutableSet set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = [services countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    v11 = SRSensorDeletionRecordsSuffix;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(services);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        if (([v13 hasSuffix:v11] & 1) == 0)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [SRSensorDescription sensorDescriptionForSensor:v13];
          if (v15)
          {
            [v7 addObject:{objc_msgSend(v15, "name")}];
          }

          else
          {
            v16 = qword_100015F30;
            if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v13;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Ignoring request to authorize for %{public}@ because sensor description could not be found", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      v9 = [services countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v9);
  }

  v17 = selfCopy2;
  if (!selfCopy2)
  {
    goto LABEL_56;
  }

  v18 = [-[SRAuthorizationPromptViewController extensionContext](selfCopy2 "extensionContext")];
  if ([(SRAuthorizationPromptViewController *)selfCopy2 migrationMode])
  {
    v19 = &off_100010578;
LABEL_18:
    v20 = [v18 valueForEntitlement:*v19];
    goto LABEL_19;
  }

  if ([v18 valueForEntitlement:@"com.apple.private.sensorkit.reader.wildcard.allow"])
  {
    goto LABEL_38;
  }

  v20 = [v18 valueForEntitlement:@"com.apple.sensorkit.reader.allow"];
  if (!v20)
  {
    v20 = [v18 valueForEntitlement:@"com.apple.developer.sensorkit.reader.allow"];
    if (!v20)
    {
      v19 = &off_100010560;
      goto LABEL_18;
    }
  }

LABEL_19:
  v21 = v20;
  v22 = [v7 count];
  if (v21 && !v22)
  {
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_56:
    v41 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Lacking entitlement to request authorization", buf, 2u);
    }

    v39 = 0;
    goto LABEL_59;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = [v7 countByEnumeratingWithState:&v49 objects:buf count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    while (2)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v7);
        }

        v27 = *(*(&v49 + 1) + 8 * j);
        v28 = objc_autoreleasePoolPush();
        v29 = [SRSensorDescription sensorDescriptionForSensor:v27];
        if (!v29)
        {
          v40 = qword_100015F30;
          if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
          {
            *v54 = 138543362;
            v55 = v27;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to find sensor description for %{public}@", v54, 0xCu);
          }

LABEL_55:
          objc_autoreleasePoolPop(v28);
          v17 = selfCopy2;
          goto LABEL_56;
        }

        v30 = v29;
        if (([v21 containsObject:v27] & 1) == 0 && (objc_msgSend(v21, "containsObject:", objc_msgSend(v30, "legacyName")) & 1) == 0 && !objc_msgSend(v21, "containsObject:", objc_msgSend(v30, "publicEntitlementValue")))
        {
          goto LABEL_55;
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [v7 countByEnumeratingWithState:&v49 objects:buf count:16];
      v17 = selfCopy2;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:
  [(SRAuthorizationPromptViewController *)v17 setRequestedServices:v7];
  [(SRAuthorizationPromptViewController *)v17 setAppBundle:[NSBundle sk_bundleWithIdentifier:bundleCopy]];
  appBundle = [(SRAuthorizationPromptViewController *)v17 appBundle];
  if (!appBundle)
  {
    v34 = [-[SRAuthorizationPromptViewController extensionContext](v17 "extensionContext")];
    if (v34)
    {
      [v34 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    appBundle = sub_1000010D0(NSBundle, buf);
  }

  [(SRAuthorizationPromptViewController *)v17 setAppBundle:appBundle];
  appBundle2 = [(SRAuthorizationPromptViewController *)v17 appBundle];
  v36 = qword_100015F30;
  v37 = os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_DEFAULT);
  if (!appBundle2)
  {
    if (v37)
    {
      *buf = 138543362;
      *&buf[4] = bundleCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Bundle not found for %{public}@, Exiting prompt", buf, 0xCu);
    }

    v39 = 8200;
LABEL_59:
    [(SRAuthorizationPromptViewController *)v17 setError:[SRError errorWithCode:v39]];
    selfCopy = v17;
LABEL_60:
    [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(selfCopy);
    return;
  }

  if (v37)
  {
    *buf = 138543618;
    *&buf[4] = services;
    *&buf[12] = 2114;
    *&buf[14] = bundleCopy;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Got prompt request %{public}@ for %{public}@", buf, 0x16u);
  }

  v38 = [[SRAuthorizationStore alloc] initWithSensors:services];
  [(SRAuthorizationPromptViewController *)v17 setAuthorizationStore:v38];

  [(SRAuthorizationStore *)[(SRAuthorizationPromptViewController *)v17 authorizationStore] listenForAuthorizationUpdates:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000437C;
  block[3] = &unk_100010458;
  block[4] = v17;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)authorizationTableCompletedPromptSuccessfully:(id)result
{
  if (result)
  {
    v1 = result;
    v2 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      error = [v1 error];
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Telling host application that the prompt is complete with error: %{public}@", &v5, 0xCu);
    }

    error2 = [v1 error];
    _remoteViewControllerProxy = [v1 _remoteViewControllerProxy];
    if (error2)
    {
      return [_remoteViewControllerProxy authorizationRequestFailedWithError:{objc_msgSend(v1, "error")}];
    }

    else
    {
      return [_remoteViewControllerProxy authorizationRequestCompleted];
    }
  }

  return result;
}

- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services
{
  [(SRAuthorizationPromptViewController *)self setMigrationMode:1];

  [(SRAuthorizationPromptViewController *)self requestAuthorizationForBundle:bundle services:services];
}

- (void)showAppsAndStudies
{
  v5 = 0;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v3 = v5;
  if (v5)
  {
    v4 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to open settings because %{public}@", buf, 0xCu);
    }
  }

  [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(self);
}

- (void)showStudyAuthorizationForBundlePath:(id)path
{
  v6 = 0;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace defaultWorkspace];
  v4 = v6;
  if (v6)
  {
    v5 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open settings because %{public}@", buf, 0xCu);
    }
  }

  [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(self);
}

- (void)showResearchData
{
  v5 = 0;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v3 = v5;
  if (v5)
  {
    v4 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to open settings because %{public}@", buf, 0xCu);
    }
  }

  [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(self);
}

- (void)showFirstRunOnboarding
{
  v3 = [-[SRAuthorizationPromptViewController extensionContext](self "extensionContext")];
  if (self)
  {
    v4 = [v3 valueForEntitlement:@"com.apple.private.sensorkit.firstRunOnboarding.allow"];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got prompt request for first run onboarding", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DCC;
    block[3] = &unk_100010458;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6 = qword_100015F30;
    if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Lacking entitlement to request first run onboarding", buf, 2u);
    }

    [(SRAuthorizationPromptViewController *)self setError:[SRError errorWithCode:0]];
    [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(self);
  }
}

- (void)authorizationTable:(id)table foundIssueWithApp:(id)app
{
  if (![(SRAuthorizationPromptViewController *)self error])
  {

    [(SRAuthorizationPromptViewController *)self setError:app];
  }
}

- (void)authorizationTable:(id)table openURL:(id)l
{
  extensionContext = [(SRAuthorizationPromptViewController *)self extensionContext];

  [extensionContext openURL:l completionHandler:&stru_1000104E8];
}

@end