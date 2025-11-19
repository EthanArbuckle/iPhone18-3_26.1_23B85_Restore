void sub_1005EF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1005EF3E0(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v5 = [v3 value];
  v6 = [v4 stringFromPostalAddress:v5];

  v7 = sub_100798AD4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(*(a1 + 80) + 8) + 40) identifier];
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Performing rev-geo for address:(%@). ContactIdentifier:%@", buf, 0x16u);
  }

  v9 = +[NSCharacterSet newlineCharacterSet];
  v10 = [v6 componentsSeparatedByCharactersInSet:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = +[MKMapService sharedService];
  v13 = [v12 ticketForForwardGeocodeString:v6 traits:*(a1 + 48)];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005EFC10;
  v18[3] = &unk_1016236A0;
  v25 = *(a1 + 88);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v19 = v6;
  v20 = v14;
  v21 = v15;
  v22 = v3;
  v26 = *(a1 + 96);
  v23 = *(a1 + 72);
  v24 = *(a1 + 32);
  v16 = v3;
  v17 = v6;
  [v13 submitWithHandler:v18 networkActivity:0];
}

void sub_1005EF638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained correctedSearchResultsFrom:*(a1 + 32)];
    v5 = v4;
    if (*(*(*(a1 + 48) + 8) + 40) && ![v4 count])
    {
      v6 = sub_100798AD4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v28 = v6;
        v29 = v5;
        v30 = *(*(*(a1 + 48) + 8) + 40);
        v31 = [*(a1 + 40) contact];
        v32 = [v31 identifier];
        v33 = [*(a1 + 40) identifier];
        *buf = 138412802;
        v53 = v30;
        v5 = v29;
        v6 = v28;
        v54 = 2112;
        v55 = v32;
        v56 = 2112;
        v57 = v33;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "There is an error : %@ while searching for contacts. The contact identifier: %@ and handle identifier: %@", buf, 0x20u);
      }

      goto LABEL_41;
    }

    v6 = objc_alloc_init(NSMutableArray);
    if ([v5 count] > 4)
    {
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v17 = [v5 firstObject];

        if (v17)
        {
          v18 = [v5 firstObject];
          [v6 addObject:v18];
        }
      }

      v8 = [v3 orderedSearchResults:v5 itemsToFrame:v6];
      v19 = sub_100798AD4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Framing search results: %@", buf, 0xCu);
      }

      v35 = v5;
      v36 = v6;

      v20 = sub_100021DB0(v8, &stru_101623728);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        v11 = 0;
        v23 = *v43;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v42 + 1) + 8 * i) _displayMapRegion];
            v26 = v25;
            if (v11)
            {
              v27 = GEOMapRegionUnion();

              v11 = v27;
            }

            else
            {
              v11 = v25;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v22);
      }

      else
      {
        v11 = 0;
      }

      v5 = v35;
    }

    else
    {
      v7 = sub_100798AD4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Framing all search results", buf, 2u);
      }

      v8 = sub_100021DB0(v5, &stru_101623708);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (!v9)
      {
        v11 = 0;
LABEL_40:

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1005EFB18;
        block[3] = &unk_101656A00;
        v38 = v5;
        v39 = *(a1 + 40);
        v40 = v11;
        v41 = v3;
        v34 = v11;
        dispatch_async(&_dispatch_main_q, block);

LABEL_41:
        goto LABEL_42;
      }

      v10 = v9;
      v36 = v6;
      v11 = 0;
      v12 = *v47;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v46 + 1) + 8 * j) _displayMapRegion];
          v15 = v14;
          if (v11)
          {
            v16 = GEOMapRegionUnion();

            v11 = v16;
          }

          else
          {
            v11 = v14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v10);
    }

    v6 = v36;
    goto LABEL_40;
  }

LABEL_42:
}

void sub_1005EFB18(uint64_t a1)
{
  v2 = sub_100798AD4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SearchResuls: %@, ACPerson: %@", &v6, 0x16u);
  }

  v5 = [SearchInfo searchInfoWithResults:*(a1 + 32) boundingMapRegion:*(a1 + 48) autocompleterPerson:*(a1 + 40)];
  [v5 setSelectedIndex:0];
  [*(a1 + 56) _searchReceivedResults:v5];
}

void sub_1005EFC10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = sub_100798AD4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v29 = 138412546;
      v30 = v8;
      v31 = 2112;
      *v32 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to geocode address %@, error: %@", &v29, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
    [*(a1 + 40) _handleGeocoderError:v6];
  }

  else
  {
    v9 = [v5 firstObject];
    v10 = [*(a1 + 48) title];
    [v9 setName:v10];

    v11 = [[SearchResult alloc] initWithMapItem:v9];
    if (v11)
    {
      v12 = [*(a1 + 56) label];
      v13 = [v12 isEqual:CNLabelHome];

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v17 = [*(a1 + 56) label];
        v18 = [v17 isEqual:CNLabelWork];

        if (v18)
        {
          v14 = 2;
        }

        else
        {
          v19 = [*(a1 + 56) label];
          v20 = [v19 isEqual:CNLabelSchool];

          if (v20)
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }
        }
      }

      [(SearchResult *)v11 setLocationType:v14];
      [(SearchResult *)v11 setAutocompletePerson:*(a1 + 48)];
      v21 = *(a1 + 48);
      v22 = [(SearchResult *)v11 mapItem];
      v23 = [(SearchResult *)v11 locationType];
      v24 = [*(a1 + 56) identifier];
      v15 = [v21 contactPrioritizingWithAddressFor:v22 kind:v23 cnLabelValueIdentifier:v24 followedBy:*(*(*(a1 + 88) + 8) + 40)];

      v25 = sub_100798AD4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v15 identifier];
        v27 = *(a1 + 32);
        v29 = 138413058;
        v30 = v11;
        v31 = 1024;
        *v32 = v14;
        *&v32[4] = 2112;
        *&v32[6] = v26;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "SearchResult:%@ created with type:%u ContactIdentifier:%@ address:%@", &v29, 0x26u);
      }

      v28 = [AddressBookAddress singleAddressForContact:v15];
      [(SearchResult *)v11 setAddress:v28];

      [*(a1 + 64) addObject:v11];
    }

    else
    {
      v15 = sub_100798AD4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v9 name];
        v29 = 138412290;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create search result for mapItem: %@", &v29, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_1005F0230(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100798AD4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) handle];
      v6 = [v5 handle];
      v7 = [v6 handleIdentifier];
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got fresh location for handle: %@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) handle];
    [v8 setLocation:v3];

    [v3 latLng];
    v10 = v9;
    [v3 latLng];
    v12 = v11;
    v13 = +[MKMapService sharedService];
    v14 = [v13 ticketForReverseGeocodeCoordinate:*(a1 + 56) traits:{v10, v12}];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1005F05E8;
    v28[3] = &unk_101623650;
    v27 = *(a1 + 32);
    v15 = v27.i64[0];
    v29 = vextq_s8(v27, v27, 8uLL);
    v32 = v10;
    v33 = v12;
    v30 = *(a1 + 48);
    v31 = *(a1 + 56);
    v34 = *(a1 + 64);
    [v14 submitWithHandler:v28 networkActivity:0];

LABEL_5:
    goto LABEL_10;
  }

  v16 = [*(a1 + 32) contact];
  v17 = [v16 postalAddresses];
  v18 = [v17 count];

  v19 = sub_100798AD4();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(a1 + 32) handle];
      v24 = [v23 handle];
      v25 = [v24 handleIdentifier];
      *buf = 138412290;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get fresh location for handle: %@", buf, 0xCu);
    }

    v35 = NSLocalizedDescriptionKey;
    v36 = @"Unable to get fresh location.";
    v14 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v26 = [NSError errorWithDomain:@"SearchFindMy" code:0 userInfo:v14];
    [*(a1 + 40) _searchFailedWithError:v26];

    goto LABEL_5;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = [*(a1 + 32) contact];
    v22 = [v21 identifier];
    *buf = 138412290;
    v38 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Couldn't get fresh location but showing the contact card for: %@", buf, 0xCu);
  }

  [*(a1 + 40) _searchForContactAddressedForAutocompletePerson:*(a1 + 32) searchResults:*(a1 + 48) traits:*(a1 + 56) source:*(a1 + 64)];
LABEL_10:
}

void sub_1005F05E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = sub_100798AD4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Fresh location ReverseGeocodeAction resolveMapItem: %@", &v17, 0xCu);
    }

    [*(a1 + 32) _handleGeocoderError:v6];
  }

  else
  {
    v8 = [v5 firstObject];
    v9 = [*(a1 + 40) title];
    [v8 setName:v9];

    v10 = [[SearchResult alloc] initWithMapItem:v8];
    v11 = v10;
    if (v10)
    {
      [(SearchResult *)v10 setLocationType:4];
      [(SearchResult *)v11 setCoordinate:1 preserveLocationInfo:*(a1 + 64), *(a1 + 72)];
      [(SearchResult *)v11 setAutocompletePerson:*(a1 + 40)];
      v12 = [*(a1 + 40) updatedContactFrom:v8];
      v13 = [AddressBookAddress singleAddressForContact:v12];
      [(SearchResult *)v11 setAddress:v13];

      v14 = sub_100798AD4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v12 identifier];
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "SearchResult with shared location created. ContactIdentifier:%@", &v17, 0xCu);
      }

      [*(a1 + 48) addObject:v11];
    }

    else
    {
      v12 = sub_100798AD4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = [v8 name];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create search result for mapItem: %@", &v17, 0xCu);
      }
    }

    [*(a1 + 32) _searchForContactAddressedForAutocompletePerson:*(a1 + 40) searchResults:*(a1 + 48) traits:*(a1 + 56) source:*(a1 + 80)];
  }
}

void sub_1005F151C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1005F1548(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1005F15E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = sub_100067540();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) searchQuery];
      v26 = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Search received for Query: %@ with Error: %@", &v26, 0x16u);
    }

    v11 = [SearchInfo searchInfoWithTicket:*(a1 + 32) searchType:*(a1 + 64)];
    v12 = [*(a1 + 32) traits];
    v13 = [v12 mapRegion];
    [v11 setRequestedMapRegion:v13];

    v14 = [*(a1 + 32) traits];
    [v11 setSearchAlongRoute:{objc_msgSend(v14, "navigating")}];

    if ([v7 code] == -2 && (objc_msgSend(v7, "domain"), v15 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, (v17 & 1) != 0))
    {
      v18 = 1;
    }

    else
    {
      if (*(a1 + 68) == 1)
      {
        if ([*(a1 + 40) length] || (objc_msgSend(*(a1 + 32), "searchQuery"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v20))
        {
          v21 = [SearchHistoryRecorderFactory historyRecorderWithTicket:*(a1 + 32) ticketError:v7 searchInfo:v11 auxiliaryControlsOrigin:*(a1 + 56) refinedMapItems:v6 completionTitle:*(a1 + 40)];
          [v21 recordItemInHistory];
        }

        else
        {
          v21 = sub_100067540();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Since the search query is empty, this might not get saved in recents history. Error %@", &v26, 0xCu);
          }
        }
      }

      v18 = 0;
    }

    if ([v7 code] == -8)
    {
      v22 = [v11 publisher];
      if (v22 || ([v11 placeCollections], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "count")))
      {

        goto LABEL_23;
      }

      v23 = [v11 canRedoSearch];

      if (v23)
      {
        goto LABEL_23;
      }
    }

    if (v7)
    {
      v24 = [*(a1 + 32) searchResultType];
      v25 = v24;
      if (v18)
      {
        [WeakRetained _searchCanceled];
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else if (!v24)
      {
        [WeakRetained _searchFailedWithError:v7 ticket:*(a1 + 32) enableStructuredRAPAffordance:{objc_msgSend(WeakRetained, "_shouldEnableRAPForNoResultsWithError:", v7)}];
        goto LABEL_24;
      }
    }

LABEL_23:
    [WeakRetained _searchReceivedResults:v11];
LABEL_24:
  }
}

void sub_1005F1AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005F1B14(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1005F1BB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    if ([v4 code] == -2 && (objc_msgSend(v11, "domain"), v5 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
    {
      [*(a1 + 32) _searchCanceled];
    }

    else
    {
      [*(a1 + 32) _searchFailedWithError:v11];
    }

    [*(a1 + 32) reset];
  }

  else
  {
    v8 = [SearchInfo searchInfoWithTicket:*(a1 + 40) searchType:*(a1 + 48)];
    [v8 setSelectedIndex:*(*(a1 + 32) + 8)];
    v9 = [*(a1 + 40) traits];
    v10 = [v9 mapRegion];
    [v8 setRequestedMapRegion:v10];

    [*(a1 + 32) _searchReceivedResults:v8];
  }
}

void sub_1005F1EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1005F1EE8(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1005F1F84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v12)
    {
      if ([v12 code] == -2 && (objc_msgSend(v12, "domain"), v6 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
      {
        [WeakRetained _searchCanceled];
      }

      else
      {
        [WeakRetained _searchFailedWithError:v12 ticket:*(a1 + 32) enableStructuredRAPAffordance:{objc_msgSend(WeakRetained, "_shouldEnableRAPForNoResultsWithError:", v12)}];
      }

      [WeakRetained reset];
    }

    else
    {
      v9 = [SearchInfo searchInfoWithTicket:*(a1 + 32) searchType:*(a1 + 48)];
      v10 = [*(a1 + 32) traits];
      v11 = [v10 mapRegion];
      [v9 setRequestedMapRegion:v11];

      [WeakRetained _searchReceivedResults:v9];
    }
  }
}

void sub_1005F2A60(uint64_t a1)
{
  v2 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:100 sourceType:1];
  v3 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:1 sourceType:7, v2];
  v8[1] = v3;
  v4 = [PersonalizedItemPriorityFunctionEntry defaultEntryWithPriority:10];
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];

  v6 = [objc_alloc(*(a1 + 32)) initWithEntries:v5];
  v7 = qword_10195CC28;
  qword_10195CC28 = v6;
}

BOOL sub_1005F2B68(id a1, PersonalizedAutocompleteItem *a2)
{
  v2 = a2;
  v3 = [(PersonalizedAutocompleteItem *)v2 autocompleteObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PersonalizedAutocompleteItem *)v2 autocompleteObject];
    v6 = [v5 clientResolved];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_1005F2BFC(id a1, PersonalizedAutocompleteItem *a2)
{
  v2 = a2;
  v3 = [(PersonalizedAutocompleteItem *)v2 autocompleteObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PersonalizedAutocompleteItem *)v2 autocompleteObject];
    v6 = [v5 directionIntent];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

DirectionsWaypoint *__cdecl sub_1005F2F58(id a1, GEOComposedWaypoint *a2, unint64_t a3)
{
  v3 = a2;
  v4 = objc_alloc_init(DirectionsWaypoint);
  [(DirectionsWaypoint *)v4 updateFromGEOComposedWaypoint:v3];

  return v4;
}

void sub_1005F5D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005F5D4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained fullGuidanceSign];
    [v3 showJunctionViewAnimated:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_1005F79F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005F7A1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000811E8();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  if (!v8)
  {
    v13 = @"<nil>";
    goto LABEL_10;
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

      goto LABEL_8;
    }
  }

  v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
  v14 = v13;
  v15 = [v6 userInterfaceStyle];
  if (v15 >= 3)
  {
    v16 = [NSString stringWithFormat:@"<Unknown %ld>", v15];
  }

  else
  {
    v16 = *(&off_101623A70 + v15);
  }

  v17 = v16;
  v18 = [v5 traitCollection];
  v19 = [v18 userInterfaceStyle];
  if (v19 >= 3)
  {
    v20 = [NSString stringWithFormat:@"<Unknown %ld>", v19];
  }

  else
  {
    v20 = *(&off_101623A70 + v19);
  }

  *buf = 138543874;
  v22 = v14;
  v23 = 2112;
  v24 = v17;
  v25 = 2112;
  v26 = v20;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] User interface style changed from %@ -> %@", buf, 0x20u);

LABEL_17:
}

id sub_1005F8714()
{
  if (qword_10195CC48 != -1)
  {
    dispatch_once(&qword_10195CC48, &stru_101623AD0);
  }

  v1 = qword_10195CC40;

  return v1;
}

void sub_1005F8768(uint64_t a1)
{
  v2 = sub_1005F8714();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Swapping video", v11, 2u);
  }

  v3 = [NSDataAsset alloc];
  v4 = [*(a1 + 32) videoNameForCurrentState];
  v5 = [v3 initWithName:v4];

  v6 = [v5 data];
  v12[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v12[1] = AVAssetReferenceRestrictionsKey;
  v13[0] = &__kCFBooleanFalse;
  v13[1] = &off_1016E63F8;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [AVAsset assetWithData:v6 contentType:AVFileTypeQuickTimeMovie options:v7];

  v9 = [AVPlayerItem playerItemWithAsset:v8];
  v10 = [*(a1 + 32) playerView];
  [v10 replaceCurrentItemWithPlayerItem:v9 preserveCurrentTimestamp:*(a1 + 40)];
}

void sub_1005F8920(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningAnimationView");
  v2 = qword_10195CC40;
  qword_10195CC40 = v1;
}

void sub_1005FBB74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1005FBB90(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((v2 & 4) != 0)
    {
      [v4 setBackgroundColorMode:1];
      [v4 setCornerRadius:5.0];
      [v4 setBackgroundInsets:{0.0, 10.0, 0.0, 10.0}];
    }

    else
    {
      [v4 setBackgroundColorMode:0];
      v6 = +[UIColor clearColor];
      [v4 setBackgroundColor:v6];
    }
  }

  return v4;
}

void sub_1005FBFC4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) removals];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) object];
        [*(a1 + 40) sendSubviewToBack:v7];
        [v7 setAlpha:0.0];
        [v7 setHidden:1];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1005FC0F0(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) removals];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v19 + 1) + 8 * i) object];
        [*(a1 + 40) _maps_removeArrangedSubview:v7];
        [v7 setHidden:0];
        [v7 setAlpha:1.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(a1 + 32) insertions];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * j);
        v14 = [v13 object];
        [v14 setHidden:1];
        [v14 setAlpha:0.0];
        [*(a1 + 40) insertArrangedSubview:v14 atIndex:{objc_msgSend(v13, "index")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }
}

