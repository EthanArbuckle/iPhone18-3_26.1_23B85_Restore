@interface AMSBagValue
+ (BOOL)_value:(id)_value isKindOfValueType:(unint64_t)type;
+ (id)bagValueWithKey:(id)key valueType:(unint64_t)type valuePromise:(id)promise;
+ (id)failingBagValueWithKey:(id)key valueType:(unint64_t)type error:(id)error;
+ (id)frozenBagValueWithKey:(id)key value:(id)value valueType:(unint64_t)type;
- (AMSBagValue)initWithDataSource:(id)source key:(id)key valueType:(unint64_t)type account:(id)account;
- (AMSBagValue)initWithFetcher:(id)fetcher valueType:(unint64_t)type;
- (AMSBagValue)valueWithCompletion:(id)completion;
- (AMSBagValue)valueWithError:(id *)error;
- (BOOL)isLoaded;
- (NSString)key;
- (id)transformWithBlock:(id)block;
- (id)valuePromise;
- (void)_applyTransformsToValue:(id)value index:(int64_t)index completion:(id)completion;
@end

@implementation AMSBagValue

- (id)valuePromise
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSBagValue_valuePromise__block_invoke;
  v6[3] = &unk_1E73B4D70;
  v4 = v3;
  v7 = v4;
  [(AMSBagValue *)self valueWithCompletion:v6];

  return v4;
}

- (NSString)key
{
  valueFetcher = [(AMSBagValue *)self valueFetcher];
  v3 = [valueFetcher key];

  return v3;
}

- (BOOL)isLoaded
{
  valueFetcher = [(AMSBagValue *)self valueFetcher];
  isLoaded = [valueFetcher isLoaded];

  return isLoaded;
}

- (AMSBagValue)initWithDataSource:(id)source key:(id)key valueType:(unint64_t)type account:(id)account
{
  accountCopy = account;
  keyCopy = key;
  sourceCopy = source;
  v13 = [[AMSBagValueDataSourceValueFetcher alloc] initWithDataSource:sourceCopy key:keyCopy valueType:type account:accountCopy];

  v14 = [(AMSBagValue *)self initWithFetcher:v13 valueType:type];
  return v14;
}

