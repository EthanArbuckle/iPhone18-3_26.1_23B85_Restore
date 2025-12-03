@interface _NBJaliscoSearchOperation
- (_NBJaliscoSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string;
- (void)executeSearch;
@end

@implementation _NBJaliscoSearchOperation

- (_NBJaliscoSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string
{
  v8.receiver = self;
  v8.super_class = _NBJaliscoSearchOperation;
  v4 = [(_NBSearchOperation *)&v8 initWithSearchDataSource:source searchString:string];
  v5 = v4;
  if (v4)
  {
    searchResults = v4->_searchResults;
    v4->_searchResults = &__NSArray0__struct;
  }

  return v5;
}

- (void)executeSearch
{
  v3 = +[NBBridgeUtilities isExplicitMaterialAllowed]^ 1;
  v4 = NBDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    dataSource = [(_NBSearchOperation *)self dataSource];
    familyDSIDs = [dataSource familyDSIDs];
    searchString = [(_NBSearchOperation *)self searchString];
    v15 = 138412802;
    v16 = familyDSIDs;
    v17 = 2112;
    v18 = searchString;
    v19 = 1024;
    v20 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "NBJaliscoSearchOperation executing jalisco fetch with dsid:(%@), searchString:(%@), isExplicitRestricted: (%i)", &v15, 0x1Cu);
  }

  v8 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  dataSource2 = [(_NBSearchOperation *)self dataSource];
  familyDSIDs2 = [dataSource2 familyDSIDs];
  searchString2 = [(_NBSearchOperation *)self searchString];
  v12 = [v8 searchAllServerItemsForDSIDs:familyDSIDs2 matchingSearchString:searchString2 isExplicitRestricted:v3];

  v13 = [v12 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];
  searchResults = self->_searchResults;
  self->_searchResults = v13;
}

@end