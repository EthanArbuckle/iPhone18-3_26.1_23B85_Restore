@interface LPStocksMetadataProviderSpecialization
+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation LPStocksMetadataProviderSpecialization

+ (BOOL)generateSpecializedMetadataForCompleteMetadata:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 postRedirectURL];
  v10 = [LPPresentationSpecializations isStockSymbolURL:v9];

  if (v10)
  {
    v11 = [v7 copy];
    v12 = objc_alloc_init(LPStocksMetadata);
    v13 = [v7 title];
    [(LPStocksMetadata *)v12 setCombinedTitle:v13];

    v14 = [v7 title];
    v16 = [v14 rangeOfString:@" · " options:4];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 + v15 == [v14 length])
    {
      v17 = 0;
    }

    else
    {
      v18 = [v14 substringFromIndex:?];
      v19 = [v14 substringToIndex:v16];

      v14 = v19;
      v17 = v18;
    }

    [(LPStocksMetadata *)v12 setTitle:v14];
    [(LPStocksMetadata *)v12 setSubtitle:v17];
    v20 = [v7 icon];
    [(LPStocksMetadata *)v12 setIcon:v20];

    v21 = LPLocalizedString(@"Stocks");
    [(LPStocksMetadata *)v12 setFootnote:v21];

    [v11 setSpecialization:v12];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __119__LPStocksMetadataProviderSpecialization_generateSpecializedMetadataForCompleteMetadata_withContext_completionHandler___block_invoke;
    v24[3] = &unk_1E7A35428;
    v25 = v11;
    v26 = v8;
    v22 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
  }

  return v10;
}

@end