- (AMSBagValue)initWithFetcher:(id)fetcher valueType:(unint64_t)type
{
  fetcherCopy = fetcher;
  v11.receiver = self;
  v11.super_class = AMSBagValue;
  v8 = [(AMSBagValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_valueType = type;
    objc_storeStrong(&v8->_valueFetcher, fetcher);
  }

  return v9;
}

+ (id)bagValueWithKey:(id)key valueType:(unint64_t)type valuePromise:(id)promise
{
  promiseCopy = promise;
  keyCopy = key;
  v9 = [[AMSBridgedBagValue alloc] initWithKey:keyCopy valueType:type valuePromise:promiseCopy];

  return v9;
}

+ (id)failingBagValueWithKey:(id)key valueType:(unint64_t)type error:(id)error
{
  errorCopy = error;
  keyCopy = key;
  v9 = [[AMSFailingBagValue alloc] initWithKey:keyCopy valueType:type error:errorCopy];

  return v9;
}

+ (id)frozenBagValueWithKey:(id)key value:(id)value valueType:(unint64_t)type
{
  valueCopy = value;
  keyCopy = key;
  v9 = [[AMSFrozenBagValue alloc] initWithKey:keyCopy value:valueCopy valueType:type];

  return v9;
}

- (id)transformWithBlock:(id)block
{
  blockCopy = block;
  v5 = [AMSBagValue alloc];
  valueFetcher = [(AMSBagValue *)self valueFetcher];
  v7 = [(AMSBagValue *)v5 initWithFetcher:valueFetcher valueType:[(AMSBagValue *)self valueType]];

  transformBlocks = [(AMSBagValue *)self transformBlocks];
  v9 = [transformBlocks mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v12 = v11;

  v13 = [blockCopy copy];
  [v12 addObject:v13];

  [(AMSBagValue *)v7 setTransformBlocks:v12];

  return v7;
}

- (AMSBagValue)valueWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AMSLogKey();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__AMSBagValue_valueWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73B4CA8;
  v15 = v5;
  selfCopy = self;
  v17 = completionCopy;
  v6 = completionCopy;
  v7 = v5;
  v8 = _Block_copy(aBlock);
  valueFetcher = [(AMSBagValue *)self valueFetcher];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__AMSBagValue_valueWithCompletion___block_invoke_12;
  v12[3] = &unk_1E73B4D48;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  [valueFetcher loadWithCompletion:v12];

  return result;
}

void __35__AMSBagValue_valueWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  if (v9)
  {
    if (*(a1 + 32))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [%@]", *(a1 + 32)];
    }

    else
    {
      v10 = &stru_1F071BA78;
    }

    if (a4)
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEBUG;
    }

    v12 = +[AMSLogConfig sharedBagConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, v11))
    {
      v14 = objc_opt_class();
      v15 = [*(a1 + 40) key];
      v16 = [*(a1 + 40) valueFetcher];
      *buf = 138544386;
      v18 = v14;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_192869000, v13, v11, "%{public}@:%{public}@ Failed to fetch value: %{public}@. %{public}@ %{public}@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __35__AMSBagValue_valueWithCompletion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = [a2 value];
    if ([*(a1 + 32) valueType])
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      v30[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

      v7 = v9;
    }

    if (!v7)
    {
      v22 = objc_alloc_init(AMSMutablePromise);
      v23 = [*(a1 + 32) valueFetcher];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __35__AMSBagValue_valueWithCompletion___block_invoke_2;
      v28[3] = &unk_1E73B4CD0;
      v28[4] = *(a1 + 32);
      v29 = v22;
      v11 = v22;
      [v23 processedDefaultValueWithCompletion:v28];

      v7 = 0;
      v13 = v11;
      goto LABEL_14;
    }

LABEL_10:
    if (!+[AMSBagValue _value:isKindOfValueType:](AMSBagValue, "_value:isKindOfValueType:", v7, [*(a1 + 32) valueType]))
    {
      v14 = *(a1 + 40);
      v13 = [*(a1 + 32) key];
      [*(a1 + 32) valueType];
      v15 = objc_opt_class();
      v25 = NSStringFromClass(v15);
      v21 = AMSErrorWithFormat(202, @"Bag Key Value Type Mismatch", @"The bag value for %@ doesn't match the type you requested. (requestedValueType = %li | actualValueClass = %@)", v16, v17, v18, v19, v20, v13);
      (*(v14 + 16))(v14, 0, 0, 1, v21);

LABEL_15:
      goto LABEL_16;
    }

    v10 = [AMSPair alloc];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v12 = [(AMSPair *)v10 initWithFirst:v7 second:v11];
    v13 = [AMSPromise promiseWithResult:v12];

LABEL_14:
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __35__AMSBagValue_valueWithCompletion___block_invoke_36;
    v26[3] = &unk_1E73B4D20;
    v24 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v27 = v24;
    [v13 addFinishBlock:v26];

    goto LABEL_15;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, [v5 ams_isBagValueMissingError] ^ 1, v5);
LABEL_16:
}

void __35__AMSBagValue_valueWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[AMSUnitTests isRunningUnitTests];
    v9 = +[AMSLogConfig sharedBagConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        v15 = v14;
        if (v12)
        {
          v3 = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        v23 = AMSLogableError(v7);
        *buf = 138543618;
        v31 = v16;
        v32 = 2114;
        v33 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received error when processing default value. error = %{public}@", buf, 0x16u);
        if (v12)
        {

          v16 = v3;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedBagConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = v20;
        if (v18)
        {
          v3 = AMSLogKey();
          [v19 stringWithFormat:@"%@: [%@] ", v21, v3];
        }

        else
        {
          [v19 stringWithFormat:@"%@: ", v20];
        }
        v22 = ;
        v24 = AMSLogableError(v7);
        *buf = 138543618;
        v31 = v22;
        v32 = 2114;
        v33 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Unexpectedly received error when processing default value. error = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = v3;
        }
      }
    }
  }

  v25 = [v6 value];
  v26 = *(a1 + 40);
  v27 = [AMSPair alloc];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:v25 != 0];
  v29 = [(AMSPair *)v27 initWithFirst:v25 second:v28];
  [v26 finishWithResult:v29];
}

