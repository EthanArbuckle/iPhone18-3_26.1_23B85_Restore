@interface AXMImageCaptionModelAssetManager
+ (id)sharedInstance;
- (AXMImageCaptionModelAssetManager)init;
- (id)_modelURLForType:(unint64_t)a3 baseURL:(id)a4;
- (id)infoForModelAtURL:(id)a3;
- (id)modelURLForType:(unint64_t)a3 timeout:(double)a4;
- (void)_performWithLock:(id)a3;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
@end

@implementation AXMImageCaptionModelAssetManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXMImageCaptionModelAssetManager sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

void __50__AXMImageCaptionModelAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXMImageCaptionModelAssetManager);
  v1 = sharedInstance__Shared;
  sharedInstance__Shared = v0;
}

- (AXMImageCaptionModelAssetManager)init
{
  v9.receiver = self;
  v9.super_class = AXMImageCaptionModelAssetManager;
  v2 = [(AXMImageCaptionModelAssetManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E69881B0];
    v5 = [MEMORY[0x1E69881E0] policy];
    v6 = [v4 assetControllerWithPolicy:v5];
    assetController = v3->_assetController;
    v3->_assetController = v6;

    [(AXAssetController *)v3->_assetController addObserver:v3];
    [(AXAssetController *)v3->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:0];
  }

  return v3;
}

- (id)modelURLForType:(unint64_t)a3 timeout:(double)a4
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__AXMImageCaptionModelAssetManager_modelURLForType_timeout___block_invoke;
  v21[3] = &unk_1E7A1CAE8;
  v21[4] = self;
  v21[5] = &v22;
  [(AXMImageCaptionModelAssetManager *)self _performWithLock:v21];
  if (v23[5])
  {
    v7 = [(AXMImageCaptionModelAssetManager *)self _modelURLForType:a3 baseURL:?];
LABEL_3:
    v8 = v7;
    goto LABEL_7;
  }

  if (a4 == 0.0 || self->_didTryWaitingForAssetLookup)
  {
    v8 = 0;
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = v23[5];
    v13 = v12 == 0;
    v14 = v10 - v10;
    if (!v12 && v14 < a4)
    {
      v15 = *MEMORY[0x1E695E8E0];
      do
      {
        CFRunLoopRunInMode(v15, 0.2, 0);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __60__AXMImageCaptionModelAssetManager_modelURLForType_timeout___block_invoke_2;
        v20[3] = &unk_1E7A1CAE8;
        v20[4] = self;
        v20[5] = &v22;
        [(AXMImageCaptionModelAssetManager *)self _performWithLock:v20];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v16 = v23[5];
        v13 = v16 == 0;
        v14 = v17 - v11;
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v14 < a4;
        }
      }

      while (v18);
    }

    if (!v13)
    {
      v7 = [(AXMImageCaptionModelAssetManager *)self _modelURLForType:a3 baseURL:?];
      goto LABEL_3;
    }

    v19 = AXLogAssetLoader();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(AXMImageCaptionModelAssetManager *)v19 modelURLForType:v14 timeout:a4];
    }

    v8 = 0;
    self->_didTryWaitingForAssetLookup = 1;
  }

LABEL_7:
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __60__AXMImageCaptionModelAssetManager_modelURLForType_timeout___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __60__AXMImageCaptionModelAssetManager_modelURLForType_timeout___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)infoForModelAtURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"model_info.json"];
  v12 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v11 = v5;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
    v7 = v11;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E69881D8]) initWithModelProperties:v6];
    }

    else
    {
      v9 = AXLogAssetLoader();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXMImageCaptionModelAssetManager infoForModelAtURL:];
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = AXLogAssetLoader();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMImageCaptionModelAssetManager infoForModelAtURL:];
    }

    v8 = 0;
    v7 = v5;
  }

  return v8;
}

- (id)_modelURLForType:(unint64_t)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  if (a3 == 1)
  {
    v9 = [v5 URLByAppendingPathComponent:@"VideoCaptionModel"];
    v10 = [v9 path];
    [v6 fileExistsAtPath:v10 isDirectory:&v13];

    if (v13 != 1)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v7 = v9;
  }

  else
  {
    if (a3)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v7 = [v5 URLByAppendingPathComponent:@"ImageCaptionModel"];
    v8 = [v7 path];
    [v6 fileExistsAtPath:v8 isDirectory:&v13];

    if (v13)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  v11 = v9;
  v9 = v7;
LABEL_11:

LABEL_12:

  return v11;
}

- (void)_performWithLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  v10 = AXLogAssetLoader();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_INFO, "ImageCaptionAssetManager. didFinishRefreshingAssets: (%@). error: %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E69881A8] newsestCompatibleImageCaptionModelAssetFromAssets:v8 withStage:@"Stable" language:@"en" isInstalled:1 isDownloadable:0];
  if (v11)
  {
    v12 = [MEMORY[0x1E69881B8] store];
    [v12 recordLastAssetAccess:v11];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__AXMImageCaptionModelAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
    v14[3] = &unk_1E7A1CB30;
    v15 = v11;
    v16 = self;
    [(AXMImageCaptionModelAssetManager *)self _performWithLock:v14];
    v13 = v15;
  }

  else
  {
    v13 = AXLogAssetLoader();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v13, OS_LOG_TYPE_INFO, "ImageCaptionAssetManager. No compatible installed asset found", buf, 2u);
    }
  }
}

void __98__AXMImageCaptionModelAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AXLogAssetLoader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) localURL];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_INFO, "ImageCaptionAssetManager. asset controller setting model baseURL after asset refresh: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) localURL];
  v5 = [v4 copy];
  [*(a1 + 40) setBaseURL:v5];
}

- (void)modelURLForType:(double)a3 timeout:.cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_1AE37B000, log, OS_LOG_TYPE_ERROR, "Did time out waiting for image caption asset refresh. timeWaited:%.2f timeout:%.2f", &v3, 0x16u);
}

@end