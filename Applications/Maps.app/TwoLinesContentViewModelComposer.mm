@interface TwoLinesContentViewModelComposer
+ (BOOL)userInterfaceLayoutDirectionIsRTL;
+ (id)_cellModelForComposedWaypointToRoute:(id)a3;
+ (id)_cellModelForHistoryEntryCuratedCollection:(id)a3;
+ (id)_cellModelForHistoryEntryPlace:(id)a3 showAutocompleteClientSource:(BOOL)a4;
+ (id)_cellModelForHistoryEntryRoute:(id)a3;
+ (id)_cellModelForHistoryEntrySearch:(id)a3 showAutocompleteClientSource:(BOOL)a4;
+ (id)_cellModelForHistoryEntryTransitLineItem:(id)a3;
+ (id)_cellModelForRouteName:(id)a3 persistentData:(id)a4 thirdLineViewModel:(id)a5 menuProvider:(id)a6;
+ (id)_convertSymbolToIconImage:(id)a3 RAPType:(int)a4;
+ (id)_delimiterString;
+ (id)_moreButtonAccessoryWithMenuProvider:(id)a3 axID:(id)a4;
+ (id)_searchResultModelWithSearchResult:(id)a3 title:(id)a4 subtitle:(id)a5 isAuthorizedForPreciseLocation:(BOOL)a6 placeContextViewModel:(id)a7;
+ (id)backgroundColorForRAPType:(int)a3;
+ (id)cellModelForAddMissingPlaceWithUserEnteredText:(id)a3;
+ (id)cellModelForAddressBookAddress:(id)a3;
+ (id)cellModelForCollection:(id)a3;
+ (id)cellModelForCollectionMapItem:(id)a3 currentLocation:(id)a4;
+ (id)cellModelForDroppedPinFromSearchResult:(id)a3;
+ (id)cellModelForExpiredOfflineMapSubscription:(id)a3 isAvailable:(BOOL)a4 isSupportedOSVersion:(BOOL)a5 downloadBlock:(id)a6;
+ (id)cellModelForHistoryEntryRecentsItem:(id)a3 showAutocompleteClientSource:(BOOL)a4;
+ (id)cellModelForHistoryEntryRecentsItemProtocol:(id)a3 showAutocompleteClientSource:(BOOL)a4;
+ (id)cellModelForLibraryManagementItem:(id)a3;
+ (id)cellModelForLocalSearchCompletion:(id)a3 userLocationSearchResult:(id)a4 autocompleteClientSourceType:(int64_t)a5;
+ (id)cellModelForLocationInfo:(id)a3;
+ (id)cellModelForMapItem:(id)a3;
+ (id)cellModelForMapsFavoriteItem:(id)a3;
+ (id)cellModelForMapsFavoriteItem:(id)a3 title:(id)a4 subtitle:(id)a5;
+ (id)cellModelForMapsSuggestionEntry:(id)a3 menuProvider:(id)a4;
+ (id)cellModelForMapsSuggestionEntry:(id)a3 title:(id)a4 subtitle:(id)a5 menuProvider:(id)a6;
+ (id)cellModelForMapsSuggestionsShortcut:(id)a3;
+ (id)cellModelForOfflineMapSubscriptionInfo:(id)a3 cancelDownloadBlock:(id)a4 resumeDownloadBlock:(id)a5;
+ (id)cellModelForOfflineMapSuggestion:(id)a3 downloadBlock:(id)a4;
+ (id)cellModelForOfflineRegionLocalSearchCompletion:(id)a3;
+ (id)cellModelForOfflineSearchResult:(id)a3;
+ (id)cellModelForParkedCar:(id)a3;
+ (id)cellModelForPlaceNotFoundWithUserEnteredText:(id)a3;
+ (id)cellModelForPublisher:(id)a3 showDisclosureIndicator:(BOOL)a4;
+ (id)cellModelForRAPReportsHistory:(id)a3 allowDisclosureIndicator:(BOOL)a4;
+ (id)cellModelForRatingsHistory:(id)a3;
+ (id)cellModelForRecentContact:(id)a3 showAutocompleteClientSource:(BOOL)a4 autocompleteClientSourceType:(int64_t)a5;
+ (id)cellModelForRouteData:(id)a3 thirdLineViewModel:(id)a4 menuProvider:(id)a5;
+ (id)cellModelForSavedRouteCalculatingFailureForOfflineRegion:(id)a3;
+ (id)cellModelForSavedRouteCalculatingOfflineRegion:(id)a3;
+ (id)cellModelForSavedRouteOfflineDownload:(id)a3 estimatedSizeInBytes:(int64_t)a4;
+ (id)cellModelForSavedRouteOfflineRegion:(id)a3 coveredByExistingSubscription:(id)a4;
+ (id)cellModelForSavedRouteUnavailableOfflineRegion:(id)a3;
+ (id)cellModelForSearchHomeRecentSearch:(id)a3;
+ (id)cellModelForSearchResult:(id)a3 typedACQuery:(id)a4 showAutocompleteClientSource:(BOOL)a5;
+ (id)cellModelForSharedTrip:(id)a3;
+ (id)cellModelForSharedTripSummary:(id)a3;
+ (id)cellModelForTransitLine:(id)a3;
+ (id)cellModelForUGCSuggestionContentType:(int64_t)a3 visitDate:(id)a4;
+ (id)cellModelForVisitedPlacesWithTitle:(id)a3 subTitle:(id)a4 imageSymbol:(id)a5;
+ (id)libraryCellModelForMapItem:(id)a3 customName:(id)a4 styleAttributes:(id)a5 thirdLineViewModel:(id)a6 menuProvider:(id)a7;
@end

@implementation TwoLinesContentViewModelComposer

+ (id)cellModelForVisitedPlacesWithTitle:(id)a3 subTitle:(id)a4 imageSymbol:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [_BasicTwoLinesContentViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C47F3C;
  v15[3] = &unk_10164E908;
  v16 = v7;
  v11 = v7;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:v9 subtitleText:v8 imageCreationBlock:v15];

  [(_BasicTwoLinesContentViewModel *)v12 setImageStyle:0];
  v13 = [(_BasicTwoLinesContentViewModel *)v12 titleText];
  [(_BasicTwoLinesContentViewModel *)v12 setAccessibilityLabel:v13];

  return v12;
}

+ (id)cellModelForSavedRouteOfflineRegion:(id)a3 coveredByExistingSubscription:(id)a4
{
  v4 = a3;
  v5 = [_BasicTwoLinesContentViewModel alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_ALREADY_DOWNLOADED" value:@"localized string not found" table:@"Offline"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_ALREADY_DOWNLOADED" value:@"localized string not found" table:@"Offline"];
  v10 = sub_100C481B0(v4);
  v11 = [(_BasicTwoLinesContentViewModel *)v5 initWithTitleText:v7 subtitleText:v9 cancelableImageCreationBlock:v10];

  sub_100C48254(v11, v4);
  [(_BasicTwoLinesContentViewModel *)v11 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v11 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v11 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v11 setAxIdentifier:@"OfflineMapDownloadCell"];
  v12 = [(_BasicTwoLinesContentViewModel *)v11 titleText];
  [(_BasicTwoLinesContentViewModel *)v11 setAccessibilityLabel:v12];

  return v11;
}

+ (id)cellModelForSavedRouteUnavailableOfflineRegion:(id)a3
{
  v3 = a3;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(v3);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, v3);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setDisabled:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  v11 = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:v11];

  return v10;
}

+ (id)cellModelForSavedRouteCalculatingFailureForOfflineRegion:(id)a3
{
  v3 = a3;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_ERROR" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(v3);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, v3);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setDisabled:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  v11 = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:v11];

  return v10;
}

+ (id)cellModelForSavedRouteCalculatingOfflineRegion:(id)a3
{
  v3 = a3;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_CALCULATING" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(v3);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, v3);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  v11 = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:v11];

  return v10;
}

+ (id)cellModelForSavedRouteOfflineDownload:(id)a3 estimatedSizeInBytes:(int64_t)a4
{
  v5 = a3;
  v6 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:a4];
  v7 = [_BasicTwoLinesContentViewModel alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE" value:@"localized string not found" table:@"Offline"];
  v10 = sub_100C481B0(v5);
  v11 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:v9 subtitleText:v6 cancelableImageCreationBlock:v10];

  sub_100C48254(v11, v5);
  [(_BasicTwoLinesContentViewModel *)v11 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v11 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v11 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v11 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v11 setAxIdentifier:@"OfflineMapDownloadCell"];
  v12 = [(_BasicTwoLinesContentViewModel *)v11 titleText];
  [(_BasicTwoLinesContentViewModel *)v11 setAccessibilityLabel:v12];

  return v11;
}

