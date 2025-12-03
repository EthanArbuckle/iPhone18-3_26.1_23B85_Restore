@interface AKURLBagService
+ (id)sharedBagService;
- (AKURLBagService)init;
- (id)_cachedURLBagForAltDSID:(id)d;
- (id)urlBagForAltDSID:(id)d error:(id *)error;
- (id)urlBagFromCache:(BOOL)cache altDSID:(id)d error:(id *)error;
- (void)_fetchBagFromNetworkWithRequest:(id)request completion:(id)completion;
- (void)_invokeClearanceRequest:(id)request urlBag:(id)bag error:(id)error;
- (void)_tq_invokeRequest:(id)request completion:(id)completion;
- (void)_tq_processPendingRequests;
- (void)_updateCacheWithBag:(id)bag forAltDSID:(id)d;
- (void)_updateURLBagIfNecessaryFromHTTPCache:(BOOL)cache ignoreMemoryCache:(BOOL)memoryCache altDSID:(id)d urlSwitchData:(id)data completion:(id)completion;
- (void)clearSerializedMemoryCache;
- (void)clearSessionCache;
- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion;
- (void)fetchURLBagForAltDSID:(id)d fromCache:(BOOL)cache completion:(id)completion;
- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion;
@end

@implementation AKURLBagService

- (void)_tq_processPendingRequests
{
  selfCopy = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_trafficQueue);
  [(AKURLBagService *)selfCopy setActiveBagFetchRequest:0];
  pendingBagFetchRequests = [(AKURLBagService *)selfCopy pendingBagFetchRequests];
  v12 = [(NSMutableArray *)pendingBagFetchRequests count];
  _objc_release(pendingBagFetchRequests);
  if (v12)
  {
    location[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      pendingBagFetchRequests2 = [(AKURLBagService *)selfCopy pendingBagFetchRequests];
      v9 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)pendingBagFetchRequests2 count]];
      pendingBagFetchRequests3 = [(AKURLBagService *)selfCopy pendingBagFetchRequests];
      sub_10001B098(v27, v9, pendingBagFetchRequests3);
      _os_log_debug_impl(&_mh_execute_header, location[0], v24, "Processing pending (%@) URL bag requests: %@", v27, 0x16u);
      _objc_release(pendingBagFetchRequests3);
      _objc_release(v9);
      _objc_release(pendingBagFetchRequests2);
    }

    objc_storeStrong(location, 0);
    pendingBagFetchRequests4 = [(AKURLBagService *)selfCopy pendingBagFetchRequests];
    firstObject = [(NSMutableArray *)pendingBagFetchRequests4 firstObject];
    _objc_release(pendingBagFetchRequests4);
    pendingBagFetchRequests5 = [(AKURLBagService *)selfCopy pendingBagFetchRequests];
    [(NSMutableArray *)pendingBagFetchRequests5 removeObjectAtIndex:0];
    _objc_release(pendingBagFetchRequests5);
    v7 = selfCopy;
    v6 = firstObject;
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10014D7A8;
    v20 = &unk_100324938;
    v21 = _objc_retain(selfCopy);
    v22 = _objc_retain(firstObject);
    [(AKURLBagService *)v7 _tq_invokeRequest:v6 completion:&v16];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v2 = v15;
      v3 = v14;
      sub_10001CEEC(v13);
      _os_log_debug_impl(&_mh_execute_header, v2, v3, "Finished processing pending URL bag requests, all done!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }
}

+ (id)sharedBagService
{
  v5 = &unk_100374880;
  location = 0;
  objc_storeStrong(&location, &stru_1003248A0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374878;

  return v2;
}

- (AKURLBagService)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = AKURLBagService;
  v10 = [(AKURLBagService *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v2 = objc_alloc_init(NSDictionary);
    lastUpdated = v13->_lastUpdated;
    v13->_lastUpdated = v2;
    _objc_release(lastUpdated);
    v4 = objc_alloc_init(NSDictionary);
    cachedBags = v13->_cachedBags;
    v13->_cachedBags = v4;
    _objc_release(cachedBags);
    v6 = +[NSMutableArray array];
    pendingBagFetchRequests = v13->_pendingBagFetchRequests;
    v13->_pendingBagFetchRequests = v6;
    _objc_release(pendingBagFetchRequests);
  }

  v9 = _objc_retain(v13);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (void)clearSessionCache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, log, type, "Clearing session URL bag caches...", v9, 2u);
  }

  objc_storeStrong(location, 0);
  sub_10014AE88(&selfCopy->_bag_cache_lock, &stru_1003248C0);
  v8 = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v8;
    v3 = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared session bag caches", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
}

- (void)clearSerializedMemoryCache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v17;
    sub_10001CEEC(v16);
    _os_log_impl(&_mh_execute_header, log, type, "Clearing memory URL bag caches...", v16, 2u);
  }

  objc_storeStrong(location, 0);
  p_bag_cache_lock = &selfCopy->_bag_cache_lock;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10014B0D0;
  v14 = &unk_10031F8B0;
  v15 = _objc_retain(selfCopy);
  sub_10014AE88(p_bag_cache_lock, &v10);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v9;
    v3 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared serialized bag cache", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v15, 0);
}

- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = _AKLogSystem();
  v8 = 2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    sub_10001CEEC(v7);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting to fetch URL bag... if necessary", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  [(AKURLBagService *)selfCopy _updateURLBagIfNecessaryFromHTTPCache:0 ignoreMemoryCache:0 altDSID:location[0] urlSwitchData:0 completion:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchURLBagForAltDSID:(id)d fromCache:(BOOL)cache completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  cacheCopy = cache;
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = 2;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    log = v23;
    type = v22;
    sub_10001CEEC(v21);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting to fetch URL bag... if necessary", v21, 2u);
  }

  objc_storeStrong(&v23, 0);
  if (!cacheCopy)
  {
    goto LABEL_14;
  }

  v20 = [(AKURLBagService *)selfCopy _cachedURLBagForAltDSID:location[0]];
  if (v20)
  {
    v19 = _AKLogSystem();
    v18 = 2;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v7 = v19;
      v8 = v18;
      sub_10001CEEC(v17);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "URL bag cache hit for altDSID, returning immediately without async work", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    if (v24)
    {
      (*(v24 + 2))(v24, v20, 0);
    }

    v16 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v5 = oslog;
      v6 = v14;
      sub_10001CEEC(v13);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "URL bag cache miss for altDSID, falling back to async network fetch", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v16 = 0;
  }

  objc_storeStrong(&v20, 0);
  if (!v16)
  {
LABEL_14:
    [(AKURLBagService *)selfCopy _updateURLBagIfNecessaryFromHTTPCache:cacheCopy ignoreMemoryCache:0 altDSID:location[0] urlSwitchData:0 completion:v24];
    v16 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (id)urlBagForAltDSID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(AKURLBagService *)selfCopy urlBagFromCache:0 altDSID:location[0] error:error];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)urlBagFromCache:(BOOL)cache altDSID:(id)d error:(id *)error
{
  selfCopy = self;
  v48 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, d);
  errorCopy = error;
  v38 = 0;
  v39 = &v38;
  v40 = 838860800;
  v41 = 48;
  v42 = sub_100003DA4;
  v43 = sub_1000113E0;
  v44 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 838860800;
  v34 = 48;
  v35 = sub_100003DA4;
  v36 = sub_1000113E0;
  v37 = [(AKURLBagService *)selfCopy _cachedURLBagForAltDSID:location];
  if (v32[5])
  {
    v50 = _objc_retain(v32[5]);
    v30 = 1;
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      log = v29;
      type = v28;
      sub_10001CEEC(v27);
      _os_log_impl(&_mh_execute_header, log, type, "Starting to fetch URL bag cache using DEPRECATED SYNCHRONOUS SPI! Hangs ahead!", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v26 = dispatch_semaphore_create(0);
    v13 = selfCopy;
    v11 = cacheCopy;
    v12 = location;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_10014BA04;
    v24 = &unk_10031FE00;
    v25[1] = &v31;
    v25[2] = &v38;
    v25[0] = _objc_retain(v26);
    [(AKURLBagService *)v13 _updateURLBagIfNecessaryFromHTTPCache:v11 ignoreMemoryCache:0 altDSID:v12 urlSwitchData:0 completion:&v20];
    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    oslog = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetch URL bag cache using DEPRECATED SYNCHRONOUS SPI! Phew... we didn't hang, this time!", v17, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v8 = v39[5];
      v5 = v8;
      *errorCopy = v8;
    }

    v50 = _objc_retain(v32[5]);
    v30 = 1;
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v26, 0);
  }

  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  _Block_object_dispose(&v38, 8);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
  v6 = v50;

  return v6;
}

