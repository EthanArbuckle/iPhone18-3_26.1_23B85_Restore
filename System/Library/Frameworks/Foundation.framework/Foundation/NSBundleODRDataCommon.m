@interface NSBundleODRDataCommon
@end

@implementation NSBundleODRDataCommon

NSError *__58___NSBundleODRDataCommon_assetPacksBecameAvailable_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKey:@"_NSODRURLKey"];
  if (v7)
  {
    v8 = v7;
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v9 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1[4] + 24);
      *buf = 134218499;
      v19 = v15;
      v20 = 2114;
      v21 = a2;
      v22 = 2113;
      v23 = v8;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Pin: Bundle 0x%p / Asset Pack ID: %{public}@ / URL: %{private}@", buf, 0x20u);
    }

    [*(a1[4] + 8) setObject:v8 forKey:a2];
    [*(a1[4] + 24) _cfBundle];
    if (_CFBundleAddResourceURL())
    {
      v10 = +[NSNotificationCenter defaultCenter];
      return -[NSNotificationCenter postNotificationName:object:userInfo:](v10, "postNotificationName:object:userInfo:", @"_NSBundleResourceRequestAssetPackPinnedNotification", *(a1[4] + 24), [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"_NSBundleResourceRequestAssetPackNotificationAssetPackIDKey"]);
    }

    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
    v17 = [NSString stringWithFormat:@"Unable to add the URL %@ to the bundle %@", v8, *(a1[4] + 24), @"NSDebugDescription"];
    v12 = MEMORY[0x1E695DF20];
    v13 = &v17;
    v14 = &v16;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
    v24 = @"NSDebugDescription";
    v25[0] = [NSString stringWithFormat:@"Response to begin was missing a URL (%@)", *(a1[4] + 24)];
    v12 = MEMORY[0x1E695DF20];
    v13 = v25;
    v14 = &v24;
  }

  result = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 256, [v12 dictionaryWithObjects:v13 forKeys:v14 count:1]);
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

NSError *__60___NSBundleODRDataCommon_assetPacksBecameUnavailable_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKey:@"_NSODRURLKey"];
  if (!v7)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
    v22 = @"NSDebugDescription";
    v23[0] = [NSString stringWithFormat:@"Response to begin was missing a URL (%@)", *(a1[4] + 24)];
    v12 = MEMORY[0x1E695DF20];
    v13 = v23;
    v14 = &v22;
LABEL_10:
    result = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 256, [v12 dictionaryWithObjects:v13 forKeys:v14 count:1]);
    *(*(a1[6] + 8) + 40) = result;
    return result;
  }

  v8 = v7;
  [*(a1[4] + 24) _cfBundle];
  if (!_CFBundleRemoveResourceURL())
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
    v20 = @"NSDebugDescription";
    v21 = [NSString stringWithFormat:@"Unable to remove the URL %@ to the bundle %@", v8, *(a1[4] + 24)];
    v12 = MEMORY[0x1E695DF20];
    v13 = &v21;
    v14 = &v20;
    goto LABEL_10;
  }

  if (qword_1ED439B00 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v9 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1[4] + 24);
    *buf = 134218242;
    v17 = v15;
    v18 = 2114;
    v19 = a2;
    _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Unpin: Bundle 0x%p / Asset Pack ID: %{public}@", buf, 0x16u);
  }

  [*(a1[4] + 8) removeObjectForKey:a2];
  v10 = +[NSNotificationCenter defaultCenter];
  return -[NSNotificationCenter postNotificationName:object:userInfo:](v10, "postNotificationName:object:userInfo:", @"_NSBundleResourceRequestAssetPackUnpinnedNotification", *(a1[4] + 24), [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"_NSBundleResourceRequestAssetPackNotificationAssetPackIDKey"]);
}

@end