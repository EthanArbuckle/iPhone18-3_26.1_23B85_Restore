@interface CRLShapeSearchResultsCollection
- (BOOL)p_hasPartialMatches;
- (BOOL)p_updateSearchResultsForSearchTerm:(id)a3;
- (CRLShapeSearchResultsCollection)initWithBasicShapeLibrary:(id)a3 searchTerm:(id)a4;
- (CRLShapeSearchResultsCollection)initWithShapeLibrary:(id)a3 basicShapeLibrary:(id)a4 searchTerm:(id)a5;
- (NSString)name;
- (id)displayNameForShape:(id)a3;
- (id)indexPathOfShape:(id)a3;
- (id)p_comparatorForSortingMatches;
- (id)p_separateExactAndPartialMatchesFromResults:(id)a3 searchTerm:(id)a4 withProvider:(id)a5 shapeToDisplayNameDict:(id)a6;
- (id)p_shapesByMappingSearchResults:(id)a3 withProvider:(id)a4 shapeToDisplayNameDict:(id)a5;
- (id)shapeAtIndex:(unint64_t)a3;
- (id)shapeAtIndexPath:(id)a3;
- (int64_t)p_comparePositionOfShape:(id)a3 withOtherShape:(id)a4;
- (int64_t)p_sequentialShapePosition:(id)a3;
- (unint64_t)exactMatchCount;
- (unint64_t)numberOfShapes;
- (unint64_t)numberOfShapesInSection:(unint64_t)a3;
- (void)resetSearchResults;
- (void)setSearchTerm:(id)a3 forceUpdate:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation CRLShapeSearchResultsCollection

- (CRLShapeSearchResultsCollection)initWithShapeLibrary:(id)a3 basicShapeLibrary:(id)a4 searchTerm:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 locale];
  v13 = [v10 locale];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137DE14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137DE28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137DEB0();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection initWithShapeLibrary:basicShapeLibrary:searchTerm:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:58 isFatal:0 description:"The shape library and basic shape library must be in the same locale."];
  }

  v18 = [(CRLShapeSearchResultsCollection *)self initWithBasicShapeLibrary:v10 searchTerm:v11];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_shapeLibrary, a3);
    [(CRLShapeSearchResultsCollection *)v19 setSearchTerm:v11 completionHandler:0];
  }

  return v19;
}

- (CRLShapeSearchResultsCollection)initWithBasicShapeLibrary:(id)a3 searchTerm:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CRLShapeSearchResultsCollection;
  v9 = [(CRLShapeSearchResultsCollection *)&v19 init];
  if (v9)
  {
    v10 = [v8 copy];
    searchTerm = v9->_searchTerm;
    v9->_searchTerm = v10;

    v12 = [v7 locale];
    locale = v9->_locale;
    v9->_locale = v12;

    objc_storeStrong(&v9->_basicShapeLibrary, a3);
    v14 = +[NSMapTable strongToStrongObjectsMapTable];
    shapeToDisplayNameMap = v9->_shapeToDisplayNameMap;
    v9->_shapeToDisplayNameMap = v14;

    v16 = +[NSArray array];
    allShapes = v9->_allShapes;
    v9->_allShapes = v16;

    [(CRLShapeSearchResultsCollection *)v9 setSearchTerm:v8 completionHandler:0];
  }

  return v9;
}

- (void)setSearchTerm:(id)a3 forceUpdate:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  v9 = [(CRLShapeSearchResultsCollection *)self searchTerm];
  if (v14 | v9)
  {
    v10 = [v14 isEqual:v9];
  }

  else
  {
    v10 = 1;
  }

  if (!v10 || v6)
  {
    v11 = [(CRLShapeSearchResultsCollection *)self p_updateSearchResultsForSearchTerm:v14];
    v12 = [v14 copy];
    searchTerm = self->_searchTerm;
    self->_searchTerm = v12;

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v11 = 0;
  }

  v8[2](v8, v11);
LABEL_10:
}

- (void)resetSearchResults
{
  v3 = [(CRLShapeSearchResultsCollection *)self searchTerm];
  [(CRLShapeSearchResultsCollection *)self p_updateSearchResultsForSearchTerm:v3];
}

