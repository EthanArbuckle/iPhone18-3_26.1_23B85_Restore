@interface LPAppleTVMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler;
@end

@implementation LPAppleTVMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  postRedirectURL = [context postRedirectURL];
  v10 = [LPPresentationSpecializations isAppleTVURL:postRedirectURL];

  if (v10)
  {
    v11 = [metadataCopy copy];
    v12 = objc_alloc_init(LPAppleTVMetadata);
    title = [metadataCopy title];
    [(LPAppleTVMetadata *)v12 setTitle:title];

    appleSummary = [metadataCopy appleSummary];
    [(LPAppleTVMetadata *)v12 setSubtitle:appleSummary];

    image = [metadataCopy image];
    [(LPAppleTVMetadata *)v12 setArtwork:image];

    [v11 setSpecialization:v12];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __120__LPAppleTVMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v18[3] = &unk_1E7A35428;
    v19 = v11;
    v20 = handlerCopy;
    v16 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  return v10;
}

@end