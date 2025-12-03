@interface TwoLinesContentViewModelComposer
+ (BOOL)userInterfaceLayoutDirectionIsRTL;
+ (id)_cellModelForComposedWaypointToRoute:(id)route;
+ (id)_cellModelForHistoryEntryCuratedCollection:(id)collection;
+ (id)_cellModelForHistoryEntryPlace:(id)place showAutocompleteClientSource:(BOOL)source;
+ (id)_cellModelForHistoryEntryRoute:(id)route;
+ (id)_cellModelForHistoryEntrySearch:(id)search showAutocompleteClientSource:(BOOL)source;
+ (id)_cellModelForHistoryEntryTransitLineItem:(id)item;
+ (id)_cellModelForRouteName:(id)name persistentData:(id)data thirdLineViewModel:(id)model menuProvider:(id)provider;
+ (id)_convertSymbolToIconImage:(id)image RAPType:(int)type;
+ (id)_delimiterString;
+ (id)_moreButtonAccessoryWithMenuProvider:(id)provider axID:(id)d;
+ (id)_searchResultModelWithSearchResult:(id)result title:(id)title subtitle:(id)subtitle isAuthorizedForPreciseLocation:(BOOL)location placeContextViewModel:(id)model;
+ (id)backgroundColorForRAPType:(int)type;
+ (id)cellModelForAddMissingPlaceWithUserEnteredText:(id)text;
+ (id)cellModelForAddressBookAddress:(id)address;
+ (id)cellModelForCollection:(id)collection;
+ (id)cellModelForCollectionMapItem:(id)item currentLocation:(id)location;
+ (id)cellModelForDroppedPinFromSearchResult:(id)result;
+ (id)cellModelForExpiredOfflineMapSubscription:(id)subscription isAvailable:(BOOL)available isSupportedOSVersion:(BOOL)version downloadBlock:(id)block;
+ (id)cellModelForHistoryEntryRecentsItem:(id)item showAutocompleteClientSource:(BOOL)source;
+ (id)cellModelForHistoryEntryRecentsItemProtocol:(id)protocol showAutocompleteClientSource:(BOOL)source;
+ (id)cellModelForLibraryManagementItem:(id)item;
+ (id)cellModelForLocalSearchCompletion:(id)completion userLocationSearchResult:(id)result autocompleteClientSourceType:(int64_t)type;
+ (id)cellModelForLocationInfo:(id)info;
+ (id)cellModelForMapItem:(id)item;
+ (id)cellModelForMapsFavoriteItem:(id)item;
+ (id)cellModelForMapsFavoriteItem:(id)item title:(id)title subtitle:(id)subtitle;
+ (id)cellModelForMapsSuggestionEntry:(id)entry menuProvider:(id)provider;
+ (id)cellModelForMapsSuggestionEntry:(id)entry title:(id)title subtitle:(id)subtitle menuProvider:(id)provider;
+ (id)cellModelForMapsSuggestionsShortcut:(id)shortcut;
+ (id)cellModelForOfflineMapSubscriptionInfo:(id)info cancelDownloadBlock:(id)block resumeDownloadBlock:(id)downloadBlock;
+ (id)cellModelForOfflineMapSuggestion:(id)suggestion downloadBlock:(id)block;
+ (id)cellModelForOfflineRegionLocalSearchCompletion:(id)completion;
+ (id)cellModelForOfflineSearchResult:(id)result;
+ (id)cellModelForParkedCar:(id)car;
+ (id)cellModelForPlaceNotFoundWithUserEnteredText:(id)text;
+ (id)cellModelForPublisher:(id)publisher showDisclosureIndicator:(BOOL)indicator;
+ (id)cellModelForRAPReportsHistory:(id)history allowDisclosureIndicator:(BOOL)indicator;
+ (id)cellModelForRatingsHistory:(id)history;
+ (id)cellModelForRecentContact:(id)contact showAutocompleteClientSource:(BOOL)source autocompleteClientSourceType:(int64_t)type;
+ (id)cellModelForRouteData:(id)data thirdLineViewModel:(id)model menuProvider:(id)provider;
+ (id)cellModelForSavedRouteCalculatingFailureForOfflineRegion:(id)region;
+ (id)cellModelForSavedRouteCalculatingOfflineRegion:(id)region;
+ (id)cellModelForSavedRouteOfflineDownload:(id)download estimatedSizeInBytes:(int64_t)bytes;
+ (id)cellModelForSavedRouteOfflineRegion:(id)region coveredByExistingSubscription:(id)subscription;
+ (id)cellModelForSavedRouteUnavailableOfflineRegion:(id)region;
+ (id)cellModelForSearchHomeRecentSearch:(id)search;
+ (id)cellModelForSearchResult:(id)result typedACQuery:(id)query showAutocompleteClientSource:(BOOL)source;
+ (id)cellModelForSharedTrip:(id)trip;
+ (id)cellModelForSharedTripSummary:(id)summary;
+ (id)cellModelForTransitLine:(id)line;
+ (id)cellModelForUGCSuggestionContentType:(int64_t)type visitDate:(id)date;
+ (id)cellModelForVisitedPlacesWithTitle:(id)title subTitle:(id)subTitle imageSymbol:(id)symbol;
+ (id)libraryCellModelForMapItem:(id)item customName:(id)name styleAttributes:(id)attributes thirdLineViewModel:(id)model menuProvider:(id)provider;
@end

@implementation TwoLinesContentViewModelComposer

+ (id)cellModelForVisitedPlacesWithTitle:(id)title subTitle:(id)subTitle imageSymbol:(id)symbol
{
  symbolCopy = symbol;
  subTitleCopy = subTitle;
  titleCopy = title;
  v10 = [_BasicTwoLinesContentViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C47F3C;
  v15[3] = &unk_10164E908;
  v16 = symbolCopy;
  v11 = symbolCopy;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:titleCopy subtitleText:subTitleCopy imageCreationBlock:v15];

  [(_BasicTwoLinesContentViewModel *)v12 setImageStyle:0];
  titleText = [(_BasicTwoLinesContentViewModel *)v12 titleText];
  [(_BasicTwoLinesContentViewModel *)v12 setAccessibilityLabel:titleText];

  return v12;
}

+ (id)cellModelForSavedRouteOfflineRegion:(id)region coveredByExistingSubscription:(id)subscription
{
  regionCopy = region;
  v5 = [_BasicTwoLinesContentViewModel alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_ALREADY_DOWNLOADED" value:@"localized string not found" table:@"Offline"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_ALREADY_DOWNLOADED" value:@"localized string not found" table:@"Offline"];
  v10 = sub_100C481B0(regionCopy);
  v11 = [(_BasicTwoLinesContentViewModel *)v5 initWithTitleText:v7 subtitleText:v9 cancelableImageCreationBlock:v10];

  sub_100C48254(v11, regionCopy);
  [(_BasicTwoLinesContentViewModel *)v11 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v11 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v11 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v11 setAxIdentifier:@"OfflineMapDownloadCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v11 titleText];
  [(_BasicTwoLinesContentViewModel *)v11 setAccessibilityLabel:titleText];

  return v11;
}

+ (id)cellModelForSavedRouteUnavailableOfflineRegion:(id)region
{
  regionCopy = region;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(regionCopy);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, regionCopy);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setDisabled:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:titleText];

  return v10;
}

+ (id)cellModelForSavedRouteCalculatingFailureForOfflineRegion:(id)region
{
  regionCopy = region;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE_UNAVAILABLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_ERROR" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(regionCopy);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, regionCopy);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setDisabled:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:titleText];

  return v10;
}

+ (id)cellModelForSavedRouteCalculatingOfflineRegion:(id)region
{
  regionCopy = region;
  v4 = [_BasicTwoLinesContentViewModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE" value:@"localized string not found" table:@"Offline"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_SUBTITLE_CALCULATING" value:@"localized string not found" table:@"Offline"];
  v9 = sub_100C481B0(regionCopy);
  v10 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:v6 subtitleText:v8 cancelableImageCreationBlock:v9];

  sub_100C48254(v10, regionCopy);
  [(_BasicTwoLinesContentViewModel *)v10 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v10 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v10 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v10 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"OfflineMapDownloadCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v10 titleText];
  [(_BasicTwoLinesContentViewModel *)v10 setAccessibilityLabel:titleText];

  return v10;
}

