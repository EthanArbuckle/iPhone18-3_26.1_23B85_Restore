@interface CRLShapeLibrary
+ (CRLShapeLibrary)sharedLibrary;
+ (void)loadDataIfNeededWithCompletion:(id)a3;
- (CRLShapeLibrary)initWithShapeLibraryURL:(id)a3 categorySortURL:(id)a4 locale:(id)a5;
- (CRLShapeSearchIndex)p_searchIndex;
- (NSArray)categories;
- (id)p_keywordDelimiterFromLibrary:(id)a3;
- (id)p_libraryByRemovingDenyListedShapes:(id)a3;
- (id)p_parseLibraryFromJSON;
- (id)p_shapeDictionariesByID;
- (id)p_sortedCategoriesFromLibrary:(id)a3;
- (id)resultsForSearchTerm:(id)a3;
- (id)shapeFromSearchResult:(id)a3;
- (id)shapeWithID:(id)a3;
- (id)shapeWithLocalizationKey:(id)a3;
- (int64_t)p_setupLibrary;
- (void)p_cacheDataAfterParsingWithSearchIndex:(id)a3;
- (void)p_createSearchIndexWithCompletionHandler:(id)a3;
- (void)p_loadCategoriesAndSearchIndexIfNeeded;
- (void)p_loadDataWithCompletion:(id)a3;
- (void)p_setupLibraryIfNeeded;
- (void)setDataLoadStatus:(int64_t)a3;
- (void)setP_searchIndexStatus:(int64_t)a3;
@end

@implementation CRLShapeLibrary

+ (CRLShapeLibrary)sharedLibrary
{
  if (qword_101A345F8 != -1)
  {
    sub_1000135BC();
  }

  v3 = qword_101A345F0;

  return v3;
}

- (void)p_setupLibraryIfNeeded
{
  dataLoadStatus = self->_dataLoadStatus;
  if (!dataLoadStatus)
  {
    self->_dataLoadStatus = 1;
    dataLoadStatus = [(CRLShapeLibrary *)self p_setupLibrary];
  }

  self->_dataLoadStatus = dataLoadStatus;
}

- (int64_t)p_setupLibrary
{
  v3 = [(CRLShapeLibrary *)self p_parseLibraryFromJSON];
  library = self->_library;
  self->_library = v3;

  if (!self->_library)
  {
    return 3;
  }

  v5 = [(CRLShapeLibrary *)self p_sortedCategoriesFromLibrary:?];
  categories = self->_categories;
  self->_categories = v5;

  if ([(NSArray *)self->_categories count])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)p_parseLibraryFromJSON
{
  v3 = [(CRLShapeLibrary *)self p_libraryURL];
  v4 = [NSData dataWithContentsOfURL:v3];

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316A64();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316A78(v10);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316B4C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v11);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_parseLibraryFromJSON]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    v12 = [(CRLShapeLibrary *)self p_libraryURL];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v5 lineNumber:306 isFatal:0 description:"No data found at search library URL: %@", v12];

    goto LABEL_24;
  }

  v15 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v15];
  v6 = v15;
  if (v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013168C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013168E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131698C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_parseLibraryFromJSON]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:311 isFatal:0 description:"Error: Could not parse %@ with error: %@", @"shape_library", v6];

    if (qword_101AD5A08 != -1)
    {
      sub_1013169B4();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013169DC();
    }

LABEL_24:
    v13 = 0;
    goto LABEL_26;
  }

  v13 = [(CRLShapeLibrary *)self p_libraryByRemovingDenyListedShapes:v5];
LABEL_26:

  return v13;
}

- (id)p_shapeDictionariesByID
{
  [(CRLShapeLibrary *)self p_setupLibraryIfNeeded];
  if (self->_dataLoadStatus == 3)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CRLShapeLibrary *)self p_library];
    v3 = [(CRLShapeLibrary *)self p_shapeDictionariesByIDFromLibrary:v4];
  }

  return v3;
}

+ (void)loadDataIfNeededWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[CRLShapeLibrary sharedLibrary];
  [v4 p_loadDataWithCompletion:v3];
}

