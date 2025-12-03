@interface PHLocallyAvailableResourceBag
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)prepareForReuse;
@end

@implementation PHLocallyAvailableResourceBag

- (void)prepareForReuse
{
  self->_isDegraded = 0;
  dataStore = self->_dataStore;
  self->_dataStore = 0;

  dataStoreKey = self->_dataStoreKey;
  self->_dataStoreKey = 0;

  *&self->_isPrimaryFormat = 0;
  self->_keyIsHintBased = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHLocallyAvailableResourceBag);
  assetID = [(PHLocallyAvailableResourceBag *)self assetID];
  [(PHLocallyAvailableResourceBag *)v4 setAssetID:assetID];

  dataStore = [(PHLocallyAvailableResourceBag *)self dataStore];
  [(PHLocallyAvailableResourceBag *)v4 setDataStore:dataStore];

  dataStoreKey = [(PHLocallyAvailableResourceBag *)self dataStoreKey];
  [(PHLocallyAvailableResourceBag *)v4 setDataStoreKey:dataStoreKey];

  [(PHLocallyAvailableResourceBag *)v4 setKeyIsHintBased:[(PHLocallyAvailableResourceBag *)self keyIsHintBased]];
  [(PHLocallyAvailableResourceBag *)v4 setIsDegraded:[(PHLocallyAvailableResourceBag *)self isDegraded]];
  [(PHLocallyAvailableResourceBag *)v4 setIsPrimaryFormat:[(PHLocallyAvailableResourceBag *)self isPrimaryFormat]];
  [(PHLocallyAvailableResourceBag *)v4 setIsDerivedFromDeferredPreview:[(PHLocallyAvailableResourceBag *)self isDerivedFromDeferredPreview]];
  return v4;
}

- (NSString)description
{
  if ([objc_opt_class() storeClassID] == 1)
  {
    resourceURL = 0;
  }

  else
  {
    resourceURL = [(PHLocallyAvailableResourceBag *)self resourceURL];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if ([(PHLocallyAvailableResourceBag *)self keyIsHintBased])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(PHLocallyAvailableResourceBag *)self isDegraded])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(PHLocallyAvailableResourceBag *)self isPrimaryFormat])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v10 = [v4 stringWithFormat:@"<%@ %p> url: %@, hint-based: %@, degraded: %@, primary: %@", v6, self, resourceURL, v7, v8, v9];

  if (self->_isDerivedFromDeferredPreview)
  {
    v11 = [v10 stringByAppendingString:{@", derived-from-deferred: Y"}];

    v10 = v11;
  }

  return v10;
}

@end