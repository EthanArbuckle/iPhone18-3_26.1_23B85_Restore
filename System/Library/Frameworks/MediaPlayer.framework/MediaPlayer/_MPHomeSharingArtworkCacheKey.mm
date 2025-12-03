@interface _MPHomeSharingArtworkCacheKey
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (_MPHomeSharingArtworkCacheKey)initWithPersistentID:(unint64_t)d size:(CGSize)size;
- (unint64_t)hash;
@end

@implementation _MPHomeSharingArtworkCacheKey

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  persistentID = self->_persistentID;
  [(_MPHomeSharingArtworkCacheKey *)self size];
  v5 = llround(v4) ^ persistentID;
  [(_MPHomeSharingArtworkCacheKey *)self size];
  return v5 ^ llround(v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    persistentID = [v5 persistentID];
    persistentID2 = [(_MPHomeSharingArtworkCacheKey *)self persistentID];
    [v5 size];
    v9 = v8;
    v11 = v10;

    [(_MPHomeSharingArtworkCacheKey *)self size];
    v13 = v9 == v12;
    if (v11 != v14)
    {
      v13 = 0;
    }

    v15 = persistentID == persistentID2 && v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (_MPHomeSharingArtworkCacheKey)initWithPersistentID:(unint64_t)d size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = _MPHomeSharingArtworkCacheKey;
  result = [(_MPHomeSharingArtworkCacheKey *)&v8 init];
  if (result)
  {
    result->_persistentID = d;
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

@end