void sub_1005FC2F4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) insertions];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) object];
        [v6 setHidden:0];
        [v6 setAlpha:1.0];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

NSNumber *__cdecl sub_1005FC658(id a1, NSNumber *a2, unint64_t a3)
{
  v3 = a2;
  [(NSNumber *)v3 cgFloatValue];
  if (vabdd_f64(v4, UISheetPresentationControllerDetentInactive) <= 2.22044605e-16)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void sub_1005FE2BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1005FE2D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((v2 & 4) != 0)
    {
      [v4 setBackgroundColorMode:1];
      [v4 setCornerRadius:5.0];
      [v4 setBackgroundInsets:{0.0, 10.0, 0.0, 10.0}];
    }

    else
    {
      [v4 setBackgroundColorMode:0];
      v6 = +[UIColor clearColor];
      [v4 setBackgroundColor:v6];
    }
  }

  return v4;
}

uint64_t sub_1005FEBE4(uint64_t a1)
{
  if (*(a1 + 48) == 1 && +[UIView areAnimationsEnabled])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:*(a1 + 40)];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1005FF144(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"__internal__keyColorOverride"];

  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2 == 1)
      {
        v3 = +[UIColor systemDarkRedColor];
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v2 != 2)
    {
LABEL_11:
      v3 = +[UIColor systemDarkBlueColor];
      goto LABEL_19;
    }

    v3 = +[UIColor systemDarkGreenColor];
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        +[UIColor systemDarkOrangeColor];
      }

      else
      {
        +[UIColor systemDarkYellowColor];
      }
      v3 = ;
      goto LABEL_19;
    }

    switch(v2)
    {
      case 6:
        v3 = +[UIColor systemDarkTealColor];
        break;
      case 7:
        v3 = +[UIColor systemDarkPinkColor];
        break;
      case 8:
        v3 = +[UIColor darkGrayColor];
        break;
      default:
        goto LABEL_11;
    }
  }

LABEL_19:
  v4 = qword_10195CC70;
  qword_10195CC70 = v3;
}

id sub_1005FF458(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1;
  v12 = objc_alloc_init(NSMutableDictionary);
  v30 = &a10;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = v11;
  v13 = [v11 componentsSeparatedByString:{@", "}];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        if ((v17 & 1) == 0)
        {
          v22 = v30++;
          a2 = *v22;
        }

        v23 = [NSNumber numberWithDouble:a2];
        [v12 setObject:v23 forKeyedSubscript:v21];

        v17 = 0;
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v17 = 0;
    }

    while (v15);
  }

  return v12;
}

id sub_1005FF7D0()
{
  if (qword_10195CC88 != -1)
  {
    dispatch_once(&qword_10195CC88, &stru_101623C80);
  }

  v1 = qword_10195CC80;

  return v1;
}

void sub_1005FF824(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionStateManager");
  v2 = qword_10195CC80;
  qword_10195CC80 = v1;
}

NSString *__cdecl sub_1005FFAA0(id a1, PedestrianARSessionMonitor *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(PedestrianARSessionMonitor *)v3 shouldShowPedestrianAR];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  v6 = v5;
  v7 = [(PedestrianARSessionMonitor *)v3 debugDescription];

  v8 = [NSString stringWithFormat:@"allowing AR: %@ %@\n", v6, v7];

  return v8;
}

int64_t sub_1005FFB4C(id a1, PedestrianARSessionMonitor *a2, PedestrianARSessionMonitor *a3)
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  v8 = [v5 compare:v7];

  return v8;
}

PedestrianARSessionArrivalStepAvailabilityMonitor *sub_100600A78(uint64_t a1)
{
  v2 = [PedestrianARSessionArrivalStepAvailabilityMonitor alloc];
  v3 = *(a1 + 32);
  v4 = [v3 platformController];
  v5 = +[MNNavigationService sharedService];
  v6 = +[MKLocationManager sharedLocationManager];
  v7 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)v2 initWithObserver:v3 platformController:v4 navigationService:v5 locationManager:v6];

  return v7;
}

PedestrianARSessionCarPlayConnectionMonitor *sub_100600B30(uint64_t a1)
{
  v1 = [[PedestrianARSessionCarPlayConnectionMonitor alloc] initWithObserver:*(a1 + 32)];

  return v1;
}

PedestrianARSessionCoarseLocationMonitor *sub_100600B74(uint64_t a1)
{
  v2 = [PedestrianARSessionCoarseLocationMonitor alloc];
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(MKLocationManager);
  v5 = [(PedestrianARSessionCoarseLocationMonitor *)v2 initWithObserver:v3 locationManager:v4];

  return v5;
}

PedestrianARSessionMapsSkyMonitor *sub_100600BEC(uint64_t a1)
{
  v1 = [[PedestrianARSessionMapsSkyMonitor alloc] initWithObserver:*(a1 + 32)];

  return v1;
}

PedestrianARSessionNetworkReachabilityMonitor *sub_100600C30(uint64_t a1)
{
  v1 = [[PedestrianARSessionNetworkReachabilityMonitor alloc] initWithObserver:*(a1 + 32)];

  return v1;
}

PedestrianARSessionOfflineMonitor *sub_100600C74(uint64_t a1)
{
  v1 = [[PedestrianARSessionOfflineMonitor alloc] initWithObserver:*(a1 + 32)];

  return v1;
}

PedestrianARSessionRouteDistanceMonitor *sub_100600CB8(uint64_t a1)
{
  v2 = [PedestrianARSessionRouteDistanceMonitor alloc];
  v3 = *(a1 + 32);
  v4 = [v3 platformController];
  v5 = +[MNNavigationService sharedService];
  v6 = +[MKLocationManager sharedLocationManager];
  v7 = [(PedestrianARSessionRouteDistanceMonitor *)v2 initWithObserver:v3 platformController:v4 navigationService:v5 locationManager:v6];

  return v7;
}

PedestrianARSessionRoutePlanningConfigurationMonitor *sub_100600D70(uint64_t a1)
{
  v2 = [PedestrianARSessionRoutePlanningConfigurationMonitor alloc];
  v3 = *(a1 + 32);
  v4 = [v3 platformController];
  v5 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)v2 initWithObserver:v3 platformController:v4];

  return v5;
}

PedestrianARSessionThermalStateMonitor *sub_100600DE8(uint64_t a1)
{
  v2 = [PedestrianARSessionThermalStateMonitor alloc];
  v3 = *(a1 + 32);
  v4 = +[MapsThermalPressureController sharedController];
  v5 = [(PedestrianARSessionThermalStateMonitor *)v2 initWithObserver:v3 thermalPressureController:v4];

  return v5;
}

PedestrianARSessionTileAvailabilityMonitor *sub_100600E64(uint64_t a1)
{
  v2 = [VLFTileObserver alloc];
  v3 = +[MKLocationManager sharedLocationManager];
  v4 = +[MNNavigationService sharedService];
  v5 = +[CarDisplayController sharedInstance];
  v6 = [(VLFTileObserver *)v2 initWithLocationManager:v3 navigationService:v4 carDisplayController:v5 purpose:3];

  v7 = [[PedestrianARSessionTileAvailabilityMonitor alloc] initWithObserver:*(a1 + 32) tileObserver:v6];

  return v7;
}

PedestrianARSessionTransportTypeMonitor *sub_100600F3C(uint64_t a1)
{
  v2 = [PedestrianARSessionTransportTypeMonitor alloc];
  v3 = *(a1 + 32);
  v4 = [v3 platformController];
  v5 = [(PedestrianARSessionTransportTypeMonitor *)v2 initWithObserver:v3 platformController:v4];

  return v5;
}

PedestrianARSessionSunsetSunriseMonitor *sub_100600FB4(uint64_t a1)
{
  v2 = [PedestrianARSessionSunsetSunriseMonitor alloc];
  v3 = *(a1 + 32);
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = +[SunsetSunriseCalculator sharedCalculator];
  v6 = [*(a1 + 32) platformController];
  v7 = [(PedestrianARSessionSunsetSunriseMonitor *)v2 initWithObserver:v3 locationManager:v4 sunsetSunriseCalculator:v5 platformController:v6 transportTypeSupportProvider:objc_opt_class()];

  return v7;
}

void sub_100602B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100602B60(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v4 = WeakRetained[12];
    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = *v20;
        do
        {
          v8 = 0;
          do
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v19 + 1) + 8 * v8);
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_100602DC4;
            v17[3] = &unk_101661340;
            objc_copyWeak(&v18, (a1 + 32));
            v17[4] = v9;
            v10 = [v14 addNavigationRowWithTitle:v9 action:v17];
            objc_destroyWeak(&v18);
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v11 = [v14 addIndeterminateProgressIndicator];
      v12 = +[GEOPlaceCardRequester sharedRequester];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100602EB8;
      v15[3] = &unk_101623CC8;
      objc_copyWeak(&v16, (a1 + 32));
      [v12 fetchAllCacheEntriesWithRequesterHandler:v15];

      objc_destroyWeak(&v16);
    }

    WeakRetained = v13;
  }
}

void sub_100602DC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained[12] objectForKey:*(a1 + 32)];
    v4 = [GEOMapItemStorage mapItemStorageForSerializedPlaceData:v3];
    v5 = [MUPlaceViewController alloc];
    v6 = [[MKMapItem alloc] initWithGeoMapItem:v4 isPlaceHolderPlace:0];
    v7 = [v5 initWithMapItem:v6];

    v8 = [v9 navigationController];
    [v8 pushViewController:v7 animated:1];

    WeakRetained = v9;
  }
}

void sub_100602EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100602F70;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100602F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = &__NSDictionary0__struct;
    }

    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 12, v3);
    [v4 rebuildSections];
    WeakRetained = v4;
  }
}

id sub_100603AF8()
{
  if (qword_10195CCA0 != -1)
  {
    dispatch_once(&qword_10195CCA0, &stru_101623CE8);
  }

  v1 = qword_10195CC98;

  return v1;
}

void sub_100603B4C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFCrowdsourcingPermissionContaineeViewController");
  v2 = qword_10195CC98;
  qword_10195CC98 = v1;
}

void sub_1006060C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100606140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100603AF8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Displaying more info from URL", &v5, 0xCu);
    }

    v3 = [WeakRetained delegate];
    v4 = GEOVisualLocalizationCrowdsourcingLearnMoreURL();
    [v3 viewController:WeakRetained openURL:v4];
  }
}

void sub_100606230(uint64_t a1, void *a2)
{
  v3 = a2;
  GEOConfigSetBOOL();
  [GEOAPPortal captureUserAction:76 target:75 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100603AF8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134349056;
      v10 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] User accepted VL crowdsourcing", &v9, 0xCu);
    }

    v6 = [v3 sender];
    [WeakRetained handleDismissAction:v6];

    v7 = [WeakRetained completion];

    if (v7)
    {
      v8 = [WeakRetained completion];
      v8[2](v8, 1);
    }
  }
}

void sub_100606384(uint64_t a1, void *a2)
{
  v3 = a2;
  GEOConfigSetBOOL();
  [GEOAPPortal captureUserAction:77 target:75 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100603AF8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134349056;
      v10 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] User declined VL crowdsourcing", &v9, 0xCu);
    }

    v6 = [v3 sender];
    [WeakRetained handleDismissAction:v6];

    v7 = [WeakRetained completion];

    if (v7)
    {
      v8 = [WeakRetained completion];
      v8[2](v8, 0);
    }
  }
}

uint64_t sub_100606E18(uint64_t result)
{
  *(*(result + 32) + 24) = 0;
  *(*(result + 32) + 25) = 0;
  *(*(result + 32) + 28) = 0;
  return result;
}

void sub_1006080B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_100608110(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100608160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 cancels])
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 title];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100608864;
  v10[3] = &unk_101623D10;
  v12 = *(a1 + 40);
  v13 = a3;
  v8 = v5;
  v11 = v8;
  v9 = [UIAlertAction actionWithTitle:v7 style:v6 handler:v10];

  [*(a1 + 32) addAction:v9];
  if (*(a1 + 49) == 1 && ([v8 cancels] & 1) == 0)
  {
    [*(a1 + 32) setPreferredAction:v9];
  }
}

uint64_t sub_100608294(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) count];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1006082D8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100608850;
  v2[3] = &unk_101661760;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

id sub_100608364()
{
  if (qword_10195CCB0 != -1)
  {
    dispatch_once(&qword_10195CCB0, &stru_101623DA8);
  }

  v1 = qword_10195CCA8;

  return v1;
}

void sub_1006083B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

uint64_t sub_100608404(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"LocationAuthorizationDismissedNotification" object:0];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10060847C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v5 = WeakRetained;

    v3 = CFRetain(v5[2]);
    CFAutorelease(v3);
    v4 = v5[2];
    v5[2] = 0;

    WeakRetained = v5;
  }
}

void sub_1006084EC(uint64_t a1)
{
  v3 = [*(a1 + 32) _mapkit_locationErrorSettingsURL];
  v2 = +[UIApplication sharedApplication];
  [v2 _maps_openURL:v3 options:0 completionHandler:0];

  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100608584(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_1006085D4(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_100608634(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return [UIView setAnimationsEnabled:1];
}

uint64_t sub_10060868C(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1006086DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained _maps_topMostPresentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t sub_100608760(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1006087B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained _maps_topMostPresentViewController:*(a1 + 40) animated:1 completion:0];
}

void sub_10060880C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "InterruptionManager");
  v2 = qword_10195CCA8;
  qword_10195CCA8 = v1;
}

id sub_100608864(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[6]);
  }

  v3 = a1[4];

  return [v3 fire];
}

uint64_t sub_100608AEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100609B4C(id a1, RAPSearchWhichOneQuestion *a2, RAPSearchResultCategoryQuestion *a3)
{
  v4 = a3;
  v5 = a2;
  [(RAPSearchResultCategoryQuestion *)v4 resetCachedMenuItems];
  v6 = [(RAPSearchWhichOneQuestion *)v5 selectedValue];

  selectedValue = v4->_selectedValue;
  v4->_selectedValue = v6;
}

void sub_10060A464(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 handlerType];
        v9 = *(a1 + 40);
        if (v8 == 1)
        {
          WeakRetained = objc_loadWeakRetained((v9 + 80));
          [WeakRetained collectionPickerNewCollection:*(a1 + 40)];

          goto LABEL_11;
        }

        [*(v9 + 88) applyToCollection:v7 completion:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = objc_loadWeakRetained((*(a1 + 40) + 80));
  [v2 collectionPickerClosed:*(a1 + 40)];
LABEL_11:
}

uint64_t sub_10060A5B4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setName:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10060A968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10060A990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [NSError GEOErrorWithCode:0 reason:@"User cancelled the action"];
    v2 = [WeakRetained[11] resultBlock];

    if (v2)
    {
      v3 = [WeakRetained[11] resultBlock];
      (v3)[2](v3, v1);
    }

    v4 = objc_loadWeakRetained(WeakRetained + 10);
    [v4 collectionPickerClosed:WeakRetained];

    [WeakRetained cleanControllers];
  }
}

void sub_10060B0E4(uint64_t a1)
{
  if ([*(a1 + 32) autocompleteChangeCounter] == *(a1 + 56))
  {
    if (MapsFeature_IsEnabled_PersonalizedAutocompleteRanker())
    {
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
      v4 = *(v2 + 168);
      v5 = [*(v2 + 56) _geoMIFAutocompleteRequest];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10060B268;
      v17[3] = &unk_101623EC8;
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v18 = v6;
      v19 = v7;
      v20 = *(a1 + 56);
      [v4 rankWithDedupedItems:v3 autocompleteRequest:v5 completionHandler:v17];

      v8 = v18;
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10060B3B4;
      block[3] = &unk_101623EA0;
      v11 = *(a1 + 32);
      v16 = *(a1 + 56);
      block[4] = v11;
      v14 = v9;
      v15 = v10;
      v12 = v10;
      v8 = v9;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_10060B268(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 sections];
  v7 = [v5 modelMetadata];
  v8 = *(a1 + 40);
  v9 = *(v8 + 208);
  *(v8 + 208) = v7;

  v10 = [v5 experimentMetadata];
  v11 = *(a1 + 40);
  v12 = *(v11 + 200);
  *(v11 + 200) = v10;

  v13 = *(a1 + 40);
  v14 = [v5 responseStatus];

  *(*(a1 + 40) + 192) = [v13 mifRankerResponseStatus:v14];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10060B494;
  v18[3] = &unk_101623EA0;
  v15 = *(a1 + 40);
  v21 = *(a1 + 48);
  v18[4] = v15;
  v19 = v4;
  v20 = v6;
  v16 = v6;
  v17 = v4;
  dispatch_async(&_dispatch_main_q, v18);
}

id sub_10060B3B4(uint64_t a1)
{
  result = [*(a1 + 32) autocompleteChangeCounter];
  if (result == *(a1 + 56))
  {
    [*(a1 + 32) processPersonalizedItemsDebug:*(a1 + 40)];
    objc_storeStrong((*(a1 + 32) + 112), *(a1 + 48));
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 16);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - did process new AC list. Query %@", &v5, 0xCu);
    }

    return [*(a1 + 32) _dataChanged];
  }

  return result;
}

id sub_10060B494(uint64_t a1)
{
  result = [*(a1 + 32) autocompleteChangeCounter];
  if (result == *(a1 + 56))
  {
    [*(a1 + 32) processPersonalizedItemsDebug:*(a1 + 40)];
    objc_storeStrong((*(a1 + 32) + 112), *(a1 + 48));
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v4[2];
      v7 = v4[25];
      v6 = v4[26];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - did process new AC list. Query %@. Experiement: %@, Model: %@", &v8, 0x20u);
    }

    return [*(a1 + 32) _dataChanged];
  }

  return result;
}

BOOL sub_10060BCF4(id a1, id a2, NSDictionary *a3)
{
  v3 = [a2 category];

  return v3 == 0;
}

