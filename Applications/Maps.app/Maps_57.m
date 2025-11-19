id sub_1009633E8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[CarDisplayController sharedInstance];
  v10 = [v9 platformController];
  v11 = [v10 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    if ([v13 isCarNavigationCompatible])
    {
      v14 = off_1015F6178;
      v15 = [v8 _maps_lastContextOfClass:objc_opt_class()];
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = off_1015F6170;
    }

    v15 = objc_alloc_init(*v14);
LABEL_19:
    v26 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v29 = [v28 sceneType];
    if (a4 && v29 >= 4)
    {
      *a4 = 0;
    }

    v30 = [v8 containsObject:v15];
    v31 = sub_100799D40();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
    if (v30)
    {
      if (!v32)
      {
LABEL_47:

        v25 = [v8 _maps_subarrayToIndex:{objc_msgSend(v8, "indexOfObject:", v15)}];
LABEL_57:

        goto LABEL_58;
      }

      v33 = v15;
      if (!v33)
      {
        v38 = @"<nil>";
        goto LABEL_43;
      }

      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (objc_opt_respondsToSelector())
      {
        v36 = [v33 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v35])
        {
          v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

          goto LABEL_33;
        }
      }

      v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_33:

LABEL_43:
      if (*(a1 + 32))
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v46 = v45;
      *buf = 138412546;
      v56 = v38;
      v57 = 2112;
      v58 = v46;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Will pop to existing %@ (animated:%@)", buf, 0x16u);

      goto LABEL_47;
    }

    if (!v32)
    {
LABEL_53:

      v49 = [NSMutableArray arrayWithCapacity:2];
      v50 = [v8 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v52 = [v8 firstObject];
      }

      else
      {
        v52 = objc_alloc_init(CarSmallWidgetBrowsingModeController);
      }

      v53 = v52;
      [v49 addObject:v52];

      [v49 addObject:v15];
      v25 = [v49 copy];

      goto LABEL_57;
    }

    v39 = v15;
    if (!v39)
    {
      v44 = @"<nil>";
      goto LABEL_49;
    }

    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    if (objc_opt_respondsToSelector())
    {
      v42 = [v39 performSelector:"accessibilityIdentifier"];
      v43 = v42;
      if (v42 && ![v42 isEqualToString:v41])
      {
        v44 = [NSString stringWithFormat:@"%@<%p, %@>", v41, v39, v43];

        goto LABEL_41;
      }
    }

    v44 = [NSString stringWithFormat:@"%@<%p>", v41, v39];
LABEL_41:

LABEL_49:
    if (*(a1 + 32))
    {
      v47 = @"YES";
    }

    else
    {
      v47 = @"NO";
    }

    v48 = v47;
    *buf = 138412546;
    v56 = v44;
    v57 = 2112;
    v58 = v48;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Will push %@ onto CarSmallWidgetBrowsingModeController (animated:%@)", buf, 0x16u);

    goto LABEL_53;
  }

  v16 = sub_100799D40();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = +[CarDisplayController sharedInstance];
    v18 = [v17 platformController];
    v19 = [v18 currentSession];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412290;
    v56 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Coordinator tried to display navigation, but current session was of class: %@", buf, 0xCu);
  }

  v22 = sub_10006D178();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v56 = "[CarChromeModeCoordinator _displayNavigationAnimated:]_block_invoke";
    v57 = 2080;
    v58 = "CarChromeModeCoordinator.m";
    v59 = 1024;
    v60 = 1366;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v56 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v25 = v8;
LABEL_58:

  return v25;
}

NSArray *__cdecl sub_100963EF0(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_12:
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Will pop topmost CarRoutePlanningContext %@", buf, 0xCu);
  }

  v13 = [(NSArray *)v4 subarrayWithRange:0, [(NSArray *)v4 count]- 1];
LABEL_14:

  return v13;
}

id sub_100964404(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 MKMapItem];
    if (v8)
    {
    }

    else if ([v7 type] == 10)
    {
      v9 = [v7 stringForKey:@"MapsSuggestionsCarPlayEnergyQueryString"];
      v10 = objc_alloc_init(SearchFieldItem);
      [(SearchFieldItem *)v10 setSearchString:v9];
      v11 = +[CarDisplayController sharedInstance];
      v94 = @"LowFuel";
      v95 = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v13 = [v11 processSearchFieldItem:v10 searchInfo:0 userInfo:v12];

LABEL_14:
      v19 = 0;
      goto LABEL_68;
    }

    if ([v7 type] == 12)
    {
      v9 = objc_alloc_init(SearchFieldItem);
      v14 = [v7 stringForKey:@"MapsSuggestionsAppConnectionValueKey"];
      [(SearchFieldItem *)v9 setAddressString:v14];

      v15 = [v7 MKMapItem];

      if (v15)
      {
        v10 = [v7 MKMapItem];
        if (!v10)
        {
LABEL_13:
          v11 = +[CarDisplayController sharedInstance];
          v18 = [v11 processSearchFieldItem:v9 searchInfo:0 userInfo:0];
          goto LABEL_14;
        }
      }

      else
      {
        v65 = [v7 URLForKey:@"MapsSuggestionsAppConnectionMapItemURL"];
        v66 = [v65 absoluteString];
        v67 = [v66 length];

        if (v67)
        {
          v68 = [MKMapItem mapItemsFromURL:v65 options:0];
          v10 = [v68 firstObject];
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v16 = [[SearchResult alloc] initWithMapItem:v10];
      [(SearchFieldItem *)v9 setSearchResult:v16];
      v17 = [(SearchFieldItem *)v9 searchResult];
      [v17 setHasIncompleteMetadata:1];

      goto LABEL_13;
    }
  }

  v20 = objc_alloc_init(NSMutableArray);
  v21 = [a1[5] mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(NSMutableDictionary);
  }

  v24 = v23;

  [v24 setObject:&off_1016E78F8 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [a1[4] shortcutIdentifier];
    if (v25)
    {
      [v24 setObject:v25 forKeyedSubscript:@"ShortcutIdentifier"];
    }
  }

  v86 = v20;
  if (v7 && [v7 type] == 11)
  {
    v26 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:v7 excludeCurrentLocationOrigin:0];
    if ([v26 count])
    {
      v27 = [v26 firstObject];
      v28 = [v27 searchResult];
      v29 = [v28 isDynamicCurrentLocation];

      if (v29)
      {
        v30 = sub_100798A3C();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
        }

        v31 = v4;

        v32 = v86;
      }

      else
      {
        v31 = v4;
        v69 = objc_alloc_init(SearchFieldItem);
        v70 = +[SearchResult currentLocationSearchResult];
        [(SearchFieldItem *)v69 setSearchResult:v70];

        v32 = v86;
        [v86 insertObject:v69 atIndex:0];
      }

      [v32 addObjectsFromArray:v26];
      [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
      v71 = [v7 sharingContacts];
      [v24 setObject:v71 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

      v72 = [v7 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
      v73 = [[DirectionItem alloc] initWithItems:v32 transportType:1];
      v74 = [DrivePreferences alloc];
      v75 = [v72 automobileOptions];
      v76 = +[NSUserDefaults standardUserDefaults];
      v77 = [(DrivePreferences *)v74 initWithAutomobileOptions:v75 defaults:v76];
      [(DirectionItem *)v73 setDrivePreferences:v77];

      v78 = +[CarDisplayController sharedInstance];
      v79 = [v24 copy];
      v80 = [v78 processDirectionItem:v73 userInfo:v79];

      if (v80)
      {
        v4 = v31;
        v19 = [a1[6] _appendOrReplaceRoutePlanningContextForSession:v80 currentContexts:v31];
      }

      else
      {
        v19 = 0;
        v4 = v31;
      }

      v20 = v86;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_67;
  }

  v33 = a1[4];
  v34 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v35 = v33;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37 && ([v37 historyEntry], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "conformsToProtocol:", v34), v38, v39))
  {
    v26 = v35;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v40 = [v26 historyEntry];
    v41 = [SearchFieldItem searchFieldItemsForRouteHistoryEntry:v40];

    if ([v41 count])
    {
      v85 = v4;
      v42 = [v41 firstObject];
      v43 = [v42 searchResult];
      v44 = [v43 isDynamicCurrentLocation];

      if ((v44 & 1) == 0)
      {
        v45 = +[SearchResult currentLocationSearchResult];
        [v42 setSearchResult:v45];
      }

      v84 = v42;
      [v20 addObjectsFromArray:v41];
      [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
      v46 = [v7 sharingContacts];
      [v24 setObject:v46 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

      v47 = [[DirectionItem alloc] initWithItems:v20 transportType:1];
      v48 = [DrivePreferences alloc];
      v49 = [v26 historyEntry];
      v50 = [v49 automobileOptions];
      v51 = +[NSUserDefaults standardUserDefaults];
      v52 = [(DrivePreferences *)v48 initWithAutomobileOptions:v50 defaults:v51];
      [(DirectionItem *)v47 setDrivePreferences:v52];

      v53 = +[CarDisplayController sharedInstance];
      v54 = [v24 copy];
      v55 = [v53 processDirectionItem:v47 userInfo:v54];

      if (v55)
      {
        v19 = [a1[6] _appendOrReplaceRoutePlanningContextForSession:v55 currentContexts:v85];
      }

      else
      {
        v19 = 0;
      }

      v4 = v85;
      v20 = v86;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_67;
  }

  v56 = [SearchFieldItem searchFieldItemWithObject:a1[4]];
  if (v56)
  {
    v57 = objc_alloc_init(SearchFieldItem);
    v58 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v57 setSearchResult:v58];

    v59 = [DirectionItem alloc];
    v93[0] = v57;
    v93[1] = v56;
    v60 = [NSArray arrayWithObjects:v93 count:2];
    v61 = [(DirectionItem *)v59 initWithItems:v60 transportType:1];

    v62 = +[CarDisplayController sharedInstance];
    v63 = [v24 copy];
    v64 = [v62 processDirectionItem:v61 userInfo:v63];

    if (v64)
    {
      v19 = [a1[6] _appendOrReplaceRoutePlanningContextForSession:v64 currentContexts:v4];
    }

    else
    {
      v19 = 0;
    }

    v20 = v86;
  }

  else
  {
    v81 = sub_10006D178();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v88 = "[CarChromeModeCoordinator displayRoutePlanningForDestination:userInfo:]_block_invoke";
      v89 = 2080;
      v90 = "CarChromeModeCoordinator.m";
      v91 = 1024;
      v92 = 1156;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (!sub_100E03634())
    {
      v19 = 0;
      goto LABEL_66;
    }

    v57 = sub_10006D178();
    if (os_log_type_enabled(&v57->super, OS_LOG_TYPE_ERROR))
    {
      v82 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v88 = v82;
      _os_log_impl(&_mh_execute_header, &v57->super, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_66:
  v26 = 0;
LABEL_67:

LABEL_68:

  return v19;
}

id *sub_100964EC4(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _scheduleCoordinatedContextChangeWithCarBlock:result[5] dashboardMapBlock:0 smallWidgetsBlock:0];
  }

  return result;
}

void sub_100965140(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1009651E0;
    v3[3] = &unk_10162FBD8;
    v3[4] = v2;
    v4 = *(a1 + 40);
    [v2 _scheduleCoordinatedContextChangeWithCarBlock:v3 dashboardMapBlock:0 smallWidgetsBlock:0];
  }
}

id sub_1009652A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push LegacyCarSearchResultsModeController.", v9, 2u);
  }

  v6 = [[CarSearchResultsModeController alloc] initWithCollection:*(a1 + 32)];
  v7 = [v4 arrayByAddingObject:v6];

  return v7;
}

NSArray *__cdecl sub_10096537C(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push CarCollectionListModeController.", v9, 2u);
  }

  v6 = objc_alloc_init(CarCollectionListModeController);
  v7 = [(NSArray *)v4 arrayByAddingObject:v6];

  return v7;
}

id sub_1009654D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 _maps_lastContextOfClass:objc_opt_class()];
  v6 = v5;
  if (v5 && ([v5 placeItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = sub_100C73AE8(v7, *(a1 + 32)), v7, v8))
  {
    v9 = [v4 mutableCopy];
    [v9 removeObject:v6];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

id sub_100965740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push PlaceCardContext.", v13, 2u);
  }

  v6 = [v4 _maps_lastContextOfClass:objc_opt_class()];
  v7 = v6;
  if (v6 && ([(CarPlaceCardContext *)v6 placeItem], v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_100C73AE8(v8, *(a1 + 32)), v8, v9))
  {
    v10 = [v4 _maps_subarrayToIndex:{objc_msgSend(v4, "indexOfObject:", v7)}];
  }

  else
  {
    v11 = [[_TtC4Maps19CarPlaceCardContext alloc] initWithPlaceItem:*(a1 + 32)];

    v10 = [v4 arrayByAddingObject:v11];
    v7 = v11;
  }

  return v10;
}

void sub_100965A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100965A28(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || *(a1 + 40) == 1)
      {
        v8 = sub_100006E1C();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
LABEL_15:

          *(*(*(a1 + 32) + 8) + 24) = a3;
          *a4 = 1;
          goto LABEL_16;
        }

        v9 = v7;
        if (!v9)
        {
          v14 = @"<nil>";
          goto LABEL_14;
        }

        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v9 performSelector:"accessibilityIdentifier"];
          v13 = v12;
          if (v12 && ![v12 isEqualToString:v11])
          {
            v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

            goto LABEL_12;
          }
        }

        v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_12:

LABEL_14:
        *buf = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Found top-most non-search mode %@", buf, 0xCu);

        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

id sub_100965CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push BlaBlaSearchResults.", v9, 2u);
  }

  v6 = [[CarSearchResultsModeController alloc] initWithCategory:*(a1 + 32)];
  v7 = [v4 arrayByAddingObject:v6];

  return v7;
}

NSArray *__cdecl sub_100965DC8(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_DEBUG, "Will push CarSearchCategoriesModeController onto CarNavigationModeController", v11, 2u);
    }

    v7 = objc_alloc_init(CarSearchCategoriesModeController);
    v9 = [(NSArray *)v4 arrayByAddingObject:v7];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_DEBUG, "Will not push CarNavigationSearchModeController, current top mode is not CarNavigationModeController", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id sub_100966018(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [NSMutableArray arrayWithArray:v6];
  v8 = [v6 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will remove existing CarKeyboardModeController", &v22, 2u);
    }

    [v7 removeLastObject];
  }

  v11 = sub_100006E1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 48))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    v22 = 138412290;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will push CarKeyboardModeController (animated:%@)", &v22, 0xCu);
  }

  v14 = [v6 lastObject];
  if (objc_opt_respondsToSelector())
  {
    v15 = [v6 lastObject];
    v16 = [v15 currentUsageTarget];
  }

  else
  {
    v16 = 0;
  }

  v17 = +[CarDisplayController sharedInstance];
  v18 = [v17 chromeViewController];
  [v18 captureUserAction:9019 onTarget:v16];

  if (a4)
  {
    *a4 = *(a1 + 48);
  }

  v19 = [[CarKeyboardModeController alloc] initWithRequestedInteractionModel:*(a1 + 40) resultsProvider:*(a1 + 32)];
  v20 = [v7 arrayByAddingObject:v19];

  return v20;
}

id sub_10096666C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Already showing CarIncidentReportModeController", buf, 2u);
    }

    v9 = [v4 lastObject];
    [(CarIncidentReportModeController *)v9 setIncidentLayoutItem:*(a1 + 32) report:*(a1 + 40)];
    v10 = 0;
  }

  else
  {
    if (v8)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will push CarIncidentReportModeController", v13, 2u);
    }

    v9 = objc_alloc_init(CarIncidentReportModeController);
    [(CarIncidentReportModeController *)v9 setIncidentLayoutItem:*(a1 + 32) report:*(a1 + 40)];
    v11 = [*(a1 + 48) _replaceTopmostSearchResultContexts:v4 withContext:v9];

    v10 = [v11 copy];
    v4 = v11;
  }

  return v10;
}

id sub_100966864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Already showing CarIncidentReportModeController", buf, 2u);
    }

    [v5 setDisplayedFromMapControl:*(a1 + 40)];
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will push CarIncidentReportModeController", v13, 2u);
    }

    v10 = objc_alloc_init(CarIncidentReportModeController);
    [(CarIncidentReportModeController *)v10 setDisplayedFromMapControl:*(a1 + 40)];
    v11 = [*(a1 + 32) _replaceTopmostSearchResultContexts:v4 withContext:v10];

    v9 = [v11 copy];
    v4 = v11;
  }

  return v9;
}

id sub_100966A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_DEBUG, "Already showing CarAudioControlModeController", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_DEBUG, "Will push CarAudioControlModeController", v12, 2u);
    }

    v7 = objc_alloc_init(CarAudioControlModeController);
    v10 = [*(a1 + 32) _replaceTopmostSearchResultContexts:v4 withContext:v7];

    v9 = [v10 copy];
    v4 = v10;
  }

  return v9;
}

NSArray *__cdecl sub_100966BAC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push CarMapPanningModeController", v9, 2u);
  }

  v6 = objc_alloc_init(CarMapPanningModeController);
  v7 = [(NSArray *)v4 arrayByAddingObject:v6];

  return v7;
}

id sub_100966D60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[SearchSession currentSearchSession];
  v6 = v5;
  if (v5 && v5 != *(a1 + 32))
  {
    v7 = sub_100006E1C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_31:
      v21 = 0;
      goto LABEL_32;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      v13 = @"<nil>";
LABEL_25:

      v22 = v13;
      v23 = v6;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      if (objc_opt_respondsToSelector())
      {
        v26 = [v23 performSelector:"accessibilityIdentifier"];
        v27 = v26;
        if (v26 && ![v26 isEqualToString:v25])
        {
          v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

          goto LABEL_30;
        }
      }

      v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_30:

      *buf = 138412546;
      v32 = v22;
      v33 = 2112;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will not end displaying SearchSession, a new one has come in that we're about to display (try to end: %@, expected incoming: %@)", buf, 0x16u);

      goto LABEL_31;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_10;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_10:

    goto LABEL_25;
  }

  v14 = sub_100006E1C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_20;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_18;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_18:

LABEL_20:
    *buf = 138412290;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will pop down to map browsing to stop displaying SearchSession %@", buf, 0xCu);
  }

  v7 = [v4 _maps_lastContextOfClass:{+[CarChromeModeCoordinator getHomeContextClass](CarChromeModeCoordinator, "getHomeContextClass")}];
  if (!v7)
  {
    v7 = +[CarChromeModeCoordinator createHomeContext];
  }

  v30 = v7;
  v21 = [NSArray arrayWithObjects:&v30 count:1];
LABEL_32:

  return v21;
}

id sub_100967274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will update existing SAR mode for %@ results", &v14, 0xCu);
    }

    v10 = [v4 lastObject];

    [(CarNavigationSearchResultsModeController *)v10 setMapItems:*(a1 + 32) selectedItemIndex:*(a1 + 40)];
    v11 = 0;
  }

  else
  {
    if (v8)
    {
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will push SAR mode for %@ results", &v14, 0xCu);
    }

    v10 = [[CarNavigationSearchResultsModeController alloc] initWithMapItems:*(a1 + 32) selectedItemIndex:*(a1 + 40)];
    v11 = [v4 arrayByAddingObject:v10];
  }

  return v11;
}

id sub_100967580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will update existing SAR mode for %@ results", &v15, 0xCu);
    }

    v10 = [v4 lastObject];
    [(CarNavigationSearchResultsModeController *)v10 setSearchSession:*(a1 + 40)];
    v11 = 0;
  }

  else
  {
    if (v8)
    {
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will push SAR mode for %@ results", &v15, 0xCu);
    }

    v10 = [[CarNavigationSearchResultsModeController alloc] initWithSearchSession:*(a1 + 40)];
    v13 = [*(a1 + 48) _replaceTopmostSearchResultContexts:v4 withContext:v10];

    v11 = [v13 copy];
    v4 = v13;
  }

  return v11;
}

void sub_100967B10(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v11)
  {
    v7 = [SearchFieldItem searchFieldItemWithObject:v11];
  }

  else if (v5)
  {
    v8 = [SearchResult alloc];
    v9 = [v6 mapItem];
    v10 = [(SearchResult *)v8 initWithMapItem:v9];

    v7 = [SearchFieldItem searchFieldItemWithObject:v10];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100967DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will update existing SAR mode for %@ category", &v15, 0xCu);
    }

    v10 = [v4 lastObject];
    [(CarNavigationSearchResultsModeController *)v10 setCategory:*(a1 + 32)];
    v11 = 0;
  }

  else
  {
    if (v8)
    {
      v12 = *(a1 + 32);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will push SAR mode for %@ category", &v15, 0xCu);
    }

    v10 = [[CarNavigationSearchResultsModeController alloc] initWithCategory:*(a1 + 32)];
    v13 = [*(a1 + 40) _replaceTopmostSearchResultContexts:v4 withContext:v10];

    v11 = [v13 copy];
    v4 = v13;
  }

  return v11;
}

id sub_1009681D4(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[CarDisplayController sharedInstance];
  if ([a1[4] isOptionsLowFuel] && !objc_msgSend(a1[4], "origin"))
  {
    v6 = +[CarDisplayController sharedInstance];
    v7 = [v6 mapsSuggestionsController];
    [v7 setAllowLowFuelAlert:0];
  }

  v8 = [a1[5] results];
  if ([v8 count] == 1 || (objc_msgSend(a1[5], "shouldPreserveResults") & 1) != 0)
  {
    v9 = 0;
  }

  else if ([a1[4] isOptionsLowFuel])
  {
    v36 = [a1[5] results];
    v9 = [v36 count] == 0;
  }

  else
  {
    v9 = 1;
  }

  if ([a1[5] shouldPreserveResults])
  {
    v10 = [v4 _maps_lastContextOfClass:objc_opt_class()];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100006E1C();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:

        [v11 setSearchSession:a1[4]];
LABEL_28:
        v24 = 0;
        goto LABEL_70;
      }

      v13 = v11;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v13 performSelector:"accessibilityIdentifier"];
        v17 = v16;
        if (v16 && ![v16 isEqualToString:v15])
        {
          v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

          goto LABEL_15;
        }
      }

      v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_15:

      *buf = 138412290;
      v51 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Will reuse existing %@ (shouldPreserveResults)", buf, 0xCu);

      goto LABEL_16;
    }
  }

  if ([v5 isCarAppSceneHostingNavigation] && objc_msgSend(a1[5], "isSearchAlongRoute"))
  {
    v19 = sub_100006E1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      if ([a1[5] isSearchAlongRoute])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      if ([a1[5] shouldPreserveResults])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = v22;
      *buf = 138412546;
      v51 = v21;
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Will show results as SAR, we're currently navigating (isSearchAlongRoute:%@, shouldPreserveResults:%@)", buf, 0x16u);
    }

    [a1[6] _displaySearchAlongTheRouteForSearchSession:a1[4]];
    goto LABEL_28;
  }

  if (([v5 isCarAppSceneHostingNavigation] | v9))
  {
    v25 = sub_100006E1C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      if ([v5 isCarAppSceneHostingNavigation])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = v26;
      if (v9)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v29 = v28;
      *buf = 138412546;
      v51 = v27;
      v52 = 2112;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Will show CarSearchResultsModeController (isHostingNavigation:%@, preferListOnly:%@)", buf, 0x16u);
    }

    v30 = [v4 _maps_lastContextOfClass:objc_opt_class()];
    v31 = sub_100006E1C();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    if (v30)
    {
      if (v32)
      {
        *buf = 0;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Reuse existing CarSearchResultsModeController", buf, 2u);
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Create new CarSearchResultsModeController", buf, 2u);
    }

    goto LABEL_67;
  }

  v33 = [a1[5] results];
  v34 = [v33 count];

  if (v34 != 1)
  {
    v37 = sub_100006E1C();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Will show CarSearchResultsModeController, because there are multiple results and are not currently navigating", buf, 2u);
    }

    v30 = [v4 _maps_lastContextOfClass:objc_opt_class()];
    v38 = [a1[4] searchInfo];
    v39 = [v38 selectedIndex];
    v40 = [a1[4] currentResults];
    v41 = [v40 count];

    if (v39 >= v41)
    {
      [a1[4] setSelectedResultIndex:0];
    }

    v31 = sub_100006E1C();
    v42 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    if (v30)
    {
      if (v42)
      {
        *buf = 0;
        goto LABEL_56;
      }

LABEL_57:

      [(CarSearchResultsModeController *)v30 setSearchInfo:a1[5]];
      v43 = [v4 _maps_subarrayToIndex:{objc_msgSend(v4, "indexOfObject:", v30)}];
LABEL_68:
      v24 = v43;
      goto LABEL_69;
    }

    if (v42)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Create new CarSearchResultsModeController", buf, 2u);
    }

LABEL_67:

    v30 = [[CarSearchResultsModeController alloc] initWithSearchSession:a1[4]];
    v43 = [a1[6] _replaceTopmostSearchResultContexts:v4 withContext:v30];
    goto LABEL_68;
  }

  if (![a1[4] origin] && +[UIApplication _maps_isAnySceneForegroundForRole:](UIApplication, "_maps_isAnySceneForegroundForRole:", UIWindowSceneSessionRoleApplication))
  {
    v35 = sub_100006E1C();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Ignoring search with one result that originated on the phone. (until user gets to route routePlanning)", buf, 2u);
    }

    goto LABEL_28;
  }

  v44 = sub_100006E1C();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Will show CarPlaceCardContext, only one search result", buf, 2u);
  }

  v45 = [PlaceCardItem alloc];
  v46 = [a1[5] results];
  v47 = [v46 firstObject];
  v30 = [(PlaceCardItem *)v45 initWithSearchResult:v47];

  v48 = [[_TtC4Maps19CarPlaceCardContext alloc] initWithPlaceItem:v30];
  v24 = [v4 arrayByAddingObject:v48];

LABEL_69:
LABEL_70:

  return v24;
}

NSArray *__cdecl sub_100968964(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will push CarDestinationsModeController onto existing CarMapBrowsingModeController", v11, 2u);
  }

  +[CarChromeModeCoordinator getHomeContextClass];
  v6 = [(NSArray *)v4 firstObject];
  if (objc_opt_isKindOfClass())
  {
    [(NSArray *)v4 firstObject];
  }

  else
  {
    +[CarChromeModeCoordinator createHomeContext];
  }
  v7 = ;

  v8 = objc_alloc_init(CarDestinationsModeController);
  v12[0] = v7;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];

  return v9;
}

id sub_100968C70(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 _maps_lastContextOfClass:objc_opt_class()];

  if (!v7)
  {
    v7 = objc_alloc_init(_TtC4Maps14CarHomeContext);
  }

  [(CarBasicMapBrowsingModeController *)v7 setVisibleMapRegion:*(a1 + 64) animated:*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)];
  if (a4)
  {
    *a4 = *(a1 + 64);
  }

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

id sub_100968D70(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 _maps_lastContextOfClass:objc_opt_class()];

  if (!v7)
  {
    v7 = objc_alloc_init(CarMapWidgetMapBrowsingModeController);
  }

  [(CarBasicMapBrowsingModeController *)v7 setVisibleMapRegion:*(a1 + 64) animated:*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)];
  if (a4)
  {
    *a4 = *(a1 + 64);
  }

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

NSArray *__cdecl sub_100968E94(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100799D40();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will pop to existing CarSmallWidgetBrowsingModeController", &v13, 2u);
    }

    v9 = [(NSArray *)v4 firstObject];
    v15 = v9;
    v10 = &v15;
  }

  else
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will replace all contexts with CarSmallWidgetBrowsingModeController", &v13, 2u);
    }

    v9 = objc_alloc_init(CarSmallWidgetBrowsingModeController);
    v14 = v9;
    v10 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v10 count:1];

  return v11;
}

NSArray *__cdecl sub_100968FFC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100799BCC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will pop to existing CarMapWidgetMapBrowsingModeController", &v13, 2u);
    }

    v9 = [(NSArray *)v4 firstObject];
    v15 = v9;
    v10 = &v15;
  }

  else
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will replace all contexts with CarMapWidgetMapBrowsingModeController", &v13, 2u);
    }

    v9 = objc_alloc_init(CarMapWidgetMapBrowsingModeController);
    v14 = v9;
    v10 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v10 count:1];

  return v11;
}

NSArray *__cdecl sub_100969164(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 firstObject];
  +[CarChromeModeCoordinator getHomeContextClass];
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isKindOfClass)
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will pop to existing CarMapBrowsingModeController", &v13, 2u);
    }

    v9 = [(NSArray *)v4 firstObject];
    v15 = v9;
    v10 = &v15;
  }

  else
  {
    if (v8)
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will replace all contexts with CarMapBrowsingModeController", &v13, 2u);
    }

    v9 = +[CarChromeModeCoordinator createHomeContext];
    v14 = v9;
    v10 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v10 count:1];

  return v11;
}

NSArray *__cdecl sub_1009692EC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 _maps_lastContextOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = sub_100799D40();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing RouteGenius mode", v10, 2u);
    }

    v7 = [(NSArray *)v4 mutableCopy];
    [v7 removeObject:v5];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

NSArray *__cdecl sub_1009693D4(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 _maps_lastContextOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = sub_100799BCC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing RouteGenius mode", v10, 2u);
    }

    v7 = [(NSArray *)v4 mutableCopy];
    [v7 removeObject:v5];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

NSArray *__cdecl sub_1009694BC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 _maps_lastContextOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing RouteGenius mode", v10, 2u);
    }

    v7 = [(NSArray *)v4 mutableCopy];
    [v7 removeObject:v5];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

NSArray *__cdecl sub_100969744(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(ChromeViewController *)v8 sceneType];

  if (v9 < 4)
  {
    v17 = [(NSArray *)v6 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = +[CarRouteGeniusService sharedService];
      v20 = [v19 suggestion];

      if (v20)
      {
        v21 = [CarSmallWidgetRouteGeniusModeController alloc];
        v22 = +[CarRouteGeniusService sharedService];
        v23 = [v22 suggestion];
        v24 = [(CarSmallWidgetRouteGeniusModeController *)v21 initWithSuggestion:v23];

        v25 = [(NSArray *)v6 arrayByAddingObject:v24];

        goto LABEL_14;
      }

      v10 = sub_100799D40();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will not push CarSmallWidgetRouteGeniusModeController, reason: predicted destination is nil.", &v28, 2u);
      }
    }

    else
    {
      v10 = sub_100799D40();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(NSArray *)v6 lastObject];
        v26 = objc_opt_class();
        v13 = NSStringFromClass(v26);
        v28 = 138412290;
        v29 = v13;
        v14 = "Will not push CarSmallWidgetRouteGeniusModeController, topContext=%@";
        v15 = v10;
        v16 = OS_LOG_TYPE_DEBUG;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = sub_100799BCC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSArray *)v6 lastObject];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v28 = 138412290;
      v29 = v13;
      v14 = "Will not push CarSmallWidgetRouteGeniusModeController as RG is not supported for this sceneType, topContext=%@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v28, 0xCu);
    }
  }

  v25 = v6;
LABEL_14:

  return v25;
}

NSArray *__cdecl sub_1009699FC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(ChromeViewController *)v8 sceneType];

  if (v9 < 4)
  {
    v17 = [(NSArray *)v6 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = +[CarRouteGeniusService sharedService];
      v20 = [v19 suggestion];

      if (v20)
      {
        v21 = [CarMapWidgetRouteGeniusModeController alloc];
        v22 = +[CarRouteGeniusService sharedService];
        v23 = [v22 suggestion];
        v24 = [(CarBasicRouteGeniusModeController *)v21 initWithSuggestion:v23];

        v25 = [(NSArray *)v6 arrayByAddingObject:v24];

        goto LABEL_14;
      }

      v10 = sub_100799BCC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will not push CarMapWidgeRouteGeniusModeController, reason: predicted destination is nil.", &v28, 2u);
      }
    }

    else
    {
      v10 = sub_100799BCC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(NSArray *)v6 lastObject];
        v26 = objc_opt_class();
        v13 = NSStringFromClass(v26);
        v28 = 138412290;
        v29 = v13;
        v14 = "Will not push CarMapWidgetRouteGeniusModeController, topContext=%@";
        v15 = v10;
        v16 = OS_LOG_TYPE_DEBUG;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = sub_100799BCC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSArray *)v6 lastObject];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v28 = 138412290;
      v29 = v13;
      v14 = "Will not push CarMapWidgetRouteGeniusModeController as RG is not supported for this sceneType, topContext=%@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v28, 0xCu);
    }
  }

  v25 = v6;
LABEL_14:

  return v25;
}

NSArray *__cdecl sub_100969CB4(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 lastObject];
  +[CarChromeModeCoordinator getHomeContextClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v20 = sub_100006E1C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(NSArray *)v4 lastObject];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v25 = 138412290;
      v26 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Will not push CarRouteGeniusModeController, topContext=%@", &v25, 0xCu);
    }

    goto LABEL_13;
  }

  v7 = +[CarRouteGeniusService sharedService];
  v8 = [v7 isActive];

  if ((v8 & 1) == 0)
  {
    v20 = sub_100006E1C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Will not push CarRouteGeniusModeController, reason: RouteGenius Not running.", &v25, 2u);
    }

LABEL_13:

    v19 = v4;
    goto LABEL_18;
  }

  v9 = +[CarRouteGeniusService sharedService];
  v10 = [v9 suggestion];

  v11 = sub_100006E1C();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  v13 = v12;
  if (v10)
  {

    if (v13)
    {
      v14 = sub_100006E1C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v25 = 138412290;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will push CarRouteGeniusModeController with suggestion:[%@]", &v25, 0xCu);
      }
    }

    v15 = [CarRouteGeniusModeController alloc];
    v16 = +[CarRouteGeniusService sharedService];
    v17 = [v16 suggestion];
    v18 = [(CarRouteGeniusModeController *)v15 initWithSuggestion:v17];

    v19 = [(NSArray *)v4 arrayByAddingObject:v18];
  }

  else
  {
    if (v12)
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will not push CarRouteGeniusModeController, reason: predicted destination is nil.", &v25, 2u);
    }

    v19 = v4;
  }

LABEL_18:

  return v19;
}

id sub_10096A530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
  v6 = *(a1 + 32);

  if (v5 != v6)
  {
    v7 = v4;
    goto LABEL_14;
  }

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_10;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_10:

LABEL_12:
    *buf = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will pop mode (%@) And all contexts: %@", buf, 0x16u);
  }

  v7 = [v4 subarrayWithRange:{0, objc_msgSend(v4, "count") - 1}];
LABEL_14:
  v15 = v7;

  return v15;
}

void sub_10096A908(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195DE50;
  qword_10195DE50 = v1;
}

void sub_10096B660(void *a1)
{
  v1 = a1;
  v2 = +[UIApplication sharedApplication];
  [v2 callPhoneNumber:v1 completion:&stru_10162FFA8];
}

void sub_10096B6CC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "CarPlaceCard called mapItem with success: %@", &v6, 0xCu);
  }
}

void sub_10096BD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10096BE10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callDestination];

  v5 = objc_loadWeakRetained((a1 + 32));
  v3 = [v5 delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 placeCardDidDismissAlert:v4];
}

void sub_10096BE98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 placeCardDidSelectHandoff:v4];

  v7 = objc_loadWeakRetained((a1 + 32));
  v5 = [v7 delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 placeCardDidDismissAlert:v6];
}