- (void)_tq_invokeRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  dispatch_assert_queue_V2(selfCopy[1]);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v14, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v10, v9, "Invoking bag traffic request: %@", v14, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  [(dispatch_queue_t *)selfCopy setActiveBagFetchRequest:location[0]];
  v4 = selfCopy;
  context = [location[0] context];
  altDSID = [context altDSID];
  v8 = [(dispatch_queue_t *)v4 _cachedURLBagForAltDSID:?];
  _objc_release(altDSID);
  _objc_release(context);
  if (v8)
  {
    [(dispatch_queue_t *)selfCopy setActiveBagFetchRequest:?];
    (*(v11 + 2))(v11, v8, 0);
  }

  else
  {
    [(dispatch_queue_t *)selfCopy _fetchBagFromNetworkWithRequest:location[0] completion:v11];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchBagFromNetworkWithRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v30, location[0]);
    _os_log_impl(&_mh_execute_header, v26, v25, "Fetching URL bag from Network... %@", v30, 0xCu);
  }

  objc_storeStrong(&v26, 0);
  v9 = [AKURLBagRequestProvider alloc];
  context = [location[0] context];
  altDSID = [context altDSID];
  urlSwitchData = [location[0] urlSwitchData];
  v24 = [(AKURLBagRequestProvider *)v9 initWithAltDSID:altDSID urlSwitchData:?];
  _objc_release(urlSwitchData);
  _objc_release(altDSID);
  _objc_release(context);
  newBagURLRequest = [v24 newBagURLRequest];
  v22 = 0;
  if ([location[0] fromURLCache])
  {
    v4 = +[AKURLSession sharedCacheReliantAnisetteFreeSession];
  }

  else
  {
    v4 = +[AKURLSession sharedCacheEnabledAnisetteFreeSession];
  }

  v5 = v22;
  v22 = v4;
  _objc_release(v5);
  v8 = v22;
  v7 = newBagURLRequest;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10014C050;
  v18 = &unk_1003248E8;
  v21 = _objc_retain(v27);
  v19 = _objc_retain(location[0]);
  v20 = _objc_retain(selfCopy);
  v6 = [v8 beginDataTaskWithRequest:v7 completionHandler:&v14];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&newBagURLRequest, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateURLBagIfNecessaryFromHTTPCache:(BOOL)cache ignoreMemoryCache:(BOOL)memoryCache altDSID:(id)d urlSwitchData:(id)data completion:(id)completion
{
  selfCopy = self;
  v47 = a2;
  cacheCopy = cache;
  memoryCacheCopy = memoryCache;
  location = 0;
  objc_storeStrong(&location, d);
  v43 = 0;
  objc_storeStrong(&v43, data);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v41 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v40 = _AKSignpostCreate();
  *(&v40 + 1) = v7;
  _objc_release(v12);
  v39 = _AKSignpostLogSystem();
  v38 = 1;
  v37 = v40;
  if (v40 && v37 != -1 && os_signpost_enabled(v39))
  {
    log = v39;
    type = v38;
    spid = v37;
    sub_10001CEEC(v36);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "FetchURLBag", " enableTelemetry=YES ", v36, 2u);
  }

  objc_storeStrong(&v39, 0);
  v35 = _AKSignpostLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v49, v40);
    _os_log_impl(&_mh_execute_header, v35, v34, "BEGIN [%lld]: FetchURLBag  enableTelemetry=YES ", v49, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  v41 = v40;
  v26 = _NSConcreteStackBlock;
  v27 = -1073741824;
  v28 = 0;
  v29 = sub_10014CD08;
  v30 = &unk_100324910;
  v32 = v40;
  v31 = _objc_retain(v42);
  v33 = objc_retainBlock(&v26);
  queue = selfCopy->_trafficQueue;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10014CF34;
  v19 = &unk_100320508;
  v20 = _objc_retain(location);
  v24 = cacheCopy;
  v25 = memoryCacheCopy;
  v21 = _objc_retain(v43);
  v23 = _objc_retain(v33);
  v22 = _objc_retain(selfCopy);
  dispatch_async(queue, &v15);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

- (void)_invokeClearanceRequest:(id)request urlBag:(id)bag error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v17 = 0;
  objc_storeStrong(&v17, bag);
  v16 = 0;
  objc_storeStrong(&v16, error);
  queue = selfCopy->_clearanceQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10014D688;
  v12 = &unk_10031F050;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v17);
  v15 = _objc_retain(v16);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v22 = 0;
  objc_storeStrong(&v22, data);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    log = v20;
    type = v19;
    sub_10001CEEC(v18);
    _os_log_impl(&_mh_execute_header, log, type, "Force URL bag fetch requested!!! Hold on to your hats!", v18, 2u);
  }

  objc_storeStrong(&v20, 0);
  v7 = selfCopy;
  v5 = location[0];
  v6 = v22;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10014DAF0;
  v16 = &unk_100321258;
  v17 = _objc_retain(v21);
  [(AKURLBagService *)v7 _updateURLBagIfNecessaryFromHTTPCache:0 ignoreMemoryCache:1 altDSID:v5 urlSwitchData:v6 completion:&v12];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)_cachedURLBagForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = selfCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014DDAC;
  v10 = &unk_100324960;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(selfCopy);
  v5 = sub_10014DCFC(&v4->_bag_cache_lock, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_updateCacheWithBag:(id)bag forAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bag);
  v20 = 0;
  objc_storeStrong(&v20, d);
  v19 = _objc_retain(v20);
  if (![v19 length])
  {
    objc_storeStrong(&v19, @"AKSharedBag");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_bag_cache_lock = &selfCopy->_bag_cache_lock;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10014E340;
    v12 = &unk_10031F050;
    v13 = _objc_retain(selfCopy);
    v14 = _objc_retain(v19);
    v15 = _objc_retain(location[0]);
    sub_10014AE88(p_bag_cache_lock, &v8);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_error_impl(&_mh_execute_header, log, type, "The URL bag was not in dictionary format!", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end