@interface PLAssetsdResourceAvailabilityService
- (PLAssetsdResourceAvailabilityService)initWithLibraryServicesManager:(id)a3 shellObject:(id)a4 trustedCallerBundleID:(id)a5 clientPid:(int)a6;
- (id)appyCorrectionsToAssetWithRequest:(id)a3 errorCodes:(id)a4 reply:(id)a5;
- (id)appyCorrectionsToResourceWithRequest:(id)a3 errorCodes:(id)a4 reply:(id)a5;
- (id)makeResourceAvailableWithRequest:(id)a3 reply:(id)a4;
- (id)runVideoRequest:(id)a3 reply:(id)a4;
- (void)initializeSharedMemoryForCacheMetricsCollector:(id)a3;
- (void)makeResourceUnavailableWithRequest:(id)a3;
@end

@implementation PLAssetsdResourceAvailabilityService

- (void)initializeSharedMemoryForCacheMetricsCollector:(id)a3
{
  v4 = a3;
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

  v6 = [v4 object];
  v7 = [[PLCacheMetricsCollectorServer alloc] initWithXPCObject:v6];
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

- (id)appyCorrectionsToAssetWithRequest:(id)a3 errorCodes:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService appyCorrectionsToAssetWithRequest:errorCodes:reply:]"];
  v23 = 0;
  v12 = sub_100008718(v11, &v23);
  v13 = v23;
  if (v12)
  {
    v14 = [PHServerResourceRequestRunner alloc];
    v15 = [v8 taskIdentifier];
    v16 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:v15];
    v17 = [v14 initWithTaskIdentifier:v16];

    trustedCallerBundleID = self->_trustedCallerBundleID;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000089A0;
    v21[3] = &unk_10002CF50;
    v22 = v10;
    v19 = [v17 applyAssetScopeCorrectionsWithRequest:v8 errorCodes:v9 clientBundleID:trustedCallerBundleID library:v11 reply:v21];
  }

  else
  {
    (*(v10 + 2))(v10, 0, v13);
    v19 = 0;
  }

  return v19;
}

- (id)appyCorrectionsToResourceWithRequest:(id)a3 errorCodes:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService appyCorrectionsToResourceWithRequest:errorCodes:reply:]"];
  v23 = 0;
  v12 = sub_100008718(v11, &v23);
  v13 = v23;
  if (v12)
  {
    v14 = [PHServerResourceRequestRunner alloc];
    v15 = [v8 taskIdentifier];
    v16 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:v15];
    v17 = [v14 initWithTaskIdentifier:v16];

    trustedCallerBundleID = self->_trustedCallerBundleID;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008BC0;
    v21[3] = &unk_10002CF50;
    v22 = v10;
    v19 = [v17 applyResourceScopeCorrectionsWithRequest:v8 errorCodes:v9 clientBundleID:trustedCallerBundleID library:v11 reply:v21];
  }

  else
  {
    (*(v10 + 2))(v10, 0, v13);
    v19 = 0;
  }

  return v19;
}

- (id)runVideoRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService runVideoRequest:reply:]"];
  v24 = 0;
  v9 = sub_100008718(v8, &v24);
  v10 = v24;
  if (v9)
  {
    v11 = +[NSDate date];
    v12 = [v6 taskIdentifier];
    v13 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:v12];

    v14 = [[PHServerResourceRequestRunner alloc] initWithTaskIdentifier:v13];
    trustedCallerBundleID = self->_trustedCallerBundleID;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008E08;
    v20[3] = &unk_10002CF28;
    v21 = v11;
    v22 = v13;
    v23 = v7;
    v16 = v13;
    v17 = v11;
    v18 = [v14 chooseVideoWithRequest:v6 library:v8 clientBundleID:trustedCallerBundleID reply:v20];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0, 0, v10);
    v18 = 0;
  }

  return v18;
}

- (void)makeResourceUnavailableWithRequest:(id)a3
{
  v9 = a3;
  v4 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService makeResourceUnavailableWithRequest:]"];
  if (sub_100008718(v4, 0))
  {
    v5 = [PHServerResourceRequestRunner alloc];
    v6 = [v9 taskIdentifier];
    v7 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:v6];
    v8 = [v5 initWithTaskIdentifier:v7];

    [v8 makeResourceUnavailableWithRequest:v9 library:v4];
  }
}

- (id)makeResourceAvailableWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLAssetsdResourceAvailabilityService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceAvailabilityService makeResourceAvailableWithRequest:reply:]"];
  v25 = 0;
  v9 = sub_100008718(v8, &v25);
  v10 = v25;
  if (v9)
  {
    v11 = +[NSDate date];
    v12 = [v6 taskIdentifier];
    v13 = [(PLAssetsdResourceAvailabilityService *)self _clientPidPrefixedTaskIdentifierWithTaskIdentifier:v12];

    v14 = [[PHServerResourceRequestRunner alloc] initWithTaskIdentifier:v13];
    trustedCallerBundleID = self->_trustedCallerBundleID;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009294;
    v20[3] = &unk_10002CF00;
    v21 = v11;
    v22 = v13;
    v23 = v6;
    v24 = v7;
    v16 = v13;
    v17 = v11;
    v18 = [v14 makeResourceAvailableWithRequest:v23 library:v8 clientBundleID:trustedCallerBundleID reply:v20];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0, v10);
    v18 = 0;
  }

  return v18;
}

- (PLAssetsdResourceAvailabilityService)initWithLibraryServicesManager:(id)a3 shellObject:(id)a4 trustedCallerBundleID:(id)a5 clientPid:(int)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PLAssetsdResourceAvailabilityService;
  v13 = [(PLAssetsdResourceAvailabilityService *)&v16 initWithLibraryServicesManager:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cacheMetricsShellObject, a4);
    objc_storeStrong(&v14->_trustedCallerBundleID, a5);
    v14->_clientPid = a6;
  }

  return v14;
}

@end