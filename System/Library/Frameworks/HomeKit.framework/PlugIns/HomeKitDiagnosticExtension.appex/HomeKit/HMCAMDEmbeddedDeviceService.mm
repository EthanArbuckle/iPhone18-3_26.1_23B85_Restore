@interface HMCAMDEmbeddedDeviceService
+ (id)logCategory;
+ (void)confirmSemaphoreAndSignal:(id)a3;
- (BOOL)testCommunication;
- (id)_initAsRoot:(BOOL)a3;
- (id)performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 error:(id *)a6;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_fireActualBlockWithArguments:(id)a3 forKey:(id)a4;
- (void)_performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 reply:(id)a6;
- (void)_removeActualBlockForKey:(id)a3;
- (void)blockReleased:(id)a3;
- (void)dealloc;
- (void)resetConnection;
- (void)start;
@end

@implementation HMCAMDEmbeddedDeviceService

- (void)_performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableArray array];
  if (v12)
  {
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001616C;
    v24[3] = &unk_100030E98;
    v24[4] = self;
    v25 = v14;
    v16 = v15;
    v26 = v16;
    [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v22.receiver = self;
  v22.super_class = HMCAMDEmbeddedDeviceService;
  v23 = 0;
  v18 = [(HMCAMDEmbeddedDevice *)&v22 performCommandFromClass:v10 method:v11 arguments:v17 error:&v23];
  v19 = v23;
  if (v19 && [v14 count])
  {
    v20 = +[NSNotificationCenter defaultCenter];
    v27 = @"blocks";
    v28 = v14;
    v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v20 postNotificationName:@"kCAMDBlockReleasedNotification" object:0 userInfo:v21];
  }

  v13[2](v13, v18, v19);
}

- (void)_removeActualBlockForKey:(id)a3
{
  v4 = a3;
  [*(&self->_invalidationHandler + 1) removeBlockForKey:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(&self->_invalidationHandler + 1) count];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Removed block (%lu) on client for key %@.", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_fireActualBlockWithArguments:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Firing block on client for key %@.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [*(&v9->_invalidationHandler + 1) invokeForwardedBlockWithArguments:v6 forKey:v7];
}

- (BOOL)testCommunication
{
  v3 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = *&self->_isValid;
  *&self->_isValid = 5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016894;
  v15[3] = &unk_100030E20;
  v17 = &v18;
  v5 = v3;
  v16 = v5;
  v6 = objc_retainBlock(v15);
  v7 = [(HMCAMDEmbeddedDeviceService *)self remoteObjectProxyWithErrorHandler:v6];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000168B4;
  v12[3] = &unk_100030E70;
  v14 = &v18;
  v8 = v5;
  v13 = v8;
  [v7 _testCommunication:v12];

  v9 = dispatch_time(0, 1000000000 * *&self->_isValid);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = 0;
    *(v19 + 24) = 0;
  }

  else
  {
    v10 = *(v19 + 24);
  }

  *&self->_isValid = v4;

  _Block_object_dispose(&v18, 8);
  return v10 & 1;
}

