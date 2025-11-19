void sub_100769CCC(uint64_t a1)
{
  if (!*(*(a1 + 32) + 112))
  {
    v2 = +[NSMutableArray array];
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = v2;
  }

  v9 = objc_alloc_init(GEOVLFARState);
  [v9 setRelativeTimestampMs:((*(a1 + 48) - *(*(a1 + 32) + 24)) * 1000.0)];
  v5 = [*(a1 + 40) state];
  if (v5 < 4)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  [v9 setGeoTrackingState:v6];
  v7 = [*(a1 + 40) stateReason];
  if (v7 < 9)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 0;
  }

  [v9 setGeoTrackingStateReason:v8];
  [*(*(a1 + 32) + 112) addObject:v9];
}

void sub_100769E88(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) analyticsInformationWithSessionStartMonotonicTime:*(*(a1 + 40) + 24)];
    if (v2)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = v3;
        v5 = [v4 positionContextState];
        if (v5 > 2)
        {
          v6 = 0;
          v7 = 3;
        }

        else
        {
          v6 = dword_101213448[v5];
          v7 = 7;
        }

        [v4 probabilityPositionContextStateIndoor];
        v9 = v8;
        [v4 probabilityPositionContextStateOutdoor];
        v11 = v10;

        v20[0] = v9;
        v20[1] = v11;
        v21 = v6;
        v22 = v7;
        v23 = 0;
        v24 = 0;
        [v2 setPositionContextClassification:v20];
      }

      v12 = *(*(a1 + 40) + 48);
      if (!v12)
      {
        v13 = +[NSMutableArray array];
        v14 = *(a1 + 40);
        v15 = *(v14 + 48);
        *(v14 + 48) = v13;

        v12 = *(*(a1 + 40) + 48);
      }

      [v12 addObject:v2];
    }
  }

  v16 = [*(a1 + 32) crowdsourcingDetails];

  if (v16)
  {
    v17 = [*(a1 + 32) crowdsourcingDetails];
    v18 = *(a1 + 40);
    v19 = *(v18 + 136);
    *(v18 + 136) = v17;
  }
}

id sub_10076A100(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 64);
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  *(*(a1 + 32) + 72) = *(a1 + 72);
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 56));
  v2 = *(a1 + 32);

  return [v2 _submitAnalytics];
}

void sub_10076A29C(uint64_t a1)
{
  *(*(a1 + 32) + 32) = *(a1 + 48);
  *(*(a1 + 32) + 24) = *(a1 + 56);
  *(*(a1 + 32) + 16) = *(a1 + 64);
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  *(*(a1 + 32) + 80) = *(a1 + 72);
  *(*(a1 + 32) + 120) = 4;
}

id sub_10076A8AC()
{
  if (qword_10195D180 != -1)
  {
    dispatch_once(&qword_10195D180, &stru_101628690);
  }

  v1 = qword_10195D178;

  return v1;
}

void sub_10076A900(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningUpdater");
  v2 = qword_10195D178;
  qword_10195D178 = v1;
}

void sub_10076ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10076AD1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10076B3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10076A8AC();
  WeakRetained = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Error occurred while waiting for a location update: %@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "Got a location update: %{private}@; force refreshing routes now", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained refreshRoutesForced:1];
  }
}

void sub_10076B784(uint64_t a1)
{
  v2 = sub_10076A8AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "route freshness limit reached", buf, 2u);
  }

  v3 = +[MKLocationManager sharedLocationManager];
  v4 = [v3 isLastLocationStale];

  if (v4)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "skipping time based refresh as the current location is stale", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [NSError errorWithDomain:kCLErrorDomain code:0 userInfo:0];
    [WeakRetained _preparePeriodicRouteRefreshTimerWithError:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained refreshRoutesForced:1];
  }
}

void sub_10076C394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10076C3B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained refreshRoutesForced:(WeakRetained[8] & 1) == 0];
    WeakRetained = v2;
  }
}

void sub_10076D5F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if (v4)
  {
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing item source item: %@", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = v4;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = sub_100798A3C();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Checking against compound item: %@", buf, 0xCu);
          }

          v13 = [v11 items];
          v14 = [v13 containsObject:v3];

          if (v14)
          {
            v18 = sub_100798A3C();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v11 items];
              *buf = 138412290;
              v31 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Found a match in items array: %@", buf, 0xCu);
            }

            v20 = [v11 styleAttributes];
            v17 = [v20 styleAttributes];

            v21 = [v11 clientFeatureID];
            v16 = [v21 clientFeatureID];

            v22 = [v11 title];
            v15 = [v22 value];

            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_18:
      v4 = v25;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v23 = sub_100798A3C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v4 shortDescription];
      *buf = 138412803;
      v31 = v17;
      v32 = 2048;
      v33 = v16;
      v34 = 2113;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Applying custom attributes %@ and clientFeatureID %lu to waypoint %{private}@", buf, 0x20u);
    }

    [v4 setStyleAttributes:v17];
    if (v16)
    {
      [v4 setClientFeatureID:v16];
      if ([v15 length])
      {
        [v4 setUserValuesName:v15];
      }
    }
  }
}

void sub_10076EB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10076EBBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10076EBD4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 _maps_spokenNameForNavigation];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

void sub_10076EEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10076EED8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [CNContactFormatter stringFromContact:a2 style:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

void sub_10076F720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100770500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007715F0(void *a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 allValues];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) _setSuppressStoreUpdateNotifications:0];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1007716E0(uint64_t a1)
{
  v2 = sub_10006515C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
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
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] collectAddress: posting DidUpdateAddresses notification", buf, 0xCu);
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"AddressBookManagerDidUpdateAddressesNotification" object:*(a1 + 32)];
}

id sub_100771D58()
{
  if (qword_10195D1F0 != -1)
  {
    dispatch_once(&qword_10195D1F0, &stru_101628818);
  }

  v1 = qword_10195D1E8;

  return v1;
}

void sub_100771DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateMapItemClientAttributes];
  v2 = *(a1 + 32);
  v3 = [WeakRetained geocodedMapItem];
  v4 = [WeakRetained geocodingError];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100771E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained addressDictionary];
    v5 = [v3 singleLineAddress];
    v6 = v5;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
    if (!v8)
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10077261C;
        v48[3] = &unk_101661760;
        v49 = v12;
        dispatch_async(&_dispatch_main_q, v48);
        v10 = v49;
LABEL_44:

        goto LABEL_45;
      }
    }

    v9 = [objc_opt_class() _geocodedMapItemsByAddress];
    v10 = [v9 objectForKey:v4];
    if (v10)
    {

      goto LABEL_13;
    }

    v13 = [objc_opt_class() _geocodedMapItemsByAddress];
    v10 = [v13 objectForKey:v6];

    if (v10)
    {
LABEL_13:
      objc_storeStrong((*(a1 + 32) + 128), v10);
      v14 = *(*(a1 + 32) + 136);
      *(*(a1 + 32) + 136) = 0;

      [v3 _updateMapItemClientAttributes];
      if (*(a1 + 40))
      {
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1007726C4;
        v45[3] = &unk_101660648;
        objc_copyWeak(&v47, (a1 + 48));
        v46 = *(a1 + 40);
        dispatch_async(&_dispatch_main_q, v45);

        objc_destroyWeak(&v47);
      }

      goto LABEL_44;
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = [v15 copy];
      v17 = [objc_opt_class() _completionsByAddress];
      v18 = [v17 objectForKeyedSubscript:v8];

      if (v18)
      {
        v19 = objc_retainBlock(v16);
        [v18 addObject:v19];

LABEL_43:
        v10 = 0;
        goto LABEL_44;
      }

      v20 = objc_retainBlock(v16);
      v21 = [NSMutableArray arrayWithObject:v20];

      v22 = [objc_opt_class() _completionsByAddress];
      [v22 setObject:v21 forKeyedSubscript:v8];
    }

    v23 = +[MKMapService sharedService];
    v41 = [v23 defaultTraits];

    v24 = sub_100771D58();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (!v25)
      {
LABEL_38:

        v38 = [[GEOAddress alloc] initWithAddressDictionary:v4];
        v39 = +[MKMapService sharedService];
        v40 = [v39 ticketForForwardGeocodeAddress:v38 traits:v41];

LABEL_42:
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100772754;
        v42[3] = &unk_1016287D8;
        objc_copyWeak(&v44, (a1 + 48));
        v42[4] = *(a1 + 32);
        v43 = v8;
        [v40 submitWithRefinedHandler:v42 networkActivity:0];

        objc_destroyWeak(&v44);
        goto LABEL_43;
      }

      v26 = objc_loadWeakRetained((a1 + 48));
      if (!v26)
      {
        v31 = @"<nil>";
        goto LABEL_37;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      if (objc_opt_respondsToSelector())
      {
        v29 = [v26 performSelector:"accessibilityIdentifier"];
        v30 = v29;
        if (v29 && ![v29 isEqualToString:v28])
        {
          v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

          goto LABEL_27;
        }
      }

      v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_37:
      *buf = 138543619;
      v53 = v31;
      v54 = 2113;
      v55 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] will forward geocode address with dictionary %{private}@...", buf, 0x16u);

      goto LABEL_38;
    }

    if (!v25)
    {
LABEL_41:

      v38 = +[MKMapService sharedService];
      v40 = [v38 ticketForForwardGeocodeString:v6 traits:v41];
      goto LABEL_42;
    }

    v32 = objc_loadWeakRetained((a1 + 48));
    if (!v32)
    {
      v37 = @"<nil>";
      goto LABEL_40;
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [v32 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ![v35 isEqualToString:v34])
      {
        v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

        goto LABEL_35;
      }
    }

    v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_35:

LABEL_40:
    *buf = 138543619;
    v53 = v37;
    v54 = 2113;
    v55 = v6;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] will forward geocode address with string %{private}@...", buf, 0x16u);

    goto LABEL_41;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100772574;
    block[3] = &unk_101661760;
    v51 = v11;
    dispatch_async(&_dispatch_main_q, block);
    v4 = v51;
LABEL_45:
  }
}

void sub_100772574(uint64_t a1)
{
  v2 = sub_100771D58();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "AddressBookAddress was deallocated while geocoding", v4, 2u);
  }

  v3 = [NSError GEOErrorWithCode:-13 reason:@"No AddressBookAddress object available anymore"];
  (*(*(a1 + 32) + 16))();
}

void sub_10077261C(uint64_t a1)
{
  v2 = sub_100771D58();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "cannot forward geocode without addressDictionary or addressString", v4, 2u);
  }

  v3 = [NSError GEOErrorWithCode:-13 reason:@"No addressDictionary or addressString available."];
  (*(*(a1 + 32) + 16))();
}

void sub_1007726C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained geocodedMapItem];
  v4 = [WeakRetained geocodingError];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100772754(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [v7 firstObject];

  objc_storeStrong((*(a1 + 32) + 128), v9);
  [WeakRetained _updateMapItemClientAttributes];
  objc_storeStrong((*(a1 + 32) + 152), *(*(a1 + 32) + 128));
  v10 = [objc_opt_class() _completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007728BC;
  block[3] = &unk_10164DFE0;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v11;
  v16 = v9;
  v17 = v6;
  v12 = v6;
  v13 = v9;
  dispatch_async(v10, block);

  objc_destroyWeak(&v18);
}

void sub_1007728BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(*(a1 + 32) + 128))
  {
    v3 = sub_100771D58();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v11 = [objc_opt_class() _geocodedMapItemsByAddress];
      [v11 setObject:*(*(a1 + 32) + 128) forKey:*(a1 + 40)];

      goto LABEL_13;
    }

    v4 = objc_loadWeakRetained((a1 + 64));
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_11;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_9;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_9:

LABEL_11:
    v10 = *(a1 + 40);
    *buf = 138543619;
    v22 = v9;
    v23 = 2113;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] caching geocoded map item for key %{private}@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
  v12 = [objc_opt_class() _completionsByAddress];
  v13 = [v12 objectForKeyedSubscript:*(a1 + 40)];

  v14 = [objc_opt_class() _completionsByAddress];
  [v14 setObject:0 forKeyedSubscript:*(a1 + 40)];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100772B9C;
  block[3] = &unk_10165E728;
  objc_copyWeak(&v20, (a1 + 64));
  v17 = v13;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v15 = v13;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v20);
}

void sub_100772B9C(uint64_t a1)
{
  v2 = sub_100771D58();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_loadWeakRetained((a1 + 56));
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
    v9 = [*(a1 + 32) count];
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] calling back to %lu pending completion handlers", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * i) + 16))();
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void sub_100772DE0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AddressBookAddress");
  v2 = qword_10195D1E8;
  qword_10195D1E8 = v1;
}

void sub_100775068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007750A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained storeUpdated:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1007750F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    if (v6 == v3)
    {
      *(WeakRetained + 5) = 0;
    }

    v7 = sub_100771D58();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v8 = v5;
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

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 138543875;
    v22 = v13;
    v23 = 2113;
    v24 = v14;
    v25 = 2113;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] ... will resolve contact %{private}@ address %{private}@ on background queue...", buf, 0x20u);

LABEL_11:
    v16 = objc_loadWeakRetained((a1 + 48));
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100775354;
    v19[3] = &unk_101628728;
    objc_copyWeak(&v20, (a1 + 48));
    [v16 _resolveContactIdentifier:v17 addressIdentifier:v18 completion:v19];

    objc_destroyWeak(&v20);
  }
}

void sub_100775354(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077542C;
  block[3] = &unk_101661480;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_10077542C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleResolvedAddress:*(a1 + 32) geocodedMapItem:*(a1 + 40)];
}

void sub_10077662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100776658(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained storeUpdated:0];
}

void sub_100776808(id a1)
{
  v1 = geo_dispatch_queue_create();
  v2 = qword_10195D1C8;
  qword_10195D1C8 = v1;
}

void sub_100776898(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10195D1B8;
  qword_10195D1B8 = v1;
}

void sub_10077692C(id a1)
{
  v1 = +[NSMapTable strongToStrongObjectsMapTable];
  v2 = qword_10195D1A8;
  qword_10195D1A8 = v1;
}

void sub_100776B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained contactStore];

  if (v3)
  {
    v4 = objc_alloc_init(CNSaveRequest);
    [v4 updateContact:*(a1 + 32)];
    v36 = 0;
    LODWORD(v5) = [v3 executeSaveRequest:v4 error:&v36];
    v6 = v36;
    v7 = sub_10006515C();
    v8 = v7;
    if (v6)
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v9 = OS_LOG_TYPE_INFO;
    }

    if (!os_log_type_enabled(v7, v9))
    {
LABEL_27:

      if (!v6)
      {
        v27 = objc_loadWeakRetained((a1 + 48));
        [v27 setNeedsAddressCollection];
      }

      v28 = *(a1 + 40);
      if (v28)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100776FB8;
        v32[3] = &unk_101661678;
        v34 = v28;
        v35 = v5;
        v33 = v6;
        dispatch_async(&_dispatch_main_q, v32);
      }

      goto LABEL_32;
    }

    type = v9;
    v10 = objc_loadWeakRetained((a1 + 48));
    v11 = &selRef__updatePIPLayout;
    v31 = v5;
    if (!v10)
    {
      v16 = @"<nil>";
LABEL_16:

      v18 = v16;
      v5 = *(a1 + 32);
      if (!v5)
      {
        v24 = @"<nil>";
        goto LABEL_24;
      }

      v29 = v18;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = v11[456];
      if (objc_opt_respondsToSelector())
      {
        v22 = [v5 performSelector:v21];
        v23 = v22;
        if (v22 && ![v22 isEqualToString:v20])
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v5, v23];

          goto LABEL_22;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v20, v5];
LABEL_22:

      v18 = v29;
LABEL_24:

      v25 = @"NO";
      *buf = 138544130;
      v40 = v18;
      LOBYTE(v5) = v31;
      if (v31)
      {
        v25 = @"YES";
      }

      v41 = 2114;
      v42 = v24;
      v43 = 2114;
      v44 = v25;
      v45 = 2114;
      v46 = v6;
      v26 = v25;
      _os_log_impl(&_mh_execute_header, v8, type, "[%{public}@] addressBookUpdateMe updateMe with %{public}@ (success: %{public}@, error: %{public}@)", buf, 0x2Au);

      goto LABEL_27;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v10 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v10, v15];

        goto LABEL_12;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v10];
LABEL_12:

    v11 = &selRef__updatePIPLayout;
    goto LABEL_16;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100776FA0;
    block[3] = &unk_101661760;
    v38 = v17;
    dispatch_async(&_dispatch_main_q, block);
    v4 = v38;
LABEL_32:
  }
}