id sub_10060E3B0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  [*(*(a1 + 32) + 48) setAlpha:0.0];
  [*(*(a1 + 32) + 40) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 32);

  return [v2 setAlpha:0.0];
}

void *sub_10060E43C(void *result)
{
  v2 = result[4];
  if (!*(v2 + 80))
  {
    v3 = result;
    [*(v2 + 16) removeFromSuperview];
    [*(v3[4] + 48) removeFromSuperview];
    [*(v3[4] + 40) removeFromSuperview];
    v4 = *(v3[4] + 32);

    return [v4 removeFromSuperview];
  }

  return result;
}

void sub_10060E4CC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addSubview:*(*(a1 + 32) + 16)];
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v16 = [*(*(a1 + 32) + 16) centerXAnchor];
  v15 = [*(*(a1 + 32) + 8) centerXAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v18[0] = v14;
  v2 = [*(*(a1 + 32) + 16) centerYAnchor];
  v3 = [*(*(a1 + 32) + 8) centerYAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];
  v18[1] = v4;
  v5 = [*(*(a1 + 32) + 16) heightAnchor];
  v6 = [*(*(a1 + 32) + 8) heightAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[2] = v7;
  v8 = [NSArray arrayWithObjects:v18 count:3];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = *(a1 + 32);
  if ((*(v9 + 64) & 1) == 0)
  {
    v10 = [*(v9 + 16) widthAnchor];
    v11 = [*(*(a1 + 32) + 8) widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    [NSLayoutConstraint activateConstraints:v13];
  }
}

id sub_10060E72C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:1.0];
  [*(*(a1 + 32) + 48) setAlpha:0.0];
  [*(*(a1 + 32) + 40) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 32);

  return [v2 setAlpha:0.0];
}

void *sub_10060E7B8(void *result)
{
  v2 = result[4];
  if (*(v2 + 80) == 1)
  {
    v3 = result;
    [*(v2 + 48) removeFromSuperview];
    [*(v3[4] + 40) removeFromSuperview];
    v4 = *(v3[4] + 32);

    return [v4 removeFromSuperview];
  }

  return result;
}

void sub_10060E838(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addSubview:*(*(a1 + 32) + 48)];
  [*(*(a1 + 32) + 8) addSubview:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 48) startAnimating];
  [*(*(a1 + 32) + 40) setAlpha:0.0];
  [*(*(a1 + 32) + 48) setAlpha:0.0];
  v16 = [*(*(a1 + 32) + 40) centerYAnchor];
  v15 = [*(*(a1 + 32) + 8) centerYAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v18[0] = v14;
  v2 = [*(*(a1 + 32) + 48) centerYAnchor];
  v3 = [*(*(a1 + 32) + 8) centerYAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];
  v18[1] = v4;
  v5 = [*(*(a1 + 32) + 48) trailingAnchor];
  v6 = [*(*(a1 + 32) + 40) leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-5.0];
  v18[2] = v7;
  v8 = [NSArray arrayWithObjects:v18 count:3];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = *(a1 + 32);
  if ((*(v9 + 64) & 1) == 0)
  {
    v10 = [*(v9 + 40) centerXAnchor];
    v11 = [*(*(a1 + 32) + 8) centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    [NSLayoutConstraint activateConstraints:v13];
  }
}

id sub_10060EAD0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  [*(*(a1 + 32) + 48) setAlpha:1.0];
  [*(*(a1 + 32) + 40) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 32);

  return [v2 setAlpha:0.0];
}

void *sub_10060EB5C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 80) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = result;
    [*(v1 + 16) removeFromSuperview];
    result = [*(v2[4] + 32) removeFromSuperview];
    if (*(v2[4] + 80) == 2)
    {
      result = MapsFeature_IsEnabled_ShelbyvilleSearch();
      if (result)
      {
        result = GEOConfigGetBOOL();
        if (result)
        {
          v3 = v2[4];

          return [v3 executeAction];
        }
      }
    }
  }

  return result;
}

void sub_10060EC08(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addSubview:*(*(a1 + 32) + 32)];
  [*(*(a1 + 32) + 32) setAlpha:0.0];
  v2 = [*(*(a1 + 32) + 32) centerXAnchor];
  v3 = [*(*(a1 + 32) + 8) centerXAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];
  v9[0] = v4;
  v5 = [*(*(a1 + 32) + 32) centerYAnchor];
  v6 = [*(*(a1 + 32) + 8) centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [NSLayoutConstraint activateConstraints:v8];
}

id sub_10060ED70(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  [*(*(a1 + 32) + 48) setAlpha:1.0];
  [*(*(a1 + 32) + 40) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 32);

  return [v2 setAlpha:1.0];
}

void *sub_10060EDFC(void *result)
{
  v2 = result[4];
  if (*(v2 + 80) == 4)
  {
    v3 = result;
    [*(v2 + 48) removeFromSuperview];
    [*(v3[4] + 40) removeFromSuperview];
    v4 = *(v3[4] + 16);

    return [v4 removeFromSuperview];
  }

  return result;
}

double *sub_10060EE7C(double *result)
{
  if (*(result + 48) == 1)
  {
    return [*(*(result + 4) + 56) setConstant:*(*(result + 4) + 88) + result[5]];
  }

  return result;
}

id sub_10060EEB4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

void sub_10060EEFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 48) == 1 && (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 72));
      [v5 localSearchViewContentSizeChanged];
    }
  }
}

UIColor *__cdecl sub_10060F564(id a1, UITraitCollection *a2)
{
  v2 = [(UITraitCollection *)a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == UIUserInterfaceStyleDark)
  {
    v3 = 1.0;
  }

  v4 = [UIColor colorWithWhite:v3 alpha:0.550000012];

  return v4;
}

void sub_100610010(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 coordinator];
    [v5 viewController:*(a1 + 40) selectParkedCar:v4 andPerformAction:objc_msgSend(*(a1 + 48) selectPOIOnMap:{"parkedCarAction"), 1}];
  }
}

UIFont *__cdecl sub_1006100BC(id a1)
{
  v1 = +[UIFont system15Bold];
  v2 = [UIFont _maps_cappedFont:v1 withMaxPoint:30.0];

  return v2;
}

void sub_100610660(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"Pause [Flyover]" value:@"localized string not found" table:0];
  v3 = qword_10195CCD8;
  qword_10195CCD8 = v2;

  v6 = +[NSBundle mainBundle];
  v4 = [v6 localizedStringForKey:@"Resume [Flyover]" value:@"localized string not found" table:0];
  v5 = qword_10195CCE0;
  qword_10195CCE0 = v4;
}

void sub_1006113B0(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"Pause [Flyover]" value:@"localized string not found" table:0];
  v3 = qword_10195CCB8;
  qword_10195CCB8 = v2;

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Start [Flyover]" value:@"localized string not found" table:0];
  v6 = qword_10195CCC0;
  qword_10195CCC0 = v5;

  v9 = +[NSBundle mainBundle];
  v7 = [v9 localizedStringForKey:@"Start City [Flyover]" value:@"localized string not found" table:0];
  v8 = qword_10195CCC8;
  qword_10195CCC8 = v7;
}

void sub_100611AD0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionLocationSignalEnvironmentMonitor");
  v2 = qword_10195CCF0;
  qword_10195CCF0 = v1;
}

id sub_100613E98(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];

  return v3;
}

void sub_100614730(uint64_t a1)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ContainerStyleManager containerStyleManagerWillChangeStyle", &v24, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained containerStyleManagerWillChangeStyle:*(*(a1 + 32) + 56)];

  v4 = sub_10004B334();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "ContainerStyleManager configureStyleLayout", &v24, 2u);
  }

  [*(a1 + 32) configureStyleLayout];
  v5 = sub_10004B334();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ContainerStyleManager containerStyleManagerConfigureLayoutForStyle", &v24, 2u);
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
  [v6 containerStyleManagerConfigureLayoutForStyle:*(*(a1 + 32) + 56)];

  v7 = sub_10004B334();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ContainerStyleManager layoutForStyle", &v24, 2u);
  }

  v8 = objc_loadWeakRetained((*(a1 + 32) + 64));
  v9 = [v8 currentViewController];

  v10 = objc_loadWeakRetained((*(a1 + 32) + 64));
  v11 = [v10 layoutForCurrentViewControllerWithStyle:*(*(a1 + 32) + 56)];

  if (!v11)
  {
    v12 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v13 = [v12 originalLayoutForViewController:v9];

    v14 = [v9 cardPresentationController];
    v15 = [v14 presentedModally];

    if (v15)
    {
      v11 = 5;
    }

    else
    {
      v11 = v13;
    }
  }

  v16 = [v9 cardPresentationController];
  v17 = [v16 usingSheetPresentation];

  if ((v17 & 1) == 0)
  {
    v18 = sub_10004B334();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "ContainerStyleManager wantsLayout", &v24, 2u);
    }

    v19 = [v9 cardPresentationController];
    [v19 wantsLayout:v11];
  }

  v20 = sub_10004B334();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "ContainerStyleManager containerStyleManagerDidChangeStyle", &v24, 2u);
  }

  v21 = objc_loadWeakRetained((*(a1 + 32) + 64));
  [v21 containerStyleManagerDidChangeStyle:*(*(a1 + 32) + 56)];

  v22 = sub_10004B334();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    v24 = 134217984;
    v25 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "ContainerStyleManager configureStyleLayout %lu end", &v24, 0xCu);
  }
}

void sub_10061586C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1006158B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061624C;
  v13[3] = &unk_1016619A8;
  objc_copyWeak(&v14, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Show Blank Placecard" geoConfigKey:MapsUIConfig_StubPlacecard[0] switchOnStateIfUnset:MapsUIConfig_StubPlacecard[1] changeHandler:{0, v13}];
  v5 = [v3 addSwitchRowWithTitle:@"Use Dynamic Placecard" geoConfigKey:GeoServicesConfig_PlaceCardUseDynamicLayout[0] switchOnStateIfUnset:GeoServicesConfig_PlaceCardUseDynamicLayout[1] changeHandler:{1, &stru_101624000}];
  v6 = [v3 addSwitchRowWithTitle:@"Log the expected Layout" geoConfigKey:{MapKitConfig_PlaceLayoutLogEnabled[0], MapKitConfig_PlaceLayoutLogEnabled[1]}];
  v7 = [v3 addButtonRowWithTitle:@"Clear Custom Layout" action:&stru_101624020];
  v8 = [v3 addSwitchRowWithTitle:@"Show Layout Debug Info" geoConfigKey:{MapKitConfig_PlaceLayoutDebugEnabled[0], MapKitConfig_PlaceLayoutDebugEnabled[1]}];
  v9 = [v3 addSwitchRowWithTitle:@"Show Brand Debug Action" defaultsKey:@"MKPlaceBrandDebugEnabled"];
  v10 = [v3 addSwitchRowWithTitle:@"Show Identifier" defaultsKey:@"GEOPlaceShowGEOIDKey" switchOnStateIfUnset:0 changeHandler:0];
  v11 = [v3 addSwitchRowWithTitle:@"Show PlaceID" defaultsKey:@"GEOPlaceShowPlaceIDKey" switchOnStateIfUnset:0 changeHandler:0];
  v12 = [v3 addNavigationRowWithTitle:@"Web Modules" viewControllerContent:&stru_101624040];
  objc_destroyWeak(&v14);
}

void sub_100615AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100616030;
  v14[3] = &unk_101661B98;
  objc_copyWeak(&v15, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Copy Full State for Handoff" action:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100616078;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Copy Compact State for Handoff" action:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006160C0;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addButtonRowWithTitle:@"Paste State from Handoff" action:v10];
  v7 = +[GEOPlatform sharedPlatform];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    v9 = [v3 addButtonRowWithTitle:@"Copy last applied Handoff/state restoration" action:&stru_1016240A0];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100615C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100615CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100615F20;
  v16[3] = &unk_101661B98;
  objc_copyWeak(&v17, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Copy Full State" action:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100615F64;
  v14[3] = &unk_101661B98;
  objc_copyWeak(&v15, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Paste Full State" action:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100615FA8;
  v12[3] = &unk_1016334B8;
  objc_copyWeak(&v13, (a1 + 32));
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100615FE0;
  v10 = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:@"Continuously Record" get:v12 set:&v7];
  [v6 setSubtitle:{@"Will stop when the app quits", v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
}

void sub_100615EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100615F20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _copyStateWithFidelity:0xFFFFFFFLL];
}

void sub_100615F64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pasteStateWithAssumedSourceFidelity:0xFFFFFFFLL];
}

id sub_100615FA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained recordsContinuously];

  return v2;
}

void sub_100615FE0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRecordsContinuously:a2];
}

void sub_100616030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _copyStateWithFidelity:268435439];
}

void sub_100616078(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _copyStateWithFidelity:268435407];
}

void sub_1006160C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pasteStateWithAssumedSourceFidelity:268435439];
}

void sub_100616108(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 objectForKey:@"lastUserActivityData"];
  v8 = [v2 bzip2UncompressedData];

  v3 = [[NSString alloc] initWithData:v8 encoding:4];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"dateLastUserActivity"];
  v6 = [NSString stringWithFormat:@"<%@> :\n%@", v5, v3];

  v7 = +[UIPasteboard generalPasteboard];
  [v7 setString:v6];
}

void sub_10061624C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100616C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100616C48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tipkitDismissHandler];
    v2[2]();

    WeakRetained = v3;
  }
}

void sub_100617164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v2 = [v1 shortcuts];
  [WeakRetained _updateHomeWorkFavorites:v2];
}

void sub_1006171DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionHomeWorkMonitor");
  v2 = qword_10195CD00;
  qword_10195CD00 = v1;
}

void sub_100617474(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) meCard];
  [WeakRetained _updateHomeWorkEntries:v2];
}

BOOL sub_10061927C(id a1, _TtC4Maps16MapsFavoriteItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(MapsFavoriteItem *)a2 favoriteItem:a3];
  v5 = [v4 favoriteType] == 3;

  return v5;
}

BOOL sub_1006192BC(id a1, _TtC4Maps16MapsFavoriteItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(MapsFavoriteItem *)a2 favoriteItem:a3];
  v5 = [v4 favoriteType] == 2;

  return v5;
}

void sub_10061A258(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setVisibleMapRect:?];
  if (*(a1 + 40))
  {
    v2 = 104;
  }

  else
  {
    v2 = 0;
  }

  [*(*(a1 + 32) + 32) setMapType:v2];
  v3 = +[MKPointOfInterestFilter filterExcludingAllCategories];
  [*(*(a1 + 32) + 32) setPointOfInterestFilter:v3];
}

void sub_10061AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10061AD40()
{
  if (qword_10195CD18 != -1)
  {
    dispatch_once(&qword_10195CD18, &stru_1016241D0);
  }

  v1 = qword_10195CD10;

  return v1;
}

void sub_10061AD94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained dismissAnimated:*(a1 + 40) completion:WeakRetained[7]];
    WeakRetained = v3;
  }
}

void sub_10061ADF4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsPopupMessageView");
  v2 = qword_10195CD10;
  qword_10195CD10 = v1;
}

void sub_10061B0FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_10061B128(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setAlpha:0.0];
    [v3[5] setActive:0];
    [a1[4] setActive:1];
    [a1[5] layoutIfNeeded];
    WeakRetained = v3;
  }
}

void sub_10061B1A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained removeFromSuperview];
    v3 = v5;
    v5[64] = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
      v3 = v5;
    }
  }
}

void sub_10061B650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10061B67C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setAlpha:1.0];
    [a1[4] setActive:0];
    [a1[5] setActive:1];
    [a1[6] layoutIfNeeded];
    WeakRetained = v3;
  }
}

void sub_10061B6F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 5, *(a1 + 32));
    [v3 resetTimerAnimated:*(a1 + 48)];
    WeakRetained = v3;
  }
}

id sub_10061C458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2 * (v6 != 5)];
  [v7 setShowsSeparators:v6 != 5];
  v8 = [v7 separatorConfiguration];
  v9 = [v8 copy];

  v10 = [*(a1 + 32) theme];
  v11 = [v10 dynamicHairlineColor];
  [v9 setColor:v11];

  [v7 setSeparatorConfiguration:v9];
  v12 = +[UIColor clearColor];
  [v7 setBackgroundColor:v12];

  v13 = [NSCollectionLayoutSection sectionWithListConfiguration:v7 layoutEnvironment:v4];

  if (v6 == 5)
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    top = 0.0;
    leading = 16.0;
    bottom = 0.0;
    trailing = 16.0;
  }

  [v13 setContentInsets:{top, leading, bottom, trailing}];

  return v13;
}

void sub_10061D0C4(uint64_t a1)
{
  *(*(a1 + 32) + 168) = *(a1 + 64);
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayoutAnimated:1];
}

id sub_10061F220()
{
  if (qword_10195CD58 != -1)
  {
    dispatch_once(&qword_10195CD58, &stru_101624270);
  }

  v1 = qword_10195CD50;

  return v1;
}

void sub_10061F274(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarMapWidgetMapBrowsingModeController");
  v2 = qword_10195CD50;
  qword_10195CD50 = v1;
}

void sub_10061F680(uint64_t a1)
{
  v2 = [*(a1 + 32) trackingController];
  [v2 setUseForcedTrackingMode:0];

  v3 = [*(a1 + 40) nextTopContext];
  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  if ((v2 & 1) == 0)
  {
    v5 = +[CarDisplayController sharedInstance];
    v4 = [v5 routeGeniusManager];
    [v4 deactivateForAllChromes];
  }
}

void sub_10061F988(uint64_t a1)
{
  v2 = [*(a1 + 32) trackingController];
  [v2 setUseForcedTrackingMode:1];

  v4 = [*(a1 + 32) carChromeViewController];
  v3 = [v4 defaultMapSettings];
  [v3 reload];
}

void sub_100621E7C(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setHidden:*(a1 + 40)];
  v2 = 20.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 16) setConstant:v2];
  v3 = [*(*(a1 + 32) + 40) superview];
  [v3 layoutIfNeeded];
}

