@interface NSDate(TimeManipulationForTesting)
+ (double)_atx_timeIntervalSinceReferenceDate;
+ (id)_atx_date;
+ (id)_atx_dateWithTimeIntervalSinceNow:()TimeManipulationForTesting;
+ (id)_atx_now;
+ (uint64_t)test_performBlockWithAbilityToManipulateTime:()TimeManipulationForTesting;
+ (void)test_adjustCurrentDateWithTimeInterval:()TimeManipulationForTesting;
+ (void)test_beginManipulationOfTime;
+ (void)test_endManipulationOfTime;
+ (void)test_setCurrentDate:()TimeManipulationForTesting;
- (double)_atx_timeIntervalSinceNow;
@end

@implementation NSDate(TimeManipulationForTesting)

+ (uint64_t)test_performBlockWithAbilityToManipulateTime:()TimeManipulationForTesting
{
  v4 = a3;
  [self test_beginManipulationOfTime];
  v4[2](v4);

  return [self test_endManipulationOfTime];
}

+ (void)test_beginManipulationOfTime
{
  v4 = dateManipulationQueue();
  dispatch_assert_queue_not_V2(v4);

  v5 = dateManipulationQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__NSDate_TimeManipulationForTesting__test_beginManipulationOfTime__block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = self;
  dispatch_barrier_sync(v5, v6);
}

+ (void)test_endManipulationOfTime
{
  v4 = dateManipulationQueue();
  dispatch_assert_queue_not_V2(v4);

  v5 = dateManipulationQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__NSDate_TimeManipulationForTesting__test_endManipulationOfTime__block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = self;
  dispatch_barrier_sync(v5, v6);
}

+ (void)test_setCurrentDate:()TimeManipulationForTesting
{
  v5 = a3;
  v6 = dateManipulationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSDate_TimeManipulationForTesting__test_setCurrentDate___block_invoke;
  block[3] = &unk_1E80C0E10;
  v10 = a2;
  selfCopy = self;
  v9 = v5;
  v7 = v5;
  dispatch_barrier_async(v6, block);
}

+ (void)test_adjustCurrentDateWithTimeInterval:()TimeManipulationForTesting
{
  v6 = dateManipulationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__NSDate_TimeManipulationForTesting__test_adjustCurrentDateWithTimeInterval___block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  *&block[6] = a3;
  dispatch_barrier_async(v6, block);
}

+ (id)_atx_now
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__23;
  v8 = __Block_byref_object_dispose__23;
  v9 = 0;
  v0 = dateManipulationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__NSDate_TimeManipulationForTesting___atx_now__block_invoke;
  block[3] = &unk_1E80C0758;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

+ (id)_atx_date
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__23;
  v8 = __Block_byref_object_dispose__23;
  v9 = 0;
  v0 = dateManipulationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NSDate_TimeManipulationForTesting___atx_date__block_invoke;
  block[3] = &unk_1E80C0758;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

+ (id)_atx_dateWithTimeIntervalSinceNow:()TimeManipulationForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  v2 = dateManipulationQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__NSDate_TimeManipulationForTesting___atx_dateWithTimeIntervalSinceNow___block_invoke;
  v5[3] = &unk_1E80C24A0;
  v5[4] = &v6;
  *&v5[5] = self;
  dispatch_sync(v2, v5);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (double)_atx_timeIntervalSinceReferenceDate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = dateManipulationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NSDate_TimeManipulationForTesting___atx_timeIntervalSinceReferenceDate__block_invoke;
  block[3] = &unk_1E80C0758;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (double)_atx_timeIntervalSinceNow
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = dateManipulationQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__NSDate_TimeManipulationForTesting___atx_timeIntervalSinceNow__block_invoke;
  v5[3] = &unk_1E80C29A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v2, v5);

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end