+ (id)cellModelForExpiredOfflineMapSubscription:(id)a3 isAvailable:(BOOL)a4 isSupportedOSVersion:(BOOL)a5 downloadBlock:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [v9 displayName];
  if ([v11 length])
  {
    v12 = [v9 displayName];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v12 = [v13 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  if (!v8)
  {
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (v7)
    {
      v24 = @"Not Available [List]";
    }

    else
    {
      v24 = @"Update OS to Restore [List]";
    }

    v18 = [v22 localizedStringForKey:v24 value:@"localized string not found" table:@"Offline"];

    MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled();
    goto LABEL_14;
  }

  IsEnabled_OfflineMapsUIEnhancementsEnabled = MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled();
  v15 = +[NSBundle mainBundle];
  v16 = v15;
  if (IsEnabled_OfflineMapsUIEnhancementsEnabled)
  {
    v17 = @"Update required [subscription cell subtitle]";
  }

  else
  {
    v17 = @"Tap to update [List]";
  }

  v18 = [v15 localizedStringForKey:v17 value:@"localized string not found" table:@"Offline"];

  if (MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled())
  {
LABEL_14:
    v21 = !v8;
    v25 = [v9 region];
    v26 = sub_100C481B0(v25);

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100C491F0;
    v43[3] = &unk_10164EBE8;
    v44 = v26;
    v27 = v26;
    v20 = objc_retainBlock(v43);

    goto LABEL_15;
  }

  v19 = [v9 region];
  v20 = sub_100C481B0(v19);

  v21 = 0;
LABEL_15:
  v28 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v12 subtitleText:v18 cancelableImageCreationBlock:v20];
  v29 = [v9 region];
  sub_100C48254(v28, v29);

  [(_BasicTwoLinesContentViewModel *)v28 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v28 setAxIdentifier:@"ExpiredOfflineMapSubscription"];
  [(_BasicTwoLinesContentViewModel *)v28 setAccessibilityLabel:v12];
  [(_BasicTwoLinesContentViewModel *)v28 setDisabled:v21];
  [(_BasicTwoLinesContentViewModel *)v28 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v28 setSubtitleUsesMonospacedNumbers:1];
  v30 = MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled();
  if (!v21 && v30)
  {
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100C492C4;
    v41 = &unk_101661C18;
    v42 = v10;
    v31 = [UIAction actionWithHandler:&v38];
    v32 = [UIButton buttonWithType:0 primaryAction:v31, v38, v39, v40, v41];

    v33 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v34 = [UIImage systemImageNamed:@"arrow.down.circle" withConfiguration:v33];
    [v32 setImage:v34 forState:0];

    [v32 setAccessibilityIdentifier:@"DownloadExpiredOfflineMap"];
    v35 = [[UICellAccessoryCustomView alloc] initWithCustomView:v32 placement:1];
    v45 = v35;
    v36 = [NSArray arrayWithObjects:&v45 count:1];
    [(_BasicTwoLinesContentViewModel *)v28 setCellAccessories:v36];
  }

  return v28;
}

+ (id)cellModelForOfflineMapSuggestion:(id)a3 downloadBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_BasicTwoLinesContentViewModel alloc];
  v8 = [v6 regionName];
  v9 = [v6 suggestionSubtitle];
  v10 = [v6 mapRegion];
  v11 = sub_100C481B0(v10);
  v12 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:v8 subtitleText:v9 cancelableImageCreationBlock:v11];

  v13 = [v6 mapRegion];

  sub_100C48254(v12, v13);
  [(_BasicTwoLinesContentViewModel *)v12 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v12 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v12 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v12 setAxIdentifier:@"OfflineMapSuggestionCell"];
  v14 = [(_BasicTwoLinesContentViewModel *)v12 titleText];
  [(_BasicTwoLinesContentViewModel *)v12 setAccessibilityLabel:v14];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C49A5C;
  v23[3] = &unk_101661C18;
  v24 = v5;
  v15 = v5;
  v16 = [UIAction actionWithHandler:v23];
  v17 = [UIButton buttonWithType:0 primaryAction:v16];

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
  v19 = [UIImage systemImageNamed:@"arrow.down.circle" withConfiguration:v18];
  [v17 setImage:v19 forState:0];

  [v17 setAccessibilityIdentifier:@"DownloadSuggestedMap"];
  v20 = [[UICellAccessoryCustomView alloc] initWithCustomView:v17 placement:1];
  v25 = v20;
  v21 = [NSArray arrayWithObjects:&v25 count:1];
  [(_BasicTwoLinesContentViewModel *)v12 setCellAccessories:v21];

  return v12;
}

+ (id)cellModelForOfflineMapSubscriptionInfo:(id)a3 cancelDownloadBlock:(id)a4 resumeDownloadBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 subscription];
  v11 = [v10 displayName];
  if ([v11 length])
  {
    v12 = [v7 subscription];
    [v12 displayName];
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    [v12 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }
  v13 = ;

  v14 = [_OfflineMapSubscriptionTwoLinesContentViewModel alloc];
  v15 = [v7 subscription];
  v16 = [v15 region];
  v17 = sub_100C481B0(v16);
  v18 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v14 initWithTitleText:v13 subtitleText:0 cancelableImageCreationBlock:v17];

  v19 = [v7 subscription];
  v20 = [v19 region];
  sub_100C48254(v18, v20);

  [(_BasicTwoLinesContentViewModel *)v18 setImageCreationCanBeCached:1];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setSubscriptionInfo:v7];
  v21 = [v9 copy];

  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setCancelDownloadBlock:v21];
  v22 = [v8 copy];

  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setResumeDownloadBlock:v22];
  [(_BasicTwoLinesContentViewModel *)v18 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v18 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"OfflineMapSubscriptionCell"];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setAccessibilityLabel:v13];

  return v18;
}

+ (id)cellModelForUGCSuggestionContentType:(int64_t)a3 visitDate:(id)a4
{
  v5 = a4;
  v6 = &stru_1016631F0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v19 = +[NSBundle mainBundle];
      v7 = [v19 localizedStringForKey:@"[UGC] Add Your Photos to Maps" value:@"localized string not found" table:0];

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"[UGC] You took photos here";
    }

    else
    {
      v7 = &stru_1016631F0;
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v12 = +[NSBundle mainBundle];
      v7 = [v12 localizedStringForKey:@"[UGC] Rate This Place" value:@"localized string not found" table:0];

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"[UGC] In your Favorites";
    }

    goto LABEL_13;
  }

  if (a3 == 3)
  {
    v13 = +[NSBundle mainBundle];
    v7 = [v13 localizedStringForKey:@"[UGC] Rate This Place" value:@"localized string not found" table:0];

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"[UGC] It’s pinned.";
LABEL_13:
    v6 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    v7 = &stru_1016631F0;
    if (a3 != 5)
    {
      goto LABEL_15;
    }

    v8 = +[NSBundle mainBundle];
    v7 = [v8 localizedStringForKey:@"[UGC] Rate This Place" value:@"localized string not found" table:0];

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"[UGC] You’re nearby";
    goto LABEL_13;
  }

  v14 = +[NSBundle mainBundle];
  v7 = [v14 localizedStringForKey:@"[UGC] Rate This Place" value:@"localized string not found" table:0];

  if (!v5)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc_init(NSRelativeDateTimeFormatter);
  [v10 setDateTimeStyle:1];
  [v10 setUnitsStyle:0];
  [v10 setFormattingContext:1];
  v15 = +[NSDate date];
  v16 = [v10 localizedStringForDate:v5 relativeToDate:v15];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"[UGC] Visited" value:@"localized string not found" table:0];
  v6 = [NSString stringWithFormat:v18, v16];

LABEL_14:
LABEL_15:
  v20 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v7 subtitleText:v6 imageCreationBlock:&stru_10164EB28];
  [(_BasicTwoLinesContentViewModel *)v20 setImageStyle:0];

  return v20;
}

+ (id)_convertSymbolToIconImage:(id)a3 RAPType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v7 setIconSize:30.0, 30.0];
  v8 = +[UIColor whiteColor];
  [(ImageIconWithBackgroundConfiguration *)v7 setTintColor:v8];

  v9 = [a1 backgroundColorForRAPType:v4];
  [(ImageIconWithBackgroundConfiguration *)v7 setBackgroundColor:v9];

  [(ImageIconWithBackgroundConfiguration *)v7 setCornerRadius:15.0];
  v10 = [v6 _maps_imageIconWithBackgroundConfiguration:v7];

  return v10;
}

