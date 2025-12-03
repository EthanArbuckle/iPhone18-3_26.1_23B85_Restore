@interface _MPArtworkCatalogPlaceholderDataSource
+ (id)sharedDataSource;
- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation _MPArtworkCatalogPlaceholderDataSource

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  v3 = MEMORY[0x1E696AEC0];
  catalogCopy = catalog;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v7 = v6;
  v9 = v8;

  v14.width = v7;
  v14.height = v9;
  v10 = NSStringFromCGSize(v14);
  v11 = [v3 stringWithFormat:@"%@-%@", token, v10];

  return v11;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  [catalogCopy scaledFittingSize];
  v10 = v9;
  v11 = v8;
  if (v9 == *&MPArtworkCatalogOriginalSize && v8 == *(&MPArtworkCatalogOriginalSize + 1))
  {
    MSVGetMaximumScreenSize();
    v10 = v13;
    v11 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v10, v11}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96___MPArtworkCatalogPlaceholderDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v22[3] = &unk_1E7675D78;
  v16 = catalogCopy;
  v23 = v16;
  v17 = [v15 imageWithActions:v22];
  v18 = [(_MPArtworkCatalogPlaceholderDataSource *)self visualIdenticalityIdentifierForCatalog:v16];
  [v17 size];
  v19 = [MPArtworkRepresentation representationForVisualIdentity:v18 withSize:v17 image:?];
  fallbackCache = [v16 cache];
  v21 = fallbackCache;
  if (!fallbackCache)
  {
    fallbackCache = self->_fallbackCache;
  }

  [fallbackCache setObject:v19 forKey:v18];

  handlerCopy[2](handlerCopy, v19, 0);
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  cache = [catalogCopy cache];
  fallbackCache = cache;
  if (!cache)
  {
    fallbackCache = self->_fallbackCache;
  }

  v7 = [(_MPArtworkCatalogPlaceholderDataSource *)self visualIdenticalityIdentifierForCatalog:catalogCopy];

  stringRepresentation = [v7 stringRepresentation];
  v9 = [(NSCache *)fallbackCache objectForKey:stringRepresentation];

  return v9;
}

- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  image = [representation image];
  [image size];
  v8 = v7;
  v10 = v9;
  [catalogCopy scaledFittingSize];
  v12 = v11;
  v14 = v13;

  v15 = v10 == v14 && v8 == v12;
  return v15;
}

+ (id)sharedDataSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___MPArtworkCatalogPlaceholderDataSource_sharedDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDataSource_onceToken != -1)
  {
    dispatch_once(&sharedDataSource_onceToken, block);
  }

  v2 = sharedDataSource___dataSource;

  return v2;
}

@end