@interface SKReceiptRefreshRequest
- (BOOL)_wantsExpired;
- (BOOL)_wantsRevoked;
- (BOOL)_wantsVPP;
- (SKReceiptRefreshRequest)initWithReceiptProperties:(NSDictionary *)properties;
- (void)_requestCompletedWithError:(id)a3;
- (void)_start;
@end

@implementation SKReceiptRefreshRequest

- (SKReceiptRefreshRequest)initWithReceiptProperties:(NSDictionary *)properties
{
  v4 = properties;
  v5 = [(SKRequest *)self init];
  if (v5)
  {
    v6 = [(NSDictionary *)v4 copy];
    v7 = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (void)_start
{
  v3 = _os_activity_create(&dword_1B23EF000, "StoreKit/RefreshReceipt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SKReceiptRefreshRequest__start__block_invoke;
  block[3] = &unk_1E7B27980;
  block[4] = self;
  os_activity_apply(v3, block);
}

void __33__SKReceiptRefreshRequest__start__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_wantsExpired")}];
  [v2 setValue:v3 forKey:@"expired"];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_wantsRevoked")}];
  [v2 setValue:v4 forKey:@"revoked"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_wantsVPP")}];
  [v2 setValue:v5 forKey:@"vpp"];

  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__SKReceiptRefreshRequest__start__block_invoke_2;
  aBlock[3] = &unk_1E7B283B8;
  objc_copyWeak(&v19, &location);
  v6 = _Block_copy(aBlock);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Starting receipt refresh request", buf, 0xCu);
  }

  v8 = +[SKServiceBroker defaultBroker];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__SKReceiptRefreshRequest__start__block_invoke_4;
  v16[3] = &unk_1E7B27DA8;
  v9 = v6;
  v17 = v9;
  v10 = [v8 storeKitServiceWithErrorHandler:v16];

  v11 = [*(a1 + 32) paymentQueueClient];
  v12 = [v11 plist];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__SKReceiptRefreshRequest__start__block_invoke_2_5;
  v14[3] = &unk_1E7B27B08;
  v13 = v9;
  v15 = v13;
  [v10 renewReceiptWithOptions:v2 client:v12 replyBlock:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __33__SKReceiptRefreshRequest__start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SKReceiptRefreshRequest__start__block_invoke_3;
  v5[3] = &unk_1E7B28390;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __33__SKReceiptRefreshRequest__start__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__SKReceiptRefreshRequest__start__block_invoke_3_cold_1(WeakRetained, v3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished refreshing receipt", &v5, 0xCu);
  }

  [WeakRetained _requestCompletedWithError:*v3];
}

- (void)_requestCompletedWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [v4 domain];
    if ([v5 isEqualToString:@"ASDErrorDomain"])
    {
      v6 = [v14 code];

      if (v6 == 603)
      {

        goto LABEL_5;
      }
    }

    else
    {
    }

    v10 = [(SKRequest *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
LABEL_11:
      v13 = v14;
      goto LABEL_13;
    }

    v9 = [(SKRequest *)self delegate];
    v12 = _SKErrorFromNSError(v14);
    [v9 request:self didFailWithError:v12];

LABEL_10:
    goto LABEL_11;
  }

LABEL_5:
  v7 = [(SKRequest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SKRequest *)self delegate];
    [v9 requestDidFinish:self];
    v14 = 0;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_13:
}

- (BOOL)_wantsExpired
{
  v2 = [(NSDictionary *)self->_properties objectForKey:@"expired"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_wantsRevoked
{
  v2 = [(NSDictionary *)self->_properties objectForKey:@"revoked"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_wantsVPP
{
  v2 = [(NSDictionary *)self->_properties objectForKey:@"vpp"];
  v3 = [v2 BOOLValue];

  return v3;
}

void __33__SKReceiptRefreshRequest__start__block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = v2;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Finished refreshing receipt with error: %{public}@", &v3, 0x16u);
}

@end