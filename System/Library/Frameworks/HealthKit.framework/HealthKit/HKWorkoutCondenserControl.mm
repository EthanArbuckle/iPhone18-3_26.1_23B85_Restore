@interface HKWorkoutCondenserControl
+ (id)taskIdentifier;
- (HKWorkoutCondenserControl)initWithHealthStore:(id)store;
- (void)condensableWorkoutsWithCompletion:(id)completion;
- (void)condenseWorkoutWithUUID:(id)d completion:(id)completion;
- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion;
- (void)condensedWorkoutsWithCompletion:(id)completion;
@end

@implementation HKWorkoutCondenserControl

- (HKWorkoutCondenserControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKWorkoutCondenserControl;
  v5 = [(HKWorkoutCondenserControl *)&v12 init];
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

- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion
{
  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__HKWorkoutCondenserControl_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke;
  v13[3] = &unk_1E737D818;
  reasonCopy = reason;
  limitCopy = limit;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__HKWorkoutCondenserControl_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v14;
  v10 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)condenseWorkoutWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__HKWorkoutCondenserControl_condenseWorkoutWithUUID_completion___block_invoke;
  v13[3] = &unk_1E737D840;
  v14 = dCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__HKWorkoutCondenserControl_condenseWorkoutWithUUID_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = dCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)condensedWorkoutsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKWorkoutCondenserControl_condensedWorkoutsWithCompletion___block_invoke;
  v9[3] = &unk_1E737D868;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HKWorkoutCondenserControl_condensedWorkoutsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)condensableWorkoutsWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HKWorkoutCondenserControl_condensableWorkoutsWithCompletion___block_invoke;
  v9[3] = &unk_1E737D868;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__HKWorkoutCondenserControl_condensableWorkoutsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

@end