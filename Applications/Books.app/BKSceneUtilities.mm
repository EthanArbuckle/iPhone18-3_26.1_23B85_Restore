@interface BKSceneUtilities
+ (BOOL)connectionOptions:(id)a3 hasActivityType:(id)a4;
+ (BOOL)hasMultiWindowEnabled;
+ (id)URLContextOpenURLOptions:(id)a3;
+ (id)getUserInfoForConnectionOptions:(id)a3 withActivityType:(id)a4;
+ (id)sharedInstance;
- (id)_init;
- (void)destroySceneWithSceneSession:(id)a3 withAnimationType:(int64_t)a4;
- (void)requestWindowForSceneSession:(id)a3 userActivity:(id)a4 errorHandler:(id)a5;
@end

@implementation BKSceneUtilities

+ (BOOL)hasMultiWindowEnabled
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 supportsMultipleScenes];

  return v3;
}

+ (BOOL)connectionOptions:(id)a3 hasActivityType:(id)a4
{
  v5 = a4;
  [a3 userActivities];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) activityType];
        v11 = [v10 isEqualToString:v5];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)getUserInfoForConnectionOptions:(id)a3 withActivityType:(id)a4
{
  v5 = a4;
  [a3 userActivities];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 activityType];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = [v10 userInfo];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)URLContextOpenURLOptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 options];

  v6 = [v5 sourceApplication];

  if (v6)
  {
    v7 = [v5 sourceApplication];
    [v4 setObject:v7 forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  }

  v8 = [v5 annotation];

  if (v8)
  {
    v9 = [v5 annotation];
    [v4 setObject:v9 forKeyedSubscript:UIApplicationOpenURLOptionsAnnotationKey];
  }

  v10 = [v4 copy];

  return v10;
}

+ (id)sharedInstance
{
  if (qword_100AF74F0 != -1)
  {
    sub_10078CF98();
  }

  v3 = qword_100AF74E8;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BKSceneUtilities;
  return [(BKSceneUtilities *)&v3 init];
}

- (void)requestWindowForSceneSession:(id)a3 userActivity:(id)a4 errorHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Requesting window for session: %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(UISceneActivationRequestOptions);
  v12 = [v7 scene];
  [v11 setRequestingScene:v12];

  v13 = +[UIApplication sharedApplication];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AC4E8;
  v15[3] = &unk_100A060C0;
  v16 = v8;
  v14 = v8;
  [v13 requestSceneSessionActivation:v7 userActivity:v9 options:v11 errorHandler:v15];
}

- (void)destroySceneWithSceneSession:(id)a3 withAnimationType:(int64_t)a4
{
  v5 = a3;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 persistentIdentifier];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Running destroySceneWithSceneSession identifier=%@", &v11, 0xCu);
  }

  v8 = [objc_opt_class() hasMultiWindowEnabled];
  if (v5 && v8)
  {
    v9 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
    [v9 setWindowDismissalAnimation:a4];
    v10 = +[UIApplication sharedApplication];
    [v10 requestSceneSessionDestruction:v5 options:v9 errorHandler:&stru_100A060E0];
  }
}

@end