+ (id)backgroundColorForRAPType:(int)a3
{
  v5 = a3 - 8;
  if (a3 - 8) <= 9 && ((0x283u >> v5))
  {
    v6 = [UIColor colorNamed:*(&off_10164ECE8 + v5), v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cellModelForRAPReportsHistory:(id)a3 allowDisclosureIndicator:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 mapItem];
  if (v7 && (v8 = v7, [v6 mapItem], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = [v6 mapItem];
    v12 = [v11 name];
  }

  else
  {
    v12 = [v6 reportTitle];
  }

  v13 = objc_opt_new();
  v14 = [v6 reportSummary];
  v15 = [v6 dateOfReportCreation];
  v16 = [NSDateFormatter _maps_abbreviatedDateStringWithoutYearForDate:v15];

  if ([v16 length])
  {
    [v13 addObject:v16];
  }

  if ([v14 length])
  {
    [v13 addObject:v14];
  }

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v19 = [v13 componentsJoinedByString:v18];

  v20 = [_BasicTwoLinesContentViewModel alloc];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100C4B648;
  v31 = &unk_10164EB08;
  v21 = v6;
  v32 = v21;
  v33 = a1;
  v22 = [(_BasicTwoLinesContentViewModel *)v20 initWithTitleText:v12 subtitleText:v19 imageCreationBlock:&v28];
  v23 = [a1 backgroundColorForRAPType:{objc_msgSend(v21, "reportType", v28, v29, v30, v31)}];
  [(_BasicTwoLinesContentViewModel *)v22 setLeadingImageBackgroundColor:v23];

  [(_BasicTwoLinesContentViewModel *)v22 setImageStyle:0];
  v24 = +[UIColor whiteColor];
  [(_BasicTwoLinesContentViewModel *)v22 setLeftImageTintColor:v24];

  [(_BasicTwoLinesContentViewModel *)v22 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v22 setAxIdentifier:@"ReportAProblemHistoryCell"];
  if (v4 && ([v21 reportStatus] == 2 || objc_msgSend(v21, "reportStatus") == 1))
  {
    v25 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    v34 = v25;
    v26 = [NSArray arrayWithObjects:&v34 count:1];
    [(_BasicTwoLinesContentViewModel *)v22 setCellAccessories:v26];
  }

  return v22;
}

+ (id)cellModelForRatingsHistory:(id)a3
{
  v3 = a3;
  v4 = [v3 mapItem];
  v5 = [v4 name];

  v49 = objc_alloc_init(NSMutableAttributedString);
  v6 = objc_alloc_init(NSMutableAttributedString);
  v7 = objc_alloc_init(NSMutableAttributedString);
  v8 = +[NSBundle mainBundle];
  v50 = [v8 localizedStringForKey:@"[Ratings History] Your rating" value:@"localized string not found" table:0];

  v9 = [v3 reviewedPlace];
  v10 = [v9 recommendState];

  if (v10)
  {
    v48 = v5;
    if (v10 == 2)
    {
      v11 = @"hand.thumbsup.fill";
    }

    else
    {
      if (v10 != 1)
      {
        v12 = 0;
        goto LABEL_8;
      }

      v11 = @"hand.thumbsdown.fill";
    }

    v12 = [UIImage systemImageNamed:v11];
LABEL_8:
    v13 = +[UIColor secondaryLabelColor];
    v14 = [v12 imageWithTintColor:v13];

    v15 = objc_alloc_init(NSTextAttachment);
    v16 = +[UIFont system15];
    [v16 pointSize];
    v17 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:1 scale:?];
    v18 = [v14 imageWithConfiguration:v17];
    v19 = [v18 imageWithRenderingMode:2];
    [v15 setImage:v19];

    v20 = [NSAttributedString attributedStringWithAttachment:v15];
    [v7 appendAttributedString:v20];

    v21 = [[NSAttributedString alloc] initWithString:v50];
    [v7 appendAttributedString:v21];

    v5 = v48;
  }

  v22 = [v3 reviewedPlace];
  v23 = [v22 numberOfPhotosAdded];

  if (!v10 && v23)
  {
    v24 = [UIImage systemImageNamed:@"camera.fill"];
    v25 = +[UIColor secondaryLabelColor];
    v47 = [v24 imageWithTintColor:v25];

    v26 = objc_alloc_init(NSTextAttachment);
    v27 = +[UIFont system15];
    [v27 pointSize];
    v28 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:1 scale:?];
    v29 = [v47 imageWithConfiguration:v28];
    v30 = [v29 imageWithRenderingMode:2];
    [v26 setImage:v30];

    v31 = [NSAttributedString attributedStringWithAttachment:v26];
    [v6 appendAttributedString:v31];

    v32 = [[NSAttributedString alloc] initWithString:@" "];
    [v6 appendAttributedString:v32];
  }

  v33 = +[NSBundle mainBundle];
  v34 = [v33 localizedStringForKey:@"[Ratings History] # of photos ratings cell subtitle" value:@"localized string not found" table:0];

  v35 = [NSMutableAttributedString alloc];
  v36 = [v3 reviewedPlace];
  v37 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v34, [v36 numberOfPhotosAdded]);
  v38 = [v35 initWithString:v37];
  [v6 appendAttributedString:v38];

  if ([v7 length])
  {
    [v49 appendAttributedString:v7];
  }

  if ([v6 length])
  {
    if ([v7 length])
    {
      v39 = [NSAttributedString alloc];
      v40 = +[NSBundle mainBundle];
      v41 = [v40 localizedStringForKey:@" • " value:@"localized string not found" table:0];
      v42 = [v39 initWithString:v41];
      [v49 appendAttributedString:v42];
    }

    [v49 appendAttributedString:v6];
  }

  v43 = [_BasicTwoLinesContentViewModel alloc];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100C4C06C;
  v51[3] = &unk_10164E908;
  v52 = v3;
  v44 = v3;
  v45 = [(_BasicTwoLinesContentViewModel *)v43 initWithTitleText:v5 subtitleText:0 imageCreationBlock:v51];
  [(_BasicTwoLinesContentViewModel *)v45 setAttributedSubtitleText:v49];
  [(_BasicTwoLinesContentViewModel *)v45 setAxIdentifier:@"RatingsHistoryCell"];

  return v45;
}

+ (id)cellModelForSearchHomeRecentSearch:(id)a3
{
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100C4C44C;
  v27 = sub_100C4C45C;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100C4C44C;
  v21 = sub_100C4C45C;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100C4C44C;
  v15[4] = sub_100C4C45C;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100C4C44C;
  v13[4] = sub_100C4C45C;
  v14 = 0;
  v4 = [v3 historyEntry];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C4C464;
  v12[3] = &unk_10164EA90;
  v12[4] = &v23;
  v12[5] = &v17;
  v12[6] = v15;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C4C510;
  v11[3] = &unk_10164EAB8;
  v11[4] = &v23;
  v11[5] = &v17;
  v11[6] = v13;
  [v4 ifSearch:v12 ifRoute:0 ifPlaceDisplay:v11 ifTransitLineItem:0];

  v5 = [_BasicTwoLinesContentViewModel alloc];
  v6 = v24[5];
  v7 = v18[5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C4C694;
  v10[3] = &unk_10164EAE0;
  v10[4] = v15;
  v10[5] = v13;
  v8 = [(_BasicTwoLinesContentViewModel *)v5 initWithTitleText:v6 subtitleText:v7 imageCreationBlock:v10];
  [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"SearchHomeRecentSearchCell"];
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v8;
}

+ (id)cellModelForPublisher:(id)a3 showDisclosureIndicator:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 publisherAttribution];
  v7 = [v6 displayName];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Curated Collections] %lu Guides" value:@"localized string not found" table:0];
  v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, [v5 totalCollectionCount]);

  v11 = [_BasicTwoLinesContentViewModel alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100C4C9E4;
  v19[3] = &unk_10164E908;
  v12 = v5;
  v20 = v12;
  v13 = [(_BasicTwoLinesContentViewModel *)v11 initWithTitleText:v7 subtitleText:v10 imageCreationBlock:v19];
  [(_BasicTwoLinesContentViewModel *)v13 setImageStyle:1];
  if (v4)
  {
    v14 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    v15 = +[UIColor tertiaryLabelColor];
    [v14 setTintColor:v15];

    v21 = v14;
    v16 = [NSArray arrayWithObjects:&v21 count:1];
    [(_BasicTwoLinesContentViewModel *)v13 setCellAccessories:v16];
  }

  [(_BasicTwoLinesContentViewModel *)v13 setPublisher:v12];
  v17 = +[UIFont system17SemiBold];
  [(_BasicTwoLinesContentViewModel *)v13 setTitleTextFont:v17];

  [(_BasicTwoLinesContentViewModel *)v13 setAxIdentifier:@"PublisherCell"];

  return v13;
}

+ (id)cellModelForLocationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 locationName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 locationName];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  v7 = [v3 localityName];
  v8 = [v7 length];

  if (v8)
  {
    if ([(__CFString *)v6 length])
    {
      v9 = [(__CFString *)v6 stringByAppendingString:@", "];

      v6 = v9;
    }

    v10 = [v3 localityName];
    v11 = [(__CFString *)v6 stringByAppendingString:v10];

    v6 = v11;
  }

  v12 = [_BasicTwoLinesContentViewModel alloc];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"[LookAround Rap]" value:@"localized string not found" table:0];
  v15 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:v14 subtitleText:v6 imageCreationBlock:&stru_10164EA68];

  [(_BasicTwoLinesContentViewModel *)v15 setImageStyle:0];
  v16 = +[UIColor systemBlueColor];
  [(_BasicTwoLinesContentViewModel *)v15 setLeftImageTintColor:v16];

  [(_BasicTwoLinesContentViewModel *)v15 setAxIdentifier:@"LookAroundCell"];

  return v15;
}