void sub_1007770C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained contactStore];

  if (v3)
  {
    v4 = objc_alloc_init(CNSaveRequest);
    [v4 addContact:*(a1 + 32) toContainerWithIdentifier:0];
    v64 = 0;
    LODWORD(v5) = [v3 executeSaveRequest:v4 error:&v64];
    v6 = v64;
    v7 = sub_10006515C();
    v8 = v7;
    if (v6)
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v9 = OS_LOG_TYPE_INFO;
    }

    if (!os_log_type_enabled(v7, v9))
    {
      goto LABEL_27;
    }

    v10 = objc_loadWeakRetained((a1 + 48));
    v53 = v4;
    v55 = v3;
    v51 = v5;
    if (!v10)
    {
      v15 = @"<nil>";
LABEL_16:

      v17 = v15;
      v18 = *(a1 + 32);
      if (!v18)
      {
        v23 = @"<nil>";
        goto LABEL_24;
      }

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      if (objc_opt_respondsToSelector())
      {
        v21 = [v18 performSelector:"accessibilityIdentifier"];
        v22 = v21;
        if (v21 && ![v21 isEqualToString:v20])
        {
          v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

          goto LABEL_22;
        }
      }

      v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_22:

LABEL_24:
      v24 = @"NO";
      *buf = 138544130;
      v68 = v17;
      LODWORD(v5) = v51;
      if (v51)
      {
        v24 = @"YES";
      }

      v69 = 2114;
      v70 = v23;
      v71 = 2114;
      v72 = v24;
      v73 = 2114;
      v74 = v6;
      v25 = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}@] addressBookCreateMe addContact with %{public}@ (success: %{public}@, error: %{public}@)", buf, 0x2Au);

      v4 = v53;
      v3 = v55;
LABEL_27:

      if (!v5)
      {
        LOBYTE(v27) = 0;
        v28 = 0;
LABEL_53:
        if (!(v6 | v28))
        {
          v47 = objc_loadWeakRetained((a1 + 48));
          [v47 setNeedsAddressCollection];
        }

        v48 = *(a1 + 40);
        if (v48)
        {
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1007777E4;
          v57[3] = &unk_101630030;
          v60 = v48;
          v61 = v5;
          v62 = v27;
          v58 = v6;
          v59 = v28;
          dispatch_async(&_dispatch_main_q, v57);
        }

        goto LABEL_58;
      }

      v26 = *(a1 + 32);
      v63 = 0;
      LODWORD(v27) = [v3 setMeContact:v26 error:&v63];
      v28 = v63;
      v29 = sub_10006515C();
      v30 = v29;
      if (v28)
      {
        v31 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v31 = OS_LOG_TYPE_INFO;
      }

      type = v31;
      if (!os_log_type_enabled(v29, v31))
      {
LABEL_52:

        goto LABEL_53;
      }

      v54 = v4;
      v32 = objc_loadWeakRetained((a1 + 48));
      v33 = &selRef__updatePIPLayout;
      v56 = v3;
      v49 = v27;
      if (!v32)
      {
        v38 = @"<nil>";
LABEL_41:

        v39 = v38;
        v27 = *(a1 + 32);
        if (!v27)
        {
          v44 = @"<nil>";
          goto LABEL_49;
        }

        v52 = v5;
        v40 = objc_opt_class();
        v5 = NSStringFromClass(v40);
        v41 = v33[456];
        if (objc_opt_respondsToSelector())
        {
          v42 = [v27 performSelector:v41];
          v43 = v42;
          if (v42 && ![v42 isEqualToString:v5])
          {
            v44 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v27, v43];

            goto LABEL_47;
          }
        }

        v44 = [NSString stringWithFormat:@"%@<%p>", v5, v27];
LABEL_47:

        LOBYTE(v5) = v52;
LABEL_49:

        v45 = @"NO";
        *buf = 138544130;
        v68 = v39;
        LOBYTE(v27) = v49;
        if (v49)
        {
          v45 = @"YES";
        }

        v69 = 2114;
        v70 = v44;
        v71 = 2114;
        v72 = v45;
        v73 = 2114;
        v74 = v28;
        v46 = v45;
        _os_log_impl(&_mh_execute_header, v30, type, "[%{public}@] addressBookCreateMe setMeContact with %{public}@ (success: %{public}@, error: %{public}@)", buf, 0x2Au);

        v4 = v54;
        v3 = v56;
        goto LABEL_52;
      }

      v34 = v5;
      v35 = objc_opt_class();
      v5 = NSStringFromClass(v35);
      if (objc_opt_respondsToSelector())
      {
        v36 = [v32 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v5])
        {
          v38 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v32, v37];

          goto LABEL_38;
        }
      }

      v38 = [NSString stringWithFormat:@"%@<%p>", v5, v32];
LABEL_38:

      LOBYTE(v5) = v34;
      v33 = &selRef__updatePIPLayout;
      goto LABEL_41;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_12;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_12:

    goto LABEL_16;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007777CC;
    block[3] = &unk_101661760;
    v66 = v16;
    dispatch_async(&_dispatch_main_q, block);
    v6 = v66;
LABEL_58:
  }
}

uint64_t sub_1007777E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 57);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = *(a1 + 40);
  }

  return (*(v2 + 16))(v2, v3 & 1, v4);
}

void sub_10077791C(uint64_t a1)
{
  v2 = sub_10006515C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
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
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] initialising CN properties to fetch", buf, 0xCu);
  }

  v9 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v15[0] = v9;
  v10 = +[CNContactContentViewController descriptorForRequiredKeys];
  v15[1] = v10;
  v11 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v15[2] = v11;
  v12 = +[CNContactVCardSerialization descriptorForRequiredKeys];
  v15[3] = v12;
  v15[4] = CNContactNamePrefixKey;
  v15[5] = CNContactGivenNameKey;
  v15[6] = CNContactMiddleNameKey;
  v15[7] = CNContactFamilyNameKey;
  v15[8] = CNContactNameSuffixKey;
  v15[9] = CNContactNicknameKey;
  v15[10] = CNContactPhoneticGivenNameKey;
  v15[11] = CNContactPhoneticMiddleNameKey;
  v15[12] = CNContactPhoneticFamilyNameKey;
  v15[13] = CNContactOrganizationNameKey;
  v15[14] = CNContactTypeKey;
  v15[15] = CNContactPhoneNumbersKey;
  v15[16] = CNContactEmailAddressesKey;
  v15[17] = CNContactPostalAddressesKey;
  v15[18] = CNContactUrlAddressesKey;
  v15[19] = CNContactImageDataAvailableKey;
  v15[20] = CNContactImageDataKey;
  v15[21] = CNContactThumbnailImageDataKey;
  v13 = [NSArray arrayWithObjects:v15 count:22];
  v14 = qword_10195D198;
  qword_10195D198 = v13;
}

void sub_100777E68(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _deferredAddressCollectionTimerFired:v5];
  }
}

void sub_1007786E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void sub_100778728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setNeedsAddressCollection];
    WeakRetained = v2;
  }
}

NSDictionary *__cdecl sub_100779E3C(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v2 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  v4 = [v2 copy];

  return v4;
}

void sub_10077A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10077A1A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10077A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10077A56C(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v28 = a2;
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v10 = [v28 waypointRequest];
    v11 = [v28 waypointPlaceholder];
    v12 = [v11 displayableMarker];

    [v10 coordinate];
    v14 = v13;
    v16 = v15;
    if ([v10 isCurrentLocation])
    {
      v17 = [GEOLocation alloc];
      GEOLocationCoordinate2DFromCLLocationCoordinate2D();
      v18 = [v17 initWithGEOCoordinate:1 isUserLocation:?];
      v19 = [GEOComposedWaypoint alloc];
      v20 = v18;
      v21 = 1;
    }

    else
    {
      if (v12)
      {
        v23 = [GEOComposedWaypoint alloc];
        v18 = [v12 mapItem];
        v24 = [v18 _geoMapItem];
        v22 = [v23 initWithMapItem:v24];

        goto LABEL_8;
      }

      v30.latitude = v14;
      v30.longitude = v16;
      if (!CLLocationCoordinate2DIsValid(v30))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a5 = 1;
        goto LABEL_12;
      }

      v27 = [GEOLocation alloc];
      GEOLocationCoordinate2DFromCLLocationCoordinate2D();
      v18 = [v27 initWithGEOCoordinate:0 isUserLocation:?];
      v19 = [GEOComposedWaypoint alloc];
      v20 = v18;
      v21 = 0;
    }

    v22 = [v19 initWithLocation:v20 isCurrentLocation:v21];
LABEL_8:

    v10 = v22;
    goto LABEL_9;
  }

  v10 = v8;
LABEL_9:
  v25 = [[GEOCompanionWaypoint alloc] initWithComposedWaypoint:v10];
  if (([v25 isCurrentLocation] & 1) == 0)
  {
    v26 = [RoutePlanningSession mostAppropriateNameForWaypointWithRequest:v28 composedWaypoint:v10];
    [v25 setSearchString:v26];
  }

  [*(a1 + 32) addObject:v25];

LABEL_12:
}

void sub_10077ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10077ADF0(uint64_t a1)
{
  v2 = sub_1000224F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained sessionContext];
    v5 = [v4 simpleDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "-_sendUpdatedResponse completed (context:%@)", &v6, 0xCu);
  }
}

void sub_10077B10C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 64) snapshot];
    v3 = [v2 deltaFromSnapshot:*(*(a1 + 32) + 72)];
    objc_storeStrong((*(a1 + 32) + 72), v2);
    v4 = [v3 routeRevisionsChanged];
    v5 = sub_1000224F8();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 40) uniqueRouteID];
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Route %{public}@ updated clustered ride selections, will trigger response update", &v9, 0xCu);
      }

      [*(a1 + 32) _sendUpdatedResponse];
    }

    else
    {
      if (v6)
      {
        v8 = [*(a1 + 40) uniqueRouteID];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Route %{public}@ updated clustered ride selections, but revision IDs didn't change from last sent to watch", &v9, 0xCu);
      }
    }
  }
}

id sub_10077B430(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = [*(a1 + 32) currentTransportType];
  if (v2 == result)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v4 _updateResponseWithRouteCollectionResult:v5];
  }

  return result;
}

void sub_10077B51C(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v3 = [v2 companionContext];
  [*(*(a1 + 32) + 56) setCompanionRouteContext:v3];

  v4 = [*(a1 + 40) currentTransportType];
  if ((v4 - 1) > 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_101216100[(v4 - 1)];
  }

  [*(*(a1 + 32) + 56) setTransportType:v5];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) currentRouteCollectionResult];
  [v6 _updateResponseWithRouteCollectionResult:v7];
}

id sub_10077B67C(uint64_t a1)
{
  result = [*(a1 + 32) isSuccess];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _updateDestinationName];
  }

  return result;
}

void sub_10077B73C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    [*(a1 + 32) setDestinationName:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 32);

    [v3 _updateDestinationName];
  }
}

void sub_10077B968(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ([*(a1 + 40) routePlanningSession], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v4 = sub_1000224F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Observed session change.  Will not teardown, session is: %@", &v9, 0xCu);
    }
  }

  else
  {
    v3 = sub_1000224F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Observed session change.  Will teardown NanoMaps' route planning", &v9, 2u);
    }

    [*(a1 + 40) _clearRoutePreviews];
  }

  v6 = *(a1 + 32);
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

  [*(a1 + 40) setRoutePlanningSession:v8];
}

id sub_10077BED8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueRouteID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10077C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_10077C568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 routes];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v10 = [v3 currentRoute];

  v7 = [v10 uniqueRouteID];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_10077C5FC(uint64_t a1)
{
  v2 = _geo_NSErrorXPCSafeRepresentationCopy();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

GEOComposedRoute *__cdecl sub_10077C648(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v4 = a2;
  v5 = v4;
  if (a3 <= 4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_10077C9AC(id a1, MapsSession *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

void sub_10077CD5C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) currentSession];

  if (v2)
  {
    v3 = *(*(a1 + 32) + 96);

    [v3 popUntil:&stru_1016288E8];
  }
}

BOOL sub_10077CDC4(id a1, MapsSession *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

void sub_10077D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10077D180(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 uniqueRouteID];
  v9 = [v8 isEqual:a1[4]];

  if (v9)
  {
    v10 = sub_1000224F8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 transportType];
      if (v11 >= 7)
      {
        v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
      }

      else
      {
        v12 = *(&off_101628A90 + v11);
      }

      v13 = [v7 uniqueRouteID];
      *buf = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Selecting %@ route %@ at index %lu", buf, 0x20u);
    }

    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10077DE20(uint64_t a1)
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];

  [v4 viewController:0 doDirectionItem:*(a1 + 32) withUserInfo:*(a1 + 40)];
}

void sub_10077DEA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = sub_1000224F8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "XPC connection interrupted, checkinForRoutePlanning on connection: %@", &v6, 0xCu);
    }

    v4 = [WeakRetained[2] remoteObjectProxy];
    [v4 checkinForRoutePlanning];
  }

  else if (v5)
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "XPC connection interrupted, NanoCompanionController is gone: %@", &v6, 0xCu);
  }
}

id sub_10077E214()
{
  v0 = objc_opt_class();

  return [v0 initializePairedDeviceRegistry];
}

void sub_10077E428(uint64_t a1)
{
  v2 = [*(a1 + 32) mapsActivityDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) mapsActivityDelegate];
    [v4 mapsActivityViewControllerPrint:*(a1 + 32)];
  }
}

void sub_10077E5E4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsActivityViewController");
  v2 = qword_10195D200;
  qword_10195D200 = v1;
}

void sub_10077E744(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionHistoricalLocationAccuracyMonitor");
  v2 = qword_10195D210;
  qword_10195D210 = v1;
}

void sub_10077F6C8(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 kind] == 6)
  {
    v8 = [a1[4] itemIdentifiersInSectionWithIdentifier:v7];
    v9 = [a1[5] logicController];
    v10 = [v9 itemsForSectionAtIndex:a3];

    v11 = [v10 subarrayWithRange:{objc_msgSend(v8, "count"), objc_msgSend(a1[6], "count")}];
    [a1[4] appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:v7];
    v12 = a1[4];
    v15 = v7;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [v12 reloadSectionsWithIdentifiers:v13];

    v14 = [a1[5] dataSource];
    [v14 applySnapshot:a1[4] animatingDifferences:0];

    *a4 = 1;
  }
}

void sub_10077F944(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [v5 configuration];
    v7 = v12;

    if (v7 == 3)
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) logicController];
      v10 = [v9 itemsForSectionAtIndex:a3];
      [v8 addObjectsFromArray:v10];
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }
}

void sub_10077FF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10077FF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained filterDataFetchFinished];
    WeakRetained = v2;
  }
}

void sub_1007801B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007801C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007801E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    [v7 configuration];
    v9 = v15;

    if (v9 == 1)
    {
      v10 = [*(a1 + 32) logicController];
      v11 = [v10 itemsForSectionAtIndex:a3];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *a4 = 1;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }
}

void sub_1007807D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007807E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    [v7 configuration];
    v9 = v11;

    if (v9 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }
}

void sub_100780D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 logicController];
  v7 = [v8 itemsForSectionAtIndex:a3];
  [v4 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:v6];
}

void sub_100780F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100780F78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained logicController];
  v12 = [v11 allSections];
  v13 = [v12 objectAtIndex:{objc_msgSend(v9, "section")}];

  v14 = [v13 sectionTitle];
  if (v14)
  {
    v15 = +[GuidesGenericSectionHeader reuseIdentifier];
    v16 = [v8 isEqualToString:v15];

    if (v16)
    {
      v17 = objc_loadWeakRetained((a1 + 40));
      v18 = [v17 collectionView];
      v19 = +[GuidesGenericSectionHeader reuseIdentifier];
      v20 = +[GuidesGenericSectionHeader reuseIdentifier];
      v14 = [v18 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v20 forIndexPath:v9];

      v21 = [NSAttributedString alloc];
      v22 = [v13 sectionTitle];
      v23 = [v21 initWithString:v22 attributes:*(a1 + 32)];

      if ([v13 kind] == 2 && (v24 = objc_loadWeakRetained((a1 + 40)), objc_msgSend(v24, "apiController"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isCuratedGuidesHome"), v25, v24, (v26 & 1) == 0))
      {
        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"More [City Guides Section]" value:@"localized string not found" table:0];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100781244;
        v30[3] = &unk_101661B98;
        objc_copyWeak(&v31, (a1 + 40));
        [v14 configureWithTitle:v23 actionButtonTitle:v28 actionHandler:v30];

        objc_destroyWeak(&v31);
      }

      else
      {
        [v14 configureWithTitle:v23];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

void sub_100781244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained analyticsManager];
  [v3 guidesHomeCityGuidesMoreButtonTapped];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 routingDelegate];
  [v4 routeToCitySelector];
}

void sub_1007813C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_1007813F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained logicController];
  v9 = [v8 sectionAtIndex:{objc_msgSend(v6, "section")}];

  if (!v9)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_8;
  }

  [v9 configuration];

  if (v34 <= 3)
  {
    if (v34 <= 1)
    {
      if (v34)
      {
        if (v34 != 1)
        {
          goto LABEL_24;
        }

        v10 = CollectionsFilterCell;
        goto LABEL_21;
      }

LABEL_8:
      v11 = [GuidesHomeHeaderCell reuseIdentifier:v33];
      v12 = [v5 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];
      v13 = objc_loadWeakRetained((a1 + 40));
      [v13 setHeaderCell:v12];

      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = [v14 logicController];
      v16 = [v15 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];
      v17 = [v16 firstObject];

      if (v17)
      {
        v18 = objc_loadWeakRetained((a1 + 40));
        v19 = [v18 headerCell];
        v20 = [*(a1 + 32) routingDelegate];
        [v19 configureWithGuidesHomeHeaderViewModel:v17 delegate:v20];
      }

      v21 = objc_loadWeakRetained((a1 + 40));
      WeakRetained = [v21 headerCell];
      goto LABEL_22;
    }

    if (v34 == 2)
    {
      v10 = MKPlaceCompactCollectionCell;
    }

    else
    {
      v10 = MKPlaceCollectionCell;
    }

LABEL_21:
    v29 = [(__objc2_class *)v10 reuseIdentifier];
    WeakRetained = [v5 dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:v6];

    v30 = objc_loadWeakRetained((a1 + 40));
    v31 = [v30 logicController];
    v17 = [v31 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];

    v21 = [v17 objectAtIndex:{objc_msgSend(v6, "item")}];
    [WeakRetained configureWithModel:v21];
LABEL_22:

    goto LABEL_23;
  }

  if (v34 <= 5)
  {
    if (v34 != 4)
    {
      v22 = +[TwoLineCollectionViewListCell identifier];
      WeakRetained = [v5 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v6];

      v23 = objc_loadWeakRetained((a1 + 40));
      v24 = [v23 logicController];
      v17 = [v24 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];

      v25 = [v17 objectAtIndex:{objc_msgSend(v6, "item")}];
      [WeakRetained setViewModel:v25];

      [WeakRetained updateLeadingSpace:0.0];
      goto LABEL_23;
    }

LABEL_19:
    v10 = PlaceCollectionListCell;
    goto LABEL_21;
  }

  if (v34 == 6)
  {
    goto LABEL_19;
  }

  if (v34 != 7)
  {
    goto LABEL_24;
  }

  v26 = objc_loadWeakRetained((a1 + 40));
  v27 = [v26 logicController];
  v28 = [v27 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];
  v17 = [v28 firstObject];

  WeakRetained = [v5 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v6];
  [WeakRetained startedLoadingBatch];
