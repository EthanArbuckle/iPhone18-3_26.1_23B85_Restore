@interface MPTiledArtworkRequest
- (BOOL)hasExistingArtworkCatalogsWithCount:(int64_t)a3;
- (MPTiledArtworkRequest)init;
- (id)artworkCatalogsWithCount:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)existingArtworkCatalogsWithCount:(int64_t)a3;
@end

@implementation MPTiledArtworkRequest

- (BOOL)hasExistingArtworkCatalogsWithCount:(int64_t)a3
{
  if ([(MPTiledArtworkRequest *)self allowsSynchronousArtworkCatalogsBlockExecution])
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_cacheLock);
  v5 = self->_artworkCatalogsCacheCount >= a3;
  os_unfair_lock_unlock(&self->_cacheLock);
  return v5;
}

- (id)existingArtworkCatalogsWithCount:(int64_t)a3
{
  if ([(MPTiledArtworkRequest *)self allowsSynchronousArtworkCatalogsBlockExecution])
  {
    v5 = [(MPTiledArtworkRequest *)self artworkCatalogsWithCount:a3];
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    artworkCatalogsCache = self->_artworkCatalogsCache;
    v7 = [(NSArray *)artworkCatalogsCache count];
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    v5 = [(NSArray *)artworkCatalogsCache subarrayWithRange:0, v8];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v5;
}

- (id)artworkCatalogsWithCount:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_cacheLock);
  if (self->_artworkCatalogsCacheCount >= a3)
  {
    artworkCatalogsCache = self->_artworkCatalogsCache;
    v12 = [(NSArray *)artworkCatalogsCache count];
    if (v12 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v12;
    }

    v10 = [(NSArray *)artworkCatalogsCache subarrayWithRange:0, v13];
LABEL_10:
    v14 = v10;
    goto LABEL_11;
  }

  artworkCatalogsBlock = self->_artworkCatalogsBlock;
  if (artworkCatalogsBlock)
  {
    v6 = artworkCatalogsBlock[2](artworkCatalogsBlock, a3);
    v7 = self->_artworkCatalogsCache;
    self->_artworkCatalogsCache = v6;

    v8 = self->_artworkCatalogsCache;
    artworkCatalogsCacheCount = self->_artworkCatalogsCacheCount;
    if (artworkCatalogsCacheCount <= a3)
    {
      artworkCatalogsCacheCount = a3;
    }

    self->_artworkCatalogsCacheCount = artworkCatalogsCacheCount;
    v10 = [(NSArray *)v8 copy];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:
  os_unfair_lock_unlock(&self->_cacheLock);

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
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
    v8 = [(NSCopying *)self->_entityIdentifier copyWithZone:a3];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v8;

    v10 = [(NSCopying *)self->_namespaceIdentifier copyWithZone:a3];
    namespaceIdentifier = v5->_namespaceIdentifier;
    v5->_namespaceIdentifier = v10;

    v12 = [(NSCopying *)self->_revisionIdentifier copyWithZone:a3];
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