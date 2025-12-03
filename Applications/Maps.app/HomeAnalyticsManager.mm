@interface HomeAnalyticsManager
+ (void)captureCuratedCollectionAction:(int)action withCollectionHandler:(id)handler verticalIndex:(unint64_t)index;
+ (void)captureCuratedCollectionCarouselTapCollectionWithIdentifier:(id)identifier atIndex:(int64_t)index isSaved:(BOOL)saved;
+ (void)captureDisplayActionWithEntry:(id)entry;
+ (void)captureDisplayActionWithFavorite:(id)favorite;
+ (void)captureStateWithShortcuts:(id)shortcuts;
+ (void)captureTapActionWithEntry:(id)entry;
+ (void)captureTapActionWithFavorite:(id)favorite;
@end

@implementation HomeAnalyticsManager

+ (void)captureStateWithShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [shortcutsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(shortcutsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (([v9 isShortcutForSetup] & 1) == 0)
        {
          if ([v9 type] == 1)
          {
            v10 = +[GEOAPSharedStateData sharedData];
            [v10 setMapFeatureIsHomeFavoriteSet:1];
          }

          if ([v9 type] == 2)
          {
            v11 = +[GEOAPSharedStateData sharedData];
            [v11 setMapFeatureIsWorkFavoriteSet:1];
          }

          if ([v9 type] == 19)
          {
            v12 = +[GEOAPSharedStateData sharedData];
            [v12 setMapFeatureIsSchoolFavoriteSet:1];
          }

          v6 = (v6 + 1);
          if ([v9 type] == 22)
          {
            uniqueIdentifier = [v9 uniqueIdentifier];
            v14 = [uniqueIdentifier isEqualToString:@"NearbyTransit"];

            if (v14)
            {
              v15 = +[GEOAPSharedStateData sharedData];
              [v15 setMapFeatureIsTransitFavoriteSet:1];
            }
          }
        }
      }

      v5 = [shortcutsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = +[GEOAPSharedStateData sharedData];
  [v16 setMapFeatureFavoritesCount:v6];
}

+ (void)captureDisplayActionWithFavorite:(id)favorite
{
  analyticsGrouping = [favorite analyticsGrouping];
  [GEOAPPortal captureUserAction:359 target:8 value:analyticsGrouping];
}

+ (void)captureDisplayActionWithEntry:(id)entry
{
  analyticsGrouping = [entry analyticsGrouping];
  [GEOAPPortal captureUserAction:359 target:8 value:analyticsGrouping];
}

+ (void)captureTapActionWithEntry:(id)entry
{
  entryCopy = entry;
  analyticsGrouping = [entryCopy analyticsGrouping];
  [GEOAPPortal captureUserAction:2039 target:8 value:analyticsGrouping];

  type = [entryCopy type];
  if (type > 18)
  {
    if (type == 19)
    {
      if ([entryCopy isShortcutForSetup])
      {
        v9 = 2169;
      }

      else
      {
        v9 = 84;
      }
    }

    else
    {
      if (type != 21)
      {
        if (type != 22)
        {
          goto LABEL_21;
        }

        uniqueIdentifier = [entryCopy uniqueIdentifier];
        v8 = [uniqueIdentifier isEqualToString:@"NearbyTransit"];

        if (v8)
        {
          goto LABEL_21;
        }
      }

      v9 = 118;
    }

LABEL_20:
    [GEOAPPortal captureUserAction:v9 target:8 value:0];
    goto LABEL_21;
  }

  switch(type)
  {
    case 1:
      if ([entryCopy isShortcutForSetup])
      {
        v9 = 2042;
      }

      else
      {
        v9 = 2046;
      }

      goto LABEL_20;
    case 2:
      if ([entryCopy isShortcutForSetup])
      {
        v9 = 2043;
      }

      else
      {
        v9 = 2047;
      }

      goto LABEL_20;
    case 18:
      geoMapItem = [entryCopy geoMapItem];
      _mapsCategoryId = [geoMapItem _mapsCategoryId];

      [GEOAPPortal captureUserAction:2049 target:8 value:_mapsCategoryId];
      break;
  }

LABEL_21:
}

+ (void)captureTapActionWithFavorite:(id)favorite
{
  favoriteCopy = favorite;
  analyticsGrouping = [favoriteCopy analyticsGrouping];
  [GEOAPPortal captureUserAction:2039 target:8 value:analyticsGrouping];

  type = [favoriteCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      goto LABEL_10;
    }

    if (type != 2)
    {
      goto LABEL_19;
    }

    if ([favoriteCopy isShortcutForSetup])
    {
      v5 = 2042;
    }

    else
    {
      v5 = 2046;
    }

LABEL_18:
    [GEOAPPortal captureUserAction:v5 target:8 value:0];
    goto LABEL_19;
  }

  switch(type)
  {
    case 3:
      if ([favoriteCopy isShortcutForSetup])
      {
        v5 = 2043;
      }

      else
      {
        v5 = 2047;
      }

      goto LABEL_18;
    case 5:
      if ([favoriteCopy isShortcutForSetup])
      {
        v5 = 2169;
      }

      else
      {
        v5 = 84;
      }

      goto LABEL_18;
    case 6:
LABEL_10:
      geoMapItem = [favoriteCopy geoMapItem];
      _mapsCategoryId = [geoMapItem _mapsCategoryId];

      [GEOAPPortal captureUserAction:2049 target:8 value:_mapsCategoryId];
      break;
  }

LABEL_19:
}

+ (void)captureCuratedCollectionCarouselTapCollectionWithIdentifier:(id)identifier atIndex:(int64_t)index isSaved:(BOOL)saved
{
  savedCopy = saved;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [identifier muid]);
  v7 = [NSNumber numberWithBool:savedCopy];
  v8 = [NSNumber numberWithInteger:index];
  [GEOAPPortal captureCuratedCollectionUserAction:2198 target:8 value:0 publisherId:0 following:0 collectionId:v9 collectionCategory:0 collectionCurrentlySaved:v7 verticalIndex:0 horizontalIndex:v8 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
}

+ (void)captureCuratedCollectionAction:(int)action withCollectionHandler:(id)handler verticalIndex:(unint64_t)index
{
  v6 = *&action;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    curatedCollectionIdentifier = [handlerCopy curatedCollectionIdentifier];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [curatedCollectionIdentifier muid]);
    v10 = [NSNumber numberWithUnsignedInteger:index];
    [GEOAPPortal captureCuratedCollectionUserAction:v6 target:8 value:0 publisherId:0 following:0 collectionId:v9 collectionCategory:0 collectionCurrentlySaved:&__kCFBooleanTrue verticalIndex:v10 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [collectionHandler isKindOfClass:CuratedCollectionHandler.class]", buf, 2u);
  }
}

@end