LABEL_23:

LABEL_24:

  return WeakRetained;
}

void sub_100781A34(uint64_t a1)
{
  *(*(a1 + 32) + 120) = 2;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PPTTest_GuidesHome_DidDisplaySections" object:*(a1 + 32)];
}

void sub_1007825FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_10078284C(uint64_t a1, void *a2, void *a3)
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

void sub_100782E28(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObject:&OBJC_PROTOCOL___ChromeNavigationDisplayDelegate];
  v2 = qword_10195D220;
  qword_10195D220 = v1;
}

MapsAppTest *__cdecl sub_10078395C(id a1, NSString *a2, MapsAppTesting *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([(NSString *)v6 rangeOfString:@"rpt"]== 0)
  {
    v9 = off_1015F63D8;
    goto LABEL_11;
  }

  if ([(NSString *)v6 rangeOfString:@"lookAround"]== 0)
  {
    v9 = off_1015F6378;
    goto LABEL_11;
  }

  if ([(NSString *)v6 rangeOfString:@"searchHome"]== 0)
  {
    v9 = off_1015F6458;
    goto LABEL_11;
  }

  if ([(NSString *)v6 rangeOfString:@"placecard"]== 0)
  {
    v9 = off_1015F6398;
    goto LABEL_11;
  }

  if ([(NSString *)v6 hasPrefix:@"search"])
  {
    v9 = off_1015F6450;
LABEL_11:
    v10 = [objc_alloc(*v9) initWithApplication:v7 testName:v6 options:v8];
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

void sub_100784358(uint64_t a1)
{
  [*(a1 + 32) stopPinchingWithFocusPoint:{*(a1 + 48), *(a1 + 56)}];
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@zoomLookAround]", buf, 2u);
  }

  [*(a1 + 40) finishedSubTest:@"zoomLookAround"];
  [*(a1 + 32) disableTestStatistics];
  v3 = [*(a1 + 32) testStatistics];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        v10 = [*(a1 + 40) results];
        v11 = [NSString stringWithFormat:@"sub:loadingScene:%@", v8];
        [v10 setObject:v9 forKey:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) resetTestStatistics];
  if ([*(a1 + 32) mapType] == 10)
  {
    v12 = [*(a1 + 32) tileStatistics];
    if (v12)
    {
      v13 = [*(a1 + 40) results];
      [v13 addEntriesFromDictionary:v12];
    }
  }

  v14 = sub_100798614();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[self finishedTest]", buf, 2u);
  }

  v15 = *(*(a1 + 40) + 72);
  v16 = +[VKDebugSettings sharedSettingsExt];
  [v16 setLayoutContinuously:v15];

  [*(a1 + 40) finishedTest];
}

void sub_100784820(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798614();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@zoomLookAroundEnter]", buf, 2u);
  }

  [*(a1 + 32) finishedSubTest:@"zoomLookAroundEnter"];
  v5 = [v3 object];

  v6 = [v5 lookAroundView];

  v7 = [v6 lookAroundView];
  [*(a1 + 32) setupForVKTestWithMapView:v7];
  [v7 enableTestStatistics];
  [v6 bounds];
  v9 = v8;
  [v6 bounds];
  v11 = v10;
  v12 = sub_100798614();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@zoomLookAround]", buf, 2u);
  }

  [*(a1 + 32) startedSubTest:@"zoomLookAround"];
  v13 = MKLookAroundViewDidBecomeFullyDrawnNotification;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100784A10;
  v16[3] = &unk_101628D80;
  v19 = v9 * 0.5;
  v20 = v11 * 0.5;
  v14 = *(a1 + 32);
  v17 = v7;
  v18 = v14;
  v15 = v7;
  [PPTNotificationCenter addOnceObserverForName:v13 object:0 usingBlock:v16];
}

void sub_100784A10(uint64_t a1)
{
  [*(a1 + 32) startPinchingWithFocusPoint:{*(a1 + 48), *(a1 + 56)}];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  block[2] = sub_100784AD8;
  block[3] = &unk_10164C698;
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100784F20(uint64_t a1)
{
  [*(a1 + 32) tapAtPoint:{*(a1 + 56), *(a1 + 64)}];
  v2 = MKLookAroundViewDidBecomeFullyDrawnNotification;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078500C;
  v5[3] = &unk_101628D30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v9 = *(a1 + 56);
  v11 = *(a1 + 80);
  v8 = *(a1 + 32);
  v10 = *(a1 + 72);
  [PPTNotificationCenter addOnceObserverForName:v2 object:0 usingBlock:v5];
}

id sub_10078500C(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceNow];
  v2 = (*(a1 + 80) - 1);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72) + v6 * -1000.0;
  v8 = *(a1 + 56);

  return [v3 tap:v2 countdown:v4 mapView:0 totalTimeInMS:v8 firstTap:{v5, v7}];
}

void sub_100785350(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 lookAroundView];

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100785424;
  v7[3] = &unk_101661A40;
  v7[4] = v5;
  v8 = v4;
  v9 = *(a1 + 40);
  v6 = v4;
  [v5 onLookAroundView:v6 didBecomeAdequatelyDrawnCallback:v7];
}

void sub_100785424(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007854D8;
  v4[3] = &unk_101661A40;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 onLookAroundView:v5 didCompletionPostTransitionAnimation:v4];
}

void sub_1007854D8(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100785574;
  v4[3] = &unk_101661A90;
  v4[4] = v2;
  v5 = v1;
  [v2 expandLookAroundToFullscreen:1 withLookAroundView:v5 mapItem:v3 completionBlock:v4];
}

void sub_100785574(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100785604;
  v3[3] = &unk_101661A90;
  v3[4] = v2;
  v4 = v1;
  [v2 onLookAroundView:v4 didCompletionPostTransitionAnimation:v3];
}

void sub_100785604(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"navLookAroundEnter"];
  v2 = [*(a1 + 40) lookAroundView];
  [*(a1 + 32) setupForVKTestWithMapView:v2];
  [v2 enableTestStatistics];
  [*(a1 + 40) bounds];
  v4 = v3;
  [*(a1 + 40) bounds];
  v6 = v5;
  v7 = [*(a1 + 32) options];
  v8 = [v7 _maptest_lookAroundOffsetTapPositionX];

  v9 = [*(a1 + 32) options];
  v10 = [v9 _maptest_lookAroundOffsetTapPositionY];

  v11 = [*(a1 + 32) options];
  v12 = [v11 _maptest_lookAroundNavigationTaps];

  if (v12 < 1)
  {
    v12 = 5;
  }

  v13 = v8 + v4 * 0.5;
  v14 = v10 + v6 * 0.5;
  v15 = [*(a1 + 32) mainMKMapView];
  v16 = [v15 _mapLayer];
  [v16 setHidden:1];

  [*(a1 + 32) startedSubTest:@"navLookAround"];
  if ([*(a1 + 40) isLoading])
  {
    v17 = MKLookAroundViewDidBecomeFullyDrawnNotification;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100785864;
    v27[3] = &unk_101628D08;
    v18 = *(a1 + 32);
    *&v28[1] = v13;
    *&v28[2] = v14;
    v29 = v12;
    v19 = v28;
    v27[4] = v18;
    v28[0] = v2;
    v20 = v2;
    [PPTNotificationCenter addOnceObserverForName:v17 object:0 usingBlock:v27];
  }

  else
  {
    v21 = dispatch_time(0, 1000000000);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100785920;
    v24[3] = &unk_101628CE0;
    v22 = *(a1 + 32);
    *&v25[1] = v13;
    *&v25[2] = v14;
    v26 = v12;
    v19 = v25;
    v24[4] = v22;
    v25[0] = v2;
    v23 = v2;
    dispatch_after(v21, &_dispatch_main_q, v24);
  }
}

void sub_100785864(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10078593C;
  block[3] = &unk_101628CE0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100785B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100785BB8;
  v6[3] = &unk_101661A90;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 onLookAroundView:0 didCompletionPostTransitionAnimation:v6];
}

void sub_100785BB8(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"navFullScreenLookAroundEnter"];
  v2 = [*(a1 + 40) object];
  v3 = [v2 lookAroundView];

  [*(a1 + 32) startedSubTest:@"navPanLookAroundToFaceStreet"];
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100785C98;
  v6[3] = &unk_101661A90;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 panLookAroundView:v5 completion:v6];
}

void sub_100785C98(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"navPanLookAroundToFaceStreet"];
  [*(a1 + 40) bounds];
  v3 = v2;
  [*(a1 + 40) bounds];
  v5 = v4;
  v6 = [*(a1 + 32) options];
  v7 = [v6 _maptest_lookAroundOffsetTapPositionX];

  v8 = [*(a1 + 32) options];
  v9 = [v8 _maptest_lookAroundOffsetTapPositionY];

  v10 = [*(a1 + 32) options];
  v11 = [v10 _maptest_lookAroundNavigationTaps];

  if (v11 >= 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 6;
  }

  v13 = v7 + v3 * 0.5;
  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) lookAroundView];
  [v14 tap:v12 countdown:v15 mapView:1 totalTimeInMS:v13 firstTap:{v9 + v5 * 0.5, 0.0}];
}

void sub_100785EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Finished Enter", v6, 2u);
  }

  [*(a1 + 32) runFullScreenNavTestWithMapItem:v4];
}

void sub_100785FC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100798614();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@enterLookAroundPIP]", buf, 2u);
  }

  [*(a1 + 32) startedSubTest:@"enterLookAroundPIP"];
  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007860C0;
  v9[3] = &unk_101661B18;
  v9[4] = v8;
  [v8 expandLookAroundToFullscreen:0 withLookAroundView:v6 mapItem:v5 completionBlock:v9];
}

id sub_1007860C0(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@enterLookAroundPIP]", buf, 2u);
  }

  [*(a1 + 32) finishedSubTest:@"enterLookAroundPIP"];
  v3 = sub_100798614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[self finishedTest]", v5, 2u);
  }

  return [*(a1 + 32) finishedTest];
}

void sub_10078621C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100798614();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@enterLookAround]", buf, 2u);
  }

  [*(a1 + 32) startedSubTest:@"enterLookAround"];
  v8 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100786358;
  v12[3] = &unk_101660380;
  v12[4] = v8;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [v8 enterLookAroundWithLookAroundView:v11 mapItem:v10 showsFullScreen:1 completionBlock:v12];
}

id sub_100786358(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@enterLookAround]", buf, 2u);
  }

  [*(a1 + 32) finishedSubTest:@"enterLookAround"];
  v3 = *(a1 + 56);
  if (v3)
  {
    return (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
  }

  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self finishedTest]", v6, 2u);
  }

  return [*(a1 + 32) finishedTest];
}

void sub_100786598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@displayLookAround]", buf, 2u);
    }

    [*(a1 + 32) startedSubTest:@"displayLookAround"];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007866E4;
    v9[3] = &unk_101660380;
    v9[4] = v8;
    v10 = v5;
    v12 = *(a1 + 40);
    v11 = v6;
    [v8 onLookAroundView:v10 didBecomeAdequatelyDrawnCallback:v9];
  }

  else
  {
    [*(a1 + 32) failedTest];
  }
}

void sub_1007866E4(id *a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@displayLookAround]", buf, 2u);
  }

  [a1[4] finishedSubTest:@"displayLookAround"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100786850;
  v10[3] = &unk_101661B18;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007868CC;
  v7[3] = &unk_101660380;
  v6 = *(a1 + 2);
  v11 = a1[4];
  v3 = *(&v6 + 1);
  v4 = a1[7];
  *&v5 = a1[6];
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v11 storefrontWillMoveBlock:v10 didMoveBlock:v7];
}

id sub_100786850(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@moveStorefront]", v4, 2u);
  }

  return [*(a1 + 32) startedSubTest:@"moveStorefront"];
}

void sub_1007868CC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007869A8;
  v8[3] = &unk_101660380;
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 onLookAroundView:v2 didBecomeAdequatelyDrawnCallback:v8];
}

id sub_1007869A8(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@moveStorefront]", buf, 2u);
  }

  [*(a1 + 32) finishedSubTest:@"moveStorefront"];
  v3 = *(a1 + 56);
  if (v3)
  {
    return (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
  }

  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self finishedTest]", v6, 2u);
  }

  return [*(a1 + 32) finishedTest];
}

void sub_100786BC4(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received PPTLookAroundContainerViewControllerDidTransitionToFullscreenNotification", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100786CA4;
  v5[3] = &unk_101661760;
  v6 = *(a1 + 48);
  [v3 onLookAroundView:v4 didCompletionPostTransitionAnimation:v5];
}

uint64_t sub_100786CA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100786DEC(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received LookAroundContainerViewControllerDidAppearNotification", buf, 2u);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100786EE4;
  v5[3] = &unk_1016605F8;
  v5[4] = v4;
  v6 = v3;
  v7 = *(a1 + 48);
  [v4 onLookAroundView:v6 didBecomeAdequatelyDrawnCallback:v5];
}

void sub_100786EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100786F74;
  v3[3] = &unk_101661760;
  v4 = *(a1 + 48);
  [v1 onLookAroundView:v2 didCompletionPostTransitionAnimation:v3];
}

uint64_t sub_100786F74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100787060(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received MKLookAroundViewWillMoveToStorefrontNotification", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = MKLookAroundViewDidMoveToStorefrontNotification;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100787168;
  v5[3] = &unk_10164FAC0;
  v6 = *(a1 + 40);
  [PPTNotificationCenter addOnceObserverForName:v4 object:0 usingBlock:v5];
}

uint64_t sub_100787168(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received MKLookAroundViewDidMoveToStorefrontNotification", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100787290(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received MapsPinsDroppedForSearchResultsNotification", v4, 2u);
  }

  v3 = [*(a1 + 32) testCoordinator];
  [v3 pptTestPresentPlaceCardForSearchResult:*(a1 + 40) animated:1];
}

void sub_100787450(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798614();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received SearchSessionDidChangeSearchResultsNotification", buf, 2u);
  }

  v5 = [v3 object];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 searchInfo];
    v8 = [v7 results];
    v9 = [v8 copy];

    v10 = [v9 firstObject];
    if ([v9 count] >= 2)
    {

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v9;
      v10 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v19 = v9;
        v20 = v3;
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = [v14 mapItem];
            v16 = [v15 _shortAddress];
            v17 = [v16 isEqualToString:*(a1 + 40)];

            if (v17)
            {
              v10 = v14;

              goto LABEL_16;
            }
          }

          v10 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v9 = v19;
        v3 = v20;
      }
    }

    v18 = *(a1 + 32);
    if (v10)
    {
      [v18 selectSearchResult:v10];
      [*(a1 + 32) addObserverWithSearchString:*(a1 + 48) forDidShowPreviewBlock:*(a1 + 56)];
    }

    else
    {
      [v18 failedTest];
    }
  }

  else
  {
    [*(a1 + 32) failedTest];
  }
}

void sub_100787758(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"PPTLookAroundChromeOverlayLookAroundViewUserInfoKey"];

  v5 = [v4 mapItem];
  v6 = v5;
  if (v4 && (v7 = *(a1 + 32), [v5 name], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "containsString:", v8), v8, v7))
  {
    v9 = sub_100798614();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v6 name];
      v16 = 138413314;
      v17 = v11;
      v18 = 2048;
      v19 = v4;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v6;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received PPTLookAroundChromeOverlayDidShowLookAroundPreviewNotificationName lookAroundView=<%@:%p>, mapItem=<%@:%p> (%@)", &v16, 0x34u);
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, v4, v6);
    }
  }

  else
  {
    [*(a1 + 40) addObserverWithSearchString:*(a1 + 32) forDidShowPreviewBlock:*(a1 + 48)];
  }
}

