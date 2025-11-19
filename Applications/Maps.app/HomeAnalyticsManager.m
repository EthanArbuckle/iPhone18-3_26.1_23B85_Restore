@interface HomeAnalyticsManager
+ (void)captureCuratedCollectionAction:(int)a3 withCollectionHandler:(id)a4 verticalIndex:(unint64_t)a5;
+ (void)captureCuratedCollectionCarouselTapCollectionWithIdentifier:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5;
+ (void)captureDisplayActionWithEntry:(id)a3;
+ (void)captureDisplayActionWithFavorite:(id)a3;
+ (void)captureStateWithShortcuts:(id)a3;
+ (void)captureTapActionWithEntry:(id)a3;
+ (void)captureTapActionWithFavorite:(id)a3;
@end

@implementation HomeAnalyticsManager

+ (void)captureStateWithShortcuts:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
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
            v13 = [v9 uniqueIdentifier];
            v14 = [v13 isEqualToString:@"NearbyTransit"];

            if (v14)
            {
              v15 = +[GEOAPSharedStateData sharedData];
              [v15 setMapFeatureIsTransitFavoriteSet:1];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (void)captureDisplayActionWithFavorite:(id)a3
{
  v3 = [a3 analyticsGrouping];
  [GEOAPPortal captureUserAction:359 target:8 value:v3];
}

+ (void)captureDisplayActionWithEntry:(id)a3
{
  v3 = [a3 analyticsGrouping];
  [GEOAPPortal captureUserAction:359 target:8 value:v3];
}

+ (void)captureTapActionWithEntry:(id)a3
{
  v10 = a3;
  v3 = [v10 analyticsGrouping];
  [GEOAPPortal captureUserAction:2039 target:8 value:v3];

  v4 = [v10 type];
  if (v4 > 18)
  {
    if (v4 == 19)
    {
      if ([v10 isShortcutForSetup])
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
      if (v4 != 21)
      {
        if (v4 != 22)
        {
          goto LABEL_21;
        }

        v7 = [v10 uniqueIdentifier];
        v8 = [v7 isEqualToString:@"NearbyTransit"];

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

  switch(v4)
  {
    case 1:
      if ([v10 isShortcutForSetup])
      {
        v9 = 2042;
      }

      else
      {
        v9 = 2046;
      }

      goto LABEL_20;
    case 2:
      if ([v10 isShortcutForSetup])
      {
        v9 = 2043;
      }

      else
      {
        v9 = 2047;
      }

      goto LABEL_20;
    case 18:
      v5 = [v10 geoMapItem];
      v6 = [v5 _mapsCategoryId];

      [GEOAPPortal captureUserAction:2049 target:8 value:v6];
      break;
  }

LABEL_21:
}

+ (void)captureTapActionWithFavorite:(id)a3
{
  v8 = a3;
  v3 = [v8 analyticsGrouping];
  [GEOAPPortal captureUserAction:2039 target:8 value:v3];

  v4 = [v8 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      goto LABEL_10;
    }

    if (v4 != 2)
    {
      goto LABEL_19;
    }

    if ([v8 isShortcutForSetup])
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

  switch(v4)
  {
    case 3:
      if ([v8 isShortcutForSetup])
      {
        v5 = 2043;
      }

      else
      {
        v5 = 2047;
      }

      goto LABEL_18;
    case 5:
      if ([v8 isShortcutForSetup])
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
      v6 = [v8 geoMapItem];
      v7 = [v6 _mapsCategoryId];

      [GEOAPPortal captureUserAction:2049 target:8 value:v7];
      break;
  }

LABEL_19:
}

+ (void)captureCuratedCollectionCarouselTapCollectionWithIdentifier:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5
{
  v5 = a5;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a3 muid]);
  v7 = [NSNumber numberWithBool:v5];
  v8 = [NSNumber numberWithInteger:a4];
  [GEOAPPortal captureCuratedCollectionUserAction:2198 target:8 value:0 publisherId:0 following:0 collectionId:v9 collectionCategory:0 collectionCurrentlySaved:v7 verticalIndex:0 horizontalIndex:v8 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
}

+ (void)captureCuratedCollectionAction:(int)a3 withCollectionHandler:(id)a4 verticalIndex:(unint64_t)a5
{
  v6 = *&a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 curatedCollectionIdentifier];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 muid]);
    v10 = [NSNumber numberWithUnsignedInteger:a5];
    [GEOAPPortal captureCuratedCollectionUserAction:v6 target:8 value:0 publisherId:0 following:0 collectionId:v9 collectionCategory:0 collectionCurrentlySaved:&__kCFBooleanTrue verticalIndex:v10 horizontalIndex:0 placeCardType:0 possibleActions:0 impossibleActions:0 modules:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [collectionHandler isKindOfClass:CuratedCollectionHandler.class]", buf, 2u);
  }
}

@end