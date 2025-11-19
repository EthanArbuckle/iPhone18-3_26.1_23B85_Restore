@interface UIApplication
+ (BOOL)_maps_isAnyApplicationOrCarPlayApplicationSceneConnected;
+ (BOOL)_maps_isAnyApplicationOrCarPlayApplicationSceneForeground;
+ (BOOL)_maps_isAnyCarPlayApplicationSceneForeground;
+ (BOOL)_maps_isAnySceneConnectedForRole:(id)a3;
+ (BOOL)_maps_isAnySceneForeground;
+ (BOOL)_maps_isAnySceneForegroundForRole:(id)a3;
+ (BOOL)_maps_isCarPlayApplicationScene:(id)a3;
+ (BOOL)_maps_isCarPlayWidgetScene:(id)a3;
+ (BOOL)_maps_shouldIgnoreActivationStateForScene:(id)a3;
+ (id)_maps_applicationScenes;
+ (id)_maps_carPlayApplicationSceneDelegate;
+ (id)_maps_carPlayScenes;
+ (id)_maps_keyMapsSceneDelegate;
+ (id)_maps_keyMapsWindow;
+ (id)_maps_keyMapsWindowScene;
+ (id)_maps_lockScreenSceneDelegate;
+ (id)_maps_sceneDelegateForIdentifierString:(id)a3;
+ (id)_maps_sceneForIdentifierString:(id)a3;
+ (id)sharedMapsDelegate;
+ (unint64_t)_maps_numberOfApplicationScenes;
+ (void)_mapsCarPlay_connectApplicationSceneIfNeededForSession:(id)a3 completion:(id)a4;
+ (void)_maps_openApplicationSceneSuspendedWithCompletion:(id)a3;
+ (void)_maps_unlockApplicationWithCompletion:(id)a3;
- (BOOL)screenIsLocked;
- (void)__mapsEventRecorder_sendEvent:(id)a3;
- (void)_maps_openAppStoreForAdamId:(id)a3 completion:(id)a4;
- (void)_maps_openURL:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)callPhoneNumber:(id)a3 completion:(id)a4;
- (void)getCanCallPhoneNumber:(id)a3 completion:(id)a4;
@end

@implementation UIApplication

+ (id)sharedMapsDelegate
{
  v2 = [a1 sharedApplication];
  v3 = [v2 delegate];

  return v3;
}

+ (BOOL)_maps_isAnyApplicationOrCarPlayApplicationSceneForeground
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 activationState] <= 1)
        {
          v10 = [v9 session];
          v11 = [v10 role];
          v12 = [v11 isEqualToString:UIWindowSceneSessionRoleApplication];

          if (v12 & 1) != 0 || [v9 isCarScene] && (objc_msgSend(a1, "_maps_isCarPlayApplicationScene:", v9))
          {
            v13 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

+ (BOOL)_maps_isAnyCarPlayApplicationSceneForeground
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activationState] <= 1 && objc_msgSend(v9, "isCarScene") && (objc_msgSend(a1, "_maps_isCarPlayApplicationScene:", v9) & 1) != 0)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (id)_maps_keyMapsSceneDelegate
{
  v2 = +[UIApplication _maps_keyMapsWindowScene];
  v3 = [v2 delegate];

  return v3;
}

+ (id)_maps_keyMapsWindowScene
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 _isKeyWindowScene])
          {
            v11 = [v10 delegate];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v13 = v10;

              v6 = v13;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_maps_carPlayScenes
{
  v2 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isCarScene])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 delegate];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v2 addObject:v9];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v2;
}

+ (unint64_t)_maps_numberOfApplicationScenes
{
  v2 = [a1 _maps_applicationScenes];
  v3 = [v2 count];

  return v3;
}

+ (id)_maps_applicationScenes
{
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 session];
        v11 = [v10 role];
        v12 = [v11 isEqualToString:UIWindowSceneSessionRoleApplication];

        if (v12)
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v2;
}

+ (BOOL)_maps_isAnySceneForeground
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) activationState] < 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_maps_openAppStoreForAdamId:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 length])
  {
    v7 = [NSString stringWithFormat:@"%@%@", @"itms-appss://apps.apple.com/app/id", v9];
    v8 = [NSURL URLWithString:v7];
    [(UIApplication *)self _maps_openURL:v8 options:0 completionHandler:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_maps_openURL:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  if (a3)
  {
    v8 = a4;
    v9 = a3;
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v12 = 0;
    v11 = [v10 openSensitiveURL:v9 withOptions:v8 error:&v12];

    if (v7)
    {
      v7[2](v7, v11);
    }
  }
}

- (void)callPhoneNumber:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TUCallProviderManager);
  v8 = [TUDialRequest alloc];
  v9 = [v7 defaultProvider];
  v10 = [v8 initWithProvider:v9];

  v11 = [[TUHandle alloc] initWithType:2 value:v6];
  [v10 setHandle:v11];
  [v10 setShowUIPrompt:0];
  v12 = [[TUCallCenter alloc] initWithQueue:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100881754;
  v14[3] = &unk_1016610B8;
  v15 = v5;
  v13 = v5;
  [v12 launchAppForDialRequest:v10 completion:v14];
}

