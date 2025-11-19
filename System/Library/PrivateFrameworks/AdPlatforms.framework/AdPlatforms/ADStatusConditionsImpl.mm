@interface ADStatusConditionsImpl
+ (id)sharedRingBufferLock;
- (BOOL)isConditionRateLimited:(id)a3 onOperation:(int64_t)a4;
- (BOOL)operationWithCondition:(id)a3 forType:(int64_t)a4;
- (id)capped:(id)a3 to:(unint64_t)a4;
- (id)setupXPCConnection;
- (void)cleanupExpiredConditionsInBuffer;
- (void)clearStatusCondition:(id)a3 completionHandler:(id)a4;
- (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)resetRateLimitingBuffer;
- (void)setStatusCondition:(id)a3 completionHandler:(id)a4;
@end

@implementation ADStatusConditionsImpl

+ (id)sharedRingBufferLock
{
  if (sharedRingBufferLock_onceToken != -1)
  {
    +[ADStatusConditionsImpl sharedRingBufferLock];
  }

  v3 = sharedRingBufferLock__sharedLock;

  return v3;
}

uint64_t __46__ADStatusConditionsImpl_sharedRingBufferLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = sharedRingBufferLock__sharedLock;
  sharedRingBufferLock__sharedLock = v0;

  ringBuffer = [MEMORY[0x277CBEB18] array];

  return MEMORY[0x2821F96F8]();
}

- (void)setStatusCondition:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!MKBDeviceUnlockedSinceBoot())
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:0];
    v7[2](v7, v8);
LABEL_8:

    goto LABEL_9;
  }

  if (![(ADStatusConditionsImpl *)self isConditionRateLimited:v6 onOperation:0])
  {
    v9 = [(ADStatusConditionsImpl *)self setupXPCConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke;
    v18[3] = &unk_278C59DC0;
    v18[4] = self;
    v10 = v7;
    v19 = v10;
    [v9 setInvalidationHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke_2;
    v16[3] = &unk_278C59DC0;
    v16[4] = self;
    v11 = v10;
    v17 = v11;
    [v9 setInterruptionHandler:v16];
    v12 = [v9 remoteObjectProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke_3;
    v13[3] = &unk_278C59DE8;
    v14 = v9;
    v15 = v11;
    v8 = v9;
    [v12 setStatusCondition:v6 completionHandler:v13];

    goto LABEL_8;
  }

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_9:
}

void __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection invalidated. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  [*(a1 + 32) resetRateLimitingBuffer];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was invalidated.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection interrupted. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  [*(a1 + 32) resetRateLimitingBuffer];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was interrupted.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __63__ADStatusConditionsImpl_setStatusCondition_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    ADLOG(@"ERROR: Failed to set the status condition due to error: %@", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v12);
  }

  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];
}

- (void)clearStatusCondition:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!MKBDeviceUnlockedSinceBoot())
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:0];
    v7[2](v7, v8);
LABEL_8:

    goto LABEL_9;
  }

  if (![(ADStatusConditionsImpl *)self isConditionRateLimited:v6 onOperation:1])
  {
    v9 = [(ADStatusConditionsImpl *)self setupXPCConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke;
    v18[3] = &unk_278C59DC0;
    v18[4] = self;
    v10 = v7;
    v19 = v10;
    [v9 setInvalidationHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke_2;
    v16[3] = &unk_278C59DC0;
    v16[4] = self;
    v11 = v10;
    v17 = v11;
    [v9 setInterruptionHandler:v16];
    v12 = [v9 remoteObjectProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke_3;
    v13[3] = &unk_278C59DE8;
    v14 = v9;
    v15 = v11;
    v8 = v9;
    [v12 clearStatusCondition:v6 completionHandler:v13];

    goto LABEL_8;
  }

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_9:
}

void __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection invalidated. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  [*(a1 + 32) resetRateLimitingBuffer];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was invalidated.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection interrupted. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  [*(a1 + 32) resetRateLimitingBuffer];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was interrupted.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__ADStatusConditionsImpl_clearStatusCondition_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    ADLOG(@"ERROR: Failed to clear the status condition due to error: %@", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v12);
  }

  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];
}

