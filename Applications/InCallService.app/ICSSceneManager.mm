@interface ICSSceneManager
- (BOOL)hasActiveOrPendingFullScreenCallScene;
- (BOOL)hasPendingCompletionForSceneType:(unint64_t)a3 presentationMode:(int64_t)a4;
- (BOOL)hasPendingOrExistingSceneOfType:(unint64_t)a3;
- (BOOL)hasPendingSceneOfType:(unint64_t)a3;
- (ICSSceneManager)init;
- (id)genericSceneOfType:(unint64_t)a3;
- (id)sceneOfType:(unint64_t)a3;
- (unint64_t)sceneTypeForConfigurationIdentifier:(id)a3;
- (void)didDisconnectSceneOfType:(unint64_t)a3 withIdentifier:(id)a4;
- (void)didDismissSceneOfType:(unint64_t)a3;
- (void)didInvalidatePendingSceneOfType:(unint64_t)a3 withIdentifier:(id)a4;
- (void)didRequestSceneOfType:(unint64_t)a3 withIdentifier:(id)a4;
- (void)didUpdatePresentationMode:(int64_t)a3 forScene:(id)a4;
- (void)registerGenericScene:(id)a3 ofType:(unint64_t)a4;
- (void)registerScene:(id)a3 ofType:(unint64_t)a4;
- (void)waitForPresentationMode:(int64_t)a3 forSceneOfType:(unint64_t)a4 completion:(id)a5;
- (void)waitForRegistrationOfGenericSceneWithType:(unint64_t)a3 completion:(id)a4;
- (void)waitForRegistrationOfSceneWithType:(unint64_t)a3 completion:(id)a4;
@end

@implementation ICSSceneManager

- (ICSSceneManager)init
{
  v17.receiver = self;
  v17.super_class = ICSSceneManager;
  v2 = [(ICSSceneManager *)&v17 init];
  if (v2)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    sceneMapping = v2->_sceneMapping;
    v2->_sceneMapping = v3;

    v5 = [NSMutableDictionary dictionaryWithCapacity:2];
    configurationIdentifierToSceneTypeMapping = v2->_configurationIdentifierToSceneTypeMapping;
    v2->_configurationIdentifierToSceneTypeMapping = v5;

    v7 = +[NSMutableSet set];
    pendingSceneTypes = v2->_pendingSceneTypes;
    v2->_pendingSceneTypes = v7;

    v9 = [NSMutableDictionary dictionaryWithCapacity:2];
    sceneTypeToRegisterBlockMapping = v2->_sceneTypeToRegisterBlockMapping;
    v2->_sceneTypeToRegisterBlockMapping = v9;

    v11 = [NSMutableDictionary dictionaryWithCapacity:2];
    sceneTypeAndPresentationModeToBlockMapping = v2->_sceneTypeAndPresentationModeToBlockMapping;
    v2->_sceneTypeAndPresentationModeToBlockMapping = v11;

    v13 = +[NSMutableSet set];
    sceneTypesPresentedFullScreen = v2->_sceneTypesPresentedFullScreen;
    v2->_sceneTypesPresentedFullScreen = v13;

    v15 = v2;
  }

  return v2;
}

- (BOOL)hasActiveOrPendingFullScreenCallScene
{
  v3 = [(ICSSceneManager *)self callScene];
  if ([v3 presentationMode] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICSSceneManager *)self callScene];
    if ([v5 presentationMode] == 3 || -[ICSSceneManager hasPendingCompletionForSceneType:presentationMode:](self, "hasPendingCompletionForSceneType:presentationMode:", 0, 2))
    {
      v4 = 1;
    }

    else
    {
      v4 = [(ICSSceneManager *)self hasPendingCompletionForSceneType:0 presentationMode:3];
    }
  }

  return v4;
}

- (id)sceneOfType:(unint64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (![(ICSSceneManager *)self usesSBSUIInCallWindowSceneForType:a3])
  {
    v5 = sub_100030C10(a3);
    v6 = [NSString stringWithFormat:@"Attempted to get scene of class SBSUIInCallWindowScene for invalid scene type: %@", v5];
    NSLog(@"** TUAssertion failure: %@", v6);

    _TUAssertShouldCrashApplication();
  }

  return [(ICSSceneManager *)self genericSceneOfType:a3];
}

- (id)genericSceneOfType:(unint64_t)a3
{
  sceneMapping = self->_sceneMapping;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSMapTable *)sceneMapping objectForKey:v4];

  return v5;
}