uint64_t sub_1007879CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100787B6C(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received MKLookAroundViewDidBecomeAdequatelyDrawnNotification", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100787F14(uint64_t a1)
{
  v2 = [*(a1 + 32) testName];
  v3 = [v2 hasPrefix:@"lookAroundBrowse"];

  if (v3)
  {
    v4 = sub_100798614();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[self runBrowseTest]", buf, 2u);
    }

    [*(a1 + 32) runBrowseTest];
  }

  else
  {
    v5 = [*(a1 + 32) testName];
    v6 = [v5 hasPrefix:@"lookAroundEnter"];

    if (v6)
    {
      v7 = sub_100798614();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self runEnterTest]", v27, 2u);
      }

      [*(a1 + 32) runEnterTest];
    }

    else
    {
      v8 = [*(a1 + 32) testName];
      v9 = [v8 hasPrefix:@"lookAroundExplore"];

      if (v9)
      {
        v10 = sub_100798614();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[self runExploreTest]", v26, 2u);
        }

        [*(a1 + 32) runExploreTest];
      }

      else
      {
        v11 = [*(a1 + 32) testName];
        v12 = [v11 hasPrefix:@"lookAroundNav"];

        v13 = *(a1 + 32);
        if (v12)
        {

          [v13 runNavTest];
        }

        else
        {
          v14 = [v13 testName];
          v15 = [v14 hasPrefix:@"lookAroundZoom"];

          v16 = *(a1 + 32);
          if (v15)
          {

            [v16 runZoomTest];
          }

          else
          {
            v17 = [v16 testName];
            v18 = [v17 hasPrefix:@"lookAroundPan"];

            v19 = *(a1 + 32);
            if (v18)
            {

              [v19 runPanTest];
            }

            else
            {
              v20 = [v19 testName];
              v21 = [v20 hasPrefix:@"lookAroundExit"];

              v22 = *(a1 + 32);
              if (v21)
              {

                [v22 runExitTest];
              }

              else
              {
                v23 = [v22 testName];
                v24 = [v23 hasPrefix:@"lookAroundPlacecardEnterNavExit"];

                if (v24)
                {
                  v25 = *(a1 + 32);

                  [v25 runEnterExploreNavExitTest];
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1007886F0(id a1)
{
  v1 = qword_10195D230;
  qword_10195D230 = &off_1016ECA58;
}

void sub_100789698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007896C0(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10078994C;
  v11[3] = &unk_10164D610;
  objc_copyWeak(&v14, (a1 + 32));
  v12 = v7;
  v13 = v8;
  v15 = a4;
  v9 = v8;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
}

void sub_1007897A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;
    if (v11)
    {
      if (*(a1 + 48) == 1)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100789928;
        v14[3] = &unk_101628E58;
        v12 = *(a1 + 32);
        v17 = *(a1 + 40);
        v15 = v7;
        v16 = v8;
        [UGCNearbyPhotosAvailibility numberOfPhotosTakenForMapItem:v12 lastVisitedDate:v11 completion:v14];

LABEL_12:
        goto LABEL_13;
      }

      v13 = *(*(a1 + 40) + 16);
    }

    else
    {
      v13 = *(*(a1 + 40) + 16);
    }

    v13();
    goto LABEL_12;
  }

  (*(*(a1 + 40) + 16))();
LABEL_13:
}

void sub_10078994C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setVisitStartDate:*(a1 + 32) visitEndDate:*(a1 + 40) hasNearbyPhotos:*(a1 + 56)];
}

uint64_t sub_10078A958()
{
  v0 = 1;
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DebugPanelEnabled", @"com.apple.Maps", &keyExistsAndHasValidFormat);
  v2 = +[GEOPlatform sharedPlatform];
  if (([v2 isInternalInstall] & 1) == 0)
  {
    v0 = CFPreferencesAppValueIsForced(@"DebugPanelEnabled", @"com.apple.Maps") != 0;
  }

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return v4 & v0;
}

void sub_10078BC30(id a1)
{
  v1 = [PersistenceManager alloc];
  v4 = [MSPMapsPaths pathsAtLocation:0];
  v2 = [(PersistenceManager *)v1 initWithPersistenceData:v4];
  v3 = qword_10195D250;
  qword_10195D250 = v2;
}

void sub_10078C614(uint64_t a1)
{
  v2 = [*(a1 + 32) _completionOperationForPhotoInfo:*(a1 + 40) downloadToken:*(a1 + 48)];
  v3 = v2;
  if (v2)
  {
    [v2 cancel];
    v4 = sub_100799780();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 name];
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Cancelled completion operation %@", &v13, 0xCu);
    }

    v6 = [v3 dependencies];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = sub_100799780();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 56);
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Found download operation with handle %@", &v13, 0xCu);
      }

      [v3 removeDependency:v7];
      if ([*(a1 + 32) _canCancelDownloadOperation:v7])
      {
        v10 = sub_100799780();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 56);
          v13 = 138412290;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Cancelling download operation with handle %@", &v13, 0xCu);
        }

        [v7 cancel];
      }
    }
  }

  else
  {
    v7 = sub_100799780();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did not find completion operation %@", &v13, 0xCu);
    }
  }
}

void sub_10078CA58(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] downloadIdentifier];
  v4 = [v2 _cachedImageForDownloadIdentifier:v3];

  if (v4)
  {
    v5 = sub_100799780();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a1[5] downloadIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found cached image for identifier %@", &buf, 0xCu);
    }

    v7 = a1[6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10078D00C;
    block[3] = &unk_101661090;
    v47 = a1[8];
    v46 = v4;
    dispatch_async(v7, block);

    v8 = v47;
  }

  else
  {
    v9 = [a1[4] _currentDownloadOperationForPhotoInfo:a1[5]];
    v10 = sub_100799780();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v12 = [(UGCPhotoDownloadOperation *)v9 name];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attaching to an existing download operation with handle %@", &buf, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v13 = [a1[5] downloadIdentifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Creating new download operation for identifier %@", &buf, 0xCu);
      }

      objc_initWeak(&location, a1[4]);
      v14 = [UGCPhotoDownloadOperation alloc];
      v15 = a1[5];
      v16 = *(a1[4] + 2);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10078D028;
      v41[3] = &unk_101628EE8;
      objc_copyWeak(&v43, &location);
      v42 = a1[5];
      v9 = [(UGCPhotoDownloadOperation *)v14 initWithPhotoInfo:v15 completionQueue:v16 completion:v41];
      [(UGCPhotoDownloadOperation *)v9 setQualityOfService:25];
      v17 = [a1[5] downloadIdentifier];
      *&buf = @"DOWNLOAD_OPERATION";
      *(&buf + 1) = v17;
      v18 = [NSArray arrayWithObjects:&buf count:2];
      v19 = [v18 componentsJoinedByString:@"_"];

      [(UGCPhotoDownloadOperation *)v9 setName:v19];
      [*(a1[4] + 3) addOperation:v9];
      v20 = sub_100799780();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(UGCPhotoDownloadOperation *)v9 name];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Added download operation with handle %@", &buf, 0xCu);
      }

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10078D158;
    v36[3] = &unk_101650CD8;
    v22 = a1 + 4;
    v35 = *(a1 + 2);
    v23 = *(&v35 + 1);
    v24 = a1 + 7;
    v25 = a1[7];
    v26 = a1[6];
    *&v27 = v25;
    *(&v27 + 1) = v26;
    v37 = v35;
    v38 = v27;
    v28 = a1[8];
    v39 = v9;
    v40 = v28;
    v8 = v9;
    v29 = [NSBlockOperation blockOperationWithBlock:v36];
    [v29 setQualityOfService:25];
    v30 = [a1[5] downloadIdentifier];
    v31 = *v24;
    *&buf = @"DOWNLOAD_COMPLETION";
    *(&buf + 1) = v31;
    v49 = v30;
    v32 = v31;
    v33 = [NSArray arrayWithObjects:&buf count:3];

    v34 = [v33 componentsJoinedByString:@"_"];

    [v29 setName:v34];
    [v29 addDependency:v8];
    [*(*v22 + 4) addOperation:v29];
  }
}

void sub_10078CFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10078D028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100799780();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to download photo with error %@", &v12, 0xCu);
      }
    }

    if (v5)
    {
      v9 = [[UIImage alloc] initWithData:v5];
      if (v9)
      {
        v10 = v9;
        v11 = [*(a1 + 32) downloadIdentifier];
        [WeakRetained _updateCacheWithImage:v10 forDownloadIdentifier:v11];
      }
    }
  }
}

void sub_10078D158(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v7 = *(a1 + 32);
  v2 = *(v7 + 16);
  block[2] = sub_10078D254;
  block[3] = &unk_101650CD8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 72);
  v11 = *(a1 + 64);
  dispatch_async(v2, block);
}

void sub_10078D254(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) downloadIdentifier];
  v4 = [v2 _cachedImageForDownloadIdentifier:v3];

  v5 = sub_100799780();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) downloadIdentifier];
    v7 = *(a1 + 48);
    *&buf = @"DOWNLOAD_COMPLETION";
    *(&buf + 1) = v7;
    v18 = v6;
    v8 = v7;
    v9 = [NSArray arrayWithObjects:&buf count:3];
    v10 = [v9 componentsJoinedByString:@"_"];

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Completion operation finished %@", &buf, 0xCu);
  }

  v11 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10078D43C;
  block[3] = &unk_1016605F8;
  v16 = *(a1 + 72);
  v14 = v4;
  v15 = *(a1 + 64);
  v12 = v4;
  dispatch_async(v11, block);
}

void sub_10078D43C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) downloadError];
    (*(v1 + 16))(v1, v2, v3, 0);
  }
}

void sub_10078D61C(id a1)
{
  v1 = objc_alloc_init(UGCPhotoDownloadManager);
  v2 = qword_10195D260;
  qword_10195D260 = v1;
}

void sub_10078DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_10078DC00(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  v3 = *&a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained clearButton];
  [v5 setAlpha:v3];

  if (*(a1 + 48))
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 clearButton];
    [v7 frame];
    v9 = a1 + 32;
    *(*(*(a1 + 32) + 8) + 48) = v8 + 32.0;
  }

  else
  {
    v9 = a1 + 32;
    *(*(*(a1 + 32) + 8) + 48) = 0;
  }

  v10 = *(*v9 + 8);
  v11 = v10[4];
  v12 = v10[5];
  v13 = v10[6];
  v14 = v10[7];
  v16 = objc_loadWeakRetained((a1 + 40));
  v15 = [v16 collectionView];
  [v15 setContentInset:{v11, v12, v13, v14}];
}

void sub_10078DDA0(id a1, AllRefinementsViewModelSection *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(AllRefinementsViewModelSection *)v4 resetToDefault];
  }
}

void sub_10078DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10078DED4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 160);
  v8 = a2;
  v9 = [v7 sections];
  v10 = [v9 objectAtIndexedSubscript:a3];

  LOBYTE(a3) = [v10 compare:v8];
  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10078E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10078E070(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 type];
  if (v7 == 2)
  {
    v9 = v6;
    v11 = [v9 openAt];
    if ([v11 isSelected])
    {
    }

    else
    {
      v12 = [v9 openNow];
      v13 = [v12 isSelected];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v8 = [v6 elements];
    v9 = v8;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10078E254;
    v17 = &unk_101628F58;
    v18 = *(a1 + 32);
    v10 = &v14;
    goto LABEL_6;
  }

  if (!v7)
  {
    v8 = [v6 toggles];
    v9 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10078E210;
    v22 = &unk_101628F30;
    v23 = *(a1 + 32);
    v10 = &v19;
LABEL_6:
    [v8 enumerateObjectsUsingBlock:{v10, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
LABEL_11:
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

id sub_10078E210(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSelected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_10078E254(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSelected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10078ECB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10078ED04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained dataSource];
  v8 = [v7 layoutSectionForSectionIndex:a2 layoutEnvironment:v5];

  return v8;
}

NSDictionary *__cdecl sub_10078ED84(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  v3 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightMedium];
  [v2 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  return v2;
}

void sub_100790228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) application];
  [v1 configureForLoadingStateWithEnabledRideBookingApplication:v2];
}

void sub_100790464(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationHeadingUpdates");
  v2 = qword_10195D270;
  qword_10195D270 = v1;
}

uint64_t sub_100790734(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) accuracyAuthorization];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t sub_100790848(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) authorizationStatus];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100790FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) _console];
  [v2 updateCustomText:*(a1 + 40) textColor:*(a1 + 48)];
}

void sub_1007910D0(id a1)
{
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  v4 = [v2 mapView];

  v3 = [v4 _debugConsole];
  [v3 setCustomTextEnabled:0];
  [v3 setPageIndex:0];
}

void sub_100791260(uint64_t a1)
{
  v1 = [*(a1 + 32) _console];
  [v1 setCustomTextEnabled:1];
  [v1 setPageIndex:2];
}

void sub_100792F80(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_alloc_init(DirectionsPlanWaypoint);
  if ([v7 _mapstest_isCurrentLocationString])
  {
    v6 = *(a1 + 32);
LABEL_5:
    [(DirectionsPlanWaypoint *)v5 setWaypoint:v6];
    goto LABEL_7;
  }

  if (*(a1 + 56) == a3)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  [(DirectionsPlanWaypoint *)v5 setSearchString:v7];
LABEL_7:
  [*(a1 + 48) addPlanningWaypoint:v5];
}

uint64_t sub_10079403C(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 rangeOfString:@"roads"] != 0x7FFFFFFFFFFFFFFFLL;
    if ([v1 rangeOfString:@"labels"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = (2 * v2) | 4;
    }

    if ([v1 rangeOfString:@"polygons"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 |= 8uLL;
    }

    if ([v1 rangeOfString:@"buildings"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 |= 0x10uLL;
    }

    if ([v1 rangeOfString:@"rasters"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 |= 0x20uLL;
    }

    if ([v1 rangeOfString:@"grid"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 |= 0x40uLL;
    }

    if ([v1 rangeOfString:@"traffic"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 |= 0x80uLL;
    }

    if ([v1 rangeOfString:@"transitlines"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 | 0x100;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1007956DC(uint64_t a1)
{
  v3 = [*(a1 + 32) transitListItem];
  v2 = [*(a1 + 32) stepView];
  [*(a1 + 40) transitDirectionsCell:v2 wantsToExpandOrCollapseItem:v3];
}

void sub_1007963B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1007963D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addNearbyTransitToFavorites];
    [GEOAPPortal captureUserAction:226 target:8 value:@"NEARBY_TRANSIT"];
    WeakRetained = v2;
  }
}

void sub_100796434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] dismissedTipNotification];
    [GEOAPPortal captureUserAction:217 target:8 value:@"NEARBY_TRANSIT"];
    WeakRetained = v2;
  }
}

void sub_1007965D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1007965F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained poiEnrichmentActionDelegate];
    [v2 presentPOIEnrichmentInformedConsentWithPresentationContext:2 completion:0];

    [v3 setShowRatingsAndPhotosBanner:0];
    WeakRetained = v3;
  }
}

void sub_100796664(uint64_t a1)
{
  +[RatingRequestHomeAvailability setHasShownTipKitAlertOnProactiveTray];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setShowRatingsAndPhotosBanner:0];
    WeakRetained = v3;
  }
}

void sub_1007967DC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_10005F62C();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "Succeeded in adding Nearby Transit to Favorites via Feature Discovery";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v5 = "Was unable to add Nearby Transit to Favorites via Feature Discovery";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void sub_100796A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100796A4C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 type];
  if (result == 21)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100797C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100797CB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100797CD0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && [*(*(*(a1 + 32) + 8) + 40) _isValidURLForWebView:*(*(*(a1 + 40) + 8) + 40)])
  {
    v3 = [[SFSafariViewController alloc] initWithURL:*(*(*(a1 + 40) + 8) + 40)];
    if (!sub_10000FA08(v3))
    {
      [v3 setModalPresentationStyle:2];
    }

    [*(*(*(a1 + 32) + 8) + 40) _maps_topMostPresentViewController:v3 animated:1 completion:0];
  }
}

id sub_100798240()
{
  if (qword_10195D288 != -1)
  {
    dispatch_once(&qword_10195D288, &stru_101629140);
  }

  v1 = qword_10195D280;

  return v1;
}

void sub_100798294(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Camera");
  v2 = qword_10195D280;
  qword_10195D280 = v1;
}

id sub_1007982D8()
{
  if (qword_10195D2B8 != -1)
  {
    dispatch_once(&qword_10195D2B8, &stru_1016291A0);
  }

  v1 = qword_10195D2B0;

  return v1;
}

void sub_10079832C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollections");
  v2 = qword_10195D2B0;
  qword_10195D2B0 = v1;
}

id sub_100798370()
{
  if (qword_10195D2C8 != -1)
  {
    dispatch_once(&qword_10195D2C8, &stru_1016291C0);
  }

  v1 = qword_10195D2C0;

  return v1;
}

void sub_1007983C4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "EVOnboarding");
  v2 = qword_10195D2C0;
  qword_10195D2C0 = v1;
}

id sub_100798408()
{
  if (qword_10195D2E8 != -1)
  {
    dispatch_once(&qword_10195D2E8, &stru_101629200);
  }

  v1 = qword_10195D2E0;

  return v1;
}

void sub_10079845C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapMode");
  v2 = qword_10195D2E0;
  qword_10195D2E0 = v1;
}

void sub_1007984A0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsAssert");
  v2 = qword_10195D300;
  qword_10195D300 = v1;
}

id sub_1007984E4()
{
  if (qword_10195D328 != -1)
  {
    dispatch_once(&qword_10195D328, &stru_101629280);
  }

  v1 = qword_10195D320;

  return v1;
}

void sub_100798538(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsDefault");
  v2 = qword_10195D320;
  qword_10195D320 = v1;
}

id sub_10079857C()
{
  if (qword_10195D348 != -1)
  {
    dispatch_once(&qword_10195D348, &stru_1016292C0);
  }

  v1 = qword_10195D340;

  return v1;
}

