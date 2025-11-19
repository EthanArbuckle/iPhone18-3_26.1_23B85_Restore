@interface NEAppInfoCache
+ (id)sharedAppInfoCache;
- (NEAppInfoCache)init;
- (id)bundleIDWithoutTeamID:(void *)a1;
- (uint64_t)appInfo:(void *)a3 mismatchedWithUUID:(void *)a4 andBundleID:;
- (void)addAppInfoToCache:(void *)a1;
- (void)appInfoForPid:(void *)a3 UUID:(void *)a4 bundleID:(void *)a5 completionHandler:;
- (void)performCustomLookupIfNecessaryForPid:(void *)a3 UUID:(void *)a4 bundleID:(void *)a5 completionHandler:;
@end

@implementation NEAppInfoCache

- (NEAppInfoCache)init
{
  v9.receiver = self;
  v9.super_class = NEAppInfoCache;
  v2 = [(NEAppInfoCache *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSourceAppInfo = v2->_cachedSourceAppInfo;
    v2->_cachedSourceAppInfo = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("NEAppInfoCache queue", v5);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v6;
  }

  return v2;
}

+ (id)sharedAppInfoCache
{
  objc_opt_self();
  if (sharedAppInfoCache_onceToken != -1)
  {
    dispatch_once(&sharedAppInfoCache_onceToken, &__block_literal_global);
  }

  v0 = sharedAppInfoCache_sharedAppInfoCache;

  return v0;
}

uint64_t __36__NEAppInfoCache_sharedAppInfoCache__block_invoke()
{
  sharedAppInfoCache_sharedAppInfoCache = objc_alloc_init(NEAppInfoCache);

  return MEMORY[0x1EEE66BB8]();
}

- (void)appInfoForPid:(void *)a3 UUID:(void *)a4 bundleID:(void *)a5 completionHandler:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (a1)
  {
    if (a2 < 0)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v23 = "[NEAppInfoCache appInfoForPid:UUID:bundleID:completionHandler:]";
        v24 = 1024;
        v25 = a2;
        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s got invalid pid: %d", buf, 0x12u);
      }

      v12[2](v12, 0);
    }

    else
    {
      Property = objc_getProperty(a1, v11, 24, 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke;
      block[3] = &unk_1E7F08BD0;
      v21 = a2;
      v17 = v9;
      v18 = v10;
      v19 = a1;
      v20 = v12;
      dispatch_async(Property, block);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 64);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    *buf = 67109634;
    v51 = v30;
    v52 = 2112;
    v53 = v31;
    v54 = 2112;
    v55 = v32;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Fetching appInfo from cache for pid: %d uuid: %@ bundle id: %@", buf, 0x1Cu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 16, 1);
    }

    v6 = Property;
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v45[5];
    v45[5] = v7;
  }

  v9 = v45[5];
  if (!v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_2;
    v34[3] = &unk_1E7F069C0;
    v37 = &v44;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v35 = v17;
    v36 = v16;
    v38 = *(a1 + 64);
    [(NEAppInfoCache *)v12 performCustomLookupIfNecessaryForPid:v10 UUID:v13 bundleID:v11 completionHandler:v34];
    v18 = &v35 + 1;
    v19 = &v36;
    v20 = &v36 + 1;
LABEL_13:

    goto LABEL_14;
  }

  if (!*(v9 + 40))
  {
    v21 = *(a1 + 64);
    if (v21 >= 1)
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_52;
      v39[3] = &unk_1E7F069C0;
      v42 = &v44;
      v33 = *(a1 + 48);
      v24 = v33.i64[1];
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27.i64[0] = v25;
      v27.i64[1] = v26;
      *&v28 = v33.i64[0];
      *(&v28 + 1) = v25;
      v40 = v28;
      v41 = vzip2q_s64(v27, v33);
      v43 = *(a1 + 64);
      [(NEAppInfoCache *)v33.i64[0] performCustomLookupIfNecessaryForPid:v21 UUID:v22 bundleID:v23 completionHandler:v39];
      v18 = &v41.i64[1];
      v19 = &v40 + 1;
      v20 = &v41;
      goto LABEL_13;
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:

  _Block_object_dispose(&v44, 8);
  v29 = *MEMORY[0x1E69E9840];
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_52(uint64_t a1, void *a2)
{
  v4 = a2;
  v8 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if ([(NEAppInfoCache *)*(a1 + 32) appInfo:v4 mismatchedWithUUID:*(a1 + 40) andBundleID:*(a1 + 48)])
  {
    [(NEAppInfoCache *)*(a1 + 32) addAppInfoToCache:v8];
LABEL_4:
    v5 = *(a1 + 56);
    v6 = a1 + 64;
    goto LABEL_6;
  }

  v7 = *(a1 + 64);
  v6 = a1 + 64;
  objc_storeStrong((*(v7 + 8) + 40), a2);
  [(NEAppInfoCache *)*(v6 - 32) addAppInfoToCache:?];
  v5 = *(v6 - 8);
LABEL_6:
  (*(v5 + 16))(v5, *(*(*v6 + 8) + 40));
}

- (void)performCustomLookupIfNecessaryForPid:(void *)a3 UUID:(void *)a4 bundleID:(void *)a5 completionHandler:
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *length = 67109634;
        *&length[4] = a2;
        *&length[8] = 2112;
        *&length[10] = v9;
        v43 = 2112;
        v44 = v10;
        _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "Calling delegate lookup handler with pid: %d, uuid: %@, bundleID: %@", length, 0x1Cu);
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke;
      v40[3] = &unk_1E7F069E8;
      v40[4] = a1;
      v41 = v11;
      [WeakRetained fetchAppInfoForPID:a2 UUID:v9 bundleID:v10 completionHandler:v40];

