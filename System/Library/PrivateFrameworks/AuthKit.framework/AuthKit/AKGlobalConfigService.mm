@interface AKGlobalConfigService
+ (id)sharedInstance;
- (AKGlobalConfigService)init;
- (id)_configURLRequestWithContext:(id)context;
- (id)_unsafe_updateCacheWithData:(id)data;
- (void)_getConfigsFromCache:(BOOL)cache context:(id)context completion:(id)completion;
- (void)checkForLocaleChange;
- (void)fetchGlobalConfigUsingCachePolicy:(unint64_t)policy context:(id)context completion:(id)completion;
@end

@implementation AKGlobalConfigService

+ (id)sharedInstance
{
  v5 = &unk_100374960;
  location = 0;
  objc_storeStrong(&location, &stru_100325698);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374968;

  return v2;
}

- (AKGlobalConfigService)init
{
  v14 = a2;
  v15 = 0;
  v13.receiver = self;
  v13.super_class = AKGlobalConfigService;
  v12 = [(AKGlobalConfigService *)&v13 init];
  v15 = v12;
  objc_storeStrong(&v15, v12);
  if (v12)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("AKGlobalConfigServiceQueue", v10);
    queue = v15->_queue;
    v15->_queue = v2;
    _objc_release(queue);
    _objc_release(v10);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKGlobalConfigAgeCachingQueue", v11);
    ageCacheQueue = v15->_ageCacheQueue;
    v15->_ageCacheQueue = v4;
    _objc_release(ageCacheQueue);
    _objc_release(v11);
    v6 = objc_alloc_init(NSDictionary);
    cachedConfig = v15->_cachedConfig;
    v15->_cachedConfig = v6;
    _objc_release(cachedConfig);
  }

  v9 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  return v9;
}

- (void)checkForLocaleChange
{
  selfCopy = self;
  v19[1] = a2;
  v7 = +[AKDevice currentDevice];
  locale = [v7 locale];
  v19[0] = [locale localeIdentifier];
  _objc_release(locale);
  _objc_release(v7);
  v8 = +[AKConfiguration sharedConfiguration];
  lastKnownLocale = [v8 lastKnownLocale];
  _objc_release(v8);
  if (![v19[0] isEqualToString:lastKnownLocale])
  {
    location = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, log, type, "Locale change notification. Fetching global configs.", v15, 2u);
    }

    objc_storeStrong(&location, 0);
    v3 = selfCopy;
    v2 = AKRequestContextLocaleChange;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100190CA8;
    v13 = &unk_1003230F8;
    v14 = _objc_retain(v19[0]);
    [(AKGlobalConfigService *)v3 fetchGlobalConfigUsingCachePolicy:1 context:v2 completion:&v9];
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&lastKnownLocale, 0);
  objc_storeStrong(v19, 0);
}

- (void)fetchGlobalConfigUsingCachePolicy:(unint64_t)policy context:(id)context completion:(id)completion
{
  selfCopy = self;
  v10 = a2;
  policyCopy = policy;
  location = 0;
  objc_storeStrong(&location, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v12, policyCopy);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fetching global config with cache policy %lu", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (policyCopy)
  {
    if (policyCopy == 1)
    {
      [(AKGlobalConfigService *)selfCopy _getConfigsFromCache:0 context:location completion:v7];
    }
  }

  else
  {
    [(AKGlobalConfigService *)selfCopy _getConfigsFromCache:1 context:location completion:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)_getConfigsFromCache:(BOOL)cache context:(id)context completion:(id)completion
{
  selfCopy = self;
  v72 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, context);
  v69 = 0;
  objc_storeStrong(&v69, completion);
  v68 = 0uLL;
  v24 = _AKSignpostLogSystem();
  *&v67 = _AKSignpostCreate();
  *(&v67 + 1) = v5;
  _objc_release(v24);
  v66 = _AKSignpostLogSystem();
  v65 = 1;
  v64 = v67;
  if (v67 && v64 != -1 && os_signpost_enabled(v66))
  {
    log = v66;
    type = v65;
    spid = v64;
    sub_10001CEEC(v63);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "FetchGlobalConfig", " enableTelemetry=YES ", v63, 2u);
  }

  objc_storeStrong(&v66, 0);
  v62 = _AKSignpostLogSystem();
  v61 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v74, v67);
    _os_log_impl(&_mh_execute_header, v62, v61, "BEGIN [%lld]: FetchGlobalConfig  enableTelemetry=YES ", v74, 0xCu);
  }

  objc_storeStrong(&v62, 0);
  v68 = v67;
  v53 = _NSConcreteStackBlock;
  v54 = -1073741824;
  v55 = 0;
  v56 = sub_10019167C;
  v57 = &unk_100324910;
  v59 = v67;
  v58 = _objc_retain(v69);
  v60 = objc_retainBlock(&v53);
  v52 = [(AKGlobalConfigService *)selfCopy _configURLRequestWithContext:location];
  v51 = 0;
  if (cacheCopy)
  {
    oslog = _AKLogSystem();
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = oslog;
      v20 = v49;
      sub_10001CEEC(v48);
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetching global config from cache...", v48, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v6 = +[AKURLSession sharedCacheReliantAnisetteFreeSession];
    v7 = v51;
    v51 = v6;
    _objc_release(v7);
  }

  else
  {
    v47 = _AKLogSystem();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v47;
      v18 = v46;
      sub_10001CEEC(v45);
      _os_log_impl(&_mh_execute_header, v17, v18, "Fetching global config from source...", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v8 = +[AKURLSession sharedCacheEnabledAnisetteFreeSession];
    v9 = v51;
    v51 = v8;
    _objc_release(v9);
  }

  v10 = &_dispatch_main_q;
  v12 = &_dispatch_main_q;
  v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
  _objc_release(v12);
  v14 = v51;
  v13 = v52;
  v33 = _NSConcreteStackBlock;
  v34 = -1073741824;
  v35 = 0;
  v36 = sub_1001918A8;
  v37 = &unk_1003256C0;
  v38 = _objc_retain(v44);
  v39 = _objc_retain(v51);
  v41 = _objc_retain(v60);
  v40 = _objc_retain(selfCopy);
  v42 = cacheCopy;
  v43 = [v14 beginDataTaskWithRequest:v13 completionHandler:&v33];
  source = v44;
  v11 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(source, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  v16 = v44;
  v26 = _NSConcreteStackBlock;
  v27 = -1073741824;
  v28 = 0;
  v29 = sub_100191CE0;
  v30 = &unk_10031F078;
  v31 = _objc_retain(v43);
  v32 = _objc_retain(v51);
  dispatch_source_set_event_handler(v16, &v26);
  dispatch_resume(v44);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&location, 0);
}

