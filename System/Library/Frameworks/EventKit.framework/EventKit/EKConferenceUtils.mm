@interface EKConferenceUtils
+ (id)_applicationRecordFromAppLink:(id)a3 appLinkError:(id)a4 orCustomScheme:(id)a5;
+ (id)_validURLForConferenceURL:(id)a3 previousURLs:(id)a4 completion:(id)a5;
+ (id)_workQueue;
+ (id)appRecordCache;
+ (id)applicationRecordForURL:(id)a3 incomplete:(BOOL *)a4;
+ (id)parentAppBundleIdentifierForExtensionBundleIdentifier:(id)a3;
+ (id)synchronousAppTitleOnlyForURL:(id)a3 incomplete:(BOOL *)a4;
+ (void)_findExtensionIdentifierForURL:(id)a3 completionHandler:(id)a4;
+ (void)_findRoomTypeForURL:(id)a3 queue:(id)a4 completionHandler:(id)a5;
+ (void)applicationRecordForURL:(id)a3 completionHandler:(id)a4;
+ (void)clearAppRecordCache;
+ (void)fireAppRecordChangedNotification;
+ (void)invalidateConferenceURL:(id)a3;
+ (void)invalidateConferenceURLIfNeeded:(id)a3 inEventStore:(id)a4;
+ (void)renewConferenceURL:(id)a3 toDate:(id)a4;
+ (void)virtualConference:(id)a3 likelyCameFromRoomTypes:(id)a4 completionHandler:(id)a5;
@end

@implementation EKConferenceUtils

+ (id)_workQueue
{
  if (_workQueue_onceToken != -1)
  {
    +[EKConferenceUtils _workQueue];
  }

  v3 = _workQueue_workQueue;

  return v3;
}

uint64_t __31__EKConferenceUtils__workQueue__block_invoke()
{
  v0 = dispatch_queue_create("EKConferenceUtils.workQueue", 0);
  v1 = _workQueue_workQueue;
  _workQueue_workQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)virtualConference:(id)a3 likelyCameFromRoomTypes:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = [v7 title];
        if (v15)
        {
          v16 = v15;
          v17 = [v7 title];
          v18 = [v14 title];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v23 = v27;
            (*(v27 + 2))(v27, v14);
            v24 = v9;
            goto LABEL_12;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = [v7 joinMethods];
  v21 = [v20 firstObject];
  v22 = [v21 URL];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__EKConferenceUtils_virtualConference_likelyCameFromRoomTypes_completionHandler___block_invoke;
  v28[3] = &unk_1E78011C0;
  v29 = v9;
  v23 = v27;
  v31 = a1;
  v30 = v27;
  [a1 applicationRecordForURL:v22 completionHandler:v28];

  v24 = v29;
LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
}

void __81__EKConferenceUtils_virtualConference_likelyCameFromRoomTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a2 bundleIdentifier];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 48);
        v10 = [*(*(&v13 + 1) + 8 * v8) extensionBundleIdentifier];
        v11 = [v9 parentAppBundleIdentifierForExtensionBundleIdentifier:v10];

        if ([v3 isEqual:v11])
        {
          (*(*(a1 + 40) + 16))();

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)synchronousAppTitleOnlyForURL:(id)a3 incomplete:(BOOL *)a4
{
  v4 = [a1 applicationRecordForURL:a3 incomplete:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bundleIdentifier];
    v7 = [v5 localizedName];
    if ([v6 isEqualToString:@"com.microsoft.lync2013.iphone"])
    {
      v8 = EKBundle();
      v9 = [v8 localizedStringForKey:@"Skype" value:&stru_1F1B49D68 table:0];

      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)applicationRecordForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 cal_hasSchemeTel])
  {
    v7[2](v7, 0);
  }

  else
  {
    v8 = MEMORY[0x1E69635C0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__EKConferenceUtils_applicationRecordForURL_completionHandler___block_invoke;
    v9[3] = &unk_1E7801210;
    v12 = a1;
    v10 = v6;
    v11 = v7;
    [v8 getAppLinksWithURL:v10 completionHandler:v9];
  }
}