void sub_100622898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006228BC(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006229C4;
  v5[3] = &unk_1016242C0;
  objc_copyWeak(v9, a1 + 6);
  v9[1] = a1[7];
  v4 = v3;
  v6 = v4;
  v7 = a1[4];
  v8 = a1[5];
  [NavigationSimulationPromptController promptIfNeededForSimulationForRoute:v4 navigationTracePlayback:0 continueWithOptions:v5];

  objc_destroyWeak(v9);
}

void sub_1006229C4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Navigation simulation popup was dismissed.", v21, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained sessionStack];
      v8 = [v7 valueForKey:@"class"];
      v9 = [v8 containsObject:objc_opt_class()];

      v10 = sub_100035E6C();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Aborting navigation session push as there is already one active", v21, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = [v3 sessionStack];
          LODWORD(v21[0]) = 138412290;
          *(v21 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Pushing navigation on top of %@", v21, 0xCu);
        }

        *(a2 + 48) = 1;
        *(a2 + 24) = *(a1 + 64);
        v13 = [RouteCollection alloc];
        v23 = *(a1 + 32);
        v14 = [NSArray arrayWithObjects:&v23 count:1];
        v11 = [(RouteCollection *)v13 initWithRoutes:v14 currentRouteIndex:0];

        v15 = [NavigationSessionBuilder alloc];
        v16 = *(a1 + 40);
        v17 = *(a2 + 16);
        v21[0] = *a2;
        v21[1] = v17;
        v21[2] = *(a2 + 32);
        v22 = *(a2 + 48);
        v18 = [(NavigationSessionBuilder *)v15 initWithRouteCollection:v11 navigationDetailsOptions:v21 mapServiceTraits:v16 sessionInitiator:1 isResumingMultipointRoute:0 tracePlaybackPath:0];
        v19 = [(NavigationSessionBuilder *)v18 build];
        [v3 pushSession:v19];
        v20 = *(a1 + 48);
        if (v20)
        {
          (*(v20 + 16))(v20, 0, 0);
        }
      }
    }
  }
}

void sub_100622EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100622ED8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"HasShownCustomNavModeAdvisoryKey"];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _continuePushNavigationWithRoute:*(a1 + 32) navigationMode:*(a1 + 56) completion:*(a1 + 40)];
    WeakRetained = v4;
  }
}

void sub_100623180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 5, *(a1 + 32));
    [v3 _updateLinkAndNotifyObservers:1];
    WeakRetained = v3;
  }
}

void sub_10062339C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1006233C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = sub_10006250C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get unpaired apps from garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100623508;
      v9[3] = &unk_101661A90;
      v10 = v5;
      v11 = WeakRetained;
      dispatch_async(&_dispatch_main_q, v9);
      v8 = v10;
    }
  }
}

id sub_100623508(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    [*(a1 + 40) setHasUnpairedVehicles:1];
    v3 = *(a1 + 40);

    return [v3 _updateLinkAndNotifyObservers:1];
  }

  return result;
}

void sub_100623618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10062363C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get virtual garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10062378C;
      v10[3] = &unk_101661A90;
      v10[4] = WeakRetained;
      v11 = v5;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

id sub_10062378C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(a1 + 32) _loadUnpairedVehicles];
  v2 = *(a1 + 32);

  return [v2 _updateLinkAndNotifyObservers:1];
}

void sub_100623B18(id a1)
{
  v1 = objc_alloc_init(UserProfileLinkGarageProvider);
  v2 = qword_10195CD60;
  qword_10195CD60 = v1;
}

void sub_100623FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

id sub_100624C3C()
{
  if (qword_10195CD88 != -1)
  {
    dispatch_once(&qword_10195CD88, &stru_101624370);
  }

  v1 = qword_10195CD80;

  return v1;
}

void sub_100624C90(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningServerEnvrionmentChangeRouteRefreshTask");
  v2 = qword_10195CD80;
  qword_10195CD80 = v1;
}

void sub_1006264F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[21];
  v5 = [v2 selectedTraceName];
  v4 = [*(a1 + 32) selectedTracePath];
  (*(v3 + 16))(v3, v5, v4);
}

void sub_100626574(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:0];
}

void sub_1006272E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10062730C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006273EC;
    v7[3] = &unk_1016610B8;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    v6.receiver = v5;
    v6.super_class = URLCollectionHandler;
    objc_msgSendSuper2(&v6, "createCollection:", v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1006273EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100627498;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100627878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100627894(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 count])
  {
    WeakRetained[112] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100627954;
    v5[3] = &unk_10164F4D0;
    v6 = v3;
    [WeakRetained rebuildContent:v5];
  }
}

void sub_1006285B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006285DC(uint64_t a1)
{
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "_uploadForm -> willStartSubmitting", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) startAnimating];
    v4 = [WeakRetained navigationController];
    v5 = [v4 navigationBar];
    [v5 setUserInteractionEnabled:0];

    v6 = *(a1 + 32);
    v7 = [WeakRetained navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setCustomView:v6];
  }
}

void sub_1006286C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_uploadForm -> didFinishSubmitting error: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) stopAnimating];
    v7 = [WeakRetained navigationController];
    v8 = [v7 navigationBar];
    [v8 setUserInteractionEnabled:1];

    v9 = [WeakRetained navigationItem];
    v10 = [v9 rightBarButtonItem];
    [v10 setCustomView:0];

    if (v4)
    {
      v11 = sub_100BD99D0();
      [WeakRetained presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      if (MapsFeature_IsEnabled_RAPSydney())
      {
        v12 = [UGCCommunityAcknowledgementViewController alloc];
        v13 = +[RAPAcknowledgementOptions defaultOptions];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1006289B4;
        v21[3] = &unk_101661B18;
        v21[4] = WeakRetained;
        v14 = [(UGCCommunityAcknowledgementViewController *)v12 initWithOptions:v13 completion:v21];

        v15 = [(UGCCommunityAcknowledgementViewController *)v14 navigationItem];
        [v15 setHidesBackButton:1];

        v16 = [WeakRetained navigationController];
        [v16 pushViewController:v14 animated:1];
      }

      else
      {
        v17 = [WeakRetained view];
        v14 = [v17 window];

        v18 = +[NSBundle mainBundle];
        v19 = [v18 localizedStringForKey:@"[RAP Web UI] Thanks for your report" value:@"localized string not found" table:0];

        [ActionValidationController presentDefaultValidationActionWithTitle:v19 inWindow:v14];
        v20 = objc_loadWeakRetained(WeakRetained + 24);
        [v20 routeStepDetailViewControllerDidSubmitReport:WeakRetained];
      }

      [RAPAnalyticsManager captureRAPSendActionFromReport:WeakRetained[17] forMuid:0];
    }
  }
}

id sub_1006289B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  [WeakRetained routeStepDetailViewControllerDidSubmitReport:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 136);

  return [RAPAnalyticsManager captureRAPAcknowledgementDoneActionFromReport:v3 forMuid:0];
}

void sub_100628CF8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() & 1;
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = sub_100798874();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(*(a1 + 32) + 184);
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_updateAggregatedDataWithCompletion: will update aggregatedData from: %@ to %@", &v12, 0x16u);
      }

      objc_storeStrong((*(a1 + 32) + 184), a2);
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))();
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "_updateAggregatedDataWithCompletion webView gave us unsupported object as aggregatedData", &v12, 2u);
      }
    }
  }

  else
  {
    v7 = sub_100798874();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "_updateAggregatedDataWithCompletion got nil back from web module.", &v12, 2u);
    }
  }
}

void sub_100628FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100628FC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _submit];
    WeakRetained = v2;
  }
}

void sub_1006295C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006295E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = sub_100798874();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v14 = 134217984;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create a snapshot of step with stepID: %lu", &v14, 0xCu);
      }
    }

    else
    {
      v9 = +[NSUUID UUID];
      v10 = [v9 UUIDString];
      v11 = WeakRetained[26];
      WeakRetained[26] = v10;

      v12 = sub_100798874();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        v14 = 134217984;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Successfully created a snapshot of step with stepID: %lu. Will process to saving", &v14, 0xCu);
      }

      v7 = [v5 image];
      [WeakRetained saveImage:v7 withIdentifier:WeakRetained[26]];
    }

    dispatch_async(&_dispatch_main_q, *(a1 + 32));
  }
}

void sub_100629860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100629B40;
  v21[3] = &unk_101656A48;
  objc_copyWeak(&v23, (a1 + 40));
  v22 = *(a1 + 32);
  v3 = objc_retainBlock(v21);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 != 2)
  {
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = +[UIColor blackColor];
    goto LABEL_7;
  }

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = +[UIColor whiteColor];
LABEL_7:
  v7 = v6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100629C20;
  v19 = sub_100629C30;
  [WeakRetained[18] maneuverType];
  [WeakRetained[18] drivingSide];
  MKDefaultGuidanceManeuverMetrics();
  v8 = [WeakRetained traitCollection];
  [v8 displayScale];
  v9 = +[UIColor lightGrayColor];
  v20 = MKManeuverArrowImage();

  if (v16[5])
  {
    (v3[2])(v3);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100629C38;
    v10[3] = &unk_101638358;
    v11 = v7;
    v12 = WeakRetained;
    v14 = &v15;
    v13 = v3;
    dispatch_async(&_dispatch_main_q, v10);
  }

  _Block_object_dispose(&v15, 8);

  objc_destroyWeak(&v23);
LABEL_11:
}

void sub_100629B0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 192), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100629B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100629ED8;
  block[3] = &unk_10165DEA0;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

uint64_t sub_100629C20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100629C38(void *a1)
{
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
  }

  v3 = [[GuidanceManeuverView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  [SignStyle arrowMetricsForStyle:0];
  memcpy(buf, __src, 0x1F0uLL);
  [(GuidanceManeuverView *)v3 setArrowMetrics:buf];
  [SignStyle junctionArrowMetricsForStyle:0];
  memcpy(buf, v22, 0x1F0uLL);
  [(GuidanceManeuverView *)v3 setJunctionArrowMetrics:buf];
  [(GuidanceManeuverView *)v3 setFraming:1];
  [(GuidanceManeuverView *)v3 setArrowColor:a1[4]];
  v21 = [MKJunction alloc];
  v4 = [*(a1[5] + 144) geoStep];
  v20 = [v4 junctionType];
  v5 = [*(a1[5] + 144) geoStep];
  v6 = [v5 maneuverType];
  v7 = [*(a1[5] + 144) drivingSide];
  v8 = [*(a1[5] + 144) geoStep];
  v9 = [v8 junctionElements];
  v10 = [*(a1[5] + 144) geoStep];
  v11 = [v21 initWithType:v20 maneuver:v6 drivingSide:v7 elements:v9 count:{objc_msgSend(v10, "junctionElementsCount")}];

  v12 = [GuidanceManeuverArtwork alloc];
  v13 = [*(a1[5] + 144) maneuverType];
  v14 = [*(a1[5] + 144) drivingSide];
  v15 = [*(a1[5] + 144) artworkOverride];
  v16 = [(GuidanceManeuverArtwork *)v12 initWithManeuver:v13 junction:v11 drivingSide:v14 artworkDataSource:v15];
  [(GuidanceManeuverView *)v3 setManeuverArtwork:v16];

  v17 = [(GuidanceManeuverView *)v3 imageRepresentation];
  v18 = *(a1[7] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  (*(a1[6] + 16))();
}

void sub_100629ED8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 27, a1[4]);
    [v3 saveImage:a1[4] withIdentifier:@"RAPManeuverIconIdentifier"];
    dispatch_async(&_dispatch_main_q, a1[5]);
    WeakRetained = v3;
  }
}

void sub_10062A138(uint64_t a1)
{
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished saving maneuver icon, will leave dispatch_group.", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10062A1AC(uint64_t a1)
{
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished saving map snapshot, will leave dispatch_group.", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10062A220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100798874();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished saving both maneuver and map snapshots, will load request.", v3, 2u);
    }

    [WeakRetained loadWebView];
  }
}

void sub_10062C400(uint64_t a1)
{
  v2 = [*(a1 + 32) observedNavigationSession];
  v3 = [v2 guidanceType];

  if (v3 == 2)
  {
    v4 = *(a1 + 32);

    [v4 endNavigationAndReturnToRoutePlanning:1];
  }
}

void sub_10062C98C(uint64_t a1)
{
  v3 = [[SearchResult alloc] initWithMapItem:*(a1 + 32)];
  v2 = [*(a1 + 40) baseActionCoordinator];
  [v2 viewController:0 openSearchResult:v3];
}

void sub_10062CA00(uint64_t a1)
{
  v3 = [*(a1 + 32) baseActionCoordinator];
  v2 = [v3 mapSelectionManager];
  [v2 selectMapItem:*(a1 + 40) animated:1];
}

void sub_10062D468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10062D494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) groupIdentifier];
  v5 = v4;
  if (v4 && (v8[0] = _NSConcreteStackBlock, v8[1] = 3221225472, v8[2] = sub_10062D588, v8[3] = &unk_101650E00, v9 = v4, v6 = [v3 indexOfObjectPassingTest:v8], v9, v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentAlertForMissingSharedTrip:*(a1 + 32)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _openSharedTrip:*(a1 + 32)];
  }
}

id sub_10062D588(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 groupIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_10062DD6C(uint64_t a1)
{
  v2 = [*(a1 + 32) baseModeController];
  v3 = [*(a1 + 40) topContext];

  if (v3 != v2)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[AppCoordinator _openSharedTrip:]_block_invoke";
      v11 = 2080;
      v12 = "AppCoordinator.m";
      v13 = 1024;
      v14 = 1321;
      v15 = 2080;
      v16 = "chrome.topContext == baseModeController";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  v4 = [*(a1 + 32) baseActionCoordinator];
  v5 = [[HomeSharedTripsContentInjector alloc] initWithSharedTrip:*(a1 + 48)];
  [(HomeSharedTripsContentInjector *)v5 setBaseModeController:v2];
  [v4 setSidebarContentInjector:v5];
}

id sub_10062DF3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastObject];
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
    [v7 setSelectedTrip:*(a1 + 32)];
    v8 = v4;
  }

  else
  {
    v9 = [[IOSSharedTripsContext alloc] initWithInitialSelectedSharedTrip:*(a1 + 32)];
    v10 = [*(a1 + 40) baseActionCoordinator];
    [(IOSSharedTripsContext *)v9 setDelegate:v10];

    v11 = [v4 firstObject];
    v13[0] = v11;
    v13[1] = v9;
    v8 = [NSArray arrayWithObjects:v13 count:2];
  }

  return v8;
}

uint64_t sub_10062E864(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10062EC1C(uint64_t a1)
{
  v1 = [*(a1 + 32) navModeController];
  [v1 setShowFullScreenDirectionsList:1];
}

void sub_10062EDEC(uint64_t a1)
{
  v2 = [*(a1 + 32) platformController];
  [v2 popUntil:&stru_1016245B0];

  v3 = [*(a1 + 32) baseActionCoordinator];
  v4 = [v3 currentDirectionItem];

  if (v4)
  {
    v5 = [*(a1 + 32) baseActionCoordinator];
    [v5 viewControllerDoLastDirectionItem:0];
  }
}

BOOL sub_10062EEB4(id a1, MapsSession *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

id sub_10062F60C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MapsTestingDidEndGuidanceOrStepping" object:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = *(a1 + 32);

  return [v4 applyPendingActionIfNeeded];
}

void sub_10062FA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10062FA4C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  *a4 = *(a1 + 48);
  v7 = [v6 indexOfObject:*(a1 + 32)];
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = sub_100035E6C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v13 = 134349056;
        v14 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Nav mode controller is not present in the contexts stack; leaving coordinated change early", &v13, 0xCu);
      }

      v10 = v6;
    }

    else
    {
      v10 = [v6 _maps_subarrayToIndex:v7 - 1];
    }

    v11 = v10;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

void sub_10062FB74(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 postNotificationName:@"MapsTestingDidEndGuidanceOrStepping" object:WeakRetained];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 applyPendingActionIfNeeded];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 archiveMapsActivity];
}

BOOL sub_1006301D0(id a1, ChromeContext *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_10063021C(id a1, MapsSession *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

BOOL sub_100630274(id a1, MapsSession *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1006303C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006303DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained platformController];
    v5 = [v4 currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = objc_retainBlock(*(a1 + 32));
      v8 = v3[4];
      v3[4] = v7;

      v9 = [v3 platformController];
      [v9 clearSessions];
    }

    else
    {
      v9 = sub_100035E6C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 134349056;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] endNavigationWithCompletion: navigation was already ended elsewhere. aborting.", &v10, 0xCu);
      }
    }
  }
}

void sub_100630A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 152));
  _Unwind_Resume(a1);
}

void sub_100630AB4(uint64_t a1)
{
  v2 = sub_100035E6C();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  v4 = sub_100035E6C();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v6 = objc_loadWeakRetained((a1 + 48));
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_21;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v6 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v6, v15];

        goto LABEL_17;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v13, v6];
LABEL_17:

LABEL_21:
    *buf = 138543362;
    *&buf[4] = v11;
    v17 = "[%{public}@] Starting nav";
    v18 = v5;
    v19 = OS_LOG_TYPE_INFO;
    v20 = 12;
    goto LABEL_22;
  }

  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_23;
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_19;
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

      goto LABEL_9;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_19:
  v16 = *(a1 + 32);
  *buf = 138543618;
  *&buf[4] = v11;
  *&buf[12] = 2112;
  *&buf[14] = v16;
  v17 = "[%{public}@] Starting nav with route collection: %@";
  v18 = v5;
  v19 = OS_LOG_TYPE_DEBUG;
  v20 = 22;
LABEL_22:
  _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);

