@interface MPHomeSharingArtworkDataSource
+ (id)artworkDataSourceWithIdentifier:(id)a3;
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (NSString)artworkDataSourceIdentifier;
- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4;
- (id)requestForCatalog:(id)a3 size:(CGSize)a4;
- (id)supportedSizesForCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPHomeSharingArtworkDataSource

- (NSString)artworkDataSourceIdentifier
{
  v2 = [(MPHomeSharingArtworkDataSource *)self library];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MPHomeSharingArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  block[3] = &unk_1E7681568;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

id __88__MPHomeSharingArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPHomeSharingArtworkDataSource;
  return objc_msgSendSuper2(&v4, sel_loadRepresentationForArtworkCatalog_completionHandler_, v1, v2);
}

- (id)requestForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [a3 token];
  v8 = MEMORY[0x1E69B3538];
  v9 = [v7 libraryID];
  v10 = [v7 musicLibrary];
  v11 = [v8 newWithPersistentID:v9 inLibrary:v10];

  v12 = [v11 valueForProperty:*MEMORY[0x1E69B3030]];
  v13 = MEMORY[0x1E69A4638];
  v14 = [(MPHomeSharingArtworkDataSource *)self library];
  v15 = [v13 requestWithDatabaseID:objc_msgSend(v14 itemID:"databaseID") size:{objc_msgSend(v12, "unsignedLongLongValue"), width, height}];

  v16 = [(MPHomeSharingArtworkDataSource *)self library];
  v17 = [v16 urlForRequest:v15];

  v18 = [MEMORY[0x1E696AF68] requestWithURL:v17];
  v19 = [(MPHomeSharingArtworkDataSource *)self library];
  v20 = [v19 signedRequestFromURLRequest:v18];

  return v20;
}

- (id)supportedSizesForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = +[MPArtworkConfiguration systemConfiguration];
  v5 = [v4 supportedSizesForMediaType:objc_msgSend(v3 artworkType:{"mediaType"), objc_msgSend(v3, "artworkType")}];

  v6 = [v5 allObjects];

  return v6;
}

- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 token];
  v7 = -[_MPHomeSharingArtworkCacheKey initWithPersistentID:size:]([_MPHomeSharingArtworkCacheKey alloc], "initWithPersistentID:size:", [v6 libraryID], width, height);

  return v7;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 artworkType] != 4 && objc_msgSend(v3, "artworkType") != 3 && objc_msgSend(v3, "artworkType") != 2 && objc_msgSend(v3, "artworkType") != 5;

  return v4;
}

+ (id)artworkDataSourceWithIdentifier:(id)a3
{
  v3 = [MPMediaLibrary mediaLibraryWithUniqueIdentifier:a3 allowsLoadingFromDisk:1];
  v4 = [v3 libraryDataProvider];
  v5 = [v4 artworkDataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end