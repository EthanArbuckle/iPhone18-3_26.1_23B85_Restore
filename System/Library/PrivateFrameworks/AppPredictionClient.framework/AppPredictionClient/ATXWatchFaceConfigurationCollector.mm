@interface ATXWatchFaceConfigurationCollector
+ (id)_watchFaceFromJSONObject:(id)a3;
+ (id)sharedInstance;
- (ATXWatchFaceConfigurationCollector)init;
- (NSArray)watchFaces;
- (id)_queue_readWatchFacesFromDisk;
- (void)_queue_writeWatchFacesToDisk:(id)a3;
- (void)refreshWithCompletion:(id)a3;
@end

@implementation ATXWatchFaceConfigurationCollector

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXWatchFaceConfigurationCollector sharedInstance];
  }

  v3 = sharedInstance_collector;

  return v3;
}

uint64_t __52__ATXWatchFaceConfigurationCollector_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_collector;
  sharedInstance_collector = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXWatchFaceConfigurationCollector)init
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = ATXWatchFaceConfigurationCollector;
  v2 = [(ATXWatchFaceConfigurationCollector *)&v18 init];
  if (v2)
  {
    if ([MEMORY[0x1E69C5CF8] isiPad])
    {
      v3 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[ATXWatchFaceConfigurationCollector init]";
        _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: device is iPad, not initializing connection", buf, 0xCu);
      }
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E698AFF0]);
      v5 = [MEMORY[0x1E698B010] watchFaceConfigurationCacheFilePath];
      v6 = __atxlog_handle_lock_screen();
      v7 = [v4 initWithCacheFilePath:v5 loggingHandle:v6 debugName:@"watch faces"];
      fileCache = v2->_fileCache;
      v2->_fileCache = v7;

      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create("com.apple.proactive.ATXWatchFaceConfigurationCollector", v9);
      queue = v2->_queue;
      v2->_queue = v10;

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.proactive.ATXWatchFaceConfigurationCollector.Output", v12);
      outputQueue = v2->_outputQueue;
      v2->_outputQueue = v13;

      v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanotimekit.devicelibraryserver" options:4096];
      connection = v2->_connection;
      v2->_connection = v15;

      v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3EA43A0];
      [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v3];
      [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_190];
      [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_193];
      [(NSXPCConnection *)v2->_connection resume];
    }
  }

  return v2;
}

void __42__ATXWatchFaceConfigurationCollector_init__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "[ATXWatchFaceConfigurationCollector init]_block_invoke";
    v3 = 2112;
    v4 = @"com.apple.nanotimekit.devicelibraryserver";
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "%s: connection to %@ invalidated", &v1, 0x16u);
  }
}

void __42__ATXWatchFaceConfigurationCollector_init__block_invoke_191()
{
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __42__ATXWatchFaceConfigurationCollector_init__block_invoke_191_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)refreshWithCompletion:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69C5CF8] isiPad])
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke;
    v10[3] = &unk_1E80C08E0;
    v6 = v4;
    v11 = v6;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195;
    v8[3] = &unk_1E80C2058;
    v8[4] = self;
    v9 = v6;
    [v7 fetchLibraryAsJSON:v8];
  }
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v37 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v37];
    v9 = v37;
    if (v9 || !v8)
    {
      v20 = __atxlog_handle_lock_screen();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
        v11 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[ATXWatchFaceConfigurationCollector refreshWithCompletion:]_block_invoke";
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: retrieved JSON array: %@", buf, 0x16u);
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_206;
        v36[3] = &unk_1E80C1FE0;
        v36[4] = *(a1 + 32);
        v12 = [v10 _pas_mappedArrayWithTransform:v36];
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = *(v14 + 24);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_2;
        v32[3] = &unk_1E80C2030;
        v32[4] = v14;
        v33 = v12;
        v34 = v10;
        v35 = v13;
        v16 = v10;
        v17 = v12;
        dispatch_async(v15, v32);

        v9 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v21 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E696A578];
      v43[0] = @"JSON is not an array";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v9 = [v29 initWithDomain:@"ATXWatchFaceConfigurationCollector" code:1 userInfo:v30];

      v20 = __atxlog_handle_lock_screen();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        v31 = *(a1 + 40);
        if (v31)
        {
          (*(v31 + 16))(v31, 0, v9);
        }

        goto LABEL_21;
      }
    }

    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_2();
    goto LABEL_19;
  }

  v18 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_1();
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, 0, v7);
  }

LABEL_22:
}

id __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_206(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _watchFaceFromJSONObject:v2];

  return v3;
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_writeWatchFacesToDisk:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_3;
    v4[3] = &unk_1E80C2008;
    v6 = v2;
    v5 = *(a1 + 48);
    dispatch_async(v3, v4);
  }
}

- (NSArray)watchFaces
{
  if ([MEMORY[0x1E69C5CF8] isiPad])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__3;
    v11 = __Block_byref_object_dispose__3;
    v12 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__ATXWatchFaceConfigurationCollector_watchFaces__block_invoke;
    v6[3] = &unk_1E80C2080;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

void __48__ATXWatchFaceConfigurationCollector_watchFaces__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[5])
  {
    v3 = [v2[5] copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[ATXWatchFaceConfigurationCollector watchFaces]_block_invoke";
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "%s: returning in-memory watchfaces", &v14, 0xCu);
    }
  }

  else
  {
    v7 = [v2 _queue_readWatchFacesFromDisk];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 40);
      v14 = 136315394;
      v15 = "[ATXWatchFaceConfigurationCollector watchFaces]_block_invoke";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: read watch faces from disk: %@", &v14, 0x16u);
    }

    v12 = [*(*(a1 + 32) + 40) copy];
    v13 = *(*(a1 + 40) + 8);
    v6 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