+ (id)cellModelForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [v4 listCellTitle];
  v6 = [v4 listCellSubtitle];
  v7 = [NSMutableArray arrayWithCapacity:2];
  if ([v6 length])
  {
    [v7 addObject:v6];
  }

  v8 = [a1 _delimiterString];
  v9 = [v7 componentsJoinedByString:v8];

  v10 = [_BasicTwoLinesContentViewModel alloc];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100C4CEC0;
  v19 = &unk_10164E908;
  v20 = v4;
  v11 = v4;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:v5 subtitleText:v9 imageCreationBlock:&v16];
  v13 = [v11 groupIdentifier];
  v14 = [NSString stringWithFormat:@"SharedTripCell.%@", v13, v16, v17, v18, v19];
  [(_BasicTwoLinesContentViewModel *)v12 setAxIdentifier:v14];

  return v12;
}

+ (id)cellModelForSharedTripSummary:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 subtitle];
  v6 = [_BasicTwoLinesContentViewModel alloc];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100C4D278;
  v18 = &unk_10164E908;
  v7 = v3;
  v19 = v7;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:v4 subtitleText:v5 imageCreationBlock:&v15];
  v9 = [v7 sharedTrips];
  if ([v9 count] == 1)
  {
    v10 = [v7 sharedTrips];
    v11 = [v10 firstObject];
    v12 = [v11 groupIdentifier];
    v13 = [NSString stringWithFormat:@"SharedTripSummaryCell.%@", v12, v15, v16, v17, v18];
    [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:v13];
  }

  else
  {
    [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"SharedTripSummaryCell"];
  }

  return v8;
}

+ (id)_cellModelForHistoryEntryCuratedCollection:(id)a3
{
  v4 = [a3 historyEntry];
  v5 = [v4 placeCollection];

  v6 = [v5 publisherAttribution];
  v7 = [v6 displayName];

  v8 = [NSMutableArray arrayWithCapacity:2];
  if ([v7 length])
  {
    [v8 addObject:v7];
  }

  v9 = [v5 numberOfItems];
  if (v9)
  {
    v10 = v9;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
    [v8 addObject:v13];
  }

  if ([a1 userInterfaceLayoutDirectionIsRTL])
  {
    v14 = [v8 reverseObjectEnumerator];
    v15 = [v14 allObjects];
    v16 = [v15 mutableCopy];

    v8 = v16;
  }

  v17 = [a1 _delimiterString];
  v18 = [v8 componentsJoinedByString:v17];

  v19 = [_BasicTwoLinesContentViewModel alloc];
  v20 = [v5 collectionTitle];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100C4D774;
  v24[3] = &unk_10164E908;
  v25 = v5;
  v21 = v5;
  v22 = [(_BasicTwoLinesContentViewModel *)v19 initWithTitleText:v20 subtitleText:v18 imageCreationBlock:v24];

  [(_BasicTwoLinesContentViewModel *)v22 setImageStyle:3];
  [(_BasicTwoLinesContentViewModel *)v22 setAxIdentifier:@"CuratedGuideCell"];

  return v22;
}

+ (id)_cellModelForHistoryEntryTransitLineItem:(id)a3
{
  v4 = [a3 historyEntry];
  v5 = [v4 lineItem];

  v6 = [a1 cellModelForTransitLine:v5];

  return v6;
}

+ (id)_cellModelForHistoryEntrySearch:(id)a3 showAutocompleteClientSource:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 historyEntry];
  v8 = [v7 query];

  v9 = +[NSMutableArray array];
  if (v4)
  {
    v10 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:1];
    if ([v10 length])
    {
      [v9 addObject:v10];
    }
  }

  v11 = [v6 historyEntry];
  v12 = [v11 locationDisplayString];

  if ([v12 length])
  {
    [v9 addObject:v12];
  }

  if ([a1 userInterfaceLayoutDirectionIsRTL])
  {
    v13 = [v9 reverseObjectEnumerator];
    v14 = [v13 allObjects];
    v15 = [v14 mutableCopy];

    v9 = v15;
  }

  v16 = [a1 _delimiterString];
  v17 = [v9 componentsJoinedByString:v16];

  v18 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v8 subtitleText:v17 imageCreationBlock:&stru_10164EA48];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"RecentSearchCell"];

  return v18;
}

+ (id)_cellModelForHistoryEntryPlace:(id)a3 showAutocompleteClientSource:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 historyEntry];
  v7 = [v6 geoMapItem];

  v8 = [MKMapItem _itemWithGeoMapItem:v7];
  v9 = [v8 name];
  v10 = +[NSMutableArray array];
  if (v4)
  {
    v11 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:2];
    if ([v11 length])
    {
      [v10 addObject:v11];
    }
  }

  if ([v8 _venueFeatureType] == 4)
  {
    v12 = [v8 venueLabelWithContext:2];
    v13 = [v8 _venueInfo];
    v14 = [v13 parent];
    v15 = [v14 featureType];

    if (v15 != 2)
    {
      v16 = [v8 _geoMapItem];
      v17 = [v16 addressObject];
      v18 = [v17 venueShortAddress];

      v19 = [v18 length];
      v20 = v18;
      if (v19 || (v21 = [v12 length], v20 = v12, v21))
      {
        [v10 addObject:v20];
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = [v8 _addressFormattedAsShortenedAddress];
    if ([v8 _isMapItemTypeAddress] && objc_msgSend(v12, "containsString:", v9))
    {
      v22 = [v8 _geoAddress];
      v23 = [v22 structuredAddress];
      v24 = [v23 locality];
    }

    else
    {
      v25 = [v9 uppercaseString];
      v26 = [v12 uppercaseString];
      v27 = [v25 isEqualToString:v26];

      if (!v27)
      {
        goto LABEL_17;
      }

      v22 = [v8 _geoAddress];
      v23 = [v22 structuredAddress];
      v24 = [v23 _cellContent_subtitleWithTitle:v9];
    }

    v28 = v24;

    v12 = v28;
  }

LABEL_17:
  if ([v12 length])
  {
    [v10 addObject:v12];
  }

LABEL_19:

  if ([a1 userInterfaceLayoutDirectionIsRTL])
  {
    v29 = [v10 reverseObjectEnumerator];
    v30 = [v29 allObjects];
    v31 = [v30 mutableCopy];

    v10 = v31;
  }

  v32 = [a1 _delimiterString];
  v33 = [v10 componentsJoinedByString:v32];

  v34 = [_BasicTwoLinesContentViewModel alloc];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100C4E05C;
  v44[3] = &unk_10164E908;
  v45 = v8;
  v35 = v8;
  v36 = [(_BasicTwoLinesContentViewModel *)v34 initWithTitleText:v9 subtitleText:v33 imageCreationBlock:v44];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_100C4E11C;
  v42 = &unk_10164E958;
  v43 = v7;
  v37 = v7;
  [(_BasicTwoLinesContentViewModel *)v36 setPersonalizedItemForQuickActionMenuCreator:&v39];
  [(_BasicTwoLinesContentViewModel *)v36 setAxIdentifier:@"RecentPlaceCell", v39, v40, v41, v42];

  return v36;
}

+ (id)_cellModelForRouteName:(id)a3 persistentData:(id)a4 thirdLineViewModel:(id)a5 menuProvider:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v12 subtitleText:0 imageCreationBlock:&stru_10164EA28];

  v14 = [v11 distanceAndElevationDescriptionStringWithAttributes:&__NSDictionary0__struct];

  v15 = [v14 attributedString];
  [(_BasicTwoLinesContentViewModel *)v13 setAttributedSubtitleText:v15];

  [(_BasicTwoLinesContentViewModel *)v13 setPlaceContextViewModel:v10];
  [(_BasicTwoLinesContentViewModel *)v13 setAxIdentifier:@"RecentCustomRouteCell"];
  if (v9)
  {
    v16 = [UIButton buttonWithType:0];
    v17 = [UIImage systemImageNamed:@"ellipsis"];
    [v16 setImage:v17 forState:0];

    [v16 setShowsMenuAsPrimaryAction:1];
    [v16 _setMenuProvider:v9];
    [v16 setAccessibilityIdentifier:@"RecentCustomRouteCellMoreButton"];
    v18 = +[UIColor labelColor];
    [v16 setTintColor:v18];

    v19 = [[UICellAccessoryCustomView alloc] initWithCustomView:v16 placement:1];
    v20 = objc_alloc_init(UICellAccessoryMultiselect);
    [v20 setDisplayedState:1];
    v23[0] = v19;
    v23[1] = v20;
    v21 = [NSArray arrayWithObjects:v23 count:2];
    [(_BasicTwoLinesContentViewModel *)v13 setCellAccessories:v21];
  }

  return v13;
}