- (id)_configURLRequestWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = +[AKURLBag sharedBag];
  fetchGlobalConfigURL = [v15 fetchGlobalConfigURL];
  _objc_release(v15);
  if (!fetchGlobalConfigURL)
  {
    v20 = _objc_retain(@"https://gsas.apple.com/grandslam/GsService2/fetchGlobalConfigs");
    v3 = [NSURL URLWithString:v20];
    v4 = fetchGlobalConfigURL;
    fetchGlobalConfigURL = v3;
    _objc_release(v4);
    objc_storeStrong(&v20, 0);
  }

  v11 = +[AKDevice currentDevice];
  locale = [v11 locale];
  localeIdentifier = [locale localeIdentifier];
  _objc_release(locale);
  _objc_release(v11);
  v18 = [NSURLComponents componentsWithURL:fetchGlobalConfigURL resolvingAgainstBaseURL:0];
  v5 = [NSURLQueryItem alloc];
  v17 = [v5 initWithName:@"locale" value:localeIdentifier];
  v12 = v18;
  v23 = v17;
  v13 = [NSArray arrayWithObjects:&v23 count:1];
  [(NSURLComponents *)v12 setQueryItems:?];
  _objc_release(v13);
  v6 = [(NSURLComponents *)v18 URL];
  v7 = fetchGlobalConfigURL;
  fetchGlobalConfigURL = v6;
  _objc_release(v7);
  v8 = [NSMutableURLRequest alloc];
  v16 = [v8 initWithURL:fetchGlobalConfigURL];
  [v16 ak_addClientInfoHeader];
  [v16 ak_addCountryHeader];
  [v16 ak_addDeviceUDIDHeader];
  [v16 ak_addInternalBuildHeader];
  [v16 ak_addSeedBuildHeader];
  [v16 ak_addFeatureMaskHeader];
  [v16 ak_addLocaleHeader];
  [v16 ak_addTimeZoneHeaders];
  [v16 ak_addSKUCountryHeader];
  [v16 ak_addRequestContextHeader:location[0]];
  [v16 ak_addExperimentModeHeader];
  v14 = [v16 copy];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&localeIdentifier, 0);
  objc_storeStrong(&fetchGlobalConfigURL, 0);
  objc_storeStrong(location, 0);

  return v14;
}

- (id)_unsafe_updateCacheWithData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v17 = 0;
  v15 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:location[0] options:0 error:&v15];
  objc_storeStrong(&v17, v15);
  v16 = v7;
  if (v17)
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v21, v17);
      _os_log_error_impl(&_mh_execute_header, v14, v13, "There was an error parsing the config! %@", v21, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v19 = 0;
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v20, v16);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Config fetched! %@", v20, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v19 = _objc_retain(v16);
      v12 = 1;
    }

    else
    {
      v11 = _AKLogSystem();
      v10 = 16;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v5 = v11;
        v6 = v10;
        sub_10001CEEC(v9);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "The config was not in dictionary format!", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
      v19 = 0;
      v12 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

@end