void __63__EKConferenceUtils_applicationRecordForURL_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[6] _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EKConferenceUtils_applicationRecordForURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E78011E8;
  v15 = a1[6];
  v11 = v5;
  v12 = v6;
  v13 = a1[4];
  v14 = a1[5];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __63__EKConferenceUtils_applicationRecordForURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 targetApplicationRecord];
        v9 = [v8 bundleIdentifier];
        v10 = [v9 containsString:@"com.apple.internal"];

        if ((v10 & 1) == 0)
        {
          v11 = v7;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = [*(a1 + 64) _applicationRecordFromAppLink:v11 appLinkError:*(a1 + 40) orCustomScheme:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)clearAppRecordCache
{
  v2 = [a1 appRecordCache];
  [v2 removeAllObjects];
}

+ (id)appRecordCache
{
  if (appRecordCache_onceToken != -1)
  {
    +[EKConferenceUtils appRecordCache];
  }

  v3 = appRecordCache_cache;

  return v3;
}

uint64_t __35__EKConferenceUtils_appRecordCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = appRecordCache_cache;
  appRecordCache_cache = v0;

  [appRecordCache_cache setCountLimit:100];
  v2 = *MEMORY[0x1E698B090];

  return notify_register_check(v2, &apHiddenAppsNotifyToken);
}

+ (void)fireAppRecordChangedNotification
{
  if (fireAppRecordChangedNotification_postBlock)
  {
    dispatch_block_cancel(fireAppRecordChangedNotification_postBlock);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EKConferenceUtils_fireAppRecordChangedNotification__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = dispatch_block_create(0, block);
  v4 = fireAppRecordChangedNotification_postBlock;
  fireAppRecordChangedNotification_postBlock = v3;

  v5 = dispatch_time(0, 100000000);
  dispatch_after(v5, MEMORY[0x1E69E96A0], fireAppRecordChangedNotification_postBlock);
}

void __53__EKConferenceUtils_fireAppRecordChangedNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"EKConferenceUtilsAppRecordChangedNotification" object:*(a1 + 32)];

  v3 = fireAppRecordChangedNotification_postBlock;
  fireAppRecordChangedNotification_postBlock = 0;
}

+ (id)applicationRecordForURL:(id)a3 incomplete:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 cal_hasSchemeTel] & 1) == 0)
  {
    check = 0;
    notify_check(apHiddenAppsNotifyToken, &check);
    if (check)
    {
      [a1 clearAppRecordCache];
    }

    v9 = [a1 appRecordCache];
    v10 = [v9 objectForKey:v7];

    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = [a1 appRecordCache];
      [v12 setObject:v11 forKey:v7];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __56__EKConferenceUtils_applicationRecordForURL_incomplete___block_invoke;
      v15[3] = &unk_1E7801238;
      v10 = v11;
      v16 = v10;
      v17 = a1;
      [a1 applicationRecordForURL:v7 completionHandler:v15];
    }

    v8 = [v10 record];
    v13 = v8 == 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v8 = 0;
    }

    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __56__EKConferenceUtils_applicationRecordForURL_incomplete___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setRecord:a2];
    v3 = *(a1 + 40);

    [v3 fireAppRecordChangedNotification];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 32) setRecord:v4];
  }
}

+ (id)_applicationRecordFromAppLink:(id)a3 appLinkError:(id)a4 orCustomScheme:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v18 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[EKConferenceUtils _applicationRecordFromAppLink:appLinkError:orCustomScheme:];
    }

    v31 = 0;
    v17 = [objc_alloc(MEMORY[0x1E6963630]) initWithURL:v9 error:&v31];
    v19 = v31;
    v16 = v19;
    if (v17)
    {
      v20 = [v17 bundleRecord];
      if (v20)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v20 isWebBrowser]& 1) == 0)
        {
          v20 = v20;
          v21 = [v20 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.FaceTimeLinkTrampoline"];

          if (v22)
          {
            v23 = objc_alloc(MEMORY[0x1E69635F8]);
            v24 = +[EKConferenceUtils FacetimeAppBundleID];
            v30 = 0;
            v15 = [v23 initWithBundleIdentifier:v24 allowPlaceholder:0 error:&v30];
            v25 = v30;

            if (!v15)
            {
              v26 = [objc_opt_class() logHandle];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                +[EKConferenceUtils _applicationRecordFromAppLink:appLinkError:orCustomScheme:];
              }
            }

            goto LABEL_22;
          }

          v28 = [v20 bundleIdentifier];
          v29 = [v28 containsString:@"com.apple.internal"];

          if (!v29)
          {
            v15 = v20;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      if (!v19)
      {
        v15 = 0;
        goto LABEL_23;
      }

      v20 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[EKConferenceUtils _applicationRecordFromAppLink:appLinkError:orCustomScheme:];
      }
    }

    v15 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v10 = [v7 targetApplicationRecord];
  v11 = [v10 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.FaceTimeLinkTrampoline"];

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = objc_alloc(MEMORY[0x1E69635F8]);
  v14 = +[EKConferenceUtils FacetimeAppBundleID];
  v32 = 0;
  v15 = [v13 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v32];
  v16 = v32;

  if (!v15)
  {
    v17 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[EKConferenceUtils _applicationRecordFromAppLink:appLinkError:orCustomScheme:];
    }

    goto LABEL_23;
  }