+ (id)cellModelForRouteData:(id)a3 thirdLineViewModel:(id)a4 menuProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 userProvidedName];
  if ([v11 length])
  {
    [v8 userProvidedName];
  }

  else
  {
    [v8 routeName];
  }
  v12 = ;

  v13 = [a1 _cellModelForRouteName:v12 persistentData:v8 thirdLineViewModel:v10 menuProvider:v9];

  return v13;
}

+ (id)_cellModelForComposedWaypointToRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 route];

  v7 = [v6 persistentData];
  v8 = [a1 _cellModelForRouteName:v5 persistentData:v7 thirdLineViewModel:0 menuProvider:0];

  return v8;
}

+ (id)_cellModelForHistoryEntryRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 historyEntry];
  v6 = [v5 endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 historyEntry];
    v9 = [v8 endWaypoint];
    v10 = [a1 _cellModelForComposedWaypointToRoute:v9];
    goto LABEL_20;
  }

  v39 = 0;
  v40 = 0;
  v11 = [v4 historyEntry];
  [SearchResult newStartWaypointSearchResult:&v40 endWaypointSearchResult:&v39 forRouteHistoryEntry:v11];
  v8 = v40;
  v9 = v39;

  if ([v9 isAddressBookResult])
  {
    v12 = [v9 address];
    v13 = [v12 waypointCompositeName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v9 title];
    }

    v16 = v15;
  }

  else
  {
    v16 = [v9 title];
  }

  if ([v8 isDynamicCurrentLocation])
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"From_my_location_recents_cell_subtitle";
LABEL_14:
    v24 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:0];
    goto LABEL_15;
  }

  v20 = [v8 name];
  v21 = [v20 length];

  if (!v21)
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"From_unknown_location_recents_cell_subtitle";
    goto LABEL_14;
  }

  v18 = +[NSBundle mainBundle];
  v22 = [v18 localizedStringForKey:@"From_in_cell" value:@"localized string not found" table:0];
  v23 = [v8 name];
  v24 = [NSString stringWithFormat:v22, v23];

LABEL_15:
  v25 = [v4 historyEntry];
  v26 = [v25 waypoints];
  v27 = [v26 count];

  if (v27 >= 3)
  {
    v38 = v16;
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"count_of_stops" value:@"localized string not found" table:0];
    v30 = [NSString localizedStringWithFormat:v29, v27 - 2];

    v31 = [NSMutableArray arrayWithCapacity:2];
    [v31 addObject:v24];
    [v31 addObject:v30];
    if ([a1 userInterfaceLayoutDirectionIsRTL])
    {
      v32 = [v31 reverseObjectEnumerator];
      v33 = [v32 allObjects];
      v34 = [v33 mutableCopy];

      v31 = v34;
    }

    v35 = [a1 _delimiterString];
    v36 = [v31 componentsJoinedByString:v35];

    v24 = v36;
    v16 = v38;
  }

  v10 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v16 subtitleText:v24 imageCreationBlock:&stru_10164EA08];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"RecentRouteCell"];

LABEL_20:

  return v10;
}

+ (id)cellModelForHistoryEntryRecentsItem:(id)a3 showAutocompleteClientSource:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 && ([v9 historyEntry], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", v6), v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntryRoute:v7];
LABEL_46:
    v46 = v13;
    goto LABEL_47;
  }

  v14 = v7;
  v15 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v16 = v14;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18 && ([v18 historyEntry], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "conformsToProtocol:", v15), v19, v20))
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntryPlace:v16 showAutocompleteClientSource:v4];
    goto LABEL_46;
  }

  v22 = v16;
  v23 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
  objc_opt_class();
  v24 = v22;
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  if (v26 && ([v26 historyEntry], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "conformsToProtocol:", v23), v27, v28))
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntrySearch:v24 showAutocompleteClientSource:v4];
    goto LABEL_46;
  }

  v30 = v24;
  v31 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
  objc_opt_class();
  v32 = v30;
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34 && ([v34 historyEntry], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "conformsToProtocol:", v31), v35, v36))
  {
    v37 = v32;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntryTransitLineItem:v32];
    goto LABEL_46;
  }

  v38 = v32;
  v39 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
  objc_opt_class();
  v40 = v38;
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  if (v42 && ([v42 historyEntry], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "conformsToProtocol:", v39), v43, v44))
  {
    v45 = v40;
  }

  else
  {
    v45 = 0;
  }

  if (v45)
  {
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntryCuratedCollection:v40];
    goto LABEL_46;
  }

  v46 = 0;
LABEL_47:

  return v46;
}

+ (id)cellModelForRecentContact:(id)a3 showAutocompleteClientSource:(BOOL)a4 autocompleteClientSourceType:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 metadata];
  v9 = [v8 objectForKeyedSubscript:CRRecentContactMetadataFrom];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v10 = [v9 objectForKeyedSubscript:CRRecentContactMetadataFromDisplayName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v9 objectForKeyedSubscript:CRRecentContactMetadataFromAddress];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v9 objectForKeyedSubscript:CRRecentContactMetadataFromAddressKind];

  if ([v15 isEqual:CRAddressKindEmail])
  {
    v16 = &CNContactEmailAddressesKey;
  }

  else
  {
    if (![v15 isEqual:CRAddressKindPhoneNumber])
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = &CNContactPhoneNumbersKey;
  }

  v17 = *v16;
  if (!v14 || (+[AddressBookManager sharedManager](AddressBookManager, "sharedManager"), v18 = objc_claimAutoreleasedReturnValue(), [v18 senderNameForAddress:v14 ofType:v17], v12 = objc_claimAutoreleasedReturnValue(), v18, !v12))
  {
LABEL_17:
    if ([v11 length])
    {
      v19 = v11;
    }

    else
    {
      v19 = 0;
    }

    v12 = v19;
  }

LABEL_22:
  v20 = [v7 address];
  if (v6)
  {
    v21 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:a5 contactName:v11];
LABEL_26:

    goto LABEL_27;
  }

  if (v12)
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"From_Subtitle_CRRecentContact newUI" value:@"localized string not found" table:0];

    v21 = [NSString stringWithFormat:v23, v12];

    v12 = v23;
    goto LABEL_26;
  }

  v21 = 0;
LABEL_27:
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100C4F270;
  v26[3] = &unk_10164E9E8;
  v27 = v6;
  v26[4] = a5;
  v24 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v20 subtitleText:v21 imageCreationBlock:v26];
  [(_BasicTwoLinesContentViewModel *)v24 setAxIdentifier:@"RecentContactCell"];

  return v24;
}

+ (id)cellModelForOfflineRegionLocalSearchCompletion:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 titleHighlightRanges];
  v6 = [v3 subtitle];
  v7 = [v3 subtitleHighlightRanges];
  v8 = [v3 _supportsOfflineDownload];
  if ((v8 & 1) == 0)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Offline map unavailable [autocomplete]" value:@"localized string not found" table:@"Offline"];

    v7 = 0;
    v6 = v10;
  }

  v11 = [_SearchResultTwoLinesContentViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C4F558;
  v15[3] = &unk_10164E908;
  v16 = v3;
  v12 = v3;
  v13 = [(_BasicTwoLinesContentViewModel *)v11 initWithTitleText:v4 subtitleText:v6 imageCreationBlock:v15];
  [(_BasicTwoLinesContentViewModel *)v13 setTitleHighlightRanges:v5];
  [(_BasicTwoLinesContentViewModel *)v13 setSubtitleHighlightRanges:v7];
  [(_BasicTwoLinesContentViewModel *)v13 setDisabled:v8 ^ 1];
  [(_BasicTwoLinesContentViewModel *)v13 setAxIdentifier:@"LocalSearchCompletionCell"];

  return v13;
}

