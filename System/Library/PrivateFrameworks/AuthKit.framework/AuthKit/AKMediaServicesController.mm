@interface AKMediaServicesController
+ (id)sharedInstance;
- (AKMediaServicesController)init;
- (BOOL)_isRequestCancelledForBundleID:(id)d;
- (void)_appMetadataForBundleID:(id)d completion:(id)completion;
- (void)appIconForBundleID:(id)d size:(id)size completion:(id)completion;
- (void)appMetadataForBundleIDs:(id)ds completion:(id)completion;
- (void)cancelAppIconRequestForBundleID:(id)d completion:(id)completion;
@end

@implementation AKMediaServicesController

- (AKMediaServicesController)init
{
  v14 = a2;
  v15 = 0;
  v13.receiver = self;
  v13.super_class = AKMediaServicesController;
  v12 = [(AKMediaServicesController *)&v13 init];
  v15 = v12;
  objc_storeStrong(&v15, v12);
  if (v12)
  {
    v15->_activeLockupGroupLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    activeLockupGroupForBundleID = v15->_activeLockupGroupForBundleID;
    v15->_activeLockupGroupForBundleID = dictionary;
    MEMORY[0x1E69E5920](activeLockupGroupForBundleID);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.authkit.AKMediaServicesController.imagedownloadqueue", v11);
    imageDownloadQueue = v15->_imageDownloadQueue;
    v15->_imageDownloadQueue = v4;
    MEMORY[0x1E69E5920](imageDownloadQueue);
    MEMORY[0x1E69E5920](v11);
    if (AppStoreComponentsLibraryCore(0))
    {
      v6 = objc_alloc(getASCLockupViewGroupClass());
    }

    else
    {
      v6 = [0 alloc];
    }

    v7 = [v6 initWithName:@"AKMediaServicesController Lockup Group"];
    group = v15->_group;
    v15->_group = v7;
    MEMORY[0x1E69E5920](group);
  }

  v10 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v15, 0);
  return v10;
}

