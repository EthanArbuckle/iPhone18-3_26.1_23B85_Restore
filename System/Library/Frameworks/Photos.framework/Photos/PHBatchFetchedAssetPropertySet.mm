@interface PHBatchFetchedAssetPropertySet
+ (BOOL)useNoIndexSelf;
+ (NSArray)propertiesToFetch;
- (PHBatchFetchedAssetPropertySet)initWithObjectID:(id)d knownKeysDictionary:(id)dictionary photoLibrary:(id)library;
- (unint64_t)hash;
@end

@implementation PHBatchFetchedAssetPropertySet

- (unint64_t)hash
{
  objectID = [(PHBatchFetchedAssetPropertySet *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (PHBatchFetchedAssetPropertySet)initWithObjectID:(id)d knownKeysDictionary:(id)dictionary photoLibrary:(id)library
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PHBatchFetchedAssetPropertySet;
  v10 = [(PHBatchFetchedAssetPropertySet *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objectID, d);
    objc_storeStrong(&v11->_knownKeysDictionary, dictionary);
  }

  return v11;
}

+ (BOOL)useNoIndexSelf
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (NSArray)propertiesToFetch
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end