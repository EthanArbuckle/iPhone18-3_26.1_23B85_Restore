@interface SearchResultsAnalyticsManager
+ (id)resultIdsWithDataSource:(id)source;
+ (void)accessoryEntityTappedWithMuid:(unint64_t)muid eventValue:(id)value;
+ (void)addAPlaceTappedWithNumberOfResults:(unint64_t)results target:(int)target;
+ (void)containmentParentUnitTappedWithMuid:(unint64_t)muid;
+ (void)curatedGuidesUnitTapped;
+ (void)didScrollPhotoCarouselToEnd;
+ (void)didScrollPhotoCarouselToLeft;
+ (void)didScrollPhotoCarouselToRight;
+ (void)didShowClusterWithDataSource:(id)source impressionsSessionIdentifier:(id)identifier;
+ (void)didShowSearchResultsWithDataSource:(id)source target:(int)target query:(id)query impressionsSessionIdentifier:(id)identifier;
+ (void)didTapOnAddStopForSearchResultWithMapItem:(id)item indexPath:(id)path;
+ (void)didTapPhotoCarouselPhoto:(int64_t)photo;
+ (void)logCloseSearchResults;
+ (void)logNoSearchResults:(int)results;
+ (void)tappableEntryUnitTappedWithMuid:(unint64_t)muid;
+ (void)userGeneratedGuideUnitTapped;
@end

@implementation SearchResultsAnalyticsManager

+ (id)resultIdsWithDataSource:(id)source
{
  content = [source content];
  objects = [content objects];
  v5 = [objects count];

  if (v5)
  {
    v6 = [NSMutableArray alloc];
    objects2 = [content objects];
    v8 = [v6 initWithCapacity:{objc_msgSend(objects2, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    objects3 = [content objects];
    v10 = [objects3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(objects3);
          }

          mapItem = [*(*(&v17 + 1) + 8 * i) mapItem];
          v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [mapItem _muid]);
          [v8 addObject:v15];
        }

        v11 = [objects3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v5 = [v8 componentsJoinedByString:{@", "}];
  }

  return v5;
}

+ (void)didShowClusterWithDataSource:(id)source impressionsSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sourceCopy = source;
  v8 = +[GEOAPSharedStateData sharedData];
  [v8 populateImpressionObjectId:identifierCopy];

  v9 = [self resultIdsWithDataSource:sourceCopy];

  [GEOAPPortal captureUserAction:2015 target:105 value:v9];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 populateImpressionObjectId:0];
}

+ (void)addAPlaceTappedWithNumberOfResults:(unint64_t)results target:(int)target
{
  v4 = *&target;
  results = [NSString stringWithFormat:@"%lu", results];
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:222 onTarget:v4 eventValue:results];
}

+ (void)logCloseSearchResults
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:2002 onTarget:101 eventValue:0];
}

+ (void)logNoSearchResults:(int)results
{
  v3 = *&results;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:418 onTarget:v3 eventValue:0];
}

+ (void)didShowSearchResultsWithDataSource:(id)source target:(int)target query:(id)query impressionsSessionIdentifier:(id)identifier
{
  sourceCopy = source;
  queryCopy = query;
  identifierCopy = identifier;
  content = [sourceCopy content];
  v12 = [self resultIdsWithDataSource:sourceCopy];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(content, "count")}];
  if ([content numberOfSections] >= 1)
  {
    v14 = 0;
    do
    {
      if ([content numberOfRowsInSection:v14] >= 1)
      {
        v15 = 0;
        do
        {
          v16 = [NSIndexPath indexPathForRow:v15 inSection:v14];
          v17 = [sourceCopy placeSummaryTemplateAtIndexPath:v16];

          if (v17)
          {
            [v13 addObject:v17];
          }

          ++v15;
        }

        while (v15 < [content numberOfRowsInSection:v14]);
      }

      ++v14;
    }

    while (v14 < [content numberOfSections]);
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
  v19 = content;
  v31 = v19;
  [v18 populateSearchResultsForQuery:queryCopy searchResultSpecifierBlock:v30];

  v20 = +[GEOAPSharedStateData sharedData];
  [v20 populateImpressionObjectId:identifierCopy];

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
  [GEOAPPortal capturePlaceSummaryUserAction:2015 target:target value:v12 placeSummarySpecifierBlock:v26];
  v23 = +[GEOAPSharedStateData sharedData];
  [v23 populateImpressionObjectId:0];

  _Block_object_dispose(&v33, 8);
}

+ (void)didScrollPhotoCarouselToEnd
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:459 onTarget:101 eventValue:0];
}

+ (void)didTapPhotoCarouselPhoto:(int64_t)photo
{
  v5 = +[MKMapService sharedService];
  photo = [NSString stringWithFormat:@"%ld", photo];
  [v5 captureUserAction:6006 onTarget:101 eventValue:photo];
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

+ (void)accessoryEntityTappedWithMuid:(unint64_t)muid eventValue:(id)value
{
  valueCopy = value;
  v9 = objc_alloc_init(GEOPlaceActionDetails);
  [v9 setBusinessID:muid];
  v6 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v6 setAction:2031];
  [(SearchSessionAnalytics *)v6 setTarget:101];
  v7 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v7 collectSearchSessionAnalytics:v6];

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:-[SearchSessionAnalytics action](v6 onTarget:"action") eventValue:-[SearchSessionAnalytics target](v6 placeActionDetails:{"target"), valueCopy, v9}];
}

+ (void)tappableEntryUnitTappedWithMuid:(unint64_t)muid
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:muid];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:198 onTarget:101 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_STRING" placeActionDetails:v5];
}

+ (void)containmentParentUnitTappedWithMuid:(unint64_t)muid
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:muid];
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

+ (void)didTapOnAddStopForSearchResultWithMapItem:(id)item indexPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  v10 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:", _geoMapItem, [pathCopy row], CFAbsoluteTimeGetCurrent());

  v8 = +[MKMapService sharedService];
  v9 = [pathCopy row];

  [v8 captureUserAction:6097 onTarget:58 placeActionDetails:v10 mapItem:itemCopy resultIndex:v9];
}

@end