LABEL_23:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v22 = [WeakRetained platformController];
  v23 = [v22 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = [v25 configuration];
    v27 = [v26 isNavigationTracePlayback];

    if (v27)
    {
      v28 = [StartNavigationDetailsBuilder alloc];
      v29 = [v25 configuration];
      v30 = [v29 tracePlaybackPath];
      v31 = [(StartNavigationDetailsBuilder *)v28 initWithTracePlaybackPath:v30 routeCollection:*(a1 + 32)];

      v32 = [v25 configuration];
      -[StartNavigationDetailsBuilder setIsResumingMultipointRoute:](v31, "setIsResumingMultipointRoute:", [v32 isResumingMultipointRoute]);

      v33 = objc_loadWeakRetained((a1 + 48));
      v34 = [v33 baseActionCoordinator];
      v35 = [v34 newTraits];

      [(StartNavigationDetailsBuilder *)v31 setTraits:v35];
      v36 = [NavigationSessionConfiguration alloc];
      v37 = [(StartNavigationDetailsBuilder *)v31 buildNavigationDetails];
      v38 = [(NavigationSessionConfiguration *)v36 initWithStartNavigationDetails:v37 routeCollection:*(a1 + 32) traits:v35 isETAOnlyMode:0];

      v39 = sub_100035E6C();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
LABEL_47:

        v61 = [[NavigationSession alloc] initWithInitiator:1 configuration:v38];
        v62 = [*(a1 + 40) platformController];
        [v62 pushSession:v61];

        goto LABEL_48;
      }

      v40 = objc_loadWeakRetained((a1 + 48));
      if (!v40)
      {
        v45 = @"<nil>";
        goto LABEL_46;
      }

      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      if (objc_opt_respondsToSelector())
      {
        v43 = [v40 performSelector:"accessibilityIdentifier"];
        v44 = v43;
        if (v43 && ![v43 isEqualToString:v42])
        {
          v45 = [NSString stringWithFormat:@"%@<%p, %@>", v42, v40, v44];

          goto LABEL_35;
        }
      }

      v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_35:

LABEL_46:
      v59 = [v25 configuration];
      v60 = [v59 tracePlaybackPath];
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2112;
      *&buf[14] = v60;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}@] Configured navigation session for trace playback with path: %@", buf, 0x16u);

      goto LABEL_47;
    }

    v49 = sub_100035E6C();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Beginning navigation with route planning session %{public}@", buf, 0xCu);
    }

    v31 = [v25 navigationStateMonitoringTask];
    v50 = *(a1 + 32);
    v35 = objc_loadWeakRetained((a1 + 48));
    v38 = [v35 chromeViewController];
    v51 = [(NavigationSessionConfiguration *)v38 currentTraits];
    v52 = [v25 configuration];
    v53 = [v52 isResumingMultipointRoute];
    v54 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v54;
    v67 = *(a1 + 88);
    v68 = *(a1 + 104);
    [(StartNavigationDetailsBuilder *)v31 beginNavigationWithRouteCollection:v50 navigationDetailsOptions:buf mapServiceTraits:v51 sessionInitiator:1 isResumingMultipointRoute:v53];
  }

  else
  {
    v46 = sub_100035E6C();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Directly pushing navigation to route", buf, 2u);
    }

    v47 = [*(a1 + 32) currentRoute];
    v48 = [(NavigationSessionConfiguration *)v47 userProvidedName];
    if ([v48 length])
    {
      [(NavigationSessionConfiguration *)v47 userProvidedName];
    }

    else
    {
      [(NavigationSessionConfiguration *)v47 name];
    }
    v55 = ;

    v56 = objc_loadWeakRetained((a1 + 48));
    v57 = [v56 platformController];
    v58 = [*(a1 + 32) currentRoute];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10063196C;
    v63[3] = &unk_10162EC90;
    v64 = v47;
    v65 = v55;
    v35 = v55;
    v31 = v47;
    [v57 pushNavigationWithRoute:v58 navigationMode:0 shouldCheckNavSafetyAlert:0 completion:v63];

    v38 = v64;
  }

LABEL_48:
}

void sub_1006312B0(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] User canceled End Navigation prompt", buf, 0xCu);
  }
}

void sub_10063143C(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100035E6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User accepted End Navigation prompt", buf, 0xCu);
  }

  v11 = [a1[4] auxiliaryTasksManager];
  v12 = [v11 auxilaryTaskForClass:objc_opt_class()];

  v13 = sub_100035E6C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_loadWeakRetained(a1 + 6);
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_20;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_18;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_18:

LABEL_20:
    *buf = 138543362;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Ending current navigation session and waiting for navd confirmation before starting next navigation session", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1006317D0;
  v20[3] = &unk_101660648;
  objc_copyWeak(&v22, a1 + 6);
  v21 = a1[5];
  [v12 endNavigationWithCompletion:v20];

  objc_destroyWeak(&v22);
}

uint64_t sub_1006317D0(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] Navigation ended; starting new navigation session now", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10063196C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    v5 = a3;
    v6 = a2;
    v8 = +[UIApplication sharedMapsDelegate];
    v7 = [*(a1 + 32) storageID];
    [v8 interruptConvertToNavigableSavedRouteID:v7 routeName:*(a1 + 40) error:v6 directionsError:v5];
  }
}

void sub_100631B8C(uint64_t a1)
{
  v5 = [*(a1 + 32) baseActionCoordinator];
  v2 = [*(a1 + 32) baseActionCoordinator];
  v3 = [v2 containerViewController];
  v4 = [v3 currentViewController];
  [v5 viewControllerShowMyRecents:v4 includeRecentSearches:0];
}

void sub_100631E10(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) baseActionCoordinator];
    [v2 viewControllerShowOfflineMaps:0];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    [WeakRetained commitCoordinatedContextChange];
  }

  v4 = [*(a1 + 32) baseActionCoordinator];
  [v4 viewController:0 showOfflineMapRegionSelectorForRegion:*(a1 + 40) name:*(a1 + 48)];
}

void sub_100631F34(uint64_t a1)
{
  v1 = [*(a1 + 32) baseActionCoordinator];
  [v1 viewControllerShowExpiredOfflineMaps:0];
}

void sub_100632008(uint64_t a1)
{
  v1 = [*(a1 + 32) baseActionCoordinator];
  [v1 viewControllerShowOfflineMaps:0];
}

void sub_1006321AC(uint64_t a1)
{
  v5 = [*(a1 + 32) baseActionCoordinator];
  v2 = [*(a1 + 32) baseActionCoordinator];
  v3 = [v2 containerViewController];
  v4 = [v3 currentViewController];
  [v5 viewControllerShowVisitHistoryHome:v4];
}

void sub_10063233C(uint64_t a1)
{
  v1 = [*(a1 + 32) baseActionCoordinator];
  [v1 viewControllerPresentUserProfile:0];
}

void sub_100632520(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 showCuratedCollectionsList:*(a1 + 40) usingTitle:*(a1 + 48) usingCollectionIds:0 completion:0];
}

void sub_10063260C(uint64_t a1)
{
  v1 = [*(a1 + 32) baseActionCoordinator];
  [v1 viewControllerShowAllCollections];
}

void sub_100632704(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewControllerShowPublisherWithID:*(a1 + 40)];
}

void sub_10063280C(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 showGuidesHome:*(a1 + 40)];
}

void sub_100632918(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 showCuratedCollectionIdentifier:*(a1 + 40)];
}

void sub_100632A94(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 presentRelatedMapItems:*(a1 + 40) withTitle:*(a1 + 48) originalMapItem:*(a1 + 56) analyticsDelegate:*(a1 + 64)];
}

void sub_100632BA4(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 presentParentMapItem:*(a1 + 40)];
}

id sub_100632EAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setIsPresentingRouteCreation:0];
}

void sub_10063302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100633050(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v3 && [v3 count])
    {
      v5 = [GEORouteBuilder_PersistentData alloc];
      v6 = [v3 firstObject];
      v7 = [v5 initWithPersistentData:v6];

      v8 = [v7 buildRoute];
      [WeakRetained enterRouteCreationWithRoute:v8 originMapItem:a1[4] destinationMapItem:0 userInfo:0 completion:a1[5]];
    }

    else
    {
      v9 = [a1[4] _geoMapItem];
      v7 = [GEORouteBuilder_PlaceDataCuratedHike builderWithMapItem:v9];

      v10 = [v7 buildRoute];
      v11 = [WeakRetained chromeViewController];
      v8 = [v11 currentTraits];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100633264;
      v17[3] = &unk_10162EA38;
      v18 = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100633348;
      v14[3] = &unk_101624490;
      v14[4] = WeakRetained;
      v15 = a1[4];
      v16 = a1[5];
      v12 = v10;
      v13 = [v12 _maps_convertToNavigableRouteWithTraits:v8 errorHandler:v17 completionHandler:v14];
    }
  }
}

void sub_100633264(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 userProvidedName];
  v9 = [v8 length];
  v10 = *(a1 + 32);
  if (v9)
  {
    [v10 userProvidedName];
  }

  else
  {
    [v10 name];
  }
  v13 = ;

  v11 = +[UIApplication sharedMapsDelegate];
  v12 = [*(a1 + 32) storageID];
  [v11 interruptConvertToNavigableSavedRouteID:v12 routeName:v13 error:v7 directionsError:v6];
}

id sub_1006334D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 _maps_lastContextOfClass:objc_opt_class()];

  if (v5)
  {
    [(RoutePlanningContext *)v5 setDirectionItem:*(a1 + 32) allowToPromptEditing:*(a1 + 56) userInfo:*(a1 + 40)];
  }

  else
  {
    v5 = [[RoutePlanningContext alloc] initWithDirectionItem:*(a1 + 32) userInfo:*(a1 + 40)];
  }

  v6 = [*(a1 + 48) baseModeController];
  v9[0] = v6;
  v9[1] = v5;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

void sub_1006335DC(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 doDirectionItem:*(a1 + 40) allowToPromptEditing:*(a1 + 56) withUserInfo:*(a1 + 48)];
}

id sub_100633830(uint64_t a1)
{
  v2 = [*(a1 + 32) baseModeController];
  v3 = *(a1 + 40);
  v6[0] = v2;
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

void sub_1006338D0(uint64_t a1)
{
  v1 = [*(a1 + 32) baseActionCoordinator];
  [v1 toggleRoutePlanning];
}

void sub_100633ADC(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 editCollection:*(a1 + 40)];
}

void sub_100633BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) baseActionCoordinator];
  [v2 viewController:0 showCollection:*(a1 + 40)];
}

void sub_100634808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100634834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      v9 = WeakRetained;
      v4 = [WeakRetained baseActionCoordinator];
      v5 = [*(a1 + 32) destination];
      [v4 viewController:0 selectLastDirectionsDestinationComposedWaypoint:v5];

      v3 = v9;
      v6 = v9[4];
      if (v6)
      {
        v7 = [v6 copy];
        v8 = v9[4];
        v9[4] = 0;

        v7[2](v7);
        v3 = v9;
      }
    }
  }
}

void sub_100635288(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v8 = @"<nil>";
    goto LABEL_10;
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [v3 performSelector:"accessibilityIdentifier"];
    v7 = v6;
    if (v6 && ![v6 isEqualToString:v5])
    {
      v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

      goto LABEL_8;
    }
  }

  v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
  v9 = v8;
  v10 = [*(a1 + 40) sessionState];
  v11 = @"NotStarted";
  if (v10 == 1)
  {
    v11 = @"Running";
  }

  if (v10 == 2)
  {
    v12 = @"Suspended";
  }

  else
  {
    v12 = v11;
  }

  v13 = [*(a1 + 40) navigationType];
  *buf = 138543874;
  v24 = v9;
  v25 = 2114;
  v26 = v12;
  v27 = 2050;
  v28 = v13;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] Pushing nav mode now: %{public}@, %{public}ld", buf, 0x20u);

LABEL_16:
  v14 = [*(a1 + 32) baseActionCoordinator];
  [v14 closeSettingsIfNeeded];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [WeakRetained updateThemeForVisualEffectStyle:1];

  v16 = [*(a1 + 32) chromeViewController];
  v17 = [*(a1 + 32) navModeController];
  [v16 pushContext:v17 animated:1 completion:0];

  v18 = *(a1 + 32);
  v19 = [v18 navActionCoordinator];
  [v19 setAppCoordinator:v18];

  v20 = +[UIApplication sharedMapsDelegate];
  [v20 acquireSecureAppAssertionIfNeeded];

  v21 = [*(a1 + 32) _analyticsPipelineTransportModeForMSPTransportType:{objc_msgSend(*(a1 + 40), "currentTransportType")}];
  v22 = +[GEOAPSharedStateData sharedData];
  [v22 setMapUiShownActiveNavMode:v21];
}

void sub_100635548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [WeakRetained updateThemeForVisualEffectStyle:1];

  v3 = [*(a1 + 40) currentRouteCollection];
  v14 = [v3 currentRoute];

  if ([v14 transportType] == 1)
  {
    v4 = [*(a1 + 32) chromeViewController];
    v5 = [*(a1 + 32) transitNavigationContext];
    [v4 pushContext:v5 animated:1 completion:0];
  }

  else
  {
    v6 = [[StepModeController alloc] initWithRoute:v14 initialStepIndex:0 desiredUserTrackingMode:&off_1016E6578];
    v7 = *(a1 + 32);
    v8 = *(v7 + 120);
    *(v7 + 120) = v6;

    v9 = [*(a1 + 32) chromeViewController];
    v10 = [*(a1 + 32) stepModeController];
    [v9 pushContext:v10 animated:1 completion:0];

    v11 = *(a1 + 32);
    v4 = [v11 stepModeController];
    v5 = [v4 actionCoordinator];
    [v5 setAppCoordinator:v11];
  }

  v12 = [*(a1 + 32) _analyticsPipelineTransportModeForMSPTransportType:{objc_msgSend(*(a1 + 40), "currentTransportType")}];
  v13 = +[GEOAPSharedStateData sharedData];
  [v13 setMapUiShownActiveNavMode:v12];
}

void sub_100636EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100636EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) stopAnimating];
    if (a3)
    {
      v6 = sub_100BD99D0();
      [WeakRetained presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      v6 = +[RAPAcknowledgementOptions defaultOptions];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"[RAP] Button Title for the Thank You screen" value:@"localized string not found" table:0];
      [v6 setPrimaryButtonTitle:v8];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100637080;
      v12[3] = &unk_101661B18;
      v12[4] = WeakRetained;
      v9 = [[UGCCommunityAcknowledgementViewController alloc] initWithOptions:v6 completion:v12];
      v10 = [(UGCCommunityAcknowledgementViewController *)v9 navigationItem];
      [v10 setHidesBackButton:1];

      v11 = [WeakRetained navigationController];
      [v11 pushViewController:v9 animated:1];

      [RAPAnalyticsManager captureRAPSendActionFromReport:WeakRetained[2] forMuid:0];
    }
  }
}

id sub_100637080(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[2] previousFeedbackID];
  [v2 _setRAPRecordAsInReviewWithReportID:v3];

  v4 = *(a1 + 32);

  return [v4 _dismissAndOpenReportsHome];
}

void sub_100637284(id a1)
{
  v3 = +[UIApplication sharedMapsDelegate];
  v1 = [v3 appCoordinator];
  v2 = [v1 baseActionCoordinator];
  [v2 viewControllerShowReports:0 fromEntryPoint:713];
}

void sub_1006372FC(id a1)
{
  v3 = +[UIApplication sharedMapsDelegate];
  v1 = [v3 appCoordinator];
  v2 = [v1 baseActionCoordinator];
  [v2 viewControllerShowReports:0 fromEntryPoint:713];
}

void sub_100637D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100637D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained viewModel];
    v3 = [v2 button];
    [v4 _performButtonAction:{objc_msgSend(v3, "buttonAction")}];

    WeakRetained = v4;
  }
}

NSCollectionLayoutSection *__cdecl sub_100637DE8(id a1, int64_t a2, NSCollectionLayoutEnvironment *a3)
{
  v3 = a3;
  v4 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setItemSeparatorHandler:&stru_101624690];
  v6 = [NSCollectionLayoutSection sectionWithListConfiguration:v4 layoutEnvironment:v3];

  [v6 setContentInsets:{0.0, 16.0, 10.0, 16.0}];

  return v6;
}

UIListSeparatorConfiguration *__cdecl sub_100637EB4(id a1, NSIndexPath *a2, UIListSeparatorConfiguration *a3)
{
  v4 = a2;
  v5 = a3;
  [(UIListSeparatorConfiguration *)v5 setTopSeparatorVisibility:2];
  [(UIListSeparatorConfiguration *)v5 setBottomSeparatorVisibility:2];
  if ([(NSIndexPath *)v4 section]== 2 && ![(NSIndexPath *)v4 row])
  {
    [(UIListSeparatorConfiguration *)v5 setBottomSeparatorVisibility:1];
  }

  return v5;
}

void sub_100638508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10063852C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 firstObject];
    v5 = [WeakRetained viewModel];
    [v5 setRapRecord:v4];

    [WeakRetained _updateSummarySection];
  }
}

void sub_1006386F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100638714(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [v12 photo];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v12 photo];
      [v5 addPhoto:v6];

      v7 = *(a1 + 40);
      v8 = [v12 photo];
      v9 = [v8 photo];
      v10 = [v12 photo];
      v11 = [v10 _maps_diffableDataSourceIdentifier];
      [v7 addImage:v9 forIdentifier:v11];

      [v12 clearSelectedPhoto];
    }

    [WeakRetained _updateDoneButton];
  }
}

void sub_10063AD6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 rideOptionIndex];
  v7 = *(a1 + 32);
  v8 = [v5 actionSheetTitle];
  if (v8)
  {
    [v7 addObject:v8];
  }

  else
  {
    v9 = +[NSNull null];
    [v7 addObject:v9];
  }

  v10 = *(a1 + 40);
  v11 = [v5 actionSheetArtworks];
  v12 = [v11 firstObject];
  if (v12)
  {
    v13 = [v5 actionSheetArtworks];
    v14 = [v13 firstObject];
    [v10 addObject:v14];
  }

  else
  {
    v13 = +[NSNull null];
    [v10 addObject:v13];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10063AFF4;
  v19[3] = &unk_101624758;
  v15 = *(a1 + 48);
  v20 = *(a1 + 56);
  v24 = v6;
  v23 = *(a1 + 72);
  v21 = *(a1 + 64);
  v16 = v5;
  v22 = v16;
  v17 = objc_retainBlock(v19);
  [v15 addObject:v17];

  v18 = [v16 rideOptionIndex];
  if (v18 == [*(a1 + 56) selectedRideOptionIndex])
  {
    *(*(*(a1 + 80) + 8) + 24) = a3;
  }
}

