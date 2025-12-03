@interface PHAssetPLAdapter
- (id)newObjectWithPropertySets:(id)sets;
@end

@implementation PHAssetPLAdapter

- (id)newObjectWithPropertySets:(id)sets
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:sets];
  v5 = [PHAsset propertyFetchHintsForPropertySets:v4];

  v6 = [PHAsset alloc];
  photoLibrary = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHAsset *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:photoLibrary];

  return v8;
}

@end