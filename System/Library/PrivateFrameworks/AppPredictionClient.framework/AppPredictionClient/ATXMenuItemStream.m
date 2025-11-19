@interface ATXMenuItemStream
- (id)_getIntentEventFromBMAppMenuItem:(id)a3 bundleIdFilter:(id)a4;
- (id)getMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 limit:(unint64_t)a6;
- (unint64_t)numberOfMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4;
- (void)_enumerateMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 reversed:(BOOL)a6 block:(id)a7;
@end

@implementation ATXMenuItemStream

- (id)getMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 limit:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __84__ATXMenuItemStream_getMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_limit___block_invoke;
  v21 = &unk_1E80C1A58;
  v22 = v13;
  v23 = a6;
  v14 = v13;
  [(ATXMenuItemStream *)self _enumerateMenuItemEventsBetweenStartDate:v12 endDate:v11 bundleIdFilter:v10 reversed:1 block:&v18];

  v15 = [v14 reverseObjectEnumerator];
  v16 = [v15 allObjects];

  return v16;
}

- (unint64_t)numberOfMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ATXMenuItemStream_numberOfMenuItemEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXMenuItemStream *)self _enumerateMenuItemEventsBetweenStartDate:v6 endDate:v7 bundleIdFilter:0 reversed:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateMenuItemEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 reversed:(BOOL)a6 block:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_12;
  v19[3] = &unk_1E80C1AA8;
  v19[4] = self;
  v16 = v13;
  v20 = v16;
  v17 = v14;
  v21 = v17;
  v18 = [0 sinkWithCompletion:&__block_literal_global_19 shouldContinue:v19];

  objc_autoreleasePoolPop(v15);
}

void __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (v3)
  {
    v4 = [*(a1 + 32) _getIntentEventFromBMAppMenuItem:v3 bundleIdFilter:*(a1 + 40)];
    if (v4)
    {
      v5 = (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_getIntentEventFromBMAppMenuItem:(id)a3 bundleIdFilter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleID];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 bundleURL];

    if (!v8)
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXMenuItemStream _getIntentEventFromBMAppMenuItem:v19 bundleIdFilter:?];
      }

      goto LABEL_15;
    }
  }

  v9 = [v5 path];
  v10 = [v9 count];

  if (v10)
  {
    if (!v6 || ([v5 bundleID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v6), v11, (v12 & 1) != 0))
    {
      v13 = [v5 path];
      v14 = [v13 lastObject];

      v15 = [v5 path];
      if ([v15 count])
      {
        v16 = [v5 path];
        v17 = [v5 path];
        v18 = [v16 subarrayWithRange:{0, objc_msgSend(v17, "count") - 1}];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v21 = [v18 componentsJoinedByString:@" > "];
      v22 = [ATXAction alloc];
      v23 = [v5 path];
      v24 = objc_opt_new();
      v25 = [v5 bundleID];
      v26 = [(ATXAction *)v22 initWithMenuItemPath:v23 actionUUID:v24 bundleId:v25 title:v14 subtitle:v21];

      v27 = [ATXIntentEvent alloc];
      v28 = [v5 bundleID];
      v20 = [(ATXIntentEvent *)v27 initWithBundleId:v28 intentType:@"RunIntelligenceCommand" dateInterval:0 action:v26];

      goto LABEL_18;
    }

    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ATXMenuItemStream *)v5 _getIntentEventFromBMAppMenuItem:v6 bundleIdFilter:v19];
    }
  }

  else
  {
    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXMenuItemStream _getIntentEventFromBMAppMenuItem:v19 bundleIdFilter:?];
    }
  }

LABEL_15:

  v20 = 0;
LABEL_18:

  return v20;
}

void __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXMenuItemStream: Can't read App.MenuItem stream with error: %@", &v4, 0xCu);
}

- (void)_getIntentEventFromBMAppMenuItem:(NSObject *)a3 bundleIdFilter:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 bundleID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Donation Processing (Menu Item) - Rejected: filtered out bundle id %@ that doesn't match %@", &v6, 0x16u);
}

@end