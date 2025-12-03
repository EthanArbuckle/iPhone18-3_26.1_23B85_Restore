@interface PHFacePLAdapter
- (id)newObjectWithPropertySets:(id)sets;
@end

@implementation PHFacePLAdapter

- (id)newObjectWithPropertySets:(id)sets
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:sets];
  v5 = [PHFace propertyFetchHintsForPropertySets:v4];

  v6 = [PHFace alloc];
  photoLibrary = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHFace *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:photoLibrary];

  return v8;
}

@end