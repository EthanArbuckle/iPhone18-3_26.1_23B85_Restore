@interface AVTDeviceResourceManager
- (AVTDeviceResourceManager)initWithLogger:(id)logger lockProvider:(id)provider;
- (void)consumer:(id)consumer willConsumeRenderingResourceForEstimatedDuration:(double)duration;
- (void)performWorkWithConsumers:(id)consumers;
- (void)registerConsumer:(id)consumer;
- (void)unregisterConsumer:(id)consumer;
@end

@implementation AVTDeviceResourceManager

- (AVTDeviceResourceManager)initWithLogger:(id)logger lockProvider:(id)provider
{
  loggerCopy = logger;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = AVTDeviceResourceManager;
  v9 = [(AVTDeviceResourceManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, logger);
    v11 = providerCopy[2](providerCopy, "com.apple.AvatarUI.AVTDeviceResourceManager.stateLock");
    stateLock = v10->_stateLock;
    v10->_stateLock = v11;

    array = [MEMORY[0x1E695DF70] array];
    consumers = v10->_consumers;
    v10->_consumers = array;
  }

  return v10;
}

- (void)performWorkWithConsumers:(id)consumers
{
  consumersCopy = consumers;
  stateLock = [(AVTDeviceResourceManager *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVTDeviceResourceManager_performWorkWithConsumers___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = consumersCopy;
  v6 = consumersCopy;
  dispatch_sync(stateLock, v7);
}

void __53__AVTDeviceResourceManager_performWorkWithConsumers___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) consumers];
  (*(v1 + 16))(v1, v2);
}

- (void)registerConsumer:(id)consumer
{
  consumerCopy = consumer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVTDeviceResourceManager_registerConsumer___block_invoke;
  v6[3] = &unk_1E7F3D198;
  v7 = consumerCopy;
  selfCopy = self;
  v5 = consumerCopy;
  [(AVTDeviceResourceManager *)self performWorkWithConsumers:v6];
}

void __45__AVTDeviceResourceManager_registerConsumer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 setConsumerDelegate:v4];
  [v5 addObject:*(a1 + 32)];
}

- (void)unregisterConsumer:(id)consumer
{
  consumerCopy = consumer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVTDeviceResourceManager_unregisterConsumer___block_invoke;
  v6[3] = &unk_1E7F3D1C0;
  v7 = consumerCopy;
  v5 = consumerCopy;
  [(AVTDeviceResourceManager *)self performWorkWithConsumers:v6];
}

void __47__AVTDeviceResourceManager_unregisterConsumer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setConsumerDelegate:0];
  [v4 removeObject:*(a1 + 32)];
}

- (void)consumer:(id)consumer willConsumeRenderingResourceForEstimatedDuration:(double)duration
{
  consumerCopy = consumer;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__AVTDeviceResourceManager_consumer_willConsumeRenderingResourceForEstimatedDuration___block_invoke;
  v10[3] = &unk_1E7F3D210;
  v7 = consumerCopy;
  v11 = v7;
  v12 = &v13;
  [(AVTDeviceResourceManager *)self performWorkWithConsumers:v10];
  v8 = v14[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__AVTDeviceResourceManager_consumer_willConsumeRenderingResourceForEstimatedDuration___block_invoke_3;
  v9[3] = &__block_descriptor_40_e44_v32__0___AVTDeviceResourceConsumer__8Q16_B24l;
  *&v9[4] = duration;
  [v8 enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(&v13, 8);
}

void __86__AVTDeviceResourceManager_consumer_willConsumeRenderingResourceForEstimatedDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__AVTDeviceResourceManager_consumer_willConsumeRenderingResourceForEstimatedDuration___block_invoke_2;
  v9[3] = &unk_1E7F3D1E8;
  v10 = *(a1 + 32);
  v4 = [v3 indexesOfObjectsPassingTest:v9];
  v5 = [v4 count];
  if (v5 < [v3 count])
  {
    v6 = [v3 objectsAtIndexes:v4];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end