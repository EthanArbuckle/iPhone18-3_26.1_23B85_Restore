@interface ODRLaunchServicesClient
- (void)bytesUsedForApplicationWithBundleID:(id)a3 replyBlock:(id)a4;
@end

@implementation ODRLaunchServicesClient

- (void)bytesUsedForApplicationWithBundleID:(id)a3 replyBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100397478;
  v22 = sub_100397488;
  v23 = &off_100548298;
  objc_opt_self();
  v8 = sub_100208FBC();
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100397490;
  v15 = &unk_10051DC00;
  v17 = &v18;
  v9 = v6;
  v16 = v9;
  [v8 readUsingSession:&v12];

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v19[5] longLongValue];
    *buf = 134218498;
    v25 = self;
    v26 = 2112;
    v27 = v9;
    v28 = 2048;
    v29 = v11;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "(ODRLaunchServicesClient) [%p] bytes used for '%@' = %{iec-bytes}lld", buf, 0x20u);
  }

  v7[2](v7, [v19[5] integerValue], 0);
  _Block_object_dispose(&v18, 8);
}

@end