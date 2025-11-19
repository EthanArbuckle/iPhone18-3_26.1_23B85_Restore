@interface CHIconCache
+ (id)fetchPhoneIconWithParameters:(id)a3;
+ (id)fetchWatchIconWithParameters:(id)a3;
+ (void)_fetchChicletWithParameters:(id)a3 completion:(id)a4;
+ (void)_fetchIconFromLaunchServicesWithParameters:(id)a3 completion:(id)a4;
+ (void)_fetchIconFromNRGWithParameters:(id)a3 completion:(id)a4;
+ (void)_fetchRoundIconWithParameters:(id)a3 completion:(id)a4;
+ (void)fetchPhoneIconWithParameters:(id)a3 completion:(id)a4;
+ (void)fetchWatchIconWithParameters:(id)a3 completion:(id)a4;
+ (void)initializeCachePathOnMainQueue;
@end

@implementation CHIconCache

+ (void)initializeCachePathOnMainQueue
{
  if (+[NSThread isMainThread])
  {
    v2 = sub_100109BB4();
  }

  else
  {

    dispatch_sync(&_dispatch_main_q, &stru_10083D108);
  }
}

+ (void)_fetchIconFromNRGWithParameters:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleID];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1001350A4;
  v31 = sub_1001350B4;
  v32 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = +[ACXDeviceConnection sharedDeviceConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001350BC;
  v24[3] = &unk_10083D130;
  v26 = &v27;
  v10 = v8;
  v25 = v10;
  [v9 fetchWatchAppBundleIDForCompanionAppBundleID:v7 completion:v24];

  v11 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v10, v11);
  v12 = +[UIScreen mainScreen];
  v13 = [v12 traitCollection];
  [v13 displayScale];
  if (v14 <= 2.0)
  {
    v15 = [v5 iconVariant2x];
  }

  else
  {
    v15 = [v5 iconVariant3x];
  }

  v16 = v15;

  v17 = +[NanoResourceGrabber sharedInstance];
  if (v28[5])
  {
    v18 = v28[5];
  }

  else
  {
    v18 = v7;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10013511C;
  v21[3] = &unk_10083D158;
  v19 = v5;
  v22 = v19;
  v20 = v6;
  v23 = v20;
  [v17 getIconForBundleID:v18 iconVariant:v16 block:v21 timeout:20.0];

  _Block_object_dispose(&v27, 8);
}

+ (void)_fetchRoundIconWithParameters:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100135290;
  v8[3] = &unk_10083D158;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [a1 _fetchIconFromNRGWithParameters:v7 completion:v8];
}

+ (void)_fetchIconFromLaunchServicesWithParameters:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1001350A4;
  v15 = sub_1001350B4;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013559C;
  v8[3] = &unk_10083D180;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  dispatch_sync(&_dispatch_main_q, v8);
  v6[2](v6, v12[5]);

  _Block_object_dispose(&v11, 8);
}

+ (void)_fetchChicletWithParameters:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100135790;
  v8[3] = &unk_10083D158;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [a1 _fetchIconFromLaunchServicesWithParameters:v7 completion:v8];
}

+ (void)fetchWatchIconWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [a1 initializeCachePathOnMainQueue];
    [v6 setNeedsWatchIcon:1];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1001350A4;
    v24 = sub_1001350B4;
    v25 = 0;
    v8 = sub_1000B982C(v6);
    v9 = sub_100135BDC();
    v10 = [v9 objectForKey:v8];
    v11 = v21[5];
    v21[5] = v10;

    if (v21[5])
    {
      _HKInitializeLogging();
      v12 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Source icon for cacheID: %@ is available in-memory.", buf, 0xCu);
      }

      v7[2](v7, v21[5], 0);
    }

    else
    {
      v13 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100135C20;
      block[3] = &unk_10083D1F8;
      v19 = a1;
      v15 = v6;
      v18 = &v20;
      v16 = v8;
      v17 = v7;
      dispatch_async(v13, block);
    }

    _Block_object_dispose(&v20, 8);
  }
}

+ (id)fetchWatchIconWithParameters:(id)a3
{
  v4 = a3;
  [a1 initializeCachePathOnMainQueue];
  [v4 setNeedsWatchIcon:1];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001350A4;
  v27 = sub_1001350B4;
  v28 = 0;
  v5 = sub_1000B982C(v4);
  v6 = sub_100135BDC();
  v7 = [v6 objectForKey:v5];
  v8 = v24[5];
  v24[5] = v7;

  if (v24[5])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Source icon for cacheID: %@ is available in-memory.", &buf, 0xCu);
    }

    v10 = v24[5];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_1001350A4;
    v32 = sub_1001350B4;
    v33 = 0;
    v11 = dispatch_semaphore_create(0);
    v12 = sub_1001361AC();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001361F0;
    v16[3] = &unk_10083D248;
    v22 = a1;
    v17 = v4;
    v20 = &v23;
    p_buf = &buf;
    v18 = v5;
    v19 = v11;
    v13 = v11;
    dispatch_async(v12, v16);

    v14 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v13, v14);
    v10 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v23, 8);

  return v10;
}

+ (void)fetchPhoneIconWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [a1 initializeCachePathOnMainQueue];
    [v6 setNeedsWatchIcon:0];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1001350A4;
    v24 = sub_1001350B4;
    v25 = 0;
    v8 = sub_1000B982C(v6);
    v9 = sub_100135BDC();
    v10 = [v9 objectForKey:v8];
    v11 = v21[5];
    v21[5] = v10;

    if (v21[5])
    {
      _HKInitializeLogging();
      v12 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Source icon for cacheID: %@ is available in-memory.", buf, 0xCu);
      }

      v7[2](v7, v21[5], 0);
    }

    else
    {
      v13 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001366B0;
      block[3] = &unk_10083D1F8;
      v19 = a1;
      v15 = v6;
      v18 = &v20;
      v16 = v8;
      v17 = v7;
      dispatch_async(v13, block);
    }

    _Block_object_dispose(&v20, 8);
  }
}

+ (id)fetchPhoneIconWithParameters:(id)a3
{
  v4 = a3;
  [a1 initializeCachePathOnMainQueue];
  [v4 setNeedsWatchIcon:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001350A4;
  v27 = sub_1001350B4;
  v28 = 0;
  v5 = sub_1000B982C(v4);
  v6 = sub_100135BDC();
  v7 = [v6 objectForKey:v5];
  v8 = v24[5];
  v24[5] = v7;

  if (v24[5])
  {
    _HKInitializeLogging();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Source icon for cacheID: %@ is available in-memory.", &buf, 0xCu);
    }

    v10 = v24[5];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_1001350A4;
    v32 = sub_1001350B4;
    v33 = 0;
    v11 = dispatch_semaphore_create(0);
    v12 = sub_1001361AC();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100136C3C;
    v16[3] = &unk_10083D248;
    v22 = a1;
    v17 = v4;
    v20 = &v23;
    p_buf = &buf;
    v18 = v5;
    v19 = v11;
    v13 = v11;
    dispatch_async(v12, v16);

    v14 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v13, v14);
    v10 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v23, 8);

  return v10;
}

@end