void sub_1007985D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsNotifications");
  v2 = qword_10195D340;
  qword_10195D340 = v1;
}

id sub_100798614()
{
  if (qword_10195D368 != -1)
  {
    dispatch_once(&qword_10195D368, &stru_101629300);
  }

  v1 = qword_10195D360;

  return v1;
}

void sub_100798668(id a1)
{
  v1 = os_log_create("com.apple.Maps", "LookAround");
  v2 = qword_10195D360;
  qword_10195D360 = v1;
}

id sub_1007986AC()
{
  if (qword_10195D3B8 != -1)
  {
    dispatch_once(&qword_10195D3B8, &stru_1016293A0);
  }

  v1 = qword_10195D3B0;

  return v1;
}

void sub_100798700(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PlaceCard");
  v2 = qword_10195D3B0;
  qword_10195D3B0 = v1;
}

id sub_100798744()
{
  if (qword_10195D3C8 != -1)
  {
    dispatch_once(&qword_10195D3C8, &stru_1016293C0);
  }

  v1 = qword_10195D3C0;

  return v1;
}

void sub_100798798(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PPT");
  v2 = qword_10195D3C0;
  qword_10195D3C0 = v1;
}

id sub_1007987DC()
{
  if (qword_10195D3E8 != -1)
  {
    dispatch_once(&qword_10195D3E8, &stru_101629400);
  }

  v1 = qword_10195D3E0;

  return v1;
}

void sub_100798830(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPLayout");
  v2 = qword_10195D3E0;
  qword_10195D3E0 = v1;
}

id sub_100798874()
{
  if (qword_10195D3F8 != -1)
  {
    dispatch_once(&qword_10195D3F8, &stru_101629420);
  }

  v1 = qword_10195D3F0;

  return v1;
}

void sub_1007988C8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPNavigation");
  v2 = qword_10195D3F0;
  qword_10195D3F0 = v1;
}

id sub_10079890C()
{
  if (qword_10195D418 != -1)
  {
    dispatch_once(&qword_10195D418, &stru_101629460);
  }

  v1 = qword_10195D410;

  return v1;
}

void sub_100798960(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Recents");
  v2 = qword_10195D410;
  qword_10195D410 = v1;
}

id sub_1007989A4()
{
  if (qword_10195D428 != -1)
  {
    dispatch_once(&qword_10195D428, &stru_101629480);
  }

  v1 = qword_10195D420;

  return v1;
}

void sub_1007989F8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteCreation");
  v2 = qword_10195D420;
  qword_10195D420 = v1;
}

id sub_100798A3C()
{
  if (qword_10195D438 != -1)
  {
    dispatch_once(&qword_10195D438, &stru_1016294A0);
  }

  v1 = qword_10195D430;

  return v1;
}

void sub_100798A90(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanning");
  v2 = qword_10195D430;
  qword_10195D430 = v1;
}

id sub_100798AD4()
{
  if (qword_10195D468 != -1)
  {
    dispatch_once(&qword_10195D468, &stru_101629500);
  }

  v1 = qword_10195D460;

  return v1;
}

void sub_100798B28(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchACFindMy");
  v2 = qword_10195D460;
  qword_10195D460 = v1;
}

id sub_100798B6C()
{
  if (qword_10195D478 != -1)
  {
    dispatch_once(&qword_10195D478, &stru_101629520);
  }

  v1 = qword_10195D470;

  return v1;
}

void sub_100798BC0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchHome");
  v2 = qword_10195D470;
  qword_10195D470 = v1;
}

void sub_100798C04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SharedTrip");
  v2 = qword_10195D480;
  qword_10195D480 = v1;
}

id sub_100798C48()
{
  if (qword_10195D498 != -1)
  {
    dispatch_once(&qword_10195D498, &stru_101629560);
  }

  v1 = qword_10195D490;

  return v1;
}

void sub_100798C9C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Sharing");
  v2 = qword_10195D490;
  qword_10195D490 = v1;
}

id sub_100798CE0()
{
  if (qword_10195D4A8 != -1)
  {
    dispatch_once(&qword_10195D4A8, &stru_101629580);
  }

  v1 = qword_10195D4A0;

  return v1;
}

void sub_100798D34(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Shortcuts");
  v2 = qword_10195D4A0;
  qword_10195D4A0 = v1;
}

void sub_100798D78(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Transit");
  v2 = qword_10195D4B0;
  qword_10195D4B0 = v1;
}

id sub_100798DBC()
{
  if (qword_10195D4D8 != -1)
  {
    dispatch_once(&qword_10195D4D8, &stru_1016295E0);
  }

  v1 = qword_10195D4D0;

  return v1;
}

void sub_100798E10(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitSchedules");
  v2 = qword_10195D4D0;
  qword_10195D4D0 = v1;
}

id sub_100798E54()
{
  if (qword_10195D4F8 != -1)
  {
    dispatch_once(&qword_10195D4F8, &stru_101629620);
  }

  v1 = qword_10195D4F0;

  return v1;
}

void sub_100798EA8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VehicleDisambiguator");
  v2 = qword_10195D4F0;
  qword_10195D4F0 = v1;
}

id sub_100798EEC()
{
  if (qword_10195D538 != -1)
  {
    dispatch_once(&qword_10195D538, &stru_1016296A0);
  }

  v1 = qword_10195D530;

  return v1;
}

void sub_100798F40(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Watermarking");
  v2 = qword_10195D530;
  qword_10195D530 = v1;
}

id sub_100798F84()
{
  if (qword_10195D548 != -1)
  {
    dispatch_once(&qword_10195D548, &stru_1016296C0);
  }

  v1 = qword_10195D540;

  return v1;
}

void sub_100798FD8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "WaypointRequest");
  v2 = qword_10195D540;
  qword_10195D540 = v1;
}

id sub_10079901C()
{
  if (qword_10195D568 != -1)
  {
    dispatch_once(&qword_10195D568, &stru_101629700);
  }

  v1 = qword_10195D560;

  return v1;
}

void sub_100799070(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPRecordsManager");
  v2 = qword_10195D560;
  qword_10195D560 = v1;
}

id sub_1007990B4()
{
  if (qword_10195D578 != -1)
  {
    dispatch_once(&qword_10195D578, &stru_101629720);
  }

  v1 = qword_10195D570;

  return v1;
}

void sub_100799108(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCPhotoAttribution");
  v2 = qword_10195D570;
  qword_10195D570 = v1;
}

id sub_10079914C()
{
  if (qword_10195D588 != -1)
  {
    dispatch_once(&qword_10195D588, &stru_101629740);
  }

  v1 = qword_10195D580;

  return v1;
}

void sub_1007991A0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchResultsImpressions");
  v2 = qword_10195D580;
  qword_10195D580 = v1;
}

id sub_1007991E4()
{
  if (qword_10195D598 != -1)
  {
    dispatch_once(&qword_10195D598, &stru_101629760);
  }

  v1 = qword_10195D590;

  return v1;
}

void sub_100799238(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchRedo");
  v2 = qword_10195D590;
  qword_10195D590 = v1;
}

id sub_10079927C()
{
  if (qword_10195D5A8 != -1)
  {
    dispatch_once(&qword_10195D5A8, &stru_101629780);
  }

  v1 = qword_10195D5A0;

  return v1;
}

void sub_1007992D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "StaleTimeBug_105865770");
  v2 = qword_10195D5A0;
  qword_10195D5A0 = v1;
}

id sub_100799314()
{
  if (qword_10195D5C8 != -1)
  {
    dispatch_once(&qword_10195D5C8, &stru_1016297C0);
  }

  v1 = qword_10195D5C0;

  return v1;
}

void sub_100799368(id a1)
{
  v1 = os_log_create("com.apple.Maps", "DeviceConnection");
  v2 = qword_10195D5C0;
  qword_10195D5C0 = v1;
}

id sub_1007993AC()
{
  if (qword_10195D5D8 != -1)
  {
    dispatch_once(&qword_10195D5D8, &stru_1016297E0);
  }

  v1 = qword_10195D5D0;

  return v1;
}

void sub_100799400(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ElevationGraph");
  v2 = qword_10195D5D0;
  qword_10195D5D0 = v1;
}

id sub_100799444()
{
  if (qword_10195D608 != -1)
  {
    dispatch_once(&qword_10195D608, &stru_101629840);
  }

  v1 = qword_10195D600;

  return v1;
}

void sub_100799498(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationSimulationPrompt");
  v2 = qword_10195D600;
  qword_10195D600 = v1;
}

void sub_1007994DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavIndicators");
  v2 = qword_10195D610;
  qword_10195D610 = v1;
}

id sub_100799520()
{
  if (qword_10195D638 != -1)
  {
    dispatch_once(&qword_10195D638, &stru_1016298A0);
  }

  v1 = qword_10195D630;

  return v1;
}

void sub_100799574(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPPresenter");
  v2 = qword_10195D630;
  qword_10195D630 = v1;
}

id sub_1007995B8()
{
  if (qword_10195D648 != -1)
  {
    dispatch_once(&qword_10195D648, &stru_1016298C0);
  }

  v1 = qword_10195D640;

  return v1;
}

void sub_10079960C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningOutline");
  v2 = qword_10195D640;
  qword_10195D640 = v1;
}

id sub_100799650()
{
  if (qword_10195D668 != -1)
  {
    dispatch_once(&qword_10195D668, &stru_101629900);
  }

  v1 = qword_10195D660;

  return v1;
}

void sub_1007996A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitNavigation");
  v2 = qword_10195D660;
  qword_10195D660 = v1;
}

id sub_1007996E8()
{
  if (qword_10195D678 != -1)
  {
    dispatch_once(&qword_10195D678, &stru_101629920);
  }

  v1 = qword_10195D670;

  return v1;
}

void sub_10079973C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCCallToActionViewProvider");
  v2 = qword_10195D670;
  qword_10195D670 = v1;
}

id sub_100799780()
{
  if (qword_10195D688 != -1)
  {
    dispatch_once(&qword_10195D688, &stru_101629940);
  }

  v1 = qword_10195D680;

  return v1;
}

void sub_1007997D4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCPhotoDownloadManager");
  v2 = qword_10195D680;
  qword_10195D680 = v1;
}

id sub_100799818()
{
  if (qword_10195D698 != -1)
  {
    dispatch_once(&qword_10195D698, &stru_101629960);
  }

  v1 = qword_10195D690;

  return v1;
}

void sub_10079986C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCReviewedPlacesManager");
  v2 = qword_10195D690;
  qword_10195D690 = v1;
}

id sub_1007998B0()
{
  if (qword_10195D6A8 != -1)
  {
    dispatch_once(&qword_10195D6A8, &stru_101629980);
  }

  v1 = qword_10195D6A0;

  return v1;
}

void sub_100799904(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCPhotoViewerDataProvider");
  v2 = qword_10195D6A0;
  qword_10195D6A0 = v1;
}

void sub_100799948(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarBlurView");
  v2 = qword_10195D6B0;
  qword_10195D6B0 = v1;
}

void sub_10079998C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarCards");
  v2 = qword_10195D6C0;
  qword_10195D6C0 = v1;
}

id sub_1007999D0()
{
  if (qword_10195D6D8 != -1)
  {
    dispatch_once(&qword_10195D6D8, &stru_1016299E0);
  }

  v1 = qword_10195D6D0;

  return v1;
}

void sub_100799A24(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarClusterSuggestion");
  v2 = qword_10195D6D0;
  qword_10195D6D0 = v1;
}

void sub_100799A68(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarCompression");
  v2 = qword_10195D6E0;
  qword_10195D6E0 = v1;
}

void sub_100799AAC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarFocus");
  v2 = qword_10195D6F0;
  qword_10195D6F0 = v1;
}

id sub_100799AF0()
{
  if (qword_10195D708 != -1)
  {
    dispatch_once(&qword_10195D708, &stru_101629A40);
  }

  v1 = qword_10195D700;

  return v1;
}

void sub_100799B44(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarInstrumentCluster");
  v2 = qword_10195D700;
  qword_10195D700 = v1;
}

void sub_100799B88(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarGuidance");
  v2 = qword_10195D710;
  qword_10195D710 = v1;
}

id sub_100799BCC()
{
  if (qword_10195D728 != -1)
  {
    dispatch_once(&qword_10195D728, &stru_101629A80);
  }

  v1 = qword_10195D720;

  return v1;
}

void sub_100799C20(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarMapWidget");
  v2 = qword_10195D720;
  qword_10195D720 = v1;
}

void sub_100799C64(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarRouteGenius");
  v2 = qword_10195D740;
  qword_10195D740 = v1;
}

id sub_100799CA8()
{
  if (qword_10195D758 != -1)
  {
    dispatch_once(&qword_10195D758, &stru_101629AE0);
  }

  v1 = qword_10195D750;

  return v1;
}

void sub_100799CFC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarSessionController");
  v2 = qword_10195D750;
  qword_10195D750 = v1;
}

id sub_100799D40()
{
  if (qword_10195D768 != -1)
  {
    dispatch_once(&qword_10195D768, &stru_101629B00);
  }

  v1 = qword_10195D760;

  return v1;
}

void sub_100799D94(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarSmallWidget");
  v2 = qword_10195D760;
  qword_10195D760 = v1;
}

id sub_100799DD8()
{
  if (qword_10195D788 != -1)
  {
    dispatch_once(&qword_10195D788, &stru_101629B40);
  }

  v1 = qword_10195D780;

  return v1;
}

void sub_100799E2C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "HydrateGeoMapItem");
  v2 = qword_10195D780;
  qword_10195D780 = v1;
}

id sub_100799E70()
{
  if (qword_10195D798 != -1)
  {
    dispatch_once(&qword_10195D798, &stru_101629B60);
  }

  v1 = qword_10195D790;

  return v1;
}

void sub_100799EC4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "IdleTimer");
  v2 = qword_10195D790;
  qword_10195D790 = v1;
}

id sub_100799F08()
{
  if (qword_10195D7A8 != -1)
  {
    dispatch_once(&qword_10195D7A8, &stru_101629B80);
  }

  v1 = qword_10195D7A0;

  return v1;
}

void sub_100799F5C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianAR");
  v2 = qword_10195D7A0;
  qword_10195D7A0 = v1;
}

id sub_100799FA0()
{
  if (qword_10195D7B8 != -1)
  {
    dispatch_once(&qword_10195D7B8, &stru_101629BA0);
  }

  v1 = qword_10195D7B0;

  return v1;
}

void sub_100799FF4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PuckTracking");
  v2 = qword_10195D7B0;
  qword_10195D7B0 = v1;
}

id sub_10079A4D8()
{
  if (qword_10195D7C8 != -1)
  {
    dispatch_once(&qword_10195D7C8, &stru_101629BC0);
  }

  v1 = qword_10195D7C0;

  return v1;
}

void sub_10079A52C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarResumeRouteWaypointsController");
  v2 = qword_10195D7C0;
  qword_10195D7C0 = v1;
}

void sub_10079ADEC(uint64_t a1)
{
  v2 = @"RAPContactBackByEmailPreference";
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setInteger:a1 forKey:@"RAPContactBackByEmailPreference"];
}

id sub_10079AE64()
{
  v0 = @"RAPContactBackByEmailPreference";
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"RAPContactBackByEmailPreference"];

  if (v2 <= 2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_10079BBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10079BBD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDismissAction:0];
}

id sub_10079CBB8()
{
  if (qword_10195D7D8 != -1)
  {
    dispatch_once(&qword_10195D7D8, &stru_101629C80);
  }

  v1 = qword_10195D7D0;

  return v1;
}

void sub_10079CC0C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARInstructionContainerView");
  v2 = qword_10195D7D0;
  qword_10195D7D0 = v1;
}

int64_t sub_10079F8E0(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

int64_t sub_10079FB44(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

id sub_1007A0DF8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    GEOConfigSetBOOL();
  }

  v3 = *(a1 + 32);

  return [v3 _alertDidFinishProcessing];
}

void sub_1007A1238(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1007A12CC;
  v2[3] = &unk_101661B18;
  v2[4] = *(a1 + 32);
  [qword_10195D7E0 dismissViewControllerAnimated:1 completion:v2];
  v1 = qword_10195D7E0;
  qword_10195D7E0 = 0;
}

void sub_1007A1384(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A1420;
  v6[3] = &unk_101661A90;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

id sub_1007A1420(uint64_t a1)
{
  if (+[PushNotificationPrompt shouldPromptForLaunch](PushNotificationPrompt, "shouldPromptForLaunch") && ![*(a1 + 32) authorizationStatus])
  {
    v10 = sub_100005610();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "AppLaunchNotificationPrewarmAlert: will prompt for first launch.", &v12, 2u);
    }

    v11 = *(a1 + 40);
    v7 = [*(a1 + 32) authorizationStatus];
    v8 = v11;
    v9 = 0;
    return [v8 _presentAlertUIWithStatus:v7 repeatPrompt:v9];
  }

  if (+[PushNotificationPrompt shouldRepeatPromptForLaunch](PushNotificationPrompt, "shouldRepeatPromptForLaunch") && [*(a1 + 32) authorizationStatus] != 2)
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AppLaunchNotificationPrewarmAlert: will prompt for repeat launch.", &v12, 2u);
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) authorizationStatus];
    v8 = v6;
    v9 = 1;
    return [v8 _presentAlertUIWithStatus:v7 repeatPrompt:v9];
  }

  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) authorizationStatus]);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AppLaunchNotificationPrewarmAlert: not displaying with authorization status %@", &v12, 0xCu);
  }

  return [*(a1 + 40) _alertDidFinishProcessing];
}