+ (id)sharedInstance
{
  v5 = &sharedInstance_pred;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_18);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __43__AKMediaServicesController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKMediaServicesController);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)appIconForBundleID:(id)d size:(id)size completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v27 = 0;
  objc_storeStrong(&v27, size);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, location[0]);
    _os_log_impl(&dword_193225000, v25, v24, "Fetching Icon for bundleID: %@", v30, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v23 = MEMORY[0x1E69E5928](selfCopy->_group);
  v22 = 0uLL;
  if (v27)
  {
    [v27 CGSizeValue];
    *&v22 = v5;
    *(&v22 + 1) = v6;
  }

  else
  {
    v22 = AKIconDefaultSize;
  }

  os_unfair_lock_lock(&selfCopy->_activeLockupGroupLock);
  [(NSMutableDictionary *)selfCopy->_activeLockupGroupForBundleID setObject:v23 forKey:location[0]];
  os_unfair_lock_unlock(&selfCopy->_activeLockupGroupLock);
  v8 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  queue = v8;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke;
  v16 = &unk_1E73D65A0;
  v17 = MEMORY[0x1E69E5928](v23);
  v18 = MEMORY[0x1E69E5928](location[0]);
  v19 = MEMORY[0x1E69E5928](selfCopy);
  v20 = MEMORY[0x1E69E5928](v26);
  v21 = v22;
  dispatch_async(queue, &v12);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v16 = getASCLockupContextSignInWithApple();
    v15 = 1;
    v1 = v16;
  }

  else
  {
    v1 = 0;
  }

  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_2;
  v9 = &unk_1E73D6578;
  v10 = MEMORY[0x1E69E5928](*(a1 + 48));
  v11 = MEMORY[0x1E69E5928](*(a1 + 40));
  v13 = MEMORY[0x1E69E5928](*(a1 + 56));
  v12 = MEMORY[0x1E69E5928](*(a1 + 32));
  v14 = *(a1 + 64);
  [v3 _lockupRequestForBundleID:v4 withContext:v1 enableAppDistribution:1 completionBlock:&v5];
  if (v15)
  {
    MEMORY[0x1E69E5920](v16);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  if ([*(a1 + 32) _isRequestCancelledForBundleID:*(a1 + 40)])
  {
    v29[0] = _AKLogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v34, *(a1 + 40));
      _os_log_error_impl(&dword_193225000, v29[0], v28, "App icon request for bundleID %@ was cancelled", v34, 0xCu);
    }

    objc_storeStrong(v29, 0);
    if (*(a1 + 56))
    {
      v8 = *(a1 + 56);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
      (*(v8 + 16))(v8, 0);
      MEMORY[0x1E69E5920](v9);
    }

    v27 = 1;
  }

  else if (v30)
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v33, *(a1 + 40), v30);
      _os_log_error_impl(&dword_193225000, v26, v25, "Failed to fetch lockup request for bundleID %@ with error %@", v33, 0x16u);
    }

    objc_storeStrong(&v26, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v27 = 1;
  }

  else if (location[0])
  {
    v4 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E96A0];
    queue = v4;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_34;
    v16 = &unk_1E73D6550;
    v17 = MEMORY[0x1E69E5928](*(a1 + 48));
    v18 = MEMORY[0x1E69E5928](location[0]);
    v19 = MEMORY[0x1E69E5928](*(a1 + 32));
    v20 = MEMORY[0x1E69E5928](*(a1 + 40));
    v21 = MEMORY[0x1E69E5928](*(a1 + 56));
    v22 = *(a1 + 64);
    dispatch_async(queue, &v12);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v27 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, *(a1 + 40));
      _os_log_error_impl(&dword_193225000, v24, v23, "Lockup request for bundleID %@ is nil", v32, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    if (*(a1 + 56))
    {
      v6 = *(a1 + 56);
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
      (*(v6 + 16))(v6, 0);
      MEMORY[0x1E69E5920](v7);
    }

    v27 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_34(uint64_t a1)
{
  v18 = a1;
  v30[2] = a1;
  v30[1] = a1;
  v19 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v29 = get_ASCLockupKeyIcon();
    v28 = 1;
    v17 = v29;
  }

  else
  {
    v17 = 0;
  }

  v16 = v17;
  v26 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v27 = get_ASCLockupKeyTitle();
    v26 = 1;
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

  v30[0] = [v19 initWithObjects:{v16, v15, 0}];
  if (v26)
  {
    MEMORY[0x1E69E5920](v27);
  }

  if (v28)
  {
    MEMORY[0x1E69E5920](v29);
  }

  v9 = *(v18 + 32);
  v6 = *(v18 + 40);
  v13 = v30;
  v7 = v30[0];
  v8 = &v20;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_2_36;
  v24 = &unk_1E73D3A28;
  v12 = v25;
  v25[0] = MEMORY[0x1E69E5928](*(v18 + 48));
  v11 = (v8 + 5);
  v25[1] = MEMORY[0x1E69E5928](*(v18 + 56));
  location = (v8 + 6);
  v1 = MEMORY[0x1E69E5928](*(v18 + 64));
  v2 = v6;
  v3 = v7;
  v4 = v1;
  v5 = v9;
  v25[2] = v4;
  *(v8 + 7) = *(v18 + 72);
  [v5 _lockupDictionaryForRequest:v2 includingKeys:v3 withCompletionBlock:?];
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v11, obj);
  objc_storeStrong(v12, obj);
  objc_storeStrong(v13, obj);
}

