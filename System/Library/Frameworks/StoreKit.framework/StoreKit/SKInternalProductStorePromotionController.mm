@interface SKInternalProductStorePromotionController
+ (id)defaultController;
- (void)_handleReply:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation SKInternalProductStorePromotionController

+ (id)defaultController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SKInternalProductStorePromotionController_defaultController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultController_onceToken != -1)
  {
    dispatch_once(&defaultController_onceToken, block);
  }

  v2 = defaultController_defaultController_0;

  return v2;
}

uint64_t __62__SKInternalProductStorePromotionController_defaultController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultController_defaultController_0;
  defaultController_defaultController_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)_handleReply:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || v9)
  {
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SKInternalProductStorePromotionController _handleReply:v9 error:? completionHandler:?];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v48 = self;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%{public}@]: No promotion info found", buf, 0xCu);
    }

    v29 = dispatch_get_global_queue(21, 0);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __82__SKInternalProductStorePromotionController__handleReply_error_completionHandler___block_invoke;
    v43[3] = &unk_1E7B27B30;
    v45 = v11;
    v44 = v9;
    v28 = v11;
    dispatch_async(v29, v43);

    v27 = v45;
  }

  else
  {
    v30 = v10;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SKInternalProductStorePromotionController _handleReply:v8 error:? completionHandler:?];
    }

    v33 = [MEMORY[0x1E695DF70] array];
    v31 = [MEMORY[0x1E695DFA8] set];
    v32 = [MEMORY[0x1E695DFA8] set];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [v17 valueForKey:SKPaymentOptionLegacyOfferName];
          v19 = [v17 valueForKey:0x1F29BDFE0];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v19 integerValue] & 0x8000000000000000) == 0)
          {
            [v33 addObject:v18];
            v20 = [v17 valueForKey:0x1F29BE000];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v20 integerValue])
              {
                v21 = [v20 integerValue];
                v22 = v32;
                if (v21 == 1 || (v23 = [v20 integerValue], v22 = v31, v23 == 2))
                {
                  [v22 addObject:v18];
                }
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v14);
    }

    v24 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SKInternalProductStorePromotionController__handleReply_error_completionHandler___block_invoke_4;
    block[3] = &unk_1E7B28690;
    v35 = v33;
    v36 = v31;
    v37 = v32;
    v38 = v30;
    v25 = v30;
    v26 = v32;
    v27 = v31;
    v28 = v33;
    dispatch_async(v24, block);

    v9 = 0;
  }
}

void __82__SKInternalProductStorePromotionController__handleReply_error_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = objc_opt_new();
  v3 = objc_opt_new();
  (*(v2 + 16))(v2, MEMORY[0x1E695E0F0], v4, v3, *(a1 + 32));
}

- (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = +[SKServiceBroker defaultBroker];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __129__SKInternalProductStorePromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke;
    v11[3] = &unk_1E7B286B8;
    v11[4] = self;
    v7 = v5;
    v12 = v7;
    v8 = [v6 storeKitServiceWithErrorHandler:v11];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __129__SKInternalProductStorePromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke_7;
    v9[3] = &unk_1E7B286E0;
    v9[4] = self;
    v10 = v7;
    [v8 promotionInfoForProductIdentifiers:0 client:0 reply:v9];
  }
}

void __129__SKInternalProductStorePromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __129__SKInternalProductStorePromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke_cold_1(a1, v3);
  }

  [*(a1 + 32) _handleReply:MEMORY[0x1E695E0F0] error:v3 completionHandler:*(a1 + 40)];
}

- (void)_handleReply:(uint64_t)a1 error:(uint64_t)a2 completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = a2;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to retrieve promotion info: %{public}@", &v2, 0x16u);
}

- (void)_handleReply:(uint64_t)a1 error:(void *)a2 completionHandler:.cold.2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = a1;
  v4 = 2050;
  v5 = [a2 count];
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%{public}@]: Successfully retrieved promotion info, found %{public}lu entries", &v2, 0x16u);
}

void __129__SKInternalProductStorePromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543618;
  v4 = v2;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Failed in XPC to retrieve promotion info: %{public}@", &v3, 0x16u);
}

@end