@interface HomeKitDiagnosticExtension
+ (id)logCategory;
- (HomeKitDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeKitDiagnosticExtension

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@homeManagerDidUpdateHomes called, home data is populated", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    homeSyncGroup = v6->_homeSyncGroup;
  }

  else
  {
    homeSyncGroup = 0;
  }

  dispatch_group_leave(homeSyncGroup);
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v6 UTF8String];
  v7 = os_transaction_create();

  v8 = [v4 hmf_BOOLForKey:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    *buf = 138543618;
    v65 = v12;
    v66 = 2112;
    v67 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Starting collection (allowSensitive = %@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (v10)
  {
    dispatch_group_enter(v10->_homeSyncGroup);
    v14 = [[HMHomeManager alloc] initWithOptions:64];
    objc_storeStrong(&v10->_homeManager, v14);

    [(HMHomeManager *)v10->_homeManager setDelegate:v10];
    homeSyncGroup = v10->_homeSyncGroup;
  }

  else
  {
    dispatch_group_enter(0);

    [0 setDelegate:0];
    homeSyncGroup = 0;
  }

  v16 = homeSyncGroup;
  v17 = dispatch_time(0, 60000000000);
  v18 = dispatch_group_wait(v16, v17);

  if (v10)
  {
    homeManager = v10->_homeManager;
  }

  else
  {
    homeManager = 0;
  }

  v20 = homeManager;
  v21 = [(HMHomeManager *)v20 currentAccessory];
  if (v10)
  {
    objc_storeStrong(&v10->_currentAccessory, v21);
  }

  if (v18)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve home data, but continuing anyway.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100018B50;
  v63[3] = &unk_100030F08;
  v63[4] = v10;
  sub_100018D60(v10, @"Prepare", v63);
  +[NSMutableArray array];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100018F78;
  v26 = v60[3] = &unk_100030F30;
  v61 = v26;
  v62 = v10;
  sub_100018D60(v10, @"HomeKit Logs", v60);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000190B8;
  v57[3] = &unk_100030F30;
  v27 = v26;
  v58 = v27;
  v59 = v10;
  sub_100018D60(v10, @"Memgraphs", v57);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = nullsub_1;
  v55[3] = &unk_100030F30;
  v55[4] = v10;
  v28 = v27;
  v56 = v28;
  sub_100018D60(v10, @"Endpoint Assignments", v55);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000194D8;
  v53[3] = &unk_100030F30;
  v53[4] = v10;
  v29 = v28;
  v54 = v29;
  sub_100018D60(v10, @"Dispatch Queue Information (ddt)", v53);
  if (v8)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000195A4;
    v51[3] = &unk_100030F30;
    v51[4] = v10;
    v30 = &v52;
    v31 = v29;
    v52 = v31;
    sub_100018D60(v10, @"HomeUtil dump all", v51);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100019608;
    v48[3] = &unk_100030F30;
    v32 = v31;
    v49 = v32;
    v50 = v10;
    sub_100018D60(v10, @"Database Files", v48);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001A6B0;
    v45[3] = &unk_100030F30;
    v33 = v32;
    v46 = v33;
    v47 = v10;
    sub_100018D60(v10, @"Network Diagnostics", v45);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001ADFC;
    v43[3] = &unk_100030F30;
    v43[4] = v10;
    v44 = v33;
    sub_100018D60(v10, @"Video Analysis Session Logs", v43);
  }

  else
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001BAB8;
    v41[3] = &unk_100030F30;
    v41[4] = v10;
    v30 = &v42;
    v42 = v29;
    sub_100018D60(v10, @"HomeUtil dump all", v41);
  }

  v34 = objc_autoreleasePoolPush();
  v35 = v10;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}@Finished collection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v34);
  v38 = v54;
  v39 = v29;

  return v29;
}

- (HomeKitDiagnosticExtension)init
{
  v8.receiver = self;
  v8.super_class = HomeKitDiagnosticExtension;
  v2 = [(HomeKitDiagnosticExtension *)&v8 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.HomeKitDiagnosticExtension.client_queue", v3);

  if (v2)
  {
    objc_storeStrong(&v2->_workQueue, v4);
    v5 = dispatch_group_create();
    homeSyncGroup = v2->_homeSyncGroup;
    v2->_homeSyncGroup = v5;
  }

  return v2;
}

+ (id)logCategory
{
  if (qword_10003B2A0 != -1)
  {
    dispatch_once(&qword_10003B2A0, &stru_100031158);
  }

  v3 = qword_10003B2A8;

  return v3;
}

@end