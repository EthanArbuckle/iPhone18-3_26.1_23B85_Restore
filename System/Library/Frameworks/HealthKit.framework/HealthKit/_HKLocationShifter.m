@interface _HKLocationShifter
+ (BOOL)isShiftRequiredForLocations:(id)a3;
- (_HKLocationShifter)init;
- (void)shiftLocations:(id)a3 withCompletion:(id)a4;
@end

@implementation _HKLocationShifter

- (_HKLocationShifter)init
{
  v7.receiver = self;
  v7.super_class = _HKLocationShifter;
  v2 = [(_HKLocationShifter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (BOOL)isShiftRequiredForLocations:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [v7 coordinate];
        v10 = v9;
        [v7 coordinate];
        LOBYTE(v7) = [getGEOLocationShifterClass() isLocationShiftRequiredForCoordinate:{v10, v11}];
        objc_autoreleasePoolPop(v8);
        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)shiftLocations:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v21 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v22 = objc_alloc_init(getGEOLocationShifterClass());
  v8 = dispatch_group_create();
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      [v10 coordinate];
      v12 = v11;
      [v10 coordinate];
      v14 = v13;
      if ([getGEOLocationShifterClass() isLocationShiftRequiredForCoordinate:{v12, v13}])
      {
        dispatch_group_enter(v8);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke;
        v31[3] = &unk_1E7383CA0;
        v32 = v10;
        v15 = v7;
        v33 = v15;
        v35 = v9;
        v16 = v8;
        v34 = v16;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2;
        v27[3] = &unk_1E7383CC8;
        v30 = v9;
        v28 = v15;
        v29 = v16;
        [v22 shiftCoordinate:v31 accuracy:0 withCompletionHandler:v27 mustGoToNetworkCallback:self->_queue errorHandler:v12 callbackQueue:{v14, 0.0}];
      }

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_14;
  block[3] = &unk_1E73766C8;
  v24 = v7;
  v25 = v6;
  v26 = v21;
  v18 = v21;
  v19 = v6;
  v20 = v7;
  dispatch_group_notify(v8, queue, block);
}

@end