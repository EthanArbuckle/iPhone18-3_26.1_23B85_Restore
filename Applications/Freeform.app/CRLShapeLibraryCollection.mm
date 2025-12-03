@interface CRLShapeLibraryCollection
- (CRLShapeLibraryCollection)initWithShapeLibrary:(id)library categoryIndex:(unint64_t)index;
- (NSString)name;
- (id)p_category;
- (id)shapeAtIndex:(unint64_t)index;
- (id)shapeWithIdentifier:(id)identifier;
- (unint64_t)numberOfShapes;
@end

@implementation CRLShapeLibraryCollection

- (CRLShapeLibraryCollection)initWithShapeLibrary:(id)library categoryIndex:(unint64_t)index
{
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = CRLShapeLibraryCollection;
  v8 = [(CRLShapeLibraryCollection *)&v21 init];
  if (v8)
  {
    categories = [libraryCopy categories];
    v10 = [categories count];

    if (v10 <= index)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132C2B0();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v18 = v12;
        categories2 = [libraryCopy categories];
        v20 = [categories2 count];
        *buf = 67110402;
        v23 = v11;
        v24 = 2082;
        v25 = "[CRLShapeLibraryCollection initWithShapeLibrary:categoryIndex:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m";
        v28 = 1024;
        v29 = 33;
        v30 = 2048;
        indexCopy = index;
        v32 = 2048;
        v33 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to initialize CRLShapeLibraryCollection with a category index (%lu) beyond the bounds of the shape library's categories (%lu).", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132C2D8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLShapeLibraryCollection initWithShapeLibrary:categoryIndex:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m"];
      categories3 = [libraryCopy categories];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v14, v15, 33, 0, "Tried to initialize CRLShapeLibraryCollection with a category index (%lu) beyond the bounds of the shape library's categories (%lu).", index, [categories3 count]);
    }

    v8->_categoryIndex = index;
    objc_storeStrong(&v8->_shapeLibrary, library);
  }

  return v8;
}

- (NSString)name
{
  p_category = [(CRLShapeLibraryCollection *)self p_category];
  name = [p_category name];

  return name;
}

- (unint64_t)numberOfShapes
{
  p_category = [(CRLShapeLibraryCollection *)self p_category];
  shapeIDs = [p_category shapeIDs];
  v4 = [shapeIDs count];

  return v4;
}

- (id)shapeAtIndex:(unint64_t)index
{
  if ([(CRLShapeLibraryCollection *)self numberOfShapes]<= index)
  {
    if ([(CRLShapeLibraryCollection *)self numberOfShapes])
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132C300();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v16 = v11;
        *buf = 67110402;
        v18 = v10;
        v19 = 2082;
        v20 = "[CRLShapeLibraryCollection shapeAtIndex:]";
        v21 = 2082;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m";
        v23 = 1024;
        v24 = 56;
        v25 = 2048;
        indexCopy = index;
        v27 = 2048;
        p_categoryIndex = [(CRLShapeLibraryCollection *)self p_categoryIndex];
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in this category: %lu", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132C314();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLShapeLibraryCollection shapeAtIndex:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:56 isFatal:0 description:"Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in this category: %lu", index, [(CRLShapeLibraryCollection *)self p_categoryIndex]];
    }

    v9 = 0;
  }

  else
  {
    p_category = [(CRLShapeLibraryCollection *)self p_category];
    shapeIDs = [p_category shapeIDs];
    v7 = [shapeIDs objectAtIndexedSubscript:index];

    p_shapeLibrary = [(CRLShapeLibraryCollection *)self p_shapeLibrary];
    v9 = [p_shapeLibrary shapeWithID:v7];
  }

  return v9;
}

- (id)shapeWithIdentifier:(id)identifier
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132C33C();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132C350(v3, v4);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132C3FC();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLShapeLibraryCollection shapeWithIdentifier:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryCollection.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:62 isFatal:0 description:"[CRLShapeLibraryCollection shapeWithIdentifier:] should not be called because CRLShapeLibraryCollection has no editable shapes"];

  return 0;
}

- (id)p_category
{
  p_shapeLibrary = [(CRLShapeLibraryCollection *)self p_shapeLibrary];
  categories = [p_shapeLibrary categories];
  v5 = [categories objectAtIndexedSubscript:{-[CRLShapeLibraryCollection p_categoryIndex](self, "p_categoryIndex")}];

  return v5;
}

@end