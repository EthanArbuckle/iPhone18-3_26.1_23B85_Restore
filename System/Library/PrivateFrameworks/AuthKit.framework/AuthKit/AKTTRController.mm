@interface AKTTRController
+ (id)generateRadarRequestFor:(unint64_t)for;
+ (id)sharedController;
- (AKTTRController)init;
- (BOOL)shouldSuppressPushMessage:(id)message;
- (void)_performSilentTTRForRequest:(id)request completion:(id)completion;
- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion;
- (void)processPushMessage:(id)message;
- (void)requestSilentTTRWithTitle:(id)title message:(id)message componentName:(id)name componentVersion:(id)version componentID:(id)d keywords:(id)keywords completion:(id)completion;
- (void)requestSilentTTRWithTitle:(id)title message:(id)message keywords:(id)keywords completion:(id)completion;
- (void)requestTapToRadarWithTitle:(id)title message:(id)message componentName:(id)name componentVersion:(id)version componentID:(id)d keywords:(id)keywords;
- (void)requestTapToRadarWithTitle:(id)title message:(id)message keywords:(id)keywords;
@end

@implementation AKTTRController

+ (id)sharedController
{
  v5 = &unk_100374A18;
  location = 0;
  objc_storeStrong(&location, &stru_100325D18);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374A10;

  return v2;
}

