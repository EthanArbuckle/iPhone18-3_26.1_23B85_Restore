@interface NSKeyedUnarchiver(HealthKit)
+ (id)hk_unarchivedObjectOfClass:()HealthKit forKey:data:error:;
+ (id)hk_unarchivedObjectOfClasses:()HealthKit forKey:data:error:;
+ (uint64_t)_hk_performUnarchivingWithData:()HealthKit error:handler:;
@end

@implementation NSKeyedUnarchiver(HealthKit)

+ (id)hk_unarchivedObjectOfClass:()HealthKit forKey:data:error:
{
  v10 = a4;
  v11 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__NSKeyedUnarchiver_HealthKit__hk_unarchivedObjectOfClass_forKey_data_error___block_invoke;
  v16[3] = &unk_1E737B620;
  v18 = &v20;
  v19 = a3;
  v12 = v10;
  v17 = v12;
  if ([self _hk_performUnarchivingWithData:v11 error:a6 handler:v16])
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);

  return v14;
}

+ (id)hk_unarchivedObjectOfClasses:()HealthKit forKey:data:error:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__NSKeyedUnarchiver_HealthKit__hk_unarchivedObjectOfClasses_forKey_data_error___block_invoke;
  v18[3] = &unk_1E737B648;
  v21 = &v22;
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  if ([self _hk_performUnarchivingWithData:v12 error:a6 handler:v18])
  {
    v15 = v23[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v22, 8);

  return v16;
}

+ (uint64_t)_hk_performUnarchivingWithData:()HealthKit error:handler:
{
  v7 = a5;
  v8 = MEMORY[0x1E696ACD0];
  v9 = a3;
  v10 = [[v8 alloc] initForReadingFromData:v9 error:a4];

  if (!v10)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v7[2](v7, v10);
  [v10 finishDecoding];
  error = [v10 error];

  if (error)
  {
    error2 = [v10 error];
    v13 = error2;
    if (error2)
    {
      if (a4)
      {
        v14 = error2;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError(error2);
      }
    }

    goto LABEL_9;
  }

  v15 = 1;
LABEL_10:

  return v15;
}

@end