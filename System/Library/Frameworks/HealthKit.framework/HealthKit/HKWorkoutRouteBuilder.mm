@interface HKWorkoutRouteBuilder
+ (id)clientInterface;
+ (id)serverInterface;
+ (void)configureClientInterface:(id)interface;
+ (void)configureServerInterface:(id)interface;
- (HKWorkoutRouteBuilder)init;
- (HKWorkoutRouteBuilder)initWithHealthStore:(id)store identifier:(id)identifier device:(id)device workoutBuilderID:(id)d;
- (void)_resourceQueue_finishRouteWithWorkout:(id)workout metadata:(id)metadata completion:(id)completion;
- (void)_resourceQueue_insertRouteData:(id)data completion:(id)completion;
- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)finishRouteWithWorkout:(HKWorkout *)workout metadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)insertRouteData:(NSArray *)routeData completion:(void *)completion;
@end

@implementation HKWorkoutRouteBuilder

- (HKWorkoutRouteBuilder)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKWorkoutRouteBuilder)initWithHealthStore:(id)store identifier:(id)identifier device:(id)device workoutBuilderID:(id)d
{
  dCopy = d;
  deviceCopy = device;
  identifierCopy = identifier;
  storeCopy = store;
  v14 = [[HKSeriesBuilderConfiguration alloc] initWithDevice:deviceCopy workoutBuilderID:dCopy];

  v17.receiver = self;
  v17.super_class = HKWorkoutRouteBuilder;
  v15 = [(HKSeriesBuilder *)&v17 _initWithHealthStore:storeCopy identifier:identifierCopy configuration:v14];

  return v15;
}

- (void)insertRouteData:(NSArray *)routeData completion:(void *)completion
{
  v6 = routeData;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HKWorkoutRouteBuilder_insertRouteData_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  resourceQueue = [(HKSeriesBuilder *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKWorkoutRouteBuilder_insertRouteData_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(resourceQueue, block);
}

void __52__HKWorkoutRouteBuilder_insertRouteData_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKWorkoutRouteBuilder_insertRouteData_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_resourceQueue_insertRouteData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  resourceQueue = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  retryableOperation = [(HKSeriesBuilder *)self retryableOperation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke;
  v11[3] = &unk_1E7376988;
  v11[4] = self;
  v12 = dataCopy;
  v10 = dataCopy;
  [retryableOperation _queue_performRetryableOperation:v11 completion:completionCopy];
}

void __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) proxyProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke_2;
  v8[3] = &unk_1E7381ED0;
  v9 = *(a1 + 40);
  v10 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke_4;
  v6[3] = &unk_1E7376960;
  v7 = v10;
  v5 = v10;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__HKWorkoutRouteBuilder__resourceQueue_insertRouteData_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_insertRouteData:v3 completion:v4];
}

- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion
{
  v6 = metadata;
  v7 = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HKWorkoutRouteBuilder_addMetadata_completion___block_invoke;
  aBlock[3] = &unk_1E73766A0;
  aBlock[4] = self;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  resourceQueue = [(HKSeriesBuilder *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKWorkoutRouteBuilder_addMetadata_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(resourceQueue, block);
}

void __48__HKWorkoutRouteBuilder_addMetadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKWorkoutRouteBuilder_addMetadata_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)finishRouteWithWorkout:(HKWorkout *)workout metadata:(NSDictionary *)metadata completion:(void *)completion
{
  v8 = workout;
  v9 = metadata;
  v10 = completion;
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke;
    aBlock[3] = &unk_1E7381EF8;
    aBlock[4] = self;
    v21 = v10;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = &__block_literal_global_102;
  }

  resourceQueue = [(HKSeriesBuilder *)self resourceQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke_17;
  v16[3] = &unk_1E7376710;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  dispatch_async(resourceQueue, v16);
}

void __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke_2;
  block[3] = &unk_1E7376618;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke_3_cold_1(v3, v4);
    }
  }
}

- (void)_resourceQueue_finishRouteWithWorkout:(id)workout metadata:(id)metadata completion:(id)completion
{
  workoutCopy = workout;
  metadataCopy = metadata;
  completionCopy = completion;
  resourceQueue = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  proxyProvider = [(HKSeriesBuilder *)self proxyProvider];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__HKWorkoutRouteBuilder__resourceQueue_finishRouteWithWorkout_metadata_completion___block_invoke;
  v18[3] = &unk_1E7381F40;
  v19 = workoutCopy;
  v20 = metadataCopy;
  v21 = completionCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__HKWorkoutRouteBuilder__resourceQueue_finishRouteWithWorkout_metadata_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = metadataCopy;
  v15 = workoutCopy;
  [proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

+ (id)clientInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F83D8];
  [self configureClientInterface:v3];

  return v3;
}

+ (id)serverInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8438];
  [self configureServerInterface:v3];

  return v3;
}

+ (void)configureClientInterface:(id)interface
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___HKWorkoutRouteBuilder;
  objc_msgSendSuper2(&v3, sel_configureClientInterface_, interface);
}

+ (void)configureServerInterface:(id)interface
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKWorkoutRouteBuilder;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v6, sel_configureServerInterface_, interfaceCopy);
  v4 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_insertRouteData_completion_ argumentIndex:0 ofReply:{0, v6.receiver, v6.super_class}];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [interfaceCopy setClasses:hk_secureCodingClasses forSelector:sel_remote_finishRouteWithWorkout_metadata_completion_ argumentIndex:1 ofReply:0];
}

void __68__HKWorkoutRouteBuilder_finishRouteWithWorkout_metadata_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[routes] Couldn't finish workout route with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end