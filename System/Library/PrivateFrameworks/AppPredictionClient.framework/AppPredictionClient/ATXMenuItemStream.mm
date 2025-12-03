@interface ATXMenuItemStream
- (id)_getIntentEventFromBMAppMenuItem:(id)item bundleIdFilter:(id)filter;
- (id)getMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter limit:(unint64_t)limit;
- (unint64_t)numberOfMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (void)_enumerateMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter reversed:(BOOL)reversed block:(id)block;
@end

@implementation ATXMenuItemStream

- (id)getMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter limit:(unint64_t)limit
{
  filterCopy = filter;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __84__ATXMenuItemStream_getMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_limit___block_invoke;
  v21 = &unk_1E80C1A58;
  v22 = v13;
  limitCopy = limit;
  v14 = v13;
  [(ATXMenuItemStream *)self _enumerateMenuItemEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:filterCopy reversed:1 block:&v18];

  reverseObjectEnumerator = [v14 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (unint64_t)numberOfMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ATXMenuItemStream_numberOfMenuItemEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXMenuItemStream *)self _enumerateMenuItemEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:0 reversed:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateMenuItemEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter reversed:(BOOL)reversed block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__ATXMenuItemStream__enumerateMenuItemEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_12;
  v19[3] = &unk_1E80C1AA8;
  v19[4] = self;
  v16 = filterCopy;
  v20 = v16;
  v17 = blockCopy;
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

- (id)_getIntentEventFromBMAppMenuItem:(id)item bundleIdFilter:(id)filter
{
  itemCopy = item;
  filterCopy = filter;
  bundleID = [itemCopy bundleID];
  if (bundleID)
  {
  }

  else
  {
    bundleURL = [itemCopy bundleURL];

    if (!bundleURL)
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXMenuItemStream _getIntentEventFromBMAppMenuItem:v19 bundleIdFilter:?];
      }

      goto LABEL_15;
    }
  }

  path = [itemCopy path];
  v10 = [path count];

  if (v10)
  {
    if (!filterCopy || ([itemCopy bundleID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", filterCopy), v11, (v12 & 1) != 0))
    {
      path2 = [itemCopy path];
      lastObject = [path2 lastObject];

      path3 = [itemCopy path];
      if ([path3 count])
      {
        path4 = [itemCopy path];
        path5 = [itemCopy path];
        v18 = [path4 subarrayWithRange:{0, objc_msgSend(path5, "count") - 1}];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v21 = [v18 componentsJoinedByString:@" > "];
      v22 = [ATXAction alloc];
      path6 = [itemCopy path];
      v24 = objc_opt_new();
      bundleID2 = [itemCopy bundleID];
      v26 = [(ATXAction *)v22 initWithMenuItemPath:path6 actionUUID:v24 bundleId:bundleID2 title:lastObject subtitle:v21];

      v27 = [ATXIntentEvent alloc];
      bundleID3 = [itemCopy bundleID];
      v20 = [(ATXIntentEvent *)v27 initWithBundleId:bundleID3 intentType:@"RunIntelligenceCommand" dateInterval:0 action:v26];

      goto LABEL_18;
    }

    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ATXMenuItemStream *)itemCopy _getIntentEventFromBMAppMenuItem:filterCopy bundleIdFilter:v19];
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