LABEL_24:

  v10 = v15;
LABEL_25:

  return v10;
}

+ (id)parentAppBundleIdentifierForExtensionBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69635D0];
  v4 = a3;
  v14 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 error:&v14];

  v6 = v14;
  if (v5)
  {
    v7 = [v5 containingBundleRecord];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 bundleIdentifier];
      v9 = [v7 bundleIdentifier];
      if ([v9 isEqualToString:@"com.apple.mobilecal"])
      {
      }

      else
      {
        v11 = [v7 bundleIdentifier];
        v12 = [v11 isEqualToString:@"com.apple.iCal"];

        if (!v12)
        {
          goto LABEL_15;
        }
      }

      v10 = +[EKConferenceUtils FacetimeAppBundleID];
    }

    else
    {
      v8 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [EKConferenceUtils parentAppBundleIdentifierForExtensionBundleIdentifier:v8];
      }

      v10 = 0;
    }

    v8 = v10;
  }

  else
  {
    v7 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[EKConferenceUtils parentAppBundleIdentifierForExtensionBundleIdentifier:];
    }

    v8 = 0;
  }

LABEL_15:

  return v8;
}

+ (void)invalidateConferenceURLIfNeeded:(id)a3 inEventStore:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7 && [MEMORY[0x1E6992F40] isTUConversationLink:v7])
  {
    os_unfair_lock_lock(&_invalidationLock);
    if (!_urlsAwaitingInvalidation)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = _urlsAwaitingInvalidation;
      _urlsAwaitingInvalidation = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = _invalidatedURLs;
      _invalidatedURLs = v11;

      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("com.apple.eventkit.ConferenceInvalidationQueue", v13);
      v15 = _invalidationQueue;
      _invalidationQueue = v14;
    }

    v16 = [_invalidatedURLs objectForKeyedSubscript:v7];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 validURL];
      v19 = 0;
    }

    else
    {
      v20 = [_urlsAwaitingInvalidation objectForKeyedSubscript:v7];
      v21 = [v20 integerValue];
      v19 = v21 != 1;
      if (v21 != 1)
      {
        [_urlsAwaitingInvalidation setObject:&unk_1F1B6AFC0 forKeyedSubscript:v7];
      }

      v18 = 0;
    }

    os_unfair_lock_unlock(&_invalidationLock);
    if (v18)
    {
      [a1 invalidateConferenceURLIfNeeded:v18 inEventStore:v8];
    }

    else if (v19)
    {
      v22 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_1A805E000, v22, OS_LOG_TYPE_INFO, "Checking if we need to invalidate URL %@", buf, 0xCu);
      }

      v23 = dispatch_time(0, 500000000);
      v24 = _invalidationQueue;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__EKConferenceUtils_invalidateConferenceURLIfNeeded_inEventStore___block_invoke;
      v26[3] = &unk_1E7801260;
      v27 = v7;
      v29 = a2;
      v30 = a1;
      v28 = v8;
      dispatch_after(v23, v24, v26);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __66__EKConferenceUtils_invalidateConferenceURLIfNeeded_inEventStore___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_invalidationLock);
  v2 = [_urlsAwaitingInvalidation objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 integerValue];
  switch(v3)
  {
    case 3:
      [_urlsAwaitingInvalidation removeObjectForKey:*(a1 + 32)];
      break;
    case 2:
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EKConferenceUtils.m" lineNumber:419 description:@"invalidation state before search already set to checking"];

      break;
    case 1:
      [_urlsAwaitingInvalidation setObject:&unk_1F1B6AFD8 forKeyedSubscript:*(a1 + 32)];
      os_unfair_lock_unlock(&_invalidationLock);
      v4 = [*(a1 + 40) predicateForEventsWithConferenceURL:*(a1 + 32) limit:1];
      v5 = [*(a1 + 40) eventsMatchingPredicate:v4];
      v6 = [v5 count];
      os_unfair_lock_lock(&_invalidationLock);
      v7 = [_urlsAwaitingInvalidation objectForKeyedSubscript:*(a1 + 32)];
      v8 = [v7 integerValue];
      v9 = v8;
      if (v6 || (v8 - 1) >= 2)
      {
        v17 = *(a1 + 56);
        v18 = [objc_opt_class() logHandle];
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v9 == 2)
        {
          if (v19)
          {
            v20 = *(a1 + 32);
            v22 = 138412290;
            v23 = v20;
            _os_log_impl(&dword_1A805E000, v18, OS_LOG_TYPE_INFO, "Found uses of %@", &v22, 0xCu);
          }

          [_urlsAwaitingInvalidation removeObjectForKey:*(a1 + 32)];
        }

        else
        {
          if (v19)
          {
            v22 = 134217984;
            v23 = v9;
            _os_log_impl(&dword_1A805E000, v18, OS_LOG_TYPE_INFO, "Not invalidating because state changed to %li while checking", &v22, 0xCu);
          }
        }

        os_unfair_lock_unlock(&_invalidationLock);
      }

      else
      {
        v10 = *(a1 + 56);
        v11 = [objc_opt_class() logHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v22 = 138412290;
          v23 = v12;
          _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, "No uses found of %@", &v22, 0xCu);
        }

        [_urlsAwaitingInvalidation removeObjectForKey:*(a1 + 32)];
        v13 = objc_alloc_init(EKConferenceInvalidationRecord);
        [_invalidatedURLs setObject:v13 forKeyedSubscript:*(a1 + 32)];

        os_unfair_lock_unlock(&_invalidationLock);
        [EKConferenceUtils invalidateConferenceURL:*(a1 + 32)];
      }

      goto LABEL_22;
  }

  os_unfair_lock_unlock(&_invalidationLock);
  v15 = *(a1 + 56);
  v4 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    v22 = 138412290;
    v23 = v16;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_INFO, "No need to check URL %@", &v22, 0xCu);
  }

LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)invalidateConferenceURL:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [MEMORY[0x1E6992F40] isTUConversationLink:v4])
  {
    v5 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Going to invalidate the URL %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__EKConferenceUtils_invalidateConferenceURL___block_invoke;
    v7[3] = &unk_1E78012B0;
    v9 = a1;
    v8 = v4;
    [a1 _findExtensionIdentifierForURL:v8 completionHandler:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __45__EKConferenceUtils_invalidateConferenceURL___block_invoke(uint64_t a1, void *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v24 = 0;
    v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v3 error:&v24];
    v5 = v24;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v16 = v5;
      v7 = *(a1 + 40);
      v8 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_cold_1();
      }
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_69;
      v22[3] = &unk_1E7801288;
      v20 = *(a1 + 32);
      v10 = v20;
      v23 = v20;
      [v4 setRequestCompletionBlock:v22];
      v11 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      v32[0] = @"_EKVirtualConferenceRequestTypeKey";
      v32[1] = @"_EKVirtualConferenceRequestURLParameterForInvalidation";
      v12 = *(a1 + 32);
      v33[0] = @"_EKVirtualConferenceRequestTypeURLInvalidate";
      v33[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
      [v11 setUserInfo:v13];

      v31 = v11;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v21 = 0;
      v15 = [v4 beginExtensionRequestWithOptions:1 inputItems:v14 error:&v21];
      v16 = v21;

      if (v16)
      {
        v17 = *(a1 + 40);
        v18 = [objc_opt_class() logHandle];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v26 = v4;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Failed to invalidate virtual conference URL, extension = %@ request = %@ error = %@", buf, 0x20u);
        }
      }

      v8 = v23;
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v16 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_cold_2(a1);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 firstObject];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"_EKVirtualConferenceInvalidationResultKey"];

  if (v6 && [v6 isEqualToString:@"_EKVirtualConferenceInvalidationResultSucceeded"])
  {
    v7 = *(a1 + 40);
    v8 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "URL invalidated successfully: %@", &v12, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v8 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_69_cold_1(a1);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_validURLForConferenceURL:(id)a3 previousURLs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  os_unfair_lock_lock(&_invalidationLock);
  v12 = [_urlsAwaitingInvalidation objectForKeyedSubscript:v11];
  if (!v12)
  {
    v18 = [_invalidatedURLs objectForKeyedSubscript:v11];
    v13 = v18;
    if (!v18)
    {
      goto LABEL_3;
    }

    v14 = [v18 validURL];

    if (v14)
    {
      goto LABEL_4;
    }

    v19 = [v13 waitingCompletionHandlers];

    if (v19)
    {
      v20 = [v13 waitingCompletionHandlers];
      v21 = _Block_copy(v10);
      [v20 addObject:v21];

      if (!v9)
      {
        os_unfair_lock_unlock(&_invalidationLock);
LABEL_24:
        v16 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v13 setWaitingCompletionHandlers:v22];

      v23 = [v13 waitingCompletionHandlers];
      v24 = _Block_copy(v10);
      [v23 addObject:v24];

      v25 = objc_opt_new();
      [v13 setReplacementForURLs:v25];

      v26 = [v13 replacementForURLs];
      [v26 addObject:v11];

      if (!v9)
      {
        os_unfair_lock_unlock(&_invalidationLock);
        goto LABEL_23;
      }
    }

    v27 = [v13 replacementForURLs];
    [v27 unionSet:v9];

    os_unfair_lock_unlock(&_invalidationLock);
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    [v13 generateNewValidURLForOriginalURL:v11];
    goto LABEL_24;
  }

  [_urlsAwaitingInvalidation setObject:&unk_1F1B6AFF0 forKeyedSubscript:v11];
  v13 = 0;
LABEL_3:
  v14 = v11;
LABEL_4:
  os_unfair_lock_unlock(&_invalidationLock);
  if (v14 && v13)
  {
    v15 = [v13 replacementForURLs];
    v16 = [a1 _validURLForConferenceURL:v14 previousURLs:v15 completion:v10];

    if (v16 && ([v16 isEqual:v14] & 1) == 0)
    {
      os_unfair_lock_lock(&_invalidationLock);
      [v13 setValidURL:v16];
      os_unfair_lock_unlock(&_invalidationLock);
    }
  }

  else
  {
    v16 = v14;
  }

LABEL_11:

  return v16;
}

