@interface MPTiledArtworkRequest
- (BOOL)hasExistingArtworkCatalogsWithCount:(int64_t)count;
- (MPTiledArtworkRequest)init;
- (id)artworkCatalogsWithCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)existingArtworkCatalogsWithCount:(int64_t)count;
@end

@implementation MPTiledArtworkRequest

- (BOOL)hasExistingArtworkCatalogsWithCount:(int64_t)count
{
  if ([(MPTiledArtworkRequest *)self allowsSynchronousArtworkCatalogsBlockExecution])
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_cacheLock);
  v5 = self->_artworkCatalogsCacheCount >= count;
  os_unfair_lock_unlock(&self->_cacheLock);
  return v5;
}

- (id)existingArtworkCatalogsWithCount:(int64_t)count
{
  if ([(MPTiledArtworkRequest *)self allowsSynchronousArtworkCatalogsBlockExecution])
  {
    countCopy = [(MPTiledArtworkRequest *)self artworkCatalogsWithCount:count];
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    artworkCatalogsCache = self->_artworkCatalogsCache;
    v7 = [(NSArray *)artworkCatalogsCache count];
    if (v7 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v7;
    }

    countCopy = [(NSArray *)artworkCatalogsCache subarrayWithRange:0, countCopy];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return countCopy;
}

- (id)artworkCatalogsWithCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_cacheLock);
  if (self->_artworkCatalogsCacheCount >= count)
  {
    artworkCatalogsCache = self->_artworkCatalogsCache;
    v12 = [(NSArray *)artworkCatalogsCache count];
    if (v12 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v12;
    }

    countCopy = [(NSArray *)artworkCatalogsCache subarrayWithRange:0, countCopy];
LABEL_10:
    v14 = countCopy;
    goto LABEL_11;
  }

  artworkCatalogsBlock = self->_artworkCatalogsBlock;
  if (artworkCatalogsBlock)
  {
    v6 = artworkCatalogsBlock[2](artworkCatalogsBlock, count);
    v7 = self->_artworkCatalogsCache;
    self->_artworkCatalogsCache = v6;

    v8 = self->_artworkCatalogsCache;
    artworkCatalogsCacheCount = self->_artworkCatalogsCacheCount;
    if (artworkCatalogsCacheCount <= count)
    {
      artworkCatalogsCacheCount = count;
    }

    self->_artworkCatalogsCacheCount = artworkCatalogsCacheCount;
    countCopy = [(NSArray *)v8 copy];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:
  os_unfair_lock_unlock(&self->_cacheLock);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(MPTiledArtworkRequest);
  if (v5)
  {
    v6 = [self->_artworkCatalogsBlock copy];
    artworkCatalogsBlock = v5->_artworkCatalogsBlock;
    v5->_artworkCatalogsBlock = v6;

    v5->_allowsSynchronousArtworkCatalogsBlockExecution = self->_allowsSynchronousArtworkCatalogsBlockExecution;
    v5->_numberOfColumns = self->_numberOfColumns;
    v5->_numberOfRows = self->_numberOfRows;
    v5->_tileSpacing = self->_tileSpacing;
    v8 = [(NSCopying *)self->_entityIdentifier copyWithZone:zone];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v8;

    v10 = [(NSCopying *)self->_namespaceIdentifier copyWithZone:zone];
    namespaceIdentifier = v5->_namespaceIdentifier;
    v5->_namespaceIdentifier = v10;

    v12 = [(NSCopying *)self->_revisionIdentifier copyWithZone:zone];
    revisionIdentifier = v5->_revisionIdentifier;
    v5->_revisionIdentifier = v12;
  }

  return v5;
}

- (MPTiledArtworkRequest)init
{
  v3.receiver = self;
  v3.super_class = MPTiledArtworkRequest;
  result = [(MPTiledArtworkRequest *)&v3 init];
  if (result)
  {
    result->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end