id sub_1007A364C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GEORPFeatureHandle);
  v3 = [v1 featureType] - 1;
  if (v3 > 0xE)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1012134F8[v3];
  }

  [v2 setType:v4];
  [v2 setFeatureIndex:{objc_msgSend(v1, "featureIndex")}];
  [v2 setFeatureTileX:{objc_msgSend(v1, "tileX")}];
  [v2 setFeatureTileY:{objc_msgSend(v1, "tileY")}];
  [v2 setFeatureTileZ:{objc_msgSend(v1, "tileZ")}];
  [v2 setStyle:{objc_msgSend(v1, "tileStyle")}];
  [v2 setIdentifier:{objc_msgSend(v1, "tileVersion")}];
  v5 = [v1 styleAttributes];
  v6 = [v5 countAttrs];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v1 styleAttributes];
      v10 = *([v9 v] + v7);

      v11 = [v1 styleAttributes];
      v12 = *([v11 v] + v7 + 4);

      [v2 addStyleAttribute:v10 | (v12 << 32)];
      ++v8;
      v13 = [v1 styleAttributes];
      LODWORD(v10) = [v13 countAttrs];

      v7 += 8;
    }

    while (v8 < v10);
  }

  return v2;
}

id sub_1007A38E0(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedIntegerValue];
  *(*(a1 + 32) + 4 * a3) = result;
  return result;
}

double sub_1007A39B4(void *a1)
{
  v1 = [a1 mapRegion];
  if (v1)
  {
    GEOMapRectForMapRegion();
    MKCoordinateRegionForMapRect(v5);
    MKMapRectForCoordinateRegion();
    x = v2;
  }

  else
  {
    x = MKMapRectNull.origin.x;
  }

  return x;
}

double sub_1007A3A38(void *a1)
{
  v1 = [a1 mapItem];
  v2 = [v1 _geoMapItem];
  v3 = [v2 displayMapRegionOrNil];

  [v1 _coordinate];
  if (v3)
  {
    GEOMapRectForMapRegion();
    v10 = MKCoordinateRegionForMapRect(v9);
  }

  else
  {
    v10 = MKCoordinateRegionMakeWithDistance(*&v4, 200.0, 200.0);
  }

  if (fabs(v10.center.longitude) > 180.0 || v10.center.latitude < -90.0 || v10.center.latitude > 90.0 || v10.span.latitudeDelta < 0.0 || v10.span.latitudeDelta > 180.0 || v10.span.longitudeDelta < 0.0 || v10.span.longitudeDelta > 360.0)
  {
    x = MKMapRectNull.origin.x;
  }

  else
  {
    MKMapRectForCoordinateRegion();
    x = v6;
  }

  return x;
}

id sub_1007A4344()
{
  if (qword_10195D7F0 != -1)
  {
    dispatch_once(&qword_10195D7F0, &stru_101629DB8);
  }

  v1 = qword_10195D7E8;

  return v1;
}

void sub_1007A4398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1007A4344();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = 134349056;
      v7 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Activating coaching overlay", &v6, 0xCu);
    }

    v3 = [WeakRetained session];
    v4 = [WeakRetained coachingOverlayView];
    [v4 setSession:v3];

    v5 = [WeakRetained coachingOverlayView];
    [v5 setActive:1 animated:0];
  }
}

void sub_1007A44A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARLocalizingView");
  v2 = qword_10195D7E8;
  qword_10195D7E8 = v1;
}

void sub_1007A47B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1007A47E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained instructionLabel];
  [v2 setText:v1];
}

void sub_1007A4E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v26 - 112));
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1007A4E9C(uint64_t a1)
{
  v2 = [*(a1 + 32) instructionLabel];
  v1 = [v2 layer];
  [v1 setOpacity:0.0];
}

void sub_1007A4EFC(uint64_t a1)
{
  v2 = [*(a1 + 32) coachingOverlayView];
  v1 = [v2 layer];
  [v1 setOpacity:0.0];
}

uint64_t sub_1007A4F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFadingOut:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1007A5264(uint64_t a1)
{
  v3 = [*(a1 + 32) instructionLabel];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

void sub_1007A52C4(uint64_t a1)
{
  v3 = [*(a1 + 32) coachingOverlayView];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

double sub_1007A5FF4(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 > 1)
  {
    v3 = v2;
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 0.0;
    v6 = 1;
    while (1)
    {
      v7 = v4;
      v4 = [v1 objectAtIndexedSubscript:v6];
      v8 = [v4 offsetM];
      v9 = v8 - [v7 offsetM];
      if (([v4 elevationCm] & 0x80000000) != 0 || (objc_msgSend(v7, "elevationCm") & 0x80000000) != 0)
      {
        if ([v4 elevationCm] <= 0 && objc_msgSend(v7, "elevationCm") <= 0)
        {
          v20 = [v4 elevationCm];
          if (v20 <= [v7 elevationCm])
          {
            v21 = v7;
          }

          else
          {
            v21 = v4;
          }

          v22 = [v21 elevationCm];
          v23 = [v4 elevationCm];
          if (v23 >= [v7 elevationCm])
          {
            v24 = v7;
          }

          else
          {
            v24 = v4;
          }

          v5 = v5 - (v22 + [v24 elevationCm] * 0.5) * v9;
          goto LABEL_22;
        }

        v16 = [v4 elevationCm];
        if (v16 >= [v7 elevationCm])
        {
          v17 = v7;
        }

        else
        {
          v17 = v4;
        }

        v12 = [v17 elevationCm];
        v18 = [v4 elevationCm];
        if (v18 <= [v7 elevationCm])
        {
          v19 = v7;
        }

        else
        {
          v19 = v4;
        }

        v15 = [v19 elevationCm] - v12;
      }

      else
      {
        v10 = [v4 elevationCm];
        if (v10 >= [v7 elevationCm])
        {
          v11 = v7;
        }

        else
        {
          v11 = v4;
        }

        v12 = [v11 elevationCm];
        v13 = [v4 elevationCm];
        if (v13 <= [v7 elevationCm])
        {
          v14 = v7;
        }

        else
        {
          v14 = v4;
        }

        v15 = [v14 elevationCm];
      }

      v5 = v5 + (v12 + v15 * 0.5) * v9;
LABEL_22:

      if (v3 == ++v6)
      {

        goto LABEL_31;
      }
    }
  }

  v26 = sub_10006D178();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315906;
    v30 = "double _maps_integralForPoints(NSArray<GEOPoint *> *__strong _Nonnull)";
    v31 = 2080;
    v32 = "MapsElevationChartFunctions.m";
    v33 = 1024;
    v34 = 22;
    v35 = 2080;
    v36 = "pointCount >= 2";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v29, 0x26u);
  }

  v5 = 0.0;
  if (sub_100E03634())
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = +[NSThread callStackSymbols];
      v29 = 138412290;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
    }
  }

LABEL_31:

  return v5;
}

id sub_1007A631C(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 count];
  if (v4 <= 1)
  {
    v46 = sub_10006D178();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v56 = "NSArray<NSArray<GEOPoint *> *> * _Nonnull _maps_bucketPointsByCount(NSArray<GEOPoint *> *__strong _Nonnull, NSUInteger)";
      v57 = 2080;
      v58 = "MapsElevationChartFunctions.m";
      v59 = 1024;
      v60 = 60;
      v61 = 2080;
      v62 = "pointCount >= 2";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v47 = sub_10006D178();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v56 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v51 = &__NSArray0__struct;
  }

  else
  {
    v5 = v4;
    v51 = objc_opt_new();
    v6 = v3;
    v7 = [v6 firstObject];
    v8 = [v7 offsetM];
    v9 = [v6 lastObject];

    v10 = [v9 offsetM];
    if (a2)
    {
      v49 = v3;
      v11 = 0;
      v12 = 0;
      v13 = vabdd_f64(v8, v10) / a2;
      v50 = a2;
      do
      {
        v14 = [v6 objectAtIndexedSubscript:v11];
        v15 = v11 + 1;
        v53 = v14;
        if (v11 + 1 < v5 && ([v6 objectAtIndexedSubscript:v11 + 1], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = v16;
          v18 = v13 * v12;
          if (vabdd_f64([v14 offsetM], v18) >= 2.22044605e-16)
          {
            if (vabdd_f64([v17 offsetM], v18) >= 2.22044605e-16)
            {
              v40 = [v17 elevationCm];
              v41 = (v40 - [v14 elevationCm]);
              v52 = v17;
              v42 = [v17 offsetM];
              v43 = (v42 - [v14 offsetM]);
              v44 = v18 - [v14 offsetM];
              v19 = objc_opt_new();
              [v19 setOffsetM:v18];
              [v19 setElevationCm:{objc_msgSend(v14, "elevationCm") + (v44 * v41 / v43)}];
            }

            else
            {
              v19 = v17;
              v15 = v11 + 2;
              v52 = v19;
            }
          }

          else
          {
            v52 = v17;
            v19 = v14;
          }
        }

        else
        {
          v20 = sub_10006D178();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v56 = "NSArray<NSArray<GEOPoint *> *> * _Nonnull _maps_bucketPointsByCount(NSArray<GEOPoint *> *__strong _Nonnull, NSUInteger)";
            v57 = 2080;
            v58 = "MapsElevationChartFunctions.m";
            v59 = 1024;
            v60 = 107;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v21 = sub_10006D178();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v56 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }

          v19 = v14;
          v52 = 0;
        }

        v23 = v12 + 1;
        v24 = [v6 lastObject];
        v54 = v23;
        if (v15 >= v5)
        {
LABEL_20:
          v29 = 0;
          v26 = v5;
        }

        else
        {
          v25 = v13 * v23;
          v26 = v15;
          while (1)
          {
            v27 = [v6 objectAtIndexedSubscript:v26];
            v28 = vabdd_f64([v27 offsetM], v25);
            v29 = v28 >= 2.22044605e-16;
            if (v28 < 2.22044605e-16)
            {
              v27 = v27;
              v30 = v27;
              goto LABEL_23;
            }

            if (v25 < [v27 offsetM])
            {
              break;
            }

            if (v5 == ++v26)
            {
              goto LABEL_20;
            }
          }

          v31 = [v6 objectAtIndexedSubscript:v26 - 1];
          v32 = [v27 elevationCm];
          v33 = (v32 - [v31 elevationCm]);
          v34 = [v27 offsetM];
          v35 = (v34 - [v31 offsetM]);
          v36 = v25 - [v31 offsetM];
          v30 = objc_opt_new();

          [v30 setOffsetM:v25];
          [v30 setElevationCm:{objc_msgSend(v31, "elevationCm") + (v36 * v33 / v35)}];
          v24 = v31;
LABEL_23:

          v24 = v30;
        }

        v37 = [NSMutableArray arrayWithObject:v19];
        v38 = v26 - 1 - v15;
        if (v26 - 1 > v15)
        {
          v39 = [v6 subarrayWithRange:{v15, v38}];
          [v37 addObjectsFromArray:v39];
        }

        [v37 addObject:{v24, v38}];
        [v51 addObject:v37];
        if (v29)
        {
          v11 = v26 - 1;
        }

        else
        {
          v11 = v26;
        }

        v12 = v54;
      }

      while (v54 != v50);
      v3 = v49;
    }
  }

  return v51;
}

id sub_1007A697C(void *a1, unint64_t a2, double a3)
{
  v5 = a1;
  v6 = [v5 count];
  v7 = &__NSArray0__struct;
  if (a2 && v6)
  {
    v8 = [v5 lastObject];
    v9 = [v8 offsetM];
    v10 = [v5 firstObject];
    v11 = [v10 offsetM];

    if ([v5 count] == 1)
    {
      v12 = [v5 firstObject];
      v13 = [v5 arrayByAddingObject:v12];

      v5 = v13;
    }

    v14 = [[NSMutableArray alloc] initWithCapacity:a2];
    v15 = [v5 firstObject];
    if ([v5 count] < 2)
    {
      v19 = v5;
    }

    else
    {
      v16 = (v9 - v11) / (a2 * a3);
      v17 = v16 * a3;
      v18 = 1;
      v19 = v5;
      do
      {
        v20 = v15;
        v15 = [v19 objectAtIndexedSubscript:v18];
        while (v16 > [v20 offsetM] && v16 <= objc_msgSend(v15, "offsetM"))
        {
          v21 = v16 - [v20 offsetM];
          v22 = [v15 offsetM];
          v23 = (v22 - [v20 offsetM]);
          v24 = objc_opt_new();
          v25 = [v20 elevationCm];
          v26 = ([v15 elevationCm] - v25) * v21 / v23 + v25;
          v27 = [NSMeasurement alloc];
          v28 = +[NSUnitLength centimeters];
          v29 = [v27 initWithDoubleValue:v28 unit:v26];
          [v24 setElevationMeasurement:v29];

          v30 = [NSMeasurement alloc];
          v31 = +[NSUnitLength meters];
          v32 = [v30 initWithDoubleValue:v31 unit:v16];
          [v24 setOffsetMeasurement:v32];

          [v14 addObject:v24];
          v16 = v16 + v17;
        }

        ++v18;
        v19 = v5;
      }

      while (v18 < [v5 count]);
    }

    v7 = [v14 copy];

    v5 = v19;
  }

  return v7;
}

unint64_t sub_1007A6C70(double a1, double a2, double a3)
{
  v3 = vcvtmd_u64_f64(a3 / a2);
  result = GEOConfigGetUInteger();
  if (result <= v3)
  {
    return v3;
  }

  return result;
}

id sub_1007A6D7C(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = sub_100798874();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      v20 = "Can't create a route from a nil recording";
      v21 = v8;
      v22 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, &v28, v22);
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v5 = [v3 directionsRequests];
  if ([v5 count] <= a2)
  {

LABEL_9:
    v8 = sub_100798874();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v28 = 134218242;
      v29 = a2;
      v30 = 2112;
      v31 = v4;
      v20 = "Can't find a route with index %lu in a recording: %@";
      v21 = v8;
      v22 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = [v4 directionsResponses];
  v7 = [v6 count];

  if (v7 <= a2)
  {
    goto LABEL_9;
  }

  v8 = [v4 directionsRequestsAtIndex:a2];
  v9 = [v4 directionsResponsesAtIndex:a2];
  v10 = [v4 waypoints];
  v11 = sub_100021DB0(v10, &stru_101629DF8);

  v12 = [GEORouteInitializerData alloc];
  v13 = [v8 routeAttributes];
  v14 = [v12 initWithWaypoints:v11 routeAttributes:v13 directionsResponse:v9];

  LODWORD(v13) = [v4 selectedSuggestedRouteIndexInDirectionsResponse];
  v15 = [v14 allRoutes];
  v16 = [v15 count];

  v17 = [v14 allRoutes];
  v18 = v17;
  if (v16 <= v13)
  {
    v25 = [v17 count];

    v26 = sub_100798874();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v27)
      {
        v28 = 138412290;
        v29 = v4;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "routeInitializerData.allRoutes is empty for a recording: %@", &v28, 0xCu);
      }

      v23 = 0;
      goto LABEL_21;
    }

    if (v27)
    {
      v28 = 138412290;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "routeInitializerData.allRoutes has less routes than indexOfSelectedSuggestedRoute for a recording: %@", &v28, 0xCu);
    }

    v18 = [v14 allRoutes];
    v19 = [v18 firstObject];
  }

  else
  {
    v19 = [v17 objectAtIndexedSubscript:{objc_msgSend(v4, "selectedSuggestedRouteIndexInDirectionsResponse")}];
  }

  v23 = v19;

LABEL_21:
LABEL_13:

  return v23;
}

GEOComposedWaypoint *__cdecl sub_1007A70B4(id a1, RAPUserSearchInput *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(RAPUserSearchInput *)v3 placeMapItemStorage];
  v5 = [(RAPUserSearchInput *)v3 findMyHandleID];

  if (v5)
  {
    v6 = [GEOLocation alloc];
    [v4 coordinate];
    v7 = [v6 initWithGEOCoordinate:?];
    v8 = [[GEOComposedWaypoint alloc] initWithLocation:v7 findMyHandleID:v5];
  }

  else
  {
    v8 = [[GEOComposedWaypoint alloc] initWithMapItem:v4];
  }

  return v8;
}

void sub_1007A7864(uint64_t a1)
{
  if ([*(a1 + 32) hasButtonOneAppURI])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1007A7A38;
    v3[3] = &unk_101661B18;
    v2 = *(a1 + 40);
    v4 = *(a1 + 32);
    [v2 dismissAllModalViewsIfPresentAnimated:0 completion:v3];
  }
}

void sub_1007A7900(uint64_t a1)
{
  if ([*(a1 + 32) hasButtonTwoAppURI])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1007A799C;
    v3[3] = &unk_101661B18;
    v2 = *(a1 + 40);
    v4 = *(a1 + 32);
    [v2 dismissAllModalViewsIfPresentAnimated:0 completion:v3];
  }
}

void sub_1007A799C(uint64_t a1)
{
  v4 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) buttonTwoAppURI];
  v3 = [NSURL URLWithString:v2];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

void sub_1007A7A38(uint64_t a1)
{
  v4 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) buttonOneAppURI];
  v3 = [NSURL URLWithString:v2];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

id sub_1007A9250(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = [v2 isFullyDrawn];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 onFullyDrawn:0];
  }

  else
  {

    return [v4 setupFullyDrawnNotification:"onFullyDrawn:"];
  }
}