void sub_10096BF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 placeCardDidDismissAlert:v3];
}

void sub_10096BFC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 placeCard:v3 didPresentAlert:*(a1 + 32)];
}

void sub_10096DFE4(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  v2 = [v7 window];
  v3 = [v2 rootViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) hasCardFinishedTransitioning];

    if (!v5)
    {
      return;
    }

    v7 = [*(a1 + 32) view];
    v2 = [v7 window];
    v6 = [v2 rootViewController];
    sub_100D5440C(v6);
  }
}

id sub_100970CF4()
{
  if (qword_10195DE78 != -1)
  {
    dispatch_once(&qword_10195DE78, &stru_101630050);
  }

  v1 = qword_10195DE70;

  return v1;
}

void sub_100970D48(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ThirdPartyPhotoSharingPreferencesManager");
  v2 = qword_10195DE70;
  qword_10195DE70 = v1;
}

void sub_100970E68(uint64_t a1)
{
  v2 = sub_100970CF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Updating third party photo sharing preferences", buf, 2u);
  }

  v3 = objc_alloc_init(GEORPThirdPartyPhotoSharingPreference);
  v4 = v3;
  if ((*(a1 + 56) & 1) == 0)
  {
    [v3 setOptIn:*(a1 + 57)];
  }

  if (*(a1 + 32))
  {
    [v4 setVersion:?];
  }

  v5 = objc_alloc_init(GEORPThirdPartyPhotoSharingPreferenceUpdate);
  [v5 setPreference:v4];
  v6 = objc_alloc_init(GEORPFeedbackDetails);
  [v6 setThirdPartyPhotoSharingPreferenceUpdate:v5];
  v7 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
  [v7 setType:18];
  v28 = v6;
  [v7 setDetails:v6];
  v8 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v8 setSubmissionParameters:v7];
  v9 = objc_alloc_init(GEORPFeedbackUserInfo);
  v10 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v9 setUserCredentials:v10];

  objc_initWeak(buf, *(a1 + 40));
  v11 = [GEORPFeedbackRequest alloc];
  v12 = +[GEOMapService sharedService];
  v13 = [v12 defaultTraits];
  v29 = [v11 initWithFeedbackRequestParameters:v8 userInfo:v9 traits:v13];
  v24 = v5;
  v26 = v4;

  v14 = +[GEOMapService sharedService];
  v15 = +[GEOMapService sharedService];
  v16 = [v15 defaultTraits];
  v17 = [v14 ticketForFeedbackRequest:v29 traits:v16];

  v18 = sub_100970CF4();
  v19 = [v8 submissionParameters];
  v20 = [v19 clientSubmissionUuid];
  if ([v20 length])
  {
    v21 = [v8 submissionParameters];
    [v21 clientSubmissionUuid];
  }

  else
  {
    v21 = [NSUUID UUID:v24];
    [v21 UUIDString];
  }
  v22 = ;

  v23 = &_dispatch_main_q;
  MSPUGCPerformLogDiscardForCurrentSessionWithCompletion();

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10097120C;
  v30[3] = &unk_101630780;
  objc_copyWeak(&v32, buf);
  v31 = *(a1 + 48);
  [v17 submitWithHandler:v30 networkActivity:0];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

void sub_1009711E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10097120C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_100970CF4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Update to third party photo settings failed with error %@", buf, 0xCu);
    }
  }

  v11 = [v7 feedbackResult];
  v12 = [v11 submissionResult];
  v13 = [v12 thirdPartyPhotoSharingPreferenceUpdateResult];

  v14 = [v13 preference];
  if ([v13 errorsCount])
  {
    v15 = +[NSMutableArray array];
    if ([v13 errorsCount])
    {
      v16 = 0;
      do
      {
        v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 errorsAtIndex:v16]);
        [v15 addObject:v17];

        ++v16;
      }

      while (v16 < [v13 errorsCount]);
    }
  }

  else
  {
    v15 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100971484;
  block[3] = &unk_10164CF68;
  objc_copyWeak(&v27, (a1 + 40));
  v23 = v14;
  v18 = *(a1 + 32);
  v25 = v15;
  v26 = v18;
  v24 = v9;
  v19 = v15;
  v20 = v9;
  v21 = v14;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v27);
}

void sub_100971484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _setDefaultsKeyForPreferences:*(a1 + 32)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) copy];
  (*(v4 + 16))(v4, v2, v3, v5);
}

void sub_1009715AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1009715C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 version];

  [WeakRetained _updateThirdPartyPhotoSharingPreferences:0 versionID:v4 eraseServerSavedSetting:1 completion:&stru_101630008];
}

void sub_1009716F4(uint64_t a1)
{
  v2 = sub_100970CF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Fetching third party photo sharing preferences", buf, 2u);
  }

  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v4 = objc_alloc_init(GEORPFeedbackQueryParameters);
  [v3 setQueryParameters:v4];

  v5 = [v3 queryParameters];
  [v5 addFeedbackComponentType:6];

  v6 = objc_alloc_init(GEORPFeedbackUserInfo);
  v7 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v6 setUserCredentials:v7];

  objc_initWeak(buf, *(a1 + 32));
  v8 = [GEORPFeedbackRequest alloc];
  v9 = +[GEOMapService sharedService];
  v10 = [v9 defaultTraits];
  v11 = [v8 initWithFeedbackRequestParameters:v3 userInfo:v6 traits:v10];

  v12 = +[GEOMapService sharedService];
  v13 = +[GEOMapService sharedService];
  v14 = [v13 defaultTraits];
  v15 = [v12 ticketForFeedbackRequest:v11 traits:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100971960;
  v16[3] = &unk_101630780;
  objc_copyWeak(&v18, buf);
  v17 = *(a1 + 40);
  [v15 submitWithHandler:v16 networkActivity:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void sub_100971938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100971960(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100970CF4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Preferences fetch failed with error %@", buf, 0xCu);
    }
  }

  v9 = [GEORPThirdPartyPhotoSharingPreference thirdPartyPhotoSharingPreferenceFromResponse:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100971AF0;
  v13[3] = &unk_101660C70;
  objc_copyWeak(&v17, (a1 + 40));
  v14 = v9;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = v9;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v17);
}

void sub_100971AF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setDefaultsKeyForPreferences:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void sub_100971C74(id a1)
{
  v1 = objc_alloc_init(UGCThirdPartyPhotoSharingPreferencesManager);
  v2 = qword_10195DE60;
  qword_10195DE60 = v1;
}

void sub_1009776B8(uint64_t a1, void *a2, void *a3)
{
  v54 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 112), a2);
  objc_storeStrong((*(a1 + 32) + 120), a3);
  if (*(*(a1 + 32) + 112))
  {
    v7 = [v54 metadata];
    [v7 timestamp];
    v9 = v8;

    v10 = [NSDate dateWithTimeIntervalSince1970:v9];
    v11 = objc_alloc_init(NSDateFormatter);
    v12 = +[NSTimeZone systemTimeZone];
    [v11 setTimeZone:v12];

    v13 = +[NSLocale currentLocale];
    [v11 setLocale:v13];

    [v11 setDateStyle:1];
    [v11 setTimeStyle:1];
    v14 = [v11 stringFromDate:v10];
    v15 = objc_alloc_init(UILabel);
    +[UIFont systemFontSize];
    v16 = [UIFont systemFontOfSize:?];
    [v15 setFont:v16];

    v17 = +[UIColor secondaryLabelColor];
    [v15 setTextColor:v17];

    v18 = +[UIColor clearColor];
    [v15 setBackgroundColor:v18];

    [v15 setTextAlignment:1];
    v19 = [NSString stringWithFormat:@"Last updated %@", v14];
    [v15 setText:v19];

    [v15 sizeToFit];
    [v15 frame];
    [v15 setFrame:?];
  }

  else
  {
    v10 = objc_alloc_init(UILabel);
    v20 = [UIFont boldSystemFontOfSize:18.0];
    [v10 setFont:v20];

    v21 = +[UIColor infoTextOverPinStripeTextColor];
    [v10 setTextColor:v21];

    v22 = +[UIColor secondaryLabelColor];
    [v10 setShadowColor:v22];

    v23 = +[UIColor clearColor];
    [v10 setBackgroundColor:v23];

    [v10 setTextAlignment:1];
    [v10 setText:@"No Resource Manifest"];
    [v10 sizeToFit];
    v24 = [*(a1 + 32) tableView];
    [v24 bounds];
    v26 = v25;
    [v10 frame];
    v28 = (v26 - v27) * 0.5;
    [v10 frame];
    v30 = v29;
    [v10 frame];
    [v10 setFrame:{v28, 20.0, v30}];

    v11 = objc_alloc_init(UILabel);
    +[UIFont systemFontSize];
    v31 = [UIFont systemFontOfSize:?];
    [v11 setFont:v31];

    v32 = +[UIColor secondaryLabelColor];
    [v11 setTextColor:v32];

    v33 = +[UIColor clearColor];
    [v11 setBackgroundColor:v33];

    [v11 setNumberOfLines:0];
    [v11 setTextAlignment:1];
    v14 = [NSString stringWithFormat:@"Error: %@", v6];
    v34 = [v6 domain];
    v35 = GEOErrorDomain();
    v36 = [v34 isEqualToString:v35];

    if (v36)
    {
      [v6 code];
      v37 = GEOStringForError();
      v38 = [v14 stringByAppendingFormat:@" (%@)", v37];

      v14 = v38;
    }

    [v11 setText:v14];
    [v11 sizeToFit];
    v39 = [*(a1 + 32) tableView];
    [v39 frame];
    [v11 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, v40 + -40.0, 1.79769313e308}];
    v42 = v41;
    v44 = v43;

    v45 = [*(a1 + 32) tableView];
    [v45 bounds];
    v47 = (v46 - v42) * 0.5;
    [v10 frame];
    [v11 setFrame:{v47, CGRectGetMaxY(v56) + 20.0, v42, v44}];

    v48 = [UIView alloc];
    v49 = [*(a1 + 32) tableView];
    [v49 frame];
    v51 = v50;
    [v11 frame];
    v15 = [v48 initWithFrame:{0.0, 0.0, v51, CGRectGetMaxY(v57)}];

    [v15 addSubview:v10];
    [v15 addSubview:v11];
  }

  v52 = [*(a1 + 32) tableView];
  [v52 setTableHeaderView:v15];

  v53 = [*(a1 + 32) tableView];
  [v53 reloadData];
}

void sub_100977E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fetching Place Inference", &v6, 2u);
    }

    [WeakRetained[1] fetchPlaceInferencesWithFidelityPolicy:*(a1 + 48) handler:*(a1 + 32)];
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v8 = 1026;
      v9 = 107;
      v10 = 2082;
      v11 = "[MapsSuggestionsMKLocationManagerAdapter fetchPlaceInferencesWithFidelityPolicy:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_1009781C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] stopLocationUpdateWithObserver:WeakRetained];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:v2 name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 61;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStopImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100978308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(WeakRetained[1], "isAuthorizedForPreciseLocation") ^ 1}];
    [v2[1] startLocationUpdateWithObserver:v2];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 50;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStartImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_1009786F0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionAppLaunchDelayMonitor");
  v2 = qword_10195DE80;
  qword_10195DE80 = v1;
}

void sub_100978DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100978E20(uint64_t a1, void *a2)
{
  v3 = a2;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v5 = dispatch_queue_get_label(0);
  if (label != v5)
  {
    v6 = !label || v5 == 0;
    if (v6 || strcmp(label, v5))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[VLFSessionAppLaunchDelayMonitor _startTimer]_block_invoke";
        v16 = 2080;
        v17 = "VLFSessionAppLaunchDelayMonitor.m";
        v18 = 1024;
        v19 = 69;
        v20 = 2080;
        v21 = "dispatch_get_main_queue()";
        v22 = 2080;
        v23 = dispatch_queue_get_label(&_dispatch_main_q);
        v24 = 2080;
        v25 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v14, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  v7 = sub_10007645C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Timeout timer fired", &v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isInBackground])
    {
      v10 = sub_10007645C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Completion called while backgrounded; not updating state", &v14, 2u);
      }
    }

    else
    {
      [v9 setState:2];
    }

    [v9 setTimeoutTimer:0];
  }
}

id sub_100979A8C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) _displayID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100979AF0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UIScreenCarExtras");
  v2 = qword_10195DE90;
  qword_10195DE90 = v1;
}

void sub_10097A10C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10097A208(uint64_t a1)
{
  v2 = +[MKCatalystButton catalystButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTitle:@"Back" forState:0];
  [v2 setIsPrimaryButton:0];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = v2;
  [v2 addTarget:*(a1 + 32) action:"_pop" forControlEvents:64];
  v5 = +[MKCatalystButton catalystButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTitle:@"Not Root" forState:0];
  [v5 setTitle:@"Root" forState:4];
  [v5 setIsPrimaryButton:1];
  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  [v5 addTarget:*(a1 + 32) action:"_toggleWantsControl" forControlEvents:64];
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v5;
  v32 = v5;

  v9 = +[MKCatalystButton catalystButton];
  [v9 setTitle:@"Pop" forState:0];
  [v9 setIsPrimaryButton:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];
  [v9 addTarget:*(a1 + 32) action:"_popSidebarController" forControlEvents:64];
  v11 = +[MKCatalystButton catalystButton];
  [v11 setTitle:@"Push" forState:0];
  [v11 setIsPrimaryButton:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];
  [v11 addTarget:*(a1 + 32) action:"_pushSidebarController" forControlEvents:64];
  v13 = [UIStackView alloc];
  v34[0] = v4;
  v34[1] = v32;
  v28 = v4;
  v34[2] = v9;
  v34[3] = v11;
  v14 = [NSArray arrayWithObjects:v34 count:4];
  v15 = [v13 initWithArrangedSubviews:v14];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:0];
  [v15 setDistribution:1];
  [v15 setAlignment:0];
  [v15 setSpacing:1.17549435e-38];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];
  [*(a1 + 40) addSubview:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  *(v17 + 16) = v15;
  v19 = v15;

  v31 = [*(a1 + 40) centerXAnchor];
  v30 = [v19 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v33[0] = v29;
  v27 = [*(a1 + 40) bottomAnchor];
  v20 = [v19 bottomAnchor];
  v21 = [v27 constraintEqualToAnchor:v20 constant:60.0];
  v33[1] = v21;
  v22 = [v4 widthAnchor];
  v23 = [v22 constraintEqualToConstant:100.0];
  v33[2] = v23;
  v24 = [v19 heightAnchor];
  v25 = [v24 constraintEqualToConstant:32.0];
  v33[3] = v25;
  v26 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v26];
}

void sub_10097B65C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RAPTransitLine alloc];
  v6 = [*(a1 + 32) lineItem];
  v5 = [(RAPTransitLine *)v4 _initWithTransitLine:v6];
  [v3 setReportedLine:v5];
}

void sub_10097BF04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionCoarseLocationMonitor");
  v2 = qword_10195DEA0;
  qword_10195DEA0 = v1;
}

void sub_10097C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10097C328(uint64_t a1)
{
  v2 = sub_100076400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 134349056;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Delay timer fired; updating state now", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateState];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setAuthorizedDelayTimer:0];
}

void sub_10097D610(uint64_t a1)
{
  v2 = [*(a1 + 32) _maps_composedImageScale:*(a1 + 56) isRTL:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void sub_10097D6F0(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_10195DEB0;
  qword_10195DEB0 = v1;

  [qword_10195DEB0 setName:@"com.apple.Maps.ImageProcessingQueue"];
  [qword_10195DEB0 setQualityOfService:25];
  v3 = qword_10195DEB0;

  [v3 setMaxConcurrentOperationCount:4];
}

void sub_10097D864(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setFill];
  [v3 fillRect:{0.0, 0.0, 72.0, 72.0}];
}

void sub_10097DB98(uint64_t a1)
{
  v2 = [*(a1 + 32) chrome];
  v3 = [v2 currentTraits];

  [v3 setSource:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10097DE58;
  v5[3] = &unk_10165D2D8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v4 resolveMapItemWithTraits:v3 completion:v5];
}

void sub_10097DC60(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (v3)
  {
    v4 = [v3 guideLocationIdentifier];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    if (fabs(v8) <= 180.0 && v6 >= -90.0 && v6 <= 90.0)
    {
      v9 = [*(a1 + 32) chrome];
      v10 = [v9 mapView];
      [v10 bounds];

      MKCoordinateRegionMakeWithZoomLevel();
      MKMapRectForCoordinateRegion();
      v11 = [MKMapCamera _cameraLookingAtMapRect:"_cameraLookingAtMapRect:forViewSize:" forViewSize:?];
      v12 = [*(a1 + 32) chrome];
      v13 = [v12 mapView];
      [v13 setCamera:v11 animated:0];
    }

    v14 = [*(a1 + 32) coordinator];
    [v14 viewController:0 showGuidesHome:v15];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10097DDE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 exploreGuides];
  v3 = [v4 guideLocation];
  (*(v2 + 16))(v2, v3);
}

void sub_10097DE58(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 chrome];
    v4 = [v5 mapSelectionManager];
    [v4 selectMapItem:v3 animated:1];
  }
}

void sub_10097E36C(uint64_t a1)
{
  v1 = [*(a1 + 32) actionHandler];
  v1[2]();
}

