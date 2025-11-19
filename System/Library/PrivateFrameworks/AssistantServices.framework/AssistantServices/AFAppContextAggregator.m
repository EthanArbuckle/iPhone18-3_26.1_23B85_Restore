@interface AFAppContextAggregator
- (void)aggregateContextForAppWithBundleIdentifier:(id)a3 contextProvider:(id)a4 deliveryHandler:(id)a5 completionHandler:(id)a6;
- (void)aggregateContextWithRawOutputForAppWithBundleIdentifier:(id)a3 contextProvider:(id)a4 deliveryHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation AFAppContextAggregator

- (void)aggregateContextForAppWithBundleIdentifier:(id)a3 contextProvider:(id)a4 deliveryHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __119__AFAppContextAggregator_aggregateContextForAppWithBundleIdentifier_contextProvider_deliveryHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E7348320;
  v13 = v10;
  v11 = v10;
  [(AFAppContextAggregator *)self aggregateContextWithRawOutputForAppWithBundleIdentifier:a3 contextProvider:a4 deliveryHandler:a5 completionHandler:v12];
}

- (void)aggregateContextWithRawOutputForAppWithBundleIdentifier:(id)a3 contextProvider:(id)a4 deliveryHandler:(id)a5 completionHandler:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[AFAppContextAggregator aggregateContextWithRawOutputForAppWithBundleIdentifier:contextProvider:deliveryHandler:completionHandler:]";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s Asking for context for %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __132__AFAppContextAggregator_aggregateContextWithRawOutputForAppWithBundleIdentifier_contextProvider_deliveryHandler_completionHandler___block_invoke;
  v17[3] = &unk_1E73482F8;
  v18 = v9;
  v19 = v12;
  v14 = v12;
  v15 = v9;
  [v10 getAppContextWithDeliveryHandler:v11 completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __132__AFAppContextAggregator_aggregateContextWithRawOutputForAppWithBundleIdentifier_contextProvider_deliveryHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[AFAppContextAggregator aggregateContextWithRawOutputForAppWithBundleIdentifier:contextProvider:deliveryHandler:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Got context for %@", buf, 0x16u);
  }

  v6 = [v3 _aceValue];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E69C7710]);
  v9 = objc_alloc_init(MEMORY[0x1E69C7AB8]);
  [v9 setBundleId:*(a1 + 32)];
  [v8 setAppIdentifyingInfo:v9];
  v10 = [v8 dictionary];
  [v7 addObject:v10];

  if ([v6 count])
  {
    [v7 addObjectsFromArray:v6];
  }

  v11 = objc_alloc_init(MEMORY[0x1E69C7A58]);
  v14 = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v11 setOrderedContext:v12];

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

@end