+ (id)_watchFaceFromJSONObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:@"faceJSON"];
    v6 = [v4 objectForKeyedSubscript:@"selected"];
    v7 = [v6 BOOLValue];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ATXWatchFaceConfigurationCollector _watchFaceFromJSONObject:];
      }

      v14 = 0;
      goto LABEL_32;
    }

    v28 = v7;
    v8 = v5;
    v9 = [v8 objectForKeyedSubscript:@"face type"];
    v10 = [v9 stringValue];

    v11 = [v8 objectForKeyedSubscript:@"bundle id"];
    v29 = [v11 stringValue];

    v12 = [v8 objectForKeyedSubscript:@"customization"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v8 objectForKeyedSubscript:@"customization"];
    }

    else
    {
      v13 = 0;
    }

    v16 = [v13 objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v13 objectForKeyedSubscript:@"content"];
    }

    else
    {
      v17 = 0;
    }

    v18 = [v13 objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v13 objectForKeyedSubscript:@"color"];
    }

    else
    {
      v19 = 0;
    }

    if ([v10 isEqualToString:@"astronomy"])
    {
      v20 = 1;
    }

    else if ([v10 isEqualToString:@"spectrum-analog"])
    {
      v20 = 2;
    }

    else if ([v10 isEqualToString:@"color"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"color-rich"))
    {
      v20 = 10;
    }

    else if ([v10 isEqualToString:@"photos"])
    {
      v20 = 3;
    }

    else if ([v10 isEqualToString:@"pride"])
    {
      v20 = 4;
    }

    else if ([v10 isEqualToString:@"pride analog"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"pride analog rich"))
    {
      v20 = 11;
    }

    else if ([v10 isEqualToString:@"big-numerals-analog"] && (objc_msgSend(v19, "isEqualToString:", @"multicolor gradient 1") & 1) != 0)
    {
      v20 = 14;
    }

    else if ([v10 isEqualToString:@"big-numerals-digital"] && (objc_msgSend(v19, "isEqualToString:", @"multicolor gradient 1") & 1) != 0)
    {
      v20 = 15;
    }

    else
    {
      if (![v10 isEqualToString:@"california"] || (objc_msgSend(v19, "isEqualToString:", @"style 10") & 1) == 0)
      {
        v27 = v29;
        if ([v29 length])
        {
          if ([v29 isEqualToString:@"com.apple.NTKAegirFaceBundle"])
          {
            if ([v17 isEqualToString:@"earth"])
            {
              v20 = 7;
              goto LABEL_25;
            }

            if ([v17 isEqualToString:@"luna"])
            {
              v20 = 8;
              goto LABEL_25;
            }

            if ([v17 isEqualToString:@"orrery"])
            {
              v20 = 9;
              goto LABEL_25;
            }

            v27 = v29;
            if ([v17 isEqualToString:@"random"])
            {
              v20 = 17;
              goto LABEL_25;
            }
          }

          if ([v27 isEqualToString:@"com.apple.NanoTimeKit.NTKPrideWeaveFaceBundle"])
          {
            v20 = 13;
            goto LABEL_25;
          }

          if ([v27 isEqualToString:@"com.apple.NTKLilypadFaceBundle"])
          {
            v20 = 12;
            goto LABEL_25;
          }

          if ([v29 isEqualToString:@"com.apple.NTKRenegadeFaceBundle"])
          {
            v20 = 5;
            goto LABEL_25;
          }

          if ([v29 isEqualToString:@"com.apple.NTKColtanFaceBundle"])
          {
            v20 = 6;
            goto LABEL_25;
          }
        }

        v20 = 0;
        goto LABEL_25;
      }

      v20 = 16;
    }

LABEL_25:

    v21 = [v8 objectForKeyedSubscript:@"complications"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 allValues];
      v23 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_211];
    }

    else
    {
      v23 = 0;
    }

    v24 = [ATXWatchFace alloc];
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = MEMORY[0x1E695E0F0];
    }

    v14 = [(ATXWatchFace *)v24 initWithStyle:v20 complications:v25 selected:v28];

LABEL_32:
    goto LABEL_33;
  }

  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[ATXWatchFaceConfigurationCollector _watchFaceFromJSONObject:];
  }

  v14 = 0;
LABEL_33:

  return v14;
}

id __63__ATXWatchFaceConfigurationCollector__watchFaceFromJSONObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"app"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [&unk_1F3E60D78 objectForKeyedSubscript:v4];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v4;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_readWatchFacesFromDisk
{
  dispatch_assert_queue_V2(self->_queue);
  fileCache = self->_fileCache;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v8 = [(ATXGenericFileBasedCache *)fileCache readSecureCodedObjectWithMaxValidAge:v7 allowableClasses:0 error:-1.0];

  return v8;
}

- (void)_queue_writeWatchFacesToDisk:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(ATXGenericFileBasedCache *)self->_fileCache storeSecureCodedObject:v5 error:0];
}

@end