void sub_10097E5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10097E5C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleMenuAction:*(a1 + 48) entryPoint:*(a1 + 56) sceneDelegate:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10097F2A8(id a1)
{
  v30[0] = &off_1016E7988;
  v28[0] = &off_1016E7988;
  v26[0] = &off_1016E79A0;
  v26[1] = &off_1016E79D0;
  v27[0] = &off_1016E79B8;
  v27[1] = &off_1016E79E8;
  v26[2] = &off_1016E7A00;
  v26[3] = &off_1016E7A30;
  v27[2] = &off_1016E7A18;
  v27[3] = &off_1016E7A48;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  v28[1] = &off_1016E7A60;
  v29[0] = v11;
  v24[0] = &off_1016E79A0;
  v24[1] = &off_1016E79D0;
  v25[0] = &off_1016E7A78;
  v25[1] = &off_1016E7A90;
  v24[2] = &off_1016E7A00;
  v24[3] = &off_1016E7A30;
  v25[2] = &off_1016E7A18;
  v25[3] = &off_1016E7A48;
  v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  v29[1] = v10;
  v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v31[0] = v9;
  v30[1] = &off_1016E7A60;
  v21[3] = &off_1016E7A48;
  v22[0] = &off_1016E7988;
  v20[0] = &off_1016E79A0;
  v20[1] = &off_1016E79D0;
  v21[0] = &off_1016E79B8;
  v21[1] = &off_1016E7AA8;
  v20[2] = &off_1016E7A00;
  v20[3] = &off_1016E7A30;
  v21[2] = &off_1016E7AC0;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v22[1] = &off_1016E7A60;
  v23[0] = v8;
  v18[0] = &off_1016E79A0;
  v18[1] = &off_1016E79D0;
  v19[0] = &off_1016E7A78;
  v19[1] = &off_1016E7AD8;
  v18[2] = &off_1016E7A00;
  v18[3] = &off_1016E7A30;
  v19[2] = &off_1016E7AC0;
  v19[3] = &off_1016E7A48;
  v1 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v23[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v31[1] = v2;
  v30[2] = &off_1016E7AF0;
  v15[3] = &off_1016E7A48;
  v16[0] = &off_1016E7988;
  v14[0] = &off_1016E79A0;
  v14[1] = &off_1016E79D0;
  v15[0] = &off_1016E79B8;
  v15[1] = &off_1016E7B08;
  v14[2] = &off_1016E7A00;
  v14[3] = &off_1016E7A30;
  v15[2] = &off_1016E7AC0;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v16[1] = &off_1016E7A60;
  v17[0] = v3;
  v12[0] = &off_1016E79A0;
  v12[1] = &off_1016E79D0;
  v13[0] = &off_1016E7A78;
  v13[1] = &off_1016E7B20;
  v12[2] = &off_1016E7A00;
  v12[3] = &off_1016E7A30;
  v13[2] = &off_1016E7AC0;
  v13[3] = &off_1016E7A48;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
  v17[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v31[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
  v7 = qword_10195DEC0;
  qword_10195DEC0 = v6;
}

void sub_10097FB04(id a1)
{
  v3[0] = &off_1016E79A0;
  v3[1] = &off_1016E79D0;
  v4[0] = @"navigationRouteGuidanceDisplayComponentID";
  v4[1] = @"routeGuidanceState";
  v3[2] = &off_1016E7A00;
  v3[3] = &off_1016E7A30;
  v4[2] = @"maneuverState";
  v4[3] = @"currentRoadName";
  v3[4] = &off_1016E7BE0;
  v3[5] = &off_1016E7BF8;
  v4[4] = @"destinationName";
  v4[5] = @"estimatedTimeOfArrival";
  v3[6] = &off_1016E7C10;
  v3[7] = &off_1016E7C28;
  v4[6] = @"timeRemainingToDestination";
  v4[7] = @"distanceRemaining";
  v3[8] = &off_1016E7C40;
  v3[9] = &off_1016E7C58;
  v4[8] = @"distanceRemainingDisplayString";
  v4[9] = @"distanceRemainingDisplayUnits";
  v3[10] = &off_1016E7C70;
  v3[11] = &off_1016E7C88;
  v4[10] = @"distanceRemainingToNextManeuver";
  v4[11] = @"distanceRemainingToNextManeuverDisplayString";
  v3[12] = &off_1016E7CA0;
  v3[13] = &off_1016E7CB8;
  v4[12] = @"distanceRemainingToNextManeuverDisplayUnits";
  v4[13] = @"routeGuidanceManeuverCurrentList";
  v3[14] = &off_1016E7CD0;
  v3[15] = &off_1016E7CE8;
  v4[14] = @"routeGuidanceManeuverCount";
  v4[15] = @"beingShownInApp";
  v3[16] = &off_1016E7D00;
  v3[17] = &off_1016E7D18;
  v4[16] = @"laneGuidanceCurrentIndex";
  v4[17] = @"laneGuidanceTotalCount";
  v3[18] = &off_1016E7D30;
  v3[19] = &off_1016E7D48;
  v4[18] = @"laneGuidanceShowing";
  v4[19] = @"sourceName";
  v3[20] = &off_1016E7D60;
  v3[21] = &off_1016E7D78;
  v4[20] = @"sourceSupportsRouteGuidance";
  v4[21] = @"destinationTimeZoneOffsetMinutes";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:22];
  v2 = qword_10195DEE8;
  qword_10195DEE8 = v1;
}

void sub_10097FD8C(id a1)
{
  v21[0] = &off_1016E7B38;
  v21[1] = &off_1016E7A48;
  v22[0] = @"NotSet";
  v22[1] = @"km";
  v21[2] = &off_1016E7B50;
  v21[3] = &off_1016E7B68;
  v22[2] = @"miles";
  v22[3] = @"m";
  v21[4] = &off_1016E7B80;
  v21[5] = &off_1016E7B98;
  v22[4] = @"yards";
  v22[5] = @"ft";
  v1 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:6];
  v19[0] = &off_1016E7B38;
  v19[1] = &off_1016E7A48;
  v20[0] = @"NotSet";
  v20[1] = @"Continue";
  v19[2] = &off_1016E7B50;
  v19[3] = &off_1016E7B68;
  v20[2] = @"Initial";
  v20[3] = @"Prepare";
  v19[4] = &off_1016E7B80;
  v20[4] = @"Execute";
  v2 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];
  v17[0] = &off_1016E7B38;
  v17[1] = &off_1016E7A48;
  v18[0] = @"NotSet";
  v18[1] = @"NotActive";
  v17[2] = &off_1016E7B50;
  v17[3] = &off_1016E7B68;
  v18[2] = @"Active";
  v18[3] = @"Arrived";
  v17[4] = &off_1016E7B80;
  v17[5] = &off_1016E7B98;
  v18[4] = @"Loading";
  v18[5] = @"Locating";
  v17[6] = &off_1016E7BB0;
  v17[7] = &off_1016E7BC8;
  v18[6] = @"Rerouting";
  v18[7] = @"ProceedToRoute";
  v3 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:8];
  v15[0] = &__kCFBooleanTrue;
  v15[1] = &__kCFBooleanFalse;
  v16[0] = @"YES";
  v16[1] = @"NO";
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = &__kCFBooleanTrue;
  v13[1] = &__kCFBooleanFalse;
  v14[0] = @"YES";
  v14[1] = @"NO";
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11[0] = &__kCFBooleanTrue;
  v11[1] = &__kCFBooleanFalse;
  v12[0] = @"YES";
  v12[1] = @"NO";
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9[0] = @"routeGuidanceState";
  v9[1] = @"maneuverState";
  v10[0] = v3;
  v10[1] = v2;
  v9[2] = @"distanceRemainingDisplayUnits";
  v9[3] = @"distanceRemainingToNextManeuverDisplayUnits";
  v10[2] = v1;
  v10[3] = v1;
  v9[4] = @"beingShownInApp";
  v9[5] = @"sourceSupportsRouteGuidance";
  v10[4] = v4;
  v10[5] = v5;
  v9[6] = @"laneGuidanceShowing";
  v10[6] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];
  v8 = qword_10195DED8;
  qword_10195DED8 = v7;
}

id sub_100980688()
{
  if (qword_10195DEF8 != -1)
  {
    dispatch_once(&qword_10195DEF8, &stru_1016303B0);
  }

  v1 = qword_10195DEF0;

  return v1;
}

void sub_1009806DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningStateManager");
  v2 = qword_10195DEF0;
  qword_10195DEF0 = v1;
}

void sub_100980F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_100980FC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100980688();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Initializing timer fired", v3, 2u);
    }

    [WeakRetained setInitializingTimer:0];
    [WeakRetained setCurrentState:2];
    [WeakRetained _recalculateState];
  }
}

void sub_100981638(id a1)
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  byte_10195DF18 = BOOL;
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [NSNumber numberWithBool:byte_10195DF18];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ShouldOptimizeSheetPresentationAnimations: %@", &v4, 0xCu);
  }
}

void sub_100982930(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 firstObject];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void sub_100982AC8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v9)
  {
    objc_storeStrong((v7 + 24), a2);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained venueCategoryContentDownloader:*(a1 + 32) didChangeMapItem:*(*(a1 + 32) + 24)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v7 + 16));
    [WeakRetained venueCategoryContentDownloader:*(a1 + 32) didFailToFetchMapItemWithError:v6];
  }
}

void sub_1009837E4(uint64_t a1, CGContextRef c)
{
  v3 = *(a1 + 72);
  *&transform.a = *(a1 + 56);
  *&transform.c = v3;
  *&transform.tx = *(a1 + 88);
  CGContextConcatCTM(c, &transform);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100983904;
  v9 = &unk_1016304B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  sub_1009838A0(&v6);
  [*(a1 + 40) drawArrow:*(a1 + 48) stroke:{0, v6, v7, v8, v9}];
}

void sub_1009838A0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v1[2](v1, CurrentContext);

    CGContextRestoreGState(CurrentContext);
  }
}

void sub_100983904(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) drawArrow:*(*(&v7 + 1) + 8 * v6) stroke:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100983C5C(uint64_t a1, CGContextRef c)
{
  v3 = *(a1 + 72);
  *&transform.a = *(a1 + 56);
  *&transform.c = v3;
  *&transform.tx = *(a1 + 88);
  CGContextConcatCTM(c, &transform);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100983D18;
  v9 = &unk_1016304B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  sub_1009838A0(&v6);
  [*(a1 + 40) drawArrow:*(a1 + 48) stroke:{0, v6, v7, v8, v9}];
}

void sub_100983D18(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) drawArrow:*(*(&v7 + 1) + 8 * v6) stroke:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_1009847D0(uint64_t a1, CGContextRef c)
{
  v3 = *(a1 + 72);
  *&v5.a = *(a1 + 56);
  *&v5.c = v3;
  *&v5.tx = *(a1 + 88);
  CGContextConcatCTM(c, &v5);
  [*(a1 + 32) addClip];
  return [*(a1 + 40) drawIntersectionFill:*(a1 + 48)];
}

id sub_10098482C(uint64_t a1, CGContextRef c)
{
  v3 = *(a1 + 80);
  *&v5.a = *(a1 + 64);
  *&v5.c = v3;
  *&v5.tx = *(a1 + 96);
  CGContextConcatCTM(c, &v5);
  [*(a1 + 32) addClip];
  return [*(a1 + 40) drawIntersectionStroke:*(a1 + 48) forFill:*(a1 + 56)];
}

id sub_100984888(uint64_t a1, CGContextRef c)
{
  v3 = *(a1 + 72);
  *&v5.a = *(a1 + 56);
  *&v5.c = v3;
  *&v5.tx = *(a1 + 88);
  CGContextConcatCTM(c, &v5);
  return [*(a1 + 32) drawArrow:*(a1 + 40) stroke:*(a1 + 48)];
}

void sub_100984FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100984FFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained testName];
    [v3 finishedSubTest:v2];

    [v3 finishedTest];
    WeakRetained = v3;
  }
}

void sub_100986D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100986D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setComplete:objc_msgSend(WeakRetained allowInvokingDidChange:{"_isNowComplete"), 1}];
    WeakRetained = v2;
  }
}

void sub_10098736C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009873A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009873C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  if (v9 == *(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = [WeakRetained substringToIndex:a3];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a7 = 1;
  }

  else
  {
    *(v8 + 24) = v9 + 1;
  }
}

void sub_100987520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100987A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100987A5C(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(UGCUserInformationViewModel);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[UGC] Contribution Name" value:@"localized string not found" table:0];
    v7 = [*(a1 + 32) userName];
    v8 = [NSString stringWithFormat:v6, v7];
    [(UGCUserInformationViewModel *)v4 setUserName:v8];

    v9 = [*(a1 + 32) userEmail];
    [(UGCUserInformationViewModel *)v4 setUserEmail:v9];

    v10 = [*(a1 + 32) userIcon];
    [(UGCUserInformationViewModel *)v4 setUserIcon:v10];

    [(UGCUserInformationViewModel *)v4 setUserCurrentLocation:v13];
    v11 = [WeakRetained _legalDisclosureString];
    [(UGCUserInformationViewModel *)v4 setLegalDisclosureString:v11];

    [WeakRetained[1] setViewModel:v4];
    v12 = [WeakRetained delegate];
    [v12 sectionControllerDidUpdateRowItems:WeakRetained];
  }
}

void sub_1009881E4(uint64_t a1)
{
  v2 = sub_1009882CC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v7 = 134349312;
    v8 = v3;
    v9 = 2050;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}p] Updated pocket state: %{public}llu", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained analyticsCapturer];
  [v6 recordPocketState:*(a1 + 48)];
}

id sub_1009882CC()
{
  if (qword_10195DF28 != -1)
  {
    dispatch_once(&qword_10195DF28, &stru_101630540);
  }

  v1 = qword_10195DF20;

  return v1;
}

void sub_100988320(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSession");
  v2 = qword_10195DF20;
  qword_10195DF20 = v1;
}

void sub_100988F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100988F24(uint64_t a1)
{
  v2 = sub_1009882CC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 134349056;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}p] Timeout timer fired", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [NSError errorWithDomain:@"com.apple.Maps.VLFSession" code:1 userInfo:0];
  [v4 registerFailureWithResult:3 error:v5 initializationFailureDetails:0];
}

void sub_1009892E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained analyticsCapturer];
    [v4 recordGeoTrackingStatusIfNecessary:*(a1 + 32)];

    v5 = [*(a1 + 32) state];
    if (v5 == 3)
    {
      [v3 _processVLDebugInfo:*(a1 + 40)];
      if (![v3 mode])
      {
        [v3 registerSuccessWithVLFLocation:0];
      }
    }

    else if (v5 == 1 && ([v3 shouldObserveFrames] & 1) == 0)
    {
      v6 = sub_1009882CC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134349056;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Geo tracking is initializing; start observing frames now", &v7, 0xCu);
      }

      [v3 setShouldObserveFrames:1];
    }
  }
}

void sub_100989718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained registerFailureWithResult:1 error:*(a1 + 32) initializationFailureDetails:*(a1 + 40)];
}

void sub_100989A44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained hasNotifiedFirstFrame] & 1) == 0)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:@"VLFSessionDidGetFirstFrameNotification" object:0];

      [v3 setNotifiedFirstFrame:1];
    }

    if ([v3 shouldObserveFrames])
    {
      if ([v3 shouldUpdateCameraFocusLensPosition])
      {
        v5 = +[NSUserDefaults standardUserDefaults];
        [v5 floatForKey:@"PedestrianARAutoFocusDistanceKey"];
        v7 = v6;

        v8 = [v3 session];
        LODWORD(v9) = v7;
        [v8 updateCameraFocusLensPosition:v9];

        [v3 setShouldUpdateCameraFocusLensPosition:0];
      }

      if (*(a1 + 32))
      {
        v10 = [v3 analyticsCapturer];
        [v10 recordGeoTrackingStatusIfNecessary:*(a1 + 32)];
      }

      [v3 _processVLDebugInfo:*(a1 + 40)];
    }

    else
    {
      v11 = sub_1009882CC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134349056;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a frame but ignoring it because geo tracking has not initialized yet", &v12, 0xCu);
      }
    }
  }
}

void sub_100989E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained mode];
    v3 = v6;
    if (v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_8;
        }

        [v6 startLocationUpdates];
      }

      else
      {
        [v6 stopLocationUpdates];
      }

      v3 = v6;
    }
  }

LABEL_8:
}

void sub_10098B144(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10098B160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1009882CC();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = 134349314;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Error saving ARKit recording: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = *(a1 + 32);
    v9 = 134349314;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}p] ARKit recording finished recording at file: %@", &v9, 0x16u);
  }
}

void sub_10098BEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10098BEF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_1009882CC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to determine pocket state: %@", &v9, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained analyticsCapturer];
    [v8 recordPocketState:a2];
  }
}

id sub_10098CB2C()
{
  if (qword_10195DF38 != -1)
  {
    dispatch_once(&qword_10195DF38, &stru_101630560);
  }

  v1 = qword_10195DF30;

  return v1;
}

void sub_10098CB80(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionChromeStackMonitor");
  v2 = qword_10195DF30;
  qword_10195DF30 = v1;
}

uint64_t sub_10098D6C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10098D778(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == *(*(a1 + 40) + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqual:?];
  }

  v4 = sub_10000BDF8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (!v5)
    {
LABEL_23:

      return;
    }

    v6 = *(a1 + 40);
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_22;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_12;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_12:

LABEL_22:
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] values are equal, ignoring", buf, 0xCu);

    goto LABEL_23;
  }

  if (v5)
  {
    v12 = *(a1 + 40);
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_25;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_20;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_20:

LABEL_25:
    *buf = 138543362;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] value updated", buf, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  v18 = +[NSDate date];
  v19 = *(a1 + 40);
  v20 = *(v19 + 24);
  *(v19 + 24) = v18;

  *(*(a1 + 40) + 40) = 1;
  [*(a1 + 40) _dispatchIfNeeded];
}

void sub_10098DB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10098EB30(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 208) view];
  [v1 setAlpha:1.0];
}

void sub_1009913BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009913E8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[45];
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = [v8 firstObject];
        (*(v6 + 16))(v6, v7);

        v5 = v4[45];
      }

      v4[45] = 0;
    }
  }
}