void __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v59 = 0;
  objc_storeStrong(&v59, a3);
  v58[1] = a1;
  if ([*(a1 + 32) _isRequestCancelledForBundleID:*(a1 + 40)])
  {
    v58[0] = _AKLogSystem();
    v57 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v58[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v67, *(a1 + 40));
      _os_log_error_impl(&dword_193225000, v58[0], v57, "App icon request for bundleID %@ was cancelled", v67, 0xCu);
    }

    objc_storeStrong(v58, 0);
    if (*(a1 + 48))
    {
      v18 = *(a1 + 48);
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
      (*(v18 + 16))(v18, 0);
      MEMORY[0x1E69E5920](v19);
    }

    v56 = 1;
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (v59)
    {
      v55 = _AKLogSystem();
      v54 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v66, *(a1 + 40), v59);
        _os_log_error_impl(&dword_193225000, v55, v54, "Failed to fetch lockup dictionary for bundleID %@ with error %@", v66, 0x16u);
      }

      objc_storeStrong(&v55, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }

      v56 = 1;
    }

    else if (location[0])
    {
      v51 = _AKLogSystem();
      v50 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v64, location[0]);
        _os_log_debug_impl(&dword_193225000, v51, v50, "Lockup dictionary result: %@", v64, 0xCu);
      }

      objc_storeStrong(&v51, 0);
      v15 = location[0];
      v47 = 0;
      if (AppStoreComponentsLibraryCore(0))
      {
        v48 = get_ASCLockupKeyIcon();
        v47 = 1;
        v14 = v48;
      }

      else
      {
        v14 = 0;
      }

      v49 = [v15 objectForKeyedSubscript:v14];
      if (v47)
      {
        MEMORY[0x1E69E5920](v48);
      }

      if (v49)
      {
        v42 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v43 = getASCArtworkTemplateKeyWidth();
          v42 = 1;
          v11 = v43;
        }

        else
        {
          v11 = 0;
        }

        v61[0] = v11;
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", *(a1 + 56)];
        v62[0] = v10;
        v40 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v41 = getASCArtworkTemplateKeyHeight();
          v40 = 1;
          v9 = v41;
        }

        else
        {
          v9 = 0;
        }

        v61[1] = v9;
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", *(a1 + 64)];
        v62[1] = v8;
        v38 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v39 = getASCArtworkTemplateKeyCrop();
          v38 = 1;
          v7 = v39;
        }

        else
        {
          v7 = 0;
        }

        v61[2] = v7;
        v36 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v37 = getASCArtworkCropBoundingBox();
          v36 = 1;
          v6 = v37;
        }

        else
        {
          v6 = 0;
        }

        v62[2] = v6;
        v34 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v35 = getASCArtworkTemplateKeyFormat();
          v34 = 1;
          v5 = v35;
        }

        else
        {
          v5 = 0;
        }

        v61[3] = v5;
        v32 = 0;
        if (AppStoreComponentsLibraryCore(0))
        {
          v33 = getASCArtworkFormatPNG();
          v32 = 1;
          v4 = v33;
        }

        else
        {
          v4 = 0;
        }

        v62[3] = v4;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:4];
        if (v32)
        {
          MEMORY[0x1E69E5920](v33);
        }

        if (v34)
        {
          MEMORY[0x1E69E5920](v35);
        }

        if (v36)
        {
          MEMORY[0x1E69E5920](v37);
        }

        if (v38)
        {
          MEMORY[0x1E69E5920](v39);
        }

        MEMORY[0x1E69E5920](v8);
        if (v40)
        {
          MEMORY[0x1E69E5920](v41);
        }

        MEMORY[0x1E69E5920](v10);
        if (v42)
        {
          MEMORY[0x1E69E5920](v43);
        }

        v31 = [v49 makeURLWithSubstitutions:v44];
        queue = *(*(a1 + 32) + 24);
        v22 = MEMORY[0x1E69E9820];
        v23 = -1073741824;
        v24 = 0;
        v25 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_42;
        v26 = &unk_1E73D4058;
        v27 = MEMORY[0x1E69E5928](v31);
        v28 = MEMORY[0x1E69E5928](location[0]);
        v29 = MEMORY[0x1E69E5928](v49);
        v30 = MEMORY[0x1E69E5928](*(a1 + 48));
        dispatch_async(queue, &v22);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v44, 0);
        v56 = 0;
      }

      else
      {
        v46 = _AKLogSystem();
        v45 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v63, *(a1 + 40));
          _os_log_error_impl(&dword_193225000, v46, v45, "Lockup dictionary does not contain artwork for bundleID: %@", v63, 0xCu);
        }

        objc_storeStrong(&v46, 0);
        if (*(a1 + 48))
        {
          v12 = *(a1 + 48);
          v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
          (*(v12 + 16))(v12, 0);
          MEMORY[0x1E69E5920](v13);
        }

        v56 = 1;
      }

      objc_storeStrong(&v49, 0);
      if (!v56)
      {
        v56 = 0;
      }
    }

    else
    {
      oslog = _AKLogSystem();
      v52 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v65, *(a1 + 40));
        _os_log_error_impl(&dword_193225000, oslog, v52, "Lockup dictionary for bundleID %@ is nil", v65, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 48))
      {
        v16 = *(a1 + 48);
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
        (*(v16 + 16))(v16, 0);
        MEMORY[0x1E69E5920](v17);
      }

      v56 = 1;
    }
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_42(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v50[2] = a1;
  v50[1] = a1;
  v50[0] = 0;
  v1 = *(a1 + 32);
  v48 = 0;
  v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v1 options:1 error:&v48];
  objc_storeStrong(v50, v48);
  v49 = v20;
  if (v20)
  {
    v47 = _AKLogSystem();
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_0(v53, *(a1 + 32), [v49 length]);
      _os_log_debug_impl(&dword_193225000, v47, v46, "Request for %@ received data of length %lu", v53, 0x16u);
    }

    objc_storeStrong(&v47, 0);
  }

  else
  {
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v52, *(a1 + 32), v50[0]);
      _os_log_error_impl(&dword_193225000, v45, v44, "Request for %@ failed %@", v52, 0x16u);
    }

    objc_storeStrong(&v45, 0);
  }

  v43 = objc_alloc_init(AKIconContext);
  [(AKIconContext *)v43 setData:v49];
  v18 = *(a1 + 40);
  v41 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v42 = get_ASCLockupKeyTitle();
    v41 = 1;
    v2 = [v18 objectForKeyedSubscript:v42];
  }

  else
  {
    v2 = [v18 objectForKeyedSubscript:0];
  }

  v17 = v2;
  [(AKIconContext *)v43 setAppName:?];
  MEMORY[0x1E69E5920](v17);
  if (v41)
  {
    MEMORY[0x1E69E5920](v42);
  }

  v16 = [*(a1 + 48) decoration];
  v39 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v40 = getASCArtworkDecorationNone();
    v39 = 1;
    v3 = [v16 isEqualToString:v40];
  }

  else
  {
    v3 = [v16 isEqualToString:0];
  }

  v15 = v3;
  if (v39)
  {
    MEMORY[0x1E69E5920](v40);
  }

  MEMORY[0x1E69E5920](v16);
  if (v15)
  {
    v38 = _AKLogSystem();
    v37 = 2;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v13 = v38;
      v14 = v37;
      __os_log_helper_16_0_0(v36);
      _os_log_debug_impl(&dword_193225000, v13, v14, "Setting masking style to AKIconMaskingStyleUnmasked for artwork decoration style ASCArtworkDecorationNone", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    [(AKIconContext *)v43 setMaskingStyle:2];
  }

  else
  {
    v12 = [*(a1 + 48) decoration];
    v34 = 0;
    if (AppStoreComponentsLibraryCore(0))
    {
      v35 = getASCArtworkDecorationRoundedRect();
      v34 = 1;
      v4 = [v12 isEqualToString:v35];
    }

    else
    {
      v4 = [v12 isEqualToString:0];
    }

    v11 = v4;
    if (v34)
    {
      MEMORY[0x1E69E5920](v35);
    }

    MEMORY[0x1E69E5920](v12);
    if (v11)
    {
      v33 = _AKLogSystem();
      v32 = 2;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v9 = v33;
        v10 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_debug_impl(&dword_193225000, v9, v10, "Setting masking style to AKIconMaskingStyleMasked for artwork decoration style ASCArtworkDecorationRoundedRect", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      [(AKIconContext *)v43 setMaskingStyle:1];
    }

    else
    {
      oslog = _AKLogSystem();
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 48) decoration];
        __os_log_helper_16_2_1_8_64(v51, v8);
        _os_log_error_impl(&dword_193225000, oslog, v29, "Setting masking style to AKIconMaskingStyleUnknown for artwork decoration style %@", v51, 0xCu);
        MEMORY[0x1E69E5920](v8);
      }

      objc_storeStrong(&oslog, 0);
      [(AKIconContext *)v43 setMaskingStyle:0];
    }
  }

  v6 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  queue = v6;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_45;
  v25 = &unk_1E73D6528;
  v28 = MEMORY[0x1E69E5928](*(a1 + 56));
  v26 = MEMORY[0x1E69E5928](v43);
  v27 = MEMORY[0x1E69E5928](v50[0]);
  dispatch_async(queue, &v21);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(v50, 0);
  *MEMORY[0x1E69E9840];
}

