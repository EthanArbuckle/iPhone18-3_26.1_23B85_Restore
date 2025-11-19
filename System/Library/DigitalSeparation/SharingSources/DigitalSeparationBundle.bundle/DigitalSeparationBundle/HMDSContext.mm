@interface HMDSContext
+ (id)logCategory;
- (HMDSContext)initWithHomeManager:(id)a3;
- (NSArray)homes;
- (id)cancelInvitation:(id)a3;
- (id)refreshData;
- (id)removeSimpleLabelAccessCode:(id)a3 fromHome:(id)a4;
- (id)removeUser:(id)a3 fromHome:(id)a4;
- (id)simpleLabelAccessCodesForHome:(id)a3;
- (unint64_t)dataSyncState;
- (unint64_t)status;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HMDSContext

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
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@Received did update homes callback", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDSContext *)v6 didUpdateHomesFuture];
  [v9 finishWithNoResult];
}

- (id)cancelInvitation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NAFuture);
  v5 = [v4 errorOnlyCompletionHandlerAdapter];
  [v3 cancelInviteWithCompletionHandler:v5];

  return v4;
}

- (id)removeUser:(id)a3 fromHome:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NAFuture);
  v8 = [v7 errorOnlyCompletionHandlerAdapter];
  [v5 removeUserWithoutConfirmation:v6 completionHandler:v8];

  return v7;
}

- (id)removeSimpleLabelAccessCode:(id)a3 fromHome:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NAFuture);
  v9 = [v6 createAccessCodeManager];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_59F0;
  v14[3] = &unk_C6D0;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [v9 removeSimpleLabelAccessCode:v7 completion:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

- (id)simpleLabelAccessCodesForHome:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NAFuture);
  v5 = [v3 createAccessCodeManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5C24;
  v8[3] = &unk_C6A8;
  v6 = v4;
  v9 = v6;
  [v5 fetchHomeAccessCodesWithCompletion:v8];

  return v6;
}

- (id)refreshData
{
  v3 = objc_alloc_init(NAFuture);
  v4 = [(HMDSContext *)self homeManager];
  v5 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  v6 = [v3 errorOnlyCompletionHandlerAdapter];
  v7 = [v4 _refreshBeforeDate:v5 completionHandler:v6];

  return v3;
}

- (unint64_t)dataSyncState
{
  v2 = [(HMDSContext *)self homeManager];
  v3 = [v2 dataSyncState];

  return v3;
}

- (unint64_t)status
{
  v2 = [(HMDSContext *)self homeManager];
  v3 = [v2 status];

  return v3;
}

- (NSArray)homes
{
  v2 = [(HMDSContext *)self homeManager];
  v3 = [v2 homes];

  return v3;
}

- (HMDSContext)initWithHomeManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDSContext;
  v6 = [(HMDSContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeManager, a3);
    [(HMHomeManager *)v7->_homeManager setDelegate:v7];
    v8 = objc_alloc_init(NAFuture);
    didUpdateHomesFuture = v7->_didUpdateHomesFuture;
    v7->_didUpdateHomesFuture = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (qword_119A8 != -1)
  {
    dispatch_once(&qword_119A8, &stru_C710);
  }

  v3 = qword_119B0;

  return v3;
}

@end