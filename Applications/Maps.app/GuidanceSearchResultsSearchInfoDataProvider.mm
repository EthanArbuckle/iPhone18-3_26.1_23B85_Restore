@interface GuidanceSearchResultsSearchInfoDataProvider
- (BOOL)hasValidSearchResults;
- (GEOFeatureStyleAttributes)styleAttributes;
- (GuidanceSearchResultsSearchInfoDataProvider)initWithSearchInfo:(id)info error:(id)error;
- (NSString)subtitle;
- (NSString)title;
- (void)loadSearchResultsWithRouteInfo:(id)info completion:(id)completion;
@end

@implementation GuidanceSearchResultsSearchInfoDataProvider

- (void)loadSearchResultsWithRouteInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    searchInfo = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
    *buf = 138412290;
    v27 = searchInfo;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SAR: Loading search results: %@", buf, 0xCu);
  }

  searchInfo2 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  clientResolvedResult = [searchInfo2 clientResolvedResult];

  searchInfo3 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v11 = searchInfo3;
  if (!clientResolvedResult)
  {
    results = [searchInfo3 results];
    v18 = [NSPredicate predicateWithFormat:@"mapItem != nil"];
    clientResolvedResult2 = [results filteredArrayUsingPredicate:v18];

    [clientResolvedResult2 valueForKeyPath:@"mapItem"];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BB17B0;
    v22 = block[3] = &unk_101661090;
    v23 = completionCopy;
    v13 = v22;
    dispatch_async(&_dispatch_main_q, block);

    v15 = v22;
LABEL_10:

    goto LABEL_11;
  }

  clientResolvedResult2 = [searchInfo3 clientResolvedResult];

  v13 = objc_alloc_init(ClientTypeResolver);
  itemType = [clientResolvedResult2 itemType];
  if (itemType <= 6)
  {
    if (((1 << itemType) & 0x39) != 0)
    {
      v15 = sub_100067540();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        itemType2 = [clientResolvedResult2 itemType];
        *buf = 67109120;
        LODWORD(v27) = itemType2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SAR: Unhandled client resolved type: %d", buf, 8u);
      }
    }

    else
    {
      personalizedItemSource = [(ClientTypeResolver *)v13 personalizedItemSource];
      itemType3 = [clientResolvedResult2 itemType];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100BB14F8;
      v24[3] = &unk_10164C6E8;
      v25 = completionCopy;
      [personalizedItemSource addressOrLOIWithType:itemType3 completion:v24];

      v15 = v25;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)hasValidSearchResults
{
  searchInfo = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  clientResolvedResult = [searchInfo clientResolvedResult];

  if (clientResolvedResult)
  {
    return 1;
  }

  searchInfo2 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  results = [searchInfo2 results];
  v5 = [results count] != 0;

  return v5;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  searchInfo = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  searchFieldItem = [searchInfo searchFieldItem];
  currentCategory = [searchFieldItem currentCategory];
  styleAttributes = [currentCategory styleAttributes];

  return styleAttributes;
}

- (NSString)subtitle
{
  searchInfo = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  subHeaderDisplayName = [searchInfo subHeaderDisplayName];

  return subHeaderDisplayName;
}

- (NSString)title
{
  searchInfo = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  searchText = [searchInfo searchText];
  v5 = searchText;
  if (searchText)
  {
    title = searchText;
  }

  else
  {
    searchInfo2 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
    searchFieldItem = [searchInfo2 searchFieldItem];
    title = [searchFieldItem title];
  }

  return title;
}

- (GuidanceSearchResultsSearchInfoDataProvider)initWithSearchInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = GuidanceSearchResultsSearchInfoDataProvider;
  v9 = [(GuidanceSearchResultsSearchInfoDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchInfo, info);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

@end