void sub_100991648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10099166C(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[45];
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = [v8 firstObject];
        (*(v6 + 16))(v6, v7);

        v5 = v4[45];
      }

      v4[45] = 0;
    }
  }
}

void sub_100991958(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _geoMapItem];
  v9 = [v4 offlineDownloadRegion];

  v5 = [v3 name];

  v6 = +[MKUserLocation title];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {

    v5 = 0;
  }

  v8 = [*(a1 + 32) delegate];
  [v8 viewController:*(a1 + 32) showOfflineMapRegionSelectorForRegion:v9 name:v5];
}

void sub_100991A30(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SearchResult alloc] initWithMapItem:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 448);
  *(v4 + 448) = v3;

  (*(*(a1 + 40) + 16))();
}

void sub_100993B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 32));
  objc_destroyWeak((v63 - 144));
  _Unwind_Resume(a1);
}

void sub_100993BFC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 viewController:v4 enterFlyoverForMapItem:v6];

    [v4[17] resignFirstResponder];
  }
}

void sub_100993C84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (sub_10000FA08(WeakRetained) == 5)
  {
    [WeakRetained clearRetainedSearchQuery];
  }

  v4 = [WeakRetained delegate];
  v5 = [MKLookAroundEntryPoint entryPointWithMapItem:v3];

  [v4 enterLookAroundWithEntryPoint:v5 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [WeakRetained endEditing];
}

void sub_100993D50(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = [v7 url];
    [v5 viewController:v4 openURL:v6];
  }
}

void sub_100993DE8(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7 && WeakRetained)
  {
    v4 = [[SearchResult alloc] initWithMapItem:v7];
    v5 = [WeakRetained delegate];
    [v5 viewController:WeakRetained openSearchResult:v4];

    [WeakRetained showDropDownIfNeeded:0];
    v6 = [WeakRetained view];
    [v6 endEditing:1];
  }
}

void sub_100993EB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (sub_10000FA08(WeakRetained) == 5)
    {
      v2 = [[HomeDeselectionReason alloc] initWithAction:1];
      [v3[26] clearSelectionWithReason:v2];
    }

    else
    {
      [v3 searchBarBecomeFirstResponder];
    }

    WeakRetained = v3;
  }
}

void sub_100993F48(id a1, MKMapItem *a2)
{
  v6 = a2;
  v2 = [(MKMapItem *)v6 phoneNumber];
  v3 = [v2 length];

  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [(MKMapItem *)v6 phoneNumber];
    [v4 callPhoneNumber:v5 completion:0];
  }
}

void sub_100994FD0(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 49) == 1)
  {
    [*(*(a1 + 32) + 264) layoutIfNeeded];
  }

  v2 = *(a1 + 32);
  v3 = [v2 cardPresentationController];
  [v2 heightForLayout:{objc_msgSend(v3, "containeeLayout")}];
  v5 = v4;

  v6 = 0.0;
  if ((*(a1 + 49) & 1) == 0)
  {
    [*(*(a1 + 32) + 264) frame];
    v6 = v7;
  }

  [*(*(a1 + 32) + 280) setConstant:v6];
  if (*(a1 + 40) != v5)
  {
    v8 = [*(a1 + 32) cardPresentationController];
    [v8 updateHeightForCurrentLayout];
  }
}

void *sub_1009950E4(void *result)
{
  if (*(result + 40) == 1 && (*(result + 41) & 1) == 0)
  {
    return [*(result[4] + 264) layoutIfNeeded];
  }

  return result;
}

void sub_100995694(uint64_t a1, double a2)
{
  if (*(a1 + 40) != 1 || (v3 = [*(*(a1 + 32) + 192) shouldBeVisible], a2 = 0.0, (v3 & 1) == 0))
  {
    [*(*(a1 + 32) + 264) frame];
    a2 = v4;
  }

  [*(*(a1 + 32) + 280) setConstant:a2];
  v5 = [*(a1 + 32) cardPresentationController];
  [v5 updateHeightForCurrentLayout];
}

_BYTE *sub_100995738(_BYTE *result)
{
  v1 = result;
  v2 = result[40];
  if ((v2 & 1) == 0)
  {
    [*(*(result + 4) + 192) willMoveToParentViewController:0];
    v3 = [*(*(v1 + 4) + 192) view];
    [v3 removeFromSuperview];

    [*(*(v1 + 4) + 192) removeFromParentViewController];
    result = [*(*(v1 + 4) + 264) layoutIfNeeded];
    v2 = v1[40];
  }

  *(*(v1 + 4) + 296) = v2;
  return result;
}

void sub_100996D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100996D64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[26] editCollection:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100996E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100996EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[26] showCollection:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100997710(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 clearSearch];

  [*(a1 + 32) endEditing];
  [*(a1 + 32) updateContentState];
  v3 = [*(a1 + 32) cardPresentationController];
  v4 = [v3 containerStyle];

  if (v4 == 1)
  {
    v5 = [*(a1 + 32) cardPresentationController];
    [v5 wantsLayout:2];
  }
}

void sub_10099A220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[28])
    {
      v4 = WeakRetained;
      v3 = [WeakRetained[26] isActive];
      v2 = v4;
      if ((v3 & 1) == 0)
      {
        [v4[26] scrollContentToOriginalPosition];
        v2 = v4;
      }
    }
  }
}

void sub_10099A510(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10099A5B4;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v2, (a1 + 32));
  if (qword_10195DF50 != -1)
  {
    dispatch_once(&qword_10195DF50, block);
  }

  objc_destroyWeak(&v2);
}

void sub_10099A5B4(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  v3 = [v2 ticketForSearchFieldPlaceholderWithTraits:0];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10099A68C;
  v4[3] = &unk_1016305A8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 submitWithHandler:v4 networkActivity:0];
  objc_destroyWeak(&v5);
}

void sub_10099A68C(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v7 = +[NSLocale preferredLanguages];
    v8 = [v7 firstObject];
    v9 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarPlaceholderV2", v8];

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 setObject:v12 forKey:v9];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 synchronize];

    [v6 _setPlaceHolder];
  }
}

void sub_10099A894(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  v5 = [v4 containerViewController];
  v6 = [v5 chromeViewController];
  v7 = [v6 currentTraits];
  v8 = [v2 ticketForSearchFieldOfflinePlaceholderWithTraits:v7];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10099A9E4;
  v9[3] = &unk_10163AEF8;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  [v8 submitWithHandler:v9 networkActivity:0];

  objc_destroyWeak(&v11);
}

void sub_10099A9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[456] = 0;
    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = 134218242;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Offline Search Capability received: %ld. Error: %@", &v17, 0x16u);
    }

    if (!v5)
    {
      v9 = a2 & 1;
      if (v9 != *(v7 + 384))
      {
        v10 = v7[22];
        v7[22] = 0;
      }

      [v7 logOfflineBrowseMode:v9];
      *(v7 + 457) = 1;
      *(v7 + 384) = v9;
      if (v9)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"Search Offline Maps" value:@"localized string not found" table:0];
      }

      else
      {
        v12 = [v7 browseOfflineMapsString];
      }

      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v7 offlinePlaceholderKey];
      [v13 setObject:v12 forKey:v14];

      v15 = +[NSUserDefaults standardUserDefaults];
      [v15 synchronize];
    }

    [v7 _setupOfflinePlaceholder];
    v16 = *(a1 + 32);
    if (v16)
    {
      (*(v16 + 16))();
    }
  }
}

void sub_10099AD10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10099AD2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateDataSource];
    WeakRetained = v2;
  }
}

void sub_10099B910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10099B928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10099B940(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UGCPhotoAttributionPreferencesObserver queue:&_dispatch_main_q];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

id sub_10099BC10()
{
  if (qword_10195DF70 != -1)
  {
    dispatch_once(&qword_10195DF70, &stru_1016307C8);
  }

  v1 = qword_10195DF68;

  return v1;
}

void sub_10099BC64(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCPhotoAttributionPreferencesManager");
  v2 = qword_10195DF68;
  qword_10195DF68 = v1;
}

void sub_10099BE90(uint64_t a1)
{
  v2 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v3 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
  [v2 setSubmissionParameters:v3];

  v4 = [v2 submissionParameters];
  [v4 setType:19];

  v5 = objc_alloc_init(GEORPFeedbackDetails);
  v6 = [v2 submissionParameters];
  [v6 setDetails:v5];

  v7 = objc_alloc_init(GEORPPhotoAttributionPreferencesUpdate);
  [v5 setPhotoAttributionPreferencesUpdate:v7];

  v8 = objc_alloc_init(GEORPPhotoAttributionPreferences);
  v9 = [v5 photoAttributionPreferencesUpdate];
  [v9 setPreferences:v8];

  v10 = *(a1 + 56);
  v11 = [v5 photoAttributionPreferencesUpdate];
  v12 = [v11 preferences];
  [v12 setAttributePhotos:v10 & 1];

  v13 = *(a1 + 32);
  v14 = [v5 photoAttributionPreferencesUpdate];
  v15 = [v14 preferences];
  [v15 setAttributionName:v13];

  v16 = [*(a1 + 40) fetchedPreferences];
  v17 = [v16 version];

  if (v17)
  {
    v18 = [*(a1 + 40) fetchedPreferences];
    v19 = [v18 version];
    v20 = [v5 photoAttributionPreferencesUpdate];
    v21 = [v20 preferences];
    [v21 setVersion:v19];
  }

  v22 = sub_10099BC10();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Submitting photo attribution update: %@", buf, 0xCu);
  }

  v36 = 0;
  v23 = [UGCCredentialsBuilder buildICloudUserCredentialsWithError:&v36];
  v24 = v36;
  if (v24)
  {
    v25 = sub_10099BC10();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to create iCloud user info with error %@.  Will not perform submission lookup.", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10099C31C;
    block[3] = &unk_101661090;
    v35 = *(a1 + 48);
    v34 = v24;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    objc_initWeak(buf, *(a1 + 40));
    v26 = +[UIApplication sharedMapsDelegate];
    v27 = [v26 submissionManager];

    v28 = +[GEOMapService sharedService];
    v29 = [v28 defaultTraits];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10099C338;
    v30[3] = &unk_1016307A8;
    objc_copyWeak(&v32, buf);
    v31 = *(a1 + 48);
    [v27 submitOrEnqueueFeedback:v2 userInfo:v23 traits:v29 debugSettings:0 uploadPolicy:0 feedbackObjectToUpdate:0 completion:v30];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }
}

void sub_10099C2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10099C338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = sub_10099BC10();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed Sundew call with server error %@", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10099C51C;
      block[3] = &unk_101661090;
      v10 = &v19;
      v19 = *(a1 + 32);
      v18 = v6;
      dispatch_async(&_dispatch_main_q, block);
      v11 = v18;
    }

    else
    {
      v12 = WeakRetained[3];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10099C538;
      v13[3] = &unk_101660380;
      v10 = v14;
      v14[0] = v5;
      v14[1] = v8;
      v15 = 0;
      v16 = *(a1 + 32);
      dispatch_async(v12, v13);

      v11 = v15;
    }
  }
}

void sub_10099C538(uint64_t a1)
{
  v2 = [*(a1 + 32) feedbackResult];
  v8 = [v2 submissionResult];

  v3 = [v8 photoAttributionPreferencesUpdateResult];
  v4 = [v3 preferences];

  [*(a1 + 40) _storeFetchedPreferences:v4];
  v5 = [*(a1 + 40) _errorsInResponse:*(a1 + 32)];
  if (v5)
  {
    v6 = 0;
    v7 = v5;
  }

  else
  {
    v6 = v4;
    v7 = 0;
  }

  [*(a1 + 40) _finishWithPreferences:v6 serverError:*(a1 + 48) errorAsString:v7 callback:*(a1 + 56)];
}

void sub_10099C968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10099C9B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[3];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10099CAA0;
    v11[3] = &unk_101660380;
    v12 = v6;
    v13 = v7;
    v14 = v9;
    v15 = *(a1 + 32);
    dispatch_async(v10, v11);
  }
}

void sub_10099CAA0(uint64_t a1)
{
  v2 = sub_10099BC10();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Fetched response %@ with error %@", buf, 0x16u);
  }

  v5 = [GEORPPhotoAttributionPreferences photoAttributionPreferencesFromResponse:*(a1 + 32)];
  [*(a1 + 48) _storeFetchedPreferences:v5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10099CC0C;
  block[3] = &unk_1016605F8;
  v10 = *(a1 + 56);
  v8 = v5;
  v9 = *(a1 + 40);
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10099CD7C(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchedPreferences];
  v3 = [*(a1 + 32) dateOfFetchedPreferences];
  v4 = v3;
  if (v2 && ([v3 timeIntervalSinceNow], v5 < 86400.0))
  {
    v6 = [*(a1 + 32) updateError];
    v7 = sub_10099BC10();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = v2;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using stored preferences: %@ fetched at: %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10099CF28;
    block[3] = &unk_1016605F8;
    v12 = *(a1 + 40);
    v10 = v2;
    v11 = v6;
    v8 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [*(a1 + 32) _fetchPhotoAttributionPreferencesWithCompletion:*(a1 + 40)];
  }
}

void sub_10099D030(id a1)
{
  v1 = objc_alloc_init(UGCPhotoAttributionPreferencesManager);
  v2 = qword_10195DF58;
  qword_10195DF58 = v1;
}

void sub_10099D218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10099D23C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10099D2D4;
  v3[3] = &unk_101661368;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_10099D2D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"MapsContactsAuthorizationGrantedNotification" object:WeakRetained];
  }

  [WeakRetained _contactsAuthorizationDismissed];
}

void sub_10099DC40(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10099DE3C;
  v18 = &unk_10163B1E8;
  v19 = *(a1 + 32);
  v4 = [v3 indexOfObjectPassingTest:&v15];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 objectAtIndexedSubscript:{v4, v15, v16, v17, v18}];
    v6 = sub_100798A3C();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = sub_100798A3C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v5 uniqueRouteID];
        v10 = *(a1 + 40);
        *buf = 138412547;
        v22 = v9;
        v23 = 2113;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Update came in for %@: %{private}@", buf, 0x16u);
      }
    }

    v20 = *(a1 + 40);
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    [v5 applyUpdatesToTransitRoute:v11];

    [*(a1 + 48) addObject:v5];
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = [v5 uniqueRouteID];
    [v12 setObject:v13 forKey:v14];
  }
}

id sub_10099DE3C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueRouteID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10099DF88(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) routeLoadingTaskFactory];
    v5 = [v4 taskForRoutes:v3];

    if (v5)
    {
      v6 = [*(a1 + 32) activeTasksSync];
      objc_sync_enter(v6);
      [*(a1 + 32) setRouteUpdatingTask:v5];
      objc_sync_exit(v6);

      objc_initWeak(&location, *(a1 + 32));
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10099E0CC;
      v7[3] = &unk_101654BC0;
      objc_copyWeak(&v8, &location);
      [v5 startWithUpdateHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10099E09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10099E0CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResults:v3];
}

void sub_10099E5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10099E5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100798A3C();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "RouteLoading", "", buf, 2u);
  }

  v10 = sub_100798A3C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RouteLoadingController received results", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = [WeakRetained activeTasksSync];
  objc_sync_enter(v12);
  v13 = [WeakRetained activeTasks];
  v14 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v13 removeObjectForKey:v14];

  objc_sync_exit(v12);
  v15 = [WeakRetained routesResultsSync];
  objc_sync_enter(v15);
  v16 = [WeakRetained mutableRoutesResults];
  v17 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v16 setObject:v5 forKeyedSubscript:v17];

  objc_sync_exit(v15);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10099E880;
  block[3] = &unk_101661B18;
  v18 = v5;
  v22 = v18;
  dispatch_async(&_dispatch_main_q, block);
  v19 = [WeakRetained delegate];
  [v19 routeLoadingController:WeakRetained didReceiveRoutesResult:v18 forTransportType:*(a1 + 48) advisoryInfo:v6];

  v20 = *(a1 + 48);
  if (v20 == [WeakRetained transportTypeForRealtimeUpdates])
  {
    [WeakRetained _updateTaskForRealtimeUpdates];
  }
}

void sub_10099E880(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10099E9F0;
    v13 = sub_10099EA00;
    v14 = 0;
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10099EA08;
    v8[3] = &unk_10165E808;
    v8[4] = &v9;
    [v4 withValue:v8 orError:&stru_101630840];
    v5 = +[GEONotificationPreferenceManager sharedManager];
    v6 = [v5 isEnabledForSubTestWithName:@"GEOPPTTest_RouteManager_DirectionsRequest"];

    if (v6)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:@"GEOPPTTest_RouteManager_DirectionsRequestEND" object:v10[5]];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void sub_10099E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10099E9F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10099F2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10099F2B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10099F2D0(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v19 = a2;
  v6 = [v19 place];
  v7 = [v6 address];
  v8 = [v7 structuredAddress];

  v9 = [v8 locality];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v19 title];
  LODWORD(v7) = [v12 isEqualToString:*(*(*(a1 + 40) + 8) + 40)];

  if (v7)
  {
    v13 = [v19 place];
    v14 = [v13 address];
    v15 = [v14 structuredAddress];
    v16 = [v15 _cellContent_subtitleWithTitle:*(a1 + 32)];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  *a4 = [*(*(*(a1 + 40) + 8) + 40) length] != 0;
}

void sub_10099F414(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }
}

id sub_10099F8F0(void *a1)
{
  v1 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10099F9E4;
  v7[3] = &unk_101631BB0;
  v2 = [[NSMutableString alloc] initWithFormat:@"<%@:%p\n", objc_opt_class(), v1];
  v8 = v2;
  v9 = v1;
  v3 = v1;
  [v3 enumerateObjectsUsingBlock:v7];
  [v2 appendString:@"\n>"];
  v4 = v9;
  v5 = v2;

  return v2;
}