+ (id)cellModelForLocalSearchCompletion:(id)a3 userLocationSearchResult:(id)a4 autocompleteClientSourceType:(int64_t)a5
{
  v8 = a3;
  v83 = a4;
  v9 = [v8 title];
  v10 = [v8 titleHighlightRanges];
  v11 = [v8 subtitle];
  v85 = [v8 subtitleHighlightRanges];
  v12 = [v8 category];

  if (v12)
  {
    v81 = [v8 category];
  }

  else
  {
    v81 = 0;
  }

  v13 = [v8 directionIntent];

  v76 = a1;
  if (v13)
  {
    v14 = [UIImage imageNamed:@"RouteAC"];
    v15 = [[DirectionIntentCellViewModel alloc] initWithLocalSearchCompletion:v8];
    v16 = [(DirectionIntentCellViewModel *)v15 titleCellString];

    v17 = [(DirectionIntentCellViewModel *)v15 subtitleCellString];

    v18 = 0;
    v19 = 0;
    v79 = 0;
    v11 = v17;
    v84 = v16;
    goto LABEL_37;
  }

  v20 = [v8 clientResolved];

  v84 = v9;
  if (v20)
  {
    v21 = [v8 clientResolved];
    v22 = [v21 itemType];

    v23 = 0;
    if (v22 <= 2)
    {
      if (v22 == 1)
      {
        v79 = +[GEOFeatureStyleAttributes homeStyleAttributes];
        v24 = +[AddressBookManager sharedManager];
        v25 = [v24 meCardHomeAddress];
        goto LABEL_30;
      }

      if (v22 == 2)
      {
        v79 = +[GEOFeatureStyleAttributes workStyleAttributes];
        v24 = +[AddressBookManager sharedManager];
        v25 = [v24 meCardWorkAddress];
        goto LABEL_30;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          v79 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
          if ([v11 length])
          {
            v23 = 0;
            v19 = 0;
            goto LABEL_32;
          }

          v74 = +[ParkedCarManager sharedManager];
          v24 = [v74 parkedCar];

          v75 = [v24 locationDisplayString];

          v23 = 0;
          v19 = 0;
          v85 = 0;
          v11 = v75;
          goto LABEL_31;
        case 4:
          v27 = [v11 length];
          if (v83 && !v27)
          {
            v28 = [v83 mapItem];
            v29 = [v28 _addressFormattedAsShortenedAddress];
            v30 = sub_100C47980(v29);
            v31 = v30;
            v32 = &stru_1016631F0;
            if (v30)
            {
              v32 = v30;
            }

            v33 = v32;

            v85 = 0;
            v11 = v33;
          }

          v24 = +[AddressBookManager sharedManager];
          v19 = [v24 meCard];
          v23 = 0;
          v79 = 0;
          goto LABEL_31;
        case 6:
          v79 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
          v24 = +[AddressBookManager sharedManager];
          v25 = [v24 meCardSchoolAddress];
LABEL_30:
          v23 = v25;
          v19 = 0;
LABEL_31:

          goto LABEL_32;
      }
    }

    v19 = 0;
    v79 = 0;
LABEL_32:
    if (![v11 length] && v23)
    {
      v34 = [v23 shortAddress];

      v85 = 0;
      v11 = v34;
    }

    v18 = 0;
    goto LABEL_36;
  }

  v26 = [v8 _type];
  v18 = 0;
  if (v26 <= 2)
  {
    if ((v26 - 1) < 2)
    {
      v79 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v18 = 0;
      v19 = 0;
LABEL_36:
      v14 = 0;
      goto LABEL_37;
    }

    if (!v26)
    {
      goto LABEL_57;
    }

    goto LABEL_20;
  }

  if (v26 != 4)
  {
    if (v26 == 3)
    {
LABEL_57:
      v14 = [UIImage imageNamed:@"search"];
      v18 = 0;
      v19 = 0;
      v79 = 0;
      goto LABEL_37;
    }

LABEL_20:
    v19 = 0;
    v79 = 0;
    v14 = 0;
    goto LABEL_37;
  }

  v82 = v11;
  v57 = [v8 collectionResult];
  v58 = [v57 collection];

  v59 = [NSMutableArray arrayWithCapacity:2];
  v60 = [v58 publisherAttribution];
  v61 = [v60 displayName];

  if ([v61 length])
  {
    [v59 addObject:v61];
  }

  v80 = v61;
  v62 = [v58 numberOfItems];
  if (v62)
  {
    v63 = v62;
    v64 = +[NSBundle mainBundle];
    v65 = [v64 localizedStringForKey:@"Places [Autocomplete]" value:@"localized string not found" table:0];
    v66 = [NSString localizedStringWithFormat:v65, v63];
    [v59 addObject:v66];
  }

  v67 = v10;
  if ([a1 userInterfaceLayoutDirectionIsRTL])
  {
    v68 = [v59 reverseObjectEnumerator];
    v69 = [v68 allObjects];
    v70 = [v69 mutableCopy];

    v59 = v70;
  }

  v71 = [a1 _delimiterString];
  v72 = [v59 componentsJoinedByString:v71];

  v73 = [v58 publisherAttribution];
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v73 iconIdentifier]);

  v19 = 0;
  v79 = 0;
  v14 = 0;
  v10 = v67;
  v11 = v72;
LABEL_37:
  v35 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:a5];
  v78 = v35;
  if ([v35 length])
  {
    v36 = [NSMutableArray arrayWithCapacity:2];
    [v36 addObject:v35];
    if ([v11 length])
    {
      [v36 addObject:v11];
    }

    v37 = v76;
    if ([v76 userInterfaceLayoutDirectionIsRTL])
    {
      v38 = [v36 reverseObjectEnumerator];
      v39 = [v38 allObjects];
      v40 = v11;
      v41 = [v39 mutableCopy];

      v37 = v76;
      v36 = v41;
      v11 = v40;
    }

    v42 = [v37 _delimiterString];
    v43 = [v36 componentsJoinedByString:v42];
  }

  else
  {
    v43 = v11;
  }

  v44 = [_SearchResultTwoLinesContentViewModel alloc];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100C50010;
  v88[3] = &unk_10164E9C8;
  v77 = v14;
  v89 = v77;
  v45 = v81;
  v90 = v45;
  v46 = v8;
  v91 = v46;
  v47 = v79;
  v92 = v47;
  v48 = v19;
  v93 = v48;
  v49 = v18;
  v94 = v49;
  v50 = [(_BasicTwoLinesContentViewModel *)v44 initWithTitleText:v84 subtitleText:v43 imageCreationBlock:v88];
  v51 = v10;
  [(_BasicTwoLinesContentViewModel *)v50 setTitleHighlightRanges:v10];
  [(_BasicTwoLinesContentViewModel *)v50 setSubtitleHighlightRanges:v85];
  v52 = [v46 clientResolved];
  if ([v52 itemType] == 4)
  {
    v53 = [v43 length];

    if (!v53)
    {
      [(_SearchResultTwoLinesContentViewModel *)v50 setObservedSearchResult:v83];
    }
  }

  else
  {
  }

  v54 = [v46 mapItem];
  v55 = v54;
  if (v54)
  {
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100C502FC;
    v86[3] = &unk_10164E958;
    v87 = v54;
    [(_BasicTwoLinesContentViewModel *)v50 setPersonalizedItemForQuickActionMenuCreator:v86];
  }

  if ([v46 _type] == 4)
  {
    [(_BasicTwoLinesContentViewModel *)v50 setImageStyle:2];
  }

  [(_BasicTwoLinesContentViewModel *)v50 setAxIdentifier:@"LocalSearchCompletionCell"];

  return v50;
}

+ (id)cellModelForParkedCar:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 locationDisplayString];

  v6 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v4 subtitleText:v5 imageCreationBlock:&stru_10164E9A0];
  [(_BasicTwoLinesContentViewModel *)v6 setAxIdentifier:@"ParkedCarCell"];

  return v6;
}

+ (id)_moreButtonAccessoryWithMenuProvider:(id)a3 axID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UIButton buttonWithType:0];
  v8 = [UIImage systemImageNamed:@"ellipsis"];
  [v7 setImage:v8 forState:0];

  v9 = +[UIColor labelColor];
  [v7 setTintColor:v9];

  [v7 setShowsMenuAsPrimaryAction:1];
  [v7 _setMenuProvider:v6];

  [v7 setAccessibilityIdentifier:v5];
  v10 = [[UICellAccessoryCustomView alloc] initWithCustomView:v7 placement:1];
  [v10 setDisplayedState:2];

  return v10;
}

+ (id)libraryCellModelForMapItem:(id)a3 customName:(id)a4 styleAttributes:(id)a5 thirdLineViewModel:(id)a6 menuProvider:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MKMapItem _itemWithGeoMapItem:a3];
  v17 = v16;
  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = [v16 name];
  }

  v37 = v18;
  v19 = +[NSMutableArray array];
  v20 = [v17 _firstLocalizedCategoryName];
  if (v20)
  {
    [v19 addObject:v20];
  }

  v21 = [v17 _geoMapItem];
  v22 = [v21 _resultSnippetLocationString];

  if (v22)
  {
    [v19 addObject:v22];
  }

  v23 = [a1 _delimiterString];
  v24 = [v19 componentsJoinedByString:v23];

  if (![v24 length])
  {
    v25 = [v17 _addressFormattedAsShortenedAddress];

    v24 = v25;
  }

  v35 = v17;
  v36 = v12;
  v26 = [_BasicTwoLinesContentViewModel alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100C50A38;
  v38[3] = &unk_10164E908;
  v39 = v13;
  v27 = v13;
  v28 = [(_BasicTwoLinesContentViewModel *)v26 initWithTitleText:v37 subtitleText:v24 imageCreationBlock:v38];
  [(_BasicTwoLinesContentViewModel *)v28 setAxIdentifier:@"LibraryPlaceCell"];
  if (v14)
  {
    [(_BasicTwoLinesContentViewModel *)v28 setPlaceContextViewModel:v14];
  }

  v29 = [TwoLinesContentViewModelComposer _moreButtonAccessoryWithMenuProvider:v15 axID:@"LibraryPlaceCellMoreButton"];
  v30 = objc_alloc_init(UICellAccessoryMultiselect);
  [v30 setDisplayedState:1];
  v40[0] = v29;
  v40[1] = v30;
  [NSArray arrayWithObjects:v40 count:2];
  v32 = v31 = v14;
  [(_BasicTwoLinesContentViewModel *)v28 setCellAccessories:v32];

  return v28;
}

