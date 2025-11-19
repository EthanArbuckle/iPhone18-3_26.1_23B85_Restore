@interface PHBatchFetchedAssetPropertySet
+ (BOOL)useNoIndexSelf;
+ (NSArray)propertiesToFetch;
- (PHBatchFetchedAssetPropertySet)initWithObjectID:(id)a3 knownKeysDictionary:(id)a4 photoLibrary:(id)a5;
- (unint64_t)hash;
@end

@implementation PHBatchFetchedAssetPropertySet

- (unint64_t)hash
{
  v2 = [(PHBatchFetchedAssetPropertySet *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (PHBatchFetchedAssetPropertySet)initWithObjectID:(id)a3 knownKeysDictionary:(id)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PHBatchFetchedAssetPropertySet;
  v10 = [(PHBatchFetchedAssetPropertySet *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objectID, a3);
    objc_storeStrong(&v11->_knownKeysDictionary, a4);
  }

  return v11;
}

+ (BOOL)useNoIndexSelf
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (NSArray)propertiesToFetch
{
  v2 = a1;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end