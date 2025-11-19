@interface MPTiledArtworkRepresentationCacheKey
- (BOOL)isEqual:(id)a3;
- (MPTiledArtworkRepresentationCacheKey)initWithTiledArtworkRequest:(id)a3 scaledFittingSize:(CGSize)a4;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation MPTiledArtworkRepresentationCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      entityIdentifier = self->_entityIdentifier;
      v9 = (entityIdentifier == v5->_entityIdentifier || [entityIdentifier isEqual:?]) && ((namespaceIdentifier = self->_namespaceIdentifier, namespaceIdentifier == v5->_namespaceIdentifier) || objc_msgSend(namespaceIdentifier, "isEqual:")) && self->_numberOfColumns == v5->_numberOfColumns && self->_numberOfRows == v5->_numberOfRows && ((revisionIdentifier = self->_revisionIdentifier, revisionIdentifier == v5->_revisionIdentifier) || objc_msgSend(revisionIdentifier, "isEqual:")) && vabdd_f64(self->_scaledFittingSize.width, v5->_scaledFittingSize.width) < 0.00000011920929 && vabdd_f64(self->_scaledFittingSize.height, v5->_scaledFittingSize.height) < 0.00000011920929 && vabdd_f64(self->_tileSpacing, v5->_tileSpacing) < 0.00000011920929;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [self->_entityIdentifier hash];
  v4 = [self->_namespaceIdentifier hash] + v3 + 100 * self->_numberOfColumns + 10000 * self->_numberOfRows;
  return v4 + [self->_revisionIdentifier hash] + vcvtmd_u64_f64(self->_scaledFittingSize.width * 100.0) + vcvtmd_u64_f64(self->_scaledFittingSize.height * 100.0) + vcvtmd_u64_f64(self->_tileSpacing * 100.0);
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_entityIdentifier)
  {
    if (self->_namespaceIdentifier)
    {
      [v6 appendFormat:@"; entityIdentifier = %@", self->_entityIdentifier];
      [v6 appendFormat:@"; namespaceIdentifier = %@", self->_namespaceIdentifier];
      if (self->_revisionIdentifier)
      {
        [v6 appendFormat:@"; revisionIdentifier = %@", self->_revisionIdentifier];
      }
    }
  }

  [v6 appendFormat:@"; numberOfColumns = %lu", self->_numberOfColumns];
  [v6 appendFormat:@"; numberOfRows = %lu", self->_numberOfRows];
  [v6 appendFormat:@"; tileSpacing = %.2f", *&self->_tileSpacing];
  v7 = NSStringFromCGSize(self->_scaledFittingSize);
  [v6 appendFormat:@"; scaledFittingSize = %@", v7];

  [v6 appendString:@">"];

  return v6;
}

- (MPTiledArtworkRepresentationCacheKey)initWithTiledArtworkRequest:(id)a3 scaledFittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MPTiledArtworkRepresentationCacheKey;
  v8 = [(MPTiledArtworkRepresentationCacheKey *)&v17 init];
  if (v8)
  {
    v9 = [v7 entityIdentifier];
    entityIdentifier = v8->_entityIdentifier;
    v8->_entityIdentifier = v9;

    v11 = [v7 namespaceIdentifier];
    namespaceIdentifier = v8->_namespaceIdentifier;
    v8->_namespaceIdentifier = v11;

    v8->_numberOfColumns = [v7 numberOfColumns];
    v8->_numberOfRows = [v7 numberOfRows];
    v13 = [v7 revisionIdentifier];
    revisionIdentifier = v8->_revisionIdentifier;
    v8->_revisionIdentifier = v13;

    [v7 tileSpacing];
    v8->_scaledFittingSize.height = height;
    v8->_tileSpacing = v15;
    v8->_scaledFittingSize.width = width;
  }

  return v8;
}

@end