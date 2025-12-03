@interface HMLocationEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (CLRegion)region;
- (HMLocationEvent)initWithCoder:(id)coder;
- (HMLocationEvent)initWithDict:(id)dict region:(id)region;
- (HMLocationEvent)initWithRegion:(CLRegion *)region;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)__configureWithContext:(id)context eventTrigger:(id)trigger;
- (void)_handleLocationAuthorizationUpdatedNotification:(id)notification;
- (void)_retrieveLocationEvent;
- (void)_unconfigure;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setRegion:(id)region;
- (void)updateRegion:(CLRegion *)region completionHandler:(void *)completion;
@end

@implementation HMLocationEvent

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableLocationEvent alloc];
  region = [(HMLocationEvent *)self region];
  v6 = [(HMLocationEvent *)v4 initWithRegion:region];

  return v6;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hm_regionFromDataForKey:@"kLocationEventRegionKey"];
  v6 = [[HMLocationEvent alloc] initWithDict:dictionaryCopy region:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMLocationEvent alloc];
  region = [(HMLocationEvent *)self region];
  v6 = [(HMLocationEvent *)v4 initWithRegion:region];

  return v6;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = HMLocationEvent;
  LOBYTE(v5) = [(HMEvent *)&v15 mergeFromNewObject:objectCopy];
  v6 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    region = [(HMLocationEvent *)self region];
    region2 = [v8 region];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      region3 = [v8 region];
      [(HMLocationEvent *)self setRegion:region3];

      region4 = [(HMLocationEvent *)self region];
      v5 = HMFEqualObjects() ^ 1;
    }
  }

  return v5;
}

