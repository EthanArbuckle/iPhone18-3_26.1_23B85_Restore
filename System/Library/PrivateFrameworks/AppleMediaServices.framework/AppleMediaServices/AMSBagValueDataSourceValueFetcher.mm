@interface AMSBagValueDataSourceValueFetcher
+ (id)_valueFromDictionary:(id)dictionary forBagKey:(id)key;
- (AMSBagDataSourceProtocol)dataSource;
- (AMSBagValueDataSourceValueFetcher)initWithDataSource:(id)source key:(id)key valueType:(unint64_t)type account:(id)account;
- (BOOL)isLoaded;
- (id)_processedDefaultValuePromise:(id)promise;
- (void)loadWithCompletion:(id)completion;
- (void)processedDefaultValueWithCompletion:(id)completion;
@end

@implementation AMSBagValueDataSourceValueFetcher

- (AMSBagDataSourceProtocol)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)isLoaded
{
  dataSource = [(AMSBagValueDataSourceValueFetcher *)self dataSource];
  isLoaded = [dataSource isLoaded];

  return isLoaded;
}

- (AMSBagValueDataSourceValueFetcher)initWithDataSource:(id)source key:(id)key valueType:(unint64_t)type account:(id)account
{
  sourceCopy = source;
  keyCopy = key;
  accountCopy = account;
  v18.receiver = self;
  v18.super_class = AMSBagValueDataSourceValueFetcher;
  v13 = [(AMSBagValueDataSourceValueFetcher *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_dataSource, sourceCopy);
    v15 = [keyCopy copy];
    key = v14->_key;
    v14->_key = v15;

    v14->_valueType = type;
    objc_storeStrong(&v14->_account, account);
  }

  return v14;
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(AMSBagValueDataSourceValueFetcher *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke;
  v7[3] = &unk_1E73B4E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [dataSource loadWithCompletion:v7];
}

void __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 data];
    v7 = [*(a1 + 32) key];
    v8 = [AMSBagValueDataSourceValueFetcher _valueFromDictionary:v6 forBagKey:v7];

    if ([*(a1 + 32) valueType] == 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_2;
      v16[3] = &unk_1E73B4E20;
      v16[4] = *(a1 + 32);
      v9 = [AMSBagURLParser URLBySubstitutingVariablesInURLString:v8 usingPromiseBlock:v16];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_4;
      v15[3] = &unk_1E73B4E48;
      v15[4] = *(a1 + 32);
      v10 = [(AMSOptional *)v9 continueWithBlock:v15];
    }

    else
    {
      v9 = [[AMSOptional alloc] initWithValue:v8];
      v10 = [AMSPromise promiseWithResult:v9];
    }

    v11 = v10;

    [v11 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [*(a1 + 32) key];
    v8 = [v12 stringWithFormat:@"Unable to retrieve %@ because we failed to load the bag.", v13];

    v14 = *(a1 + 40);
    v11 = AMSError(203, @"Bag Load Failed", v8, v5);
    (*(v14 + 16))(v14, 0, v11);
  }
}

AMSMutablePromise *__56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) dataSource];
  v6 = [*(a1 + 32) account];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_3;
  v9[3] = &unk_1E73B4DF8;
  v7 = v4;
  v10 = v7;
  [v5 valueForURLVariable:v3 account:v6 completion:v9];

  return v7;
}

void __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

id __56__AMSBagValueDataSourceValueFetcher_loadWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[AMSOptional alloc] initWithValue:v3];
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v4 = [*(a1 + 32) key];
    v11 = AMSErrorWithFormat(200, @"Invalid Bag Value", @"The URL was malformed for key: %@", v6, v7, v8, v9, v10, v4);
    v5 = [AMSPromise promiseWithError:v11];
  }

  return v5;
}

- (void)processedDefaultValueWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(AMSBagValueDataSourceValueFetcher *)self dataSource];
  v6 = [(AMSBagValueDataSourceValueFetcher *)self key];
  v8 = [dataSource defaultValueForKey:v6];

  v7 = [(AMSBagValueDataSourceValueFetcher *)self _processedDefaultValuePromise:v8];
  [v7 addFinishBlock:completionCopy];
}

- (id)_processedDefaultValuePromise:(id)promise
{
  promiseCopy = promise;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = promiseCopy;
  }

  else
  {
    v5 = 0;
  }

  valueType = [(AMSBagValueDataSourceValueFetcher *)self valueType];
  if (v5 && valueType == 5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__AMSBagValueDataSourceValueFetcher__processedDefaultValuePromise___block_invoke;
    v11[3] = &unk_1E73B4E20;
    v11[4] = self;
    v7 = [AMSBagURLParser URLBySubstitutingVariablesInURLString:v5 usingPromiseBlock:v11];
    v8 = [(AMSOptional *)v7 thenWithBlock:&__block_literal_global_19];
  }

  else
  {
    v7 = [[AMSOptional alloc] initWithValue:promiseCopy];
    v8 = [AMSPromise promiseWithResult:v7];
  }

  v9 = v8;

  return v9;
}

AMSMutablePromise *__67__AMSBagValueDataSourceValueFetcher__processedDefaultValuePromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) dataSource];
  v6 = [*(a1 + 32) account];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__AMSBagValueDataSourceValueFetcher__processedDefaultValuePromise___block_invoke_2;
  v9[3] = &unk_1E73B4DF8;
  v7 = v4;
  v10 = v7;
  [v5 valueForURLVariable:v3 account:v6 completion:v9];

  return v7;
}

void __67__AMSBagValueDataSourceValueFetcher__processedDefaultValuePromise___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

id __67__AMSBagValueDataSourceValueFetcher__processedDefaultValuePromise___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

+ (id)_valueFromDictionary:(id)dictionary forBagKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v7 = objc_autoreleasePoolPush();
  allKeys = [dictionaryCopy allKeys];
  v9 = [allKeys containsObject:keyCopy];

  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v11 = [keyCopy componentsSeparatedByString:@"/"];
    v12 = 0;
    if ([v11 count])
    {
      while (1)
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [dictionaryCopy objectForKeyedSubscript:v13];
        if (!v14)
        {
LABEL_9:
          v12 = 0;
          goto LABEL_11;
        }

        if (v12 == ([v11 count] - 1))
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_9;
        }

        ++v12;
        dictionaryCopy = v14;
        if (v12 >= [v11 count])
        {
          v12 = 0;
          dictionaryCopy = v14;
          goto LABEL_12;
        }
      }

      v12 = v14;
LABEL_11:
    }

LABEL_12:
    v10 = v12;
  }

  objc_autoreleasePoolPop(v7);

  return v10;
}

@end