void sub_10063AF78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = v5;
  if (*(*(*(a1 + 40) + 8) + 24) == a3)
  {
    [v5 _setChecked:1];
    v6 = v7;
  }

  [*(a1 + 32) addAction:v6];
}

void sub_10063AFF4(uint64_t a1)
{
  v9 = [*(a1 + 32) transitLineForRideOption:*(a1 + 64)];
  v2 = [*(a1 + 32) composedRoute];
  v3 = [v2 segments];
  v4 = [v3 indexOfObject:*(a1 + 32)];

  [*(a1 + 32) setSelectedRideOptionIndex:*(a1 + 64)];
  v5 = +[MNNavigationService sharedService];
  [v5 setRideIndex:*(a1 + 64) forSegmentIndex:v4];

  v6 = +[MKMapService sharedService];
  v7 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:targetID:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:targetID:", 0, *(a1 + 64), [v9 muid], 0.0);
  [v6 captureUserAction:1032 onTarget:637 eventValue:0 placeActionDetails:v7];

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 32), [*(a1 + 48) rideOptionIndex]);
  }
}

BOOL sub_10063B14C(id a1)
{
  v1 = +[MKMapService sharedService];
  [v1 captureUserAction:18 onTarget:637 eventValue:0];

  return 1;
}

void sub_10063BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10063BB10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_1007990B4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed Sundew call when attempting to fetch with error %@", &v16, 0xCu);
      }

      v9 = [Result resultWithError:v6];
      v10 = WeakRetained[11];
      WeakRetained[11] = v9;
    }

    else
    {
      v11 = [MUPlaceUserAttributionViewModel alloc];
      v12 = [v5 attributionName];
      v13 = [v11 initWithAttributionName:v12];
      v14 = [Result resultWithValue:v13];
      [WeakRetained setUserAttributionResult:v14];

      v15 = [WeakRetained photoGalleryViewController];
      [v15 reloadUserAttribution];
    }
  }
}

void sub_10063BDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10063BDF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10063BE18(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1007990B4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "No view model to return with error %@", &v4, 0xCu);
  }
}

void sub_10063E840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_10063EA90(uint64_t a1, void *a2, void *a3)
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

void sub_10063F14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10063F170(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mapItem];
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 32) hasSequenceNumber])
  {
    [*(a1 + 32) setSequenceNumber:{objc_msgSend(*(a1 + 32), "sequenceNumber") + 1}];
  }

  v8 = [*(a1 + 32) copy];
  [v8 clearKnownClientResolvedTypes];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _loadWaypointWithMapItem:v7 handler:*(a1 + 40) traits:v8 networkActivityHandler:*(a1 + 48)];
  }

  else if (v13)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _loadWaypointWithAddress:v13 handler:*(a1 + 40) traits:v8 networkActivityHandler:*(a1 + 48)];
  }

  else
  {
    v10 = *(a1 + 40);
    WeakRetained = GEOErrorDomain();
    v11 = [NSError errorWithDomain:WeakRetained code:-8 userInfo:0];
    v12 = [Result resultWithError:v11];
    (*(v10 + 16))(v10, v12);
  }
}

void sub_10063F42C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10063F450(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 mapItem];

  if (v3)
  {
    v4 = [*(a1 + 32) copy];
    [v4 clearKnownClientResolvedTypes];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [v8 mapItem];
    [v8 coordinate];
    [WeakRetained _loadWaypointWithCorrectedMapItem:v6 coordinate:*(a1 + 40) handler:v4 traits:*(a1 + 48) networkActivityHandler:?];
  }

  else
  {
    v7 = *(a1 + 40);
    v4 = GEOErrorDomain();
    WeakRetained = [NSError errorWithDomain:v4 code:-8 userInfo:0];
    v6 = [Result resultWithError:WeakRetained];
    (*(v7 + 16))(v7, v6);
  }
}

void sub_10063F630(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [[GEOLocation alloc] initWithCLLocation:v7];
    v4 = [[GEOComposedWaypoint alloc] initWithLocation:v3 isCurrentLocation:1];
    v5 = *(a1 + 32);
    [Result resultWithValue:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = GEOErrorDomain();
    v4 = [NSError errorWithDomain:v3 code:-8 userInfo:0];
    [Result resultWithError:v4];
  }
  v6 = ;
  (*(v5 + 16))(v5, v6);
}

void sub_1006401A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 144));
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1006401EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v8);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseWithHandler:*(a1 + 48) result:v3];
  }

  else
  {
    v6 = sub_100798F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Underlying task completed, but waypoint task no longer exists", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v8);
}

void sub_100640304(uint64_t a1, void *a2)
{
  v3 = a2;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v9);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = sub_100798F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Underlying task requested client resolution", buf, 0xCu);
    }

    [WeakRetained _resolveItem:v3 traits:*(a1 + 48) completion:*(a1 + 56) networkActivityHandler:*(a1 + 64)];
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Underlying task requested client resolution, but waypoint task no longer exists", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v9);
}

void sub_100640D0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[4] handleManualTipDismissForMarket:WeakRetained[7] tipType:3 sinkType:2];
    [v2 setShowFeature:0];
    [v2 _notifyObservers];
    WeakRetained = v2;
  }
}

void sub_100640E70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100640F3C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_100640F3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Got callback into MapsHome from TransitPassManager and modelData is nil.", buf, 2u);
      }

      v9 = v3[6];
      v3[6] = 0;

      v6 = v3;
      v7 = 0;
      goto LABEL_9;
    }

    objc_storeStrong(WeakRetained + 6, v4);
    v5 = v3[4];
    if (v5)
    {
      if ([v5 shouldDisplayTipInMarket:v3[7] tipType:objc_msgSend(*(a1 + 32) sinkType:{"suggestionType"), 2}])
      {
        v6 = v3;
        v7 = 1;
LABEL_9:
        [v6 setShowFeature:v7];
        [v3 _notifyObservers];
        goto LABEL_16;
      }

      v10 = sub_10003D020();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v11 = "User has either dismissed the tip recently or has seen the tip more than the set threshold in Maps home";
        v12 = &v15;
        v13 = v10;
        v14 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else
    {
      v10 = sub_10003D020();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 0;
        v11 = "dataStore is nil. Something has gone very wrong.";
        v12 = &v16;
        v13 = v10;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, v14, v11, v12, 2u);
      }
    }
  }

LABEL_16:
}

void sub_10064126C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setShowFeature:0];
    [v2 _notifyObservers];
    WeakRetained = v2;
  }
}

void sub_100641488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 3) stopLocationUpdates];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_100641968;
    v42 = sub_100641978;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = v3[8];
    v6 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100641980;
    v25[3] = &unk_1016248E0;
    v28 = &v34;
    v29 = &v30;
    v27 = &v38;
    v25[4] = v3;
    v7 = v4;
    v26 = v7;
    [v5 cachedPolygonForLocation:v6 withCompletion:v25];
    GEOConfigGetDouble();
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    dispatch_group_wait(v7, v9);
    if ((v35[3] & 1) == 0)
    {
      dispatch_group_enter(v7);
      v10 = sub_10003D020();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found no payment polygon mapItem in the cache. Calling the service.", buf, 2u);
      }

      v11 = v3[2];
      v12 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100641A74;
      v19[3] = &unk_101624908;
      objc_copyWeak(&v24, (a1 + 40));
      v22 = &v38;
      v20 = *(a1 + 32);
      v23 = &v30;
      v21 = v7;
      [v11 paymentPolygonsAtLocation:v12 completion:v19];

      objc_destroyWeak(&v24);
    }

    dispatch_group_wait(v7, v9);
    if (v39[5])
    {
      if (*(v31 + 24) != 1)
      {
LABEL_18:

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v38, 8);

        goto LABEL_19;
      }

      if (v3[5])
      {
        [v3 fetchTransitMessageFromPassManagerUsingPolygon:?];
        goto LABEL_18;
      }

      v18 = sub_10003D020();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/TransitPayFeatureDiscoverySource.m";
        v46 = 1024;
        v47 = 361;
        v48 = 2082;
        v49 = "[TransitPayFeatureDiscoverySource didUpdateLocation:]_block_invoke_2";
        v50 = 2082;
        v51 = "strongSelf->_passManager == nil";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. passManager is nil. Something has gone very wrong.", buf, 0x26u);
      }

      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/TransitPayFeatureDiscoverySource.m";
        v46 = 1024;
        v47 = 361;
        v48 = 2082;
        v49 = "[TransitPayFeatureDiscoverySource didUpdateLocation:]_block_invoke";
        v50 = 2082;
        v51 = "strongSelf->_passManager == nil";
        v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. passManager is nil. Something has gone very wrong.";
        v15 = v13;
        v16 = OS_LOG_TYPE_FAULT;
        v17 = 38;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Could not fetch a payment polygon mapItem from either the cache or the service";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 2;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_100641918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100641968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100641980(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    v8 = v5;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    *(*(*(a1 + 64) + 8) + 24) = [v6 _hasPaymentAndSuggestionsData:v7 error:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100641A74(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = [v10 firstObject];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [WeakRetained[8] cachePolygon:*(*(*(a1 + 48) + 8) + 40) forLocation:*(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = [WeakRetained _hasPaymentAndSuggestionsData:v10 error:v5];
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100641E70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] isTouristHere];
    v5 = v4;
    MapsSuggestionsConfidenceDontKnow();
    *(*(*(a1 + 48) + 8) + 24) = v5 > v6;
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v8 = @"Yes";
      }

      else
      {
        v8 = @"No";
      }

      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Maps Home: isTourist: %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
    dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
    v9 = [[TransitPassManager alloc] initWithIsTourist:*(*(*(a1 + 48) + 8) + 24)];
    v10 = v3[5];
    v3[5] = v9;

    [v3[5] setDelegate:v3];
    dispatch_group_enter(*(a1 + 32));
    v11 = v3[5];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006420F0;
    v17[3] = &unk_101661408;
    objc_copyWeak(&v20, (a1 + 64));
    v19 = *(a1 + 56);
    v18 = *(a1 + 32);
    [v11 userHasPaymentCardWithHandler:v17];
    v12 = v3[10];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006421B0;
    v14[3] = &unk_101661430;
    v13 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    dispatch_group_notify(v13, v12, v14);

    objc_destroyWeak(&v20);
  }
}

void sub_1006420F0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[10];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006421D8;
    block[3] = &unk_1016613E0;
    v11 = a2;
    v8 = *(a1 + 32);
    v7 = v8;
    v10 = v8;
    dispatch_async(v6, block);
  }
}

void sub_1006421D8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48);
  v2 = sub_10003D020();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Maps Home: userHasPaymentCard: %@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1006422B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[TransitPayFeatureDiscoveryMetadataStore alloc] initWithTouristStatus:*(a1 + 40)];
    v4 = v5[4];
    v5[4] = v3;

    WeakRetained = v5;
  }
}

void sub_1006423CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateFeatureEligibility];
    WeakRetained = v2;
  }
}

void sub_100642674(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1006426A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  v3 = sub_10003D020();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Action Button Tapped in Maps Home", buf, 2u);
  }

  v4 = [WeakRetained[6] suggestionType];
  if (v4 - 1 < 2 || v4 == 4)
  {
    if ([WeakRetained[6] canPresentEducationScreen])
    {
      v6 = [WeakRetained transitPayActionDelegate];
      v7 = [WeakRetained[6] educationScreenAssetURLs];
      v8 = [WeakRetained[6] educationScreenTitle];
      v9 = [WeakRetained[6] educationScreenText];
      [v6 presentEducationScreenWithAssetURLs:v7 titleText:v8 bodyText:v9];

LABEL_14:
      v11 = [*(*(a1 + 32) + 48) analyticsValue];
      [GEOAPPortal captureUserAction:308 target:8 value:v11];
LABEL_18:

      goto LABEL_19;
    }

    v11 = sub_10003D020();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v14) = 0;
    v12 = "Cannot present education screen because canPresentEducationScreen returned NO";
    v13 = &v14;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v10 = [WeakRetained[6] paymentMethods];

    if (v10)
    {
      [WeakRetained[9] markActionExecuted:1];
      v6 = [WeakRetained transitPayActionDelegate];
      v7 = [WeakRetained[6] paymentMethods];
      [v6 presentWalletDCIViewControllerWithTransitSystems:v7 callbackDelegate:WeakRetained];
      goto LABEL_14;
    }

    v11 = sub_10003D020();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v15 = 0;
    v12 = "Cannot present DCI flow because modelData.paymentMethod is nil";
    v13 = &v15;
    goto LABEL_17;
  }

LABEL_19:
  if ([WeakRetained[6] suggestionType] == 1 || objc_msgSend(WeakRetained[6], "suggestionType") == 2)
  {
    [WeakRetained[4] handleManualTipDismissForMarket:WeakRetained[7] tipType:objc_msgSend(WeakRetained[6] sinkType:{"suggestionType"), 2}];
    [WeakRetained setShowFeature:0];
    [WeakRetained _notifyObservers];
  }

LABEL_22:
}

void sub_100642920(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) analyticsValue];
  [GEOAPPortal captureUserAction:307 target:8 value:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = sub_10003D020();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [WeakRetained[6] title];
      v6 = [WeakRetained[6] subtitle];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TipKit displayed in Maps Home with\nTitle: %@\nSubtitle: %@\n", &v7, 0x16u);
    }

    [WeakRetained[4] handleTipDisplayForMarket:WeakRetained[7] tipType:objc_msgSend(WeakRetained[6] sinkType:{"suggestionType"), 2}];
  }
}

void sub_100642A68(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) analyticsValue];
  [GEOAPPortal captureUserAction:306 target:8 value:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = sub_10003D020();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TipKit dismissed in Maps Home", v5, 2u);
    }

    [WeakRetained[4] handleManualTipDismissForMarket:WeakRetained[7] tipType:objc_msgSend(WeakRetained[6] sinkType:{"suggestionType"), 2}];
    [WeakRetained setShowFeature:0];
    [WeakRetained _notifyObservers];
  }
}

id sub_1006430BC(uint64_t a1)
{
  v2 = floor(*(a1 + 48));
  [*(*(a1 + 32) + 16) frame];
  v4 = v2 > ceil(v3);
  v5 = *(*(a1 + 32) + 16);

  return [v5 setScrollEnabled:v4];
}

void sub_1006438A4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3 && a1[6] == *(a1[4] + 48))
  {
    v6 = +[MKLocationManager sharedLocationManager];
    v7 = [v6 isAuthorizedForPreciseLocation];

    if (v7)
    {
      v8 = +[MKMapService sharedService];
      v9 = a1[5];
      [v5 coordinate];
      v10 = [v8 ticketForNearestTransitStation:v9 coordinate:0 traits:?];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1006439C0;
      v12[3] = &unk_101624A20;
      v11 = a1[6];
      v12[4] = a1[4];
      v12[5] = v11;
      [v10 submitWithHandler:v12 networkActivity:0];
    }
  }
}

void sub_1006439C0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v5 && *(a1 + 40) == *(*(a1 + 32) + 48) && [v9 count])
  {
    v6 = [SearchResult alloc];
    v7 = [v9 firstObject];
    v8 = [(SearchResult *)v6 initWithMapItem:v7];
    [*(a1 + 32) setSearchResult:v8];

    *(*(a1 + 32) + 208) = 1;
    [*(a1 + 32) updateActionEnableStates];
  }
}

void sub_100643E44(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3 && [v6 count])
  {
    [*(a1 + 32) setSearchResult:0];
    v5 = [v6 firstObject];
    [*(a1 + 32) setResolvedMapItem:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100644338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100644350(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(*(*(a1 + 48) + 8) + 40));
  if (*(a1 + 40) == *(*(a1 + 32) + 8))
  {
    v2 = [*(*(*(a1 + 48) + 8) + 40) mapItem];
    [*(a1 + 32) setResolvedMapItem:v2];
  }
}

void sub_1006443E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if ((*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100644B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100644BF4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSearchResult:v1];

    v5 = objc_loadWeakRetained((a1 + 40));
    v4 = [*(*(*(a1 + 32) + 8) + 40) mapItem];
    [v5 setResolvedMapItem:v4];
  }
}

void sub_100644CA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100644D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSearchResultWithMapItemIfNeeded:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setResolvedMapItem:v3];

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_100644DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 count];
  if (!a3 && v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [v10 firstObject];
    [WeakRetained _updateSearchResultWithMapItemIfNeeded:v7];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v10 firstObject];
    [v8 setResolvedMapItem:v9];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100644E88(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = [v14 count];
  if (a3 || !v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = [*(a1 + 32) mapItem];
    v11 = WeakRetained;
    v13 = v12;
  }

  else
  {
    WeakRetained = [v14 firstObject];
    v7 = MKLocalizedStringForCurrentLocation();
    [WeakRetained setName:v7];

    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 _updateSearchResultWithMapItemIfNeeded:WeakRetained];

    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 searchResult];
    [v10 setType:4];

    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = v11;
    v13 = WeakRetained;
  }

  [v11 setResolvedMapItem:v13];

  dispatch_group_leave(*(a1 + 40));
}

void *sub_100645248(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 24) || *(v2 + 264))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:v1[4] selectedShowPlaceCard:*(v1[4] + 264)];

    [GEOAPPortal captureUserAction:17077 target:*(v1[4] + 252) value:0 placeActionDetails:*(v1[4] + 112)];
    *(v1[4] + 224) = 0;
    v4 = v1[4];

    return [v4 reset];
  }

  return result;
}

void sub_1006453D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 24) && !*(v2 + 264))
  {
    return;
  }

  v3 = *(a1 + 40);
  if (v3 == *(v2 + 144))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedCall:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17073;
