@interface MPHomeSharingArtworkDataSource
+ (id)artworkDataSourceWithIdentifier:(id)identifier;
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (NSString)artworkDataSourceIdentifier;
- (id)cacheKeyForCatalog:(id)catalog size:(CGSize)size;
- (id)requestForCatalog:(id)catalog size:(CGSize)size;
- (id)supportedSizesForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPHomeSharingArtworkDataSource

- (NSString)artworkDataSourceIdentifier
{
  library = [(MPHomeSharingArtworkDataSource *)self library];
  uniqueIdentifier = [library uniqueIdentifier];

  return uniqueIdentifier;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MPHomeSharingArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  block[3] = &unk_1E7681568;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = catalogCopy;
  v9 = handlerCopy;
  v10 = catalogCopy;
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

- (id)requestForCatalog:(id)catalog size:(CGSize)size
{
  height = size.height;
  width = size.width;
  token = [catalog token];
  v8 = MEMORY[0x1E69B3538];
  libraryID = [token libraryID];
  musicLibrary = [token musicLibrary];
  v11 = [v8 newWithPersistentID:libraryID inLibrary:musicLibrary];

  v12 = [v11 valueForProperty:*MEMORY[0x1E69B3030]];
  v13 = MEMORY[0x1E69A4638];
  library = [(MPHomeSharingArtworkDataSource *)self library];
  v15 = [v13 requestWithDatabaseID:objc_msgSend(library itemID:"databaseID") size:{objc_msgSend(v12, "unsignedLongLongValue"), width, height}];

  library2 = [(MPHomeSharingArtworkDataSource *)self library];
  v17 = [library2 urlForRequest:v15];

  v18 = [MEMORY[0x1E696AF68] requestWithURL:v17];
  library3 = [(MPHomeSharingArtworkDataSource *)self library];
  v20 = [library3 signedRequestFromURLRequest:v18];

  return v20;
}

- (id)supportedSizesForCatalog:(id)catalog
{
  token = [catalog token];
  v4 = +[MPArtworkConfiguration systemConfiguration];
  v5 = [v4 supportedSizesForMediaType:objc_msgSend(token artworkType:{"mediaType"), objc_msgSend(token, "artworkType")}];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)cacheKeyForCatalog:(id)catalog size:(CGSize)size
{
  height = size.height;
  width = size.width;
  token = [catalog token];
  v7 = -[_MPHomeSharingArtworkCacheKey initWithPersistentID:size:]([_MPHomeSharingArtworkCacheKey alloc], "initWithPersistentID:size:", [token libraryID], width, height);

  return v7;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  token = [catalog token];
  v4 = [token artworkType] != 4 && objc_msgSend(token, "artworkType") != 3 && objc_msgSend(token, "artworkType") != 2 && objc_msgSend(token, "artworkType") != 5;

  return v4;
}

+ (id)artworkDataSourceWithIdentifier:(id)identifier
{
  v3 = [MPMediaLibrary mediaLibraryWithUniqueIdentifier:identifier allowsLoadingFromDisk:1];
  libraryDataProvider = [v3 libraryDataProvider];
  artworkDataSource = [libraryDataProvider artworkDataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = artworkDataSource;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end