- (CRLShapeLibrary)initWithShapeLibraryURL:(id)a3 categorySortURL:(id)a4 locale:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = CRLShapeLibrary;
  v12 = [(CRLShapeLibrary *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_libraryURL, a3);
    if (!v13->_libraryURL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013163AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013163D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101316474();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLShapeLibrary initWithShapeLibraryURL:categorySortURL:locale:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:86 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "_libraryURL != nil"];
    }

    v17 = [NSDictionary dictionaryWithContentsOfURL:v10];
    v18 = [v17 objectForKeyedSubscript:@"CRLShapeLibraryCategorySort"];
    categorySort = v13->_categorySort;
    v13->_categorySort = v18;

    if (!v13->_categorySort)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131649C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013164C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101316564();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v20);
      }

      v21 = [NSString stringWithUTF8String:"[CRLShapeLibrary initWithShapeLibraryURL:categorySortURL:locale:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:89 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "_categorySort != nil"];
    }

    v23 = +[CRLRemoteDefaults sharedDefaults];
    v24 = [v23 arrayForKey:@"CRLShapeLibraryRemovedShapeIDs"];

    v25 = [NSSet setWithArray:v24];
    shapeIDsToRemove = v13->_shapeIDsToRemove;
    v13->_shapeIDsToRemove = v25;

    v27 = objc_alloc_init(NSCache);
    shapeCache = v13->_shapeCache;
    v13->_shapeCache = v27;

    objc_storeStrong(&v13->_locale, a5);
  }

  return v13;
}

- (NSArray)categories
{
  [(CRLShapeLibrary *)self p_loadCategoriesAndSearchIndexIfNeeded];
  categories = self->_categories;

  return categories;
}

- (void)setDataLoadStatus:(int64_t)a3
{
  if (self->_dataLoadStatus != a3)
  {
    self->_dataLoadStatus = a3;
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v7 = @"CRLShapeLibraryLoadingDidFinishNotificationStatusKey";
      v4 = [NSNumber numberWithInteger:?];
      v8 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

      v6 = +[NSNotificationCenter defaultCenter];
      [v6 postNotificationName:@"CRLShapeLibraryLoadingDidFinishNotification" object:self userInfo:v5];
    }
  }
}

- (id)shapeWithID:(id)a3
{
  v4 = a3;
  [(CRLShapeLibrary *)self p_setupLibraryIfNeeded];
  if (self->_dataLoadStatus == 3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 stringValue];
    v7 = [(CRLShapeLibrary *)self p_shapeCache];
    v5 = [v7 objectForKey:v6];

    if (!v5)
    {
      v8 = [(CRLShapeLibrary *)self p_shapeDictionariesByID];
      v9 = [v8 objectForKeyedSubscript:v6];
      if (v9)
      {
        v10 = [CRLShapeLibraryShape alloc];
        v11 = [(CRLShapeLibrary *)self p_library];
        v12 = [(CRLShapeLibrary *)self p_keywordDelimiterFromLibrary:v11];
        v5 = [(CRLShapeLibraryShape *)v10 initWithDictionary:v9 keywordDelimiter:v12];

        v13 = [(CRLShapeLibrary *)self p_shapeCache];
        [v13 setObject:v5 forKey:v6];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)shapeWithLocalizationKey:(id)a3
{
  v4 = a3;
  [(CRLShapeLibrary *)self p_setupLibraryIfNeeded];
  if (self->_dataLoadStatus == 3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CRLShapeLibrary *)self p_library];
    v7 = [(CRLShapeLibrary *)self p_shapeIDByLocalizationKeyFromLibrary:v6];

    v8 = [v7 objectForKeyedSubscript:v4];
    if (v8)
    {
      v5 = [(CRLShapeLibrary *)self shapeWithID:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)resultsForSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeLibrary *)self p_searchIndex];
  v6 = [v5 resultsForSearchTerm:v4];

  return v6;
}

- (id)shapeFromSearchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(CRLShapeLibrary *)self shapeWithID:v5];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131658C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013165A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316634();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLShapeLibrary shapeFromSearchResult:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:163 isFatal:0 description:"Shape library shape from result is nil: %@", v4];
  }

  return v6;
}