LABEL_38:
      goto LABEL_39;
    }

    v14 = v10;
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *length = 67109378;
      *&length[4] = a2;
      *&length[8] = 2112;
      *&length[10] = v14;
      _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "Origin lookup for pid %d, bundle id: %@", length, 0x12u);
    }

    if (v14)
    {
      v16 = [v14 length];
      if (v16)
      {
        v16 = [NEAppInfoCache bundleIDWithoutTeamID:v14];
      }
    }

    else
    {
      v16 = 0;
    }

    v38 = v16;
    [v38 UTF8String];
    v17 = NEHelperCopyAppInfo();
    v18 = v17;
    v39 = v14;
    v37 = v9;
    if (v17)
    {
      uuid = xpc_dictionary_get_uuid(v17, "app-euuid");
      if (uuid)
      {
        v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
      }

      else
      {
        v20 = 0;
      }

      string = xpc_dictionary_get_string(v18, "app-identifier");
      if (string)
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
      }

      else
      {
        v23 = 0;
      }

      v21 = xpc_dictionary_get_string(v18, "version-string");
      if (v21)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v21];
      }

      *length = 0;
      data = xpc_dictionary_get_data(v18, "app-cd-hash", length);
      if (*length)
      {
        v26 = data;
        v27 = objc_alloc(MEMORY[0x1E695DEF0]);
        v22 = [v27 initWithBytes:v26 length:*length];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v20 = 0;
    }

    v28 = v20;
    if (!v20 && !v23 && !v21 && !v22)
    {
      v29 = 0;
LABEL_35:
      v35 = ne_log_large_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *length = 138412290;
        *&length[4] = v29;
        _os_log_debug_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEBUG, "Origin lookup created appInfo:\n%@", length, 0xCu);
      }

      (*(v11 + 2))(v11, v29);
      v9 = v37;
      goto LABEL_38;
    }

    v30 = objc_alloc_init(NEAppInfo);
    v29 = v30;
    if (a2 < 1)
    {
      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_35;
      }

      v30->_pid = a2;
    }

    objc_setProperty_nonatomic_copy(v30, v31, v28, 16);
    objc_setProperty_nonatomic_copy(v29, v32, v23, 24);
    objc_setProperty_nonatomic_copy(v29, v33, v21, 32);
    objc_setProperty_nonatomic_copy(v29, v34, v22, 40);
    goto LABEL_35;
  }

LABEL_39:

  v36 = *MEMORY[0x1E69E9840];
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (!v5)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 72);
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 67109634;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Could not look up appInfo for pid: %d bundle id: %@ uuid: %@", buf, 0x1Cu);
    }

    v12 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

  v6 = [(NEAppInfoCache *)*(a1 + 32) appInfo:v5 mismatchedWithUUID:*(a1 + 40) andBundleID:*(a1 + 48)];
  [(NEAppInfoCache *)*(a1 + 32) addAppInfoToCache:?];
  if (!v6)
  {
    v13 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(*(a1 + 56) + 16);
LABEL_8:
    v12();
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_3;
  v19[3] = &unk_1E7F06998;
  v19[4] = v7;
  v18 = *(a1 + 56);
  v10 = v18;
  v20 = v18;
  [(NEAppInfoCache *)v7 performCustomLookupIfNecessaryForPid:v8 UUID:v9 bundleID:v19 completionHandler:?];

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)appInfo:(void *)a3 mismatchedWithUUID:(void *)a4 andBundleID:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (v8 && ![v7[2] isEqual:v8])
    {
      goto LABEL_7;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v7[3];
    v11 = v9;
    v12 = [NEAppInfoCache bundleIDWithoutTeamID:v10];
    v13 = [NEAppInfoCache bundleIDWithoutTeamID:v11];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
LABEL_7:
      a1 = 1;
    }

    else
    {
LABEL_6:
      a1 = 0;
    }
  }

  return a1;
}

- (void)addAppInfoToCache:(void *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = v3[2];
      if (v5)
      {
        v6 = v3;
        v7 = v5;
        v10 = [objc_getProperty(a1 v8];
        if (v10)
        {
          v11 = v6;
          v12 = v10;
          v13 = v12;
          if (!v11[5] && v12[5])
          {
            v14 = v12[2];
            v15 = v14;
            if (v14)
            {
              v16 = v4[2] == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              v18 = [v14 isEqual:?];

              if (v18)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }
        }

LABEL_14:
        [objc_getProperty(a1 v9];
LABEL_15:
      }
    }

    else
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = 136315138;
        v21 = "[NEAppInfoCache addAppInfoToCache:]";
        _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "%s called with null appInfo", &v20, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    [(NEAppInfoCache *)*(a1 + 32) addAppInfoToCache:v4];
    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)bundleIDWithoutTeamID:(void *)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 rangeOfString:@"." options:1];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v2 copy];
LABEL_4:
      v6 = v5;
      goto LABEL_11;
    }

    if (v4 == 1)
    {
      v7 = v3 + 1;
      if (v3 + 1 < [v2 length])
      {
        v5 = [v2 substringFromIndex:v7];
        goto LABEL_4;
      }
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v2;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "found invalid . in bundle id: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NEAppInfoCache bundleIDWithoutTeamID:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null bundleID", &v11, 0xCu);
    }
  }

  v6 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

void __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7F0B588;
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(Property, v9);
}

@end