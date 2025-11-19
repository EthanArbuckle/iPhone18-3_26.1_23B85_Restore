@interface HKHeartbeatSeriesBuilder
- (HKHeartbeatSeriesBuilder)initWithHealthStore:(HKHealthStore *)healthStore device:(HKDevice *)device startDate:(NSDate *)startDate;
- (void)_resourceQueue_addHeartbeatWithTimeIntervalSinceSeriesStartDate:(double)a3 precededByGap:(BOOL)a4 completion:(id)a5;
- (void)_resourceQueue_addMetadata:(id)a3 completion:(id)a4;
- (void)_resourceQueue_finishSeriesWithCompletion:(id)a3;
- (void)addHeartbeatWithTimeIntervalSinceSeriesStartDate:(NSTimeInterval)timeIntervalSinceStart precededByGap:(BOOL)precededByGap completion:(void *)completion;
- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)discard;
- (void)finishSeriesWithCompletion:(void *)completion;
@end

@implementation HKHeartbeatSeriesBuilder

- (HKHeartbeatSeriesBuilder)initWithHealthStore:(HKHealthStore *)healthStore device:(HKDevice *)device startDate:(NSDate *)startDate
{
  v8 = startDate;
  v9 = device;
  v10 = healthStore;
  v11 = [[HKSeriesBuilderConfiguration alloc] initWithDevice:v9 workoutBuilderID:0];

  v20.receiver = self;
  v20.super_class = HKHeartbeatSeriesBuilder;
  v12 = [(HKSeriesBuilder *)&v20 _initWithHealthStore:v10 identifier:0 configuration:v11];

  if (v12)
  {
    v13 = [(NSDate *)v8 copy];
    v14 = v12->_startDate;
    v12->_startDate = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableMetadata = v12->_mutableMetadata;
    v12->_mutableMetadata = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF88]);
    mutableHeartbeats = v12->_mutableHeartbeats;
    v12->_mutableHeartbeats = v17;

    v12->_count = 0;
    v12->_lastHeartbeatTimeInterval = -1.0;
    [(HKSeriesBuilder *)v12 setState:1];
  }

  return v12;
}

- (void)addHeartbeatWithTimeIntervalSinceSeriesStartDate:(NSTimeInterval)timeIntervalSinceStart precededByGap:(BOOL)precededByGap completion:(void *)completion
{
  v8 = completion;
  v9 = [(HKSeriesBuilder *)self resourceQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__HKHeartbeatSeriesBuilder_addHeartbeatWithTimeIntervalSinceSeriesStartDate_precededByGap_completion___block_invoke;
  v11[3] = &unk_1E737A2C8;
  v13 = timeIntervalSinceStart;
  v14 = precededByGap;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, v11);
}

- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion
{
  v6 = metadata;
  v7 = completion;
  v8 = [(HKSeriesBuilder *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HKHeartbeatSeriesBuilder_addMetadata_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)finishSeriesWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(HKSeriesBuilder *)self resourceQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__HKHeartbeatSeriesBuilder_finishSeriesWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_resourceQueue_addHeartbeatWithTimeIntervalSinceSeriesStartDate:(double)a3 precededByGap:(BOOL)a4 completion:(id)a5
{
  v9 = a5;
  v10 = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(v10);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__HKHeartbeatSeriesBuilder__resourceQueue_addHeartbeatWithTimeIntervalSinceSeriesStartDate_precededByGap_completion___block_invoke;
  aBlock[3] = &unk_1E7378BE8;
  v11 = v9;
  aBlock[4] = self;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(HKSeriesBuilder *)self state];
  if ((v13 - 2) < 2 || !v13)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v17 = @"Cannot add data to an inactive builder";
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    count = self->_count;
    if (count >= +[HKHeartbeatSeriesBuilder maximumCount])
    {
      [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Cannot add more than %lu heartbeats per series", +[HKHeartbeatSeriesBuilder maximumCount](HKHeartbeatSeriesBuilder, "maximumCount")}];
      goto LABEL_10;
    }

    if (a3 >= 0.0 && self->_lastHeartbeatTimeInterval < a3)
    {
      HKHeartbeatSeriesAppendDatum(*&a3, a4, self->_mutableHeartbeats);
      ++self->_count;
      self->_lastHeartbeatTimeInterval = a3;
      v12[2](v12, 1, 0);
      goto LABEL_11;
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v17 = @"Heartbeats must be added in order and should have a time interval since the series start date greater than or equal to 0";
LABEL_9:
    [v15 hk_errorForInvalidArgument:@"@" class:v16 selector:a2 format:{v17, v19}];
    v18 = LABEL_10:;
    (v12)[2](v12, 0, v18);
  }

LABEL_11:
}

void __117__HKHeartbeatSeriesBuilder__resourceQueue_addHeartbeatWithTimeIntervalSinceSeriesStartDate_precededByGap_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) completionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__HKHeartbeatSeriesBuilder__resourceQueue_addHeartbeatWithTimeIntervalSinceSeriesStartDate_precededByGap_completion___block_invoke_2;
    block[3] = &unk_1E7376678;
    v9 = *(a1 + 40);
    v10 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)_resourceQueue_addMetadata:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(v9);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HKHeartbeatSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke;
  aBlock[3] = &unk_1E7378BE8;
  v10 = v8;
  aBlock[4] = self;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(HKSeriesBuilder *)self state];
  if ((v12 - 2) < 2 || !v12)
  {
    v14 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Cannot add metadata to an inactive builder"];
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v15 = 0;
    v13 = [v7 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:1 applicationSDKVersionToken:851968 error:&v15];
    v14 = v15;
    if (v13)
    {
      [(NSMutableDictionary *)self->_mutableMetadata addEntriesFromDictionary:v7];
      v11[2](v11, 1, 0);
LABEL_8:

      goto LABEL_9;
    }

LABEL_7:
    (v11)[2](v11, 0, v14);
    goto LABEL_8;
  }

LABEL_9:
}

void __66__HKHeartbeatSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) completionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HKHeartbeatSeriesBuilder__resourceQueue_addMetadata_completion___block_invoke_2;
    block[3] = &unk_1E7376678;
    v9 = *(a1 + 40);
    v10 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)_resourceQueue_finishSeriesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(HKSeriesBuilder *)self resourceQueue];
  dispatch_assert_queue_V2(v6);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__HKHeartbeatSeriesBuilder__resourceQueue_finishSeriesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E737A2F0;
  v7 = v5;
  aBlock[4] = self;
  v26 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(HKSeriesBuilder *)self state];
  if ((v9 - 2) < 2 || !v9)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = objc_opt_class();
    v21 = @"Cannot finish an inactive builder";
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    [(HKSeriesBuilder *)self setState:2];
    if (self->_count)
    {
      v10 = [MEMORY[0x1E695DF00] dateWithTimeInterval:self->_startDate sinceDate:self->_lastHeartbeatTimeInterval];
      v11 = [(NSMutableData *)self->_mutableHeartbeats copy];
      startDate = self->_startDate;
      v13 = [(HKSeriesBuilder *)self configuration];
      v14 = [v13 device];
      v15 = [(NSMutableDictionary *)self->_mutableMetadata copy];
      v16 = [HKHeartbeatSeriesSample _heartbeatSeriesSampleWithData:v11 startDate:startDate endDate:v10 device:v14 metadata:v15];

      v17 = [(HKSeriesBuilder *)self store];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__HKHeartbeatSeriesBuilder__resourceQueue_finishSeriesWithCompletion___block_invoke_3;
      v22[3] = &unk_1E7378BE8;
      v23 = v16;
      v24 = v8;
      v18 = v16;
      [v17 saveObject:v18 withCompletion:v22];

LABEL_8:
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = objc_opt_class();
    v21 = @"No data was added to this builder";
LABEL_7:
    v10 = [v19 hk_errorForInvalidArgument:@"@" class:v20 selector:a2 format:v21];
    (*(v8 + 2))(v8, 0, v10);
    goto LABEL_8;
  }

LABEL_9:
}

void __70__HKHeartbeatSeriesBuilder__resourceQueue_finishSeriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) completionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__HKHeartbeatSeriesBuilder__resourceQueue_finishSeriesWithCompletion___block_invoke_2;
    block[3] = &unk_1E7376618;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

uint64_t __70__HKHeartbeatSeriesBuilder__resourceQueue_finishSeriesWithCompletion___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)discard
{
  v3 = [(HKSeriesBuilder *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__HKHeartbeatSeriesBuilder_discard__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__HKHeartbeatSeriesBuilder_discard__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;
}

@end