+ (id)cellModelForMapItem:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v3 _addressFormattedAsShortenedAddress];
  v6 = [_BasicTwoLinesContentViewModel alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C50C08;
  v10[3] = &unk_10164E908;
  v11 = v3;
  v7 = v3;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:v4 subtitleText:v5 imageCreationBlock:v10];
  [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"PlaceCell"];

  return v8;
}

+ (id)cellModelForCollectionMapItem:(id)a3 currentLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = [v5 _firstLocalizedCategoryName];
  if (v6)
  {
    v25 = 0;
    v9 = [NSString distanceStringFromLocation:v6 toMapItem:v5 showsDistance:&v25];
    if (!v9)
    {
      v10 = [v5 _geoMapItem];
      v9 = [v10 _resultSnippetLocationString];
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v5 _hasPriceDescription])
  {
    [v5 _priceDescription];
  }

  else
  {
    [v5 _priceRangeString];
  }
  v11 = ;
  v12 = +[NSMutableArray array];
  if ([v8 length])
  {
    [v12 addObject:v8];
  }

  if ([v9 length])
  {
    [v12 addObject:v9];
  }

  if ([v11 length])
  {
    [v12 addObject:v11];
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

  v15 = [v12 componentsJoinedByString:v14];
  v16 = [_BasicTwoLinesContentViewModel alloc];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100C50F40;
  v23 = &unk_10164E908;
  v24 = v5;
  v17 = v5;
  v18 = [(_BasicTwoLinesContentViewModel *)v16 initWithTitleText:v7 subtitleText:v15 imageCreationBlock:&v20];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"GuideItemCell", v20, v21, v22, v23];

  return v18;
}

+ (id)cellModelForTransitLine:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 name];
    v7 = [v3 system];
    v8 = [v7 name];
  }

  else
  {
    v9 = [v3 system];
    v10 = [v9 name];
    v11 = [v10 length];

    if (v11)
    {
      v7 = [v3 system];
      [v7 name];
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      [v7 localizedStringForKey:@"Transit_Line_Cell_Default" value:@"localized string not found" table:0];
    }
    v6 = ;
    v8 = 0;
  }

  v12 = [_BasicTwoLinesContentViewModel alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100C511D0;
  v16[3] = &unk_10164E908;
  v17 = v3;
  v13 = v3;
  v14 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:v6 subtitleText:v8 imageCreationBlock:v16];
  [(_BasicTwoLinesContentViewModel *)v14 setImageStyle:4];
  [(_BasicTwoLinesContentViewModel *)v14 setAxIdentifier:@"TransitLineCell"];

  return v14;
}

+ (id)cellModelForCollection:(id)a3
{
  v3 = a3;
  v4 = [_CollectionTwoLinesContentViewModel alloc];
  v5 = [v3 title];
  v6 = [v3 subtitle];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C514D0;
  v10[3] = &unk_10164E908;
  v11 = v3;
  v7 = v3;
  v8 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v5 subtitleText:v6 imageCreationBlock:v10];

  [(_CollectionTwoLinesContentViewModel *)v8 setCollection:v7];
  [(_BasicTwoLinesContentViewModel *)v8 setImageStyle:3];
  [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"GuideCell"];

  return v8;
}

+ (id)cellModelForMapsFavoriteItem:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [_MapsFavoriteItemTwoLinesContentViewModel alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100C5185C;
  v16[3] = &unk_10164E908;
  v11 = v7;
  v17 = v11;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:v9 subtitleText:v8 imageCreationBlock:v16];

  if ([v11 isSetupPlaceholder])
  {
    v13 = +[UIColor linkColor];
    [(_BasicTwoLinesContentViewModel *)v12 setSubtitleTextColor:v13];
  }

  [(_MapsFavoriteItemTwoLinesContentViewModel *)v12 setObservedEntry:v11];
  [(_BasicTwoLinesContentViewModel *)v12 setImageStyle:4];
  v14 = +[NSUserDefaults standardUserDefaults];
  -[_BasicTwoLinesContentViewModel setShowBadgeView:](v12, "setShowBadgeView:", [v14 BOOLForKey:@"__internal__EnableMapsSuggestion"]);

  [(_BasicTwoLinesContentViewModel *)v12 setAxIdentifier:@"MapsSuggestionEntryCell"];

  return v12;
}

+ (id)cellModelForMapsFavoriteItem:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 subtitle];
  v7 = [a1 cellModelForMapsFavoriteItem:v4 title:v5 subtitle:v6];

  return v7;
}

+ (id)cellModelForMapsSuggestionEntry:(id)a3 title:(id)a4 subtitle:(id)a5 menuProvider:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [_MapsSuggestionsEntryTwoLinesContentViewModel alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100C51F48;
  v26[3] = &unk_10164E908;
  v14 = v9;
  v27 = v14;
  v15 = [(_BasicTwoLinesContentViewModel *)v13 initWithTitleText:v12 subtitleText:v11 imageCreationBlock:v26];

  [(_MapsSuggestionsEntryTwoLinesContentViewModel *)v15 setObservedEntry:v14];
  [(_BasicTwoLinesContentViewModel *)v15 setImageStyle:4];
  if (v10)
  {
    v16 = [TwoLinesContentViewModelComposer _moreButtonAccessoryWithMenuProvider:v10 axID:@"MsgCurrentLocationCellMoreButton"];
    v28 = v16;
    v17 = [NSArray arrayWithObjects:&v28 count:1];
    [(_BasicTwoLinesContentViewModel *)v15 setCellAccessories:v17];
  }

  if (([v14 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1] & 1) == 0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100C52008;
    v24 = &unk_10164E958;
    v25 = v14;
    [(_BasicTwoLinesContentViewModel *)v15 setPersonalizedItemForQuickActionMenuCreator:&v21];
  }

  if (_UISolariumEnabled())
  {
    v18 = [v14 type] == 24;
  }

  else
  {
    v18 = 0;
  }

  [(_BasicTwoLinesContentViewModel *)v15 setShowOverlayImage:v18, v21, v22, v23, v24];
  v19 = +[NSUserDefaults standardUserDefaults];
  -[_BasicTwoLinesContentViewModel setShowBadgeView:](v15, "setShowBadgeView:", [v19 BOOLForKey:@"__internal__EnableMapsSuggestion"]);

  [(_BasicTwoLinesContentViewModel *)v15 setAxIdentifier:@"MapsSuggestionEntryCell"];

  return v15;
}

+ (id)cellModelForMapsSuggestionEntry:(id)a3 menuProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 title];
  v9 = [v7 subtitle];
  v10 = [a1 cellModelForMapsSuggestionEntry:v7 title:v8 subtitle:v9 menuProvider:v6];

  return v10;
}