id sub_10099F9E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v5 shortDescription];
  }

  else
  {
    [v5 description];
  }
  v8 = ;

  [v7 appendString:v8];
  result = [*(a1 + 40) count];
  if (a3 + 1 < result)
  {
    v10 = *(a1 + 32);

    return [v10 appendString:{@", \n"}];
  }

  return result;
}

void sub_1009A02FC(uint64_t a1)
{
  v2 = [objc_opt_class() globalThemes];
  v3 = [*(a1 + 32) _mapsThemeStyleKey:0];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [objc_opt_class() globalThemes];
  v6 = [*(a1 + 32) _mapsThemeStyleKey:1];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 objectForKeyedSubscript:@"HairLineColorKey"];
  [v7 objectForKeyedSubscript:@"HairLineColorKey"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009A048C;
  v14 = v13[3] = &unk_101630B40;
  v15 = v8;
  v9 = v8;
  v10 = v14;
  v11 = [UIColor colorWithDynamicProvider:v13];
  v12 = qword_10195DFE8;
  qword_10195DFE8 = v11;
}

id sub_1009A048C(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void sub_1009A059C(uint64_t a1)
{
  v2 = [objc_opt_class() globalThemes];
  v3 = [*(a1 + 32) _mapsThemeStyleKey:0];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [objc_opt_class() globalThemes];
  v6 = [*(a1 + 32) _mapsThemeStyleKey:1];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 objectForKeyedSubscript:@"ControlBackgroundColorKey"];
  [v7 objectForKeyedSubscript:@"ControlBackgroundColorKey"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009A072C;
  v14 = v13[3] = &unk_101630B40;
  v15 = v8;
  v9 = v8;
  v10 = v14;
  v11 = [UIColor colorWithDynamicProvider:v13];
  v12 = qword_10195DFD8;
  qword_10195DFD8 = v11;
}

id sub_1009A072C(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void sub_1009A0A1C(id a1)
{
  v5 = +[UITraitCollection _currentTraitCollection];
  v1 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  [UITraitCollection _setCurrentTraitCollection:v1];

  v2 = +[UIColor systemGray5Color];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 CGColor]);
  v4 = qword_10195DFC8;
  qword_10195DFC8 = v3;

  [UITraitCollection _setCurrentTraitCollection:v5];
}

id sub_1009A1384(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [UIImage imageNamed:*(a1 + 40)];
  v4 = v3;
  if (v2)
  {
    [v3 _flatImageWithColor:*(a1 + 32)];
  }

  else
  {
    [v3 imageWithRenderingMode:2];
  }
  v5 = ;

  if (*(a1 + 56) & 1) != 0 && (*(*(a1 + 48) + 24))
  {
    v6 = [v5 CGImage];
    [v5 scale];
    v7 = [UIImage imageWithCGImage:v6 scale:4 orientation:?];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

void sub_1009A1994(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = 9.0;
  if (v1)
  {
    v2 = 18.0;
  }

  qword_10195DFB8 = *&v2;
}

void sub_1009A6E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009A6EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 32) == 1)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 21);
    v3 = [v4 item];
    [v3 center];
    [v2 _updatePanWithTranslation:?];

    WeakRetained = v4;
  }
}

void sub_1009A730C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009A7324(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 currentState];
  v6 = [v5 mapRegion];
  GEOMapRectForMapRegion();

  [v4 coordinate];
  [v4 coordinate];

  GEOMapPointForCoordinate();
  result = GEOMapRectContainsPoint();
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

id sub_1009A7EC0(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[TraceManager sharedManager];
        [v9 deleteUserTraceWithPath:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return [*(a1 + 32) reloadTraces];
}

void sub_1009A8004(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];
}

void sub_1009A8570(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 debugController:*(a1 + 32) choseTraceAtPath:*(*(a1 + 32) + 120) startNav:0];
}

void sub_1009A85D4(uint64_t a1)
{
  v2 = [NSURL fileURLWithPath:*(*(a1 + 32) + 120)];
  v12 = v2;
  v3 = [NSArray arrayWithObjects:&v12 count:1];
  v4 = [[UIActivityViewController alloc] initWithActivityItems:v3 applicationActivities:0];
  v11[0] = UIActivityTypePostToFacebook;
  v11[1] = UIActivityTypePostToWeibo;
  v11[2] = UIActivityTypePrint;
  v11[3] = UIActivityTypeAssignToContact;
  v11[4] = UIActivityTypeSaveToCameraRoll;
  v11[5] = UIActivityTypeAddToReadingList;
  v11[6] = UIActivityTypePostToFlickr;
  v11[7] = UIActivityTypePostToVimeo;
  v11[8] = UIActivityTypePostToTencentWeibo;
  v11[9] = UIActivityTypeOpenInIBooks;
  v11[10] = UIActivityTypeMarkupAsPDF;
  v11[11] = UIActivityTypeSharePlay;
  v11[12] = UIActivityTypeCollaborationInviteWithLink;
  v11[13] = UIActivityTypeCollaborationCopyLink;
  v11[14] = UIActivityTypeAddToHomeScreen;
  v5 = [NSArray arrayWithObjects:v11 count:15];
  [v4 setExcludedActivityTypes:v5];
  [v4 setTitle:*(*(a1 + 32) + 128)];
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) view];
    v7 = [v4 popoverPresentationController];
    [v7 setSourceView:v6];
  }

  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009A88D8;
  v9[3] = &unk_101661A90;
  v9[4] = v8;
  v10 = *(a1 + 40);
  [v8 presentViewController:v4 animated:1 completion:v9];
}

void sub_1009A8880(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:0];
}

void sub_1009A88D8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:0];
}

void sub_1009A8E60(id a1)
{
  if (dlopen([@"/System/Library/Frameworks/MessageUI.framework/MessageUI" fileSystemRepresentation], 4))
  {
    qword_10195DFF8 = NSClassFromString(@"MFMailComposeViewController");
    if (!qword_10195DFF8)
    {
      NSLog(@"Could not find MFMailComposeViewController\n");
    }
  }

  else
  {
    v1 = dlerror();
    NSLog(@"Could not load MessageUI from %@ (%s)", @"/System/Library/Frameworks/MessageUI.framework/MessageUI", v1);
  }
}

void sub_1009A8EE4(id a1)
{
  if (MGGetBoolAnswer())
  {
    if (MGGetSInt32Answer() == 1)
    {
      if (MGGetBoolAnswer())
      {
        v1 = sub_1009A9044();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          v4 = 0;
          v2 = "VIO is supported on the current device";
          v3 = &v4;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
        }
      }

      else
      {
        byte_10195E008 = 1;
        v1 = sub_1009A9044();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v2 = "VIO is not supported because the current device does not support the DeviceSupportsMapsOpticalHeading gestalt key";
          v3 = buf;
          goto LABEL_12;
        }
      }
    }

    else
    {
      byte_10195E008 = 1;
      v1 = sub_1009A9044();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 0;
        v2 = "VIO is not supported because the current device is not an iPhone";
        v3 = &v6;
        goto LABEL_12;
      }
    }
  }

  else
  {
    byte_10195E008 = 1;
    v1 = sub_1009A9044();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v2 = "VIO is not supported because the current device does not support ARKit";
      v3 = &v7;
      goto LABEL_12;
    }
  }
}

id sub_1009A9044()
{
  if (qword_10195E020 != -1)
  {
    dispatch_once(&qword_10195E020, &stru_101630BC8);
  }

  v1 = qword_10195E018;

  return v1;
}

void sub_1009A9098(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOAvailability");
  v2 = qword_10195E018;
  qword_10195E018 = v1;
}

void sub_1009AA078(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFocusAfterScrolling];
}

void sub_1009AABDC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 collectionView:*(a1 + 32) didSelectItemAtIndexPath:*(a1 + 40)];
}

void sub_1009AD7EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) configuration];
  v2 = [v3 collectionView];
  [v2 setAlpha:v1];
}

uint64_t sub_1009AD858(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1009AD870(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

NSString *__cdecl sub_1009AD890(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009AD8E0(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009AD930(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009AD980(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009AD9D0(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009ADA20(id a1, MapsUIDiffableDataSourceOutlineNodeSnapshot *a2, unint64_t a3)
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a2 identifierPath];
  v4 = [v3 visualDescription];

  return v4;
}

NSString *__cdecl sub_1009ADA70(id a1, HomeOutlineSectionController *a2, unint64_t a3)
{
  v3 = [(HomeOutlineSectionController *)a2 configuration];
  v4 = [v3 sectionIdentifier];

  return v4;
}

void sub_1009ADD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009ADD64(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _didCompleteInitialUpdate];
  }
}

NSString *__cdecl sub_1009AE0E4(id a1, id a2, unint64_t a3)
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

void sub_1009AEBE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1009AEC18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _expandItem:v3];

  return 0;
}

uint64_t sub_1009AEC60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _collapseItem:v3];

  return 0;
}

HomeOutlineSectionControllerConfiguration *sub_1009AF0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HomeOutlineSectionControllerConfiguration alloc];
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 collectionView];
  v7 = *(a1 + 32);
  v8 = [v7 configuration];
  v9 = [v8 actionCoordinator];
  v10 = [*(a1 + 32) configuration];
  v11 = [v10 homeActionDelegate];
  v12 = [*(a1 + 32) _storage];
  v13 = [(HomeOutlineSectionControllerConfiguration *)v4 initWithCollectionView:v6 sectionIdentifier:v3 delegate:v7 actionCoordinator:v9 homeActionDelegate:v11 storage:v12];

  return v13;
}

BOOL sub_1009AF494(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = [(MapsSuggestionsEntry *)v2 type];
  if (!v3 || v3 == 6)
  {
    v5 = 0;
  }

  else if (v3 == 5)
  {
    v4 = [(MapsSuggestionsEntry *)v2 geoMapItem];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1009B0638(uint64_t a1, void *a2)
{
  v3 = [a2 uploadTaskWithRequest:*(a1 + 32) fromFile:*(a1 + 40)];
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = [NSString stringWithFormat:@"%i", v4];
  *buf = @"RAPCORRECTIONSUPLOAD";
  *&buf[8] = v5;
  *&buf[16] = v6;
  v7 = [NSArray arrayWithObjects:buf count:3];

  v8 = [v7 componentsJoinedByString:@"_"];

  [v3 setTaskDescription:v8];
  if (*(a1 + 64) >= 1)
  {
    v9 = [BackgroundFeedbackUploader resubmissionDateWithRetryCount:?];
    v10 = sub_10002E924();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Creating earliest begin date %@", buf, 0xCu);
    }

    [v3 setEarliestBeginDate:v9];
  }

  v11 = sub_10002E924();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Starting corrections upload %@ to url %@", buf, 0x16u);
  }

  [v3 resume];
}

void sub_1009B09E0(uint64_t a1, void *a2)
{
  v3 = [a2 uploadTaskWithRequest:*(a1 + 32) fromFile:*(a1 + 40)];
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = v4;
  v9 = v5;
  v10 = [NSString stringWithFormat:@"%i", v6];
  *buf = @"RAPIMAGEUPLOAD";
  *&buf[8] = v9;
  *&buf[16] = v8;
  v20 = v7;
  v21[0] = v10;
  v11 = [NSArray arrayWithObjects:buf count:5];

  v12 = [v11 componentsJoinedByString:@"_"];

  [v3 setTaskDescription:v12];
  if (*(a1 + 80) >= 1)
  {
    v13 = [BackgroundFeedbackUploader resubmissionDateWithRetryCount:?];
    [v3 setEarliestBeginDate:v13];
  }

  v14 = sub_10002E924();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    *buf = 138413058;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v20 = v17;
    LOWORD(v21[0]) = 2048;
    *(v21 + 2) = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting image upload with clientId %@ and imageId %@ to url %@ with retry count %ld", buf, 0x2Au);
  }

  [v3 resume];
}

void sub_1009B1DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009B1DF8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeImageUploadObjectsForSubmissionIdentifier:*(a1 + 32)];
    if ([v4 _saveCorrections:v5 submissionIdentifier:*(a1 + 32) addARPCHeaders:1])
    {
      [v4 _dispatchCorrectionsUploadForSubmissionIdentifier:*(a1 + 32) newRetryCount:0 isPOIEnrichment:{objc_msgSend(v5, "isPOIEnrichment")}];
    }
  }
}

uint64_t sub_1009B1F2C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    v2 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.Maps.rap.submission"];
    [v2 set_allowsExpensiveAccess:1];
    [v2 setAllowsCellularAccess:1];
    [v2 set_requiresPowerPluggedIn:0];
    [v2 setSessionSendsLaunchEvents:1];
    v3 = [NSURLSession sessionWithConfiguration:v2 delegate:*(a1 + 32) delegateQueue:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_1009B2088(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1009B216C;
  v4[3] = &unk_101630E30;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  [v3 getTasksWithCompletionHandler:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_1009B2150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1009B216C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v15 = a1;
    v16 = v4;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = *v18;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 state] == 3)
        {
          v12 = [v11 taskDescription];
          v13 = sub_100B01308(v12);

          if (v13 == 2)
          {
            v14 = [v11 error];
            [WeakRetained _handleCorrectionsUploadTask:v11 withSessionError:v14];
          }

          else
          {
            if (v13 != 1)
            {
              continue;
            }

            v14 = [v11 error];
            [WeakRetained _handleImageUploadTask:v11 withSessionError:v14];
          }
        }

        else
        {
          v14 = sub_10002E924();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Not handling task %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (!v8)
      {
LABEL_17:

        a1 = v15;
        v4 = v16;
        break;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1009B2490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009B24A8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 clientImageUuid];
  v7 = a1[5];
  v8 = *(a1[4] + 16);
  v9 = [v5 rawImageData];

  LODWORD(v7) = [v8 saveImageWithSubmissionIdentifier:v7 imageIdentifier:v6 imageData:v9];
  *(*(a1[6] + 8) + 24) &= v7;
  v10 = sub_10002E924();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = a1[5];
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v6;
      v13 = "Successfully saved image at path %@/%@";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = a1[5];
    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v6;
    v13 = "Failed to save image at path %@/%@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void sub_1009B34D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained isBatteryLevelTooLow];
    v3 = [v5 stateManager];
    v4 = v3;
    if (v2)
    {
      [v3 recordSessionDisableEvent:1];
    }

    else
    {
      [v3 resetSessionDisableEvent:1];
    }

    WeakRetained = v5;
  }
}

id sub_1009B3740()
{
  if (qword_10195E030 != -1)
  {
    dispatch_once(&qword_10195E030, &stru_101630EF0);
  }

  v1 = qword_10195E028;

  return v1;
}

void sub_1009B3794(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionBatteryLevelMonitor");
  v2 = qword_10195E028;
  qword_10195E028 = v1;
}

void sub_1009B55A0(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = (a1 + 32);
    v5 = [*(a1 + 32) identifier];
    v6 = [v11 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      v9 = [v8 identifier];
      v10 = [v11 isEqualToString:v9];

      if (!v10)
      {
        goto LABEL_6;
      }

      v4 = v7;
    }

    [WeakRetained _handleTapOnAccessory:*v4];
  }

LABEL_6:
}

void sub_1009B6A50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
  if (WeakRetained)
  {
  }

  else if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CarCardStyleProviding])
  {
    [*(a1 + 32) setStyleProvider:*(a1 + 40)];
  }

  v3 = [*(a1 + 40) view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [*(a1 + 32) containerView];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [*(a1 + 32) containerView];
  [v5 addSubview:v3];

  v21 = [v3 topAnchor];
  v22 = [*(a1 + 32) accessoryContainerView];
  v20 = [v22 bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v17 = [v3 leftAnchor];
  v18 = [*(a1 + 32) containerView];
  v16 = [v18 leftAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v23[1] = v15;
  v6 = [v3 bottomAnchor];
  v7 = [*(a1 + 32) containerView];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v23[2] = v9;
  v10 = [v3 rightAnchor];
  v11 = [*(a1 + 32) containerView];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v23[3] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

void sub_1009B7614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 184));
  _Unwind_Resume(a1);
}

id sub_1009B764C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _canAnchorBecomeFocused];

  return v2;
}

void sub_1009B7A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009B7A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateScaleAndCompass];
    WeakRetained = v2;
  }
}

void sub_1009B84F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(v2);
  objc_destroyWeak((v3 - 176));
  _Unwind_Resume(a1);
}

void sub_1009B8600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained pressedReverse];
    WeakRetained = v2;
  }
}

void sub_1009B864C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained pressedOutAndBack];
    WeakRetained = v2;
  }
}

void sub_1009B8698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained pressedCloseLoop];
    WeakRetained = v2;
  }
}

void sub_1009B86E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained _deleteFirstAnchorPointMatchingAnchorPoint:?];
    WeakRetained = v2;
  }
}

void sub_1009B8730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained _deleteLastAnchorPointMatchingAnchorPoint:?];
    WeakRetained = v2;
  }
}

void sub_1009B877C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[17])
  {
    v2 = WeakRetained;
    [WeakRetained _deleteFirstAnchorPointMatchingAnchorPoint:?];
    WeakRetained = v2;
  }
}