- (HMLocationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMLocationEvent;
  v5 = [(HMEvent *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.locationEventRegion"];
    _initLocationEventWithRegion(v5, v6);
  }

  return v5;
}

- (void)_handleLocationAuthorizationUpdatedNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = [(HMEvent *)self context];
  if (context)
  {
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = object;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    isAuthorized = [v8 isAuthorized];
    queue = [context queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__HMLocationEvent__handleLocationAuthorizationUpdatedNotification___block_invoke;
    v16[3] = &unk_1E7549C80;
    v17 = isAuthorized;
    v16[4] = self;
    dispatch_async(queue, v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMLocationEvent _handleLocationAuthorizationUpdatedNotification:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __67__HMLocationEvent__handleLocationAuthorizationUpdatedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if ([*(a1 + 32) locationAuthorization] != v3)
  {
    [*(a1 + 32) setLocationAuthorization:v3];
    v4 = *(a1 + 32);
    if (v2)
    {

      [v4 _retrieveLocationEvent];
    }

    else
    {
      [v4 setRegion:0];
      v5 = [*(a1 + 32) eventTrigger];
      [v5 setLastFireDate:0];
    }
  }
}

- (void)_updateFromDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = HMLocationEvent;
  [(HMEvent *)&v14 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy hmf_dataForKey:@"kLocationEventRegionKey"];
  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
    v7 = v13;
    if (v6)
    {
      [(HMLocationEvent *)self setRegion:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v16 = v11;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region from encoded data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v9.receiver = self;
  v9.super_class = HMLocationEvent;
  _serializeForAdd = [(HMEvent *)&v9 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  region = [(HMLocationEvent *)self region];
  v6 = encodeRootObject(region);
  [v4 setObject:v6 forKeyedSubscript:@"kLocationEventRegionKey"];

  v7 = [v4 copy];

  return v7;
}

- (void)_retrieveLocationEvent
{
  v20 = *MEMORY[0x1E69E9840];
  context = [(HMEvent *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A10]);
    v5 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMEvent *)self uuid];
    v7 = [v5 initWithTarget:uuid];
    v8 = [v4 initWithName:@"kRetrieveLocationEventRequestKey" destination:v7 payload:0];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__HMLocationEvent__retrieveLocationEvent__block_invoke;
    v15[3] = &unk_1E754CD98;
    v15[4] = self;
    [v8 setResponseHandler:v15];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2080;
      v19 = "[HMLocationEvent _retrieveLocationEvent]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __41__HMLocationEvent__retrieveLocationEvent__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 hm_regionFromDataForKey:@"kLocationEventRegionKey"];
  [*(a1 + 32) setRegion:v8];
  v5 = [*(a1 + 32) eventTrigger];
  v6 = [v4 hmf_dateForKey:@"kTriggerLastFireDateKey"];

  [v5 setLastFireDate:v6];
  v7 = [v5 home];
  [v7 _notifyDelegateOfTriggerUpdated:v5];
}

- (void)updateRegion:(CLRegion *)region completionHandler:(void *)completion
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = region;
  v7 = completion;
  context = [(HMEvent *)self context];
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLocationEvent updateRegion:completionHandler:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v9 = context;
  if (context)
  {
    if ((HMIsValidRegion(v6) & 1) == 0)
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      v39 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
      v40 = [v37 exceptionWithName:v38 reason:v39 userInfo:0];
      v41 = v40;

      objc_exception_throw(v40);
    }

    eventTrigger = [(HMEvent *)self eventTrigger];
    v11 = eventTrigger;
    if (!eventTrigger || ([eventTrigger home], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      delegateCaller = [v9 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:v7 error:v20];

LABEL_11:
      goto LABEL_19;
    }

    region = [(HMLocationEvent *)self region];
    v14 = [region isEqual:v6];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v18;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Region is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:v7 error:0];
      goto LABEL_11;
    }

    v25 = encodeRootObject(v6);
    v26 = v25;
    if (v25)
    {
      v42 = @"kLocationEventRegionKey";
      v43 = v25;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(HMEvent *)self _updateEventWithPayload:v27 completionHandler:v7];
    }

    else
    {
      delegateCaller2 = [v9 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller2 callCompletion:v7 error:v29];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v24;
      v46 = 2080;
      v47 = "[HMLocationEvent updateRegion:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v11);
  }

LABEL_19:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock_with_options();
  if (self->_locationAuthorization == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = regionCopy;
  }

  region = self->_region;
  self->_region = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (CLRegion)region
{
  os_unfair_lock_lock_with_options();
  v3 = self->_region;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)__configureWithContext:(id)context eventTrigger:(id)trigger
{
  triggerCopy = trigger;
  v18.receiver = self;
  v18.super_class = HMLocationEvent;
  [(HMEvent *)&v18 __configureWithContext:context eventTrigger:triggerCopy];
  if (context)
  {
    home = [triggerCopy home];
    homeManager = [home homeManager];
    configuration = [homeManager configuration];
    locationAuthorization = [configuration locationAuthorization];

    if (locationAuthorization)
    {
      selfCopy = self;
      v12 = locationAuthorization;
      v13 = selfCopy->_authorization;
      if (v13 != v12)
      {
        objc_storeStrong(&selfCopy->_authorization, locationAuthorization);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v15 = *MEMORY[0x1E69A2998];
        [defaultCenter addObserver:selfCopy selector:sel__handleLocationAuthorizationUpdatedNotification_ name:*MEMORY[0x1E69A2998] object:v12];

        [(HMFLocationAuthorization *)v12 registerObserver:selfCopy];
        if (v13)
        {
          [(HMFLocationAuthorization *)v13 unregisterObserver:selfCopy];
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 removeObserver:selfCopy name:v15 object:v13];
        }
      }
    }

    else
    {
      v12 = self->_authorization;
    }

    if (([(HMFLocationAuthorization *)v12 isAuthorized]& 1) == 0)
    {
      [(HMLocationEvent *)self setLocationAuthorization:2];
      [(HMLocationEvent *)self setRegion:0];
      lastFireDate = [triggerCopy lastFireDate];

      if (lastFireDate)
      {
        [triggerCopy setLastFireDate:0];
      }
    }
  }
}

- (void)_unconfigure
{
  v3.receiver = self;
  v3.super_class = HMLocationEvent;
  [(HMEvent *)&v3 _unconfigure];
  [(HMFLocationAuthorization *)self->_authorization unregisterObserver:self];
}

- (HMLocationEvent)initWithRegion:(CLRegion *)region
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = region;
  if ((HMIsValidRegion(v4) & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15 = @"kEventUUIDKey";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v16[0] = uUID;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v7 = [(HMLocationEvent *)self initWithDict:v6 region:v4];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (HMLocationEvent)initWithDict:(id)dict region:(id)region
{
  regionCopy = region;
  v10.receiver = self;
  v10.super_class = HMLocationEvent;
  v7 = [(HMEvent *)&v10 initWithDict:dict];
  v8 = v7;
  if (v7)
  {
    _initLocationEventWithRegion(v7, regionCopy);
  }

  return v8;
}

@end