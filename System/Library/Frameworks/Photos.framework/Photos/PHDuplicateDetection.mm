@interface PHDuplicateDetection
+ (BOOL)assetsArePendingForDuplicateMergeProcessing:(id)processing inPhotoLibrary:(id)library;
+ (void)mergeDuplicateAssetWithLocalIdentifierGroupingContainer:(id)container inPhotoLibrary:(id)library completionHandler:(id)handler;
@end

@implementation PHDuplicateDetection

+ (void)mergeDuplicateAssetWithLocalIdentifierGroupingContainer:(id)container inPhotoLibrary:(id)library completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (library)
  {
    [library mergeDuplicateAssetsWithLocalIdentifierGroupingContainer:container completionHandler:handlerCopy];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"invalid photolibrary";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Duplicate Merge processing failed with missing photolibrary. Error: %@", &v12, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v10);
    }
  }
}

+ (BOOL)assetsArePendingForDuplicateMergeProcessing:(id)processing inPhotoLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (library)
  {

    return [library assetsArePendingForDuplicateMergeProcessingWithLocalIdentifiers:processing];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"invalid photolibrary";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v5 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v6];

    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Duplicate Merge check failed with missing photolibrary. Error: %@", &v9, 0xCu);
    }

    return 0;
  }
}

@end