+ (id)cellModelForSavedRouteOfflineDownload:(id)download estimatedSizeInBytes:(int64_t)bytes
{
  downloadCopy = download;
  v6 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:bytes];
  v7 = [_BasicTwoLinesContentViewModel alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SAVE_ROUTE_DOWNLOAD_MAP_TITLE" value:@"localized string not found" table:@"Offline"];
  v10 = sub_100C481B0(downloadCopy);
  v11 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:v9 subtitleText:v6 cancelableImageCreationBlock:v10];

  sub_100C48254(v11, downloadCopy);
  [(_BasicTwoLinesContentViewModel *)v11 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v11 setShouldCenterImage:1];
  [(_BasicTwoLinesContentViewModel *)v11 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v11 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v11 setAxIdentifier:@"OfflineMapDownloadCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v11 titleText];
  [(_BasicTwoLinesContentViewModel *)v11 setAccessibilityLabel:titleText];

  return v11;
}

+ (id)cellModelForExpiredOfflineMapSubscription:(id)subscription isAvailable:(BOOL)available isSupportedOSVersion:(BOOL)version downloadBlock:(id)block
{
  versionCopy = version;
  availableCopy = available;
  subscriptionCopy = subscription;
  blockCopy = block;
  displayName = [subscriptionCopy displayName];
  if ([displayName length])
  {
    displayName2 = [subscriptionCopy displayName];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    displayName2 = [v13 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }

  if (!availableCopy)
  {
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (versionCopy)
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
    v21 = !availableCopy;
    region = [subscriptionCopy region];
    v26 = sub_100C481B0(region);

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100C491F0;
    v43[3] = &unk_10164EBE8;
    v44 = v26;
    v27 = v26;
    v20 = objc_retainBlock(v43);

    goto LABEL_15;
  }

  region2 = [subscriptionCopy region];
  v20 = sub_100C481B0(region2);

  v21 = 0;
LABEL_15:
  v28 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:displayName2 subtitleText:v18 cancelableImageCreationBlock:v20];
  region3 = [subscriptionCopy region];
  sub_100C48254(v28, region3);

  [(_BasicTwoLinesContentViewModel *)v28 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v28 setAxIdentifier:@"ExpiredOfflineMapSubscription"];
  [(_BasicTwoLinesContentViewModel *)v28 setAccessibilityLabel:displayName2];
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
    v42 = blockCopy;
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

+ (id)cellModelForOfflineMapSuggestion:(id)suggestion downloadBlock:(id)block
{
  blockCopy = block;
  suggestionCopy = suggestion;
  v7 = [_BasicTwoLinesContentViewModel alloc];
  regionName = [suggestionCopy regionName];
  suggestionSubtitle = [suggestionCopy suggestionSubtitle];
  mapRegion = [suggestionCopy mapRegion];
  v11 = sub_100C481B0(mapRegion);
  v12 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:regionName subtitleText:suggestionSubtitle cancelableImageCreationBlock:v11];

  mapRegion2 = [suggestionCopy mapRegion];

  sub_100C48254(v12, mapRegion2);
  [(_BasicTwoLinesContentViewModel *)v12 setImageCreationCanBeCached:1];
  [(_BasicTwoLinesContentViewModel *)v12 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v12 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v12 setAxIdentifier:@"OfflineMapSuggestionCell"];
  titleText = [(_BasicTwoLinesContentViewModel *)v12 titleText];
  [(_BasicTwoLinesContentViewModel *)v12 setAccessibilityLabel:titleText];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C49A5C;
  v23[3] = &unk_101661C18;
  v24 = blockCopy;
  v15 = blockCopy;
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

+ (id)cellModelForOfflineMapSubscriptionInfo:(id)info cancelDownloadBlock:(id)block resumeDownloadBlock:(id)downloadBlock
{
  infoCopy = info;
  downloadBlockCopy = downloadBlock;
  blockCopy = block;
  subscription = [infoCopy subscription];
  displayName = [subscription displayName];
  if ([displayName length])
  {
    subscription2 = [infoCopy subscription];
    [subscription2 displayName];
  }

  else
  {
    subscription2 = +[NSBundle mainBundle];
    [subscription2 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
  }
  v13 = ;

  v14 = [_OfflineMapSubscriptionTwoLinesContentViewModel alloc];
  subscription3 = [infoCopy subscription];
  region = [subscription3 region];
  v17 = sub_100C481B0(region);
  v18 = [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v14 initWithTitleText:v13 subtitleText:0 cancelableImageCreationBlock:v17];

  subscription4 = [infoCopy subscription];
  region2 = [subscription4 region];
  sub_100C48254(v18, region2);

  [(_BasicTwoLinesContentViewModel *)v18 setImageCreationCanBeCached:1];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setSubscriptionInfo:infoCopy];
  v21 = [blockCopy copy];

  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setCancelDownloadBlock:v21];
  v22 = [downloadBlockCopy copy];

  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setResumeDownloadBlock:v22];
  [(_BasicTwoLinesContentViewModel *)v18 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v18 setSubtitleUsesMonospacedNumbers:1];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"OfflineMapSubscriptionCell"];
  [(_OfflineMapSubscriptionTwoLinesContentViewModel *)v18 setAccessibilityLabel:v13];

  return v18;
}

+ (id)cellModelForUGCSuggestionContentType:(int64_t)type visitDate:(id)date
{
  dateCopy = date;
  v6 = &stru_1016631F0;
  if (type <= 2)
  {
    if (type == 1)
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
      if (type != 2)
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

  if (type == 3)
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

  if (type != 4)
  {
    v7 = &stru_1016631F0;
    if (type != 5)
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

  if (!dateCopy)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc_init(NSRelativeDateTimeFormatter);
  [v10 setDateTimeStyle:1];
  [v10 setUnitsStyle:0];
  [v10 setFormattingContext:1];
  v15 = +[NSDate date];
  v16 = [v10 localizedStringForDate:dateCopy relativeToDate:v15];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"[UGC] Visited" value:@"localized string not found" table:0];
  v6 = [NSString stringWithFormat:v18, v16];

LABEL_14:
LABEL_15:
  v20 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v7 subtitleText:v6 imageCreationBlock:&stru_10164EB28];
  [(_BasicTwoLinesContentViewModel *)v20 setImageStyle:0];

  return v20;
}

+ (id)_convertSymbolToIconImage:(id)image RAPType:(int)type
{
  v4 = *&type;
  imageCopy = image;
  v7 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v7 setIconSize:30.0, 30.0];
  v8 = +[UIColor whiteColor];
  [(ImageIconWithBackgroundConfiguration *)v7 setTintColor:v8];

  v9 = [self backgroundColorForRAPType:v4];
  [(ImageIconWithBackgroundConfiguration *)v7 setBackgroundColor:v9];

  [(ImageIconWithBackgroundConfiguration *)v7 setCornerRadius:15.0];
  v10 = [imageCopy _maps_imageIconWithBackgroundConfiguration:v7];

  return v10;
}

