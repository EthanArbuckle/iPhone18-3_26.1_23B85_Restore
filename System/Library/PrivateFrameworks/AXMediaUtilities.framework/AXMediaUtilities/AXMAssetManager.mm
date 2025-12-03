@interface AXMAssetManager
+ (id)defaultManager;
- (id)_modelAssetNamesOfType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled;
- (id)_modelAssetURLForModelNamed:(id)named ofType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled;
- (id)_modelAssetURLsOfType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled;
- (id)_modelsDirectoryForType:(unint64_t)type compiled:(BOOL)compiled;
- (id)_photoCaptionAssetsDirectory;
- (id)modelWithName:(id)name ofType:(unint64_t)type sources:(unint64_t)sources compileIfNeeded:(BOOL)needed persistCompiledModel:(BOOL)model error:(id *)error;
@end

@implementation AXMAssetManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[AXMAssetManager defaultManager];
  }

  v3 = defaultManager__Shared;

  return v3;
}

void __33__AXMAssetManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(AXMAssetManager);
  v1 = defaultManager__Shared;
  defaultManager__Shared = v0;
}

- (id)_photoCaptionAssetsDirectory
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:AXCPSharedResourcesDirectory()];
  v3 = [v2 URLByAppendingPathComponent:@"Library/Accessibility/PhotoCaptionAssets"];

  return v3;
}

- (id)_modelsDirectoryForType:(unint64_t)type compiled:(BOOL)compiled
{
  if (type == 1)
  {
    compiledCopy = compiled;
    _photoCaptionAssetsDirectory = [(AXMAssetManager *)self _photoCaptionAssetsDirectory];
    v6 = _photoCaptionAssetsDirectory;
    if (compiledCopy)
    {
      v7 = @"CompiledModels";
    }

    else
    {
      v7 = @"UncompiledModels";
    }

    v8 = [_photoCaptionAssetsDirectory URLByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_modelAssetURLsOfType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled
{
  compiledCopy = compiled;
  sourcesCopy = sources;
  v34 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (type == 1 && (sourcesCopy & 1) != 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [(AXMAssetManager *)self _modelsDirectoryForType:1 compiled:compiledCopy];
    v32 = 0;
    v12 = [defaultManager contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:1 error:&v32];
    v13 = v32;
    if (v13)
    {
      v14 = AXMediaLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXMAssetManager _modelAssetURLsOfType:v13 sources:v14 compiled:?];
      }
    }

    else
    {
      v26 = v11;
      v27 = defaultManager;
      v15 = @"mlmodel";
      if (compiledCopy)
      {
        v15 = @"mlmodelc";
      }

      v14 = v15;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v12;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * i);
            pathExtension = [v21 pathExtension];
            v23 = [pathExtension isEqualToString:v14];

            if (v23)
            {
              [array addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v18);
      }

      v11 = v26;
      defaultManager = v27;
      v12 = v25;
    }
  }

  return array;
}

- (id)_modelAssetNamesOfType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled
{
  compiledCopy = compiled;
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(AXMAssetManager *)self _modelAssetURLsOfType:type sources:sources compiled:compiledCopy, 0];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        uRLByDeletingPathExtension = [*(*(&v18 + 1) + 8 * i) URLByDeletingPathExtension];
        lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
        [array addObject:lastPathComponent];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return array;
}

- (id)_modelAssetURLForModelNamed:(id)named ofType:(unint64_t)type sources:(unint64_t)sources compiled:(BOOL)compiled
{
  compiledCopy = compiled;
  v24 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  [(AXMAssetManager *)self _modelAssetURLsOfType:type sources:sources compiled:compiledCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        uRLByDeletingPathExtension = [v15 URLByDeletingPathExtension];
        lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

        if ([lastPathComponent isEqualToString:namedCopy])
        {
          v12 = v15;

          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (id)modelWithName:(id)name ofType:(unint64_t)type sources:(unint64_t)sources compileIfNeeded:(BOOL)needed persistCompiledModel:(BOOL)model error:(id *)error
{
  modelCopy = model;
  neededCopy = needed;
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v15 = [(AXMAssetManager *)self compiledModelAssetURLForModelNamed:nameCopy ofType:type sources:sources];
  if (v15)
  {
    v16 = v15;
    v48 = 0;
    v17 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v15 error:&v48];
    v18 = v48;
    v19 = v18;
    if (v18)
    {
      if (error)
      {
        v20 = v18;
        *error = v19;
      }
    }

    else
    {
      v34 = AXMediaLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v50 = nameCopy;
        v51 = 2112;
        v52 = v16;
        _os_log_impl(&dword_1AE37B000, v34, OS_LOG_TYPE_INFO, "Using pre-compiled model for name '%@': %@", buf, 0x16u);
      }
    }

    v35 = v17;
    goto LABEL_23;
  }

  if (!neededCopy)
  {
    goto LABEL_21;
  }

  v21 = [(AXMAssetManager *)self uncompiledModelAssetURLForModelNamed:nameCopy ofType:type sources:sources];
  if (!v21)
  {
    if (error)
    {
      _AXMMakeError(0, @"No uncompiled model found with name: %@", v22, v23, v24, v25, v26, v27, nameCopy);
      v16 = 0;
      v36 = 0;
      *error = v19 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v16 = 0;
    v36 = 0;
    v19 = 0;
    goto LABEL_22;
  }

  v16 = v21;
  v28 = AXMediaLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v16;
    _os_log_impl(&dword_1AE37B000, v28, OS_LOG_TYPE_DEFAULT, "Will compile MLModel at URLL: %@", buf, 0xCu);
  }

  v47 = 0;
  v29 = [MEMORY[0x1E695FE90] compileModelAtURL:v16 error:&v47];
  v30 = v47;
  v31 = AXMediaLogCommon();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v29;
    _os_log_impl(&dword_1AE37B000, v31, OS_LOG_TYPE_DEFAULT, "Will compile MLModel. Result URL: %@", buf, 0xCu);
  }

  if (v30)
  {
    if (error)
    {
      v32 = v30;
      *error = v30;
    }

LABEL_14:

    v33 = 0;
    v19 = v30;
    goto LABEL_24;
  }

  if (modelCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v39 = [(AXMAssetManager *)self _compiledModelsDirectoryForType:type];
    lastPathComponent = [v29 lastPathComponent];
    v41 = [v39 URLByAppendingPathComponent:lastPathComponent];

    v46 = 0;
    LOBYTE(v39) = [defaultManager moveItemAtURL:v29 toURL:v41 error:&v46];
    v42 = v46;
    v30 = v42;
    if ((v39 & 1) == 0)
    {
      if (error)
      {
        v44 = v42;
        *error = v30;
      }

      goto LABEL_14;
    }

    v29 = v41;
  }

  else
  {
    v30 = 0;
  }

  v45 = v30;
  v36 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v29 error:&v45];
  v19 = v45;

  if (error && v19)
  {
    v43 = v19;
    *error = v19;
  }

LABEL_22:
  v35 = v36;
LABEL_23:
  v33 = v35;
LABEL_24:

  return v33;
}

- (void)_modelAssetURLsOfType:(uint64_t)a1 sources:(NSObject *)a2 compiled:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not fetch uncompiled photo caption models: %@", &v2, 0xCu);
}

@end