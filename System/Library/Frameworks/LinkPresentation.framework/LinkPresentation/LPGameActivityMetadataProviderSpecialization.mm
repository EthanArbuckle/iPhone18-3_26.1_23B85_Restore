@interface LPGameActivityMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler;
@end

@implementation LPGameActivityMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  postRedirectURL = [context postRedirectURL];
  v10 = [LPPresentationSpecializations isAppleGamesActivityURL:postRedirectURL];

  if (v10)
  {
    v11 = [metadataCopy copy];
    v12 = objc_alloc_init(LPGameActivityMetadata);
    title = [metadataCopy title];
    [(LPGameActivityMetadata *)v12 setTitle:title];

    appleSummary = [metadataCopy appleSummary];
    [(LPGameActivityMetadata *)v12 setSubtitle:appleSummary];

    image = [metadataCopy image];
    [(LPGameActivityMetadata *)v12 setArtwork:image];

    icon = [metadataCopy icon];
    [(LPGameActivityMetadata *)v12 setIcon:icon];

    [v11 setSpecialization:v12];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __125__LPGameActivityMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v19[3] = &unk_1E7A35428;
    v20 = v11;
    v21 = handlerCopy;
    v17 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  return v10;
}

@end