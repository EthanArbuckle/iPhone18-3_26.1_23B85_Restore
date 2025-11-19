@interface CRLShapeCollectionDataSource
- (BOOL)hasUserDefinedItemsInCategoryAtIndex:(unint64_t)a3;
- (BOOL)hasUserDefinedShapesInCategoryAtIndex:(unint64_t)a3;
- (CRLShapeCollectionDataSource)initWithBasicShapeLibrary:(id)a3;
- (CRLShapeCollectionDataSource)initWithShapeLibrary:(id)a3 basicShapeLibrary:(id)a4;
- (NSArray)categoryNames;
- (id)p_shapeAtIndex:(unint64_t)a3 categoryIndex:(unint64_t)a4;
- (id)p_shapeCollectionAtIndex:(unint64_t)a3;
- (id)p_shapeWithIdentifier:(id)a3 categoryIndex:(unint64_t)a4;
- (unint64_t)numberOfItemsInCategoryAtIndex:(unint64_t)a3;
- (unint64_t)numberOfShapesInCategoryAtIndex:(unint64_t)a3;
- (unint64_t)p_numberOfCategories;
- (unint64_t)p_numberOfNonUserDefinedCategories;
@end

@implementation CRLShapeCollectionDataSource

- (CRLShapeCollectionDataSource)initWithShapeLibrary:(id)a3 basicShapeLibrary:(id)a4
{
  v7 = a3;
  v8 = [(CRLShapeCollectionDataSource *)self initWithBasicShapeLibrary:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shapeLibrary, a3);
  }

  return v9;
}

- (CRLShapeCollectionDataSource)initWithBasicShapeLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLShapeCollectionDataSource;
  v5 = [(CRLShapeCollectionDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[CRLBasicShapeLibraryCollection alloc] initWithBasicShapeLibrary:v4];
    basicShapeLibraryCollection = v5->_basicShapeLibraryCollection;
    v5->_basicShapeLibraryCollection = v6;
  }

  return v5;
}

- (NSArray)categoryNames
{
  v3 = [(CRLShapeCollectionDataSource *)self p_numberOfCategories];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:i];
      v7 = [v6 name];

      [v4 addObject:v7];
    }
  }

  return v4;
}

- (BOOL)hasUserDefinedShapesInCategoryAtIndex:(unint64_t)a3
{
  v5 = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  if (v5)
  {
    LOBYTE(v5) = [(CRLShapeCollectionDataSource *)self indexOfUserDefinedLibraryCategory]== a3;
  }

  return v5;
}

- (unint64_t)numberOfShapesInCategoryAtIndex:(unint64_t)a3
{
  v3 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:a3];
  v4 = [v3 numberOfShapes];

  return v4;
}

- (unint64_t)p_numberOfNonUserDefinedCategories
{
  v2 = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
  v3 = [v2 categories];
  v4 = [v3 count];

  return v4 + 1;
}

- (unint64_t)p_numberOfCategories
{
  v3 = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  v4 = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
  if (v4)
  {
    v3 += [(CRLShapeCollectionDataSource *)self p_numberOfNonUserDefinedCategories];
  }

  return v3;
}

- (id)p_shapeCollectionAtIndex:(unint64_t)a3
{
  if (!a3)
  {
    v9 = [(CRLShapeCollectionDataSource *)self p_basicShapeLibraryCollection];
    goto LABEL_16;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136C7E8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C7FC(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136C8A8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLShapeCollectionDataSource p_shapeCollectionAtIndex:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeCollectionDataSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:122 isFatal:0 description:"Attempting to find a shape collection at an invalid index (NSNotFound)."];
  }

  else if (self->_shapeLibrary)
  {
    v10 = a3 - +[CRLShapeCollectionDataSource p_firstIndexOfShapeLibraryCategories];
    v11 = [CRLShapeLibraryCollection alloc];
    v12 = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
    v9 = [(CRLShapeLibraryCollection *)v11 initWithShapeLibrary:v12 categoryIndex:v10];

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (id)p_shapeAtIndex:(unint64_t)a3 categoryIndex:(unint64_t)a4
{
  v5 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:a4];
  v6 = [v5 shapeAtIndex:a3];

  return v6;
}

- (id)p_shapeWithIdentifier:(id)a3 categoryIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:a4];
  v8 = [v7 shapeWithIdentifier:v6];

  return v8;
}

- (BOOL)hasUserDefinedItemsInCategoryAtIndex:(unint64_t)a3
{
  v5 = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  if (v5)
  {
    LOBYTE(v5) = [(CRLShapeCollectionDataSource *)self indexOfUserDefinedLibraryCategory]== a3;
  }

  return v5;
}

- (unint64_t)numberOfItemsInCategoryAtIndex:(unint64_t)a3
{
  v3 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:a3];
  v4 = [v3 numberOfShapes];

  return v4;
}

@end