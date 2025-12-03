@interface HKWorkoutControl
+ (id)taskIdentifier;
- (HKWorkoutControl)initWithHealthStore:(id)store;
- (void)finishAllWorkoutsWithCompletion:(id)completion;
- (void)generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion;
- (void)generatePauseOrResumeRequestAllowingBackgroundRuntime:(BOOL)runtime metadata:(id)metadata completion:(id)completion;
@end

@implementation HKWorkoutControl

- (HKWorkoutControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKWorkoutControl;
  v5 = [(HKWorkoutControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)finishAllWorkoutsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__HKWorkoutControl_finishAllWorkoutsWithCompletion___block_invoke;
  v9[3] = &unk_1E737BAD8;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HKWorkoutControl_finishAllWorkoutsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)generatePauseOrResumeRequestAllowingBackgroundRuntime:(BOOL)runtime metadata:(id)metadata completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  completionCopy = completion;
  _HKInitializeLogging();
  v10 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Pause/resume event requested.", buf, 0xCu);
  }

  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__HKWorkoutControl_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v12 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  v13 = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__HKWorkoutControl_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke_8;
  v19[3] = &unk_1E737BB00;
  runtimeCopy = runtime;
  v20 = metadataCopy;
  v21 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__HKWorkoutControl_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke_2;
  v17[3] = &unk_1E7376960;
  v18 = v21;
  v14 = v21;
  v15 = metadataCopy;
  [(HKProxyProvider *)v13 fetchProxyWithHandler:v19 errorHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __94__HKWorkoutControl_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  v7 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@: Generated pause or resume request";
      v11 = v6;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else if (v7)
  {
    v13 = *(a1 + 32);
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v5;
    v10 = "%{public}@: Pause/resume event generation failed: %{public}@";
    v11 = v6;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v8);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion
{
  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__HKWorkoutControl_generateFakeDataForActivityType_minutes_completion___block_invoke;
  v13[3] = &unk_1E737BB28;
  typeCopy = type;
  minutesCopy = minutes;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKWorkoutControl_generateFakeDataForActivityType_minutes_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v14;
  v10 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

@end