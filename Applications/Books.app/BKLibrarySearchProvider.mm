@interface BKLibrarySearchProvider
- (BKLibrarySearchProvider)initWithFetchRequest:(id)request name:(id)name searchTerm:(id)term limit:(unint64_t)limit;
- (BKLibrarySearchProvider)initWithFetchRequest:(id)request name:(id)name searchTerm:(id)term limit:(unint64_t)limit moc:(id)moc;
- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)request isInitialFetch:(BOOL)fetch matchedAssets:(id)assets;
- (id)_classifyAllResultsWithSearchItemStatus:(id)status searchItemStatus:(int64_t)itemStatus;
- (id)_classifyResultsSearchItemStatus:(id)status wideningSearch:(BOOL)search;
- (void)updateSearchResultEntityType:(int64_t)type;
- (void)updateSearchTerm:(id)term resettingResultType:(BOOL)type;
@end

@implementation BKLibrarySearchProvider

- (BKLibrarySearchProvider)initWithFetchRequest:(id)request name:(id)name searchTerm:(id)term limit:(unint64_t)limit moc:(id)moc
{
  termCopy = term;
  v16.receiver = self;
  v16.super_class = BKLibrarySearchProvider;
  v13 = [(BKLibraryProvider *)&v16 initWithFetchRequest:request name:name moc:moc];
  v14 = v13;
  if (v13)
  {
    [(BKLibrarySearchProvider *)v13 _commonInitWithSearchTerm:termCopy limit:limit];
  }

  return v14;
}

- (BKLibrarySearchProvider)initWithFetchRequest:(id)request name:(id)name searchTerm:(id)term limit:(unint64_t)limit
{
  termCopy = term;
  v14.receiver = self;
  v14.super_class = BKLibrarySearchProvider;
  v11 = [(BKLibraryProvider *)&v14 initWithFetchRequest:request name:name];
  v12 = v11;
  if (v11)
  {
    [(BKLibrarySearchProvider *)v11 _commonInitWithSearchTerm:termCopy limit:limit];
  }

  return v12;
}

- (void)updateSearchTerm:(id)term resettingResultType:(BOOL)type
{
  typeCopy = type;
  termCopy = term;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [termCopy stringByTrimmingCharactersInSet:v7];

  v9 = [v8 length];
  currentSearchTerm = self->_currentSearchTerm;
  if (v9)
  {
    objc_storeStrong(&self->_previousSearchTerm, currentSearchTerm);
    objc_storeStrong(&self->_currentSearchTerm, term);
    currentSearchResultEntityType = self->_currentSearchResultEntityType;
    self->_previousSearchResultEntityType = currentSearchResultEntityType;
    if (typeCopy)
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
    if (typeCopy)
    {
      v12 = 0;
      self->_currentSearchResultEntityType = 0;
      self->_previousSearchResultEntityType = 0;
    }
  }

  [(BKLibraryProvider *)self configureFetchedResultsControllerWithFetchRequest:v12];
}

- (void)updateSearchResultEntityType:(int64_t)type
{
  currentSearchResultEntityType = self->_currentSearchResultEntityType;
  if (currentSearchResultEntityType == type)
  {
    return;
  }

  self->_previousSearchResultEntityType = currentSearchResultEntityType;
  self->_currentSearchResultEntityType = type;
  objc_storeStrong(&self->_previousSearchTerm, self->_currentSearchTerm);
  currentSearchTerm = self->_currentSearchTerm;
  v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v14 = [(NSString *)currentSearchTerm stringByTrimmingCharactersInSet:v8];

  if (type == 4)
  {
    dynamicArray = [(BKLibraryProvider *)self dynamicArray];
    [dynamicArray updateArray:&__NSArray0__struct];

    delegate = [(BKLibraryProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(BKLibraryProvider *)self delegate];
      [delegate2 libraryProvider:self contentDidLoad:&__NSArray0__struct];
LABEL_7:
    }
  }

  else if ([v14 length])
  {
    delegate2 = [BKLibraryManager searchFetchRequestWithText:v14 entityType:type];
    v13 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
    [delegate2 setPropertiesToFetch:v13];

    [(BKLibraryProvider *)self configureFetchedResultsControllerWithFetchRequest:delegate2];
    goto LABEL_7;
  }
}

- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)request isInitialFetch:(BOOL)fetch matchedAssets:(id)assets
{
  fetchCopy = fetch;
  v17.receiver = self;
  v17.super_class = BKLibrarySearchProvider;
  v7 = [(BKLibraryProvider *)&v17 _assetDictionariesForDynamicArrayWithFetchRequest:request isInitialFetch:fetch matchedAssets:assets];
  v8 = v7;
  if (fetchCopy && [v7 count])
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
          selfCopy2 = self;
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

    selfCopy2 = self;
    v13 = v8;
    v14 = 1;
LABEL_16:
    v11 = [(BKLibrarySearchProvider *)selfCopy2 _classifyResultsSearchItemStatus:v13 wideningSearch:v14];
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

- (id)_classifyAllResultsWithSearchItemStatus:(id)status searchItemStatus:(int64_t)itemStatus
{
  statusCopy = status;
  v6 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = statusCopy;
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
        v13 = [NSNumber numberWithInteger:itemStatus];
        [v12 setObject:v13 forKeyedSubscript:@"searchItemStatus"];

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_classifyResultsSearchItemStatus:(id)status wideningSearch:(BOOL)search
{
  searchCopy = search;
  statusCopy = status;
  dynamicArray = [(BKLibraryProvider *)self dynamicArray];
  internalArray = [dynamicArray internalArray];

  if ([internalArray count])
  {
    v24 = objc_alloc_init(NSMutableArray);
    v9 = BSUIAssetKeyAssetID;
    v10 = [statusCopy valueForKey:BSUIAssetKeyAssetID];
    v11 = [internalArray valueForKey:v9];
    v12 = [NSSet setWithArray:v10];
    v13 = [NSSet setWithArray:v11];
    v14 = [v12 mutableCopy];
    [v14 minusSet:v13];
    v15 = [v13 mutableCopy];
    [v15 minusSet:v12];
    if (searchCopy)
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
    [statusCopy enumerateObjectsUsingBlock:v25];
    v22 = v29;
    v17 = v18;
  }

  else
  {
    v17 = [(BKLibrarySearchProvider *)self _classifyAllResultsWithSearchItemStatus:statusCopy searchItemStatus:1];
  }

  return v17;
}

@end