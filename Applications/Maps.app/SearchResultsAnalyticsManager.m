@interface SearchResultsAnalyticsManager
+ (id)resultIdsWithDataSource:(id)a3;
+ (void)accessoryEntityTappedWithMuid:(unint64_t)a3 eventValue:(id)a4;
+ (void)addAPlaceTappedWithNumberOfResults:(unint64_t)a3 target:(int)a4;
+ (void)containmentParentUnitTappedWithMuid:(unint64_t)a3;
+ (void)curatedGuidesUnitTapped;
+ (void)didScrollPhotoCarouselToEnd;
+ (void)didScrollPhotoCarouselToLeft;
+ (void)didScrollPhotoCarouselToRight;
+ (void)didShowClusterWithDataSource:(id)a3 impressionsSessionIdentifier:(id)a4;
+ (void)didShowSearchResultsWithDataSource:(id)a3 target:(int)a4 query:(id)a5 impressionsSessionIdentifier:(id)a6;
+ (void)didTapOnAddStopForSearchResultWithMapItem:(id)a3 indexPath:(id)a4;
+ (void)didTapPhotoCarouselPhoto:(int64_t)a3;
+ (void)logCloseSearchResults;
+ (void)logNoSearchResults:(int)a3;
+ (void)tappableEntryUnitTappedWithMuid:(unint64_t)a3;
+ (void)userGeneratedGuideUnitTapped;
@end

@implementation SearchResultsAnalyticsManager

+ (id)resultIdsWithDataSource:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 objects];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSMutableArray alloc];
    v7 = [v3 objects];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v3 objects];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) mapItem];
          v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 _muid]);
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v5 = [v8 componentsJoinedByString:{@", "}];
  }

  return v5;
}

+ (void)didShowClusterWithDataSource:(id)a3 impressionsSessionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GEOAPSharedStateData sharedData];
  [v8 populateImpressionObjectId:v6];

  v9 = [a1 resultIdsWithDataSource:v7];

  [GEOAPPortal captureUserAction:2015 target:105 value:v9];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 populateImpressionObjectId:0];
}

+ (void)addAPlaceTappedWithNumberOfResults:(unint64_t)a3 target:(int)a4
{
  v4 = *&a4;
  v6 = [NSString stringWithFormat:@"%lu", a3];
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:222 onTarget:v4 eventValue:v6];
}

+ (void)logCloseSearchResults
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:2002 onTarget:101 eventValue:0];
}

+ (void)logNoSearchResults:(int)a3
{
  v3 = *&a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:418 onTarget:v3 eventValue:0];
}

+ (void)didShowSearchResultsWithDataSource:(id)a3 target:(int)a4 query:(id)a5 impressionsSessionIdentifier:(id)a6
{
  v9 = a3;
  v25 = a5;
  v10 = a6;
  v11 = [v9 content];
  v12 = [a1 resultIdsWithDataSource:v9];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  if ([v11 numberOfSections] >= 1)
  {
    v14 = 0;
    do
    {
      if ([v11 numberOfRowsInSection:v14] >= 1)
      {
        v15 = 0;
        do
        {
          v16 = [NSIndexPath indexPathForRow:v15 inSection:v14];
          v17 = [v9 placeSummaryTemplateAtIndexPath:v16];

          if (v17)
          {
            [v13 addObject:v17];
          }

          ++v15;
        }

        while (v15 < [v11 numberOfRowsInSection:v14]);
      }

      ++v14;
    }

    while (v14 < [v11 numberOfSections]);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v18 = +[GEOAPSharedStateData sharedData];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1008C3B30;
  v30[3] = &unk_10162D730;
  v32 = &v33;
  v19 = v11;
  v31 = v19;
  [v18 populateSearchResultsForQuery:v25 searchResultSpecifierBlock:v30];

  v20 = +[GEOAPSharedStateData sharedData];
  [v20 populateImpressionObjectId:v10];

  v34[3] = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1008C3C5C;
  v26[3] = &unk_10162D758;
  v29 = &v33;
  v21 = v19;
  v27 = v21;
  v22 = v13;
  v28 = v22;
  [GEOAPPortal capturePlaceSummaryUserAction:2015 target:a4 value:v12 placeSummarySpecifierBlock:v26];
  v23 = +[GEOAPSharedStateData sharedData];
  [v23 populateImpressionObjectId:0];

  _Block_object_dispose(&v33, 8);
}

+ (void)didScrollPhotoCarouselToEnd
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:459 onTarget:101 eventValue:0];
}

+ (void)didTapPhotoCarouselPhoto:(int64_t)a3
{
  v5 = +[MKMapService sharedService];
  v4 = [NSString stringWithFormat:@"%ld", a3];
  [v5 captureUserAction:6006 onTarget:101 eventValue:v4];
}

+ (void)didScrollPhotoCarouselToRight
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:6049 onTarget:101 eventValue:0];
}

+ (void)didScrollPhotoCarouselToLeft
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:6048 onTarget:101 eventValue:0];
}

+ (void)accessoryEntityTappedWithMuid:(unint64_t)a3 eventValue:(id)a4
{
  v5 = a4;
  v9 = objc_alloc_init(GEOPlaceActionDetails);
  [v9 setBusinessID:a3];
  v6 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v6 setAction:2031];
  [(SearchSessionAnalytics *)v6 setTarget:101];
  v7 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v7 collectSearchSessionAnalytics:v6];

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:-[SearchSessionAnalytics action](v6 onTarget:"action") eventValue:-[SearchSessionAnalytics target](v6 placeActionDetails:{"target"), v5, v9}];
}

+ (void)tappableEntryUnitTappedWithMuid:(unint64_t)a3
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:a3];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:198 onTarget:101 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_STRING" placeActionDetails:v5];
}

+ (void)containmentParentUnitTappedWithMuid:(unint64_t)a3
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:a3];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:198 onTarget:101 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_CONTAINMENT" placeActionDetails:v5];
}

+ (void)curatedGuidesUnitTapped
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:198 onTarget:101 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_CURATED_GUIDES"];
}

+ (void)userGeneratedGuideUnitTapped
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:198 onTarget:101 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_USER_GENERATED_GUIDES"];
}

+ (void)didTapOnAddStopForSearchResultWithMapItem:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 _geoMapItem];
  v10 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:", v7, [v5 row], CFAbsoluteTimeGetCurrent());

  v8 = +[MKMapService sharedService];
  v9 = [v5 row];

  [v8 captureUserAction:6097 onTarget:58 placeActionDetails:v10 mapItem:v6 resultIndex:v9];
}

@end