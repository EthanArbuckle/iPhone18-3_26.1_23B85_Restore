@interface HMDSSource
+ (id)logCategory;
- (HMDSSource)init;
- (HMDSSource)initWithContext:(id)context;
- (void)_performBlock:(id)block;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation HMDSSource

- (void)_performBlock:(id)block
{
  blockCopy = block;
  context = [(HMDSSource *)self context];
  didUpdateHomesFuture = [context didUpdateHomesFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3C7C;
  v9[3] = &unk_C600;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [didUpdateHomesFuture addCompletionBlock:v9];
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  if (!participantCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = participantCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@Stopping sharing with participant: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3E30;
  v15[3] = &unk_C5D8;
  v16 = participantCopy;
  v17 = selfCopy;
  v18 = v8;
  v13 = v8;
  v14 = participantCopy;
  [(HMDSSource *)selfCopy _performBlock:v15];
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  sharingCopy = sharing;
  completionCopy = completion;
  if (!sharingCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = sharingCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@Stopping sharing resource: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4204;
  v15[3] = &unk_C5D8;
  v16 = sharingCopy;
  v17 = selfCopy;
  v18 = v8;
  v13 = v8;
  v14 = sharingCopy;
  [(HMDSSource *)selfCopy _performBlock:v15];
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = completionCopy;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v11[4] = selfCopy;
  v12 = v5;
  v10 = v5;
  [(HMDSSource *)selfCopy _performBlock:v11];
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = completionCopy;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching shared resources", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  context = [(HMDSSource *)selfCopy context];
  refreshData = [context refreshData];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4ABC;
  v14[3] = &unk_C510;
  v14[4] = selfCopy;
  v15 = v5;
  v12 = v5;
  v13 = [refreshData addCompletionBlock:v14];
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

- (HMDSSource)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMDSSource;
  v6 = [(HMDSSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
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