void *__64__AKMediaServicesController_appIconForBundleID_size_completion___block_invoke_45(void *result)
{
  if (result[6])
  {
    v1 = result[4];
    v2 = result[5];
    return (*(result[6] + 16))();
  }

  return result;
}

- (void)cancelAppIconRequestForBundleID:(id)d completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  if ([(AKMediaServicesController *)selfCopy _isRequestCancelledForBundleID:location[0]])
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "No active lockup group found for bundleID: %@", v11, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    if (v8)
    {
      v4 = v8;
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKSignInWithAppleError" code:-16007 userInfo:0];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    os_unfair_lock_lock(&selfCopy->_activeLockupGroupLock);
    [(NSMutableDictionary *)selfCopy->_activeLockupGroupForBundleID removeObjectForKey:location[0]];
    os_unfair_lock_unlock(&selfCopy->_activeLockupGroupLock);
    if (v8)
    {
      (*(v8 + 2))(v8, 1, 0);
    }
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_isRequestCancelledForBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  os_unfair_lock_lock(&selfCopy->_activeLockupGroupLock);
  v3 = [(NSMutableDictionary *)selfCopy->_activeLockupGroupForBundleID objectForKey:location[0]];
  v5 = v3 == 0;
  MEMORY[0x1E69E5920](v3);
  os_unfair_lock_unlock(&selfCopy->_activeLockupGroupLock);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)appMetadataForBundleIDs:(id)ds completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ds);
  v47 = 0;
  objc_storeStrong(&v47, completion);
  v46 = dispatch_group_create();
  v41[0] = 0;
  v41[1] = v41;
  v42 = 0x10000000;
  v43 = 40;
  v44 = &unk_1933E3823;
  v45 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v36 = 838860800;
  v37 = 48;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  v40 = objc_opt_new();
  v29[0] = 0;
  v29[1] = v29;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy__6;
  v33 = __Block_byref_object_dispose__6;
  v34 = 0;
  memset(__b, 0, sizeof(__b));
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = [v12 countByEnumeratingWithState:__b objects:v50 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v12);
      }

      v28 = *(__b[1] + 8 * v10);
      dispatch_group_enter(v46);
      v7 = selfCopy;
      v6 = v28;
      v21 = MEMORY[0x1E69E9820];
      v22 = -1073741824;
      v23 = 0;
      v24 = __64__AKMediaServicesController_appMetadataForBundleIDs_completion___block_invoke;
      v25 = &unk_1E73D65C8;
      v26[1] = v41;
      v26[2] = v35;
      v26[3] = v29;
      v26[0] = MEMORY[0x1E69E5928](v46);
      [(AKMediaServicesController *)v7 _appMetadataForBundleID:v6 completion:&v21];
      objc_storeStrong(v26, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v12 countByEnumeratingWithState:__b objects:v50 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v12);
  group = v46;
  queue = dispatch_get_global_queue(21, 0);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __64__AKMediaServicesController_appMetadataForBundleIDs_completion___block_invoke_2;
  v19 = &unk_1E73D65F0;
  v20[1] = v35;
  v20[2] = v29;
  v20[0] = MEMORY[0x1E69E5928](v47);
  dispatch_group_notify(group, queue, &v15);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(v20, 0);
  _Block_object_dispose(v29, 8);
  objc_storeStrong(&v34, 0);
  _Block_object_dispose(v35, 8);
  objc_storeStrong(&v40, 0);
  _Block_object_dispose(v41, 8);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKMediaServicesController_appMetadataForBundleIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
  if (location[0])
  {
    [*(*(*(a1 + 48) + 8) + 40) addEntriesFromDictionary:location[0]];
  }

  else if (!*(*(*(a1 + 56) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }

  os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

uint64_t __64__AKMediaServicesController_appMetadataForBundleIDs_completion___block_invoke_2(void *a1)
{
  if ([*(*(a1[5] + 8) + 40) count] || !*(*(a1[6] + 8) + 40))
  {
    v3 = *(*(a1[5] + 8) + 40);
    return (*(a1[4] + 16))();
  }

  else
  {
    v1 = *(*(a1[6] + 8) + 40);
    return (*(a1[4] + 16))();
  }
}

- (void)_appMetadataForBundleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = MEMORY[0x1E69E5928](selfCopy->_group);
  v6 = MEMORY[0x1E69E96A0];
  v4 = MEMORY[0x1E69E96A0];
  queue = v6;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke;
  v12 = &unk_1E73D6640;
  v13 = MEMORY[0x1E69E5928](v16);
  v14 = MEMORY[0x1E69E5928](location[0]);
  v15 = MEMORY[0x1E69E5928](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke(void *a1)
{
  v16 = a1;
  v15 = a1;
  v3 = a1[4];
  v4 = a1[5];
  v13 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v14 = getASCLockupContextSignInWithApple();
    v13 = 1;
    v1 = v14;
  }

  else
  {
    v1 = 0;
  }

  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_2;
  v9 = &unk_1E73D6618;
  v10 = MEMORY[0x1E69E5928](a1[5]);
  v12 = MEMORY[0x1E69E5928](a1[6]);
  v11 = MEMORY[0x1E69E5928](a1[4]);
  [v3 _lockupRequestForBundleID:v4 withContext:v1 enableAppDistribution:1 completionBlock:&v5];
  if (v13)
  {
    MEMORY[0x1E69E5920](v14);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v10, 0);
}

void __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_2(uint64_t *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  if (v24)
  {
    v23[0] = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v27, a1[4], v24);
      _os_log_error_impl(&dword_193225000, v23[0], v22, "Failed to fetch lockup request for bundleID %@ with error %@", v27, 0x16u);
    }

    objc_storeStrong(v23, 0);
    if (a1[6])
    {
      (*(a1[6] + 16))();
    }

    v21 = 1;
  }

  else if (location[0])
  {
    v4 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E96A0];
    queue = v4;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_49;
    v14 = &unk_1E73D4058;
    v15 = MEMORY[0x1E69E5928](a1[5]);
    v16 = MEMORY[0x1E69E5928](location[0]);
    v17 = MEMORY[0x1E69E5928](a1[4]);
    v18 = MEMORY[0x1E69E5928](a1[6]);
    dispatch_async(queue, &v10);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v21 = 0;
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v26, a1[4]);
      _os_log_error_impl(&dword_193225000, v20, v19, "Lockup request for bundleID %@ is nil", v26, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    if (a1[6])
    {
      v6 = a1[6];
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17001 userInfo:?];
      (*(v6 + 16))(v6, 0);
      MEMORY[0x1E69E5920](v7);
    }

    v21 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_49(void *a1)
{
  v16 = a1;
  v32[2] = a1;
  v32[1] = a1;
  v17 = objc_alloc(MEMORY[0x1E695DFD8]);
  v30 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v31 = get_ASCLockupKeyDeveloperName();
    v30 = 1;
    v15 = v31;
  }

  else
  {
    v15 = 0;
  }

  v14 = v15;
  v28 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v29 = get_ASCLockupKeyTitle();
    v28 = 1;
    v13 = v29;
  }

  else
  {
    v13 = 0;
  }

  v12 = v13;
  v26 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v27 = get_ASCLockupKeyShortName();
    v26 = 1;
    v11 = v27;
  }

  else
  {
    v11 = 0;
  }

  v10 = v11;
  v24 = 0;
  if (AppStoreComponentsLibraryCore(0))
  {
    v25 = get_ASCLockupKeyAdamID();
    v24 = 1;
    v9 = v25;
  }

  else
  {
    v9 = 0;
  }

  v32[0] = [v17 initWithObjects:{v14, v12, v10, v9, 0}];
  if (v24)
  {
    MEMORY[0x1E69E5920](v25);
  }

  if (v26)
  {
    MEMORY[0x1E69E5920](v27);
  }

  if (v28)
  {
    MEMORY[0x1E69E5920](v29);
  }

  if (v30)
  {
    MEMORY[0x1E69E5920](v31);
  }

  v4 = v16[4];
  v1 = v16[5];
  v7 = v32;
  v2 = v32[0];
  v3 = &v18;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_2_50;
  v22 = &unk_1E73D4BA0;
  v6 = v23;
  v23[0] = MEMORY[0x1E69E5928](v16[6]);
  location = (v3 + 5);
  v23[1] = MEMORY[0x1E69E5928](v16[7]);
  [v4 _lockupDictionaryForRequest:v1 includingKeys:v2 withCompletionBlock:v3];
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v6, obj);
  objc_storeStrong(v7, obj);
}

