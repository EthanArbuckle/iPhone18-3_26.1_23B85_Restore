@interface CRLBasicShapeLibrary
+ (id)sharedLibrary;
- (CRLBasicShapeLibrary)initWithLocale:(id)locale;
- (NSString)name;
- (id)basicShapeAtIndex:(unint64_t)index;
- (id)p_baseName;
- (id)resultsForSearchTerm:(id)term;
- (id)shapeFromSearchResult:(id)result;
- (int64_t)p_shapeTypeAtIndex:(unint64_t)index;
- (unint64_t)numberOfBasicShapes;
- (void)p_updateSearchIndex:(id)index;
- (void)setShowConnectionLinesInLibrary:(BOOL)library;
- (void)setShowLinesInLibrary:(BOOL)library;
@end

@implementation CRLBasicShapeLibrary

+ (id)sharedLibrary
{
  if (qword_101A34840 != -1)
  {
    sub_10132E1D0();
  }

  v3 = qword_101A34838;

  return v3;
}

- (CRLBasicShapeLibrary)initWithLocale:(id)locale
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = CRLBasicShapeLibrary;
  v6 = [(CRLBasicShapeLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_showConnectionLinesInLibrary = 257;
    objc_storeStrong(&v6->_locale, locale);
    v8 = [[CRLShapeSearchIndex alloc] initWithLocale:localeCopy];
    searchIndex = v7->_searchIndex;
    v7->_searchIndex = v8;

    [(CRLBasicShapeLibrary *)v7 p_updateSearchIndex:v7->_searchIndex];
  }

  return v7;
}

- (NSString)name
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Basic" value:0 table:0];

  return v3;
}

- (unint64_t)numberOfBasicShapes
{
  if (!self->_showLinesInLibrary)
  {
    return 12;
  }

  if (self->_showConnectionLinesInLibrary)
  {
    return 15;
  }

  return 14;
}

- (id)basicShapeAtIndex:(unint64_t)index
{
  v3 = [[CRLBasicShapeLibraryShape alloc] initWithShapeType:[(CRLBasicShapeLibrary *)self p_shapeTypeAtIndex:?] position:index];

  return v3;
}

- (id)resultsForSearchTerm:(id)term
{
  termCopy = term;
  p_searchIndex = [(CRLBasicShapeLibrary *)self p_searchIndex];
  v6 = [p_searchIndex resultsForSearchTerm:termCopy];

  return v6;
}

- (id)shapeFromSearchResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  v6 = -[CRLBasicShapeLibrary basicShapeAtIndex:](self, "basicShapeAtIndex:", [identifier unsignedIntegerValue]);

  if (!v6)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132E1E4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132E1F8(resultCopy, v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132E2B4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBasicShapeLibrary shapeFromSearchResult:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:83 isFatal:0 description:"Basic shape from result is nil: %@", resultCopy];
  }

  return v6;
}

- (id)p_baseName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Basic" value:0 table:0 localization:@"en"];

  v4 = v3;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132E2DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132E2F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132E3A0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLBasicShapeLibrary p_baseName]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:95 isFatal:0 description:"invalid nil value for '%{public}s'", "englishString"];

    v4 = @"Basic";
  }

  v8 = v4;

  return v4;
}

- (int64_t)p_shapeTypeAtIndex:(unint64_t)index
{
  if (index >= 0x15)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132E3C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132E3DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132E498();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLBasicShapeLibrary p_shapeTypeAtIndex:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:101 isFatal:0 description:"Index for shape type is %lu, but must be less than kCRLShapeTypeCustom (%ld)", index, 21];
  }

  indexCopy = index;
  if (index <= 2)
  {
    indexCopy = qword_101462DC0[index];
  }

  if (!self->_showLinesInLibrary)
  {
    return index + 3;
  }

  if (index < 2 || self->_showConnectionLinesInLibrary)
  {
    return indexCopy;
  }

  return index + 1;
}

- (void)setShowConnectionLinesInLibrary:(BOOL)library
{
  self->_showConnectionLinesInLibrary = library;
  v4 = [[CRLShapeSearchIndex alloc] initWithLocale:self->_locale];
  searchIndex = self->_searchIndex;
  self->_searchIndex = v4;

  v6 = self->_searchIndex;

  [(CRLBasicShapeLibrary *)self p_updateSearchIndex:v6];
}

- (void)setShowLinesInLibrary:(BOOL)library
{
  self->_showLinesInLibrary = library;
  v4 = [[CRLShapeSearchIndex alloc] initWithLocale:self->_locale];
  searchIndex = self->_searchIndex;
  self->_searchIndex = v4;

  v6 = self->_searchIndex;

  [(CRLBasicShapeLibrary *)self p_updateSearchIndex:v6];
}

- (void)p_updateSearchIndex:(id)index
{
  indexCopy = index;
  numberOfBasicShapes = [(CRLBasicShapeLibrary *)self numberOfBasicShapes];
  selfCopy = self;
  locale = [(CRLBasicShapeLibrary *)self locale];
  v31 = [CRLShapeLibraryHelper shouldAddBaseShapeNameAndKeywordsForLocale:locale];

  v32 = numberOfBasicShapes;
  if (numberOfBasicShapes)
  {
    v7 = 0;
    do
    {
      v8 = [(CRLBasicShapeLibrary *)selfCopy basicShapeAtIndex:v7];
      v9 = [NSNumber numberWithUnsignedInteger:v7];
      name = [v8 name];
      [indexCopy addSearchResultWithIdentifier:v9 forKeyword:name priority:3];

      v11 = [NSNumber numberWithUnsignedInteger:v7];
      name2 = [(CRLBasicShapeLibrary *)selfCopy name];
      [indexCopy addSearchResultWithIdentifier:v11 forKeyword:name2 priority:2];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      keywords = [v8 keywords];
      v14 = [keywords countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v39;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(keywords);
            }

            v18 = *(*(&v38 + 1) + 8 * i);
            v19 = [NSNumber numberWithUnsignedInteger:v7];
            [indexCopy addSearchResultWithIdentifier:v19 forKeyword:v18 priority:2];
          }

          v15 = [keywords countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v15);
      }

      if (v31)
      {
        v20 = [NSNumber numberWithUnsignedInteger:v7];
        baseName = [v8 baseName];
        [indexCopy addSearchResultWithIdentifier:v20 forKeyword:baseName priority:1];

        v22 = [NSNumber numberWithUnsignedInteger:v7];
        p_baseName = [(CRLBasicShapeLibrary *)selfCopy p_baseName];
        [indexCopy addSearchResultWithIdentifier:v22 forKeyword:p_baseName priority:0];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        baseKeywords = [v8 baseKeywords];
        v25 = [baseKeywords countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v35;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v35 != v27)
              {
                objc_enumerationMutation(baseKeywords);
              }

              v29 = *(*(&v34 + 1) + 8 * j);
              v30 = [NSNumber numberWithUnsignedInteger:v7];
              [indexCopy addSearchResultWithIdentifier:v30 forKeyword:v29 priority:0];
            }

            v26 = [baseKeywords countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v26);
        }
      }

      ++v7;
    }

    while (v7 != v32);
  }
}

@end