+ (void)renewConferenceURL:(id)a3 toDate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "ConferenceRenewal: Attempting to extend expiration of URL: %@ to date: %@", buf, 0x16u);
  }

  if (v6 && v7)
  {
    if ([MEMORY[0x1E6992F40] isTUConversationLink:v6])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke;
      v11[3] = &unk_1E78012D8;
      v14 = a1;
      v12 = v6;
      v13 = v7;
      [a1 _findExtensionIdentifierForURL:v12 completionHandler:v11];

      v9 = v12;
    }

    else
    {
      v9 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [EKConferenceUtils renewConferenceURL:v9 toDate:?];
      }
    }
  }

  else
  {
    v9 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[EKConferenceUtils renewConferenceURL:toDate:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke(uint64_t a1, void *a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v24 = 0;
    v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v3 error:&v24];
    v5 = v24;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v16 = v5;
      v7 = *(a1 + 48);
      v8 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_cold_1();
      }
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_79;
      v21[3] = &unk_1E7801288;
      v23 = *(a1 + 48);
      v22 = *(a1 + 32);
      [v4 setRequestCompletionBlock:v21];
      v10 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      v32[0] = @"_EKVirtualConferenceRequestTypeKey";
      v32[1] = @"_EKVirtualConferenceRequestURLParameterForRenewal";
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v33[0] = @"_EKVirtualConferenceRequestTypeURLRenew";
      v33[1] = v11;
      v32[2] = @"_EKVirtualConferenceRequestDateParameterForRenewal";
      v33[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
      [v10 setUserInfo:v13];
      v31 = v10;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v20 = 0;
      v15 = [v4 beginExtensionRequestWithOptions:1 inputItems:v14 error:&v20];
      v16 = v20;

      if (v16)
      {
        v17 = *(a1 + 48);
        v18 = [objc_opt_class() logHandle];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v26 = v4;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Request to renew conference URL failed, extension = %@ request = %@ error = %@", buf, 0x20u);
        }
      }

      v8 = v22;
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v16 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_cold_2(a1);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a3 firstObject];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"_EKVirtualConferenceRenewalResultKey"];

  if (v6 && [v6 isEqualToString:@"_EKVirtualConferenceRenewalResultSucceeded"])
  {
    v7 = *(a1 + 40);
    v8 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "ConferenceRenewal: URL renewed successfully: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = [v4 userInfo];
    v8 = [v10 objectForKey:@"_EKVirtualConferenceErrorResultKey"];

    v11 = *(a1 + 40);
    v12 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_79_cold_1(a1);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)_findExtensionIdentifierForURL:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = v5;
  if (v8)
  {
    if ([MEMORY[0x1E6992F40] isTUConversationLink:?])
    {
      v7 = +[EKConferenceUtils FacetimeConferenceExtensionBundleID];
      (v6)[2](v6, v7);
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

+ (void)_findRoomTypeForURL:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke;
  v14[3] = &unk_1E7801328;
  v17 = v10;
  v18 = a1;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [EKConferenceUtils _findExtensionIdentifierForURL:v13 completionHandler:v14];
}

void __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v16 = 0;
    v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v3 error:&v16];
    v5 = v16;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_cold_1();
      }

      v9 = *(a1 + 48);
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:EKConferenceValidationErrorDomain code:1 userInfo:0];
      (*(v9 + 16))(v9, 0, v13);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke_82;
      v14[3] = &unk_1E7801300;
      v15 = *(a1 + 48);
      [EKVirtualConferenceRoomType virtualConferenceRoomTypesWithCompletion:v14 queue:*(a1 + 40)];
      v13 = v15;
    }
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke_cold_2(a1);
    }

    v12 = *(a1 + 48);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:EKConferenceValidationErrorDomain code:1 userInfo:0];
    (*(v12 + 16))(v12, 0, v5);
  }
}