void __64__AKMediaServicesController__appMetadataForBundleID_completion___block_invoke_2_50(uint64_t *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35[1] = a1;
  if (location[0])
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v40, location[0]);
      _os_log_debug_impl(&dword_193225000, v32, v31, "App metadata results: %@", v40, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v18 = location[0];
    v28 = 0;
    if (AppStoreComponentsLibraryCore(0))
    {
      v29 = get_ASCLockupKeyAdamID();
      v28 = 1;
      v3 = [v18 objectForKeyedSubscript:v29];
    }

    else
    {
      v3 = [v18 objectForKeyedSubscript:0];
    }

    v30 = v3;
    if (v28)
    {
      MEMORY[0x1E69E5920](v29);
    }

    v15 = [AKAppiTunesMetadata alloc];
    v16 = a1[4];
    v17 = location[0];
    v25 = 0;
    if (AppStoreComponentsLibraryCore(0))
    {
      v26 = get_ASCLockupKeyShortName();
      v25 = 1;
      v4 = [v17 objectForKeyedSubscript:v26];
    }

    else
    {
      v4 = [v17 objectForKeyedSubscript:0];
    }

    v13 = v4;
    v14 = location[0];
    v23 = 0;
    if (AppStoreComponentsLibraryCore(0))
    {
      v24 = get_ASCLockupKeyTitle();
      v23 = 1;
      v5 = [v14 objectForKeyedSubscript:v24];
    }

    else
    {
      v5 = [v14 objectForKeyedSubscript:0];
    }

    v11 = v5;
    v12 = location[0];
    v21 = 0;
    if (AppStoreComponentsLibraryCore(0))
    {
      v22 = get_ASCLockupKeyDeveloperName();
      v21 = 1;
      v6 = [v12 objectForKeyedSubscript:v22];
    }

    else
    {
      v6 = [v12 objectForKeyedSubscript:0];
    }

    v10 = v6;
    v9 = [v30 stringValue];
    v27 = [(AKAppiTunesMetadata *)v15 initWithBundleId:v16 shortName:v13 appName:v11 appDeveloperName:v10 adamID:?];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    if (v21)
    {
      MEMORY[0x1E69E5920](v22);
    }

    MEMORY[0x1E69E5920](v11);
    if (v23)
    {
      MEMORY[0x1E69E5920](v24);
    }

    MEMORY[0x1E69E5920](v13);
    if (v25)
    {
      MEMORY[0x1E69E5920](v26);
    }

    v7 = (a1[5] + 16);
    v38 = a1[4];
    v39 = v27;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    (*v7)();
    MEMORY[0x1E69E5920](v8);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v30, 0);
    v33 = 0;
  }

  else
  {
    v35[0] = _AKLogSystem();
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v41, a1[4], v36);
      _os_log_error_impl(&dword_193225000, v35[0], v34, "Error fetching app metadata for %@: %@", v41, 0x16u);
    }

    objc_storeStrong(v35, 0);
    (*(a1[5] + 16))();
    v33 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end