LABEL_17:

    [GEOAPPortal captureUserAction:v5 target:*(*(a1 + 32) + 252) value:v9 placeActionDetails:*(*(a1 + 32) + 112)];
    goto LABEL_18;
  }

  if (v3 == *(v2 + 152))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedViewWebsiteFor:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17079;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 176) || v3 == *(v2 + 184))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedShareLocationOf:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17076;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 128))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedDirectionsTo:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17074;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 136))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedDirectionsTo:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 291;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 168))
  {
    v6 = objc_loadWeakRetained((v2 + 256));
    v7 = objc_opt_respondsToSelector();

    v8 = *(a1 + 32);
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      [GEOAPPortal captureUserAction:17050 target:*(v8 + 252) value:0 placeActionDetails:*(v8 + 112)];
      goto LABEL_18;
    }

    WeakRetained = objc_loadWeakRetained((v8 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedDropPinAt:*(*(a1 + 32) + 16)];
    v9 = 0;
    v5 = 17050;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 160))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedRemoveDroppedPinOf:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17053;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 192))
  {
    v9 = [*(v2 + 8) _maps_analyticsEventValue];
    [*(*(a1 + 32) + 8) set_maps_lineShouldZoomMapRegionOnSelection:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedViewTransitLinesOnMap:*(*(a1 + 32) + 8)];
    v5 = 17078;
    goto LABEL_17;
  }

  if (v3 == *(v2 + 200))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 256));
    [WeakRetained quickActionMenuPresenter:*(a1 + 32) selectedDirectionsTo:*(*(a1 + 32) + 264)];
    v9 = 0;
    v5 = 17075;
    goto LABEL_17;
  }

  v9 = 0;
  [GEOAPPortal captureUserAction:17075 target:*(v2 + 252) value:0 placeActionDetails:*(v2 + 112)];
LABEL_18:
}

void sub_1006459E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100645A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v3;
    v7 = v6;
    if (isKindOfClass)
    {
      if (*(a1 + 40) == 1)
      {
        v8 = [v6 identifier];
        v9 = [v8 isEqualToString:@"_callAction"];

        if (v9)
        {
          v10 = [v7 copy];

          [v10 setAttributes:0];
          objc_storeStrong(WeakRetained + 18, v10);
          v7 = v10;
        }
      }

      if (*(a1 + 41) == 1)
      {
        v11 = [v7 identifier];
        v12 = [v11 isEqualToString:@"_webAction"];

        if (v12)
        {
          v13 = [v7 copy];

          [v13 setAttributes:0];
          objc_storeStrong(WeakRetained + 19, v13);
          v7 = v13;
        }
      }

      if (*(a1 + 42) == 1)
      {
        v14 = [v7 identifier];
        v15 = [v14 isEqualToString:@"_transitLineDirectionsAction"];

        if (v15)
        {
          v16 = [v7 copy];

          [v16 setAttributes:0];
          objc_storeStrong(WeakRetained + 25, v16);
          v7 = v16;
        }
      }

      v17 = [v7 identifier];
      v18 = [v17 isEqualToString:@"_directionsAction"];

      if (v18)
      {
        v19 = [v7 copy];

        [v19 setAttributes:*(a1 + 43) ^ 1];
        objc_storeStrong(WeakRetained + 16, v19);
        v7 = v19;
      }

      v20 = [v7 identifier];
      v21 = [v20 isEqualToString:@"_addStopAction"];

      if (v21)
      {
        v22 = [v7 copy];

        [v22 setAttributes:*(a1 + 43) ^ 1];
        objc_storeStrong(WeakRetained + 17, v22);
        v7 = v22;
      }
    }
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id sub_100645C94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = &__NSArray0__struct;
  if (WeakRetained && WeakRetained[30])
  {
    v2 = WeakRetained[30];
  }

  v3 = [UIMenu menuWithTitle:&stru_1016631F0 children:v2];

  return v3;
}

void sub_1006461B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006461DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 performAction:v4[24]];

    WeakRetained = v4;
  }
}

void sub_1006463D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100646400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[25]];
    WeakRetained = v2;
  }
}

void sub_100646608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10064662C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[23]];
    WeakRetained = v2;
  }
}

void sub_100646834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100646858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[22]];
    WeakRetained = v2;
  }
}

void sub_100646A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100646A4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[20]];
    WeakRetained = v2;
  }
}

void sub_100646C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100646C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[21]];
    WeakRetained = v2;
  }
}

void sub_100646E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100646E54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[19]];
    WeakRetained = v2;
  }
}

void sub_10064702C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100647054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[18]];
    WeakRetained = v2;
  }
}

void sub_100647218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10064723C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[17]];
    WeakRetained = v2;
  }
}

void sub_100647400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100647424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performAction:WeakRetained[16]];
    WeakRetained = v2;
  }
}

void sub_1006476CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id sub_1006476F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained previewViewController];

  return v2;
}

id sub_10064773C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 248) = 1;
    if (*(WeakRetained + 30))
    {
      v3 = *(WeakRetained + 30);
    }

    else
    {
      v3 = &__NSArray0__struct;
    }
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = [UIMenu menuWithTitle:&stru_1016631F0 children:v3];

  return v4;
}

id sub_100647F10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) directionsAction];

  if (v4 == v3)
  {
    v5 = [*(a1 + 32) addStopAction];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_10064982C(uint64_t a1)
{
  if (MapsSuggestionsIsValidVisit())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      -[NSObject considerMyAllowanceAsLimited:](WeakRetained, "considerMyAllowanceAsLimited:", [*(a1 + 40) _hasMapsCoarseLocationEnabled]);
      [v3 considerMyNewVisit:*(a1 + 32)];
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446722;
        v7 = "MapsSuggestionsNavdLocationManager.m";
        v8 = 1026;
        v9 = 177;
        v10 = 2082;
        v11 = "[MapsSuggestionsNavdLocationManager locationManager:didVisit:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Dropping invalid visit: %@", &v6, 0xCu);
    }
  }
}

void sub_100649D78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateLocationIfAllowed:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsNavdLocationManager.m";
      v7 = 1026;
      v8 = 132;
      v9 = 2082;
      v10 = "[MapsSuggestionsNavdLocationManager locationLeecher:receivedLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100649FC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NavdLocationLeecher sharedLeecher];
    [v2 removeObserver:WeakRetained];

    BOOL = GEOConfigGetBOOL();
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (BOOL)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v12, 0xCu);
    }

    if (BOOL)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] Stopping SLC monitoring", &v12, 2u);
      }

      [WeakRetained[1] stopMonitoringSignificantLocationChanges];
    }

    v7 = GEOConfigGetBOOL();
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v7)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v12, 0xCu);
    }

    if (v7)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] Stopping visit monitoring", &v12, 2u);
      }

      [WeakRetained[1] stopMonitoringVisits];
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "MapsSuggestionsNavdLocationManager.m";
      v14 = 1026;
      v15 = 92;
      v16 = 2082;
      v17 = "[MapsSuggestionsNavdLocationManager onStopImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v12, 0x1Cu);
    }
  }
}

void sub_10064A38C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NavdLocationLeecher sharedLeecher];
    v3 = [v2 lastLeechedLocation];
    [WeakRetained _updateLocationIfAllowed:v3];

    v4 = +[NavdLocationLeecher sharedLeecher];
    [v4 addObserver:WeakRetained];

    BOOL = GEOConfigGetBOOL();
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (BOOL)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v14, 0xCu);
    }

    if (BOOL)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Starting SLC monitoring", &v14, 2u);
      }

      [WeakRetained[1] startMonitoringSignificantLocationChanges];
    }

    v9 = GEOConfigGetBOOL();
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v14, 0xCu);
    }

    if (v9)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Starting visit monitoring", &v14, 2u);
      }

      [WeakRetained[1] startMonitoringVisits];
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "MapsSuggestionsNavdLocationManager.m";
      v16 = 1026;
      v17 = 64;
      v18 = 2082;
      v19 = "[MapsSuggestionsNavdLocationManager onStartImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v14, 0x1Cu);
    }
  }
}

uint64_t sub_10064AA98(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 _type] == 1 && (objc_msgSend(v4, "mapItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_hasMUID"), v5, v6))
    {
      v7 = *(a1 + 32);
      v8 = [v4 mapItem];
      v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 _muid]);
      v10 = [v7 containsObject:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

BOOL sub_10064ABC4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 _type] != 2;

  return v3;
}

void sub_10064B588(id a1)
{
  v1 = objc_alloc_init(NSMeasurementFormatter);
  v2 = qword_10195CD98;
  qword_10195CD98 = v1;

  v3 = [qword_10195CD98 numberFormatter];
  [v3 setMaximumFractionDigits:0];

  [qword_10195CD98 setUnitStyle:2];
  v4 = qword_10195CD98;

  [v4 setUnitOptions:1];
}

void sub_10064C47C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Error saving shared collection: %@", &v4, 0xCu);
    }
  }
}

void sub_10064C92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10064C950(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v6 = *(a1 + 32);
      v4 = [NSArray arrayWithObjects:&v6 count:1];
      [WeakRetained beginDeletions:v4];

      v5 = +[MSPSharedTripService sharedInstance];
      [v5 blockSharedTripWithIdentifier:*(a1 + 40)];
    }
  }
}

void sub_10064CBA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10064CBD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [WeakRetained beginDeletions:v3];
  }
}

void sub_10064CC70(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [WeakRetained endFailedDeletions:v5 error:0];
  }
}

void sub_10064D66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10064D6AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

id sub_10064DA78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifierCache];
  v5 = [v4 identifierForObject:v3];

  return v5;
}

TwoLinesCollectionOutlineCellModel *sub_10064DAE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [SidebarOutlineCellBackgroundModel alloc];
  v8 = [*(a1 + 32) delegate];
  v9 = [v8 isCollectionViewFocusedWithSectionController:*(a1 + 32)];
  v10 = [*(a1 + 32) delegate];
  v11 = [v10 isCollectionViewProxyFocusedWithSectionController:*(a1 + 32)];
  v12 = [*(a1 + 32) delegate];
  v13 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v7, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", 0, 0, 1, v9, v11, [v12 hasCollectionViewDropSessionWithSectionController:*(a1 + 32)]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [[TwoLineOutlineCellButtonAccessoryModel alloc] initWithAccessoryType:1 visibility:0 delegate:*(a1 + 32)];
    v15 = [TwoLinesSharedTripSummaryOutlineCellModel alloc];
    v102 = v14;
    v16 = [NSArray arrayWithObjects:&v102 count:1];
    v17 = [(TwoLinesSharedTripSummaryOutlineCellModel *)v15 initWithSharedTripSummary:v5 accessoryModels:v16 backgroundModel:v13];
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v5;
    if ([(TwoLineOutlineCellButtonAccessoryModel *)v16 type]== 21 || GEOConfigGetBOOL())
    {
      v18 = [[TwoLinesOutlineCellUGCRatingRequestAccessoryModel alloc] initWithDelegate:*(a1 + 32)];
      v101 = v18;
      v14 = [NSArray arrayWithObjects:&v101 count:1];
    }

    else
    {
      v14 = 0;
    }

    v17 = [[TwoLinesMapsSuggestionsEntryOutlineCellModel alloc] initWithMapsSuggestionsEntry:v16 accessoryModels:v14 backgroundModel:v13];
    goto LABEL_43;
  }

  v87 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = v5;
    v19 = *(a1 + 40);
    v20 = [v6 topIdentifierPath];
    v83 = [v19 containsObject:v20];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v21 = *(a1 + 40);
    v22 = [v21 countByEnumeratingWithState:&v94 objects:v100 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v95;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v95 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v94 + 1) + 8 * i);
          v27 = [v6 topIdentifierPath];
          if ([v26 hasPrefix:v27])
          {
            v28 = [v26 length];
            v29 = [v6 depth];

            if (v28 > v29)
            {

              v45 = 1;
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v23);
    }

    if (v83)
    {
      v45 = 0;
LABEL_37:
      v46 = [*(a1 + 32) expandedIdentifierPaths];
      v47 = [v6 topIdentifierPath];
      v48 = [v46 containsObject:v47];

      v49 = [(TwoLineOutlineCellButtonAccessoryModel *)v88 content];
      v50 = [v49 count] != 0;

      v85 = [SidebarOutlineCellBackgroundModel alloc];
      if ((v48 & v50) != 0)
      {
        v51 = 2;
      }

      else
      {
        v51 = 0;
      }

      v52 = [*(a1 + 32) delegate];
      v53 = [v52 isCollectionViewFocusedWithSectionController:*(a1 + 32)];
      v54 = [*(a1 + 32) delegate];
      v55 = [v54 isCollectionViewProxyFocusedWithSectionController:*(a1 + 32)];
      v56 = [*(a1 + 32) delegate];
      v57 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v85, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", v45, 0, v51, v53, v55, [v56 hasCollectionViewDropSessionWithSectionController:*(a1 + 32)]);
    }

    else
    {
      v57 = v87;
    }

    v16 = [[TwoLineOutlineCellButtonAccessoryModel alloc] initWithAccessoryType:2 visibility:1 delegate:*(a1 + 32)];
    v62 = +[NSBundle mainBundle];
    v63 = [v62 localizedStringForKey:@"[Proactive Tray] Add Shared Guide" value:@"localized string not found" table:0];

    v64 = [TwoLinesOutlineCellActionModel alloc];
    v65 = +[NSBundle mainBundle];
    v66 = [v65 localizedStringForKey:@"[Proactive Tray] Discard" value:@"localized string not found" table:0];
    v67 = [(TwoLinesOutlineCellActionModel *)v64 initWithButtonTitle1:v63 buttonTitle2:v66 delegate:*(a1 + 32)];

    v68 = [TwoLinesCollectionOutlineCellModel alloc];
    v99 = v16;
    v69 = [NSArray arrayWithObjects:&v99 count:1];
    v14 = v88;
    v58 = [(TwoLinesCollectionOutlineCellModel *)v68 initWithCollection:v88 accessoryModels:v69 backgroundModel:v57 actionModel:v67];

    v13 = v57;
    goto LABEL_44;
  }

  v30 = [v6 parentItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v89 = [v6 parentItem];
    v32 = [v6 topIdentifierPath];
    v16 = [v32 identifierPathByRemovingLastIdentifier];

    v33 = *(a1 + 40);
    v34 = [v6 topIdentifierPath];
    v84 = [v33 containsObject:v34];

    v81 = [*(a1 + 40) containsObject:v16];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v35 = *(a1 + 40);
    v36 = [v35 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v91;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v91 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v90 + 1) + 8 * j);
          if ([v40 hasPrefix:v16])
          {
            v41 = [v40 length];
            if (v41 >= [v6 depth])
            {
              v42 = [v6 topIdentifierPath];
              v43 = v42;
              if (v40 == v42)
              {
              }

              else
              {
                v44 = [v40 isEqual:v42];

                if ((v44 & 1) == 0)
                {

                  v60 = v84;
                  goto LABEL_49;
                }
              }
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v37);
    }

    v60 = v84;
    if ((v84 | v81))
    {
LABEL_49:
      if (v89)
      {
        v61 = [(TwoLineOutlineCellButtonAccessoryModel *)v89 content];
      }

      else
      {
        v61 = &__NSArray0__struct;
      }

      v70 = v61;
      v71 = [v61 lastObject];
      v72 = v71;
      if (v71 == v5)
      {
        v74 = 4;
      }

      else
      {
        v73 = [v71 isEqual:v5];
        v74 = 3;
        if (v73)
        {
          v74 = 4;
        }
      }

      v86 = v74;

      v82 = [SidebarOutlineCellBackgroundModel alloc];
      if (v60)
      {
        v75 = 0;
      }

      else
      {
        v75 = 2;
      }

      v76 = [*(a1 + 32) delegate];
      v80 = [v76 isCollectionViewFocusedWithSectionController:*(a1 + 32)];
      v77 = [*(a1 + 32) delegate];
      v78 = [v77 isCollectionViewProxyFocusedWithSectionController:*(a1 + 32)];
      v79 = [*(a1 + 32) delegate];
      v13 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v82, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", v75, 0, v86, v80, v78, [v79 hasCollectionViewDropSessionWithSectionController:*(a1 + 32)]);
    }

    else
    {
      v13 = v87;
    }

    objc_opt_class();
    v14 = v89;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[TwoLinesCollectionMapItemOutlineCellModel alloc] initWithMapItem:v5 currentLocation:*(a1 + 48) distanceUnit:*(a1 + 56) backgroundModel:v13];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v58 = 0;
        goto LABEL_44;
      }

      v17 = [v5 cellModelWithBackgroundModel:v13];
    }

LABEL_43:
    v58 = v17;
LABEL_44:

    goto LABEL_45;
  }

  v58 = 0;
LABEL_45:

  return v58;
}

id sub_10064E3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _childItemsInCollection:v3];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