+ (id)backgroundColorForRAPType:(int)type
{
  v5 = type - 8;
  if (type - 8) <= 9 && ((0x283u >> v5))
  {
    v6 = [UIColor colorNamed:*(&off_10164ECE8 + v5), v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cellModelForRAPReportsHistory:(id)history allowDisclosureIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  historyCopy = history;
  mapItem = [historyCopy mapItem];
  if (mapItem && (v8 = mapItem, [historyCopy mapItem], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    mapItem2 = [historyCopy mapItem];
    name = [mapItem2 name];
  }

  else
  {
    name = [historyCopy reportTitle];
  }

  v13 = objc_opt_new();
  reportSummary = [historyCopy reportSummary];
  dateOfReportCreation = [historyCopy dateOfReportCreation];
  v16 = [NSDateFormatter _maps_abbreviatedDateStringWithoutYearForDate:dateOfReportCreation];

  if ([v16 length])
  {
    [v13 addObject:v16];
  }

  if ([reportSummary length])
  {
    [v13 addObject:reportSummary];
  }

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@" • " value:@"localized string not found" table:0];
  v19 = [v13 componentsJoinedByString:v18];

  v20 = [_BasicTwoLinesContentViewModel alloc];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100C4B648;
  v31 = &unk_10164EB08;
  v21 = historyCopy;
  v32 = v21;
  selfCopy = self;
  v22 = [(_BasicTwoLinesContentViewModel *)v20 initWithTitleText:name subtitleText:v19 imageCreationBlock:&v28];
  v23 = [self backgroundColorForRAPType:{objc_msgSend(v21, "reportType", v28, v29, v30, v31)}];
  [(_BasicTwoLinesContentViewModel *)v22 setLeadingImageBackgroundColor:v23];

  [(_BasicTwoLinesContentViewModel *)v22 setImageStyle:0];
  v24 = +[UIColor whiteColor];
  [(_BasicTwoLinesContentViewModel *)v22 setLeftImageTintColor:v24];

  [(_BasicTwoLinesContentViewModel *)v22 setAllowsSubtitleWrapping:1];
  [(_BasicTwoLinesContentViewModel *)v22 setAxIdentifier:@"ReportAProblemHistoryCell"];
  if (indicatorCopy && ([v21 reportStatus] == 2 || objc_msgSend(v21, "reportStatus") == 1))
  {
    v25 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    v34 = v25;
    v26 = [NSArray arrayWithObjects:&v34 count:1];
    [(_BasicTwoLinesContentViewModel *)v22 setCellAccessories:v26];
  }

  return v22;
}

+ (id)cellModelForRatingsHistory:(id)history
{
  historyCopy = history;
  mapItem = [historyCopy mapItem];
  name = [mapItem name];

  v49 = objc_alloc_init(NSMutableAttributedString);
  v6 = objc_alloc_init(NSMutableAttributedString);
  v7 = objc_alloc_init(NSMutableAttributedString);
  v8 = +[NSBundle mainBundle];
  v50 = [v8 localizedStringForKey:@"[Ratings History] Your rating" value:@"localized string not found" table:0];

  reviewedPlace = [historyCopy reviewedPlace];
  recommendState = [reviewedPlace recommendState];

  if (recommendState)
  {
    v48 = name;
    if (recommendState == 2)
    {
      v11 = @"hand.thumbsup.fill";
    }

    else
    {
      if (recommendState != 1)
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

    name = v48;
  }

  reviewedPlace2 = [historyCopy reviewedPlace];
  numberOfPhotosAdded = [reviewedPlace2 numberOfPhotosAdded];

  if (!recommendState && numberOfPhotosAdded)
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
  reviewedPlace3 = [historyCopy reviewedPlace];
  v37 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v34, [reviewedPlace3 numberOfPhotosAdded]);
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
  v52 = historyCopy;
  v44 = historyCopy;
  v45 = [(_BasicTwoLinesContentViewModel *)v43 initWithTitleText:name subtitleText:0 imageCreationBlock:v51];
  [(_BasicTwoLinesContentViewModel *)v45 setAttributedSubtitleText:v49];
  [(_BasicTwoLinesContentViewModel *)v45 setAxIdentifier:@"RatingsHistoryCell"];

  return v45;
}

+ (id)cellModelForSearchHomeRecentSearch:(id)search
{
  searchCopy = search;
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
  historyEntry = [searchCopy historyEntry];
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
  [historyEntry ifSearch:v12 ifRoute:0 ifPlaceDisplay:v11 ifTransitLineItem:0];

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

+ (id)cellModelForPublisher:(id)publisher showDisclosureIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  publisherCopy = publisher;
  publisherAttribution = [publisherCopy publisherAttribution];
  displayName = [publisherAttribution displayName];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Curated Collections] %lu Guides" value:@"localized string not found" table:0];
  v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, [publisherCopy totalCollectionCount]);

  v11 = [_BasicTwoLinesContentViewModel alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100C4C9E4;
  v19[3] = &unk_10164E908;
  v12 = publisherCopy;
  v20 = v12;
  v13 = [(_BasicTwoLinesContentViewModel *)v11 initWithTitleText:displayName subtitleText:v10 imageCreationBlock:v19];
  [(_BasicTwoLinesContentViewModel *)v13 setImageStyle:1];
  if (indicatorCopy)
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

+ (id)cellModelForLocationInfo:(id)info
{
  infoCopy = info;
  locationName = [infoCopy locationName];
  v5 = [locationName length];

  if (v5)
  {
    locationName2 = [infoCopy locationName];
  }

  else
  {
    locationName2 = &stru_1016631F0;
  }

  localityName = [infoCopy localityName];
  v8 = [localityName length];

  if (v8)
  {
    if ([(__CFString *)locationName2 length])
    {
      v9 = [(__CFString *)locationName2 stringByAppendingString:@", "];

      locationName2 = v9;
    }

    localityName2 = [infoCopy localityName];
    v11 = [(__CFString *)locationName2 stringByAppendingString:localityName2];

    locationName2 = v11;
  }

  v12 = [_BasicTwoLinesContentViewModel alloc];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"[LookAround Rap]" value:@"localized string not found" table:0];
  v15 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:v14 subtitleText:locationName2 imageCreationBlock:&stru_10164EA68];

  [(_BasicTwoLinesContentViewModel *)v15 setImageStyle:0];
  v16 = +[UIColor systemBlueColor];
  [(_BasicTwoLinesContentViewModel *)v15 setLeftImageTintColor:v16];

  [(_BasicTwoLinesContentViewModel *)v15 setAxIdentifier:@"LookAroundCell"];

  return v15;
}

+ (id)cellModelForSharedTrip:(id)trip
{
  tripCopy = trip;
  listCellTitle = [tripCopy listCellTitle];
  listCellSubtitle = [tripCopy listCellSubtitle];
  v7 = [NSMutableArray arrayWithCapacity:2];
  if ([listCellSubtitle length])
  {
    [v7 addObject:listCellSubtitle];
  }

  _delimiterString = [self _delimiterString];
  v9 = [v7 componentsJoinedByString:_delimiterString];

  v10 = [_BasicTwoLinesContentViewModel alloc];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100C4CEC0;
  v19 = &unk_10164E908;
  v20 = tripCopy;
  v11 = tripCopy;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:listCellTitle subtitleText:v9 imageCreationBlock:&v16];
  groupIdentifier = [v11 groupIdentifier];
  v14 = [NSString stringWithFormat:@"SharedTripCell.%@", groupIdentifier, v16, v17, v18, v19];
  [(_BasicTwoLinesContentViewModel *)v12 setAxIdentifier:v14];

  return v12;
}

+ (id)cellModelForSharedTripSummary:(id)summary
{
  summaryCopy = summary;
  title = [summaryCopy title];
  subtitle = [summaryCopy subtitle];
  v6 = [_BasicTwoLinesContentViewModel alloc];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100C4D278;
  v18 = &unk_10164E908;
  v7 = summaryCopy;
  v19 = v7;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:title subtitleText:subtitle imageCreationBlock:&v15];
  sharedTrips = [v7 sharedTrips];
  if ([sharedTrips count] == 1)
  {
    sharedTrips2 = [v7 sharedTrips];
    firstObject = [sharedTrips2 firstObject];
    groupIdentifier = [firstObject groupIdentifier];
    v13 = [NSString stringWithFormat:@"SharedTripSummaryCell.%@", groupIdentifier, v15, v16, v17, v18];
    [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:v13];
  }

  else
  {
    [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"SharedTripSummaryCell"];
  }

  return v8;
}

