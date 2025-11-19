@interface MPRemotePlayerService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MPRemotePlayerService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v9 = MSVBundleIDForAuditToken();
  v10 = [v8 processIdentifier];
  v11 = [v9 length];
  if (v11)
  {
    v12 = sub_100001A28();
    v13 = [v12 beginTaskWithName:@"shouldAcceptNewConnection" expirationHandler:0];

    v14 = sub_1000012BC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: Received new incoming XPC connection: %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002710;
    block[3] = &unk_100008348;
    v17 = v8;
    v18 = v9;
    v19 = self;
    v21 = v10;
    v20 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [v8 invalidate];
  }

  return v11 != 0;
}

@end