id sub_10064E450(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 expandedIdentifierPaths];
  v6 = [v4 topIdentifierPath];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_10064F124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10064F160(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10064F178(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = a2;
  v8 = [v27 isPlaceholder];
  v9 = v27;
  if ((v8 & 1) == 0)
  {
    v10 = [v27 transitTripStop];
    v11 = [v10 departure];

    v12 = *(a1[5] + 8);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = 1;
    }

    else
    {
      v13 = [v11 liveDepartureDate];
      *(*(a1[5] + 8) + 24) = v13 != 0;
    }

    v14 = [v11 departureDate];

    if (v14)
    {
      v15 = a1[4];
      v16 = [v27 transitTripStop];
      v17 = [v16 departure];
      LOBYTE(v15) = [v15 _isPastDeparture:v17];

      if ((v15 & 1) == 0)
      {
LABEL_7:
        if (!a3 && *(*(a1[5] + 8) + 24) == 1 && ([v11 departureDate], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          v19 = [v11 departureDate];
          [v19 timeIntervalSinceDate:*(a1[4] + 16)];

          if (GEOTransitDepartureIsImminentDepartureTimeInterval())
          {
            *(*(a1[8] + 8) + 24) = 0;
LABEL_19:
            *a4 = 1;
          }
        }

        else
        {
          objc_storeStrong((*(a1[6] + 8) + 40), a2);
        }

        v9 = v27;
        goto LABEL_21;
      }
    }

    else
    {
      v20 = [*(*(a1[6] + 8) + 40) transitTripStop];
      v21 = [v20 departure];
      v22 = [v21 departureDate];

      if (!v22)
      {
        goto LABEL_7;
      }
    }

    *(*(a1[7] + 8) + 24) = a3;
    v23 = *(*(a1[6] + 8) + 40);
    if (v23 && *(*(a1[5] + 8) + 24) == 1)
    {
      if ([v23 isPlaceholder])
      {
        *(*(a1[8] + 8) + 24) = a3;
      }

      else
      {
        v24 = [*(*(a1[6] + 8) + 40) transitTripStop];
        v25 = [v24 departure];

        v26 = [v25 departureDate];
        [v26 timeIntervalSinceDate:*(a1[4] + 16)];

        *(*(a1[8] + 8) + 24) = a3 + GEOTransitDepartureIsImminentDepartureTimeInterval();
      }
    }

    goto LABEL_19;
  }

LABEL_21:
}

void sub_1006500B8(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 stationIdentifier];
  v6 = *(a1 + 32);
  if (v5 == *(v6 + 48))
  {
    v7 = [v10 departure];
    v8 = [v7 scheduledDepartureDate];

    if (!v8 || (v9 = *(a1 + 40)) == 0 || [v9 isEqualToDate:v8])
    {
      *(*(a1 + 32) + 64) = a3;
    }
  }

  else if (*(v6 + 8) == 1 && (v5 == *(v6 + 24) || v5 == *(v6 + 32) || v5 == *(v6 + 40)))
  {
    *(v6 + 56) = a3;
  }

  if ([v10 isHidden])
  {
    [*(a1 + 48) addIndex:a3];
  }
}

void sub_1006501B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSValue valueWithRange:a2, a3];
  [v3 addObject:v4];
}

void sub_100650214(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [[TransitTripStopItem alloc] initWithTransitTripStop:v5 stopIndex:a3];

  [v4 addObject:v6];
}

void sub_100651B38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1 + 32) + 56);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "PresentRAPAction resolveMapItem for locationQueryInfo: %@", &v9, 0xCu);
    }
  }

  v8 = [v5 firstObject];
  (*(*(a1 + 40) + 16))();
}

void sub_1006521D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100652444()
{
  if (qword_10195CDB8 != -1)
  {
    dispatch_once(&qword_10195CDB8, &stru_101624CD0);
  }

  v1 = qword_10195CDB0;

  return v1;
}

void sub_1006524A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchSession");
  v2 = qword_10195CDB0;
  qword_10195CDB0 = v1;
}

void sub_100652E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100652E34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100652E4C(uint64_t a1)
{
  v5 = [*(a1 + 32) observers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100652F68(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10065307C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_10065376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100653790(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setObservers:0];
  v5 = *(a1 + 32);

  return [v5 setInvalidated:1];
}

void sub_100653910(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 refreshedEVChargersReceieved:*(a1 + 32)];
  }
}

void sub_100653B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100653B30(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 _identifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 _identifier];
    [v4 addObject:v5];
  }
}

void sub_100653BAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100652444();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error receieved while refreshing the ev chargers", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained[1] count])
    {
      v10 = sub_100652444();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "The timers are invalidated while updating the charger information", buf, 2u);
      }
    }

    v11 = [v9 searchInfo];
    v12 = [v11 results];
    v13 = [v12 mutableCopy];

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100653DE8;
    v24[3] = &unk_101624C60;
    v16 = v14;
    v25 = v16;
    [v15 enumerateObjectsUsingBlock:v24];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100653E4C;
    v22 = &unk_101624C88;
    v23 = v16;
    v17 = v16;
    [v13 enumerateObjectsUsingBlock:&v19];
    v18 = [v9 searchInfo];
    [v18 updateSearchInfo:v13];

    [v9 notifyToRefreshEVChargers:v13];
  }
}

void sub_100653DE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 _identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_100653E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 mapItem];
  v6 = [v5 _identifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v9 mapItem];
    [v8 _updateRealTimeEVChargerAvailability:v7];
  }
}

void sub_10065439C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _refreshEVChargers:*(a1 + 32)];
    WeakRetained = v3;
  }
}

id sub_1006546AC(uint64_t a1)
{
  [*(a1 + 32) setSearchFieldItem:*(a1 + 40)];
  [*(a1 + 32) _willProcessSearchFieldItem];
  [*(a1 + 32) didChangeSearchFieldItem];
  [*(a1 + 32) setSearchInfo:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didChangeSearchResults];
}

void sub_100654E88(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  [*(a1 + 32) setCurrentSearchSession:v3];
}

id sub_100655390(void *a1)
{
  v1 = [a1 geoAddress];
  v2 = [v1 structuredAddress];
  v3 = [v2 locality];

  return v3;
}

void sub_100655F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100659DDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  if (a3)
  {
    [v4 _minorLabelColor];
  }

  else
  {
    [v4 _majorLabelColor];
  }
  v6 = ;
  [v5 setTextColor:v6];
}

void sub_10065A568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10065A598(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10065B694(id a1)
{
  v1 = [NSAttributedString alloc];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Directions] road descriptions separator" value:@"localized string not found" table:0];
  v8 = NSForegroundColorAttributeName;
  v4 = +[UIColor secondaryLabelColor];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v1 initWithString:v3 attributes:v5];
  v7 = qword_10195CDC8;
  qword_10195CDC8 = v6;
}

id sub_10065CC94()
{
  if (qword_10195CDE8 != -1)
  {
    dispatch_once(&qword_10195CDE8, &stru_101624E28);
  }

  v1 = qword_10195CDE0;

  return v1;
}

void sub_10065CCE8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionTask");
  v2 = qword_10195CDE0;
  qword_10195CDE0 = v1;
}

void sub_10065D0B4(uint64_t a1)
{
  v2 = sub_10065CC94();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if ([*(a1 + 32) scrollEnabled])
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = v3;
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Restoring scroll enabled: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) scrollEnabled];
  v6 = [*(a1 + 40) mapView];
  [v6 setScrollEnabled:v5];

  v7 = sub_10065CC94();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if ([*(a1 + 32) rotateEnabled])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Restoring rotate enabled: %@", buf, 0xCu);
  }

  v10 = [*(a1 + 32) rotateEnabled];
  v11 = [*(a1 + 40) mapView];
  [v11 setRotateEnabled:v10];

  v12 = sub_10065CC94();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if ([*(a1 + 32) zoomEnabled])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Restoring zoom enabled: %@", buf, 0xCu);
  }

  v15 = [*(a1 + 32) zoomEnabled];
  v16 = [*(a1 + 40) mapView];
  [v16 setZoomEnabled:v15];

  v17 = sub_10065CC94();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    if ([*(a1 + 32) pitchEnabled])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v18;
    *buf = 138412290;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Restoring pitch enabled: %@", buf, 0xCu);
  }

  v20 = [*(a1 + 32) pitchEnabled];
  v21 = [*(a1 + 40) mapView];
  [v21 setPitchEnabled:v20];

  v22 = sub_10065CC94();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = VKStringForAnnotationTrackingBehavior();
    *buf = 138412290;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Restoring user's original tracking behavior: %@", buf, 0xCu);
  }

  v39 = *(a1 + 56);
  v40 = *(a1 + 72);
  v24 = [*(a1 + 40) mapView];
  *buf = v39;
  v42 = v40;
  [v24 _setUserTrackingBehavior:buf];

  if ([*(a1 + 48) originalUserTrackingMode])
  {
    v25 = sub_10065CC94();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [*(a1 + 48) originalUserTrackingMode];
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Restoring user's original tracking mode: %ld", buf, 0xCu);
    }

    v27 = [*(a1 + 40) mapView];
    v28 = [*(a1 + 48) originalUserTrackingMode];
    v29 = v27;
LABEL_31:
    [v29 setUserTrackingMode:v28 animated:1];
    goto LABEL_32;
  }

  v30 = *(a1 + 80);
  v31 = sub_10065CC94();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
  if (v30 == 1)
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Setting tracking mode to .Follow", buf, 2u);
    }

    v29 = [*(a1 + 40) mapView];
    v27 = v29;
    v28 = 1;
    goto LABEL_31;
  }

  if (v32)
  {
    [*(a1 + 48) originalCenterCoordinateDistance];
    *buf = 134217984;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Restoring user's zoom level to %f", buf, 0xCu);
  }

  v35 = [*(a1 + 40) mapView];
  v36 = [v35 camera];
  v27 = [v36 copy];

  [*(a1 + 48) originalCenterCoordinateDistance];
  [v27 setCenterCoordinateDistance:?];
  v37 = [*(a1 + 40) mapView];
  [v37 setCamera:v27 animated:1];

  v38 = [*(a1 + 40) mapView];
  [v38 setUserTrackingMode:0 animated:0];

LABEL_32:
  v33 = +[NSNotificationCenter defaultCenter];
  [v33 postNotificationName:@"VLFSessionTaskDidHideVLFUINotification" object:0];
}

void sub_10065D8B8(uint64_t a1)
{
  v23 = *VKAnnotationTrackingBehaviorDefault;
  v2 = VKAnnotationTrackingBehaviorDefault[2];
  LOBYTE(v23) = 1;
  *(&v23 + 1) = 0;
  v24 = v2;
  LOWORD(v24) = 256;
  v3 = sub_10065CC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = VKStringForAnnotationTrackingBehavior();
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Set annotation tracking behavior: %@", buf, 0xCu);
  }

  v21 = v23;
  v22 = v24;
  v5 = [*(a1 + 32) mapView];
  *buf = v23;
  v26 = v24;
  [v5 _setUserTrackingBehavior:buf];

  v6 = [*(a1 + 40) originalUserState];
  if ([v6 originalUserTrackingMode])
  {
    v7 = [*(a1 + 40) originalUserState];
    v8 = [v7 originalUserTrackingMode];
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_10065CC94();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting tracking mode to %ld", buf, 0xCu);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10065DB9C;
  v18 = &unk_101661650;
  v19 = *(a1 + 32);
  v20 = v8;
  [UIView animateWithDuration:0x20000 delay:&v15 options:0 animations:0.5 completion:0.0];
  v10 = sub_10065CC94();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Disabling map interaction", buf, 2u);
  }

  v11 = [*(a1 + 32) mapView];
  [v11 setScrollEnabled:0];

  v12 = [*(a1 + 32) mapView];
  [v12 setRotateEnabled:0];

  v13 = [*(a1 + 32) mapView];
  [v13 setZoomEnabled:0];

  v14 = [*(a1 + 32) mapView];
  [v14 setPitchEnabled:0];
}

void sub_10065DB9C(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setUserTrackingMode:*(a1 + 40) animated:1];
}

void sub_100661048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100661074(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v9 = NSLocalizedDescriptionKey;
      v10 = v3;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v5 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    v7 = GEOErrorDomain();
    v8 = [NSError errorWithDomain:v7 code:-8 userInfo:v6];
    (*(v5 + 16))(v5, 0, v8);
  }
}

void sub_100661180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v19 = sub_100798874();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Tracker can't create RAP state because the recording failed with error: %@", buf, 0xCu);
      }

      v20 = *(a1 + 64);
      if (v20)
      {
        (*(v20 + 16))(v20, 0, v6);
      }
    }

    else
    {
      v8 = [v5 routes];
      v9 = [v8 lastObject];
      v10 = [v9 identifier];
      v11 = *(a1 + 88);

      if (v10 == v11)
      {
        v12 = [[RAPDisplayedDirectionsPlan alloc] initWithRouteCollection:*(a1 + 32) recording:v5];
        v13 = WeakRetained[6];
        WeakRetained[6] = v12;

        v14 = [*(a1 + 40) currentRouteCollection];
        v15 = [v14 currentRoute];
        v16 = WeakRetained[4];
        WeakRetained[4] = v15;

        v17 = [*(a1 + 40) currentTransportType];
        if ((v17 - 2) > 3)
        {
          v18 = 0;
        }

        else
        {
          v18 = dword_101212C30[(v17 - 2)];
        }

        v25 = [RAPDisplayedRouteState alloc];
        v26 = [*(a1 + 48) originName];
        v27 = [*(a1 + 48) destinationName];
        v28 = [(RAPDisplayedRouteState *)v25 initWithStartWaypointTitle:v26 endWaypointTitle:v27 transportType:v18 composedRoute:WeakRetained[4]];
        v29 = WeakRetained[5];
        WeakRetained[5] = v28;

        v30 = [*(a1 + 56) mapView];
        v31 = [*(a1 + 56) currentTraits];
        v32 = +[SearchSession currentSearchSession];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100661564;
        v33[3] = &unk_101624EA0;
        objc_copyWeak(&v36, (a1 + 80));
        v37 = *(a1 + 88);
        v34 = *(a1 + 72);
        v35 = *(a1 + 64);
        [RAPAppStateFactory createAppStateWithMapView:v30 traits:v31 place:0 searchDataSource:v32 directionsDataSource:WeakRetained completion:v33];

        objc_destroyWeak(&v36);
      }

      else
      {
        v21 = sub_100798874();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 88);
          v23 = [v5 routes];
          v24 = [v23 lastObject];
          *buf = 134218240;
          v39 = v22;
          v40 = 2048;
          v41 = [v24 identifier];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Tracker can't create RAP state because currentRouteId: %lu doesn't match the recorded id: %lu", buf, 0x16u);
        }

        (*(*(a1 + 72) + 16))();
      }
    }
  }
}

void sub_100661564(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = [v4 directionsHistory];
    v7 = [v6 firstObject];
    v8 = [v7 recording];

    v9 = [v8 routes];
    v10 = [v9 lastObject];
    v11 = [v10 identifier];
    v12 = *(a1 + 56);

    if (v11 == v12)
    {
      objc_storeStrong(WeakRetained + 8, a2);
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v4, 0);
      }
    }

    else
    {
      v14 = sub_100798874();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 56);
        v16 = [v8 routes];
        v17 = [v16 lastObject];
        v18 = 134218240;
        v19 = v15;
        v20 = 2048;
        v21 = [v17 identifier];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Tracker can't create RAP state because currentRouteId: %lu doesn't match the recorded id: %lu", &v18, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

RAPPlaceCorrectableString *sub_1006634F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[RAPPlaceCorrectableString alloc] initWithKind:a2 originalValue:v5];

  [(RAPPlaceCorrectableString *)v6 addObserver:*(a1 + 32) changeHandler:&stru_101624F08];

  return v6;
}

void sub_100663570(id a1, RAPPlaceCorrectableItem *a2, RAPPlaceCorrectableAddress *a3)
{
  v4 = a3;
  if ([RAPPlaceCorrectableAddress _isStructuredAddressType:[(RAPPlaceCorrectableItem *)a2 kind]])
  {
    [(RAPPlaceCorrectableAddress *)v4 _updateFreeformAddressWithStructuredChange];
  }

  [(RAPPlaceCorrectableAddress *)v4 _invokeChangeHandlers];
}

PersonalizedMapItemKey *sub_100666DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithUnsignedInteger:GEOMapItemHashForPurpose()];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[PersonalizedMapItemKey alloc] initWithGeoMapItem:v3];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

uint64_t sub_100666E5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

HistoryEntryRecentsItem *sub_100666E74(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v4 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v5];
      if (!v4)
      {
        v6 = MSPHistoryEntryMakeFromStorage();
        v4 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v6];
        [*(*(*(a1 + 32) + 8) + 40) setObject:v4 forKeyedSubscript:v5];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_100666F7C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 geoMapItem];
  if (v3)
  {
    v4 = (*(*(a1 + 64) + 16))();
    [*(a1 + 32) addObject:v4];
    [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v4];
  }

  v5 = [v8 supersededSearchStorageIdentifier];

  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = [v8 supersededSearchStorageIdentifier];
    [v6 addObject:v7];
  }
}

void sub_100667050(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 storageIdentifier];
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:v4] ^ 1;
}

void sub_1006670BC(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 waypoints];
  if ([v3 count] < 3)
  {
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);

    v5 = v16;
    if (v4 != 2)
    {
      goto LABEL_15;
    }
  }

  v6 = [v16 endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v16;
  if ((isKindOfClass & 1) == 0)
  {
    v8 = [v16 endWaypoint];
    v9 = [v8 mapItemStorage];

    if (*(*(a1 + 32) + 8) == 2)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else if (v9)
    {
      v10 = (*(*(a1 + 64) + 16))();
      v11 = *(*(a1 + 80) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if ([*(a1 + 40) containsObject:*(*(*(a1 + 80) + 8) + 40)])
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v13 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 linkedRecentRoute];

          if (!v15)
          {
            [v14 setLinkedRecentRoute:*(a1 + 56)];
          }
        }
      }
    }

    v5 = v16;
  }

LABEL_15:
}

void sub_100667254(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  if (v3)
  {
    v7 = v3;
    v4 = (*(*(a1 + 32) + 16))();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

BOOL sub_1006680A4(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  v4 = [v3 length] != 0;
  return v4;
}

void sub_100668EF4(uint64_t a1)
{
  v2 = [*(a1 + 32) mapItemIfLoaded];
  v3 = *(a1 + 48);
  v4 = [objc_opt_class() iconSize];
  v5 = +[MKMapItem _maps_markerImageForMapItem:scale:size:useMarkerFallback:](MKMapItem, "_maps_markerImageForMapItem:scale:size:useMarkerFallback:", v2, v4, [objc_opt_class() useMarkerFallback], v3);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100669000;
  block[3] = &unk_10165E668;
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  block[4] = *(a1 + 40);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void *sub_100669000(void *result)
{
  v1 = result[4];
  if (result[6] == *(v1 + 8))
  {
    return [*(v1 + 32) setImage:result[5]];
  }

  return result;
}

void sub_10066B084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10066B09C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10066B0B4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
    *a3 = 1;
  }
}

void sub_10066B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10066B564(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isEqualToSearchResult:a2 forPurpose:5])
  {
    v7 = [*(*(a1 + 40) + 48) objectAtIndexedSubscript:a3];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void sub_10066B6A8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) keys];
        v9 = [v8 copy];
        [v7 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}