+ (id)_cellModelForHistoryEntryCuratedCollection:(id)collection
{
  historyEntry = [collection historyEntry];
  placeCollection = [historyEntry placeCollection];

  publisherAttribution = [placeCollection publisherAttribution];
  displayName = [publisherAttribution displayName];

  v8 = [NSMutableArray arrayWithCapacity:2];
  if ([displayName length])
  {
    [v8 addObject:displayName];
  }

  numberOfItems = [placeCollection numberOfItems];
  if (numberOfItems)
  {
    v10 = numberOfItems;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
    [v8 addObject:v13];
  }

  if ([self userInterfaceLayoutDirectionIsRTL])
  {
    reverseObjectEnumerator = [v8 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v16 = [allObjects mutableCopy];

    v8 = v16;
  }

  _delimiterString = [self _delimiterString];
  v18 = [v8 componentsJoinedByString:_delimiterString];

  v19 = [_BasicTwoLinesContentViewModel alloc];
  collectionTitle = [placeCollection collectionTitle];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100C4D774;
  v24[3] = &unk_10164E908;
  v25 = placeCollection;
  v21 = placeCollection;
  v22 = [(_BasicTwoLinesContentViewModel *)v19 initWithTitleText:collectionTitle subtitleText:v18 imageCreationBlock:v24];

  [(_BasicTwoLinesContentViewModel *)v22 setImageStyle:3];
  [(_BasicTwoLinesContentViewModel *)v22 setAxIdentifier:@"CuratedGuideCell"];

  return v22;
}

+ (id)_cellModelForHistoryEntryTransitLineItem:(id)item
{
  historyEntry = [item historyEntry];
  lineItem = [historyEntry lineItem];

  v6 = [self cellModelForTransitLine:lineItem];

  return v6;
}

+ (id)_cellModelForHistoryEntrySearch:(id)search showAutocompleteClientSource:(BOOL)source
{
  sourceCopy = source;
  searchCopy = search;
  historyEntry = [searchCopy historyEntry];
  query = [historyEntry query];

  v9 = +[NSMutableArray array];
  if (sourceCopy)
  {
    v10 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:1];
    if ([v10 length])
    {
      [v9 addObject:v10];
    }
  }

  historyEntry2 = [searchCopy historyEntry];
  locationDisplayString = [historyEntry2 locationDisplayString];

  if ([locationDisplayString length])
  {
    [v9 addObject:locationDisplayString];
  }

  if ([self userInterfaceLayoutDirectionIsRTL])
  {
    reverseObjectEnumerator = [v9 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v15 = [allObjects mutableCopy];

    v9 = v15;
  }

  _delimiterString = [self _delimiterString];
  v17 = [v9 componentsJoinedByString:_delimiterString];

  v18 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:query subtitleText:v17 imageCreationBlock:&stru_10164EA48];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"RecentSearchCell"];

  return v18;
}

+ (id)_cellModelForHistoryEntryPlace:(id)place showAutocompleteClientSource:(BOOL)source
{
  sourceCopy = source;
  historyEntry = [place historyEntry];
  geoMapItem = [historyEntry geoMapItem];

  v8 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
  name = [v8 name];
  v10 = +[NSMutableArray array];
  if (sourceCopy)
  {
    v11 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:2];
    if ([v11 length])
    {
      [v10 addObject:v11];
    }
  }

  if ([v8 _venueFeatureType] == 4)
  {
    _addressFormattedAsShortenedAddress = [v8 venueLabelWithContext:2];
    _venueInfo = [v8 _venueInfo];
    parent = [_venueInfo parent];
    featureType = [parent featureType];

    if (featureType != 2)
    {
      _geoMapItem = [v8 _geoMapItem];
      addressObject = [_geoMapItem addressObject];
      venueShortAddress = [addressObject venueShortAddress];

      v19 = [venueShortAddress length];
      v20 = venueShortAddress;
      if (v19 || (v21 = [_addressFormattedAsShortenedAddress length], v20 = _addressFormattedAsShortenedAddress, v21))
      {
        [v10 addObject:v20];
      }

      goto LABEL_19;
    }
  }

  else
  {
    _addressFormattedAsShortenedAddress = [v8 _addressFormattedAsShortenedAddress];
    if ([v8 _isMapItemTypeAddress] && objc_msgSend(_addressFormattedAsShortenedAddress, "containsString:", name))
    {
      _geoAddress = [v8 _geoAddress];
      structuredAddress = [_geoAddress structuredAddress];
      locality = [structuredAddress locality];
    }

    else
    {
      uppercaseString = [name uppercaseString];
      uppercaseString2 = [_addressFormattedAsShortenedAddress uppercaseString];
      v27 = [uppercaseString isEqualToString:uppercaseString2];

      if (!v27)
      {
        goto LABEL_17;
      }

      _geoAddress = [v8 _geoAddress];
      structuredAddress = [_geoAddress structuredAddress];
      locality = [structuredAddress _cellContent_subtitleWithTitle:name];
    }

    v28 = locality;

    _addressFormattedAsShortenedAddress = v28;
  }

LABEL_17:
  if ([_addressFormattedAsShortenedAddress length])
  {
    [v10 addObject:_addressFormattedAsShortenedAddress];
  }

LABEL_19:

  if ([self userInterfaceLayoutDirectionIsRTL])
  {
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v31 = [allObjects mutableCopy];

    v10 = v31;
  }

  _delimiterString = [self _delimiterString];
  v33 = [v10 componentsJoinedByString:_delimiterString];

  v34 = [_BasicTwoLinesContentViewModel alloc];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100C4E05C;
  v44[3] = &unk_10164E908;
  v45 = v8;
  v35 = v8;
  v36 = [(_BasicTwoLinesContentViewModel *)v34 initWithTitleText:name subtitleText:v33 imageCreationBlock:v44];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_100C4E11C;
  v42 = &unk_10164E958;
  v43 = geoMapItem;
  v37 = geoMapItem;
  [(_BasicTwoLinesContentViewModel *)v36 setPersonalizedItemForQuickActionMenuCreator:&v39];
  [(_BasicTwoLinesContentViewModel *)v36 setAxIdentifier:@"RecentPlaceCell", v39, v40, v41, v42];

  return v36;
}

+ (id)_cellModelForRouteName:(id)name persistentData:(id)data thirdLineViewModel:(id)model menuProvider:(id)provider
{
  providerCopy = provider;
  modelCopy = model;
  dataCopy = data;
  nameCopy = name;
  v13 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:nameCopy subtitleText:0 imageCreationBlock:&stru_10164EA28];

  v14 = [dataCopy distanceAndElevationDescriptionStringWithAttributes:&__NSDictionary0__struct];

  attributedString = [v14 attributedString];
  [(_BasicTwoLinesContentViewModel *)v13 setAttributedSubtitleText:attributedString];

  [(_BasicTwoLinesContentViewModel *)v13 setPlaceContextViewModel:modelCopy];
  [(_BasicTwoLinesContentViewModel *)v13 setAxIdentifier:@"RecentCustomRouteCell"];
  if (providerCopy)
  {
    v16 = [UIButton buttonWithType:0];
    v17 = [UIImage systemImageNamed:@"ellipsis"];
    [v16 setImage:v17 forState:0];

    [v16 setShowsMenuAsPrimaryAction:1];
    [v16 _setMenuProvider:providerCopy];
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

+ (id)cellModelForRouteData:(id)data thirdLineViewModel:(id)model menuProvider:(id)provider
{
  dataCopy = data;
  providerCopy = provider;
  modelCopy = model;
  userProvidedName = [dataCopy userProvidedName];
  if ([userProvidedName length])
  {
    [dataCopy userProvidedName];
  }

  else
  {
    [dataCopy routeName];
  }
  v12 = ;

  v13 = [self _cellModelForRouteName:v12 persistentData:dataCopy thirdLineViewModel:modelCopy menuProvider:providerCopy];

  return v13;
}

+ (id)_cellModelForComposedWaypointToRoute:(id)route
{
  routeCopy = route;
  name = [routeCopy name];
  route = [routeCopy route];

  persistentData = [route persistentData];
  v8 = [self _cellModelForRouteName:name persistentData:persistentData thirdLineViewModel:0 menuProvider:0];

  return v8;
}

+ (id)_cellModelForHistoryEntryRoute:(id)route
{
  routeCopy = route;
  historyEntry = [routeCopy historyEntry];
  endWaypoint = [historyEntry endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    historyEntry2 = [routeCopy historyEntry];
    endWaypoint2 = [historyEntry2 endWaypoint];
    v10 = [self _cellModelForComposedWaypointToRoute:endWaypoint2];
    goto LABEL_20;
  }

  v39 = 0;
  v40 = 0;
  historyEntry3 = [routeCopy historyEntry];
  [SearchResult newStartWaypointSearchResult:&v40 endWaypointSearchResult:&v39 forRouteHistoryEntry:historyEntry3];
  historyEntry2 = v40;
  endWaypoint2 = v39;

  if ([endWaypoint2 isAddressBookResult])
  {
    address = [endWaypoint2 address];
    waypointCompositeName = [address waypointCompositeName];
    v14 = waypointCompositeName;
    if (waypointCompositeName)
    {
      title = waypointCompositeName;
    }

    else
    {
      title = [endWaypoint2 title];
    }

    title2 = title;
  }

  else
  {
    title2 = [endWaypoint2 title];
  }

  if ([historyEntry2 isDynamicCurrentLocation])
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"From_my_location_recents_cell_subtitle";
LABEL_14:
    v24 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:0];
    goto LABEL_15;
  }

  name = [historyEntry2 name];
  v21 = [name length];

  if (!v21)
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"From_unknown_location_recents_cell_subtitle";
    goto LABEL_14;
  }

  v18 = +[NSBundle mainBundle];
  v22 = [v18 localizedStringForKey:@"From_in_cell" value:@"localized string not found" table:0];
  name2 = [historyEntry2 name];
  v24 = [NSString stringWithFormat:v22, name2];

