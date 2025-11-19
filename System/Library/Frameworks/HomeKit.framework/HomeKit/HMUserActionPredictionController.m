@interface HMUserActionPredictionController
+ (id)logCategory;
- (HMUserActionPredictionController)initWithHomeIdentifier:(id)a3 predictionProvider:(id)a4;
- (HMUserActionPredictionControllerDelegate)delegate;
- (id)predictions;
- (void)didUpdatePredictions:(id)a3 forHomeWithIdentifier:(id)a4;
- (void)fetchPredictionsWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation HMUserActionPredictionController

- (void)didUpdatePredictions:(id)a3 forHomeWithIdentifier:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMUserActionPredictionController *)self homeIdentifier];
  v9 = [v7 hmf_isEqualToUUID:v8];

  if (v9)
  {
    v10 = [(HMUserActionPredictionController *)self delegate];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544130;
      v27 = v14;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate: %@ of updated user action predictions: %@ for home with identifier: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(HMUserActionPredictionController *)v12 context];
      v16 = [v15 delegateCaller];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __79__HMUserActionPredictionController_didUpdatePredictions_forHomeWithIdentifier___block_invoke;
      v22[3] = &unk_1E754E5E8;
      v23 = v10;
      v24 = v12;
      v25 = v6;
      [v16 invokeBlock:v22];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Not notifying of updated user action predictions: %@ for home with identifier: %@ due to wrong home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)predictions
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
  if (!v4 || WeakRetained)
  {
    if (v4 || !WeakRetained)
    {
      return;
    }

    v7 = [(HMUserActionPredictionController *)self predictionProvider];
    v6 = [(HMUserActionPredictionController *)self homeIdentifier];
    [v7 removeSubscriber:self forHomeIdentifier:v6];
  }

  else
  {
    v7 = [(HMUserActionPredictionController *)self predictionProvider];
    v6 = [(HMUserActionPredictionController *)self homeIdentifier];
    [v7 addSubscriber:self forHomeIdentifier:v6];
  }
}

- (HMUserActionPredictionControllerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)fetchPredictionsWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserActionPredictionController fetchPredictionsWithCompletion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v5 = v4;
  v6 = [(HMUserActionPredictionController *)self context];

  if (v6)
  {
    v7 = [(HMUserActionPredictionController *)self context];
    v8 = [v7 delegateCaller];

    v9 = [(HMUserActionPredictionController *)self predictionProvider];
    v10 = [(HMUserActionPredictionController *)self homeIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__HMUserActionPredictionController_fetchPredictionsWithCompletion___block_invoke;
    v23[3] = &unk_1E7547588;
    v24 = v8;
    v25 = v5;
    v11 = v8;
    [v9 fetchPredictionsForHomeWithIdentifier:v10 completion:v23];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@fetchPredictionsWithCompletion is missing a context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v5[2](v5, MEMORY[0x1E695E0F0]);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (HMUserActionPredictionController)initWithHomeIdentifier:(id)a3 predictionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMUserActionPredictionController *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMUserActionPredictionController;
  v9 = [(HMUserActionPredictionController *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
    homeIdentifier = v9->_homeIdentifier;
    v9->_homeIdentifier = v10;

    objc_storeStrong(&v9->_predictionProvider, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_11102);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __47__HMUserActionPredictionController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end