@interface NSArray(INIntentResolutionResultDataProviding)
- (id)_JSONDictionaryRepresentationForIntent:()INIntentResolutionResultDataProviding parameterName:;
- (id)resolutionResultDataForIntent:()INIntentResolutionResultDataProviding intentSlotDescription:error:;
- (void)transformResolutionResultForIntent:()INIntentResolutionResultDataProviding intentSlotDescription:withOptionsProvider:completion:;
@end

@implementation NSArray(INIntentResolutionResultDataProviding)

- (void)transformResolutionResultForIntent:()INIntentResolutionResultDataProviding intentSlotDescription:withOptionsProvider:completion:
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v24 = a6;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v11 setMaxConcurrentOperationCount:1];
  [v11 setSuspended:1];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a1;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v35;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [[INResolutionResultTransformationOperation alloc] initWithResult:*(*(&v34 + 1) + 8 * v16) intent:v28 intentSlotDescription:v27 optionsProvider:v26];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __138__NSArray_INIntentResolutionResultDataProviding__transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke;
        v32[3] = &unk_1E7284088;
        v33 = v10;
        [(INResolutionResultTransformationOperation *)v14 setReturnBlock:v32];
        if (v17)
        {
          [(INResolutionResultTransformationOperation *)v14 addDependency:v17];
        }

        [v11 addOperation:v14];

        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v18 = MEMORY[0x1E696AAE0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __138__NSArray_INIntentResolutionResultDataProviding__transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke_2;
  v29[3] = &unk_1E7287140;
  v30 = v10;
  v31 = v24;
  v19 = v10;
  v20 = v24;
  v21 = [v18 blockOperationWithBlock:v29];
  v22 = v21;
  if (v14)
  {
    [v21 addDependency:v14];
  }

  [v11 addOperation:v22];
  [v11 setSuspended:0];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_JSONDictionaryRepresentationForIntent:()INIntentResolutionResultDataProviding parameterName:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = a1;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) _JSONDictionaryRepresentationForIntent:v6 parameterName:{v7, v19}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  v23 = @"resolutionResults";
  v15 = [v8 copy];
  v24 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)resolutionResultDataForIntent:()INIntentResolutionResultDataProviding intentSlotDescription:error:
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 facadePropertyName];
  v11 = [v8 valueForKeyPath:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = objc_alloc_init(_INPBIntentSlotResolutionMulticardinalResult);
  v13 = [v11 count];
  if ([a1 count] || !v13)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = a1;
    v21 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = [*(*(&v32 + 1) + 8 * i) _buildIntentSlotResolutionResultWithIntentSlotDescription:v9];
          [(_INPBIntentSlotResolutionMulticardinalResult *)v12 addResolutionResults:v25];
        }

        v22 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v22);
    }

    goto LABEL_15;
  }

  v14 = INSiriLogContextIntents;
  if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v29 = v14;
  v30 = [v9 facadePropertyName];
  v31 = [v8 description];
  *buf = 136315650;
  v40 = "[NSArray(INIntentResolutionResultDataProviding) resolutionResultDataForIntent:intentSlotDescription:error:]";
  v41 = 2114;
  v42 = v30;
  v43 = 2114;
  v44 = v31;
  _os_log_error_impl(&dword_18E991000, v29, OS_LOG_TYPE_ERROR, "%s There should be at least 1 resolution result returned for the .%{public}@ property of %{public}@, since there was at least 1 input value.", buf, 0x20u);

  if (a5)
  {
LABEL_7:
    v15 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v9 facadePropertyName];
    v18 = [v8 description];
    v19 = [v16 stringWithFormat:@"There should be at least 1 resolution result returned for the .%@ property of %@, since there was at least 1 input value.", v17, v18];
    v38 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *a5 = [v15 errorWithDomain:@"INIntentResolutionResultErrorDomain" code:1000 userInfo:v20];

LABEL_15:
  }

LABEL_16:
  v26 = [(_INPBIntentSlotResolutionMulticardinalResult *)v12 data];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end