+ (id)cellModelForMapsSuggestionsShortcut:(id)a3
{
  v3 = a3;
  v4 = [v3 isSetupPlaceholder];
  v5 = v3;
  if ([v5 type] == 6)
  {
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:@"NearbyTransit"];
  }

  else
  {
    v7 = 0;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if (v7)
    {
      v8 = MapsSuggestionsLocalizedNearbyTransitFullString();
      MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
    }

    else
    {
      v8 = [v5 placeName];
      [v5 shortAddress];
    }
    v9 = ;
    v10 = [v5 proposedFavoriteStyleAttributes];
  }

  else
  {
    if (v7)
    {
      v8 = MapsSuggestionsLocalizedNearbyTransitFullString();
      MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
    }

    else
    {
      v8 = [v5 title];
      [v5 subtitle];
    }
    v9 = ;
    v10 = [v5 styleAttributes];
  }

  v11 = v10;
  v12 = [_BasicTwoLinesContentViewModel alloc];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100C5235C;
  v20 = &unk_10164E980;
  v22 = v4;
  v13 = v11;
  v21 = v13;
  v14 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:v8 subtitleText:v9 imageCreationBlock:&v17];
  [(_BasicTwoLinesContentViewModel *)v14 setVibrantBackground:v4, v17, v18, v19, v20];
  if (+[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") && [v5 isSetupPlaceholder])
  {
    v15 = +[UIColor linkColor];
    [(_BasicTwoLinesContentViewModel *)v14 setSubtitleTextColor:v15];
  }

  if (v7)
  {
    [(_BasicTwoLinesContentViewModel *)v14 setAllowsSubtitleWrapping:1];
  }

  [(_BasicTwoLinesContentViewModel *)v14 setAxIdentifier:@"MapsSuggestionsShortcutCell"];

  return v14;
}

+ (id)_searchResultModelWithSearchResult:(id)a3 title:(id)a4 subtitle:(id)a5 isAuthorizedForPreciseLocation:(BOOL)a6 placeContextViewModel:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a4;
  v15 = [_SearchResultTwoLinesContentViewModel alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100C5267C;
  v25[3] = &unk_10164E908;
  v16 = v11;
  v26 = v16;
  v17 = [(_BasicTwoLinesContentViewModel *)v15 initWithTitleText:v14 subtitleText:v12 imageCreationBlock:v25];

  [(_SearchResultTwoLinesContentViewModel *)v17 setPreferredAddressFormat:0];
  if ((![v16 isDynamicCurrentLocation] || v8) && !objc_msgSend(v12, "length"))
  {
    [(_SearchResultTwoLinesContentViewModel *)v17 setObservedSearchResult:v16];
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100C527F0;
  v23 = &unk_10164E958;
  v24 = v16;
  v18 = v16;
  [(_BasicTwoLinesContentViewModel *)v17 setPersonalizedItemForQuickActionMenuCreator:&v20];
  [(_BasicTwoLinesContentViewModel *)v17 setPlaceContextViewModel:v13, v20, v21, v22, v23];

  [(_BasicTwoLinesContentViewModel *)v17 setAxIdentifier:@"SearchResultCell"];

  return v17;
}

+ (id)cellModelForDroppedPinFromSearchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 mapItem];
  v6 = [v5 _addressFormattedAsShortenedAddress];

  v7 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:5];
  if ([(__CFString *)v6 length])
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  if ([(__CFString *)v9 isEqual:v6])
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  v11 = [a1 _searchResultModelWithSearchResult:v4 title:v9 subtitle:v10 isAuthorizedForPreciseLocation:0 placeContextViewModel:0];

  return v11;
}

+ (id)cellModelForSearchResult:(id)a3 typedACQuery:(id)a4 showAutocompleteClientSource:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[MKLocationManager sharedLocationManager];
  v11 = [v10 isAuthorizedForPreciseLocation];

  v12 = [v8 mapItem];
  v13 = [v12 _addressFormattedAsShortenedAddress];

  if ([v8 isDynamicCurrentLocation])
  {
    if (v11)
    {
      v14 = [v8 title];
      v15 = [v8 mapItem];
      v16 = [v15 _addressFormattedAsShortenedAddress];
      v17 = sub_100C47980(v16);
    }

    else
    {
      v14 = MKLocalizedStringForCurrentLocation();
      v17 = 0;
    }

    v22 = [[PlaceContextViewModel alloc] initWithCurrentLocation];
  }

  else
  {
    if (v5 && [v8 type] == 3 && objc_msgSend(v9, "length") && (objc_msgSend(v13, "lowercaseString"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lowercaseString"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "containsString:", v19), v19, v18, v20))
    {
      v14 = v13;
      v21 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:5];
    }

    else
    {
      v14 = [v8 name];
      v21 = v13;
    }

    v17 = v21;
    v22 = 0;
  }

  v23 = [a1 _searchResultModelWithSearchResult:v8 title:v14 subtitle:v17 isAuthorizedForPreciseLocation:v11 placeContextViewModel:v22];

  return v23;
}

+ (id)cellModelForOfflineSearchResult:(id)a3
{
  v3 = a3;
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isAuthorizedForPreciseLocation];

  v6 = [v3 mapItem];
  v7 = [v6 _addressFormattedAsCity];

  if ([v3 isDynamicCurrentLocation])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Offline Search] Current Location" value:@"localized string not found" table:@"Offline"];

    if (v5)
    {
      v10 = [v3 mapItem];
      v11 = [v10 _addressFormattedAsCity];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[PlaceContextViewModel alloc] initWithCurrentLocation];
  }

  else
  {
    v9 = [v3 name];
    v11 = v7;
    v12 = 0;
  }

  v13 = [_SearchResultTwoLinesContentViewModel alloc];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C52DBC;
  v23[3] = &unk_10164E908;
  v14 = v3;
  v24 = v14;
  v15 = [(_BasicTwoLinesContentViewModel *)v13 initWithTitleText:v9 subtitleText:v11 imageCreationBlock:v23];
  [(_SearchResultTwoLinesContentViewModel *)v15 setPreferredAddressFormat:1];
  if (v5 & 1 | (([v14 isDynamicCurrentLocation] & 1) == 0) && !objc_msgSend(v11, "length"))
  {
    [(_SearchResultTwoLinesContentViewModel *)v15 setObservedSearchResult:v14];
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100C52F5C;
  v21 = &unk_10164E958;
  v22 = v14;
  v16 = v14;
  [(_BasicTwoLinesContentViewModel *)v15 setPersonalizedItemForQuickActionMenuCreator:&v18];
  [(_BasicTwoLinesContentViewModel *)v15 setPlaceContextViewModel:v12, v18, v19, v20, v21];
  [(_BasicTwoLinesContentViewModel *)v15 setAxIdentifier:@"SearchResultCell"];

  return v15;
}

+ (id)cellModelForAddressBookAddress:(id)a3
{
  v3 = a3;
  if ([v3 isMeCard])
  {
    v4 = [v3 localizedLabel];
    v5 = [v4 capitalizedString];
  }

  else
  {
    v5 = [v3 compositeName];
  }

  v6 = [v3 shortAddress];
  v7 = [_BasicTwoLinesContentViewModel alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100C531E4;
  v21[3] = &unk_10164E908;
  v8 = v3;
  v22 = v8;
  v9 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:v5 subtitleText:v6 imageCreationBlock:v21];
  v10 = [v8 geocodedMapItem];
  v11 = v10;
  if (v10 && ([v10 _geoMapItem], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || (v13 = [MKMapItem alloc], objc_msgSend(v8, "addressDictionary"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "initWithAddressDictionary:", v14), v11, v14, (v11 = v15) != 0))
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C5346C;
    v18[3] = &unk_10164E930;
    v19 = v11;
    v20 = v8;
    v16 = v11;
    [(_BasicTwoLinesContentViewModel *)v9 setPersonalizedItemForQuickActionMenuCreator:v18];
  }

  [(_BasicTwoLinesContentViewModel *)v9 setAxIdentifier:@"AddressBookAddressCell"];

  return v9;
}

+ (id)cellModelForAddMissingPlaceWithUserEnteredText:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Add to Maps [Home / Work Search Results]" value:@"localized string not found" table:0];

  v6 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v5 subtitleText:v3 imageCreationBlock:&stru_10164E8E0];
  [(_BasicTwoLinesContentViewModel *)v6 setAxIdentifier:@"AddMissingPlaceCell"];

  return v6;
}

+ (id)cellModelForPlaceNotFoundWithUserEnteredText:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"More Results for <user typed string> [Home / Work]" value:@"localized string not found" table:0];

  v6 = [NSString stringWithFormat:v5, v3];
  v7 = [v6 rangeOfString:v3];
  v9 = v8;

  v10 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v6 subtitleText:0 imageCreationBlock:&stru_10164E8C0];
  v11 = [NSValue valueWithRange:v7, v9];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  [(_BasicTwoLinesContentViewModel *)v10 setTitleHighlightRanges:v12];

  return v10;
}

+ (BOOL)userInterfaceLayoutDirectionIsRTL
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

+ (id)_delimiterString
{
  if (qword_10195EC70 != -1)
  {
    dispatch_once(&qword_10195EC70, &stru_10164E880);
  }

  v3 = qword_10195EC68;

  return v3;
}

+ (id)cellModelForLibraryManagementItem:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 symbol];

  v6 = [_BasicTwoLinesContentViewModel alloc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C54058;
  v11[3] = &unk_10164E908;
  v12 = v5;
  v7 = v5;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:v4 subtitleText:0 imageCreationBlock:v11];
  [(_BasicTwoLinesContentViewModel *)v8 setImageStyle:4];
  v9 = [(_BasicTwoLinesContentViewModel *)v8 titleText];
  [(_BasicTwoLinesContentViewModel *)v8 setAccessibilityLabel:v9];

  return v8;
}

+ (id)cellModelForHistoryEntryRecentsItemProtocol:(id)a3 showAutocompleteClientSource:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = [a1 cellModelForHistoryEntryRecentsItem:v8 showAutocompleteClientSource:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end