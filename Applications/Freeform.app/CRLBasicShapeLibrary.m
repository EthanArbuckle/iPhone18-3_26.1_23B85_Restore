@interface CRLBasicShapeLibrary
+ (id)sharedLibrary;
- (CRLBasicShapeLibrary)initWithLocale:(id)a3;
- (NSString)name;
- (id)basicShapeAtIndex:(unint64_t)a3;
- (id)p_baseName;
- (id)resultsForSearchTerm:(id)a3;
- (id)shapeFromSearchResult:(id)a3;
- (int64_t)p_shapeTypeAtIndex:(unint64_t)a3;
- (unint64_t)numberOfBasicShapes;
- (void)p_updateSearchIndex:(id)a3;
- (void)setShowConnectionLinesInLibrary:(BOOL)a3;
- (void)setShowLinesInLibrary:(BOOL)a3;
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

- (CRLBasicShapeLibrary)initWithLocale:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CRLBasicShapeLibrary;
  v6 = [(CRLBasicShapeLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_showConnectionLinesInLibrary = 257;
    objc_storeStrong(&v6->_locale, a3);
    v8 = [[CRLShapeSearchIndex alloc] initWithLocale:v5];
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

- (id)basicShapeAtIndex:(unint64_t)a3
{
  v3 = [[CRLBasicShapeLibraryShape alloc] initWithShapeType:[(CRLBasicShapeLibrary *)self p_shapeTypeAtIndex:?] position:a3];

  return v3;
}

- (id)resultsForSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [(CRLBasicShapeLibrary *)self p_searchIndex];
  v6 = [v5 resultsForSearchTerm:v4];

  return v6;
}

- (id)shapeFromSearchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = -[CRLBasicShapeLibrary basicShapeAtIndex:](self, "basicShapeAtIndex:", [v5 unsignedIntegerValue]);

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
      sub_10132E1F8(v4, v7, v8);
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
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:83 isFatal:0 description:"Basic shape from result is nil: %@", v4];
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

- (int64_t)p_shapeTypeAtIndex:(unint64_t)a3
{
  if (a3 >= 0x15)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:101 isFatal:0 description:"Index for shape type is %lu, but must be less than kCRLShapeTypeCustom (%ld)", a3, 21];
  }

  v8 = a3;
  if (a3 <= 2)
  {
    v8 = qword_101462DC0[a3];
  }

  if (!self->_showLinesInLibrary)
  {
    return a3 + 3;
  }

  if (a3 < 2 || self->_showConnectionLinesInLibrary)
  {
    return v8;
  }

  return a3 + 1;
}

- (void)setShowConnectionLinesInLibrary:(BOOL)a3
{
  self->_showConnectionLinesInLibrary = a3;
  v4 = [[CRLShapeSearchIndex alloc] initWithLocale:self->_locale];
  searchIndex = self->_searchIndex;
  self->_searchIndex = v4;

  v6 = self->_searchIndex;

  [(CRLBasicShapeLibrary *)self p_updateSearchIndex:v6];
}

- (void)setShowLinesInLibrary:(BOOL)a3
{
  self->_showLinesInLibrary = a3;
  v4 = [[CRLShapeSearchIndex alloc] initWithLocale:self->_locale];
  searchIndex = self->_searchIndex;
  self->_searchIndex = v4;

  v6 = self->_searchIndex;

  [(CRLBasicShapeLibrary *)self p_updateSearchIndex:v6];
}

- (void)p_updateSearchIndex:(id)a3
{
  v4 = a3;
  v5 = [(CRLBasicShapeLibrary *)self numberOfBasicShapes];
  v33 = self;
  v6 = [(CRLBasicShapeLibrary *)self locale];
  v31 = [CRLShapeLibraryHelper shouldAddBaseShapeNameAndKeywordsForLocale:v6];

  v32 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [(CRLBasicShapeLibrary *)v33 basicShapeAtIndex:v7];
      v9 = [NSNumber numberWithUnsignedInteger:v7];
      v10 = [v8 name];
      [v4 addSearchResultWithIdentifier:v9 forKeyword:v10 priority:3];

      v11 = [NSNumber numberWithUnsignedInteger:v7];
      v12 = [(CRLBasicShapeLibrary *)v33 name];
      [v4 addSearchResultWithIdentifier:v11 forKeyword:v12 priority:2];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = [v8 keywords];
      v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v38 + 1) + 8 * i);
            v19 = [NSNumber numberWithUnsignedInteger:v7];
            [v4 addSearchResultWithIdentifier:v19 forKeyword:v18 priority:2];
          }

          v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v15);
      }

      if (v31)
      {
        v20 = [NSNumber numberWithUnsignedInteger:v7];
        v21 = [v8 baseName];
        [v4 addSearchResultWithIdentifier:v20 forKeyword:v21 priority:1];

        v22 = [NSNumber numberWithUnsignedInteger:v7];
        v23 = [(CRLBasicShapeLibrary *)v33 p_baseName];
        [v4 addSearchResultWithIdentifier:v22 forKeyword:v23 priority:0];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v24 = [v8 baseKeywords];
        v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v34 + 1) + 8 * j);
              v30 = [NSNumber numberWithUnsignedInteger:v7];
              [v4 addSearchResultWithIdentifier:v30 forKeyword:v29 priority:0];
            }

            v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
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