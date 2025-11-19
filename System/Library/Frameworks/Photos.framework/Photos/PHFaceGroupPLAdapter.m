@interface PHFaceGroupPLAdapter
- (id)newObjectWithPropertySets:(id)a3;
@end

@implementation PHFaceGroupPLAdapter

- (id)newObjectWithPropertySets:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(PHObject *)PHFaceGroup propertyFetchHintsForPropertySets:v4];

  v6 = [PHFaceGroup alloc];
  v7 = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHFaceGroup *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:v7];

  return v8;
}

@end