- (unint64_t)sceneTypeForConfigurationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_configurationIdentifierToSceneTypeMapping objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1002540F8(v4, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (void)registerScene:(id)a3 ofType:(unint64_t)a4
{
  v8 = a3;
  if (![(ICSSceneManager *)self usesSBSUIInCallWindowSceneForType:a4])
  {
    v6 = sub_100030C10(a4);
    v7 = [NSString stringWithFormat:@"Attempted to register scene of class SBSUIInCallWindowScene for invalid scene type: %@", v6];
    NSLog(@"** TUAssertion failure: %@", v7);

    _TUAssertShouldCrashApplication();
  }

  [(ICSSceneManager *)self registerGenericScene:v8 ofType:a4];
}

- (void)registerGenericScene:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pendingSceneTypes = self->_pendingSceneTypes;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  [(NSMutableSet *)pendingSceneTypes removeObject:v8];

  v9 = [(ICSSceneManager *)self genericSceneOfType:a4];
  if (v9)
  {
    v10 = sub_100009960();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = sub_100030C10(a4);
      v20 = 138412802;
      v21 = v9;
      v22 = 2114;
      v23 = v12;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Warning]: Existing scene '%@' already exists for type '%{public}@'. Ignoring new scene '%@'", &v20, 0x20u);
    }
  }

  else
  {
    sceneMapping = self->_sceneMapping;
    v14 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMapTable *)sceneMapping setObject:v6 forKey:v14];

    sceneTypeToRegisterBlockMapping = self->_sceneTypeToRegisterBlockMapping;
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    v17 = [(NSMutableDictionary *)sceneTypeToRegisterBlockMapping objectForKeyedSubscript:v16];

    if (v17)
    {
      (v17)[2](v17, v6);
    }

    v18 = self->_sceneTypeToRegisterBlockMapping;
    v19 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v18 setObject:0 forKeyedSubscript:v19];
  }
}

- (void)didUpdatePresentationMode:(int64_t)a3 forScene:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SBSInCallPresentationModeDescription();
    v23 = 138543362;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICSSceneManager did update presentationMode to %{public}@", &v23, 0xCu);
  }

  v9 = [v6 ics_sceneType];
  v10 = [(ICSSceneManager *)self sceneOfType:v9];
  if (v10)
  {
    sceneTypeAndPresentationModeToBlockMapping = self->_sceneTypeAndPresentationModeToBlockMapping;
    v12 = [NSNumber numberWithUnsignedInteger:v9];
    v13 = [(NSMutableDictionary *)sceneTypeAndPresentationModeToBlockMapping objectForKeyedSubscript:v12];
    v14 = [NSNumber numberWithInteger:a3];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      (v15)[2](v15, v6);
    }

    v16 = self->_sceneTypeAndPresentationModeToBlockMapping;
    v17 = [NSNumber numberWithUnsignedInteger:v9];
    v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
    v19 = [NSNumber numberWithInteger:a3];
    [v18 setObject:0 forKeyedSubscript:v19];

    if (a3 == 2)
    {
      sceneTypesPresentedFullScreen = self->_sceneTypesPresentedFullScreen;
      v21 = [NSNumber numberWithUnsignedInteger:v9];
      [(NSMutableSet *)sceneTypesPresentedFullScreen addObject:v21];
    }
  }

  else
  {
    v22 = sub_100009960();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100254170(v22, v9, v6);
    }
  }
}

- (void)didRequestSceneOfType:(unint64_t)a3 withIdentifier:(id)a4
{
  v9 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pendingSceneTypes = self->_pendingSceneTypes;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableSet *)pendingSceneTypes addObject:v7];

  if (v9)
  {
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)self->_configurationIdentifierToSceneTypeMapping setObject:v8 forKeyedSubscript:v9];
  }
}

- (void)didInvalidatePendingSceneOfType:(unint64_t)a3 withIdentifier:(id)a4
{
  v9 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pendingSceneTypes = self->_pendingSceneTypes;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableSet *)pendingSceneTypes removeObject:v7];

  v8 = v9;
  if (v9)
  {
    [(NSMutableDictionary *)self->_configurationIdentifierToSceneTypeMapping removeObjectForKey:v9];
    v8 = v9;
  }
}

- (BOOL)hasPendingOrExistingSceneOfType:(unint64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pendingSceneTypes = self->_pendingSceneTypes;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  if (([(NSMutableSet *)pendingSceneTypes containsObject:v6]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ICSSceneManager *)self sceneOfType:a3];
    v7 = v8 != 0;
  }

  return v7;
}