- (id)performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((self->_backoffTimer & 0x10000) != 0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = sub_1000159C8;
    v42 = sub_1000159D8;
    v43 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1000159C8;
    v37 = sub_1000159D8;
    v38 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100016C90;
    v30[3] = &unk_100030E20;
    v32 = &v33;
    v13 = dispatch_semaphore_create(0);
    v31 = v13;
    v14 = objc_retainBlock(v30);
    v15 = [(HMCAMDEmbeddedDeviceService *)self remoteObjectProxyWithErrorHandler:v14];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100016CE8;
    v26[3] = &unk_100030E48;
    p_buf = &buf;
    v29 = &v33;
    v16 = v13;
    v27 = v16;
    [v15 _performCommandFromClass:v10 method:v11 arguments:v12 reply:v26];

    v17 = dispatch_time(0, 1000000000 * *&self->_isValid);
    v18 = dispatch_semaphore_wait(v16, v17);
    if (a6 && v18)
    {
      v19 = [NSError hmfErrorWithCode:13];
    }

    else
    {
      if (!a6)
      {
LABEL_12:
        v24 = *(*(&buf + 1) + 40);

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_14;
      }

      v19 = v34[5];
    }

    *a6 = v19;
    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@Attempted to invoke a service command when HMDCAMDEmbeddedDeviceService is not started or connection is invalid. Start the service and then retry.", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  if (a6)
  {
    [NSError hmfErrorWithCode:11];
    *a6 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_14:

  return v24;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = *(&self->super._filterNSDataLogging + 1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016E34;
  v9[3] = &unk_100030DF8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)resetConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if ((v2->_backoffTimer & 0x10000) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v2;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(&v4->_connection + 1);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting connection to server (waited %lu seconds).", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    *(&v4->_connection + 1) = (*(&v4->_connection + 1) * 2);
    v8 = *(&v4->super._filterNSDataLogging + 1);
    if (v8)
    {
      *(&v4->super._filterNSDataLogging + 1) = 0;

      BYTE2(v2->_backoffTimer) = 0;
    }

    [(HMCAMDEmbeddedDeviceService *)v4 start];
  }

  objc_sync_exit(v2);
}

- (void)start
{
  v2 = self;
  objc_sync_enter(v2);
  if (*(&v2->super._filterNSDataLogging + 1) && BYTE2(v2->_backoffTimer) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v2;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Server connection already started and valid. Reset connection if needed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    *(&v2->_connection + 1) = 2;
    if (BYTE1(v2->_backoffTimer))
    {
      v7 = @"com.apple.coreautomationd.xpc.root";
    }

    else
    {
      v7 = @"com.apple.coreautomationd.xpc.mobile";
    }

    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = v2;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Starting connection to service %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [[NSXPCConnection alloc] initWithMachServiceName:v8 options:4096];
    v14 = *(&v2->super._filterNSDataLogging + 1);
    *(&v2->super._filterNSDataLogging + 1) = v13;

    v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HMCAMDEmbeddedDeviceServerProxy];
    [*(&v2->super._filterNSDataLogging + 1) setRemoteObjectInterface:v15];

    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HMCAMDEmbeddedDeviceClientProxy];
    [*(&v2->super._filterNSDataLogging + 1) setExportedInterface:v16];

    [*(&v2->super._filterNSDataLogging + 1) setExportedObject:v10];
    objc_initWeak(buf, v10);
    v17 = *(&v2->super._filterNSDataLogging + 1);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000174B8;
    v24[3] = &unk_100030DD0;
    objc_copyWeak(&v25, buf);
    [v17 setInvalidationHandler:v24];
    v18 = *(&v2->super._filterNSDataLogging + 1);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100017640;
    v22 = &unk_100030DD0;
    objc_copyWeak(&v23, buf);
    [v18 setInterruptionHandler:&v19];
    [*(&v2->super._filterNSDataLogging + 1) resume];
    BYTE2(v10->_backoffTimer) = 1;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v2);
}

- (void)blockReleased:(id)a3
{
  v4 = [a3 userInfo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"blocks"];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017BB0;
    v7[3] = &unk_100030DA8;
    v7[4] = self;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"kCAMDBlockReleasedNotification" object:0];

  v4 = *(&self->super._filterNSDataLogging + 1);
  if (v4 && BYTE2(self->_backoffTimer) == 1)
  {
    [v4 invalidate];
  }

  v5.receiver = self;
  v5.super_class = HMCAMDEmbeddedDeviceService;
  [(HMCAMDEmbeddedDeviceService *)&v5 dealloc];
}

- (id)_initAsRoot:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HMCAMDEmbeddedDeviceService;
  v4 = [(HMCAMDEmbeddedDevice *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4[33] = a3;
    v4[34] = 0;
    v4[35] = 1;
    *(v4 + 41) = 900;
    *(v4 + 25) = 2;
    v6 = [[HMCAMDBlockManager alloc] initWithService:v4];
    v7 = *(v5 + 65);
    *(v5 + 65) = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"blockReleased:" name:@"kCAMDBlockReleasedNotification" object:0];
  }

  return v5;
}

+ (id)logCategory
{
  if (qword_10003B280 != -1)
  {
    dispatch_once(&qword_10003B280, &stru_100030EB8);
  }

  v3 = qword_10003B288;

  return v3;
}

+ (void)confirmSemaphoreAndSignal:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = +[NSThread callStackSymbols];
      v11 = 138543874;
      v12 = v9;
      v13 = 2048;
      v14 = 0;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Semaphore [%p] is nil.\n%@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

@end