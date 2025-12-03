@interface PHThumbnailAsset
+ (NSArray)propertiesToFetch;
- (BOOL)complete;
- (BOOL)hasAllThumbs;
- (BOOL)hasMasterThumb;
- (BOOL)isEqual:(id)equal;
- (PHThumbnailAsset)initWithObjectID:(id)d knownKeysDictionary:(id)dictionary photoLibrary:(id)library;
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
  photoLibrary = [(PHThumbnailAsset *)self photoLibrary];
  v2PhotoLibrary = [photoLibrary photoLibrary];

  return v2PhotoLibrary;
}

- (int64_t)compactSCSensitivityAnalysis
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:4];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (unint64_t)sourceType
{
  savedAssetType = [(PHThumbnailAsset *)self savedAssetType];

  return [PHAsset sourceTypeFromSavedAssetType:savedAssetType];
}

- (signed)savedAssetType
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:3];
  shortValue = [v2 shortValue];

  return shortValue;
}

- (BOOL)complete
{
  v2 = [(NSKnownKeysDictionary *)self->_dictionary valueAtIndex:2];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  integerValue = [v2 integerValue];
  if (v2)
  {
    v4 = integerValue;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)hasMasterThumb
{
  _persistedThumbnailIndex = [(PHThumbnailAsset *)self _persistedThumbnailIndex];
  v3 = MEMORY[0x1E69BE540];

  return [v3 hasMasterThumbWithThumbnailIndex:_persistedThumbnailIndex];
}

- (BOOL)hasAllThumbs
{
  _persistedThumbnailIndex = [(PHThumbnailAsset *)self _persistedThumbnailIndex];
  v3 = MEMORY[0x1E69BE540];

  return [v3 hasAllThumbsWithThumbnailIndex:_persistedThumbnailIndex];
}

- (unint64_t)hash
{
  objectID = [(PHThumbnailAsset *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objectID = [(PHThumbnailAsset *)self objectID];
      objectID2 = [(PHThumbnailAsset *)v5 objectID];

      IsEqual = PLObjectIsEqual();
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (PHThumbnailAsset)initWithObjectID:(id)d knownKeysDictionary:(id)dictionary photoLibrary:(id)library
{
  dCopy = d;
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = PHThumbnailAsset;
  v12 = [(PHThumbnailAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, d);
    objc_storeStrong(&v13->_dictionary, dictionary);
    objc_storeStrong(&v13->_photoLibrary, library);
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