void sub_1007A953C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  [v2 enableTestStatistics];
  [v2 enableTileStatistics];
  [*(a1 + 32) startedTest];
  [*(a1 + 32) panToTestPoint:1];
}

void sub_1007A98D4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1007A99E8;
  v1[3] = &unk_10164DC48;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v1);
}

void sub_1007A9954(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1007A99D4;
  v1[3] = &unk_10164DC48;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v1);
}

void sub_1007A9C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007A9C3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained panLoadFinished];
}

id sub_1007AA324(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = [v2 isFullyDrawn];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 onFullyDrawn:0];
  }

  else
  {

    return [v4 setupFullyDrawnNotification:"onFullyDrawn:"];
  }
}

void sub_1007AA658(void *a1)
{
  v3 = a1[6];
  if (v3 < 1)
  {
    v5 = *(a1[5] + 16);

    v5();
  }

  else
  {
    v9 = v1;
    v10 = v2;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007AA7D4;
    block[3] = &unk_1016589F8;
    v4 = a1[5];
    block[4] = a1[4];
    v8 = v3;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1007AA70C(void *a1)
{
  v3 = a1[6];
  if (v3 < 1)
  {
    v5 = *(a1[5] + 16);

    v5();
  }

  else
  {
    v9 = v1;
    v10 = v2;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007AA7C0;
    block[3] = &unk_1016589F8;
    v4 = a1[5];
    block[4] = a1[4];
    v8 = v3;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1007AA858(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007AA8EC;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1007AA8EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[160])
  {
    if ([v2 useTestNameInResults])
    {
      v3 = [*(a1 + 32) testName];
      v4 = [NSString stringWithFormat:@"%@:circlePan", v3];

      [*(a1 + 32) startedSubTest:v4];
    }

    else
    {
      [*(a1 + 32) startedSubTest:@"circlePan"];
    }
  }

  else
  {
    [v2 startedTest];
  }

  v5 = [*(a1 + 32) mainVKMapView];
  [v5 bounds];
  MidX = CGRectGetMidX(v19);
  [v5 bounds];
  MidY = CGRectGetMidY(v20);
  [v5 enableTestStatistics];
  [v5 enableTileStatistics];
  [v5 startPanningAtPoint:{MidX, MidY}];
  v8 = [[VKTimedAnimation alloc] initWithDuration:3.0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007AAAF4;
  v17[3] = &unk_101629E20;
  v17[4] = *(a1 + 32);
  v9 = v5;
  v18 = v9;
  [v8 setStepHandler:v17];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007AAB58;
  v12[3] = &unk_101629E48;
  v15 = MidX;
  v16 = MidY;
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v11 = v9;
  [v8 setCompletionHandler:v12];
  [v11 runAnimation:v8];
}

id sub_1007AAAF4(uint64_t a1, float a2)
{
  v3 = __sincos_stret(a2 * 18.8495559);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 200) * 0.5;

  return [v4 updatePanWithTranslation:{v5 * v3.__sinval, v5 * v3.__cosval}];
}

void sub_1007AAB58(uint64_t a1)
{
  [*(a1 + 32) stopPanningAtPoint:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  if (v2[160] == 1)
  {
    if ([v2 useTestNameInResults])
    {
      v3 = [*(a1 + 40) testName];
      v4 = [NSString stringWithFormat:@"%@:circlePan", v3];

      [*(a1 + 40) finishedSubTest:v4];
    }

    else
    {
      [*(a1 + 40) finishedSubTest:@"circlePan"];
    }
  }

  [*(a1 + 32) disableTestStatistics];
  v5 = [*(a1 + 32) testStatistics];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = [*(a1 + 40) useTestNameInResults];
        v13 = [*(a1 + 40) results];
        if (v12)
        {
          v14 = [*(a1 + 40) testName];
          v15 = [NSString stringWithFormat:@"%@:circlePan:%@", v14, v10];
          [v13 setObject:v11 forKey:v15];
        }

        else
        {
          v14 = [NSString stringWithFormat:@"sub:circlePan:%@", v10];
          [v13 setObject:v11 forKey:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) resetTestStatistics];
  v16 = *(a1 + 40);
  if (!*(v16 + 160) || (*(v16 + 161) & 1) == 0)
  {
    [v16 finishedTest];
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 208);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

void sub_1007AB0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007AB10C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained circlePanLoadFinished];
}

id sub_1007ABC94()
{
  if (qword_10195D800 != -1)
  {
    dispatch_once(&qword_10195D800, &stru_101629E90);
  }

  v1 = qword_10195D7F8;

  return v1;
}

void sub_1007ABCE8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionRoutePlanningConfigurationMonitor");
  v2 = qword_10195D7F8;
  qword_10195D7F8 = v1;
}

void sub_1007AD4D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_1007AD50C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDTMActionWithPreference:*(a1 + 40)];
}

void sub_1007AD55C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDisplayModelForPreference:*(a1 + 40)];
}

void sub_1007AD5AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_1007AE344(uint64_t a1)
{
  v2 = [*(a1 + 32) flyoverActionCoordinator];
  v1 = [v2 appCoordinator];
  [v1 exitFlyover];
}

void sub_1007AE5E4(uint64_t a1)
{
  v1 = [*(a1 + 32) flyoverBannerView];
  [v1 setAlpha:1.0];
}

void sub_1007AE8B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1007AE8D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v11[60] = [v5 interfaceOrientation];

    v6 = [v11 chromeViewController];
    v7 = [v6 mapView];
    v8 = [v7 _mapLayer];
    v9 = v11[60] - 1;
    if (v9 > 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_101213570[v9];
    }

    [v8 setARInterfaceOrientation:v10];

    WeakRetained = v11;
  }
}

void sub_1007AE9E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v11[60] = [v5 interfaceOrientation];

    v6 = [v11 chromeViewController];
    v7 = [v6 mapView];
    v8 = [v7 _mapLayer];
    v9 = v11[60] - 1;
    if (v9 > 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_101213570[v9];
    }

    [v8 setARInterfaceOrientation:v10];

    WeakRetained = v11;
  }
}

void sub_1007AF78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007AF7B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained flyoverIntroTimer];
  [v1 invalidate];

  [WeakRetained setFlyoverIntroTimer:0];
  [WeakRetained hideChrome:1 animated:1];
  [WeakRetained setFlyoverIntroCompleted:1];
}

id sub_1007AFA98(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = FlyoverContainerViewController;
  return objc_msgSendSuper2(&v2, "updateMapEdgeInsets");
}

void sub_1007AFD4C(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 frame];
  Height = CGRectGetHeight(v22);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = Height + 30.0;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if ([*(a1 + 32) chromeHidden])
        {
          CGAffineTransformMakeTranslation(&v16, 0.0, v7);
        }

        else
        {
          v11 = *&CGAffineTransformIdentity.c;
          *&v16.a = *&CGAffineTransformIdentity.a;
          *&v16.c = v11;
          *&v16.tx = *&CGAffineTransformIdentity.tx;
        }

        v15 = v16;
        [v10 setTransform:&v15];
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setNeedsUpdateOfHomeIndicatorAutoHidden];
  v12 = [*(a1 + 32) iosBasedChromeViewController];
  [v12 setNeedsUpdateComponent:@"statusBarStyle" animated:0];

  v13 = [*(a1 + 32) view];
  [v13 setNeedsLayout];

  v14 = [*(a1 + 32) view];
  [v14 layoutIfNeeded];
}

void sub_1007AFF20(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setUserInteractionEnabled:1];
}

id sub_1007B0F80()
{
  if (qword_10195D818 != -1)
  {
    dispatch_once(&qword_10195D818, &stru_10162A030);
  }

  v1 = qword_10195D810;

  return v1;
}

void sub_1007B0FD4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeMapSettings");
  v2 = qword_10195D810;
  qword_10195D810 = v1;
}

void sub_1007B15FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007B1618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained type] == *(a1 + 48);
    WeakRetained = v4;
    if (v3)
    {
      [v4 setSaveTimer:0];
      [v4 _writeToUserDefaultsWithKeys:*(a1 + 32)];
      WeakRetained = v4;
    }
  }
}

void sub_1007B2F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak((v43 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007B2FA4(uint64_t a1)
{
  v2 = sub_1007B0F80();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
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
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 138543875;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2113;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ callstack: %{private}@", buf, 0x20u);
  }
}

void sub_1007B3140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = sub_1007B0F80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = *(a1 + 40);
    v11 = [WeakRetained description];
    *buf = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Applying %@", buf, 0x20u);
  }

  [*(a1 + 48) setCamera:*(a1 + 56)];
}

void sub_1007B3310(uint64_t a1, int a2)
{
  v3 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(v3 + 56);
    v7 = *(WeakRetained + 7);
    v8 = [NSNumber numberWithUnsignedInteger:v6];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [NSNumber numberWithUnsignedInteger:*(v3 + 56)];
    [v7 removeObjectForKey:v10];
  }

  else
  {
    v9 = 0;
  }

  v11 = [v5 mapView];
  v12 = v11;
  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    if ([v11 userTrackingMode] != *(v3 + 64))
    {
      [v12 setUserTrackingMode:? animated:?];
    }

    v15 = [v12 _isPitched];
    v16 = *(v3 + 73);
    if (v16 != v15)
    {
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1007B37E8;
      v48[3] = &unk_101660CE8;
      v51 = v16;
      v49 = v5;
      v50 = v12;
      v17 = objc_retainBlock(v48);
      v18 = v17;
      if (*(v3 + 72))
      {
        (v17[2])(v17);
      }

      else
      {
        [UIView performWithoutAnimation:v17];
      }
    }
  }

  v19 = sub_1007B0F80();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(v3 + 32);
    v42 = v9;
    v43 = v3;
    if (!v20)
    {
      v25 = @"<nil>";
      goto LABEL_27;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_25;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_25:

    v3 = v43;
LABEL_27:

    v26 = *(v3 + 40);
    v27 = [*(v3 + 32) description];
    if (v14)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = v28;
    if (a2)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = v30;
    if (v5)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = v32;
    *buf = 138544898;
    v54 = v25;
    v55 = 2114;
    v56 = v26;
    v57 = 2112;
    v58 = v27;
    v59 = 2114;
    v60 = v29;
    v61 = 2114;
    v62 = v31;
    v63 = 2114;
    v64 = v33;
    v65 = 2112;
    v66 = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ Completed applying %@, did apply tracking: %{public}@, completion block finished: %{public}@, strongSelf exists: %{public}@, completionMapView: %@", buf, 0x48u);

    v3 = v43;
    v9 = v42;
  }

  if (v5)
  {
    --v5[6];
    if (v14)
    {
      v34 = [v5 delegate];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        v36 = [v5 delegate];
        [v36 mapSettings:v5 didApplyAnimated:*(v3 + 72)];
      }
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = [v9 completionHandlers];
  v38 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v45;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(v37);
        }

        (*(*(*(&v44 + 1) + 8 * i) + 16))();
      }

      v39 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v39);
  }
}

id sub_1007B37E8(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 32))
  {
    return [*(a1 + 40) _enter3DMode];
  }

  else
  {
    return [*(a1 + 40) _exit3DMode];
  }
}

void sub_1007B43FC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 registerDefaults:&off_1016EE448];

  v2 = +[NSUserDefaults standardUserDefaults];
  v4[0] = @"map.browse.trackingMode";
  v4[1] = @"map.browse.pitched";
  v5[0] = &off_1016E6E18;
  v5[1] = &__kCFBooleanFalse;
  v4[2] = @"map.browse.zoomLevel";
  v5[2] = &off_1016EDCF8;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
  [v2 registerDefaults:v3];
}

void sub_1007B49F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_1007B4C40(uint64_t a1, void *a2, void *a3)
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

id sub_1007B4F30()
{
  if (qword_10195D828 != -1)
  {
    dispatch_once(&qword_10195D828, &stru_10162A068);
  }

  v1 = qword_10195D820;

  return v1;
}

void sub_1007B4F84(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CurrentLocationWaypointRequest");
  v2 = qword_10195D820;
  qword_10195D820 = v1;
}

void sub_1007B6094(uint64_t a1)
{
  [*(a1 + 32) setUpdatingVenueAsync:0];
  +[NSDate timeIntervalSinceReferenceDate];
  [*(a1 + 32) setLastVenueUpdateTimestamp:?];
  v2 = *(a1 + 32);
  v4 = [v2 delegate];
  v3 = [v4 venueWithFocus];
  [v2 immediatelyHandleVenueWithFocusDidChange:v3];
}

void sub_1007B8DC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    v26 = a1;
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (!v11)
    {
      v13 = 0;
      goto LABEL_22;
    }

    v12 = v11;
    v13 = 0;
    v14 = *v28;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v17 = [[SearchResult alloc] initWithMapItem:v16];
        v18 = [v16 _displayMapRegion];
        v19 = v18;
        if (v13)
        {
          v20 = GEOMapRegionUnion();

          v13 = v20;
          if (!v17)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v9 addObject:v17];
          goto LABEL_15;
        }

        v13 = v18;
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_15:

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v21 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v12 = v21;
      if (!v21)
      {
LABEL_22:

        v22 = [SearchInfo searchInfoWithResults:v9 boundingMapRegion:v13];
        v23 = objc_alloc_init(SearchFieldItem);
        v24 = [*(v26 + 32) brandName];
        [(SearchFieldItem *)v23 setSearchString:v24];

        v25 = *(v26 + 40);
        if (v25)
        {
          (*(v25 + 16))(v25, v23, v22);
        }

        v6 = 0;
        goto LABEL_25;
      }
    }
  }

  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "BrandAction resolveBrand:%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, 0);
  }

LABEL_25:
}

id sub_1007B9278(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"RouteSuggestions - show edit directions UI"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_1007B92BC(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"RouteSuggestions - show Route Planning"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

void sub_1007B9400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007B941C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedSubTest:@"refreshSearch - mapViewFullyDrawn"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 finishedTest];
}

void sub_1007B98C4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"refreshSearchRequestSent:" name:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  [*(a1 + 32) startedSubTest:@"refreshSearch - searchRequestSent"];
  v3 = [*(a1 + 32) testCoordinator];
  [v3 pptTestRefreshSearch];
}

id sub_1007B9B0C(uint64_t a1)
{
  v2 = [*(a1 + 32) containsString:@"Scroll_"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 canUpdateTrayLayout];
    v5 = *(a1 + 40);
    if (v4)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1007B9C08;
      v8[3] = &unk_101661B18;
      v8[4] = v5;
      return [v5 updateTrayLayout:2 animated:1 completion:v8];
    }

    else
    {

      return [v5 startScrollNearbyTestCategory];
    }
  }

  else
  {
    [v3 finishedSubTest:@"nearby"];
    v7 = *(a1 + 40);

    return [v7 startRefreshSearchTestIfNeeded];
  }
}

void sub_1007B9D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007B9D2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained[96] == 1)
  {
    [WeakRetained finishedSubTest:@"mapViewFullyDrawn"];
    [v2 continueToNearbyScrollTests];
  }

  else
  {
    [WeakRetained finishSearchTest:0];
  }
}

void sub_1007B9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007B9EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishSearchTest:0];
}

id sub_1007BA8E4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"displayPlaceEnrichment"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_1007BA928(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"willBeginGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:" name:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequestBEGIN" object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"didEndGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:" name:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequestEND" object:0];

  v4 = +[GEONotificationPreferenceManager sharedManager];
  [v4 setEnabled:1 forSubTestWithName:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequest"];

  v5 = *(a1 + 32);

  return [v5 sendSearchRequest];
}

id sub_1007BAC7C(uint64_t a1)
{
  [*(*(a1 + 32) + 88) removeObjectAtIndex:0];
  v2 = *(a1 + 32);

  return [v2 searchAutoCompleteTestSendQuery];
}

id sub_1007BAED8(uint64_t a1)
{
  [*(*(a1 + 32) + 88) removeObjectAtIndex:0];
  v2 = *(a1 + 32);

  return [v2 searchAutoCompleteTestSendQuery];
}

void sub_1007BB3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007BB408(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    [v3 finishedSubTest:@"nearby"];
    [v3 finishedTest];
    WeakRetained = v3;
  }
}

void sub_1007BBA68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1007BBA98(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] testCoordinator];
  v5 = [v4 pptTestScrollView];

  [a1[4] startedSubTest:a1[5]];
  [a1[6] contentSize];
  v7 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BBC60;
  v8[3] = &unk_10162A0B0;
  objc_copyWeak(&v10, a1 + 7);
  v9 = a1[5];
  [v5 _performScrollTest:0 iterations:10 delta:20 length:v7 scrollAxis:2 extraResultsBlock:0 completionBlock:v8];

  objc_destroyWeak(&v10);
}

void sub_1007BBBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedSubTest:@"displayCarPlayKeyboard"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _runTestNow];
}

id sub_1007BBC20(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

void sub_1007BBC60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishedSubTest:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 finishedTest];
}

void sub_1007BC264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007BC280(uint64_t a1)
{
  v2 = dispatch_time(0, 4000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BC330;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_1007BC330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained startedTest];
    [v6 startedSubTest:@"enterSearchMode"];
    [v6 startedSubTest:@"presentSearchUI"];
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:v6 selector:"searchUILayoutDone" name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];

    v3 = [v6 testCoordinator];
    [v3 pptTestEnterSearchMode];

    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    WeakRetained = v6;
    if (v5 == 5)
    {
      [v6 finishedSubTest:@"enterSearchMode"];
      [v6 startAutocompleteOrNearbySearchTest];
      WeakRetained = v6;
    }
  }
}