- (void)setP_searchIndexStatus:(int64_t)a3
{
  if (self->_searchIndexStatus != a3)
  {
    self->_searchIndexStatus = a3;
    if (a3 == 2)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:@"CRLShapeLibraryIndexingDidFinishNotification" object:self];
    }
  }
}

- (void)p_loadCategoriesAndSearchIndexIfNeeded
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131665C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316670();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316700();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_loadCategoriesAndSearchIndexIfNeeded]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:203 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLShapeLibrary *)self p_setupLibraryIfNeeded];
  if (self->_dataLoadStatus == 2 && !self->_searchIndexStatus)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001131C4;
    v6[3] = &unk_10183D580;
    v6[4] = self;
    [(CRLShapeLibrary *)self p_createSearchIndexWithCompletionHandler:v6];
  }
}

- (void)p_loadDataWithCompletion:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316728();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131673C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013167CC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_loadDataWithCompletion:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:214 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLShapeLibrary *)self p_setupLibraryIfNeeded];
  v4[2](v4, self->_dataLoadStatus);

  if (self->_dataLoadStatus == 2 && !self->_searchIndexStatus)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
    v9 = dispatch_queue_create("com.apple.freeform.CRLShapeLibrary", v8);
    [(CRLShapeLibrary *)self setP_searchIndexStatus:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011346C;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)p_cacheDataAfterParsingWithSearchIndex:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013167F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316808();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316898();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_cacheDataAfterParsingWithSearchIndex:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:236 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  searchIndex = self->_searchIndex;
  self->_searchIndex = v4;

  [(CRLShapeLibrary *)self setP_searchIndexStatus:2];
}

- (void)p_createSearchIndexWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [CRLShapeSearchIndex alloc];
  v6 = [(CRLShapeLibrary *)self locale];
  v7 = [(CRLShapeSearchIndex *)v5 initWithLocale:v6];

  v8 = [(CRLShapeLibrary *)self p_shapeDictionariesByID];
  v9 = [(CRLShapeLibrary *)self p_library];
  v10 = [(CRLShapeLibrary *)self p_keywordDelimiterFromLibrary:v9];

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v12 = [(CRLShapeLibrary *)self locale];
  v13 = [CRLShapeLibraryHelper shouldAddBaseShapeNameAndKeywordsForLocale:v12];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10011391C;
  v19 = &unk_10183D668;
  v20 = self;
  v21 = v10;
  v23 = v13;
  v22 = v11;
  v14 = v11;
  v15 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v16];
  [(CRLShapeSearchIndex *)v7 addSearchResults:v14, v16, v17, v18, v19, v20];
  v4[2](v4, v7);
}

