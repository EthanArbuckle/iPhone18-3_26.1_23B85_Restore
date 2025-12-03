@interface LPStocksMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler;
@end

@implementation LPStocksMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)metadata withContext:(id)context completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  postRedirectURL = [context postRedirectURL];
  v10 = [LPPresentationSpecializations isStockSymbolURL:postRedirectURL];

  if (v10)
  {
    v11 = [metadataCopy copy];
    v12 = objc_alloc_init(LPStocksMetadata);
    title = [metadataCopy title];
    [(LPStocksMetadata *)v12 setCombinedTitle:title];

    title2 = [metadataCopy title];
    v16 = [title2 rangeOfString:@" · " options:4];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 + v15 == [title2 length])
    {
      v17 = 0;
    }

    else
    {
      v18 = [title2 substringFromIndex:?];
      v19 = [title2 substringToIndex:v16];

      title2 = v19;
      v17 = v18;
    }

    [(LPStocksMetadata *)v12 setTitle:title2];
    [(LPStocksMetadata *)v12 setSubtitle:v17];
    icon = [metadataCopy icon];
    [(LPStocksMetadata *)v12 setIcon:icon];

    v21 = LPLocalizedString(@"Stocks");
    [(LPStocksMetadata *)v12 setFootnote:v21];

    [v11 setSpecialization:v12];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __119__LPStocksMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v24[3] = &unk_1E7A35428;
    v25 = v11;
    v26 = handlerCopy;
    v22 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
  }

  return v10;
}

@end