@interface BKSceneUtilities
+ (BOOL)connectionOptions:(id)options hasActivityType:(id)type;
+ (BOOL)hasMultiWindowEnabled;
+ (id)URLContextOpenURLOptions:(id)options;
+ (id)getUserInfoForConnectionOptions:(id)options withActivityType:(id)type;
+ (id)sharedInstance;
- (id)_init;
- (void)destroySceneWithSceneSession:(id)session withAnimationType:(int64_t)type;
- (void)requestWindowForSceneSession:(id)session userActivity:(id)activity errorHandler:(id)handler;
@end

@implementation BKSceneUtilities

+ (BOOL)hasMultiWindowEnabled
{
  v2 = +[UIApplication sharedApplication];
  supportsMultipleScenes = [v2 supportsMultipleScenes];

  return supportsMultipleScenes;
}

+ (BOOL)connectionOptions:(id)options hasActivityType:(id)type
{
  typeCopy = type;
  [options userActivities];
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

        activityType = [*(*(&v13 + 1) + 8 * i) activityType];
        v11 = [activityType isEqualToString:typeCopy];

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

+ (id)getUserInfoForConnectionOptions:(id)options withActivityType:(id)type
{
  typeCopy = type;
  [options userActivities];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  userInfo = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (userInfo)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != userInfo; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        activityType = [v10 activityType];
        v12 = [activityType isEqualToString:typeCopy];

        if (v12)
        {
          userInfo = [v10 userInfo];
          goto LABEL_11;
        }
      }

      userInfo = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (userInfo)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return userInfo;
}

+ (id)URLContextOpenURLOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(NSMutableDictionary);
  options = [optionsCopy options];

  sourceApplication = [options sourceApplication];

  if (sourceApplication)
  {
    sourceApplication2 = [options sourceApplication];
    [v4 setObject:sourceApplication2 forKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  }

  annotation = [options annotation];

  if (annotation)
  {
    annotation2 = [options annotation];
    [v4 setObject:annotation2 forKeyedSubscript:UIApplicationOpenURLOptionsAnnotationKey];
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

- (void)requestWindowForSceneSession:(id)session userActivity:(id)activity errorHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  activityCopy = activity;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Requesting window for session: %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(UISceneActivationRequestOptions);
  scene = [sessionCopy scene];
  [v11 setRequestingScene:scene];

  v13 = +[UIApplication sharedApplication];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AC4E8;
  v15[3] = &unk_100A060C0;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v13 requestSceneSessionActivation:sessionCopy userActivity:activityCopy options:v11 errorHandler:v15];
}

- (void)destroySceneWithSceneSession:(id)session withAnimationType:(int64_t)type
{
  sessionCopy = session;
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    v11 = 138412290;
    v12 = persistentIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Running destroySceneWithSceneSession identifier=%@", &v11, 0xCu);
  }

  hasMultiWindowEnabled = [objc_opt_class() hasMultiWindowEnabled];
  if (sessionCopy && hasMultiWindowEnabled)
  {
    v9 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
    [v9 setWindowDismissalAnimation:type];
    v10 = +[UIApplication sharedApplication];
    [v10 requestSceneSessionDestruction:sessionCopy options:v9 errorHandler:&stru_100A060E0];
  }
}

@end