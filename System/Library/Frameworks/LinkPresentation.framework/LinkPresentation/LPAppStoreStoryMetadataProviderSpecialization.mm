@interface LPAppStoreStoryMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation LPAppStoreStoryMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 postRedirectURL];
  v10 = [LPPresentationSpecializations isAppStoreStoryURL:v9];

  if (v10)
  {
    v11 = [v7 copy];
    v12 = objc_alloc_init(LPAppStoreStoryMetadata);
    [v11 setSpecialization:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __126__LPAppStoreStoryMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v15[3] = &unk_1E7A35428;
    v16 = v11;
    v17 = v8;
    v13 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  return v10;
}

@end