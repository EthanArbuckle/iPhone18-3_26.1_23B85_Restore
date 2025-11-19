@interface HKSeriesBuilder
+ (id)clientInterface;
+ (id)serverInterface;
+ (void)configureServerInterface:(id)a3;
- (HKSeriesBuilder)init;
- (NSString)description;
- (id)_initWithHealthStore:(id)a3 identifier:(id)a4 configuration:(id)a5;
- (void)_resourceQueue_addMetadata:(id)a3 completion:(id)a4;
- (void)_resourceQueue_discardWithHandler:(id)a3;
- (void)clientRemote_didChangeToState:(int64_t)a3 completion:(id)a4;
- (void)discard;
- (void)freezeBuilderWithCompletion:(id)a3;
- (void)recoverWithCompletion:(id)a3;
@end

@implementation HKSeriesBuilder

- (HKSeriesBuilder)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithHealthStore:(id)a3 identifier:(id)a4 configuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = HKSeriesBuilder;
  v12 = [(HKSeriesBuilder *)&v31 init];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    v13 = [v11 device];
    if (v13)
    {
      v14 = v13;
      v15 = [v11 device];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
      }
    }

    if (v10)
    {
      v17 = [v10 copy];
    }

    else
    {
      v17 = [MEMORY[0x1E696AFB0] UUID];
    }

    identifier = v12->_identifier;
    v12->_identifier = v17;

    v19 = HKCreateSerialDispatchQueue(v12, @"completionQueue");
    completionQueue = v12->_completionQueue;
    v12->_completionQueue = v19;

    v21 = HKCreateSerialDispatchQueue(v12, @"resourceQueue");
    resourceQueue = v12->_resourceQueue;
    v12->_resourceQueue = v21;

    v23 = [v11 copy];
    configuration = v12->_configuration;
    v12->_configuration = v23;

    objc_storeStrong(&v12->_store, a3);
    atomic_store(0, &v12->_state);
    v25 = [[HKRetryableOperation alloc] initWithQueue:v12->_resourceQueue retryCount:5];
    retryableOperation = v12->_retryableOperation;
    v12->_retryableOperation = v25;

    v27 = [objc_opt_class() taskServerIdentifier];
    if (v27)
    {
      v28 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v9 taskIdentifier:v27 exportedObject:v12 taskUUID:v12->_identifier];
      proxyProvider = v12->_proxyProvider;
      v12->_proxyProvider = v28;

      [(HKTaskServerProxyProvider *)v12->_proxyProvider setTaskConfiguration:v11];
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSUUID *)self->_identifier UUIDString];
  v6 = HKSeriesBuilderStateToString([(HKSeriesBuilder *)self state]);
  v7 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, v5, v6];

  return v7;
}

- (void)discard
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v3 = [(HKSeriesBuilder *)self resourceQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__HKSeriesBuilder_discard__block_invoke;
  v4[3] = &unk_1E737F988;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v3, v4);

  [v6[5] raise];
  _Block_object_dispose(&v5, 8);
}

uint64_t __26__HKSeriesBuilder_discard__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__HKSeriesBuilder_discard__block_invoke_2;
  v3[3] = &unk_1E7376A00;
  v3[4] = v1;
  return [v1 _resourceQueue_discardWithHandler:v3];
}

void __26__HKSeriesBuilder_discard__block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEBUG))
  {
    __26__HKSeriesBuilder_discard__block_invoke_2_cold_1(a1, v2);
  }
}

- (void)freezeBuilderWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v11 = v4;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HKSeriesBuilder *)self resourceQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_3;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_4;
  v5[3] = &unk_1E737FFC8;
  v5[4] = v2;
  return [v3 _queue_performRetryableOperation:v5 completion:v1];
}

void __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_5;
  v8[3] = &unk_1E737FFA0;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_7;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__HKSeriesBuilder_freezeBuilderWithCompletion___block_invoke_6;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_freezeWithCompletion:v3];
}

- (void)recoverWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v11 = v4;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HKSeriesBuilder *)self resourceQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_3;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __41__HKSeriesBuilder_recoverWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_4;
  v5[3] = &unk_1E737FFC8;
  v5[4] = v2;
  return [v3 _queue_performRetryableOperation:v5 completion:v1];
}

void __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_5;
  v8[3] = &unk_1E737FFA0;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_7;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__HKSeriesBuilder_recoverWithCompletion___block_invoke_6;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_recoverWithCompletion:v3];
}

- (void)_resourceQueue_addMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(v8);

  if (v6 && [v6 count])
  {
    retryableOperation = self->_retryableOperation;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke;
    v10[3] = &unk_1E7376988;
    v10[4] = self;
    v11 = v6;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v10 completion:v7];
  }

  else
  {
    v7[2](v7, 1, 0);
  }
}

void __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke_2;
  v8[3] = &unk_1E737FFF0;
  v9 = *(a1 + 40);
  v10 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke_4;
  v6[3] = &unk_1E7376960;
  v7 = v10;
  v5 = v10;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__HKSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addMetadata:v3 completion:v4];
}

- (void)_resourceQueue_discardWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HKSeriesBuilder *)self state];
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = v6;
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D920];
    v10 = objc_opt_class();
    v11 = "discarded";
    if (v7 == 2)
    {
      v11 = "completed";
    }

    [v8 raise:v9 format:{@"%@ series has been %s.", v10, v11}];
  }

  if (!v4)
  {
    v4 = &__block_literal_global_74;
  }

  retryableOperation = self->_retryableOperation;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_2;
  v13[3] = &unk_1E737FFC8;
  v13[4] = self;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v13 completion:v4];
}

void __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_3;
  v8[3] = &unk_1E737FFA0;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_5;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__HKSeriesBuilder__resourceQueue_discardWithHandler___block_invoke_4;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_discardWithCompletion:v3];
}

- (void)clientRemote_didChangeToState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(HKSeriesBuilder *)self setState:a3];
  v6[2](v6, 1, 0);
}

+ (id)clientInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F069ABA8];
  [a1 configureClientInterface:v3];

  return v3;
}

+ (id)serverInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F04E0];
  [a1 configureServerInterface:v3];

  return v3;
}

+ (void)configureServerInterface:(id)a3
{
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 hk_secureCodingClasses];
  [v4 setClasses:v5 forSelector:sel_remote_addMetadata_completion_ argumentIndex:0 ofReply:0];
}

void __26__HKSeriesBuilder_discard__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void __26__HKSeriesBuilder_discard__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = 138412290;
  v6 = objc_opt_class();
  _os_log_debug_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEBUG, "%@ series discarded", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end