void sub_1009B9574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009B9598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 56) & 1) != 0 || ([WeakRetained chromeViewController], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isTransitioning"), v4, (v5 & 1) == 0)) && (objc_msgSend(v3, "chromeViewController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isTopContext:", v3), v6, (v7))
    {
      v8 = [MapsPopupMessageView alloc];
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1009B9840;
      v20[3] = &unk_101661B98;
      objc_copyWeak(&v21, (a1 + 40));
      v11 = [(MapsPopupMessageView *)v8 initWithMessage:v9 timeout:v20 timeoutHandler:v10];
      v12 = v3[22];
      v3[22] = v11;

      v13 = [v3 chromeViewController];
      v14 = sub_10000FA08(v13);

      v15 = v3[22];
      [v3 chromeViewController];
      if (v14 == 1)
        v16 = {;
        [v16 passThroughView];
      }

      else
        v16 = {;
        [v16 viewport];
      }
      v17 = ;
      [v15 presentFromView:v17 animated:1];

      v18 = [v3 chromeViewController];
      [v18 setNeedsUpdateComponent:@"mapScale" animated:1];

      [v3 _updateScaleAndCompass];
      if (*(a1 + 57) == 1)
      {
        if (sub_10000FA08(v3[22]) == 5)
        {
          AudioServicesPlaySystemSound(0x1000u);
        }

        else
        {
          [v3[23] notificationOccurred:2];
        }
      }

      objc_destroyWeak(&v21);
    }

    else
    {
      v19 = sub_1007989A4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Ignoring popup presentation due to context dismissing", buf, 2u);
      }
    }
  }
}

void sub_1009B9840(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateScaleAndCompass];
    [v2 _updateCoachingPillWithIgnoreChromeTransitioning:0];
    WeakRetained = v2;
  }
}

uint64_t sub_1009B9D04(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *v1 = 1;
  }

  return result;
}

void sub_1009BA224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009BA240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v13 = sub_1007989A4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v32 = [v8 anchorPoints];
      v33 = v9;
      v14 = v10;
      v15 = [v32 count];
      v16 = [v8 anchorPoints];
      v17 = [v16 anchorPoints];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 134218242;
      v38 = v15;
      v10 = v14;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received route with %lu anchor points:\n%@", buf, 0x16u);

      v9 = v33;
    }

    [v8 updateCustomRouteStartEndCaptions];
    [v8 updateMyLocationAnchorNames];
    v19 = v12[26];
    objc_storeStrong(v12 + 26, a2);
    v20 = [v12 chromeViewController];
    [v20 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

    [v12[1] setRoute:v8];
    v21 = [v12 chromeViewController];
    v22 = [v21 mapSelectionManager];
    [v22 clearSelection];

    [v12 _insertRecenterButtonIfNeeded];
    if (!v19)
    {
      [v12 _showRecenterButton];
    }

    [*(a1 + 32) updateWithSuccessfulRoute:v8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009BA6D4;
    block[3] = &unk_101661AE0;
    v36 = *(a1 + 56);
    block[4] = v12;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_21;
  }

  if (v9)
  {
    v34 = 0;
    v23 = [WeakRetained _errorMessageForError:v9 directionsError:v10 request:*(a1 + 40) isOffline:*(a1 + 57) shouldBackoutEdit:&v34];
    [v12 _presentPopupViewForMessage:v23 timeout:1 isError:0 ignoreChromeTransitioning:10.0];
    if (v34 == 1)
    {
      [v12 _backoutLastState];
    }

    v24 = [v12[24] rippleView];
    v25 = [v24 isAnimating];

    if (v25)
    {
      v26 = sub_1007989A4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Will stop ripple animation (route failure)", buf, 2u);
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:v12 selector:"_removeRippleView" object:0];
      v27 = [v12[24] rippleView];
      [v27 timeUntilAnimationStop];
      v29 = v28;

      [v12 performSelector:"_removeRippleView" withObject:0 afterDelay:v29];
    }

LABEL_20:

    goto LABEL_21;
  }

  v30 = sub_10006D178();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v38 = "[MapsRouteCreationContext _requeryStateWithAction:shouldRecenterOnCompletion:]_block_invoke";
    v39 = 2080;
    v40 = "MapsRouteCreationContext.m";
    v41 = 1024;
    v42 = 1328;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

void sub_1009BA6D4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _centerOnCurrentRouteAnimated:1];
  }

  v2 = [*(*(a1 + 32) + 192) rippleView];
  v3 = [v2 isAnimating];

  if (v3)
  {
    v4 = sub_1007989A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will stop ripple animation (route success)", v8, 2u);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"_removeRippleView" object:0];
    v5 = [*(*(a1 + 32) + 192) rippleView];
    [v5 timeUntilAnimationStop];
    v7 = v6;

    [*(a1 + 32) performSelector:"_removeRippleView" withObject:0 afterDelay:v7];
  }
}

void sub_1009BAC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009BACA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 mapSelectionManager];
    [v3 clearSelection];

    [v4 _setMenuAttachedAnchorPoint:0];
    WeakRetained = v4;
  }
}

void sub_1009BAD20(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  v3 = *(a1 + 32);

  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_1009BB0C4(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 136))
  {
    v4 = *(v3 + 152);

    [v4 performPrimaryAction];
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = sub_1007989A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "_anchorPointAttachedToMenu was unset after the context menu was requested", v6, 2u);
    }
  }
}

void sub_1009BB80C(uint64_t a1)
{
  v2 = [*(a1 + 32) actionCoordinator];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_opt_new();
  v6 = [*(a1 + 40) routeData];
  [v5 setRouteData:v6];

  v7 = objc_opt_new();
  v8 = +[SearchResult currentLocationSearchResult];
  [v7 setSearchResult:v8];

  v9 = objc_opt_new();
  [v9 setSearchResult:v5];
  v10 = [DirectionItem alloc];
  v17[0] = v7;
  v17[1] = v9;
  v11 = [NSArray arrayWithObjects:v17 count:2];
  v12 = [(DirectionItem *)v10 initWithItems:v11 transportType:0];

  v13 = *(*(a1 + 40) + 8);
  v15[0] = @"DirectionsSessionInitiatorKey";
  v15[1] = @"DirectionsRoutePlanningSessionSourceKey";
  v16[0] = &off_1016E7F28;
  v16[1] = &off_1016E7F40;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v4 viewController:v13 doDirectionItem:v12 withUserInfo:v14];
}

void sub_1009BBBE8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9 | v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    v7 = [*(a1 + 32) storageID];
    [v6 interruptConvertToNavigableSavedRouteID:v7 routeName:*(a1 + 40) error:v9 directionsError:v5];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1009BBEA4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9 | v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    v7 = [*(a1 + 32) storageID];
    [v6 interruptConvertToNavigableSavedRouteID:v7 routeName:*(a1 + 40) error:v9 directionsError:v5];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1009BCAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009BCAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = sub_1007989A4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Validation failed for anchor point: %@", &v10, 0xCu);
      }

      v7 = [v5 _errorMessageForError:v3 directionsError:0 request:0 isOffline:0 shouldBackoutEdit:0];
      [v5 _presentPopupViewForMessage:v7 timeout:1 isError:0 ignoreChromeTransitioning:10.0];
    }

    else
    {
      v8 = [WeakRetained[5] lastObject];
      v9 = [v8 instanceByAddingAnchorPoint:*(a1 + 32)];
      [v5 _pushEditState:v9 shouldRecenterOnCompletion:0];
    }
  }
}

void sub_1009BCFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009BCFE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009BD0DC;
  block[3] = &unk_101630F60;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v5;
  v15 = *(a1 + 48);
  v7 = *(a1 + 32);
  v16 = *(a1 + 49);
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v14);
}

void sub_1009BD0DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    WeakRetained[6] = 0;

    v5 = [v3[5] lastObject];
    v6 = [v5 anchorPoints];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = sub_1007989A4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will stop ripple animation (map item)", &v36, 2u);
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:v3 selector:"_removeRippleView" object:0];
      v9 = [v3[24] rippleView];
      [v9 timeUntilAnimationStop];
      v11 = v10;

      [v3 performSelector:"_removeRippleView" withObject:0 afterDelay:v11];
    }

    v12 = [*(a1 + 32) firstObject];
    if (v12)
    {
      if (*(a1 + 64) == 1)
      {
        [*(a1 + 40) _coordinate];
        v14 = v13;
        v16 = v15;
        v17 = [v12 _geoMapItem];
        v18 = [v17 name];
        v19 = [GEOComposedRouteAnchorPoint anchorPointWithCoordinate:1 isCurrentLocation:v18 name:v14, v16, 1.79769313e308];
      }

      else
      {
        if (*(a1 + 65) == 1)
        {
          [*(a1 + 40) _coordinate];
          v30 = v29;
          v32 = v31;
          v17 = [v12 _geoMapItem];
          v33 = [GEOComposedRouteAnchorPoint anchorPointWithMapItem:v17 coordinate:v30, v32, 1.79769313e308];
        }

        else
        {
          v34 = [GEOComposedRouteAnchorPoint alloc];
          v17 = [v12 _geoMapItem];
          v33 = [v34 initWithMapItem:v17];
        }

        v19 = v33;
      }

      [v19 setIsCurrentLocation:*(a1 + 64)];
    }

    else
    {
      v20 = sub_1007989A4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 48);
        v36 = 138543362;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to refine map item for anchor point. error: %{public}@", &v36, 0xCu);
      }

      [*(a1 + 40) _coordinate];
      v24 = *(a1 + 40);
      if (!v24 || (v25 = v22, v26 = v23, fabs(v23) > 180.0) || v22 < -90.0 || v22 > 90.0)
      {
        v19 = [v3 _errorMessageForError:*(a1 + 48) directionsError:0 request:0 isOffline:0 shouldBackoutEdit:0];
        [v3 _presentPopupViewForMessage:v19 timeout:1 isError:0 ignoreChromeTransitioning:10.0];
LABEL_25:

        goto LABEL_26;
      }

      if (*(a1 + 64) == 1)
      {
        v27 = [v24 _geoMapItem];
        v28 = [v27 name];
        v19 = [GEOComposedRouteAnchorPoint anchorPointWithCoordinate:1 isCurrentLocation:v28 name:v25, v26, 1.79769313e308];

LABEL_24:
        [v3 _appendAnchorPoint:v19];
        goto LABEL_25;
      }

      v19 = [GEOComposedRouteAnchorPoint anchorPointWithCoordinate:v22, v23, 1.79769313e308];
      v35 = [*(a1 + 40) _geoMapItem];
      [v19 refineWithMapItem:v35];
    }

    [v19 setIsCoordinate:*(a1 + 65)];
    goto LABEL_24;
  }

LABEL_26:
}

void sub_1009BEF44(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1009BEF80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1007989A4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will stop ripple animation (resign)", v7, 2u);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:WeakRetained selector:"_removeRippleView" object:0];
    [WeakRetained _removeRippleView];
    v3 = [WeakRetained chromeViewController];
    v4 = [v3 mapView];

    [v4 _setApplicationState:*(WeakRetained + 40)];
    [v4 setPitchEnabled:*(WeakRetained + 164)];
    [WeakRetained[19] removeFromSuperview];
    [WeakRetained _removeEditStackButtons];
    [WeakRetained _removeCenterButtons];
    [WeakRetained[22] dismissAnimated:1 completion:0];
    v5 = [WeakRetained chromeViewController];
    v6 = sub_10000FA08(v5);

    if (v6 != 5)
    {
      [v4 setShowsCompass:1];
    }
  }
}

void sub_1009BF0BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[21];
    WeakRetained[21] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void sub_1009BF108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[21];
    WeakRetained[21] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void sub_1009BF298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009BF2B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 mapView];

    *(v14 + 40) = [v3 _applicationState];
    [v3 _setApplicationState:9];
    v4 = [v14 iosBasedChromeViewController];
    v5 = [v4 acquireExploreMapHikingMapToken];
    v6 = *(v14 + 21);
    *(v14 + 21) = v5;

    if ([v3 _isPitched])
    {
      [v3 _exit3DMode];
    }

    *(v14 + 164) = [v3 isPitchEnabled];
    [v3 setPitchEnabled:0];
    [v3 addSubview:*(v14 + 19)];
    [v14 _insertEditStackButtons];
    [v14 _insertCenterButtons];
    v7 = [v14 composedRoute];
    [*(v14 + 1) setRoute:v7];

    v8 = [*(v14 + 5) lastObject];
    v9 = [v8 anchorPoints];
    v10 = [v9 count];

    if (v10 <= 1)
    {
      [v14 _requeryStateWithAction:0 shouldRecenterOnCompletion:0];
    }

    v11 = [v14 chromeViewController];
    v12 = sub_10000FA08(v11);

    if (v12 != 5)
    {
      [v14 _updateScaleAndCompass];
    }

    [v14 _updateCoachingPillWithIgnoreChromeTransitioning:1];
    v13 = +[MKMapService sharedService];
    [v13 captureUserAction:21 onTarget:131 eventValue:0];

    WeakRetained = v14;
  }
}

void sub_1009BF604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1009BF624(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateMenu];
    v3 = v2[18];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

UIColor *__cdecl sub_1009C05C0(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v2 = ;

  return v2;
}

id sub_1009C2434()
{
  if (qword_10195E058 != -1)
  {
    dispatch_once(&qword_10195E058, &stru_101631068);
  }

  v1 = qword_10195E050;

  return v1;
}

id sub_1009C2488(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) elements];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    v7 = FBSDisplayLayoutElementLockScreenIdentifier;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) identifier];
        v10 = [v9 isEqualToString:v7];

        v5 |= v10;
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 40) setLocked:v5 & 1];
  [*(a1 + 40) setIsScreenFullyOn:{objc_msgSend(*(a1 + 32), "displayBacklightLevel") == 100}];
  [*(a1 + 40) setIsScreenOn:{objc_msgSend(*(a1 + 32), "displayBacklightLevel") != 0}];
  [*(a1 + 40) setIsOurAppActive:{objc_msgSend(*(a1 + 40), "_isMapsActiveInLayout:", *(a1 + 32))}];
  v11 = [*(a1 + 40) _changeReasonWithNewLayout:*(a1 + 32) context:*(a1 + 48)];
  [*(a1 + 40) setChangeReason:v11];
  objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  return [*(a1 + 40) _notifyObserversWithReason:v11];
}

void sub_1009C2644(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsScreenLayoutMonitor");
  v2 = qword_10195E050;
  qword_10195E050 = v1;
}

void sub_1009C3088(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E040;
  qword_10195E040 = v1;
}

void sub_1009C4364(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) application];
  [v2 configureWithDisabledRideBookingApplication:v3 showActionButton:{objc_msgSend(*(a1 + 48), "shouldShowEnableAppsCell") ^ 1}];
}

void sub_1009C4800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1009C4824(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      v5 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:1];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"OK [Photo Credit alert acceptance]" value:@"localized string not found" table:0];
      v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:0];

      [v5 addAction:v8];
      [v4 _maps_topMostPresentViewController:v5 animated:1 completion:0];
    }

    else
    {
      [WeakRetained handleDismissAction:*(a1 + 32)];
    }
  }
}

id sub_1009C612C()
{
  if (qword_10195E068 != -1)
  {
    dispatch_once(&qword_10195E068, &stru_1016310F0);
  }

  v1 = qword_10195E060;

  return v1;
}

void sub_1009C6180(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARMuteSpeechOverrideTask");
  v2 = qword_10195E060;
  qword_10195E060 = v1;
}

void sub_1009C6B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009C6B30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained markAsShown];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _dismiss];
}

void sub_1009C74C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v11 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v12 - 72));
  _Unwind_Resume(a1);
}

void sub_1009C7514(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained[22];
    v7 = WeakRetained;
    v6 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    (*(v5 + 16))(v5, a2, v6);

    WeakRetained = v7;
  }
}

void sub_1009C817C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009C819C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained host];
    v4 = [v3 sectionIndexForOutlineSection:v2];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = sub_100798A3C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v2 route];
        v8 = 138412546;
        v9 = v2;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Couldn't find index matching: %@, for route: %@", &v8, 0x16u);
      }
    }

    else
    {
      v7 = v2[1];
      v5 = [NSIndexSet indexSetWithIndex:v4];
      [v7 reloadSections:v5];
    }
  }
}

void sub_1009C85C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_1009C85DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _separatorInsetsForIndexPath:v3];
  v6 = v5;

  return v6;
}

void sub_1009C9444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009C945C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1009C9474(uint64_t a1)
{
  [*(a1 + 32) _configureMapsRoutePlanningCell:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 layoutIfNeeded];
}

void sub_1009C965C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_1009C9678(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 1) != 0 || (WeakRetained = objc_loadWeakRetained((a1 + 32)), v5 = [WeakRetained isLastRoute], WeakRetained, v5))
  {
    top = _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  else
  {
    top = NSDirectionalEdgeInsetsZero.top;
    +[RouteOverviewCell horizontalContentInset];
    +[RouteOverviewCell horizontalBackgroundInset];
  }

  return top;
}

void sub_1009CA2F0(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    v2 = *(a1 + 42) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_1007995B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (v2)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = v6;
    if (*(a1 + 41))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "needsReload: %@ (routeCollectionEqual: %@, featureDiscoveryNeedsReload: %@)", &v10, 0x20u);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) _createRouteSectionsForCurrentRoutes];
  }

  if (v2)
  {
    [*(a1 + 32) prepareOutlineSections];
  }
}

void sub_1009CA76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1009CA798(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 mapItemStorage];
  v7 = [v6 _bestAvailableCountryCode];
  v8 = [v7 isEqual:@"FR"];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_1009CA818(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 shouldAlwaysShowAdvisoryCard];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1009CA924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1009CA93C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFamiliarRoute];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1009CAC6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [RoutePlanningRouteOverviewOutlineSection alloc];
  v7 = [*(a1 + 32) collectionView];
  v8 = [*(a1 + 32) routeCollection];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Route%lu", [v8 indexOfRoute:v5]);
  v10 = [(RoutePlanningRouteOverviewOutlineSection *)v6 initWithCollectionView:v7 sectionIdentifier:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1009CAE0C;
  v14[3] = &unk_101631168;
  v15 = v10;
  v16 = v5;
  v11 = *(a1 + 40);
  v17 = *(a1 + 32);
  v21 = *(a1 + 64);
  v18 = v11;
  v20 = a3;
  v19 = *(a1 + 48);
  v12 = v5;
  v13 = v10;
  [(RoutePlanningRouteOverviewOutlineSection *)v13 performWhileSuppressingCellReloads:v14];
  [*(a1 + 56) addObject:v13];
  [*(*(a1 + 32) + 144) setObject:v13 forKey:v12];
}