- (BOOL)hasPendingSceneOfType:(unint64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pendingSceneTypes = self->_pendingSceneTypes;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  LOBYTE(pendingSceneTypes) = [(NSMutableSet *)pendingSceneTypes containsObject:v6];

  return pendingSceneTypes;
}

- (BOOL)hasPendingCompletionForSceneType:(unint64_t)a3 presentationMode:(int64_t)a4
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  sceneTypeAndPresentationModeToBlockMapping = self->_sceneTypeAndPresentationModeToBlockMapping;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)sceneTypeAndPresentationModeToBlockMapping objectForKeyedSubscript:v8];
  v10 = [NSNumber numberWithInteger:a4];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = v11 != 0;

  return v12;
}

- (void)didDismissSceneOfType:(unint64_t)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  sceneMapping = self->_sceneMapping;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMapTable *)sceneMapping removeObjectForKey:v6];

  pendingSceneTypes = self->_pendingSceneTypes;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableSet *)pendingSceneTypes removeObject:v8];

  sceneTypesPresentedFullScreen = self->_sceneTypesPresentedFullScreen;
  v10 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableSet *)sceneTypesPresentedFullScreen removeObject:v10];
}

- (void)didDisconnectSceneOfType:(unint64_t)a3 withIdentifier:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(NSMutableDictionary *)self->_configurationIdentifierToSceneTypeMapping removeObjectForKey:v5];
}

- (void)waitForRegistrationOfSceneWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (![(ICSSceneManager *)self usesSBSUIInCallWindowSceneForType:a3])
  {
    v7 = sub_100030C10(a3);
    v8 = [NSString stringWithFormat:@"Attempted to wait for registration of SBSUIInCallWindowScene scene for invalid scene type: %@", v7];
    NSLog(@"** TUAssertion failure: %@", v8);

    _TUAssertShouldCrashApplication();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045920;
  v10[3] = &unk_100356A70;
  v11 = v6;
  v9 = v6;
  [(ICSSceneManager *)self waitForRegistrationOfGenericSceneWithType:a3 completion:v10];
}

- (void)waitForRegistrationOfGenericSceneWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = [(ICSSceneManager *)self genericSceneOfType:a3];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    sceneTypeToRegisterBlockMapping = self->_sceneTypeToRegisterBlockMapping;
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)sceneTypeToRegisterBlockMapping objectForKeyedSubscript:v9];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100045AA8;
    v19 = &unk_100356A98;
    v20 = v10;
    v21 = v6;
    v11 = v10;
    v12 = objc_retainBlock(&v16);
    v13 = objc_retainBlock(v12);
    v14 = self->_sceneTypeToRegisterBlockMapping;
    v15 = [NSNumber numberWithUnsignedInteger:a3, v16, v17, v18, v19];
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
  }
}

- (void)waitForPresentationMode:(int64_t)a3 forSceneOfType:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (![(ICSSceneManager *)self usesSBSUIInCallWindowSceneForType:a4])
  {
    v9 = sub_100030C10(a4);
    v10 = [NSString stringWithFormat:@"Attempted to wait for presentation mode of SBSUIInCallWindowScene scene for invalid scene type: %@", v9];
    NSLog(@"** TUAssertion failure: %@", v10);

    _TUAssertShouldCrashApplication();
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v11 = [(ICSSceneManager *)self sceneOfType:a4];
  v12 = v11;
  if (v11 && [v11 presentationMode] == a3)
  {
    v8[2](v8, v12);
  }

  else
  {
    sceneTypeAndPresentationModeToBlockMapping = self->_sceneTypeAndPresentationModeToBlockMapping;
    v14 = [NSNumber numberWithUnsignedInteger:a4];
    v15 = [(NSMutableDictionary *)sceneTypeAndPresentationModeToBlockMapping objectForKeyedSubscript:v14];

    if (!v15)
    {
      v15 = +[NSMutableDictionary dictionary];
      v16 = self->_sceneTypeAndPresentationModeToBlockMapping;
      v17 = [NSNumber numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
    }

    v18 = [NSNumber numberWithInteger:a3];
    v19 = [v15 objectForKeyedSubscript:v18];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100045D80;
    v24[3] = &unk_100356AC0;
    v25 = v19;
    v26 = v8;
    v20 = v19;
    v21 = objc_retainBlock(v24);
    v22 = objc_retainBlock(v21);
    v23 = [NSNumber numberWithInteger:a3];
    [v15 setObject:v22 forKeyedSubscript:v23];
  }
}

@end