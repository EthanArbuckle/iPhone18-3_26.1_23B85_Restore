@interface BKLibrarySearchProvider
- (BKLibrarySearchProvider)initWithFetchRequest:(id)a3 name:(id)a4 searchTerm:(id)a5 limit:(unint64_t)a6;
- (BKLibrarySearchProvider)initWithFetchRequest:(id)a3 name:(id)a4 searchTerm:(id)a5 limit:(unint64_t)a6 moc:(id)a7;
- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)a3 isInitialFetch:(BOOL)a4 matchedAssets:(id)a5;
- (id)_classifyAllResultsWithSearchItemStatus:(id)a3 searchItemStatus:(int64_t)a4;
- (id)_classifyResultsSearchItemStatus:(id)a3 wideningSearch:(BOOL)a4;
- (void)updateSearchResultEntityType:(int64_t)a3;
- (void)updateSearchTerm:(id)a3 resettingResultType:(BOOL)a4;
@end

@implementation BKLibrarySearchProvider

- (BKLibrarySearchProvider)initWithFetchRequest:(id)a3 name:(id)a4 searchTerm:(id)a5 limit:(unint64_t)a6 moc:(id)a7
{
  v12 = a5;
  v16.receiver = self;
  v16.super_class = BKLibrarySearchProvider;
  v13 = [(BKLibraryProvider *)&v16 initWithFetchRequest:a3 name:a4 moc:a7];
  v14 = v13;
  if (v13)
  {
    [(BKLibrarySearchProvider *)v13 _commonInitWithSearchTerm:v12 limit:a6];
  }

  return v14;
}

- (BKLibrarySearchProvider)initWithFetchRequest:(id)a3 name:(id)a4 searchTerm:(id)a5 limit:(unint64_t)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BKLibrarySearchProvider;
  v11 = [(BKLibraryProvider *)&v14 initWithFetchRequest:a3 name:a4];
  v12 = v11;
  if (v11)
  {
    [(BKLibrarySearchProvider *)v11 _commonInitWithSearchTerm:v10 limit:a6];
  }

  return v12;
}

- (void)updateSearchTerm:(id)a3 resettingResultType:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v15 stringByTrimmingCharactersInSet:v7];

  v9 = [v8 length];
  currentSearchTerm = self->_currentSearchTerm;
  if (v9)
  {
    objc_storeStrong(&self->_previousSearchTerm, currentSearchTerm);
    objc_storeStrong(&self->_currentSearchTerm, a3);
    currentSearchResultEntityType = self->_currentSearchResultEntityType;
    self->_previousSearchResultEntityType = currentSearchResultEntityType;
    if (v4)
    {
      currentSearchResultEntityType = 0;
      self->_currentSearchResultEntityType = 0;
    }

    v12 = [BKLibraryManager searchFetchRequestWithText:v8 entityType:currentSearchResultEntityType];
    v13 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
    [v12 setPropertiesToFetch:v13];
  }

  else
  {
    self->_currentSearchTerm = 0;

    previousSearchTerm = self->_previousSearchTerm;
    self->_previousSearchTerm = 0;

    v12 = 0;
    if (v4)
    {
      v12 = 0;
      self->_currentSearchResultEntityType = 0;
      self->_previousSearchResultEntityType = 0;
    }
  }

  [(BKLibraryProvider *)self configureFetchedResultsControllerWithFetchRequest:v12];
}

- (void)updateSearchResultEntityType:(int64_t)a3
{
  currentSearchResultEntityType = self->_currentSearchResultEntityType;
  if (currentSearchResultEntityType == a3)
  {
    return;
  }

  self->_previousSearchResultEntityType = currentSearchResultEntityType;
  self->_currentSearchResultEntityType = a3;
  objc_storeStrong(&self->_previousSearchTerm, self->_currentSearchTerm);
  currentSearchTerm = self->_currentSearchTerm;
  v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v14 = [(NSString *)currentSearchTerm stringByTrimmingCharactersInSet:v8];

  if (a3 == 4)
  {
    v9 = [(BKLibraryProvider *)self dynamicArray];
    [v9 updateArray:&__NSArray0__struct];

    v10 = [(BKLibraryProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(BKLibraryProvider *)self delegate];
      [v12 libraryProvider:self contentDidLoad:&__NSArray0__struct];
LABEL_7:
    }
  }

  else if ([v14 length])
  {
    v12 = [BKLibraryManager searchFetchRequestWithText:v14 entityType:a3];
    v13 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
    [v12 setPropertiesToFetch:v13];

    [(BKLibraryProvider *)self configureFetchedResultsControllerWithFetchRequest:v12];
    goto LABEL_7;
  }
}

- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)a3 isInitialFetch:(BOOL)a4 matchedAssets:(id)a5
{
  v5 = a4;
  v17.receiver = self;
  v17.super_class = BKLibrarySearchProvider;
  v7 = [(BKLibraryProvider *)&v17 _assetDictionariesForDynamicArrayWithFetchRequest:a3 isInitialFetch:a4 matchedAssets:a5];
  v8 = v7;
  if (v5 && [v7 count])
  {
    currentSearchResultEntityType = self->_currentSearchResultEntityType;
    if (currentSearchResultEntityType == self->_previousSearchResultEntityType)
    {
      if (![(NSString *)self->_previousSearchTerm hasPrefix:self->_currentSearchTerm])
      {
        if (self->_previousSearchTerm && [(NSString *)self->_currentSearchTerm hasPrefix:?])
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      currentSearchTerm = self->_currentSearchTerm;
      if (currentSearchTerm != self->_previousSearchTerm)
      {
        if (![(NSString *)currentSearchTerm isEqualToString:?])
        {
          goto LABEL_13;
        }

        currentSearchResultEntityType = self->_currentSearchResultEntityType;
      }

      if (currentSearchResultEntityType)
      {
        if (!self->_previousSearchResultEntityType)
        {
LABEL_15:
          v12 = self;
          v13 = v8;
          v14 = 0;
          goto LABEL_16;
        }

LABEL_13:
        v11 = [(BKLibrarySearchProvider *)self _classifyAllResultsWithSearchItemStatus:v8 searchItemStatus:1];
LABEL_17:
        v15 = v11;

        v8 = v15;
        goto LABEL_18;
      }
    }

    v12 = self;
    v13 = v8;
    v14 = 1;
LABEL_16:
    v11 = [(BKLibrarySearchProvider *)v12 _classifyResultsSearchItemStatus:v13 wideningSearch:v14];
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

- (id)_classifyAllResultsWithSearchItemStatus:(id)a3 searchItemStatus:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) mutableCopy];
        v13 = [NSNumber numberWithInteger:a4];
        [v12 setObject:v13 forKeyedSubscript:@"searchItemStatus"];

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_classifyResultsSearchItemStatus:(id)a3 wideningSearch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKLibraryProvider *)self dynamicArray];
  v8 = [v7 internalArray];

  if ([v8 count])
  {
    v24 = objc_alloc_init(NSMutableArray);
    v9 = BSUIAssetKeyAssetID;
    v10 = [v6 valueForKey:BSUIAssetKeyAssetID];
    v11 = [v8 valueForKey:v9];
    v12 = [NSSet setWithArray:v10];
    v13 = [NSSet setWithArray:v11];
    v14 = [v12 mutableCopy];
    [v14 minusSet:v13];
    v15 = [v13 mutableCopy];
    [v15 minusSet:v12];
    if (v4)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000A4504;
      v31[3] = &unk_100A05CD0;
      v32 = v14;
      v16 = [v10 indexOfObjectWithOptions:2 passingTest:v31];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A453C;
    v25[3] = &unk_100A05CF8;
    v26 = v14;
    v27 = v15;
    v30 = v16;
    v28 = v11;
    v18 = v24;
    v29 = v18;
    v19 = v11;
    v20 = v15;
    v21 = v14;
    [v6 enumerateObjectsUsingBlock:v25];
    v22 = v29;
    v17 = v18;
  }

  else
  {
    v17 = [(BKLibrarySearchProvider *)self _classifyAllResultsWithSearchItemStatus:v6 searchItemStatus:1];
  }

  return v17;
}

@end