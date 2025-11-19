@interface SKProductStorePromotionController
+ (SKProductStorePromotionController)defaultController;
- (void)_clearPromotionInfo;
- (void)_fetchProductsForPromotionOrder:(id)a3 completionHandler:(id)a4;
- (void)fetchStorePromotionOrderWithCompletionHandler:(void *)completionHandler;
- (void)fetchStorePromotionVisibilityForProduct:(SKProduct *)product completionHandler:(void *)completionHandler;
- (void)updateStorePromotionOrder:(NSArray *)promotionOrder completionHandler:(void *)completionHandler;
- (void)updateStorePromotionVisibility:(SKProductStorePromotionVisibility)promotionVisibility forProduct:(SKProduct *)product completionHandler:(void *)completionHandler;
@end

@implementation SKProductStorePromotionController

+ (SKProductStorePromotionController)defaultController
{
  v3 = defaultController_defaultController;
  if (!defaultController_defaultController)
  {
    v4 = objc_alloc_init(a1);
    v5 = defaultController_defaultController;
    defaultController_defaultController = v4;

    v3 = defaultController_defaultController;
  }

  return v3;
}

- (void)fetchStorePromotionVisibilityForProduct:(SKProduct *)product completionHandler:(void *)completionHandler
{
  v5 = product;
  v6 = completionHandler;
  if (v6)
  {
    v7 = [(SKProduct *)v5 productIdentifier];

    if (v7)
    {
      v8 = +[SKServiceBroker defaultBroker];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __95__SKProductStorePromotionController_fetchStorePromotionVisibilityForProduct_completionHandler___block_invoke;
      v16[3] = &unk_1E7B27DA8;
      v9 = v6;
      v17 = v9;
      v10 = [v8 storeKitServiceWithErrorHandler:v16];

      v11 = MEMORY[0x1E695DFD8];
      v12 = [(SKProduct *)v5 productIdentifier];
      v13 = [v11 setWithObject:v12];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __95__SKProductStorePromotionController_fetchStorePromotionVisibilityForProduct_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7B27E20;
      v15 = v9;
      [v10 promotionInfoForProductIdentifiers:v13 client:0 reply:v14];
    }
  }
}

void __95__SKProductStorePromotionController_fetchStorePromotionVisibilityForProduct_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _SKErrorFromNSError(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __95__SKProductStorePromotionController_fetchStorePromotionVisibilityForProduct_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = _SKErrorFromNSError(v5);
    v8 = 0;
  }

  else
  {
    if ([v14 count])
    {
      v6 = [v14 firstObject];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F8];
    }

    v9 = [v6 objectForKeyedSubscript:0x1F29BE000];
    v10 = [v9 intValue];

    if (v10 < 0)
    {
      v8 = 0;
    }

    else
    {
      v11 = [v6 objectForKeyedSubscript:0x1F29BE000];
      v8 = [v11 intValue];
    }

    v7 = 0;
  }

  v12 = *(a1 + 32);
  v13 = _SKErrorFromNSError(v7);
  (*(v12 + 16))(v12, v8, v13);
}

- (void)updateStorePromotionVisibility:(SKProductStorePromotionVisibility)promotionVisibility forProduct:(SKProduct *)product completionHandler:(void *)completionHandler
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = product;
  v8 = completionHandler;
  v9 = [(SKProduct *)v7 productIdentifier];

  if (v9)
  {
    v10 = +[SKServiceBroker defaultBroker];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__SKProductStorePromotionController_updateStorePromotionVisibility_forProduct_completionHandler___block_invoke;
    v20[3] = &unk_1E7B27DA8;
    v11 = v8;
    v21 = v11;
    v12 = [v10 storeKitServiceWithErrorHandler:v20];

    v24 = 0x1F29BE000;
    v13 = [(SKProduct *)v7 productIdentifier];
    v22 = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:promotionVisibility];
    v23 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__SKProductStorePromotionController_updateStorePromotionVisibility_forProduct_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7B27DA8;
    v19 = v11;
    [v12 setPromotionInfo:v16 forClient:0 reply:v18];

    v17 = v21;
LABEL_7:

    goto LABEL_8;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKProductStorePromotionController updateStorePromotionVisibility:forProduct:completionHandler:];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    (*(v8 + 2))(v8, v17);
    goto LABEL_7;
  }

LABEL_8:
}

void __97__SKProductStorePromotionController_updateStorePromotionVisibility_forProduct_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _SKErrorFromNSError(a2);
    (*(v2 + 16))(v2, v3);
  }
}

void __97__SKProductStorePromotionController_updateStorePromotionVisibility_forProduct_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _SKErrorFromNSError(a2);
    (*(v2 + 16))(v2, v3);
  }
}

- (void)fetchStorePromotionOrderWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[SKServiceBroker defaultBroker];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E7B27DA8;
    v6 = v4;
    v11 = v6;
    v7 = [v5 storeKitServiceWithErrorHandler:v10];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7B27E48;
    v8[4] = self;
    v9 = v6;
    [v7 promotionInfoForProductIdentifiers:0 client:0 reply:v8];
  }
}