LABEL_15:
  historyEntry4 = [routeCopy historyEntry];
  waypoints = [historyEntry4 waypoints];
  v27 = [waypoints count];

  if (v27 >= 3)
  {
    v38 = title2;
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"count_of_stops" value:@"localized string not found" table:0];
    v30 = [NSString localizedStringWithFormat:v29, v27 - 2];

    v31 = [NSMutableArray arrayWithCapacity:2];
    [v31 addObject:v24];
    [v31 addObject:v30];
    if ([self userInterfaceLayoutDirectionIsRTL])
    {
      reverseObjectEnumerator = [v31 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v34 = [allObjects mutableCopy];

      v31 = v34;
    }

    _delimiterString = [self _delimiterString];
    v36 = [v31 componentsJoinedByString:_delimiterString];

    v24 = v36;
    title2 = v38;
  }

  v10 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:title2 subtitleText:v24 imageCreationBlock:&stru_10164EA08];
  [(_BasicTwoLinesContentViewModel *)v10 setAxIdentifier:@"RecentRouteCell"];

LABEL_20:

  return v10;
}

+ (id)cellModelForHistoryEntryRecentsItem:(id)item showAutocompleteClientSource:(BOOL)source
{
  sourceCopy = source;
  itemCopy = item;
  v6 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v7 = itemCopy;
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
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntryPlace:v16 showAutocompleteClientSource:sourceCopy];
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
    v13 = [TwoLinesContentViewModelComposer _cellModelForHistoryEntrySearch:v24 showAutocompleteClientSource:sourceCopy];
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

+ (id)cellModelForRecentContact:(id)contact showAutocompleteClientSource:(BOOL)source autocompleteClientSourceType:(int64_t)type
{
  sourceCopy = source;
  contactCopy = contact;
  metadata = [contactCopy metadata];
  v9 = [metadata objectForKeyedSubscript:CRRecentContactMetadataFrom];

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
  address = [contactCopy address];
  if (sourceCopy)
  {
    v21 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:type contactName:v11];
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
  v27 = sourceCopy;
  v26[4] = type;
  v24 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:address subtitleText:v21 imageCreationBlock:v26];
  [(_BasicTwoLinesContentViewModel *)v24 setAxIdentifier:@"RecentContactCell"];

  return v24;
}

+ (id)cellModelForOfflineRegionLocalSearchCompletion:(id)completion
{
  completionCopy = completion;
  title = [completionCopy title];
  titleHighlightRanges = [completionCopy titleHighlightRanges];
  subtitle = [completionCopy subtitle];
  subtitleHighlightRanges = [completionCopy subtitleHighlightRanges];
  _supportsOfflineDownload = [completionCopy _supportsOfflineDownload];
  if ((_supportsOfflineDownload & 1) == 0)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Offline map unavailable [autocomplete]" value:@"localized string not found" table:@"Offline"];

    subtitleHighlightRanges = 0;
    subtitle = v10;
  }

  v11 = [_SearchResultTwoLinesContentViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C4F558;
  v15[3] = &unk_10164E908;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [(_BasicTwoLinesContentViewModel *)v11 initWithTitleText:title subtitleText:subtitle imageCreationBlock:v15];
  [(_BasicTwoLinesContentViewModel *)v13 setTitleHighlightRanges:titleHighlightRanges];
  [(_BasicTwoLinesContentViewModel *)v13 setSubtitleHighlightRanges:subtitleHighlightRanges];
  [(_BasicTwoLinesContentViewModel *)v13 setDisabled:_supportsOfflineDownload ^ 1];
  [(_BasicTwoLinesContentViewModel *)v13 setAxIdentifier:@"LocalSearchCompletionCell"];

  return v13;
}

+ (id)cellModelForLocalSearchCompletion:(id)completion userLocationSearchResult:(id)result autocompleteClientSourceType:(int64_t)type
{
  completionCopy = completion;
  resultCopy = result;
  title = [completionCopy title];
  titleHighlightRanges = [completionCopy titleHighlightRanges];
  subtitle = [completionCopy subtitle];
  subtitleHighlightRanges = [completionCopy subtitleHighlightRanges];
  category = [completionCopy category];

  if (category)
  {
    category2 = [completionCopy category];
  }

  else
  {
    category2 = 0;
  }

  directionIntent = [completionCopy directionIntent];

  selfCopy = self;
  if (directionIntent)
  {
    v14 = [UIImage imageNamed:@"RouteAC"];
    v15 = [[DirectionIntentCellViewModel alloc] initWithLocalSearchCompletion:completionCopy];
    titleCellString = [(DirectionIntentCellViewModel *)v15 titleCellString];

    subtitleCellString = [(DirectionIntentCellViewModel *)v15 subtitleCellString];

    v18 = 0;
    meCard = 0;
    v79 = 0;
    subtitle = subtitleCellString;
    v84 = titleCellString;
    goto LABEL_37;
  }

  clientResolved = [completionCopy clientResolved];

  v84 = title;
  if (clientResolved)
  {
    clientResolved2 = [completionCopy clientResolved];
    itemType = [clientResolved2 itemType];

    v23 = 0;
    if (itemType <= 2)
    {
      if (itemType == 1)
      {
        v79 = +[GEOFeatureStyleAttributes homeStyleAttributes];
        parkedCar = +[AddressBookManager sharedManager];
        meCardHomeAddress = [parkedCar meCardHomeAddress];
        goto LABEL_30;
      }

      if (itemType == 2)
      {
        v79 = +[GEOFeatureStyleAttributes workStyleAttributes];
        parkedCar = +[AddressBookManager sharedManager];
        meCardHomeAddress = [parkedCar meCardWorkAddress];
        goto LABEL_30;
      }
    }

    else
    {
      switch(itemType)
      {
        case 3:
          v79 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
          if ([subtitle length])
          {
            v23 = 0;
            meCard = 0;
            goto LABEL_32;
          }

          v74 = +[ParkedCarManager sharedManager];
          parkedCar = [v74 parkedCar];

          locationDisplayString = [parkedCar locationDisplayString];

          v23 = 0;
          meCard = 0;
          subtitleHighlightRanges = 0;
          subtitle = locationDisplayString;
          goto LABEL_31;
        case 4:
          v27 = [subtitle length];
          if (resultCopy && !v27)
          {
            mapItem = [resultCopy mapItem];
            _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];
            v30 = sub_100C47980(_addressFormattedAsShortenedAddress);
            v31 = v30;
            v32 = &stru_1016631F0;
            if (v30)
            {
              v32 = v30;
            }

            v33 = v32;

            subtitleHighlightRanges = 0;
            subtitle = v33;
          }

          parkedCar = +[AddressBookManager sharedManager];
          meCard = [parkedCar meCard];
          v23 = 0;
          v79 = 0;
          goto LABEL_31;
        case 6:
          v79 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
          parkedCar = +[AddressBookManager sharedManager];
          meCardHomeAddress = [parkedCar meCardSchoolAddress];
LABEL_30:
          v23 = meCardHomeAddress;
          meCard = 0;
LABEL_31:

          goto LABEL_32;
      }
    }

    meCard = 0;
    v79 = 0;
LABEL_32:
    if (![subtitle length] && v23)
    {
      shortAddress = [v23 shortAddress];

      subtitleHighlightRanges = 0;
      subtitle = shortAddress;
    }

    v18 = 0;
    goto LABEL_36;
  }

  _type = [completionCopy _type];
  v18 = 0;
  if (_type <= 2)
  {
    if ((_type - 1) < 2)
    {
      v79 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v18 = 0;
      meCard = 0;
LABEL_36:
      v14 = 0;
      goto LABEL_37;
    }

    if (!_type)
    {
      goto LABEL_57;
    }

    goto LABEL_20;
  }

  if (_type != 4)
  {
    if (_type == 3)
    {
LABEL_57:
      v14 = [UIImage imageNamed:@"search"];
      v18 = 0;
      meCard = 0;
      v79 = 0;
      goto LABEL_37;
    }

LABEL_20:
    meCard = 0;
    v79 = 0;
    v14 = 0;
    goto LABEL_37;
  }

  v82 = subtitle;
  collectionResult = [completionCopy collectionResult];
  collection = [collectionResult collection];

  v59 = [NSMutableArray arrayWithCapacity:2];
  publisherAttribution = [collection publisherAttribution];
  displayName = [publisherAttribution displayName];

  if ([displayName length])
  {
    [v59 addObject:displayName];
  }

  v80 = displayName;
  numberOfItems = [collection numberOfItems];
  if (numberOfItems)
  {
    v63 = numberOfItems;
    v64 = +[NSBundle mainBundle];
    v65 = [v64 localizedStringForKey:@"Places [Autocomplete]" value:@"localized string not found" table:0];
    v66 = [NSString localizedStringWithFormat:v65, v63];
    [v59 addObject:v66];
  }

  v67 = titleHighlightRanges;
  if ([self userInterfaceLayoutDirectionIsRTL])
  {
    reverseObjectEnumerator = [v59 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v70 = [allObjects mutableCopy];

    v59 = v70;
  }

  _delimiterString = [self _delimiterString];
  v72 = [v59 componentsJoinedByString:_delimiterString];

  publisherAttribution2 = [collection publisherAttribution];
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [publisherAttribution2 iconIdentifier]);

  meCard = 0;
  v79 = 0;
  v14 = 0;
  titleHighlightRanges = v67;
  subtitle = v72;
