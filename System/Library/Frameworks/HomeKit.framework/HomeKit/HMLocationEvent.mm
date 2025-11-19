@interface HMLocationEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (CLRegion)region;
- (HMLocationEvent)initWithCoder:(id)a3;
- (HMLocationEvent)initWithDict:(id)a3 region:(id)a4;
- (HMLocationEvent)initWithRegion:(CLRegion *)region;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)__configureWithContext:(id)a3 eventTrigger:(id)a4;
- (void)_handleLocationAuthorizationUpdatedNotification:(id)a3;
- (void)_retrieveLocationEvent;
- (void)_unconfigure;
- (void)_updateFromDictionary:(id)a3;
- (void)setRegion:(id)a3;
- (void)updateRegion:(CLRegion *)region completionHandler:(void *)completion;
@end

@implementation HMLocationEvent

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableLocationEvent alloc];
  v5 = [(HMLocationEvent *)self region];
  v6 = [(HMLocationEvent *)v4 initWithRegion:v5];

  return v6;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v4 = a3;
  v5 = [v4 hm_regionFromDataForKey:@"kLocationEventRegionKey"];
  v6 = [[HMLocationEvent alloc] initWithDict:v4 region:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMLocationEvent alloc];
  v5 = [(HMLocationEvent *)self region];
  v6 = [(HMLocationEvent *)v4 initWithRegion:v5];

  return v6;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMLocationEvent;
  LOBYTE(v5) = [(HMEvent *)&v15 mergeFromNewObject:v4];
  v6 = v4;
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
    v9 = [(HMLocationEvent *)self region];
    v10 = [v8 region];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 region];
      [(HMLocationEvent *)self setRegion:v12];

      v13 = [(HMLocationEvent *)self region];
      v5 = HMFEqualObjects() ^ 1;
    }
  }

  return v5;
}

- (HMLocationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMLocationEvent;
  v5 = [(HMEvent *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.locationEventRegion"];
    _initLocationEventWithRegion(v5, v6);
  }

  return v5;
}

- (void)_handleLocationAuthorizationUpdatedNotification:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMEvent *)self context];
  if (v5)
  {
    v6 = [v4 object];
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

    v9 = [v8 isAuthorized];
    v10 = [v5 queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__HMLocationEvent__handleLocationAuthorizationUpdatedNotification___block_invoke;
    v16[3] = &unk_1E7549C80;
    v17 = v9;
    v16[4] = self;
    dispatch_async(v10, v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)_updateFromDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMLocationEvent;
  [(HMEvent *)&v14 _updateFromDictionary:v4];
  v5 = [v4 hmf_dataForKey:@"kLocationEventRegionKey"];
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
      v9 = self;
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
  v3 = [(HMEvent *)&v9 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMLocationEvent *)self region];
  v6 = encodeRootObject(v5);
  [v4 setObject:v6 forKeyedSubscript:@"kLocationEventRegionKey"];

  v7 = [v4 copy];

  return v7;
}

- (void)_retrieveLocationEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(HMEvent *)self context];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A10]);
    v5 = objc_alloc(MEMORY[0x1E69A2A00]);
    v6 = [(HMEvent *)self uuid];
    v7 = [v5 initWithTarget:v6];
    v8 = [v4 initWithName:@"kRetrieveLocationEventRequestKey" destination:v7 payload:0];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__HMLocationEvent__retrieveLocationEvent__block_invoke;
    v15[3] = &unk_1E754CD98;
    v15[4] = self;
    [v8 setResponseHandler:v15];
    v9 = [v3 messageDispatcher];
    [v9 sendMessage:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLocationEvent updateRegion:completionHandler:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = self;
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

  v9 = v8;
  if (v8)
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

    v10 = [(HMEvent *)self eventTrigger];
    v11 = v10;
    if (!v10 || ([v10 home], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v19 = [v9 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v19 callCompletion:v7 error:v20];

LABEL_11:
      goto LABEL_19;
    }

    v13 = [(HMLocationEvent *)self region];
    v14 = [v13 isEqual:v6];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
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
      v19 = [v9 delegateCaller];
      [v19 callCompletion:v7 error:0];
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
      v28 = [v9 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v28 callCompletion:v7 error:v29];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
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

- (void)setRegion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_locationAuthorization == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v6;
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

- (void)__configureWithContext:(id)a3 eventTrigger:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = HMLocationEvent;
  [(HMEvent *)&v18 __configureWithContext:a3 eventTrigger:v6];
  if (a3)
  {
    v7 = [v6 home];
    v8 = [v7 homeManager];
    v9 = [v8 configuration];
    v10 = [v9 locationAuthorization];

    if (v10)
    {
      v11 = self;
      v12 = v10;
      v13 = v11->_authorization;
      if (v13 != v12)
      {
        objc_storeStrong(&v11->_authorization, v10);
        v14 = [MEMORY[0x1E696AD88] defaultCenter];
        v15 = *MEMORY[0x1E69A2998];
        [v14 addObserver:v11 selector:sel__handleLocationAuthorizationUpdatedNotification_ name:*MEMORY[0x1E69A2998] object:v12];

        [(HMFLocationAuthorization *)v12 registerObserver:v11];
        if (v13)
        {
          [(HMFLocationAuthorization *)v13 unregisterObserver:v11];
          v16 = [MEMORY[0x1E696AD88] defaultCenter];
          [v16 removeObserver:v11 name:v15 object:v13];
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
      v17 = [v6 lastFireDate];

      if (v17)
      {
        [v6 setLastFireDate:0];
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
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v16[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v7 = [(HMLocationEvent *)self initWithDict:v6 region:v4];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (HMLocationEvent)initWithDict:(id)a3 region:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HMLocationEvent;
  v7 = [(HMEvent *)&v10 initWithDict:a3];
  v8 = v7;
  if (v7)
  {
    _initLocationEventWithRegion(v7, v6);
  }

  return v8;
}

@end