void __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _SKErrorFromNSError(a2);
  (*(v2 + 16))(v2, MEMORY[0x1E695E0F0], v3);
}

void __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke_3;
    block[3] = &unk_1E7B27B30;
    v23 = *(a1 + 40);
    v22 = v6;
    dispatch_async(v7, block);

    v8 = v23;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:SKPaymentOptionLegacyOfferName];
          v16 = [v14 objectForKeyedSubscript:0x1F29BDFE0];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 integerValue] & 0x8000000000000000) == 0 && objc_msgSend(v15, "length"))
          {
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v11);
    }

    [*(a1 + 32) _fetchProductsForPromotionOrder:v8 completionHandler:*(a1 + 40)];
    v6 = 0;
  }
}

void __83__SKProductStorePromotionController_fetchStorePromotionOrderWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _SKErrorFromNSError(*(a1 + 32));
  (*(v1 + 16))(v1, MEMORY[0x1E695E0F0], v2);
}

- (void)updateStorePromotionOrder:(NSArray *)promotionOrder completionHandler:(void *)completionHandler
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = promotionOrder;
  v6 = completionHandler;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v5, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 productIdentifier];

        if (v14)
        {
          v15 = [v13 productIdentifier];
          [v7 addObject:v15];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v29 = 0x1F29BDFE0;
  v30 = v7;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v17 = +[SKServiceBroker defaultBroker];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__SKProductStorePromotionController_updateStorePromotionOrder_completionHandler___block_invoke;
  v23[3] = &unk_1E7B27DA8;
  v18 = v6;
  v24 = v18;
  v19 = [v17 storeKitServiceWithErrorHandler:v23];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__SKProductStorePromotionController_updateStorePromotionOrder_completionHandler___block_invoke_2;
  v21[3] = &unk_1E7B27DA8;
  v22 = v18;
  v20 = v18;
  [v19 setPromotionInfo:v16 forClient:0 reply:v21];
}

void __81__SKProductStorePromotionController_updateStorePromotionOrder_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _SKErrorFromNSError(a2);
    (*(v2 + 16))(v2, v3);
  }
}

void __81__SKProductStorePromotionController_updateStorePromotionOrder_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _SKErrorFromNSError(a2);
    (*(v2 + 16))(v2, v3);
  }
}

- (void)_fetchProductsForPromotionOrder:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [SKProductsRequest alloc];
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v9 = [(SKProductsRequest *)v7 initWithProductIdentifiers:v8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Starting products request %{public}@ for promotion order %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_10;
    v14[3] = &unk_1E7B27E98;
    v15 = v9;
    v17 = v6;
    v16 = v5;
    v11 = v6;
    v12 = v9;
    [(SKProductsRequest *)v12 _startWithCompletionHandler:v14];
  }

  else
  {
    v13 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke;
    block[3] = &unk_1E7B27900;
    v19 = v6;
    v12 = v6;
    dispatch_async(v13, block);

    v11 = v19;
  }
}

void __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v39 = v7;
    v40 = 2114;
    v41 = v5;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished products request %{public}@ with response %{public}@", buf, 0x16u);
  }

  if (v6 || ([v5 products], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_11;
    block[3] = &unk_1E7B27B30;
    v36 = *(a1 + 48);
    v35 = v6;
    dispatch_async(v8, block);

    v9 = v36;
  }

  else
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = a1;
    obj = *(a1 + 40);
    v12 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v5 products];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_2;
          v29[3] = &unk_1E7B27E70;
          v29[4] = v16;
          v18 = [v17 indexOfObjectPassingTest:v29];

          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [v5 products];
            v20 = [v19 objectAtIndexedSubscript:v18];
            [v24 addObject:v20];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v13);
    }

    v21 = dispatch_get_global_queue(21, 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_3;
    v26[3] = &unk_1E7B27B30;
    v22 = *(v23 + 48);
    v27 = v24;
    v28 = v22;
    v9 = v24;
    dispatch_async(v21, v26);
  }
}

void __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _SKErrorFromNSError(*(a1 + 32));
  (*(v1 + 16))(v1, MEMORY[0x1E695E0F0], v2);
}

uint64_t __87__SKProductStorePromotionController__fetchProductsForPromotionOrder_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 productIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_clearPromotionInfo
{
  v2 = +[SKServiceBroker defaultBroker];
  v3 = [v2 storeKitSynchronousServiceWithErrorHandler:&__block_literal_global_4];

  [v3 setPromotionInfo:0 forClient:0 reply:&__block_literal_global_25];
}

void __65__SKProductStorePromotionController_Private___clearPromotionInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __65__SKProductStorePromotionController_Private___clearPromotionInfo__block_invoke_cold_1(a2);
  }
}

void __65__SKProductStorePromotionController_Private___clearPromotionInfo__block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Finished with error %{public}@", &v1, 0xCu);
}

@end