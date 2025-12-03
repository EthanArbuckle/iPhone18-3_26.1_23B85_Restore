@interface _MPMediaLibraryArtworkDataSourceCacheKey
- (BOOL)isEqual:(id)equal;
- (CGSize)representationSize;
- (_MPMediaLibraryArtworkDataSourceCacheKey)initWithArtworkCatalog:(id)catalog representativeSize:(CGSize)size;
- (unint64_t)hash;
@end

@implementation _MPMediaLibraryArtworkDataSourceCacheKey

- (CGSize)representationSize
{
  width = self->_representationSize.width;
  height = self->_representationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  catalogIdentifier = [(_MPMediaLibraryArtworkDataSourceCacheKey *)self catalogIdentifier];
  v4 = [catalogIdentifier hash];
  [(_MPMediaLibraryArtworkDataSourceCacheKey *)self representationSize];
  v6 = v4 ^ v5;
  [(_MPMediaLibraryArtworkDataSourceCacheKey *)self representationSize];
  v8 = v7;

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    catalogIdentifier = [v5 catalogIdentifier];
    catalogIdentifier2 = [(_MPMediaLibraryArtworkDataSourceCacheKey *)self catalogIdentifier];
    v8 = [catalogIdentifier isEqual:catalogIdentifier2];

    [v5 representationSize];
    v10 = v9;
    v12 = v11;

    [(_MPMediaLibraryArtworkDataSourceCacheKey *)self representationSize];
    if (v10 == v14)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = v12 == v13 && v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (_MPMediaLibraryArtworkDataSourceCacheKey)initWithArtworkCatalog:(id)catalog representativeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  catalogCopy = catalog;
  v12.receiver = self;
  v12.super_class = _MPMediaLibraryArtworkDataSourceCacheKey;
  v8 = [(_MPMediaLibraryArtworkDataSourceCacheKey *)&v12 init];
  if (v8)
  {
    visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
    catalogIdentifier = v8->_catalogIdentifier;
    v8->_catalogIdentifier = visualIdenticalityIdentifier;

    v8->_representationSize.width = width;
    v8->_representationSize.height = height;
  }

  return v8;
}

@end