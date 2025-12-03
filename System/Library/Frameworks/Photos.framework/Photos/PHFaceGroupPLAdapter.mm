@interface PHFaceGroupPLAdapter
- (id)newObjectWithPropertySets:(id)sets;
@end

@implementation PHFaceGroupPLAdapter

- (id)newObjectWithPropertySets:(id)sets
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:sets];
  v5 = [(PHObject *)PHFaceGroup propertyFetchHintsForPropertySets:v4];

  v6 = [PHFaceGroup alloc];
  photoLibrary = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHFaceGroup *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:photoLibrary];

  return v8;
}

@end