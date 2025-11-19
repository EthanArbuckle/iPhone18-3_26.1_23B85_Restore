@interface _MPMediaLibraryArtworkDataSourceCacheKey
- (BOOL)isEqual:(id)a3;
- (CGSize)representationSize;
- (_MPMediaLibraryArtworkDataSourceCacheKey)initWithArtworkCatalog:(id)a3 representativeSize:(CGSize)a4;
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
  v3 = [(_MPMediaLibraryArtworkDataSourceCacheKey *)self catalogIdentifier];
  v4 = [v3 hash];
  [(_MPMediaLibraryArtworkDataSourceCacheKey *)self representationSize];
  v6 = v4 ^ v5;
  [(_MPMediaLibraryArtworkDataSourceCacheKey *)self representationSize];
  v8 = v7;

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 catalogIdentifier];
    v7 = [(_MPMediaLibraryArtworkDataSourceCacheKey *)self catalogIdentifier];
    v8 = [v6 isEqual:v7];

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

- (_MPMediaLibraryArtworkDataSourceCacheKey)initWithArtworkCatalog:(id)a3 representativeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _MPMediaLibraryArtworkDataSourceCacheKey;
  v8 = [(_MPMediaLibraryArtworkDataSourceCacheKey *)&v12 init];
  if (v8)
  {
    v9 = [v7 visualIdenticalityIdentifier];
    catalogIdentifier = v8->_catalogIdentifier;
    v8->_catalogIdentifier = v9;

    v8->_representationSize.width = width;
    v8->_representationSize.height = height;
  }

  return v8;
}

@end