void sub_1009CAE0C(uint64_t a1)
{
  [*(a1 + 32) setRoute:*(a1 + 40)];
  v2 = [*(a1 + 48) routeCellDelegate];
  [*(a1 + 32) setRouteCellDelegate:v2];

  [*(a1 + 32) setShowDetailButton:*(a1 + 80)];
  [*(a1 + 32) setAllowPersistentHighlight:*(a1 + 81)];
  [*(a1 + 32) setCurrentRoute:*(a1 + 40) == *(a1 + 56)];
  [*(a1 + 32) setFirstRoute:*(a1 + 72) == 0];
  [*(a1 + 32) setLastRoute:*(a1 + 40) == *(a1 + 64)];
  v3 = [*(a1 + 48) automaticSharingContacts];
  [*(a1 + 32) setAutomaticSharingContacts:v3];

  [*(a1 + 32) setExpanded:{objc_msgSend(*(a1 + 48), "_hasExpandedStepsForRoute:", *(a1 + 40))}];
  v4 = [*(a1 + 48) dataCoordinator];
  [*(a1 + 32) setDataCoordinator:v4];
}

void sub_1009CBCC4(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"hasExpandedSteps"];
  [*(a1 + 32) prepareOutlineSections];
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v2 sectionIndexForOutlineSection:*(a1 + 40)];
    v5 = [*(a1 + 32) collectionView];
    v4 = [NSIndexSet indexSetWithIndex:v3];
    [v5 insertSections:v4];
  }

  else
  {
    v5 = [v2 collectionView];
    v4 = [NSIndexSet indexSetWithIndex:*(a1 + 48)];
    [v5 deleteSections:v4];
  }
}

void sub_1009CC818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009CC830(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 route];
    v7 = *(a1 + 32);

    if (v6 == v7)
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_1009CC980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009CC998(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1009CCFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009CD014(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1009CD618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009CD634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requireReload];
}

void sub_1009CDC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009CDC80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = v5;
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = v14;
  }

  else
  {
    v8 = v5;
    isKindOfClass = 0;
  }

  [*(a1 + 32) addObject:v8];
  v9 = [v14 route];
  v10 = [v9 isFamiliarRoute];

  if (v10)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) count];
  }

  v11 = *(*(a1 + 40) + 152);
  v12 = [v14 route];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    [*(a1 + 32) addObject:v13];
  }

  [v14 setFirstRoute:0];
  [v14 setLastRoute:*(a1 + 56) - 1 == a3];
  if (a3)
  {
    if (isKindOfClass)
    {
      [v14 setFirstRoute:1];
    }
  }

  else
  {
    [v14 setFirstRoute:1];
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) addObject:*(*(a1 + 40) + 136)];
      [v14 setLastRoute:1];
    }
  }
}

void sub_1009CE544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009CE568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained markRouteTipkitViewSeen];
    WeakRetained = v2;
  }
}

id sub_1009CEA44(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) waypointSubstitutedComposedStringForString:a2 waypoint:*(a1 + 40) useWaypointAddress:1];
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];
  v5 = [v4 multiPartAttributedStringWithAttributes:*(a1 + 48)];
  v6 = [v5 attributedString];

  return v6;
}

void sub_1009CEADC(uint64_t a1, uint64_t a2, char *a3)
{
  [*(a1 + 32) appendAttributedString:a2];
  if ([*(a1 + 40) count] - 1 > a3)
  {
    v5 = *(a1 + 32);
    v6 = [[NSAttributedString alloc] initWithString:@"\n"];
    [v5 appendAttributedString:v6];
  }
}

void sub_1009D0A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009D0A48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained actionDelegate];
    [v2 parkedCarFooterActionsSectionControllerDidRemoveParkedCar:v3];

    WeakRetained = v3;
  }
}

void sub_1009D2660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1009D2698(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && WeakRetained[7] == *(a1 + 48))
  {
    [WeakRetained[8] invalidate];
    v7 = v6[8];
    v6[8] = 0;

    v8 = v6[15];
    v6[15] = 0;

    *(v6 + 49) = 1;
    if (!v14)
    {
      v6[12] = a2;
      [v6[1] setEstimatedDiskSizeLabel:a2];
      v13 = *(a1 + 32);
      v12 = 1;
LABEL_11:
      [v13[1] setState:v12];
      goto LABEL_12;
    }

    v9 = [v14 domain];
    v10 = GEOErrorDomain();
    if ([v9 isEqualToString:v10])
    {
      v11 = [v14 code];

      if (v11 == -6)
      {
        v12 = 2;
LABEL_10:
        v13 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v12 = 4;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1009D27BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[8] == v3 && WeakRetained[7] == *(a1 + 40))
  {
    v6 = sub_10003D9F4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v9 = 134349056;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Calculating region size/support took longer than %{public}.1f seconds. Changing UI to 'Calculating...' state", &v9, 0xCu);
    }

    [v5[1] setState:0];
    v8 = v5[8];
    v5[8] = 0;
  }
}

void sub_1009D3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 200));
  _Block_object_dispose((v41 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1009D3078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v5 && !v6)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v8 = +[MapsOfflineUIHelper sharedHelper];
      [v8 resumeDownloadForSubscriptionWithIdentifier:v5 mode:1];
    }

    *(WeakRetained + 104) = 1;
    objc_storeStrong(WeakRetained + 4, *(a1 + 32));
    v9 = *(WeakRetained + 2);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009D3758;
    v10[3] = &unk_1016619A8;
    objc_copyWeak(&v11, (a1 + 48));
    [v9 animateForDownloadWithCompletion:v10];
    objc_destroyWeak(&v11);
  }
}

void sub_1009D31B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v4)
  {
    v8 = *(*(a1 + 32) + 72);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009D36A4;
    v10[3] = &unk_10163AED0;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v6 updateRegion:v7 forSubscriptionInfo:v8 completion:v10];
  }

  else
  {
    [v5 addSubscriptionWithRegion:*(a1 + 40) name:v3 completion:*(a1 + 48)];
  }
}

void sub_1009D32B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = [v4 cellularBehaviorForDownloadOfSize:*(*(a1 + 32) + 96) forForcedDownload:0];

  if (v5 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = +[MapsOfflineUIHelper sharedHelper];
  v7 = *(*(a1 + 32) + 96);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1009D3684;
  v12[3] = &unk_101631370;
  v11 = *(a1 + 40);
  v8 = v11;
  v14 = v11;
  v13 = v3;
  v9 = [v6 alertControllerForCellularDownloadConfirmationForRegionName:v13 size:v7 actionHandler:v12];

  v10 = [*(a1 + 32) chromeViewController];
  [v10 _maps_topMostPresentViewController:v9 animated:1 completion:0];

LABEL_8:
}

void sub_1009D3434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) == 1)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v6)
  {
    v9 = sub_10003D9F4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching suggested name for region: %{public}@", &v18, 0xCu);
    }
  }

  else
  {
    v10 = [v5 firstObject];
    v9 = [v10 name];

    v11 = [v9 length];
    v12 = sub_10003D9F4();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 40);
        v18 = 138478083;
        v19 = v9;
        v20 = 2113;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Fetched suggested name '%{private}@' for region %{private}@", &v18, 0x16u);
      }

      v13 = v8;
      v8 = v9;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v18 = 138477827;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempt to fetch suggested name for region succeeded, but no name was provided (%{private}@)", &v18, 0xCu);
    }
  }

  if (![v8 length])
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];

    v8 = v17;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1009D36A4(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(*(a1 + 32) + 72);
    v5 = a3;
    v8 = [v4 subscription];
    v6 = [v8 identifier];
    (*(v3 + 16))(v3, v6, v5);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = a3;
    v7(v3, 0);
  }
}

void sub_1009D3758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismiss];
    WeakRetained = v2;
  }
}

void sub_1009D3E88(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[104] == 1)
  {
    v3 = [v2 downloadDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) downloadDelegate];
      [v5 didStartDownloadFromAutocomplete];
    }
  }
}

void sub_1009D42E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1009D4314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 overlayController];
    [v3 removeOverlay:v4[2]];

    [v4 _restoreMapView];
    WeakRetained = v4;
  }
}

void sub_1009D4394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained postDismissalBlock];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 postDismissalBlock];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

void sub_1009D453C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1009D4568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveMapViewConfiguration];
    WeakRetained = v2;
  }
}

void sub_1009D45AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupMapView];
    WeakRetained = v2;
    *(v2 + 48) = 0;
  }
}

void sub_1009D4F88(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) autoUpdateDisclaimerLabel];
  v4 = v3;
  if (v2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v2)
  {
    v6 = 3.40282347e38;
  }

  else
  {
    v6 = 12.0;
  }

  [v3 setHidden:v2 ^ 1u];

  v7 = [*(a1 + 32) autoUpdateDisclaimerLabel];
  [v7 setAlpha:v5];

  v8 = [*(a1 + 32) contentStackView];
  v9 = [*(a1 + 32) sizeLabel];
  [v8 setCustomSpacing:v9 afterView:v6];

  v10 = [*(a1 + 32) cardPresentationController];
  [v10 updateHeightForCurrentLayout];

  v11 = [*(a1 + 32) view];
  [v11 layoutIfNeeded];
}

void sub_1009D5094(id a1)
{
  v1 = objc_alloc_init(NSByteCountFormatter);
  v2 = qword_10195E070;
  qword_10195E070 = v1;
}

UIFont *__cdecl sub_1009D63FC(id a1)
{
  v1 = +[UIFont system15];
  v2 = [UIFont _maps_cappedFont:v1 withMaxPoint:34.0];

  return v2;
}

void sub_1009D73A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009D73B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009D73D0(uint64_t a1, void *a2)
{
  v6 = [a2 geoMapItem];
  v3 = [MKMapItem _itemWithGeoMapItem:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009D7DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_1009D8030(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = v5;
LABEL_11:
      v12 = *(a1 + 32);
      v13 = [NSString stringWithFormat:@"%@: %@", v14, v6];
      [v12 addObject:v13];

      goto LABEL_12;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v6 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v6 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

id sub_1009D851C()
{
  if (qword_10195E098 != -1)
  {
    dispatch_once(&qword_10195E098, &stru_101631508);
  }

  v1 = qword_10195E090;

  return v1;
}

void sub_1009D8570(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchFieldItem");
  v2 = qword_10195E090;
  qword_10195E090 = v1;
}

void sub_1009D9874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1009D9898(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009D98E4(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009DAD14(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E080;
  qword_10195E080 = v1;
}

void sub_1009DB8AC(uint64_t a1, void *a2)
{
  v3 = [a2 query];
  [*(*(*(a1 + 32) + 8) + 40) setSearchString:v3];
}

void sub_1009DB90C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1009DB920(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v5 = [MKMapItem _itemWithGeoMapItem:v3];

  v4 = [[SearchResult alloc] initWithMapItem:v5];
  [*(*(*(a1 + 32) + 8) + 40) setSearchResult:v4];
}

void sub_1009DC518(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [a2 anonymousId];
    v6 = [*(a1 + 32) tdmUserInfo];
    [v6 setAnonymousUserId:v5];

    v7 = +[_TtC4Maps30ServerEvaluationStatusMapsSync shared];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1009DC640;
    v8[3] = &unk_101631530;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v7 fetchARPStatusWithCompletion:v8];
  }
}

uint64_t sub_1009DC640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) tdmUserInfo];
  [v6 setIsBlocked:a2];

  v7 = [*(a1 + 32) tdmUserInfo];
  [v7 setIsTrusted:a3];

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void sub_1009DD19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009DD1B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained present];
}

void sub_1009DE490(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1009DE4AC(uint64_t a1)
{
  v33 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = a1;
  v2 = [*(a1 + 32) contexts];
  v3 = [v2 reverseObjectEnumerator];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 desiredSidebarContentControllers];
        }

        else
        {
          [*(*(v31 + 32) + 1112) objectForKey:v9];
        }
        v10 = ;
        if ([v10 count])
        {
          v11 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v10 count]);
          [v33 insertObjects:v10 atIndexes:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          v6 |= [v9 prefersSidebarHidden];
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 wantsSidebarControl])
        {

          goto LABEL_20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_20:

  v12 = v31;
  WeakRetained = objc_loadWeakRetained((v31 + 40));
  v14 = *(v31 + 32);
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        v12 = v31;
        goto LABEL_26;
      }

      v12 = v31;
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_26:

    goto LABEL_28;
  }

  v19 = @"<nil>";
LABEL_28:

  v20 = [NSString stringWithFormat:@"%@: sidebar show/hide animation", v19];
  v21 = [WeakRetained addCompletionWaitBlockWithReason:v20];

  v22 = [v33 count];
  v23 = *(v12 + 32);
  if (v22)
  {
    [*(v12 + 32) setSidebarViewControllers:v33];
    v24 = *(v12 + 32);
    v25 = [v24 _shouldHideSidebar] | v6;
    v26 = objc_loadWeakRetained((v12 + 40));
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1009DE980;
    v34[3] = &unk_10165F438;
    v35 = v21;
    v27 = v21;
    [v24 hideSideBar:v25 & 1 animation:v26 completion:v34];

    v28 = v35;
  }

  else
  {
    v29 = objc_loadWeakRetained((v12 + 40));
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1009DE930;
    v36[3] = &unk_10165D3A0;
    v36[4] = *(v12 + 32);
    v37 = v33;
    v38 = v21;
    v30 = v21;
    [v23 hideSideBar:1 animation:v29 completion:v36];

    v28 = v37;
  }
}

uint64_t sub_1009DE930(uint64_t a1)
{
  [*(a1 + 32) setSidebarViewControllers:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1009E0360(uint64_t a1)
{
  v2 = [*(a1 + 32) topContext];
  v1 = [v2 actionCoordinator];
  [v1 viewControllerPresentSearchEditing];
}

id sub_1009E0DB8(uint64_t a1)
{
  v2 = 0.200000003;
  if (!*(a1 + 56))
  {
    v2 = 0.0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009E0E74;
  v6[3] = &unk_101654728;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v6[5] = v4;
  v7 = *(a1 + 57);
  [UIView animateWithDuration:v6 animations:v3 completion:v2];
  return [*(a1 + 32) setNeedsUpdateComponent:@"mapInsets" animated:*(a1 + 56)];
}

void sub_1009E0E74(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  [v2 setPreferredDisplayMode:*(a1 + 40)];

  v3 = [*(a1 + 32) detailViewController];
  v4 = [v3 view];
  [v4 layoutIfNeeded];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v3 = [*(a1 + 32) splitViewController];
    [v3 primaryColumnWidth];
    v6 = sub_100019A44() + v7;
  }

  v8 = [*(a1 + 32) viewportSideBarWidthConstraint];
  [v8 setConstant:v6];

  if ((v5 & 1) == 0)
  {
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v13 = [*(a1 + 32) splitViewController];
    [v13 primaryColumnWidth];
    v10 = sub_100019A44() + v11;
  }

  v12 = [*(a1 + 32) mapViewInsetsSideBarWidthConstraint];
  [v12 setConstant:v10];

  if ((v9 & 1) == 0)
  {
  }
}

void sub_1009E12B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009E12DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained topContext];
    if (objc_opt_respondsToSelector())
    {
      [v2 sidebarDidUpdate];
    }

    WeakRetained = v3;
  }
}

void sub_1009E1654(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentContainerViewController];
  if (v2)
  {
    v19 = v2;
    v3 = [*(a1 + 32) mapView];
    [v3 _edgeInsets];
    v5 = v4;
    v7 = v6;

    if ([v19 isContaineeStackEmpty])
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v12 = [*(a1 + 32) view];
      v13 = [v12 effectiveUserInterfaceLayoutDirection];

      v14 = -v5;
      bottom = 0.0;
      if (v13 == 1)
      {
        right = 0.0;
      }

      else
      {
        right = -v7;
      }

      if (v13 == 1)
      {
        left = v14;
      }

      else
      {
        left = 0.0;
      }

      top = 0.0;
    }

    v15 = [*(a1 + 32) floatingControlsOverlay];
    v16 = [v15 floatingControlsViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setAdditionalCompassEdgeInsets:{top, left, bottom, right}];
    v2 = v19;
  }
}

id sub_1009E1B44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) toolbarController];
  [v3 setLocationButtonEnabled:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) toolbarController];
  [v5 setToggleSidebarButtonEnabled:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) toolbarController];
  [v7 setMapModeButtonEnabled:v6];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) toolbarController];
  [v9 setRoutePlanningButtonEnabled:v8];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) toolbarController];
  [v11 setAddSubmenusEnabled:v10];

  v12 = [*(a1 + 32) canEnter3dMode];
  v13 = [*(a1 + 32) toolbarController];
  [v13 setThirdDimensionButtonEnabled:v12];

  v14 = *(a1 + 41);
  v15 = [*(a1 + 32) toolbarController];
  [v15 setLookAroundActive:v14];

  if (_UISolariumEnabled())
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) splitViewController];
    v18 = [v17 displayModeButtonItem];
    [v18 setEnabled:v16];
  }

  v19 = *(a1 + 32);

  return [v19 _updateShareButton];
}

id sub_1009E1CA8(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  v3 = [v2 displayMode] == 2;

  v4 = *(a1 + 32);

  return [v4 notifySideBarVisibilityChanged:v3];
}

void sub_1009E1F9C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1112) keyEnumerator];
  v3 = [v2 allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:{v9, v10}] & 1) == 0)
        {
          [*(*(a1 + 32) + 1112) removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}