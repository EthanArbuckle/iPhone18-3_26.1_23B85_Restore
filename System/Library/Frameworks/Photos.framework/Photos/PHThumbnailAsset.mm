@interface PHThumbnailAsset
+ (NSArray)propertiesToFetch;
- (BOOL)complete;
- (BOOL)hasAllThumbs;
- (BOOL)hasMasterThumb;
- (BOOL)isEqual:(id)a3;
- (PHThumbnailAsset)initWithObjectID:(id)a3 knownKeysDictionary:(id)a4 photoLibrary:(id)a5;
- (id)pl_photoLibrary;
- (int64_t)_persistedThumbnailIndex;
- (int64_t)compactSCSensitivityAnalysis;
- (signed)savedAssetType;
- (unint64_t)hash;
- (unint64_t)sourceType;
- (unint64_t)thumbnailIndex;
@end

@implementation PHThumbnailAsset

- (id)pl_photoLibrary
{
  v2 = [(PHThumbnailAsset *)self photoLibrary];
  v3 = [v2 photoLibrary];

  return v3;
}

- (int64_t)compactSCSensitivityAnalysis
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:4];
  v3 = [v2 longLongValue];

  return v3;
}

- (unint64_t)sourceType
{
  v2 = [(PHThumbnailAsset *)self savedAssetType];

  return [PHAsset sourceTypeFromSavedAssetType:v2];
}

- (signed)savedAssetType
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:3];
  v3 = [v2 shortValue];

  return v3;
}

- (BOOL)complete
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)thumbnailIndex
{
  result = [(PHThumbnailAsset *)self _persistedThumbnailIndex];
  if (result > *MEMORY[0x1E69BE9D8] || result < *MEMORY[0x1E69BE9D0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)_persistedThumbnailIndex
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:1];
  v3 = [v2 integerValue];
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)hasMasterThumb
{
  v2 = [(PHThumbnailAsset *)self _persistedThumbnailIndex];
  v3 = MEMORY[0x1E69BE540];

  return [v3 hasMasterThumbWithThumbnailIndex:v2];
}

- (BOOL)hasAllThumbs
{
  v2 = [(PHThumbnailAsset *)self _persistedThumbnailIndex];
  v3 = MEMORY[0x1E69BE540];

  return [v3 hasAllThumbsWithThumbnailIndex:v2];
}

- (unint64_t)hash
{
  v2 = [(PHThumbnailAsset *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHThumbnailAsset *)self objectID];
      v7 = [(PHThumbnailAsset *)v5 objectID];

      IsEqual = PLObjectIsEqual();
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (PHThumbnailAsset)initWithObjectID:(id)a3 knownKeysDictionary:(id)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHThumbnailAsset;
  v12 = [(PHThumbnailAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, a3);
    objc_storeStrong(&v13->_dictionary, a4);
    objc_storeStrong(&v13->_photoLibrary, a5);
  }

  return v13;
}

+ (NSArray)propertiesToFetch
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"thumbnailIndex";
  v4[1] = @"complete";
  v4[2] = @"savedAssetType";
  v4[3] = @"compactSCSensitivityAnalysis";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

@end