@interface LPGameActivityMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation LPGameActivityMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 postRedirectURL];
  v10 = [LPPresentationSpecializations isAppleGamesActivityURL:v9];

  if (v10)
  {
    v11 = [v7 copy];
    v12 = objc_alloc_init(LPGameActivityMetadata);
    v13 = [v7 title];
    [(LPGameActivityMetadata *)v12 setTitle:v13];

    v14 = [v7 appleSummary];
    [(LPGameActivityMetadata *)v12 setSubtitle:v14];

    v15 = [v7 image];
    [(LPGameActivityMetadata *)v12 setArtwork:v15];

    v16 = [v7 icon];
    [(LPGameActivityMetadata *)v12 setIcon:v16];

    [v11 setSpecialization:v12];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __125__LPGameActivityMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v19[3] = &unk_1E7A35428;
    v20 = v11;
    v21 = v8;
    v17 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  return v10;
}

@end