LABEL_37:
  v35 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:type];
  v78 = v35;
  if ([v35 length])
  {
    v36 = [NSMutableArray arrayWithCapacity:2];
    [v36 addObject:v35];
    if ([subtitle length])
    {
      [v36 addObject:subtitle];
    }

    v37 = selfCopy;
    if ([selfCopy userInterfaceLayoutDirectionIsRTL])
    {
      reverseObjectEnumerator2 = [v36 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];
      v40 = subtitle;
      v41 = [allObjects2 mutableCopy];

      v37 = selfCopy;
      v36 = v41;
      subtitle = v40;
    }

    _delimiterString2 = [v37 _delimiterString];
    v43 = [v36 componentsJoinedByString:_delimiterString2];
  }

  else
  {
    v43 = subtitle;
  }

  v44 = [_SearchResultTwoLinesContentViewModel alloc];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100C50010;
  v88[3] = &unk_10164E9C8;
  v77 = v14;
  v89 = v77;
  v45 = category2;
  v90 = v45;
  v46 = completionCopy;
  v91 = v46;
  v47 = v79;
  v92 = v47;
  v48 = meCard;
  v93 = v48;
  v49 = v18;
  v94 = v49;
  v50 = [(_BasicTwoLinesContentViewModel *)v44 initWithTitleText:v84 subtitleText:v43 imageCreationBlock:v88];
  v51 = titleHighlightRanges;
  [(_BasicTwoLinesContentViewModel *)v50 setTitleHighlightRanges:titleHighlightRanges];
  [(_BasicTwoLinesContentViewModel *)v50 setSubtitleHighlightRanges:subtitleHighlightRanges];
  clientResolved3 = [v46 clientResolved];
  if ([clientResolved3 itemType] == 4)
  {
    v53 = [v43 length];

    if (!v53)
    {
      [(_SearchResultTwoLinesContentViewModel *)v50 setObservedSearchResult:resultCopy];
    }
  }

  else
  {
  }

  mapItem2 = [v46 mapItem];
  v55 = mapItem2;
  if (mapItem2)
  {
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100C502FC;
    v86[3] = &unk_10164E958;
    v87 = mapItem2;
    [(_BasicTwoLinesContentViewModel *)v50 setPersonalizedItemForQuickActionMenuCreator:v86];
  }

  if ([v46 _type] == 4)
  {
    [(_BasicTwoLinesContentViewModel *)v50 setImageStyle:2];
  }

  [(_BasicTwoLinesContentViewModel *)v50 setAxIdentifier:@"LocalSearchCompletionCell"];

  return v50;
}

+ (id)cellModelForParkedCar:(id)car
{
  carCopy = car;
  title = [carCopy title];
  locationDisplayString = [carCopy locationDisplayString];

  v6 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:title subtitleText:locationDisplayString imageCreationBlock:&stru_10164E9A0];
  [(_BasicTwoLinesContentViewModel *)v6 setAxIdentifier:@"ParkedCarCell"];

  return v6;
}

+ (id)_moreButtonAccessoryWithMenuProvider:(id)provider axID:(id)d
{
  dCopy = d;
  providerCopy = provider;
  v7 = [UIButton buttonWithType:0];
  v8 = [UIImage systemImageNamed:@"ellipsis"];
  [v7 setImage:v8 forState:0];

  v9 = +[UIColor labelColor];
  [v7 setTintColor:v9];

  [v7 setShowsMenuAsPrimaryAction:1];
  [v7 _setMenuProvider:providerCopy];

  [v7 setAccessibilityIdentifier:dCopy];
  v10 = [[UICellAccessoryCustomView alloc] initWithCustomView:v7 placement:1];
  [v10 setDisplayedState:2];

  return v10;
}