void __35__AMSBagValue_valueWithCompletion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[AMSUnitTests isRunningUnitTests];
    v9 = +[AMSLogConfig sharedBagConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        v15 = v14;
        if (v12)
        {
          v3 = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        v23 = AMSLogableError(v7);
        *buf = 138543618;
        v42 = v16;
        v43 = 2114;
        v44 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received error when handling value after default-checking. error = %{public}@", buf, 0x16u);
        if (v12)
        {

          v16 = v3;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedBagConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = v20;
        if (v18)
        {
          v3 = AMSLogKey();
          [v19 stringWithFormat:@"%@: [%@] ", v21, v3];
        }

        else
        {
          [v19 stringWithFormat:@"%@: ", v20];
        }
        v22 = ;
        v24 = AMSLogableError(v7);
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Unexpectedly received error when handling value after default-checking. error = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = v3;
        }
      }
    }
  }

  v25 = [v6 first];
  v26 = [v6 second];
  v27 = [v26 BOOLValue];

  if (v25)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __35__AMSBagValue_valueWithCompletion___block_invoke_43;
    v38[3] = &unk_1E73B4CF8;
    v28 = *(a1 + 32);
    v39 = *(a1 + 40);
    v40 = v27;
    [v28 _applyTransformsToValue:v25 index:0 completion:v38];
    v29 = v39;
  }

  else
  {
    v30 = *(a1 + 40);
    v29 = [*(a1 + 32) key];
    v37 = [*(a1 + 32) valueFetcher];
    v36 = AMSErrorWithFormat(204, @"Bag Value Missing", @"The bag does not contain %@ nor did anyone register a default value. %@", v31, v32, v33, v34, v35, v29);
    (*(v30 + 16))(v30, 0, 0, 0, v36);
  }
}

- (AMSBagValue)valueWithError:(id *)error
{
  valuePromise = [(AMSBagValue *)self valuePromise];
  v5 = [valuePromise resultWithError:error];

  return v5;
}

- (void)_applyTransformsToValue:(id)value index:(int64_t)index completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  completionCopy = completion;
  if (index < 0 || (-[AMSBagValue transformBlocks](self, "transformBlocks"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11 <= index) || (-[AMSBagValue transformBlocks](self, "transformBlocks"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectAtIndexedSubscript:", index), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    completionCopy[2](completionCopy, valueCopy, 0);
  }

  else
  {
    v14 = (v13)[2](v13, valueCopy);
    if (v14)
    {
      v15 = [[AMSMutablePromise alloc] initWithTimeout:60.0];
      [(AMSMutablePromise *)v15 finishWithPromise:v14];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __56__AMSBagValue__applyTransformsToValue_index_completion___block_invoke;
      v20[3] = &unk_1E73B4D98;
      v20[4] = self;
      indexCopy = index;
      v21 = completionCopy;
      [(AMSPromise *)v15 addFinishBlock:v20];
    }

    else
    {
      v16 = +[AMSLogConfig sharedBagConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = [(AMSBagValue *)self key];
        *buf = 138543874;
        v24 = v18;
        v25 = 2048;
        indexCopy2 = index;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Transform (%ld) block returned nil promise for %{public}@. Resolving with previous value.", buf, 0x20u);
      }

      completionCopy[2](completionCopy, valueCopy, 0);
    }
  }
}

void __56__AMSBagValue__applyTransformsToValue_index_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedBagConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      v10 = [*(a1 + 32) key];
      v11 = 138544130;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Transform (%ld) failed for %{public}@. %{public}@", &v11, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _applyTransformsToValue:a2 index:*(a1 + 48) + 1 completion:*(a1 + 40)];
  }
}

+ (BOOL)_value:(id)_value isKindOfValueType:(unint64_t)type
{
  _valueCopy = _value;
  if (type > 6)
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end