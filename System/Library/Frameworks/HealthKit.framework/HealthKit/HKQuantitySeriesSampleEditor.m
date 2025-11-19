@interface HKQuantitySeriesSampleEditor
+ (id)serverInterface;
- (BOOL)_performWithError:(id *)a3 stateValidator:(id)a4 lockedBlock:(id)a5;
- (BOOL)removeQuantityForDateInterval:(id)a3 error:(id *)a4;
- (HKQuantitySeriesSampleEditor)initWithHealthStore:(id)a3 quantitySample:(id)a4;
- (NSString)description;
- (int64_t)unitTest_state;
- (void)commitWithCompletion:(id)a3;
- (void)dealloc;
- (void)discard;
@end

@implementation HKQuantitySeriesSampleEditor

- (HKQuantitySeriesSampleEditor)initWithHealthStore:(id)a3 quantitySample:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = HKQuantitySeriesSampleEditor;
  v9 = [(HKQuantitySeriesSampleEditor *)&v22 init];
  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = MEMORY[0x1E695D940];
    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*v11 format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    if ([v8 count] <= 1)
    {
      [MEMORY[0x1E695DF30] raise:*v11 format:{@"A quantity sample with count = %ld is invalid. A count greater than 1 is required.", objc_msgSend(v8, "count")}];
    }

    v12 = [v8 copy];
    quantitySample = v9->_quantitySample;
    v9->_quantitySample = v12;

    objc_storeStrong(&v9->_healthStore, a3);
    v14 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v14;

    v16 = [[HKQuantitySeriesSampleEditorTaskServerConfiguration alloc] initWithQuantitySample:v9->_quantitySample];
    v17 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v9->_healthStore taskIdentifier:@"HKQuantitySeriesSampleEditorTaskServerIdentifier" exportedObject:v9 taskUUID:v9->_identifier];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v17;

    [(HKProxyProvider *)v9->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v9->_proxyProvider setTaskConfiguration:v16];
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_state = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    datesIntervalsToRemove = v9->_datesIntervalsToRemove;
    v9->_datesIntervalsToRemove = v19;
  }

  return v9;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQuantitySeriesSampleEditor.m" lineNumber:84 description:{@"Editor %@ must be committed or discarded prior to deallocation", a2}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  v6 = self->_state - 1;
  if (v6 > 3)
  {
    v7 = @"Not Started";
  }

  else
  {
    v7 = off_1E7381338[v6];
  }

  return [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, self->_identifier, v7];
}

- (BOOL)removeQuantityForDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKQuantitySeriesSampleEditor_removeQuantityForDateInterval_error___block_invoke_2;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(HKQuantitySeriesSampleEditor *)self _performWithError:a4 stateValidator:&__block_literal_global_92 lockedBlock:v9];

  return a4;
}

uint64_t __68__HKQuantitySeriesSampleEditor_removeQuantityForDateInterval_error___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  *(*(a1 + 32) + 40) = 1;
  return result;
}

- (void)commitWithCompletion:(id)a3
{
  v4 = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__38;
  v16[4] = __Block_byref_object_dispose__38;
  v17 = 0;
  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  v15 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__HKQuantitySeriesSampleEditor_commitWithCompletion___block_invoke_2;
  v14[3] = &unk_1E7378528;
  v14[4] = self;
  v14[5] = v16;
  v6 = [(HKQuantitySeriesSampleEditor *)self _performWithError:&v15 stateValidator:&__block_literal_global_35_0 lockedBlock:v14];
  v7 = v15;
  if (v6)
  {
    proxyProvider = self->_proxyProvider;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__HKQuantitySeriesSampleEditor_commitWithCompletion___block_invoke_3;
    v11[3] = &unk_1E7381318;
    v13 = v16;
    v12 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__HKQuantitySeriesSampleEditor_commitWithCompletion___block_invoke_4;
    v9[3] = &unk_1E7376960;
    v10 = v12;
    [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
  }

  else
  {
    (v5)[2](v5, 0, v7);
  }

  _Block_object_dispose(v16, 8);
}

void __53__HKQuantitySeriesSampleEditor_commitWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1 + 32) + 40) = 2;
}

- (void)discard
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: error performing discard: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __39__HKQuantitySeriesSampleEditor_discard__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) removeAllObjects];
  *(*(a1 + 32) + 40) = 3;
  return result;
}

- (int64_t)unitTest_state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (BOOL)_performWithError:(id *)a3 stateValidator:(id)a4 lockedBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  v11 = v9[2](v9, state);

  if (v11)
  {
    v8[2](v8);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (state - 1 > 3)
    {
      v12 = @"Not Started";
    }

    else
    {
      v12 = off_1E7381338[state - 1];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state %@", v12];
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 description:v13];
    if (state == 3)
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
    }

    else
    {
      v14 = 0;
      if (state <= 1)
      {
        self->_state = 4;
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      [v14 raise];
    }
  }

  return v11;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8138];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_commitRemovedDatums_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

@end