- (unint64_t)exactMatchCount
{
  v2 = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)numberOfShapesInSection:(unint64_t)a3
{
  if ([(CRLShapeSearchResultsCollection *)self numberOfSections]<= a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137DED8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137DEEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137DF9C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection numberOfShapesInSection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:131 isFatal:0 description:"Tried to retrieve the number of shapes in a section (%lu) beyond the size of the number of sections in the search results", a3];

    return 0;
  }

  else
  {
    v5 = [(CRLShapeSearchResultsCollection *)self p_allShapes];
    v6 = [v5 count];

    return v6;
  }
}

- (id)shapeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 indexAtPosition:0];
  v6 = [v4 indexAtPosition:1];

  v7 = [(CRLShapeSearchResultsCollection *)self numberOfShapesInSection:v5];
  if (v5 >= [(CRLShapeSearchResultsCollection *)self numberOfSections]|| v6 >= v7)
  {
    if (v7)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137DFC4();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110658;
        v17 = v10;
        v18 = 2082;
        v19 = "[CRLShapeSearchResultsCollection shapeAtIndexPath:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m";
        v22 = 1024;
        v23 = 145;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v7;
        v28 = 2048;
        v29 = v5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in the search results: %lu, in section: %lu", buf, 0x40u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137DFD8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection shapeAtIndexPath:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:145 isFatal:0 description:"Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in the search results: %lu, in section: %lu", v6, v7, v5];
    }

    v9 = 0;
  }

  else
  {
    v8 = [(CRLShapeSearchResultsCollection *)self p_allShapes];
    v9 = [v8 objectAtIndexedSubscript:v6];
  }

  return v9;
}

- (id)indexPathOfShape:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeSearchResultsCollection *)self p_allShapes];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v9[0] = 0;
    v9[1] = v6;
    v7 = [NSIndexPath indexPathWithIndexes:v9 length:2];
  }

  return v7;
}

- (id)displayNameForShape:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeSearchResultsCollection *)self p_shapeToDisplayNameMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSString)name
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search" value:0 table:0];

  return v3;
}

- (unint64_t)numberOfShapes
{
  v3 = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  v4 = [v3 count];
  v5 = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
  v6 = [v5 count];

  return v4 + v6;
}

