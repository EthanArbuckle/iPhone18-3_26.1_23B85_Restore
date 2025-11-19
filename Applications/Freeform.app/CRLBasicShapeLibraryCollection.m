@interface CRLBasicShapeLibraryCollection
- (CRLBasicShapeLibraryCollection)initWithBasicShapeLibrary:(id)a3;
- (NSString)name;
- (id)shapeAtIndex:(unint64_t)a3;
- (id)shapeWithIdentifier:(id)a3;
- (unint64_t)numberOfShapes;
@end

@implementation CRLBasicShapeLibraryCollection

- (CRLBasicShapeLibraryCollection)initWithBasicShapeLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLBasicShapeLibraryCollection;
  v6 = [(CRLBasicShapeLibraryCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_basicShapeLibrary, a3);
  }

  return v7;
}

- (NSString)name
{
  v2 = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)numberOfShapes
{
  v2 = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  v3 = [v2 numberOfBasicShapes];

  return v3;
}

- (id)shapeAtIndex:(unint64_t)a3
{
  v4 = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  v5 = [v4 basicShapeAtIndex:a3];

  return v5;
}

- (id)shapeWithIdentifier:(id)a3
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101340558();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10134056C(v3, v4);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101340618();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v5, v3);
  }

  v6 = [NSString stringWithUTF8String:"[CRLBasicShapeLibraryCollection shapeWithIdentifier:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryCollection.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:50 isFatal:0 description:"[CRLBasicShapeLibraryCollection shapeWithIdentifier:] should not be called because CRLBasicShapeLibraryCollection has no editable shapes"];

  return 0;
}

@end