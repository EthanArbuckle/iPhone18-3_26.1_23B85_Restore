@interface PLAssetsdResourceAvailabilityService
- (PLAssetsdResourceAvailabilityService)initWithLibraryServicesManager:(id)manager shellObject:(id)object trustedCallerBundleID:(id)d clientPid:(int)pid;
- (id)appyCorrectionsToAssetWithRequest:(id)request errorCodes:(id)codes reply:(id)reply;
- (id)appyCorrectionsToResourceWithRequest:(id)request errorCodes:(id)codes reply:(id)reply;
- (id)makeResourceAvailableWithRequest:(id)request reply:(id)reply;
- (id)runVideoRequest:(id)request reply:(id)reply;
- (void)initializeSharedMemoryForCacheMetricsCollector:(id)collector;
- (void)makeResourceUnavailableWithRequest:(id)request;
@end

@implementation PLAssetsdResourceAvailabilityService

- (void)initializeSharedMemoryForCacheMetricsCollector:(id)collector
{
  collectorCopy = collector;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&_mh_execute_header, "PLXPC Service: initializeSharedMemoryForCacheMetricsCollector:", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  object = [collectorCopy object];
  v7 = [[PLCacheMetricsCollectorServer alloc] initWithXPCObject:object];
  [(PLCacheMetricsCollectorServerShell *)self->_cacheMetricsShellObject setCacheMetricsCollectorServer:v7];

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (id)appyCorrectionsToAssetWithRequest:(id)request errorCodes:(id)codes reply:(id)reply
{
  requestCopy = request;
  codesCopy = codes;
  replyCopy = reply;
  v11 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService appyCorrectionsToAssetWithRequest:errorCodes:reply:]"];
  v23 = 0;
  v12 = sub_100008718(v11, &v23);
  v13 = v23;
  if (v12)
  {
    v14 = [PHServerResourceRequestRunner alloc];
    taskIdentifier = [requestCopy taskIdentifier];
    v16 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:taskIdentifier];
    v17 = [v14 initWithTaskIdentifier:v16];

    trustedCallerBundleID = self->_trustedCallerBundleID;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000089A0;
    v21[3] = &unk_10002CF50;
    v22 = replyCopy;
    v19 = [v17 applyAssetScopeCorrectionsWithRequest:requestCopy errorCodes:codesCopy clientBundleID:trustedCallerBundleID library:v11 reply:v21];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v13);
    v19 = 0;
  }

  return v19;
}

- (id)appyCorrectionsToResourceWithRequest:(id)request errorCodes:(id)codes reply:(id)reply
{
  requestCopy = request;
  codesCopy = codes;
  replyCopy = reply;
  v11 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService appyCorrectionsToResourceWithRequest:errorCodes:reply:]"];
  v23 = 0;
  v12 = sub_100008718(v11, &v23);
  v13 = v23;
  if (v12)
  {
    v14 = [PHServerResourceRequestRunner alloc];
    taskIdentifier = [requestCopy taskIdentifier];
    v16 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:taskIdentifier];
    v17 = [v14 initWithTaskIdentifier:v16];

    trustedCallerBundleID = self->_trustedCallerBundleID;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008BC0;
    v21[3] = &unk_10002CF50;
    v22 = replyCopy;
    v19 = [v17 applyResourceScopeCorrectionsWithRequest:requestCopy errorCodes:codesCopy clientBundleID:trustedCallerBundleID library:v11 reply:v21];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v13);
    v19 = 0;
  }

  return v19;
}

- (id)runVideoRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService runVideoRequest:reply:]"];
  v24 = 0;
  v9 = sub_100008718(v8, &v24);
  v10 = v24;
  if (v9)
  {
    v11 = +[NSDate date];
    taskIdentifier = [requestCopy taskIdentifier];
    v13 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:taskIdentifier];

    v14 = [[PHServerResourceRequestRunner alloc] initWithTaskIdentifier:v13];
    trustedCallerBundleID = self->_trustedCallerBundleID;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008E08;
    v20[3] = &unk_10002CF28;
    v21 = v11;
    v22 = v13;
    v23 = replyCopy;
    v16 = v13;
    v17 = v11;
    v18 = [v14 chooseVideoWithRequest:requestCopy library:v8 clientBundleID:trustedCallerBundleID reply:v20];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, 0, v10);
    v18 = 0;
  }

  return v18;
}

- (void)makeResourceUnavailableWithRequest:(id)request
{
  requestCopy = request;
  v4 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService makeResourceUnavailableWithRequest:]"];
  if (sub_100008718(v4, 0))
  {
    v5 = [PHServerResourceRequestRunner alloc];
    taskIdentifier = [requestCopy taskIdentifier];
    v7 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:taskIdentifier];
    v8 = [v5 initWithTaskIdentifier:v7];

    [v8 makeResourceUnavailableWithRequest:requestCopy library:v4];
  }
}

- (id)makeResourceAvailableWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService makeResourceAvailableWithRequest:reply:]"];
  v25 = 0;
  v9 = sub_100008718(v8, &v25);
  v10 = v25;
  if (v9)
  {
    v11 = +[NSDate date];
    taskIdentifier = [requestCopy taskIdentifier];
    v13 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:taskIdentifier];

    v14 = [[PHServerResourceRequestRunner alloc] initWithTaskIdentifier:v13];
    trustedCallerBundleID = self->_trustedCallerBundleID;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009294;
    v20[3] = &unk_10002CF00;
    v21 = v11;
    v22 = v13;
    v23 = requestCopy;
    v24 = replyCopy;
    v16 = v13;
    v17 = v11;
    v18 = [v14 makeResourceAvailableWithRequest:v23 library:v8 clientBundleID:trustedCallerBundleID reply:v20];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, v10);
    v18 = 0;
  }

  return v18;
}

- (PLAssetsdResourceAvailabilityService)initWithLibraryServicesManager:(id)manager shellObject:(id)object trustedCallerBundleID:(id)d clientPid:(int)pid
{
  objectCopy = object;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PLAssetsdResourceAvailabilityService;
  v13 = [(PLAssetsdResourceAvailabilityService *)&v16 initWithLibraryServicesManager:manager];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cacheMetricsShellObject, object);
    objc_storeStrong(&v14->_trustedCallerBundleID, d);
    v14->_clientPid = pid;
  }

  return v14;
}

@end