- (id)shapeAtIndex:(unint64_t)a3
{
  v5 = [(CRLShapeSearchResultsCollection *)self p_allShapes];
  if ([v5 count] <= a3)
  {
    if ([(CRLShapeSearchResultsCollection *)self numberOfShapes])
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137E000();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v13 = v8;
        *buf = 67110402;
        v15 = v7;
        v16 = 2082;
        v17 = "[CRLShapeSearchResultsCollection shapeAtIndex:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m";
        v20 = 1024;
        v21 = 181;
        v22 = 2048;
        v23 = a3;
        v24 = 2048;
        v25 = [(CRLShapeSearchResultsCollection *)self numberOfShapes];
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in the search results: %lu", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137E014();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection shapeAtIndex:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:181 isFatal:0 description:"Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in the search results: %lu", a3, [(CRLShapeSearchResultsCollection *)self numberOfShapes]];
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (BOOL)p_updateSearchResultsForSearchTerm:(id)a3
{
  v4 = a3;
  v5 = +[NSMapTable strongToStrongObjectsMapTable];
  v6 = +[NSArray array];
  v7 = +[NSArray array];
  v8 = +[NSArray array];
  v9 = +[NSArray array];
  v10 = [(CRLShapeSearchResultsCollection *)self p_basicShapeLibrary];
  v11 = [v10 resultsForSearchTerm:v4];
  v12 = [(CRLShapeSearchResultsCollection *)self p_basicShapeLibrary];
  v59 = v4;
  obj = v5;
  v13 = [(CRLShapeSearchResultsCollection *)self p_separateExactAndPartialMatchesFromResults:v11 searchTerm:v4 withProvider:v12 shapeToDisplayNameDict:v5];

  if ([v13 count] != 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E03C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E050();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E0D8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection p_updateSearchResultsForSearchTerm:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:204 isFatal:0 description:"separatedBasicResults must only contain 4 elements."];
  }

  v17 = [v13 objectAtIndexedSubscript:0];
  v18 = [v6 arrayByAddingObjectsFromArray:v17];

  v19 = [v13 objectAtIndexedSubscript:1];
  v20 = [v7 arrayByAddingObjectsFromArray:v19];

  v21 = [v13 objectAtIndexedSubscript:2];
  v22 = [v8 arrayByAddingObjectsFromArray:v21];

  v23 = [v13 objectAtIndexedSubscript:3];
  v24 = [v9 arrayByAddingObjectsFromArray:v23];

  v25 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];

  if (v25)
  {
    v26 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    v27 = [v26 resultsForSearchTerm:v59];
    v28 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    v29 = [(CRLShapeSearchResultsCollection *)self p_separateExactAndPartialMatchesFromResults:v27 searchTerm:v59 withProvider:v28 shapeToDisplayNameDict:obj];

    if ([v29 count] != 4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137E100();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137E128();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137E1B0();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v30);
      }

      v31 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection p_updateSearchResultsForSearchTerm:]"];
      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:212 isFatal:0 description:"separatedShapeLibraryResults must only contain 4 elements."];
    }

    v33 = [v29 objectAtIndexedSubscript:0];
    v34 = [v18 arrayByAddingObjectsFromArray:v33];

    v35 = [v29 objectAtIndexedSubscript:1];
    v36 = [v20 arrayByAddingObjectsFromArray:v35];

    v37 = [v29 objectAtIndexedSubscript:2];
    v38 = [v22 arrayByAddingObjectsFromArray:v37];

    v39 = [v29 objectAtIndexedSubscript:3];
    v40 = [v24 arrayByAddingObjectsFromArray:v39];

    v24 = v40;
    v22 = v38;
    v20 = v36;
    v18 = v34;
  }

  v58 = v18;
  v41 = [v18 arrayByAddingObjectsFromArray:v20];
  v42 = [v22 arrayByAddingObjectsFromArray:v24];
  v43 = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  if (v41 | v43 && ![v41 isEqual:v43])
  {
    HIDWORD(v57) = 1;
  }

  else
  {
    v44 = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
    if (v42 | v44 && ![v42 isEqual:v44])
    {
      HIDWORD(v57) = 1;
    }

    else
    {
      v45 = [(CRLShapeSearchResultsCollection *)self p_shapeToDisplayNameMap];
      if (obj | v45)
      {
        HIDWORD(v57) = [obj isEqual:v45] ^ 1;
      }

      else
      {
        HIDWORD(v57) = 0;
      }
    }
  }

  objc_storeStrong(&self->_shapeToDisplayNameMap, obj);
  v46 = [(CRLShapeSearchResultsCollection *)self p_comparatorForSortingMatches];
  v47 = [v41 sortedArrayUsingComparator:v46];

  v48 = [(CRLShapeSearchResultsCollection *)self p_comparatorForSortingMatches];
  v49 = [v42 sortedArrayUsingComparator:v48];

  objc_storeStrong(&self->_exactMatches, v47);
  objc_storeStrong(&self->_partialMatches, v49);
  v50 = [v47 arrayByAddingObjectsFromArray:v49];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
    allShapes = self->_allShapes;
    self->_allShapes = v52;
  }

  else
  {
    LODWORD(v57) = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E1D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E200();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E288();
    }

    v54 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v54);
    }

    allShapes = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection p_updateSearchResultsForSearchTerm:]", v57];
    v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
    [CRLAssertionHandler handleFailureInFunction:allShapes file:v55 lineNumber:241 isFatal:0 description:"allShapes cannot be nil."];
  }

  return BYTE4(v57);
}

