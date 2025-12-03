@interface CRLBasicShapeLibraryCollection
- (CRLBasicShapeLibraryCollection)initWithBasicShapeLibrary:(id)library;
- (NSString)name;
- (id)shapeAtIndex:(unint64_t)index;
- (id)shapeWithIdentifier:(id)identifier;
- (unint64_t)numberOfShapes;
@end

@implementation CRLBasicShapeLibraryCollection

- (CRLBasicShapeLibraryCollection)initWithBasicShapeLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = CRLBasicShapeLibraryCollection;
  v6 = [(CRLBasicShapeLibraryCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_basicShapeLibrary, library);
  }

  return v7;
}

- (NSString)name
{
  p_basicShapeLibrary = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  name = [p_basicShapeLibrary name];

  return name;
}

- (unint64_t)numberOfShapes
{
  p_basicShapeLibrary = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  numberOfBasicShapes = [p_basicShapeLibrary numberOfBasicShapes];

  return numberOfBasicShapes;
}

- (id)shapeAtIndex:(unint64_t)index
{
  p_basicShapeLibrary = [(CRLBasicShapeLibraryCollection *)self p_basicShapeLibrary];
  v5 = [p_basicShapeLibrary basicShapeAtIndex:index];

  return v5;
}

- (id)shapeWithIdentifier:(id)identifier
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