- (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (MKBDeviceUnlockedSinceBoot())
  {
    v11 = [(ADStatusConditionsImpl *)self setupXPCConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278C59E10;
    v12 = v10;
    v22 = v12;
    [v11 setInvalidationHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_278C59E10;
    v13 = v12;
    v20 = v13;
    [v11 setInterruptionHandler:v19];
    v14 = [v11 remoteObjectProxy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke_3;
    v16[3] = &unk_278C59E38;
    v17 = v11;
    v18 = v13;
    v15 = v11;
    [v14 isStatusConditionRegistered:v8 bundleIdentifier:v9 completionHandler:v16];

LABEL_5:
    goto LABEL_6;
  }

  if (v10)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:0];
    (*(v10 + 2))(v10, 0, v15);
    goto LABEL_5;
  }

LABEL_6:
}

void __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection invalidated. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was invalidated.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  ADLOG(@"ADStatusConditions XPC connection interrupted. Lost connection.", a2, a3, a4, a5, a6, a7, a8, v14);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"A serious error occurred. The XPC connection was interrupted.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1101 userInfo:v11];
    (*(v9 + 16))(v9, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __89__ADStatusConditionsImpl_isStatusConditionRegistered_bundleIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v13 = @"has not";
  if (a2)
  {
    v13 = @"has";
  }

  v22 = v5;
  ADLOG(@"The status condition %@ been registered.", v6, v7, v8, v9, v10, v11, v12, v13);
  if (v22)
  {
    ADLOG(@"ERROR: Failed to read the status condition due to error: %@", v14, v15, v16, v17, v18, v19, v20, v22);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, a2, v22);
  }

  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];
}

- (BOOL)isConditionRateLimited:(id)a3 onOperation:(int64_t)a4
{
  v13 = a3;
  v14 = @"Clear";
  if (!a4)
  {
    v14 = @"Set";
  }

  ADLOG(@"ADStatusConditions %@ called. Checking rate limiting.", v6, v7, v8, v9, v10, v11, v12, v14);
  v15 = [objc_opt_class() sharedRingBufferLock];
  [v15 lock];
  [(ADStatusConditionsImpl *)self cleanupExpiredConditionsInBuffer];
  v16 = [(ADStatusConditionsImpl *)self operationWithCondition:v13 forType:a4];
  v24 = @"CLEAR";
  if (!a4)
  {
    v24 = @"SET";
  }

  if (v16)
  {
    ADLOG(@"This is a duplicate %@ call which will be rate limited", v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = 1;
  }

  else
  {
    ADLOG(@"This is a new %@ call which will execute.", v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = 0;
  }

  [v15 unlock];

  return v25;
}

- (BOOL)operationWithCondition:(id)a3 forType:(int64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = ringBuffer;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 statusCondition];
        if ([v12 isEqual:v5])
        {
          v13 = [v11 operation];

          if (v13 == a4)
          {
            v20 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v14 = MEMORY[0x277CCAC30];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__ADStatusConditionsImpl_operationWithCondition_forType___block_invoke;
  v23[3] = &unk_278C59E60;
  v15 = v5;
  v24 = v15;
  v16 = [v14 predicateWithBlock:v23];
  [ringBuffer filterUsingPredicate:v16];
  v17 = [ADStatusConditionRateLimitedObject alloc];
  v18 = [MEMORY[0x277CBEAA8] now];
  v19 = [(ADStatusConditionRateLimitedObject *)v17 init:v15 at:v18 kind:a4];

  [ringBuffer addObject:v19];
  v20 = 0;
  v6 = v24;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __57__ADStatusConditionsImpl_operationWithCondition_forType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 statusCondition];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)cleanupExpiredConditionsInBuffer
{
  v2 = [(ADStatusConditionsImpl *)self capped:ringBuffer to:5];
  v3 = [v2 mutableCopy];
  v4 = ringBuffer;
  ringBuffer = v3;

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ADStatusConditionsImpl_cleanupExpiredConditionsInBuffer__block_invoke;
  v9[3] = &unk_278C59E60;
  v10 = v5;
  v7 = v5;
  v8 = [v6 predicateWithBlock:v9];
  [ringBuffer filterUsingPredicate:v8];
}

BOOL __58__ADStatusConditionsImpl_cleanupExpiredConditionsInBuffer__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 setTime];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  return v5 < 86400;
}

- (id)capped:(id)a3 to:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 count];
  if (v6 <= a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v5 subarrayWithRange:{v6 - a4, a4}];
  }

  v8 = v7;

  return v8;
}

- (void)resetRateLimitingBuffer
{
  v4 = [objc_opt_class() sharedRingBufferLock];
  [v4 lock];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = ringBuffer;
  ringBuffer = v2;

  [v4 unlock];
}

- (id)setupXPCConnection
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);
  v3 = [v2 initWithMachServiceName:@"com.apple.ap.adservicesd.statusconditionservice" options:*MEMORY[0x277CE95C0]];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510D6E0];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];

  return v3;
}

@end