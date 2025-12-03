@interface LPAppleNewsMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler;
@end

@implementation LPAppleNewsMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler
{
  metadataCopy = metadata;
  contextCopy = context;
  handlerCopy = handler;
  postRedirectURL = [contextCopy postRedirectURL];
  if ([LPPresentationSpecializations isAppleNewsURL:postRedirectURL])
  {
  }

  else
  {
    postRedirectURL2 = [contextCopy postRedirectURL];
    v12 = [LPPresentationSpecializations isStocksNewsURL:postRedirectURL2];

    if (!v12)
    {
      v16 = 0;
      goto LABEL_6;
    }
  }

  v13 = [metadataCopy copy];
  v14 = objc_alloc_init(LPAppleNewsMetadata);
  [v13 setSpecialization:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__LPAppleNewsMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
  v18[3] = &unk_1E7A35428;
  v19 = v13;
  v20 = handlerCopy;
  v15 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], v18);

  v16 = 1;
LABEL_6:

  return v16;
}

@end