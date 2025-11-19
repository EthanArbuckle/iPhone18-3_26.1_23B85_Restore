@interface GuidanceSearchResultsSearchInfoDataProvider
- (BOOL)hasValidSearchResults;
- (GEOFeatureStyleAttributes)styleAttributes;
- (GuidanceSearchResultsSearchInfoDataProvider)initWithSearchInfo:(id)a3 error:(id)a4;
- (NSString)subtitle;
- (NSString)title;
- (void)loadSearchResultsWithRouteInfo:(id)a3 completion:(id)a4;
@end

@implementation GuidanceSearchResultsSearchInfoDataProvider

- (void)loadSearchResultsWithRouteInfo:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SAR: Loading search results: %@", buf, 0xCu);
  }

  v8 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v9 = [v8 clientResolvedResult];

  v10 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v11 = v10;
  if (!v9)
  {
    v17 = [v10 results];
    v18 = [NSPredicate predicateWithFormat:@"mapItem != nil"];
    v12 = [v17 filteredArrayUsingPredicate:v18];

    [v12 valueForKeyPath:@"mapItem"];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BB17B0;
    v22 = block[3] = &unk_101661090;
    v23 = v5;
    v13 = v22;
    dispatch_async(&_dispatch_main_q, block);

    v15 = v22;
LABEL_10:

    goto LABEL_11;
  }

  v12 = [v10 clientResolvedResult];

  v13 = objc_alloc_init(ClientTypeResolver);
  v14 = [v12 itemType];
  if (v14 <= 6)
  {
    if (((1 << v14) & 0x39) != 0)
    {
      v15 = sub_100067540();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v12 itemType];
        *buf = 67109120;
        LODWORD(v27) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SAR: Unhandled client resolved type: %d", buf, 8u);
      }
    }

    else
    {
      v19 = [(ClientTypeResolver *)v13 personalizedItemSource];
      v20 = [v12 itemType];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100BB14F8;
      v24[3] = &unk_10164C6E8;
      v25 = v5;
      [v19 addressOrLOIWithType:v20 completion:v24];

      v15 = v25;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)hasValidSearchResults
{
  v3 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v4 = [v3 clientResolvedResult];

  if (v4)
  {
    return 1;
  }

  v6 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v7 = [v6 results];
  v5 = [v7 count] != 0;

  return v5;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  v2 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v3 = [v2 searchFieldItem];
  v4 = [v3 currentCategory];
  v5 = [v4 styleAttributes];

  return v5;
}

- (NSString)subtitle
{
  v2 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v3 = [v2 subHeaderDisplayName];

  return v3;
}

- (NSString)title
{
  v3 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
  v4 = [v3 searchText];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(GuidanceSearchResultsSearchInfoDataProvider *)self searchInfo];
    v8 = [v7 searchFieldItem];
    v6 = [v8 title];
  }

  return v6;
}

- (GuidanceSearchResultsSearchInfoDataProvider)initWithSearchInfo:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GuidanceSearchResultsSearchInfoDataProvider;
  v9 = [(GuidanceSearchResultsSearchInfoDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchInfo, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

@end