- (AKTTRController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKTTRController;
  v6 = [(AKTTRController *)&v4 init];
  objc_storeStrong(&v6, v6);
  v3 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (BOOL)shouldSuppressPushMessage:(id)message
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  if ([location[0] command] != 1700 || (v6 = +[AKDevice currentDevice](AKDevice, "currentDevice"), v7 = objc_msgSend(v6, "isInternalBuild"), _objc_release(v6), v7))
  {
    v12 = 0;
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKD received request for TTR on non-internal build, suppressing.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  if ([location[0] command] == 1700)
  {
    userInfo = [location[0] userInfo];
    v20 = [userInfo objectForKeyedSubscript:@"ttrinfo"];
    _objc_release(userInfo);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v20 objectForKeyedSubscript:@"m"];
      v18 = [v20 objectForKeyedSubscript:@"cn"];
      v17 = [v20 objectForKeyedSubscript:@"cv"];
      v16 = [v20 objectForKeyedSubscript:@"cid"];
      v15 = [v20 objectForKeyedSubscript:@"d"];
      v14 = [NSString stringWithFormat:@"IDMS has triggered TTR for a failure in %@ | %@ (%@) \n Title: %@ \n Message: %@", v18, v17, v16, v19, v15];
      v4 = objc_opt_class();
      v5 = [v20 objectForKeyedSubscript:@"k"];
      v13 = sub_1001A4988(v4, v5);
      _objc_release(v5);
      v10 = 0;
      if (v13 && [v13 count])
      {
        v11 = [v13 componentsJoinedByString:{@", "}];
        v10 = 1;
        v3 = _objc_retain(v11);
      }

      else
      {
        v3 = _objc_retain(&stru_100330538);
      }

      v12 = v3;
      if (v10)
      {
        _objc_release(v11);
      }

      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v24, v19);
        _os_log_error_impl(&_mh_execute_header, oslog, type, "AKD received push request to create TTR with title: %@", v24, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v19 && v18 && v17 && v16)
      {
        [(AKTTRController *)selfCopy requestTapToRadarWithTitle:v19 message:v14 componentName:v18 componentVersion:v17 componentID:v16 keywords:v12];
      }

      else if (v19)
      {
        [(AKTTRController *)selfCopy requestTapToRadarWithTitle:v19 message:v14 keywords:v12];
      }

      else
      {
        v7 = _AKLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v23, v14);
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "The TTR request was missing a title - message was: %@", v23, 0xCu);
        }

        objc_storeStrong(&v7, 0);
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)requestTapToRadarWithTitle:(id)title message:(id)message keywords:(id)keywords
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v8 = 0;
  objc_storeStrong(&v8, message);
  v7 = 0;
  objc_storeStrong(&v7, keywords);
  [(AKTTRController *)selfCopy requestTapToRadarWithTitle:location[0] message:v8 componentName:@"AuthKit" componentVersion:@"All" componentID:@"621449" keywords:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)requestTapToRadarWithTitle:(id)title message:(id)message componentName:(id)name componentVersion:(id)version componentID:(id)d keywords:(id)keywords
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v44 = 0;
  objc_storeStrong(&v44, message);
  v43 = 0;
  objc_storeStrong(&v43, name);
  v42 = 0;
  objc_storeStrong(&v42, version);
  v41 = 0;
  objc_storeStrong(&v41, d);
  v40 = 0;
  objc_storeStrong(&v40, keywords);
  v32 = +[AKDevice currentDevice];
  isInternalBuild = [v32 isInternalBuild];
  _objc_release(v32);
  if (isInternalBuild)
  {
    v35 = objc_alloc_init(NSURLComponents);
    [v35 setScheme:@"tap-to-radar"];
    [v35 setHost:@"new"];
    v34 = +[NSMutableArray array];
    v8 = [NSURLQueryItem alloc];
    v17 = [v8 initWithName:@"ComponentName" value:v43];
    [v34 addObject:?];
    _objc_release(v17);
    v9 = [NSURLQueryItem alloc];
    v18 = [v9 initWithName:@"ComponentVersion" value:v42];
    [v34 addObject:?];
    _objc_release(v18);
    v10 = [NSURLQueryItem alloc];
    v19 = [v10 initWithName:@"ComponentID" value:v41];
    [v34 addObject:?];
    _objc_release(v19);
    v20 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Serious Bug"];
    [v34 addObject:?];
    _objc_release(v20);
    v21 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v34 addObject:?];
    _objc_release(v21);
    v22 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:@"phone"];
    [v34 addObject:?];
    _objc_release(v22);
    v11 = [NSURLQueryItem alloc];
    v23 = [v11 initWithName:@"Title" value:location[0]];
    [v34 addObject:?];
    _objc_release(v23);
    v12 = [NSURLQueryItem alloc];
    v24 = [v12 initWithName:@"Description" value:v44];
    [v34 addObject:?];
    _objc_release(v24);
    if ([v40 length])
    {
      v13 = [NSURLQueryItem alloc];
      v16 = [v13 initWithName:@"Keywords" value:v40];
      [v34 addObject:?];
      _objc_release(v16);
    }

    [v35 setQueryItems:v34];
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v14 = [v35 URL];
    [v15 openURL:? configuration:? completionHandler:?];
    _objc_release(v14);
    _objc_release(v15);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  else
  {
    v39 = _AKLogSystem();
    v38 = 16;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      v26 = v38;
      sub_10001CEEC(v37);
      _os_log_error_impl(&_mh_execute_header, log, v26, "AKD received request for TTR on non-internal build, ignoring.", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    v36 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

+ (id)generateRadarRequestFor:(unint64_t)for
{
  v5[3] = self;
  v5[2] = a2;
  v5[1] = for;
  if (for == 1)
  {
    v5[0] = objc_opt_new();
    [v5[0] setRadarTitle:@"Silent authentication issue detected"];
    [v5[0] setRadarDescription:@"An issue was encountered while performing silent authentication for your device. Filing this radar will help determine what went wrong."];
    [v5[0] setComponentName:@"AuthKit"];
    [v5[0] setComponentID:@"621449"];
    [v5[0] setComponentVersion:@"All"];
    v6 = _objc_retain(v5[0]);
    objc_storeStrong(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  v3 = v6;

  return v3;
}

- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion
{
  selfCopy = self;
  v15 = a2;
  forCopy = for;
  location = 0;
  objc_storeStrong(&location, completion);
  v6 = +[AKDevice currentDevice];
  isInternalBuild = [v6 isInternalBuild];
  _objc_release(v6);
  if (isInternalBuild)
  {
    v8 = [AKTTRController generateRadarRequestFor:forCopy];
    [(AKTTRController *)selfCopy _performSilentTTRForRequest:v8 completion:location];
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKD received request for TTR on non-internal build, ignoring.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (location)
    {
      (*(location + 2))(location, 0, 0);
    }

    v9 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)requestSilentTTRWithTitle:(id)title message:(id)message keywords:(id)keywords completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v11 = 0;
  objc_storeStrong(&v11, message);
  v10 = 0;
  objc_storeStrong(&v10, keywords);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  [(AKTTRController *)selfCopy requestSilentTTRWithTitle:location[0] message:v11 componentName:@"AuthKit" componentVersion:@"All" componentID:@"621449" keywords:v10 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestSilentTTRWithTitle:(id)title message:(id)message componentName:(id)name componentVersion:(id)version componentID:(id)d keywords:(id)keywords completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v28 = 0;
  objc_storeStrong(&v28, message);
  v27 = 0;
  objc_storeStrong(&v27, name);
  v26 = 0;
  objc_storeStrong(&v26, version);
  v25 = 0;
  objc_storeStrong(&v25, d);
  v24 = 0;
  objc_storeStrong(&v24, keywords);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v16 = +[AKDevice currentDevice];
  isInternalBuild = [v16 isInternalBuild];
  _objc_release(v16);
  if (isInternalBuild)
  {
    v18 = objc_opt_new();
    [v18 setRadarTitle:location[0]];
    [v18 setRadarDescription:v28];
    [v18 setComponentName:v27];
    [v18 setComponentID:v25];
    [v18 setComponentVersion:v26];
    [v18 setKeywords:v24];
    [(AKTTRController *)selfCopy _performSilentTTRForRequest:v18 completion:v23];
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v22 = _AKLogSystem();
    v21 = 16;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      sub_10001CEEC(v20);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKD received request for TTR on non-internal build, ignoring.", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }

    v19 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSilentTTRForRequest:(id)request completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if (location[0])
  {
    v17 = objc_opt_new();
    if (objc_opt_respondsToSelector())
    {
      v7 = v17;
      v6 = location[0];
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_1001A5A38;
      v15 = &unk_100321FF0;
      v16 = _objc_retain(v19);
      [v7 silentTapToRadarWithRequest:v6 completion:&v11];
      objc_storeStrong(&v16, 0);
    }

    else if (v19)
    {
      v4 = v19;
      v5 = [NSError errorWithDomain:AKSilentTTRErrorDomain code:4 userInfo:0];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    if (v19)
    {
      v8 = v19;
      v9 = [NSError errorWithDomain:AKSilentTTRErrorDomain code:3 userInfo:0];
      v8[2](v8, 0);
      _objc_release(v9);
    }

    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end