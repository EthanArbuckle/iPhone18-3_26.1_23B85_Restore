@interface LPAppleNewsMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation LPAppleNewsMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 postRedirectURL];
  if ([LPPresentationSpecializations isAppleNewsURL:v10])
  {
  }

  else
  {
    v11 = [v8 postRedirectURL];
    v12 = [LPPresentationSpecializations isStocksNewsURL:v11];

    if (!v12)
    {
      v16 = 0;
      goto LABEL_6;
    }
  }

  v13 = [v7 copy];
  v14 = objc_alloc_init(LPAppleNewsMetadata);
  [v13 setSpecialization:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__LPAppleNewsMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
  v18[3] = &unk_1E7A35428;
  v19 = v13;
  v20 = v9;
  v15 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], v18);

  v16 = 1;
LABEL_6:

  return v16;
}

@end