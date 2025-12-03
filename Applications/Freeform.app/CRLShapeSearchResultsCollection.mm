@interface CRLShapeSearchResultsCollection
- (BOOL)p_hasPartialMatches;
- (BOOL)p_updateSearchResultsForSearchTerm:(id)term;
- (CRLShapeSearchResultsCollection)initWithBasicShapeLibrary:(id)library searchTerm:(id)term;
- (CRLShapeSearchResultsCollection)initWithShapeLibrary:(id)library basicShapeLibrary:(id)shapeLibrary searchTerm:(id)term;
- (NSString)name;
- (id)displayNameForShape:(id)shape;
- (id)indexPathOfShape:(id)shape;
- (id)p_comparatorForSortingMatches;
- (id)p_separateExactAndPartialMatchesFromResults:(id)results searchTerm:(id)term withProvider:(id)provider shapeToDisplayNameDict:(id)dict;
- (id)p_shapesByMappingSearchResults:(id)results withProvider:(id)provider shapeToDisplayNameDict:(id)dict;
- (id)shapeAtIndex:(unint64_t)index;
- (id)shapeAtIndexPath:(id)path;
- (int64_t)p_comparePositionOfShape:(id)shape withOtherShape:(id)otherShape;
- (int64_t)p_sequentialShapePosition:(id)position;
- (unint64_t)exactMatchCount;
- (unint64_t)numberOfShapes;
- (unint64_t)numberOfShapesInSection:(unint64_t)section;
- (void)resetSearchResults;
- (void)setSearchTerm:(id)term forceUpdate:(BOOL)update completionHandler:(id)handler;
@end

@implementation CRLShapeSearchResultsCollection

- (CRLShapeSearchResultsCollection)initWithShapeLibrary:(id)library basicShapeLibrary:(id)shapeLibrary searchTerm:(id)term
{
  libraryCopy = library;
  shapeLibraryCopy = shapeLibrary;
  termCopy = term;
  locale = [libraryCopy locale];
  locale2 = [shapeLibraryCopy locale];
  v14 = [locale isEqual:locale2];

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

  v18 = [(CRLShapeSearchResultsCollection *)self initWithBasicShapeLibrary:shapeLibraryCopy searchTerm:termCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_shapeLibrary, library);
    [(CRLShapeSearchResultsCollection *)v19 setSearchTerm:termCopy completionHandler:0];
  }

  return v19;
}

- (CRLShapeSearchResultsCollection)initWithBasicShapeLibrary:(id)library searchTerm:(id)term
{
  libraryCopy = library;
  termCopy = term;
  v19.receiver = self;
  v19.super_class = CRLShapeSearchResultsCollection;
  v9 = [(CRLShapeSearchResultsCollection *)&v19 init];
  if (v9)
  {
    v10 = [termCopy copy];
    searchTerm = v9->_searchTerm;
    v9->_searchTerm = v10;

    locale = [libraryCopy locale];
    locale = v9->_locale;
    v9->_locale = locale;

    objc_storeStrong(&v9->_basicShapeLibrary, library);
    v14 = +[NSMapTable strongToStrongObjectsMapTable];
    shapeToDisplayNameMap = v9->_shapeToDisplayNameMap;
    v9->_shapeToDisplayNameMap = v14;

    v16 = +[NSArray array];
    allShapes = v9->_allShapes;
    v9->_allShapes = v16;

    [(CRLShapeSearchResultsCollection *)v9 setSearchTerm:termCopy completionHandler:0];
  }

  return v9;
}