void __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    (*(v4 + 16))(v4, v3, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:EKConferenceValidationErrorDomain code:4 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

+ (void)_applicationRecordFromAppLink:appLinkError:orCustomScheme:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "URL should be opened with the FaceTime app, but there was an error fetching FaceTime's application record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_applicationRecordFromAppLink:appLinkError:orCustomScheme:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A805E000, v0, OS_LOG_TYPE_DEBUG, "Couldn't find out what app opens URL as a universal link, trying to see what opens it as a custom URL scheme: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_applicationRecordFromAppLink:appLinkError:orCustomScheme:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error getting claim binding for URL, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)parentAppBundleIdentifierForExtensionBundleIdentifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Failed to find app extension record for extension bundle identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Could not load extension for extensionIdentifier: %@, error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v1, v2, "Unable to find application record for URL %@, not invalidating.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __45__EKConferenceUtils_invalidateConferenceURL___block_invoke_69_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v1, v2, "Unable to invalidate URL: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)renewConferenceURL:toDate:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "ConferenceRenewal: Didn't receive required arguments. URL = %@, expirationDate = %@. Stopping.");
  v2 = *MEMORY[0x1E69E9840];
}

void __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "ConferenceRenewal: Could not load extension for extensionIdentifier: %@, error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v1, v2, "ConferenceRenewal: Unable to find application record for URL %@, not invalidating.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __47__EKConferenceUtils_renewConferenceURL_toDate___block_invoke_79_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v1, v2, "ConferenceRenewal: Unable to renew URL: %@, error = %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __65__EKConferenceUtils__findRoomTypeForURL_queue_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v1, v2, "Unable to find application record for URL %@, not generating a new URL.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end