+ (id)libraryCellModelForMapItem:(id)item customName:(id)name styleAttributes:(id)attributes thirdLineViewModel:(id)model menuProvider:(id)provider
{
  nameCopy = name;
  attributesCopy = attributes;
  modelCopy = model;
  providerCopy = provider;
  v16 = [MKMapItem _itemWithGeoMapItem:item];
  v17 = v16;
  if (nameCopy)
  {
    name = nameCopy;
  }

  else
  {
    name = [v16 name];
  }

  v37 = name;
  v19 = +[NSMutableArray array];
  _firstLocalizedCategoryName = [v17 _firstLocalizedCategoryName];
  if (_firstLocalizedCategoryName)
  {
    [v19 addObject:_firstLocalizedCategoryName];
  }

  _geoMapItem = [v17 _geoMapItem];
  _resultSnippetLocationString = [_geoMapItem _resultSnippetLocationString];

  if (_resultSnippetLocationString)
  {
    [v19 addObject:_resultSnippetLocationString];
  }

  _delimiterString = [self _delimiterString];
  v24 = [v19 componentsJoinedByString:_delimiterString];

  if (![v24 length])
  {
    _addressFormattedAsShortenedAddress = [v17 _addressFormattedAsShortenedAddress];

    v24 = _addressFormattedAsShortenedAddress;
  }

  v35 = v17;
  v36 = nameCopy;
  v26 = [_BasicTwoLinesContentViewModel alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100C50A38;
  v38[3] = &unk_10164E908;
  v39 = attributesCopy;
  v27 = attributesCopy;
  v28 = [(_BasicTwoLinesContentViewModel *)v26 initWithTitleText:v37 subtitleText:v24 imageCreationBlock:v38];
  [(_BasicTwoLinesContentViewModel *)v28 setAxIdentifier:@"LibraryPlaceCell"];
  if (modelCopy)
  {
    [(_BasicTwoLinesContentViewModel *)v28 setPlaceContextViewModel:modelCopy];
  }

  v29 = [TwoLinesContentViewModelComposer _moreButtonAccessoryWithMenuProvider:providerCopy axID:@"LibraryPlaceCellMoreButton"];
  v30 = objc_alloc_init(UICellAccessoryMultiselect);
  [v30 setDisplayedState:1];
  v40[0] = v29;
  v40[1] = v30;
  [NSArray arrayWithObjects:v40 count:2];
  v32 = v31 = modelCopy;
  [(_BasicTwoLinesContentViewModel *)v28 setCellAccessories:v32];

  return v28;
}

+ (id)cellModelForMapItem:(id)item
{
  itemCopy = item;
  name = [itemCopy name];
  _addressFormattedAsShortenedAddress = [itemCopy _addressFormattedAsShortenedAddress];
  v6 = [_BasicTwoLinesContentViewModel alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C50C08;
  v10[3] = &unk_10164E908;
  v11 = itemCopy;
  v7 = itemCopy;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:name subtitleText:_addressFormattedAsShortenedAddress imageCreationBlock:v10];
  [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"PlaceCell"];

  return v8;
}

+ (id)cellModelForCollectionMapItem:(id)item currentLocation:(id)location
{
  itemCopy = item;
  locationCopy = location;
  name = [itemCopy name];
  _firstLocalizedCategoryName = [itemCopy _firstLocalizedCategoryName];
  if (locationCopy)
  {
    v25 = 0;
    _resultSnippetLocationString = [NSString distanceStringFromLocation:locationCopy toMapItem:itemCopy showsDistance:&v25];
    if (!_resultSnippetLocationString)
    {
      _geoMapItem = [itemCopy _geoMapItem];
      _resultSnippetLocationString = [_geoMapItem _resultSnippetLocationString];
    }
  }

  else
  {
    _resultSnippetLocationString = 0;
  }

  if ([itemCopy _hasPriceDescription])
  {
    [itemCopy _priceDescription];
  }

  else
  {
    [itemCopy _priceRangeString];
  }
  v11 = ;
  v12 = +[NSMutableArray array];
  if ([_firstLocalizedCategoryName length])
  {
    [v12 addObject:_firstLocalizedCategoryName];
  }

  if ([_resultSnippetLocationString length])
  {
    [v12 addObject:_resultSnippetLocationString];
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
  v24 = itemCopy;
  v17 = itemCopy;
  v18 = [(_BasicTwoLinesContentViewModel *)v16 initWithTitleText:name subtitleText:v15 imageCreationBlock:&v20];
  [(_BasicTwoLinesContentViewModel *)v18 setAxIdentifier:@"GuideItemCell", v20, v21, v22, v23];

  return v18;
}

+ (id)cellModelForTransitLine:(id)line
{
  lineCopy = line;
  name = [lineCopy name];
  v5 = [name length];

  if (v5)
  {
    name2 = [lineCopy name];
    system = [lineCopy system];
    name3 = [system name];
  }

  else
  {
    system2 = [lineCopy system];
    name4 = [system2 name];
    v11 = [name4 length];

    if (v11)
    {
      system = [lineCopy system];
      [system name];
    }

    else
    {
      system = +[NSBundle mainBundle];
      [system localizedStringForKey:@"Transit_Line_Cell_Default" value:@"localized string not found" table:0];
    }
    name2 = ;
    name3 = 0;
  }

  v12 = [_BasicTwoLinesContentViewModel alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100C511D0;
  v16[3] = &unk_10164E908;
  v17 = lineCopy;
  v13 = lineCopy;
  v14 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:name2 subtitleText:name3 imageCreationBlock:v16];
  [(_BasicTwoLinesContentViewModel *)v14 setImageStyle:4];
  [(_BasicTwoLinesContentViewModel *)v14 setAxIdentifier:@"TransitLineCell"];

  return v14;
}

+ (id)cellModelForCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [_CollectionTwoLinesContentViewModel alloc];
  title = [collectionCopy title];
  subtitle = [collectionCopy subtitle];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C514D0;
  v10[3] = &unk_10164E908;
  v11 = collectionCopy;
  v7 = collectionCopy;
  v8 = [(_BasicTwoLinesContentViewModel *)v4 initWithTitleText:title subtitleText:subtitle imageCreationBlock:v10];

  [(_CollectionTwoLinesContentViewModel *)v8 setCollection:v7];
  [(_BasicTwoLinesContentViewModel *)v8 setImageStyle:3];
  [(_BasicTwoLinesContentViewModel *)v8 setAxIdentifier:@"GuideCell"];

  return v8;
}

+ (id)cellModelForMapsFavoriteItem:(id)item title:(id)title subtitle:(id)subtitle
{
  itemCopy = item;
  subtitleCopy = subtitle;
  titleCopy = title;
  v10 = [_MapsFavoriteItemTwoLinesContentViewModel alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100C5185C;
  v16[3] = &unk_10164E908;
  v11 = itemCopy;
  v17 = v11;
  v12 = [(_BasicTwoLinesContentViewModel *)v10 initWithTitleText:titleCopy subtitleText:subtitleCopy imageCreationBlock:v16];

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

+ (id)cellModelForMapsFavoriteItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  subtitle = [itemCopy subtitle];
  v7 = [self cellModelForMapsFavoriteItem:itemCopy title:title subtitle:subtitle];

  return v7;
}

+ (id)cellModelForMapsSuggestionEntry:(id)entry title:(id)title subtitle:(id)subtitle menuProvider:(id)provider
{
  entryCopy = entry;
  providerCopy = provider;
  subtitleCopy = subtitle;
  titleCopy = title;
  v13 = [_MapsSuggestionsEntryTwoLinesContentViewModel alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100C51F48;
  v26[3] = &unk_10164E908;
  v14 = entryCopy;
  v27 = v14;
  v15 = [(_BasicTwoLinesContentViewModel *)v13 initWithTitleText:titleCopy subtitleText:subtitleCopy imageCreationBlock:v26];

  [(_MapsSuggestionsEntryTwoLinesContentViewModel *)v15 setObservedEntry:v14];
  [(_BasicTwoLinesContentViewModel *)v15 setImageStyle:4];
  if (providerCopy)
  {
    v16 = [TwoLinesContentViewModelComposer _moreButtonAccessoryWithMenuProvider:providerCopy axID:@"MsgCurrentLocationCellMoreButton"];
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

+ (id)cellModelForMapsSuggestionEntry:(id)entry menuProvider:(id)provider
{
  providerCopy = provider;
  entryCopy = entry;
  title = [entryCopy title];
  subtitle = [entryCopy subtitle];
  v10 = [self cellModelForMapsSuggestionEntry:entryCopy title:title subtitle:subtitle menuProvider:providerCopy];

  return v10;
}

+ (id)cellModelForMapsSuggestionsShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  isSetupPlaceholder = [shortcutCopy isSetupPlaceholder];
  v5 = shortcutCopy;
  if ([v5 type] == 6)
  {
    identifier = [v5 identifier];
    v7 = [identifier isEqualToString:@"NearbyTransit"];
  }

  else
  {
    v7 = 0;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if (v7)
    {
      placeName = MapsSuggestionsLocalizedNearbyTransitFullString();
      MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
    }

    else
    {
      placeName = [v5 placeName];
      [v5 shortAddress];
    }
    v9 = ;
    proposedFavoriteStyleAttributes = [v5 proposedFavoriteStyleAttributes];
  }

  else
  {
    if (v7)
    {
      placeName = MapsSuggestionsLocalizedNearbyTransitFullString();
      MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
    }

    else
    {
      placeName = [v5 title];
      [v5 subtitle];
    }
    v9 = ;
    proposedFavoriteStyleAttributes = [v5 styleAttributes];
  }

  v11 = proposedFavoriteStyleAttributes;
  v12 = [_BasicTwoLinesContentViewModel alloc];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100C5235C;
  v20 = &unk_10164E980;
  v22 = isSetupPlaceholder;
  v13 = v11;
  v21 = v13;
  v14 = [(_BasicTwoLinesContentViewModel *)v12 initWithTitleText:placeName subtitleText:v9 imageCreationBlock:&v17];
  [(_BasicTwoLinesContentViewModel *)v14 setVibrantBackground:isSetupPlaceholder, v17, v18, v19, v20];
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

+ (id)_searchResultModelWithSearchResult:(id)result title:(id)title subtitle:(id)subtitle isAuthorizedForPreciseLocation:(BOOL)location placeContextViewModel:(id)model
{
  locationCopy = location;
  resultCopy = result;
  subtitleCopy = subtitle;
  modelCopy = model;
  titleCopy = title;
  v15 = [_SearchResultTwoLinesContentViewModel alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100C5267C;
  v25[3] = &unk_10164E908;
  v16 = resultCopy;
  v26 = v16;
  v17 = [(_BasicTwoLinesContentViewModel *)v15 initWithTitleText:titleCopy subtitleText:subtitleCopy imageCreationBlock:v25];

  [(_SearchResultTwoLinesContentViewModel *)v17 setPreferredAddressFormat:0];
  if ((![v16 isDynamicCurrentLocation] || locationCopy) && !objc_msgSend(subtitleCopy, "length"))
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
  [(_BasicTwoLinesContentViewModel *)v17 setPlaceContextViewModel:modelCopy, v20, v21, v22, v23];

  [(_BasicTwoLinesContentViewModel *)v17 setAxIdentifier:@"SearchResultCell"];

  return v17;
}

+ (id)cellModelForDroppedPinFromSearchResult:(id)result
{
  resultCopy = result;
  mapItem = [resultCopy mapItem];
  _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];

  v7 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:5];
  if ([(__CFString *)_addressFormattedAsShortenedAddress length])
  {
    v8 = _addressFormattedAsShortenedAddress;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  if ([(__CFString *)v9 isEqual:_addressFormattedAsShortenedAddress])
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  v11 = [self _searchResultModelWithSearchResult:resultCopy title:v9 subtitle:v10 isAuthorizedForPreciseLocation:0 placeContextViewModel:0];

  return v11;
}

+ (id)cellModelForSearchResult:(id)result typedACQuery:(id)query showAutocompleteClientSource:(BOOL)source
{
  sourceCopy = source;
  resultCopy = result;
  queryCopy = query;
  v10 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v10 isAuthorizedForPreciseLocation];

  mapItem = [resultCopy mapItem];
  _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];

  if ([resultCopy isDynamicCurrentLocation])
  {
    if (isAuthorizedForPreciseLocation)
    {
      title = [resultCopy title];
      mapItem2 = [resultCopy mapItem];
      _addressFormattedAsShortenedAddress2 = [mapItem2 _addressFormattedAsShortenedAddress];
      v17 = sub_100C47980(_addressFormattedAsShortenedAddress2);
    }

    else
    {
      title = MKLocalizedStringForCurrentLocation();
      v17 = 0;
    }

    initWithCurrentLocation = [[PlaceContextViewModel alloc] initWithCurrentLocation];
  }

  else
  {
    if (sourceCopy && [resultCopy type] == 3 && objc_msgSend(queryCopy, "length") && (objc_msgSend(_addressFormattedAsShortenedAddress, "lowercaseString"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(queryCopy, "lowercaseString"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "containsString:", v19), v19, v18, v20))
    {
      title = _addressFormattedAsShortenedAddress;
      v21 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:5];
    }

    else
    {
      title = [resultCopy name];
      v21 = _addressFormattedAsShortenedAddress;
    }

    v17 = v21;
    initWithCurrentLocation = 0;
  }

  v23 = [self _searchResultModelWithSearchResult:resultCopy title:title subtitle:v17 isAuthorizedForPreciseLocation:isAuthorizedForPreciseLocation placeContextViewModel:initWithCurrentLocation];

  return v23;
}

+ (id)cellModelForOfflineSearchResult:(id)result
{
  resultCopy = result;
  v4 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v4 isAuthorizedForPreciseLocation];

  mapItem = [resultCopy mapItem];
  _addressFormattedAsCity = [mapItem _addressFormattedAsCity];

  if ([resultCopy isDynamicCurrentLocation])
  {
    v8 = +[NSBundle mainBundle];
    name = [v8 localizedStringForKey:@"[Offline Search] Current Location" value:@"localized string not found" table:@"Offline"];

    if (isAuthorizedForPreciseLocation)
    {
      mapItem2 = [resultCopy mapItem];
      _addressFormattedAsCity2 = [mapItem2 _addressFormattedAsCity];
    }

    else
    {
      _addressFormattedAsCity2 = 0;
    }

    initWithCurrentLocation = [[PlaceContextViewModel alloc] initWithCurrentLocation];
  }

  else
  {
    name = [resultCopy name];
    _addressFormattedAsCity2 = _addressFormattedAsCity;
    initWithCurrentLocation = 0;
  }

  v13 = [_SearchResultTwoLinesContentViewModel alloc];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C52DBC;
  v23[3] = &unk_10164E908;
  v14 = resultCopy;
  v24 = v14;
  v15 = [(_BasicTwoLinesContentViewModel *)v13 initWithTitleText:name subtitleText:_addressFormattedAsCity2 imageCreationBlock:v23];
  [(_SearchResultTwoLinesContentViewModel *)v15 setPreferredAddressFormat:1];
  if (isAuthorizedForPreciseLocation & 1 | (([v14 isDynamicCurrentLocation] & 1) == 0) && !objc_msgSend(_addressFormattedAsCity2, "length"))
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
  [(_BasicTwoLinesContentViewModel *)v15 setPlaceContextViewModel:initWithCurrentLocation, v18, v19, v20, v21];
  [(_BasicTwoLinesContentViewModel *)v15 setAxIdentifier:@"SearchResultCell"];

  return v15;
}

+ (id)cellModelForAddressBookAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy isMeCard])
  {
    localizedLabel = [addressCopy localizedLabel];
    capitalizedString = [localizedLabel capitalizedString];
  }

  else
  {
    capitalizedString = [addressCopy compositeName];
  }

  shortAddress = [addressCopy shortAddress];
  v7 = [_BasicTwoLinesContentViewModel alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100C531E4;
  v21[3] = &unk_10164E908;
  v8 = addressCopy;
  v22 = v8;
  v9 = [(_BasicTwoLinesContentViewModel *)v7 initWithTitleText:capitalizedString subtitleText:shortAddress imageCreationBlock:v21];
  geocodedMapItem = [v8 geocodedMapItem];
  v11 = geocodedMapItem;
  if (geocodedMapItem && ([geocodedMapItem _geoMapItem], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || (v13 = [MKMapItem alloc], objc_msgSend(v8, "addressDictionary"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "initWithAddressDictionary:", v14), v11, v14, (v11 = v15) != 0))
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

+ (id)cellModelForAddMissingPlaceWithUserEnteredText:(id)text
{
  textCopy = text;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Add to Maps [Home / Work Search Results]" value:@"localized string not found" table:0];

  v6 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:v5 subtitleText:textCopy imageCreationBlock:&stru_10164E8E0];
  [(_BasicTwoLinesContentViewModel *)v6 setAxIdentifier:@"AddMissingPlaceCell"];

  return v6;
}

+ (id)cellModelForPlaceNotFoundWithUserEnteredText:(id)text
{
  textCopy = text;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"More Results for <user typed string> [Home / Work]" value:@"localized string not found" table:0];

  textCopy = [NSString stringWithFormat:v5, textCopy];
  v7 = [textCopy rangeOfString:textCopy];
  v9 = v8;

  v10 = [[_BasicTwoLinesContentViewModel alloc] initWithTitleText:textCopy subtitleText:0 imageCreationBlock:&stru_10164E8C0];
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

+ (id)cellModelForLibraryManagementItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  symbol = [itemCopy symbol];

  v6 = [_BasicTwoLinesContentViewModel alloc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C54058;
  v11[3] = &unk_10164E908;
  v12 = symbol;
  v7 = symbol;
  v8 = [(_BasicTwoLinesContentViewModel *)v6 initWithTitleText:title subtitleText:0 imageCreationBlock:v11];
  [(_BasicTwoLinesContentViewModel *)v8 setImageStyle:4];
  titleText = [(_BasicTwoLinesContentViewModel *)v8 titleText];
  [(_BasicTwoLinesContentViewModel *)v8 setAccessibilityLabel:titleText];

  return v8;
}

+ (id)cellModelForHistoryEntryRecentsItemProtocol:(id)protocol showAutocompleteClientSource:(BOOL)source
{
  sourceCopy = source;
  protocolCopy = protocol;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = protocolCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = [self cellModelForHistoryEntryRecentsItem:v8 showAutocompleteClientSource:sourceCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end