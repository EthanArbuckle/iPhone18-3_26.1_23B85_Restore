@interface HMDSContext
+ (id)logCategory;
- (HMDSContext)initWithHomeManager:(id)manager;
- (NSArray)homes;
- (id)cancelInvitation:(id)invitation;
- (id)refreshData;
- (id)removeSimpleLabelAccessCode:(id)code fromHome:(id)home;
- (id)removeUser:(id)user fromHome:(id)home;
- (id)simpleLabelAccessCodesForHome:(id)home;
- (unint64_t)dataSyncState;
- (unint64_t)status;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HMDSContext

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@Received did update homes callback", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  didUpdateHomesFuture = [(HMDSContext *)selfCopy didUpdateHomesFuture];
  [didUpdateHomesFuture finishWithNoResult];
}

- (id)cancelInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = objc_alloc_init(NAFuture);
  errorOnlyCompletionHandlerAdapter = [v4 errorOnlyCompletionHandlerAdapter];
  [invitationCopy cancelInviteWithCompletionHandler:errorOnlyCompletionHandlerAdapter];

  return v4;
}

- (id)removeUser:(id)user fromHome:(id)home
{
  homeCopy = home;
  userCopy = user;
  v7 = objc_alloc_init(NAFuture);
  errorOnlyCompletionHandlerAdapter = [v7 errorOnlyCompletionHandlerAdapter];
  [homeCopy removeUserWithoutConfirmation:userCopy completionHandler:errorOnlyCompletionHandlerAdapter];

  return v7;
}

- (id)removeSimpleLabelAccessCode:(id)code fromHome:(id)home
{
  homeCopy = home;
  codeCopy = code;
  v8 = objc_alloc_init(NAFuture);
  createAccessCodeManager = [homeCopy createAccessCodeManager];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_59F0;
  v14[3] = &unk_C6D0;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [createAccessCodeManager removeSimpleLabelAccessCode:codeCopy completion:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

- (id)simpleLabelAccessCodesForHome:(id)home
{
  homeCopy = home;
  v4 = objc_alloc_init(NAFuture);
  createAccessCodeManager = [homeCopy createAccessCodeManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5C24;
  v8[3] = &unk_C6A8;
  v6 = v4;
  v9 = v6;
  [createAccessCodeManager fetchHomeAccessCodesWithCompletion:v8];

  return v6;
}

- (id)refreshData
{
  v3 = objc_alloc_init(NAFuture);
  homeManager = [(HMDSContext *)self homeManager];
  v5 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  errorOnlyCompletionHandlerAdapter = [v3 errorOnlyCompletionHandlerAdapter];
  v7 = [homeManager _refreshBeforeDate:v5 completionHandler:errorOnlyCompletionHandlerAdapter];

  return v3;
}

- (unint64_t)dataSyncState
{
  homeManager = [(HMDSContext *)self homeManager];
  dataSyncState = [homeManager dataSyncState];

  return dataSyncState;
}

- (unint64_t)status
{
  homeManager = [(HMDSContext *)self homeManager];
  status = [homeManager status];

  return status;
}

- (NSArray)homes
{
  homeManager = [(HMDSContext *)self homeManager];
  homes = [homeManager homes];

  return homes;
}

- (HMDSContext)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HMDSContext;
  v6 = [(HMDSContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeManager, manager);
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