- (void)getCanCallPhoneNumber:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100881864;
    v9[3] = &unk_101661090;
    v10 = v5;
    v11 = v7;
    dispatch_async(v8, v9);
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (BOOL)screenIsLocked
{
  SBSSpringBoardServerPort();
  if (SBGetScreenLockStatus())
  {
    NSLog(@"Can't determine device lock state");
  }

  return 0;
}

- (void)__mapsEventRecorder_sendEvent:(id)a3
{
  v4 = a3;
  [(UIApplication *)self __mapsEventRecorder_sendEvent:v4];
  v5 = +[MapsEventRecorder defaultRecorder];
  [v5 recordEvent:v4];
}

+ (id)_maps_sceneDelegateForIdentifierString:(id)a3
{
  v3 = [a1 _maps_sceneForIdentifierString:a3];
  v4 = [v3 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 delegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_maps_sceneForIdentifierString:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 _sceneIdentifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (void)_maps_unlockApplicationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v13 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v14 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];

  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = @"com.apple.Maps";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will attempt to open Maps application with bundle identifier (%@) for prompt to unlock", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B310F0;
  v9[3] = &unk_10163C108;
  v10 = v3;
  v8 = v3;
  [v4 openApplication:@"com.apple.Maps" withOptions:v6 completion:v9];
}

+ (void)_maps_openApplicationSceneSuspendedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v10 = FBSOpenApplicationOptionKeyActivateSuspended;
  v11 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B31354;
  v8[3] = &unk_10163C108;
  v9 = v3;
  v7 = v3;
  [v4 openApplication:@"com.apple.Maps" withOptions:v6 completion:v8];
}

+ (void)_mapsCarPlay_connectApplicationSceneIfNeededForSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 role];
  if ([v7 isEqualToString:_UIWindowSceneSessionRoleCarPlay])
  {
    v8 = [UIApplication _maps_isAnySceneConnectedForRole:UIWindowSceneSessionRoleApplication];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100005610();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Connecting Maps Application scene before handling CarPlay URL or user activity", buf, 2u);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100B314B8;
      v10[3] = &unk_1016610B8;
      v11 = v6;
      [a1 _maps_openApplicationSceneSuspendedWithCompletion:v10];

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_9:
}

+ (id)_maps_carPlayApplicationSceneDelegate
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 _maps_carPlayScenes];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([a1 _maps_isCarPlayApplicationScene:v8])
        {
          v9 = [v8 delegate];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (BOOL)_maps_isAnyApplicationOrCarPlayApplicationSceneConnected
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 session];
        v11 = [v10 role];
        v12 = [v11 isEqualToString:UIWindowSceneSessionRoleApplication];

        if (v12 & 1) != 0 || [v9 isCarScene] && (objc_msgSend(a1, "_maps_isCarPlayApplicationScene:", v9))
        {
          v13 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

+ (BOOL)_maps_isCarPlayWidgetScene:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 delegate], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [v4 delegate];
    v8 = [v7 sceneType];
    v9 = (v8 < 7) & (0x7Du >> v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (BOOL)_maps_isCarPlayApplicationScene:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 delegate], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [v4 delegate];
    v8 = [v7 sceneType] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_maps_shouldIgnoreActivationStateForScene:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 session], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "role"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", BNWindowSceneSessionRoleBannerSource), v6, v5, (v7 & 1) == 0))
  {
    v10 = [v4 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v4 delegate];
      v8 = [v12 shouldIgnoreActivationStateForBanner];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_maps_isAnySceneForegroundForRole:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([a1 _maps_shouldIgnoreActivationStateForScene:v11] & 1) == 0)
        {
          v12 = [v11 session];
          v13 = [v12 role];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            if ([v11 activationState] < 2)
            {
              v15 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

+ (BOOL)_maps_isAnySceneConnectedForRole:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) session];
        v10 = [v9 role];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_maps_lockScreenSceneDelegate
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 delegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [v10 delegate];

            v6 = v13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_maps_keyMapsWindow
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = +[UIApplication _maps_keyMapsWindowScene];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isKeyWindow])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end