- (id)p_sortedCategoriesFromLibrary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"categories"];
  v5 = [(CRLShapeLibrary *)self p_categorySort];
  v6 = [v5 count];
  if (v6 != [v4 count])
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    if (qword_101AD5A10 != -1)
    {
      sub_101316B74();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v48 = v9;
      *buf = 67110402;
      v66 = v7;
      v67 = 2082;
      v68 = "[CRLShapeLibrary p_sortedCategoriesFromLibrary:]";
      v69 = 2082;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m";
      v71 = 1024;
      v72 = 323;
      v73 = 2048;
      v74 = [v5 count];
      v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      v75 = 2048;
      v76 = [v4 count];
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The number of categories in the plist (%lu) must equal the number of categories in the shape librarian data (%lu)", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316B88();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v10);
    }

    v11 = [v8[101] stringWithUTF8String:"-[CRLShapeLibrary p_sortedCategoriesFromLibrary:]"];
    v12 = [v8[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 323, 0, "The number of categories in the plist (%lu) must equal the number of categories in the shape librarian data (%lu)", [v5 count], objc_msgSend(v4, "count"));
  }

  v49 = v5;
  v51 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v52 = +[NSMutableSet set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v13 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v59 + 1) + 8 * i);
        v18 = +[NSMutableIndexSet indexSet];
        v19 = [v17 objectForKeyedSubscript:@"shapeIDs"];
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100114698;
        v57[3] = &unk_10183D770;
        v57[4] = self;
        v20 = v18;
        v58 = v20;
        [v19 enumerateObjectsUsingBlock:v57];
        v21 = [v20 count];
        if (v21 == [v19 count])
        {
          v22 = [v17 objectForKeyedSubscript:@"localizationKey"];
          [v52 addObject:v22];
        }

        else
        {
          v23 = self;
          if ([v20 count])
          {
            v24 = [v19 mutableCopy];
            [v24 removeObjectsAtIndexes:v20];
            v25 = [v17 mutableCopy];
            [v25 setObject:v24 forKeyedSubscript:@"shapeIDs"];

            v17 = v25;
          }

          v22 = [(CRLShapeLibraryObject *)[CRLShapeLibraryCategory alloc] initWithDictionary:v17];
          v26 = [(CRLShapeLibraryCategory *)v22 localizationKey];
          [v51 setObject:v22 forKeyedSubscript:v26];

          self = v23;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v14);
  }

  v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v49;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v63 count:16];
  v30 = v51;
  if (v29)
  {
    v31 = v29;
    v32 = *v54;
    do
    {
      v33 = 0;
      do
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v53 + 1) + 8 * v33);
        v35 = [v30 objectForKeyedSubscript:v34];
        if (v35)
        {
          [v27 addObject:v35];
        }

        else if (([v52 containsObject:v34] & 1) == 0)
        {
          v36 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101316BB0();
          }

          v37 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v66 = v36;
            v67 = 2082;
            v68 = "[CRLShapeLibrary p_sortedCategoriesFromLibrary:]";
            v69 = 2082;
            v70 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m";
            v71 = 1024;
            v72 = 366;
            v73 = 2112;
            v74 = v34;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Found a category localization key in the plist that doesn't exist in the shape librarian data: %@", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101316BD8();
          }

          v38 = v28;
          v39 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v42 = v39;
            v43 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v66 = v36;
            v67 = 2114;
            v68 = v43;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v40 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_sortedCategoriesFromLibrary:]"];
          v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
          [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:366 isFatal:0 description:"Found a category localization key in the plist that doesn't exist in the shape librarian data: %@", v34];

          v30 = v51;
          v28 = v38;
        }

        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [v28 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v31);
  }

  if (![v27 count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316C00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316C28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316CBC();
    }

    v44 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v44);
    }

    v45 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_sortedCategoriesFromLibrary:]"];
    v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:370 isFatal:0 description:"Found no categories in the shape librarian data: %@", obj];

    v30 = v51;
  }

  return v27;
}

- (CRLShapeSearchIndex)p_searchIndex
{
  [(CRLShapeLibrary *)self p_loadCategoriesAndSearchIndexIfNeeded];
  searchIndex = self->_searchIndex;

  return searchIndex;
}

- (id)p_keywordDelimiterFromLibrary:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316CE4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316CF8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316D98();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_keywordDelimiterFromLibrary:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:391 isFatal:0 description:"invalid nil value for '%{public}s'", "library"];
  }

  v7 = [v3 objectForKeyedSubscript:@"keywordDelimiter"];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316DC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316DE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316E78();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLShapeLibrary p_keywordDelimiterFromLibrary:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibrary.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:395 isFatal:0 description:"Shape Librarian data file did not have a keywordDelimiter."];
  }

  return v7;
}

- (id)p_libraryByRemovingDenyListedShapes:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeLibrary *)self p_shapeDictionariesByIDFromLibrary:v4];
  v6 = [v5 mutableCopy];

  v7 = [(CRLShapeLibrary *)self p_shapeIDByLocalizationKeyFromLibrary:v4];
  v23 = [v7 mutableCopy];

  v22 = v4;
  v8 = [(CRLShapeLibrary *)self p_keywordDelimiterFromLibrary:v4];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(CRLShapeLibrary *)self p_shapeIDsToRemove];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 stringValue];
        v16 = [v6 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [[CRLShapeLibraryShape alloc] initWithDictionary:v16 keywordDelimiter:v8];
          v18 = [(CRLShapeLibraryShape *)v17 localizationKey];
          [v23 removeObjectForKey:v18];
        }

        v19 = [v14 stringValue];
        [v6 removeObjectForKey:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [v22 mutableCopy];
  [v20 setObject:v6 forKeyedSubscript:@"shapesByID"];
  [v20 setObject:v23 forKeyedSubscript:@"shapeIDByLocKey"];

  return v20;
}

@end