- (id)p_separateExactAndPartialMatchesFromResults:(id)a3 searchTerm:(id)a4 withProvider:(id)a5 shapeToDisplayNameDict:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v27 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v25 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v9 shapeFromSearchResult:v17];
        if (v18)
        {
          if ([v17 priority] && objc_msgSend(v17, "priority") != 1)
          {
            v19 = [v17 matchingKeyword];
          }

          else
          {
            v19 = [v18 name];
          }

          v20 = v19;
          [v10 setObject:v19 forKey:v18];

          LODWORD(v20) = [v17 isExactMatch];
          v21 = [v17 priority];
          if (v20)
          {
            v22 = v27;
            if (v21 != 3)
            {
              if ([v17 priority] == 1)
              {
                v22 = v27;
              }

              else
              {
                v22 = v26;
              }
            }
          }

          else
          {
            v22 = v11;
            if (v21 != 3)
            {
              if ([v17 priority] == 1)
              {
                v22 = v11;
              }

              else
              {
                v22 = v25;
              }
            }
          }

          [v22 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  v32[0] = v27;
  v32[1] = v26;
  v32[2] = v11;
  v32[3] = v25;
  v23 = [NSArray arrayWithObjects:v32 count:4];

  return v23;
}

- (id)p_shapesByMappingSearchResults:(id)a3 withProvider:(id)a4 shapeToDisplayNameDict:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100490A64;
  v12[3] = &unk_101866B70;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = [a3 crl_arrayByMappingObjectsUsingBlock:v12];

  return v10;
}

- (id)p_comparatorForSortingMatches
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100490CA4;
  v4[3] = &unk_101866B98;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (int64_t)p_sequentialShapePosition:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  if (v6)
  {
    v7 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];

    if (!v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v8 = v6;
      if (qword_101AD5A10 != -1)
      {
        sub_10137E2B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137E2C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137E374();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection p_sequentialShapePosition:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:329 isFatal:0 description:"invalid nil value for '%{public}s'", "self.p_shapeLibrary"];

      v6 = v8;
    }

    v12 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    v34 = [v12 categories];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [v6 categoryIDs];
    v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v35)
    {
      v30 = v6;
      v31 = v4;
      v36 = 0;
      v33 = *v43;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v16 = v34;
          v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v39;
            do
            {
              v21 = 0;
              v37 = &v18[v19];
              do
              {
                if (*v39 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = [*(*(&v38 + 1) + 8 * v21) categoryID];
                v23 = [v15 isEqual:v22];

                if (v23)
                {
                  v24 = v19 >= v13;
                }

                else
                {
                  v24 = 1;
                }

                if (!v24)
                {
                  v25 = v15;

                  v13 = v19;
                  v36 = v25;
                  goto LABEL_29;
                }

                ++v19;
                ++v21;
              }

              while (v18 != v21);
              v18 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
              v19 = v37;
            }

            while (v18);
          }

LABEL_29:
        }

        v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v35);
      v26 = (v13 << 16) + 0x10000;
      v6 = v30;
      v4 = v31;
      v27 = v36;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v28 = [v4 positionInCategoryWithID:v27];

  return v28 + v26;
}

- (int64_t)p_comparePositionOfShape:(id)a3 withOtherShape:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    goto LABEL_17;
  }

  if (v8 == objc_opt_class())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v6 categoryIDs];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v7 positionInCategoryWithID:v16];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            v9 = [v6 positionInCategoryWithID:v16];
            v10 = v18;
            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
  }

  else
  {
    v9 = [v6 positionInCategoryWithID:0];
    v10 = [v7 positionInCategoryWithID:0];
  }

  if (v9 == v10)
  {
LABEL_17:
    v9 = [(CRLShapeSearchResultsCollection *)self p_sequentialShapePosition:v6];
    v10 = [(CRLShapeSearchResultsCollection *)self p_sequentialShapePosition:v7];
  }

  if (v9 >= v10)
  {
    if (v9 > v10)
    {
      v19 = 1;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137E39C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137E3C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137E44C();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v20);
      }

      v21 = [NSString stringWithUTF8String:"[CRLShapeSearchResultsCollection p_comparePositionOfShape:withOtherShape:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchResultsCollection.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:389 isFatal:0 description:"Comparison of shape position must return either ascending or descending."];

      v19 = 0;
    }
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (BOOL)p_hasPartialMatches
{
  v2 = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
  v3 = [v2 count] != 0;

  return v3;
}

@end