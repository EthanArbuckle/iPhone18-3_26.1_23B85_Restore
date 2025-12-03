@interface CRLShapeCollectionDataSource
- (BOOL)hasUserDefinedItemsInCategoryAtIndex:(unint64_t)index;
- (BOOL)hasUserDefinedShapesInCategoryAtIndex:(unint64_t)index;
- (CRLShapeCollectionDataSource)initWithBasicShapeLibrary:(id)library;
- (CRLShapeCollectionDataSource)initWithShapeLibrary:(id)library basicShapeLibrary:(id)shapeLibrary;
- (NSArray)categoryNames;
- (id)p_shapeAtIndex:(unint64_t)index categoryIndex:(unint64_t)categoryIndex;
- (id)p_shapeCollectionAtIndex:(unint64_t)index;
- (id)p_shapeWithIdentifier:(id)identifier categoryIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInCategoryAtIndex:(unint64_t)index;
- (unint64_t)numberOfShapesInCategoryAtIndex:(unint64_t)index;
- (unint64_t)p_numberOfCategories;
- (unint64_t)p_numberOfNonUserDefinedCategories;
@end

@implementation CRLShapeCollectionDataSource

- (CRLShapeCollectionDataSource)initWithShapeLibrary:(id)library basicShapeLibrary:(id)shapeLibrary
{
  libraryCopy = library;
  v8 = [(CRLShapeCollectionDataSource *)self initWithBasicShapeLibrary:shapeLibrary];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shapeLibrary, library);
  }

  return v9;
}

- (CRLShapeCollectionDataSource)initWithBasicShapeLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = CRLShapeCollectionDataSource;
  v5 = [(CRLShapeCollectionDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[CRLBasicShapeLibraryCollection alloc] initWithBasicShapeLibrary:libraryCopy];
    basicShapeLibraryCollection = v5->_basicShapeLibraryCollection;
    v5->_basicShapeLibraryCollection = v6;
  }

  return v5;
}

- (NSArray)categoryNames
{
  p_numberOfCategories = [(CRLShapeCollectionDataSource *)self p_numberOfCategories];
  v4 = [NSMutableArray arrayWithCapacity:p_numberOfCategories];
  if (p_numberOfCategories)
  {
    for (i = 0; i != p_numberOfCategories; ++i)
    {
      v6 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:i];
      name = [v6 name];

      [v4 addObject:name];
    }
  }

  return v4;
}

- (BOOL)hasUserDefinedShapesInCategoryAtIndex:(unint64_t)index
{
  p_hasUserDefinedShapes = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  if (p_hasUserDefinedShapes)
  {
    LOBYTE(p_hasUserDefinedShapes) = [(CRLShapeCollectionDataSource *)self indexOfUserDefinedLibraryCategory]== index;
  }

  return p_hasUserDefinedShapes;
}

- (unint64_t)numberOfShapesInCategoryAtIndex:(unint64_t)index
{
  v3 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:index];
  numberOfShapes = [v3 numberOfShapes];

  return numberOfShapes;
}

- (unint64_t)p_numberOfNonUserDefinedCategories
{
  p_shapeLibrary = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
  categories = [p_shapeLibrary categories];
  v4 = [categories count];

  return v4 + 1;
}

- (unint64_t)p_numberOfCategories
{
  p_hasUserDefinedShapes = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  p_shapeLibrary = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
  if (p_shapeLibrary)
  {
    p_hasUserDefinedShapes += [(CRLShapeCollectionDataSource *)self p_numberOfNonUserDefinedCategories];
  }

  return p_hasUserDefinedShapes;
}

- (id)p_shapeCollectionAtIndex:(unint64_t)index
{
  if (!index)
  {
    p_basicShapeLibraryCollection = [(CRLShapeCollectionDataSource *)self p_basicShapeLibraryCollection];
    goto LABEL_16;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
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
    v10 = index - +[CRLShapeCollectionDataSource p_firstIndexOfShapeLibraryCategories];
    v11 = [CRLShapeLibraryCollection alloc];
    p_shapeLibrary = [(CRLShapeCollectionDataSource *)self p_shapeLibrary];
    p_basicShapeLibraryCollection = [(CRLShapeLibraryCollection *)v11 initWithShapeLibrary:p_shapeLibrary categoryIndex:v10];

    goto LABEL_16;
  }

  p_basicShapeLibraryCollection = 0;
LABEL_16:

  return p_basicShapeLibraryCollection;
}

- (id)p_shapeAtIndex:(unint64_t)index categoryIndex:(unint64_t)categoryIndex
{
  v5 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:categoryIndex];
  v6 = [v5 shapeAtIndex:index];

  return v6;
}

- (id)p_shapeWithIdentifier:(id)identifier categoryIndex:(unint64_t)index
{
  identifierCopy = identifier;
  v7 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:index];
  v8 = [v7 shapeWithIdentifier:identifierCopy];

  return v8;
}

- (BOOL)hasUserDefinedItemsInCategoryAtIndex:(unint64_t)index
{
  p_hasUserDefinedShapes = [(CRLShapeCollectionDataSource *)self p_hasUserDefinedShapes];
  if (p_hasUserDefinedShapes)
  {
    LOBYTE(p_hasUserDefinedShapes) = [(CRLShapeCollectionDataSource *)self indexOfUserDefinedLibraryCategory]== index;
  }

  return p_hasUserDefinedShapes;
}

- (unint64_t)numberOfItemsInCategoryAtIndex:(unint64_t)index
{
  v3 = [(CRLShapeCollectionDataSource *)self p_shapeCollectionAtIndex:index];
  numberOfShapes = [v3 numberOfShapes];

  return numberOfShapes;
}

@end