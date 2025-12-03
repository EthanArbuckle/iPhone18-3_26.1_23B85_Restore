@interface CNPhotoAssetCreationHelper
+ (id)log;
+ (void)createAssetFromImage:(id)image completionHandler:(id)handler;
@end

@implementation CNPhotoAssetCreationHelper

+ (void)createAssetFromImage:(id)image completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__38375;
  v17[4] = __Block_byref_object_dispose__38376;
  v18 = 0;
  v16 = 0;
  v7 = [CNPhotoLibraryProvider photoLibraryWithError:&v16];
  v8 = v16;
  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CNPhotoAssetCreationHelper_createAssetFromImage_completionHandler___block_invoke;
    v13[3] = &unk_1E74E56F0;
    v14 = imageCopy;
    v15 = v17;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__CNPhotoAssetCreationHelper_createAssetFromImage_completionHandler___block_invoke_2;
    v10[3] = &unk_1E74E4810;
    v11 = handlerCopy;
    v12 = v17;
    [v7 performChanges:v13 completionHandler:v10];

    v9 = v14;
  }

  else
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Unable to create asset for photo library %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(v17, 8);
}

void __69__CNPhotoAssetCreationHelper_createAssetFromImage_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [(objc_class *)getPHAssetChangeRequestClass() creationRequestForAssetFromImage:*(a1 + 32)];
  v2 = [v6 placeholderForCreatedAsset];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)log
{
  if (log_cn_once_token_20 != -1)
  {
    dispatch_once(&log_cn_once_token_20, &__block_literal_global_38387);
  }

  v3 = log_cn_once_object_20;

  return v3;
}

uint64_t __33__CNPhotoAssetCreationHelper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoAssetCreationHelper");
  v1 = log_cn_once_object_20;
  log_cn_once_object_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end