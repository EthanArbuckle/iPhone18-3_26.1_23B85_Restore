@interface VSStorefrontCodeLoadOperation
- (VSStorefrontCodeLoadOperation)init;
- (void)executionDidBegin;
@end

@implementation VSStorefrontCodeLoadOperation

- (VSStorefrontCodeLoadOperation)init
{
  v11.receiver = self;
  v11.super_class = VSStorefrontCodeLoadOperation;
  v2 = [(VSStorefrontCodeLoadOperation *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    v4 = v2->_result;
    v2->_result = v3;

    v5 = MEMORY[0x277CCABD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 queueWithName:v7];
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v8;
  }

  return v2;
}

- (void)executionDidBegin
{
  v3 = @"countryCode";
  v4 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v4 setBagKey:v3];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __50__VSStorefrontCodeLoadOperation_executionDidBegin__block_invoke;
  v9 = &unk_278B732B0;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [(VSAMSBagLoadOperation *)v4 setCompletionBlock:&v6];
  v5 = [(VSStorefrontCodeLoadOperation *)self privateQueue:v6];
  [v5 addOperation:v4];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __50__VSStorefrontCodeLoadOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The value parameter must not be nil."];
    }

    v4 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      if (!v3)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The value parameter must not be nil."];
      }

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, VSForceUnwrapNullable(value) was %@, instead of NSString.", v9}];
    }

    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The value parameter must not be nil."];
    }

    v10 = [v4 lowercaseString];
    v11 = [VSFailable failableWithObject:v10];
  }

  else
  {
    v12 = [WeakRetained error];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = VSPrivateError(-25, 0);
    }

    v10 = v14;

    v11 = [VSFailable failableWithError:v10];
  }

  v15 = v11;
  v16 = [VSOptional optionalWithObject:v11];
  [v2 setResult:v16];

  [v2 finishExecutionIfPossible];
}

@end