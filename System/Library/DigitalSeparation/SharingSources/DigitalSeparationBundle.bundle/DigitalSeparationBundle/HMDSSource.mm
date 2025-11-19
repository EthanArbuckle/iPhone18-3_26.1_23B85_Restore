@interface HMDSSource
+ (id)logCategory;
- (HMDSSource)init;
- (HMDSSource)initWithContext:(id)a3;
- (void)_performBlock:(id)a3;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation HMDSSource

- (void)_performBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDSSource *)self context];
  v6 = [v5 didUpdateHomesFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3C7C;
  v9[3] = &unk_C600;
  v10 = v4;
  v7 = v4;
  v8 = [v6 addCompletionBlock:v9];
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@Stopping sharing with participant: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3E30;
  v15[3] = &unk_C5D8;
  v16 = v6;
  v17 = v10;
  v18 = v8;
  v13 = v8;
  v14 = v6;
  [(HMDSSource *)v10 _performBlock:v15];
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@Stopping sharing resource: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4204;
  v15[3] = &unk_C5D8;
  v16 = v6;
  v17 = v10;
  v18 = v8;
  v13 = v8;
  v14 = v6;
  [(HMDSSource *)v10 _performBlock:v15];
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping all sharing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4598;
  v11[3] = &unk_C4E8;
  v11[4] = v7;
  v12 = v5;
  v10 = v5;
  [(HMDSSource *)v7 _performBlock:v11];
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching shared resources", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSSource *)v7 context];
  v11 = [v10 refreshData];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4ABC;
  v14[3] = &unk_C510;
  v14[4] = v7;
  v15 = v5;
  v12 = v5;
  v13 = [v11 addCompletionBlock:v14];
}

- (HMDSSource)init
{
  v3 = +[HMMutableHomeManagerConfiguration defaultPrivateConfiguration];
  [v3 setOptions:11];
  [v3 setAdaptive:1];
  [v3 setCachePolicy:0];
  v4 = [[HMHomeManager alloc] initWithConfiguration:v3];
  v5 = [[HMDSContext alloc] initWithHomeManager:v4];
  v6 = [(HMDSSource *)self initWithContext:v5];

  return v6;
}

- (HMDSSource)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDSSource;
  v6 = [(HMDSSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (qword_11988 != -1)
  {
    dispatch_once(&qword_11988, &stru_C620);
  }

  v3 = qword_11990;

  return v3;
}

@end