- (void)setSearchTerm:(id)term forceUpdate:(BOOL)update completionHandler:(id)handler
{
  updateCopy = update;
  termCopy = term;
  handlerCopy = handler;
  searchTerm = [(CRLShapeSearchResultsCollection *)self searchTerm];
  if (termCopy | searchTerm)
  {
    v10 = [termCopy isEqual:searchTerm];
  }

  else
  {
    v10 = 1;
  }

  if (!v10 || updateCopy)
  {
    v11 = [(CRLShapeSearchResultsCollection *)self p_updateSearchResultsForSearchTerm:termCopy];
    v12 = [termCopy copy];
    searchTerm = self->_searchTerm;
    self->_searchTerm = v12;

    if (!handlerCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    v11 = 0;
  }

  handlerCopy[2](handlerCopy, v11);
LABEL_10:
}

- (void)resetSearchResults
{
  searchTerm = [(CRLShapeSearchResultsCollection *)self searchTerm];
  [(CRLShapeSearchResultsCollection *)self p_updateSearchResultsForSearchTerm:searchTerm];
}

- (unint64_t)exactMatchCount
{
  p_exactMatches = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  v3 = [p_exactMatches count];

  return v3;
}

- (unint64_t)numberOfShapesInSection:(unint64_t)section
{
  if ([(CRLShapeSearchResultsCollection *)self numberOfSections]<= section)
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
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:131 isFatal:0 description:"Tried to retrieve the number of shapes in a section (%lu) beyond the size of the number of sections in the search results", section];

    return 0;
  }

  else
  {
    p_allShapes = [(CRLShapeSearchResultsCollection *)self p_allShapes];
    v6 = [p_allShapes count];

    return v6;
  }
}

- (id)shapeAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy indexAtPosition:0];
  v6 = [pathCopy indexAtPosition:1];

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
    p_allShapes = [(CRLShapeSearchResultsCollection *)self p_allShapes];
    v9 = [p_allShapes objectAtIndexedSubscript:v6];
  }

  return v9;
}

- (id)indexPathOfShape:(id)shape
{
  shapeCopy = shape;
  p_allShapes = [(CRLShapeSearchResultsCollection *)self p_allShapes];
  v6 = [p_allShapes indexOfObject:shapeCopy];

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

- (id)displayNameForShape:(id)shape
{
  shapeCopy = shape;
  p_shapeToDisplayNameMap = [(CRLShapeSearchResultsCollection *)self p_shapeToDisplayNameMap];
  v6 = [p_shapeToDisplayNameMap objectForKeyedSubscript:shapeCopy];

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
  p_exactMatches = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  v4 = [p_exactMatches count];
  p_partialMatches = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
  v6 = [p_partialMatches count];

  return v4 + v6;
}

- (id)shapeAtIndex:(unint64_t)index
{
  p_allShapes = [(CRLShapeSearchResultsCollection *)self p_allShapes];
  if ([p_allShapes count] <= index)
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
        indexCopy = index;
        v24 = 2048;
        numberOfShapes = [(CRLShapeSearchResultsCollection *)self numberOfShapes];
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
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:181 isFatal:0 description:"Tried to retrieve a shape at an index (%lu) beyond the size of the number of shapes in the search results: %lu", index, [(CRLShapeSearchResultsCollection *)self numberOfShapes]];
    }

    v6 = 0;
  }

  else
  {
    v6 = [p_allShapes objectAtIndexedSubscript:index];
  }

  return v6;
}