void sub_1007BC4D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1007BC4EC(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BC59C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_1007BC59C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:v4 selector:"didDisplayCarplayBrowseCategories" name:@"PPTTest_CarSearchCategoriesModeController_DidDisplayCategories" object:0];

    [v4 startedSubTest:@"enterSearchMode"];
    v3 = [v4 testCoordinator];
    [v3 pptTestEnterSearchMode];

    WeakRetained = v4;
  }
}

id sub_1007BC928(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = MapsAppTestSearch;
  return objc_msgSendSuper2(&v4, "startedSubTest:withMetrics:", v2, v1);
}

id sub_1007BC9FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = MapsAppTestSearch;
  return objc_msgSendSuper2(&v3, "finishedSubTest:", v1);
}

id sub_1007BCACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = MapsAppTestSearch;
  return objc_msgSendSuper2(&v3, "startedSubTest:", v1);
}

void sub_1007BD25C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = [v2 isFullyDrawn];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 onFullyDrawn:0];
  }
}

void sub_1007BD700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BD724(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007BD73C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 object];

  if (v3)
  {
    v4 = [v10 object];
    v5 = [v4 searchInfo];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(*(*(a1 + 40) + 8) + 40) results];
    v9 = [v8 count];

    if (!v9)
    {
      [*(a1 + 32) startedTest];
      [*(a1 + 32) failedTest];
    }
  }
}

void sub_1007BD808(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) results];
  v3 = [v2 count];

  if (v3)
  {
    v4 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BD900;
    block[3] = &unk_101661B18;
    block[4] = *(a1 + 32);
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {
    [*(a1 + 32) startedTest];
    v5 = *(a1 + 32);

    [v5 failedTest];
  }
}

void sub_1007BDADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007BDAF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchForSearchString];
}

id sub_1007BDC08(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"returnToSearchResults"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

void sub_1007BDE18(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"returnToAutoComplete - suggestions received"];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

id sub_1007BDE64(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"returnToAutoComplete"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_1007BDF68(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[9] == -1)
  {
    return [v1 returnToSearchResults];
  }

  else
  {
    return [v1 returnToRetainedAutoComplete];
  }
}

void sub_1007BE8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007BE8C4(uint64_t a1)
{
  v2 = dispatch_time(0, 4000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007BE988;
  v3[3] = &unk_101661340;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);

  objc_destroyWeak(&v5);
}

void sub_1007BE988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained startedTest];
    [*(a1 + 32) addObserver:v4 selector:"startAutoCompleteOrSearchTest" name:UIKeyboardDidShowNotification object:0];
    v3 = [v4 testCoordinator];
    [v3 pptTestEnterSearchMode];

    WeakRetained = v4;
  }
}

void sub_1007C1528(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1007C155C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 mapView];

    [v3 _setApplicationState:*(v7 + 12)];
    [v7[10] removeFromSuperview];
    [v7[9] removeFromSuperview];
    v4 = [v7 chromeViewController];
    v5 = sub_10000FA08(v4);

    if (v5 == 5)
    {
      if (+[MapsSettings alwaysShowScale])
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      [v3 _setScaleVisibility:v6];
    }

    WeakRetained = v7;
  }
}

void sub_1007C1638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void sub_1007C1684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void sub_1007C185C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1007C1888(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [WeakRetained chromeViewController];
    v3 = [v2 mapView];

    v4 = [v9 iosBasedChromeViewController];
    v5 = [v4 acquireExploreMapHikingMapToken];
    v6 = *(v9 + 7);
    *(v9 + 7) = v5;

    *(v9 + 12) = [v3 _applicationState];
    [v3 _setApplicationState:1];
    [v9 _resetUserInteractionState];
    [v9 _insertRecenterButton];
    v7 = [v9 chromeViewController];
    v8 = sub_10000FA08(v7);

    if (v8 != 5)
    {
      [v3 setShowsCompass:1];
      [v3 _compassInsets];
      [v3 _setCompassInsets:0.0];
    }

    WeakRetained = v9;
  }
}

void sub_1007C1994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _frameRouteAnimated:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_1007C19E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _analyticsTarget];
    v4 = [v5 _analyticsValue];
    [GEOAPPortal captureUserAction:21 target:v3 value:v4];

    [v5 _frameRouteAnimated:*(a1 + 40)];
    WeakRetained = v5;
  }
}

void sub_1007C2E80(uint64_t a1, void *a2, void *a3)
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

void sub_1007C2F40(uint64_t a1)
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
  [v5 setRouteData:*(*(a1 + 40) + 32)];
  v6 = objc_opt_new();
  v7 = +[SearchResult currentLocationSearchResult];
  [v6 setSearchResult:v7];

  v8 = objc_opt_new();
  [v8 setSearchResult:v5];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:&off_1016E6E48 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  [v9 setObject:&off_1016E6E60 forKeyedSubscript:@"DirectionsRoutePlanningSessionSourceKey"];
  v10 = [*(a1 + 40) historyUUID];
  [v9 setObject:v10 forKeyedSubscript:@"DirectionsRouteUUIDKey"];

  v11 = [DirectionItem alloc];
  v15[0] = v6;
  v15[1] = v8;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [(DirectionItem *)v11 initWithItems:v12 transportType:0];

  [v4 viewController:*(*(a1 + 40) + 8) doDirectionItem:v13 withUserInfo:v9];
  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

BOOL sub_1007C3138(id a1, ChromeContext *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

UIColor *__cdecl sub_1007C37C0(id a1, UITraitCollection *a2)
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

void sub_1007C44A0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 RideBookingPlanningSession:*(a1 + 32) didFinishResolvingWaypointSet:*(a1 + 40)];
}

id sub_1007C46D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MKMapItem alloc];
  v5 = [v3 origin];
  v6 = [v5 mapItemStorage];
  v7 = [v4 initWithGeoMapItem:v6 isPlaceHolderPlace:0];

  v8 = [MKMapItem alloc];
  v9 = [v3 destination];

  v10 = [v9 mapItemStorage];
  v11 = [v8 initWithGeoMapItem:v10 isPlaceHolderPlace:0];

  v12 = [[RideBookingRideOptionStateObserverProxy alloc] initWithDelegate:*(a1 + 32)];
  [(RideBookingRideOptionStateObserverProxy *)v12 updateRideOptionStateForOrigin:v7 destination:v11];
  v13 = [Result resultWithValue:v12];

  return v13;
}

void sub_1007C4804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained rideOptionStateObserverResult];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C48A0;
  v3[3] = &unk_10162A2C0;
  v3[4] = WeakRetained;
  [v2 withValue:v3 orError:&stru_10162A2E0];
}

void sub_1007C48A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 rideOptionState];
  [v2 rideOptionStateDidChange:v3];
}

void sub_1007C4CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007C4CE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007C4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007C544C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007C54FC;
    v6[3] = &unk_101661090;
    v8 = v5;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

uint64_t sub_1007C5608(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_1007C57A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [WeakRetained chromeViewController];
  v13 = [v15 mapView];
  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [v14 chromeViewController];
  v5 = [v4 currentTraits];
  v6 = +[SearchSession currentSearchSession];
  v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [v7 appCoordinator];
  v9 = [v8 platformController];
  v10 = [v9 directionsDataSource];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007C5964;
  v17[3] = &unk_10162A308;
  v11 = *(a1 + 40);
  v18 = v3;
  v19 = v11;
  v12 = v3;
  [RAPAppStateFactory createAppStateWithMapView:v13 traits:v5 place:0 searchDataSource:v6 directionsDataSource:v10 shouldLoadHomeWorkShortcuts:1 completion:v17];
}

uint64_t sub_1007C5964(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1007C5AC0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_1007C5B70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [WeakRetained chromeViewController];
  v14 = [v15 mapView];
  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [v4 chromeViewController];
  v6 = [v5 currentTraits];
  v7 = +[SearchSession currentSearchSession];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [v8 appCoordinator];
  v10 = [v9 platformController];
  v11 = [v10 directionsDataSource];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007C5D24;
  v17[3] = &unk_10162A308;
  v12 = *(a1 + 40);
  v18 = v3;
  v19 = v12;
  v13 = v3;
  [RAPAppStateFactory createAppStateWithMapView:v14 traits:v6 place:0 searchDataSource:v7 directionsDataSource:v11 completion:v17];
}

uint64_t sub_1007C5D24(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

void sub_1007C68C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[MSPSharedTripService sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007C69A0;
  v8[3] = &unk_10162A358;
  v5 = a1[5];
  v6 = a1[4];
  v11 = a1[6];
  v8[4] = v6;
  v9 = v5;
  v10 = v3;
  v7 = v3;
  [v4 startSharingWithContact:v7 completion:v8];
}

void sub_1007C69A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 code] == 7 || objc_msgSend(v4, "code") == 9 || objc_msgSend(v4, "code") == 8) && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", MSPSharedTripErrorDomain), v5, v6))
  {
    v7 = *(a1 + 56);
    v8 = sub_100035E6C();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) count];
        v17 = 138412546;
        v18 = v10;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ - will retry automatic sharing with %lu contacts after delay, server does not have navigation state yet", &v17, 0x16u);
      }

      [*(a1 + 32) _scheduleAutomaticSharingRetry:*(a1 + 56) - 1];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = [*(a1 + 40) count];
        v17 = 138412546;
        v18 = v15;
        v19 = 2048;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ - will not retry automatic sharing with %lu contacts after delay, server does not have navigation state yet but retried too many times", &v17, 0x16u);
      }
    }
  }

  else
  {
    [_TtC4Maps29MapsSharedTripAnalyticsHelper sendSuccessAnalyticFor:*(a1 + 48)];
    v12 = sub_100035E6C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 48) stringValue];
      v17 = 138412803;
      v18 = v13;
      v19 = 2113;
      v20 = v14;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ - automatic sharing with %{private}@ completed with error: %@", &v17, 0x20u);
    }

    [*(*(a1 + 32) + 8) removeObject:*(a1 + 48)];
  }
}

void sub_1007C7EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained overviewRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    MKZoomScaleForZoomLevelF();
    v13 = v12;
    v38.origin.x = v5;
    v38.origin.y = v7;
    v38.size.width = v9;
    v38.size.height = v11;
    v14 = CGRectGetWidth(v38) / v13;
    v39.origin.x = v5;
    v39.origin.y = v7;
    v39.size.width = v9;
    v39.size.height = v11;
    v15 = (v3 + 88);
    v16 = CGRectGetHeight(v39) / v13;
    v17 = MKMapPointForCoordinate(*(v3 + 88));
    v36.x = v17.x - v14 * 0.5;
    v36.y = v17.y - v16 * 0.5;
    v18 = v36.x + v14;
    v19 = v36.y + v16;
    v20 = MKCoordinateForMapPoint(v36);
    v37.x = v18;
    v37.y = v19;
    v21 = MKCoordinateForMapPoint(v37);
    v22 = *(v3 + 12);
    if (fabs(v22) > 180.0 || (v23 = *v15, *v15 < -90.0) || v23 > 90.0 || (v24 = vabdd_f64(v20.latitude, v21.latitude), v24 > 180.0) || (v25 = vabdd_f64(v20.longitude, v21.longitude), v25 > 360.0))
    {
      *(*(a1 + 32) + 56) = 1;
    }

    else
    {
      v26 = objc_alloc_init(MKMapSnapshotOptions);
      [v26 setRegion:{v23, v22, v24, v25}];
      v27 = objc_loadWeakRetained((a1 + 40));
      v28 = [v27 mapView];
      [v26 setMapType:{objc_msgSend(v28, "mapType")}];

      [v26 setSize:{v9, v11}];
      v29 = [UITraitCollection traitCollectionWithDisplayScale:2.0];
      [v26 setTraitCollection:v29];

      v30 = [[MKMapSnapshotter alloc] initWithOptions:v26];
      v31 = *(a1 + 32);
      v32 = *(v31 + 72);
      *(v31 + 72) = v30;

      v33 = *(a1 + 32);
      v34 = *(v33 + 72);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1007C8144;
      v35[3] = &unk_101661A68;
      v35[4] = v33;
      [v34 startWithCompletionHandler:v35];
    }
  }
}

void sub_1007CC630(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = [a2 identifierPath];
  if ([v11 length] >= *(a1 + 40))
  {
    v7 = [v11 identifiers];
    v8 = [v7 objectAtIndexedSubscript:*(a1 + 40)];

    if (v8 && ([*(a1 + 32) objectForKeyedSubscript:v8], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = [NSNumber numberWithUnsignedInteger:a3];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

void *sub_1007CD998(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifierPath];
  if ([v2 containsItem:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void *sub_1007CDFC8(id val)
{
  objc_initWeak(&location, val);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007CE078;
  v3[3] = &unk_101636E00;
  objc_copyWeak(&v4, &location);
  v1 = objc_retainBlock(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

id sub_1007CE078(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v7 cellForItemAtIndexPath:v8 itemIdentifier:v9];

  if (!v11)
  {
    if (!qword_10195D850)
    {
      v12 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:&stru_10162A450];
      v13 = qword_10195D850;
      qword_10195D850 = v12;
    }

    v11 = [v7 dequeueConfiguredReusableCellWithRegistration:? forIndexPath:? item:?];
  }

  return v11;
}

void *sub_1007CE178(id val)
{
  objc_initWeak(&location, val);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007CE228;
  v3[3] = &unk_10165D680;
  objc_copyWeak(&v4, &location);
  v1 = objc_retainBlock(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

id sub_1007CE228(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v9 viewForSupplementaryElementOfKind:v8 atIndexPath:v7];

  return v11;
}

void sub_1007CEDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) placeCollectionItem];
  v6 = [v5 itemIdentifier];
  [v4 setObject:v3 forKeyedSubscript:v6];

  v7 = *(a1 + 48);

  dispatch_group_leave(v7);
}

id sub_1007CEE68()
{
  if (qword_10195D860 != -1)
  {
    dispatch_once(&qword_10195D860, &stru_10162A650);
  }

  v1 = qword_10195D858;

  return v1;
}

id sub_1007CEEBC(uint64_t a1)
{
  v2 = sub_1007CEE68();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "ResolvingAppClips", "", v9, 2u);
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return [*(a1 + 32) _finishedResolvingItems];
}

void sub_1007CEF6C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionResolver");
  v2 = qword_10195D858;
  qword_10195D858 = v1;
}

void sub_1007CF1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007CF1E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1007CF3B0;
    v13[3] = &unk_10162A5E0;
    v14 = *(a1 + 32);
    v7 = [v5 _maps_compactMap:v13];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setThirdPartyLinks:v7];

    v9 = v14;
  }

  else
  {
    v9 = sub_1007CEE68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "AMS did not return results, ignoring third party links. Error: %@", buf, 0xCu);
    }
  }

  v10 = sub_1007CEE68();
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "ResolvingThirdPartyMediaLink", "", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

CuratedCollectionResolvedThirdPartyLink *sub_1007CF3B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [CuratedCollectionResolvedThirdPartyLink alloc];
    v8 = [v6 adamID];
    v9 = [v3 shortName];
    v10 = v9;
    if (!v9)
    {
      v10 = [v3 displayName];
    }

    v11 = [v3 artworkURL];
    v12 = [v6 url];
    v13 = [(CuratedCollectionResolvedThirdPartyLink *)v7 initWithAdamID:v8 appName:v10 appIconURL:v11 url:v12];

    if (!v9)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1007CF720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007CF74C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 firstObject];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setMediaIntegration:v7];
  }

  else
  {
    v7 = sub_1007CEE68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "AMS did not return results, ignoring media integration. Error: %@", &v12, 0xCu);
    }
  }

  v9 = sub_1007CEE68();
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "ResolvingMediaLink", "", &v12, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1007CFD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CFD30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007CFD48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v6;
    WeakRetained = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = [WeakRetained placeCollectionItems];
    [v11 addObjectsFromArray:v12];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1007CFDF0(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = sub_1007CEE68();
    v3 = v2;
    v4 = *(a1 + 48);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "ResolvingCollectionItems", "", v14, 2u);
    }
  }

  v5 = [*(a1 + 32) placeCollectionItems];
  v6 = [v5 count];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 shouldResolveAppClips];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _resolveAppClips];
    }

    else
    {
      [v9 _finishedResolvingItems];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v7 + 3);
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [v11 curatedCollection];
    [WeakRetained didFailToResolveCollectionWithError:v12 withFetchedCollection:v13];
  }
}

void sub_1007D02BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007D02E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1007CEE68();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "ResolvingCollection", "", v15, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
LABEL_6:
      v11 = objc_loadWeakRetained(WeakRetained + 3);
      v12 = [WeakRetained curatedCollection];
      [v11 didFailToResolveCollectionWithError:v6 withFetchedCollection:v12];

      goto LABEL_13;
    }

    if (![v5 count])
    {
      v14 = GEOErrorDomain();
      v6 = [NSError errorWithDomain:v14 code:-6 userInfo:0];

      goto LABEL_6;
    }

    v13 = [v5 firstObject];
    [WeakRetained setCuratedCollection:v13];

    if (*(a1 + 56) == 1)
    {
      [WeakRetained _resolveCollectionDetails];
    }

    else
    {
      [*(a1 + 32) _finishedResolvingItems];
    }

    v6 = 0;
  }

LABEL_13:
}