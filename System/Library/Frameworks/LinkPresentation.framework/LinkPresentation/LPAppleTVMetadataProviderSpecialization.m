@interface LPAppleTVMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation LPAppleTVMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 postRedirectURL];
  v10 = [LPPresentationSpecializations isAppleTVURL:v9];

  if (v10)
  {
    v11 = [v7 copy];
    v12 = objc_alloc_init(LPAppleTVMetadata);
    v13 = [v7 title];
    [(LPAppleTVMetadata *)v12 setTitle:v13];

    v14 = [v7 appleSummary];
    [(LPAppleTVMetadata *)v12 setSubtitle:v14];

    v15 = [v7 image];
    [(LPAppleTVMetadata *)v12 setArtwork:v15];

    [v11 setSpecialization:v12];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __120__LPAppleTVMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v18[3] = &unk_1E7A35428;
    v19 = v11;
    v20 = v8;
    v16 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  return v10;
}

@end