- (BOOL)p_updateSearchResultsForSearchTerm:(id)term
{
  termCopy = term;
  v5 = +[NSMapTable strongToStrongObjectsMapTable];
  v6 = +[NSArray array];
  v7 = +[NSArray array];
  v8 = +[NSArray array];
  v9 = +[NSArray array];
  p_basicShapeLibrary = [(CRLShapeSearchResultsCollection *)self p_basicShapeLibrary];
  v11 = [p_basicShapeLibrary resultsForSearchTerm:termCopy];
  p_basicShapeLibrary2 = [(CRLShapeSearchResultsCollection *)self p_basicShapeLibrary];
  v59 = termCopy;
  obj = v5;
  v13 = [(CRLShapeSearchResultsCollection *)self p_separateExactAndPartialMatchesFromResults:v11 searchTerm:termCopy withProvider:p_basicShapeLibrary2 shapeToDisplayNameDict:v5];

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

  p_shapeLibrary = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];

  if (p_shapeLibrary)
  {
    p_shapeLibrary2 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    v27 = [p_shapeLibrary2 resultsForSearchTerm:v59];
    p_shapeLibrary3 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    v29 = [(CRLShapeSearchResultsCollection *)self p_separateExactAndPartialMatchesFromResults:v27 searchTerm:v59 withProvider:p_shapeLibrary3 shapeToDisplayNameDict:obj];

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
  p_exactMatches = [(CRLShapeSearchResultsCollection *)self p_exactMatches];
  if (v41 | p_exactMatches && ![v41 isEqual:p_exactMatches])
  {
    HIDWORD(v57) = 1;
  }

  else
  {
    p_partialMatches = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
    if (v42 | p_partialMatches && ![v42 isEqual:p_partialMatches])
    {
      HIDWORD(v57) = 1;
    }

    else
    {
      p_shapeToDisplayNameMap = [(CRLShapeSearchResultsCollection *)self p_shapeToDisplayNameMap];
      if (obj | p_shapeToDisplayNameMap)
      {
        HIDWORD(v57) = [obj isEqual:p_shapeToDisplayNameMap] ^ 1;
      }

      else
      {
        HIDWORD(v57) = 0;
      }
    }
  }

  objc_storeStrong(&self->_shapeToDisplayNameMap, obj);
  p_comparatorForSortingMatches = [(CRLShapeSearchResultsCollection *)self p_comparatorForSortingMatches];
  v47 = [v41 sortedArrayUsingComparator:p_comparatorForSortingMatches];

  p_comparatorForSortingMatches2 = [(CRLShapeSearchResultsCollection *)self p_comparatorForSortingMatches];
  v49 = [v42 sortedArrayUsingComparator:p_comparatorForSortingMatches2];

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

- (id)p_separateExactAndPartialMatchesFromResults:(id)results searchTerm:(id)term withProvider:(id)provider shapeToDisplayNameDict:(id)dict
{
  resultsCopy = results;
  providerCopy = provider;
  dictCopy = dict;
  v27 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v25 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = resultsCopy;
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
        v18 = [providerCopy shapeFromSearchResult:v17];
        if (v18)
        {
          if ([v17 priority] && objc_msgSend(v17, "priority") != 1)
          {
            matchingKeyword = [v17 matchingKeyword];
          }

          else
          {
            matchingKeyword = [v18 name];
          }

          v20 = matchingKeyword;
          [dictCopy setObject:matchingKeyword forKey:v18];

          LODWORD(v20) = [v17 isExactMatch];
          priority = [v17 priority];
          if (v20)
          {
            v22 = v27;
            if (priority != 3)
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
            if (priority != 3)
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

- (id)p_shapesByMappingSearchResults:(id)results withProvider:(id)provider shapeToDisplayNameDict:(id)dict
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100490A64;
  v12[3] = &unk_101866B70;
  providerCopy = provider;
  selfCopy = self;
  dictCopy = dict;
  v8 = dictCopy;
  v9 = providerCopy;
  v10 = [results crl_arrayByMappingObjectsUsingBlock:v12];

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

- (int64_t)p_sequentialShapePosition:(id)position
{
  positionCopy = position;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, positionCopy);
  if (v6)
  {
    p_shapeLibrary = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];

    if (!p_shapeLibrary)
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

    p_shapeLibrary2 = [(CRLShapeSearchResultsCollection *)self p_shapeLibrary];
    categories = [p_shapeLibrary2 categories];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [v6 categoryIDs];
    v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v35)
    {
      v30 = v6;
      v31 = positionCopy;
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
          v16 = categories;
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

                categoryID = [*(*(&v38 + 1) + 8 * v21) categoryID];
                v23 = [v15 isEqual:categoryID];

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
      positionCopy = v31;
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

  v28 = [positionCopy positionInCategoryWithID:v27];

  return v28 + v26;
}

- (int64_t)p_comparePositionOfShape:(id)shape withOtherShape:(id)otherShape
{
  shapeCopy = shape;
  otherShapeCopy = otherShape;
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
    categoryIDs = [shapeCopy categoryIDs];
    v12 = [categoryIDs countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(categoryIDs);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [otherShapeCopy positionInCategoryWithID:v16];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            v9 = [shapeCopy positionInCategoryWithID:v16];
            v10 = v18;
            goto LABEL_15;
          }
        }

        v13 = [categoryIDs countByEnumeratingWithState:&v24 objects:v28 count:16];
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
    v9 = [shapeCopy positionInCategoryWithID:0];
    v10 = [otherShapeCopy positionInCategoryWithID:0];
  }

  if (v9 == v10)
  {
LABEL_17:
    v9 = [(CRLShapeSearchResultsCollection *)self p_sequentialShapePosition:shapeCopy];
    v10 = [(CRLShapeSearchResultsCollection *)self p_sequentialShapePosition:otherShapeCopy];
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
  p_partialMatches = [(CRLShapeSearchResultsCollection *)self p_partialMatches];
  v3 = [p_partialMatches count] != 0;

  return v3;
}

@end