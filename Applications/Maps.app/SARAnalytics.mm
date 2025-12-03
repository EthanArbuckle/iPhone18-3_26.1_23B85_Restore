@interface SARAnalytics
+ (void)captureAddStopAnalyticsForTransportType:(int)type;
+ (void)captureCancelSearchResults;
+ (void)captureListScrollDown;
+ (void)captureListScrollUp;
+ (void)captureListStartDetourToMapItem:(id)item index:(int64_t)index;
+ (void)captureListTapToHideTray;
+ (void)captureListTapToShowTray;
+ (void)captureMapSelectMapItem:(id)item;
+ (void)captureMapTapToHideTray;
+ (void)captureResumePreviousNavigation;
+ (void)captureSelectCategory:(id)category fromDisplayedCategories:(id)categories isAddStopTray:(BOOL)tray;
+ (void)captureShowSearchResults:(id)results;
@end

@implementation SARAnalytics

+ (void)captureResumePreviousNavigation
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:3058 onTarget:616 eventValue:0];
}

+ (void)captureListStartDetourToMapItem:(id)item index:(int64_t)index
{
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:_geoMapItem timestamp:index resultIndex:0.0];

  v7 = +[MNNavigationService sharedService];
  navigationTransportType = [v7 navigationTransportType];
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType != 1)
    {
      if (navigationTransportType == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_7:

    goto LABEL_9;
  }

  if (navigationTransportType == 3)
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_11:
    v12 = IsEnabled_Maps182;

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_9:
    v11 = 3001;
    goto LABEL_13;
  }

  if (navigationTransportType == 6)
  {
    goto LABEL_7;
  }

LABEL_8:
  IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

  if (!IsEnabled_DrivingMultiWaypointRoutes)
  {
    goto LABEL_9;
  }

LABEL_12:
  v11 = 6097;
LABEL_13:
  v13 = +[MKMapService sharedService];
  [v13 captureUserAction:v11 onTarget:104 placeActionDetails:v14 mapItem:itemCopy resultIndex:index];
}

+ (void)captureMapTapToHideTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:1038 onTarget:506 eventValue:0];
}

+ (void)captureMapSelectMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  v7 = [GEOPlaceActionDetails actionDetailsWithMapItem:_geoMapItem timestamp:0xFFFFFFFFLL resultIndex:0.0];

  v4 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v4 setAction:1017];
  [(SearchSessionAnalytics *)v4 setTarget:506];
  v5 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v5 collectSearchSessionAnalytics:v4];

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:-[SearchSessionAnalytics action](v4 onTarget:"action") eventValue:-[SearchSessionAnalytics target](v4 placeActionDetails:{"target"), 0, v7}];
}

+ (void)captureListTapToHideTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:1038 onTarget:104 eventValue:0];
}

+ (void)captureListTapToShowTray
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:1039 onTarget:104 eventValue:0];
}

+ (void)captureListScrollDown
{
  v4 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v4 setAction:8];
  [(SearchSessionAnalytics *)v4 setTarget:104];
  v2 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v2 collectSearchSessionAnalytics:v4];

  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:-[SearchSessionAnalytics action](v4 onTarget:"action") eventValue:{-[SearchSessionAnalytics target](v4, "target"), 0}];
}

+ (void)captureListScrollUp
{
  v4 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v4 setAction:7];
  [(SearchSessionAnalytics *)v4 setTarget:104];
  v2 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v2 collectSearchSessionAnalytics:v4];

  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:-[SearchSessionAnalytics action](v4 onTarget:"action") eventValue:{-[SearchSessionAnalytics target](v4, "target"), 0}];
}

+ (void)captureCancelSearchResults
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:18 onTarget:104 eventValue:0];
}

+ (void)captureShowSearchResults:(id)results
{
  resultsCopy = results;
  v4 = +[MKMapService sharedService];
  v5 = resultsCopy;
  if ([v5 count])
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v14 + 1) + 8 * v11) _muid]);
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v13 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v13 = 0;
  }

  [v4 captureUserAction:2015 onTarget:104 eventValue:v13];
}

+ (void)captureSelectCategory:(id)category fromDisplayedCategories:(id)categories isAddStopTray:(BOOL)tray
{
  trayCopy = tray;
  categoriesCopy = categories;
  categoryCopy = category;
  v11 = +[MKMapService sharedService];
  if (trayCopy)
  {
    v9 = 742;
  }

  else
  {
    v9 = 401;
  }

  displayString = [categoryCopy displayString];
  [v11 captureUserAction:3005 onTarget:v9 eventValue:displayString categoriesDisplayed:categoriesCopy categorySelected:categoryCopy];
}

+ (void)captureAddStopAnalyticsForTransportType:(int)type
{
  if (type)
  {
    if (type != 3)
    {
      return;
    }

    v3 = 404;
  }

  else
  {
    v3 = 401;
  }

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6097 onTarget:v3 eventValue:0];
}

@end