id sub_1009E39B0()
{
  if (qword_10195E0A8 != -1)
  {
    dispatch_once(&qword_10195E0A8, &stru_1016315E0);
  }

  v1 = qword_10195E0A0;

  return v1;
}

id sub_1009E3A04(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 valueForKey:@"__internal__PlaceCardHardCodedMUID"];

  if (v3)
  {
    v4 = [[NSScanner alloc] initWithString:v3];
    v9 = 0;
    if ([v4 scanUnsignedLongLong:&v9])
    {
      v5 = v9 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = [MKMapItemIdentifier alloc];
      v7 = [v6 initWithMUID:v9 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

      goto LABEL_9;
    }
  }

  v7 = v1;
LABEL_9:

  return v7;
}

void sub_1009E3AF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1009E39B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Got a response", buf, 2u);
  }

  if (v6 || ![v5 count])
  {
    v8 = sub_1009E39B0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received error %@, number of map items are 0", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v18 + 1) + 8 * v13) + 16))(*(*(&v18 + 1) + 8 * v13));
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [*(*(a1 + 48) + 16) removeObjectForKey:{*(a1 + 40), v18}];
  }

  else
  {
    v14 = sub_1009E39B0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received successful response", buf, 2u);
    }

    v15 = [SearchResult alloc];
    v16 = [v5 firstObject];
    v17 = [(SearchResult *)v15 initWithMapItem:v16 searchResultType:*(a1 + 56) resultIndex:0];

    [*(a1 + 48) _cacheAndHandleSearchResult:v17 identifier:*(a1 + 40) completionHandlers:*(a1 + 32)];
  }
}

void sub_1009E3D74(id a1)
{
  v1 = os_log_create("com.apple.Maps", "POISearchManager");
  v2 = qword_10195E0A0;
  qword_10195E0A0 = v1;
}

id sub_1009E5AE0(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 steps];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          v7 = [v6 vehicleEntries];

          if (v7)
          {
            v2 = [v6 vehicleEntries];

            goto LABEL_13;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

id sub_1009E61D4()
{
  if (qword_10195E0B8 != -1)
  {
    dispatch_once(&qword_10195E0B8, &stru_101631688);
  }

  v1 = qword_10195E0B0;

  return v1;
}

void sub_1009E6228(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningMapController");
  v2 = qword_10195E0B0;
  qword_10195E0B0 = v1;
}

void sub_1009E6EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009E6F20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009E6F38(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v6 = +[NSNull null];

  if (!v5 || v5 == v6)
  {
    v7 = [v10 waypointPlaceholder];
    v8 = [v7 displayableMarker];
  }

  else
  {
    v7 = v5;
    v8 = [[SearchResult alloc] initWithComposedWaypoint:v7];
  }

  v9 = v8;

  if (v9)
  {
    if (a3)
    {
      [*(a1 + 40) addObject:v9];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
    }
  }
}

uint64_t sub_1009E8654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009E866C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entryForHistorySearch:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009E86BC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entryForHistoryRoute:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009E870C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entryForHistoryPlace:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1009EAFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009EB004(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 travelDirection] != 6 && objc_msgSend(v11, "travelDirection") != 2 && objc_msgSend(v11, "coordinateCount") != 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      [v11 coordinates3d];
      [v11 coordinates3d];
      GEOBearingFromCoordinateToCoordinate();
      GEOWrapAngleDegrees();
      GEOClosestCoordinateOnLineSegmentFromCoordinate();
      GEOCalculateDistance();
      v6 = v5;
      GEOAngleDifferenceDegrees();
      v8 = fabs(v7);
      v9 = *(*(a1 + 40) + 8);
      if (v8 <= *(v9 + 24) && v6 <= 5.0)
      {
        *(v9 + 24) = v8;
        (*(*(a1 + 32) + 16))();
      }

      ++v4;
      v3 += 24;
    }

    while (v4 < [v11 coordinateCount] - 1);
  }
}

void sub_1009EB480(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (v4)
  {
    v5 = *(a1 + 56);
    v8 = v3;
    v6 = [v4 count];
    v3 = v8;
    if (v5 < v6)
    {
      v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 rampType]);
      [*(a1 + 40) setObject:v7 atIndexedSubscript:*(a1 + 56)];

      (*(*(a1 + 48) + 16))();
      v3 = v8;
    }
  }
}

uint64_t sub_1009EBC8C(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  if (result >= 1)
  {
    v6 = *(a1 + 32);

    return [v6 setObject:&off_1016E7F88 atIndexedSubscript:a3];
  }

  return result;
}

uint64_t sub_1009EBCEC(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  if (result >= 1)
  {
    v6 = *(a1 + 32);

    return [v6 setObject:&off_1016E7F88 atIndexedSubscript:a3];
  }

  return result;
}

uint64_t sub_1009EBD4C(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  if (result >= 1)
  {
    v6 = *(a1 + 32);

    return [v6 setObject:&off_1016E7F88 atIndexedSubscript:a3];
  }

  return result;
}

id sub_1009EBDAC(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  if (a3 && !result)
  {
    v6 = *(a1 + 32);

    return [v6 setObject:&off_1016E7F58 atIndexedSubscript:a3];
  }

  return result;
}

id sub_1009EDDAC()
{
  if (qword_10195E0C8 != -1)
  {
    dispatch_once(&qword_10195E0C8, &stru_101631840);
  }

  v1 = qword_10195E0C0;

  return v1;
}

void sub_1009EDE00(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavCameraController");
  v2 = qword_10195E0C0;
  qword_10195E0C0 = v1;
}

void sub_1009EF5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009EF5E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    GEOConfigGetDouble();
    WeakRetained = v3;
    *(v3 + 11) = v2;
  }
}

void sub_1009EF91C(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_10195E0D0;
  qword_10195E0D0 = v1;
}

void sub_1009EFD1C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionNetworkReachabilityMonitor");
  v2 = qword_10195E0E0;
  qword_10195E0E0 = v1;
}

void sub_1009F0380(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptTestPresentPlaceCardForSearchResult:*(a1 + 40) animated:1];
}

void sub_1009F05E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F05FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startTestPresentWithSearchResult:*(a1 + 32)];
}

id sub_1009F0B70(void *a1)
{
  v1 = [a1 subviews];
  v2 = [v1 mutableCopy];

  if ([v2 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 objectAtIndexedSubscript:v3];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 subviews];
      v6 = [v5 count];

      if (v6)
      {
        v7 = [v4 subviews];
        [v2 addObjectsFromArray:v7];
      }

      if (++v3 >= [v2 count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  return v4;
}

id sub_1009F0C5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[67] == 1)
  {
    [v2 finishedSubTest:@"scrolling" checkAllFinished:0];
    v3 = *(a1 + 32);

    return [v3 _testWarmLaunch];
  }

  else
  {

    return [v2 finishedSubTest:@"scrolling" checkAllFinished:1];
  }
}

void sub_1009F10E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F110C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postNotificationForScrollingTest:2 testName:@"PlaceCardReposition medium to big"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 finishedSubTest:@"PlaceCardReposition medium to big" checkAllFinished:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _mediumizePlaceCardFromBig];
}

void sub_1009F12F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F1320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedScrollingSubTest:@"PlaceCardReposition small to medium" checkAllFinished:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _maxiumizePlaceCard];
}

void sub_1009F1514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F153C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedScrollingSubTest:@"PlaceCardReposition medium to small" checkAllFinished:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _mediumizePlaceCard];
}

void sub_1009F1DE0(uint64_t a1)
{
  [*(a1 + 32) startedSubTest:@"showPlaceCardWarmLaunch"];
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptTestPresentPlaceCardForSearchResult:*(a1 + 40) animated:1];
}

void sub_1009F23B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F23D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startPlacecardTest];
}

uint64_t sub_1009F2778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009F2790(uint64_t a1, void *a2)
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

void sub_1009F285C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) results];
  v3 = [v2 count];

  if (v3 != 1)
  {
    if (v3)
    {
      v5 = [*(*(*(a1 + 40) + 8) + 40) results];
      v6 = [v5 firstObject];

      v7 = dispatch_time(0, 5000000000);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1009F2BB0;
      v9[3] = &unk_101661A90;
      v9[4] = *(a1 + 32);
      v10 = v6;
      v8 = v6;
      dispatch_after(v7, &_dispatch_main_q, v9);
    }

    else
    {
      [*(a1 + 32) startedTest];
      v4 = *(a1 + 32);

      [v4 failedTest];
    }
  }
}

void sub_1009F29A0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) results];
  v3 = [v2 count];

  if (v3)
  {
    v4 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009F2B6C;
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

void sub_1009F2A94(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  objc_storeWeak((*(a1 + 32) + 80), v3);

  v4 = [*(*(*(a1 + 40) + 8) + 40) results];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  if (v5)
  {
    v8 = [v6 placecardChromeDelegate];
    [v8 placecardDidPresent];
  }

  else
  {
    [v6 startedTest];
    v7 = *(a1 + 32);

    [v7 failedTest];
  }
}

void sub_1009F2B6C(uint64_t a1)
{
  v1 = [*(a1 + 32) placecardChromeDelegate];
  [v1 placecardDidPresent];
}

void sub_1009F2BB0(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptTestPresentPlaceCardForSearchResult:*(a1 + 40) animated:1];
}

void sub_1009F2DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F2DF8(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F2EA8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_1009F2EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained testCoordinator];
  v4 = [v3 pptTestIsTrayType:1];

  v5 = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1009F2FC8;
    v6[3] = &unk_101661B98;
    objc_copyWeak(&v7, (a1 + 32));
    [v5 dismissTrayWithAssertTrayType:1 completion:v6];

    objc_destroyWeak(&v7);
  }

  else
  {
    [v5 startPlacecardTest];
  }
}

void sub_1009F2FC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startPlacecardTest];
}

void sub_1009F3284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009F32C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    [v3 finishedTest];
    WeakRetained = v3;
  }
}

id sub_1009F33B0(uint64_t a1)
{
  v2 = [*(a1 + 32) canUpdateTrayLayout];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1009F3464;
    v5[3] = &unk_101661B18;
    v5[4] = v3;
    return [v3 updateTrayLayout:2 animated:1 completion:v5];
  }

  else
  {

    return [v3 _scrollingTest];
  }
}

id sub_1009F3CFC(uint64_t a1)
{
  v2 = [*(a1 + 32) contentHeightCollapsedConstraint];
  [v2 setActive:0];

  v3 = [*(a1 + 32) closeButtonHeightConstraint];
  [v3 setActive:1];

  [*(a1 + 32) setAlpha:1.0];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

id sub_1009F3E38(uint64_t a1)
{
  v2 = [*(a1 + 32) closeButtonHeightConstraint];
  [v2 setActive:0];

  v3 = [*(a1 + 32) contentHeightCollapsedConstraint];
  [v3 setActive:1];

  [*(a1 + 32) setAlpha:0.0];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

void sub_1009F7D18(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionOfflineMonitor");
  v2 = qword_10195E0F0;
  qword_10195E0F0 = v1;
}

void sub_1009F7F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1009F7F5C(uint64_t a1)
{
  result = [RAPFileManager removeItemAtFilePath:?];
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

void sub_1009F8084(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:v3];
  v6 = [v5 URLByAppendingPathComponent:v4];
  v8 = [RAPFileManager dataAtFileURL:v6];

  v7 = [GEORPImageUpdate newImageUpdateWithClientImageId:v4 responseData:v8];
  [*(a1 + 40) addObject:v7];
}

void sub_1009F8BD4(uint64_t a1, void *a2)
{
  v3 = [a2 artwork];
  v12 = [UIImage _mapkit_transitArtworkImageWithDataSource:v3 size:6 scale:*(a1 + 48)];

  v4 = *(a1 + 32);
  if (v12)
  {
    [*(a1 + 32) addObject:v12];
  }

  else
  {
    v5 = +[NSNull null];
    [v4 addObject:v5];
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  [v12 size];
  v7 = MKTransitArtworkIncidentBadgeTrailingOffset;
  if (v6 <= v8 + MKTransitArtworkIncidentBadgeTrailingOffset)
  {
    [v12 size];
    v10 = v11 + v7;
    v9 = *(*(a1 + 40) + 8);
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 24);
  }

  *(v9 + 24) = v10;
}

void sub_1009F8CEC(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = +[NSNull null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v21 artwork];
    v10 = [v9 hasRoutingIncidentBadge];

    v11 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v12 = *(*(*(a1 + 56) + 8) + 24);
    if (v10)
    {
      v13 = MKTransitIncidentIcon();
    }

    else
    {
      v13 = 0;
    }

    v14 = [UIImage _compositeImageFromImage:v11 paddedToWidth:v13 badge:v12 badgeOffset:MKTransitArtworkIncidentBadgeTrailingOffset, MKTransitArtworkIncidentBadgeBottomOffset];
    v8 = [v14 imageWithRenderingMode:1];

    if (v10)
    {
    }
  }

  v15 = [v21 name];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1016631F0;
  }

  v18 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v19 = [UIAlertAction _actionWithTitle:v17 image:v8 style:0 handler:v18 shouldDismissHandler:&stru_1016319E0];

  [v19 _setTitleTextAlignment:4];
  v20 = +[UIColor labelColor];
  [v19 _setTitleTextColor:v20];

  [*(a1 + 48) addObject:v19];
}

void sub_1009F9BEC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (v2)
  {
    [v2 removeObserver:*(a1 + 32)];
  }

  [*(a1 + 48) addObserver:*(a1 + 32)];
  [*(*(a1 + 32) + 8) setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

uint64_t sub_1009F9D90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009F9DA8(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1009FA1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_1009FA22C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009FA244(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v5 addTarget:WeakRetained action:"_textFieldValueDidChange:" forControlEvents:0x20000];
    [v5 setAutocapitalizationType:0];
    [v5 setPlaceholder:*(a1 + 32)];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1009FA2EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [*(*(*(a1 + 40) + 8) + 40) text];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void sub_1009FC5EC(id a1, RAPDirectionsWhichOneQuestion *a2, RAPDirectionsCategoryQuestion *a3)
{
  v7 = a3;
  v4 = a2;
  [(RAPDirectionsCategoryQuestion *)v7 resetBadRouteSuggestionsQuestion];
  v5 = [(RAPDirectionsWhichOneQuestion *)v4 selectedValue];

  selectedValue = v7->_selectedValue;
  v7->_selectedValue = v5;

  [(RAPQuestion *)v7 _didChange];
}

void sub_1009FCFD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 key];
  _GEOConfigRemoveValue();
  [*(a1 + 40) performSelector:"reloadData" withObject:0 afterDelay:0.5];
  v6[2](v6, 1);
}

void sub_1009FD1D8(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009FD280;
  v8[3] = &unk_10165BE30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v7 = [a2 addSectionWithTitle:v4 content:v8];
}

void sub_1009FD280(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009FD318;
  v6[3] = &unk_101631BD8;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1009FD430(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009FD4D8;
  v8[3] = &unk_10165BE30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v7 = [a2 addSectionWithTitle:v4 content:v8];
}

void sub_1009FD4D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009FD590;
  v6[3] = &unk_101631BB0;
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_1009FD6AC(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009FD754;
  v8[3] = &unk_10165BE30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v7 = [a2 addSectionWithTitle:v4 content:v8];
}

void sub_1009FD754(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009FD7EC;
  v6[3] = &unk_101631BB0;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_1009FD7EC(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v6 description];
  v8 = [v5 addRowNamed:v7 forValue:v9 inSection:*(a1 + 40)];
}

void sub_1009FE1EC(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009FE2A4;
  v6[3] = &unk_10165BE30;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v5 = [a2 addSectionWithTitle:v4 content:v6];
}

void sub_1009FE2A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) key];
  v6 = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009FE378;
  v8[3] = &unk_101631B60;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = [v3 addCheckmarkRowsGroupForConfigKey:v4 content:{v6, v8}];
}

void sub_1009FE378(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) debugControlOptionsOrderedKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 32) debugControlOptions];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v3 addRowWithTitle:v9 value:v11];
        if ([v11 isEqual:*(a1 + 40)])
        {
          [v12 setSubtitle:@"(default)"];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_1009FE5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 key];
  v4 = [v3 debugControlOptions];
  v5 = [v4 objectForKey:@"name"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 name];
  }

  v8 = v7;

  v12 = [v3 debugControlType];
  v13 = v3;
  v14 = v8;
  v15 = *(a1 + 40);
  v9 = v8;
  v10 = v3;
  v11 = v12;
  GEOConfigGetPropertiesForKey();
}

void sub_1009FE700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v9 = a5;
  if ([*(a1 + 32) isEqualToString:@"slider"])
  {
    v10 = [*(a1 + 40) addSliderRowFor:*(a1 + 48) withName:*(a1 + 56) keyType:a4 defaultValue:v9 inSection:*(a1 + 64)];
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if ([*(a1 + 32) isEqualToString:@"selection"])
  {
    v10 = [*(a1 + 40) addSelectionRowFor:*(a1 + 48) withName:*(a1 + 56) keyType:a4 defaultValue:v9 inSection:*(a1 + 64)];
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v10 = [*(a1 + 40) addGenericRowFor:*(a1 + 48) withName:*(a1 + 56) keyStr:v11 keyType:a4 defaultValue:v9 configOptions:a3 inSection:*(a1 + 64)];
  if (!v10)
  {
    v10 = [*(a1 + 64) addReadOnlyRowWithTitle:*(a1 + 56) value:@"Unsupported type"];
  }

LABEL_8:
}

void sub_1009FE904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009FE920(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009FE9E4;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = [v3 addSectionWithTitle:v4 content:v6];
  objc_destroyWeak(&v7);
}

void sub_1009FE9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addGEOConfigRowsInSection:v3];
}

void sub_1009FEBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1009FEBC0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 name];
  if ([v6 localizedCaseInsensitiveContainsString:*(a1 + 32)])
  {
  }

  else
  {
    v7 = [v9 comment];
    v8 = [v7 localizedCaseInsensitiveContainsString:*(a1 + 32)];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

id sub_1009FF0FC()
{
  if (qword_10195E110 != -1)
  {
    dispatch_once(&qword_10195E110, &stru_101631C20);
  }

  v1 = qword_10195E108;

  return v1;
}

void sub_1009FF150(id a1)
{
  v1 = [GEOFilePaths pathFor:39];
  v23 = v1;
  v2 = [NSArray arrayWithObjects:&v23 count:1];
  v3 = qword_10195E108;
  qword_10195E108 = v2;

  v4 = +[NSBundle mainBundle];
  v5 = [v4 builtInPlugInsPath];

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 hasSuffix:{@".bundle", v17}] && objc_msgSend(v13, "rangeOfString:", @"Debug") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "rangeOfString:", @"Config") != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v5;
          v14 = [NSArray arrayWithObjects:&v21 count:1];
          v15 = [v14 arrayByAddingObjectsFromArray:qword_10195E108];
          v16 = qword_10195E108;
          qword_10195E108 = v15;

          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_1009FF49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009FF4B8(id *a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [a1[5] objectForKeyedSubscript:v7];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1009FF678;
        v11[3] = &unk_101631AC0;
        v11[4] = v7;
        v12[1] = v8;
        objc_copyWeak(v12, a1 + 6);
        v9 = [v3 addNavigationRowWithTitle:v7 action:v11];
        objc_destroyWeak(v12);
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_1009FF678(uint64_t a1)
{
  v3 = [[GEOConfigKeysDebugController alloc] initWithName:*(a1 + 32) geoConfigDebugClass:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained segueToViewController:v3];
}

void sub_100A00A30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setServicesState:a2];
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Services state: %@", buf, 0xCu);
    }
  }

  v7 = +[GEORPLegacyProblemRequester sharedRequester];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A00BA4;
  v10[3] = &unk_101631C48;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v9;
  [v7 startStatusRequest:v8 finished:v10 networkActivity:0 error:&stru_101631C68];
}

void sub_100A00BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Problem status response: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained pushManager:*(a1 + 32) receivedFixedProblemNotification:v3 manifestToken:*(a1 + 40)];
}

void sub_100A00C90(id a1, NSError *a2)
{
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Problem status: %@", &v4, 0xCu);
  }
}

void sub_100A01010(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained pushManager:a1[4] receivedPhotoLivenessMUID:a1[5] title:a1[6] message:a1[7] actionURL:a1[8]];
}

void sub_100A012CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained pushManager:*(a1 + 32) receivedFixedProblemNotification:*(a1 + 40) manifestToken:0];
}

void sub_100A018D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A018EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A01904(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100A03014(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195E118;
  qword_10195E118 = v1;
}

void sub_100A03EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100A03F50(uint64_t a1, void *a2, void *a3)
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

void sub_100A04B44(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10195E138;
  qword_10195E138 = v1;

  [qword_10195E138 setAllowedUnits:64];
  v3 = qword_10195E138;

  [v3 setUnitsStyle:2];
}

void sub_100A04C34(uint64_t a1)
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = qword_10195E128;
  qword_10195E128 = v2;

  v4 = qword_10195E128;
  v5 = +[NSLocale autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  [qword_10195E128 setLocalizedDateFormatFromTemplate:@"jma"];
  [qword_10195E128 setAMSymbol:&stru_1016631F0];
  [qword_10195E128 setPMSymbol:&stru_1016631F0];
  v6 = [*(a1 + 32) timeZone];
  [qword_10195E128 setTimeZone:v6];
}

void sub_100A05460(uint64_t a1)
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = qword_10195E148;
  qword_10195E148 = v2;

  v4 = qword_10195E148;
  v5 = +[NSLocale autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  [qword_10195E148 setLocalizedDateFormatFromTemplate:@"jma"];
  [qword_10195E148 setAMSymbol:&stru_1016631F0];
  [qword_10195E148 setPMSymbol:&stru_1016631F0];
  v6 = [*(a1 + 32) timeZone];
  [qword_10195E148 setTimeZone:v6];
}

void sub_100A06968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 selectDeparture:*(a1 + 32)];
}

void sub_100A08B74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createAnimation];
}

void sub_100A099C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100A09AE0;
    v10 = &unk_101631D10;
    objc_copyWeak(&v12, (a1 + 32));
    v11 = WeakRetained;
    v3 = objc_retainBlock(&v7);
    v4 = [WeakRetained sign];
    v5 = [v4 step];

    v6 = [WeakRetained cameraFramer];
    [v6 rectForStep:v5 currentStepIndex:objc_msgSend(v5 handler:{"stepIndex"), v3}];

    objc_destroyWeak(&v12);
  }
}

void sub_100A09AE0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v19 = MKMapRectInset(*&a2, a4 * -0.1, a5 * -0.1);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v10 = objc_alloc_init(MKMapSnapshotOptions);
  [v10 setMapRect:{x, y, width, height}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v10 setMapType:{objc_msgSend(WeakRetained, "mapType")}];

  [v10 setSize:{163.0, 163.0}];
  v12 = [UITraitCollection traitCollectionWithDisplayScale:2.0];
  [v10 setTraitCollection:v12];

  v13 = [[MKMapSnapshotter alloc] initWithOptions:v10];
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = v13;

  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A09C44;
  v18[3] = &unk_101661A68;
  v18[4] = v16;
  [v17 startWithCompletionHandler:v18];
}

void sub_100A0A468(id a1)
{
  v1 = [MapsSuggestionsNavdMapsAppLocationManager alloc];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("MapsSuggestionsNavdMapsAppLocationManagerQueue", v5);
  v3 = [(MapsSuggestionsNavdMapsAppLocationManager *)v1 initWithName:@"MapsSuggestionsNavdMapsAppLocationManager" queue:v2];
  v4 = qword_10195E158;
  qword_10195E158 = v3;
}

void sub_100A0A57C(id a1)
{
  v1 = +[MNFilePaths navdCacheDirectoryPath];
  v2 = qword_10195E168;
  qword_10195E168 = v1;

  v10 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:qword_10195E168 isDirectory:&v10];
  v5 = v10;

  if ((v4 & 1) == 0 && !v5)
  {
    v6 = +[NSFileManager defaultManager];
    v9 = 0;
    [v6 createDirectoryAtPath:qword_10195E168 withIntermediateDirectories:1 attributes:0 error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v12 = qword_10195E168;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot create cache dir at: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_100A0AC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A0AC44(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained updateAddresses];
  }

  else
  {
    if (qword_10195E180 != -1)
    {
      dispatch_once(&qword_10195E180, &stru_101631D70);
    }

    v3 = qword_10195E178;
    if (os_log_type_enabled(qword_10195E178, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save shortcut %@. with refined coordinate", buf, 0xCu);
    }
  }
}

void sub_100A0AD60(id a1)
{
  v1 = os_log_create("com.apple.Maps", "HomeWorkShortcutSelection");
  v2 = qword_10195E178;
  qword_10195E178 = v1;
}

void sub_100A0B2EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100A0B308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

void sub_100A0D99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A0D9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v6 && !a3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100A0DA58(id a1, UIImageView *a2, UIImage *a3, BOOL a4)
{
  v4 = a4;
  v6 = a2;
  v7 = a3;
  v11[1] = 3221225472;
  v11[0] = _NSConcreteStackBlock;
  v11[2] = sub_100A0DB4C;
  v11[3] = &unk_101661A90;
  if (v4)
  {
    v8 = 0.300000012;
  }

  else
  {
    v8 = 0.0;
  }

  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [UIView transitionWithView:v10 duration:5242882 options:v11 animations:0 completion:v8];
}

id sub_100A0E7E4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 216) setAlpha:v2];
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(*(a1 + 32) + 240) setAlpha:v3];
  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *(*(a1 + 32) + 96);

  return [v5 setAlpha:v4];
}

uint64_t sub_100A115D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100A11800(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100A11A1C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100A1379C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A137B4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100A13800(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "GatherItems", "", v5, 2u);
  }
}

int64_t sub_100A13888(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 eventDate];
  v7 = [v5 eventDate];
  v8 = [v6 compare:v7];
  if (!v8)
  {
    v9 = [v4 priority];
    v10 = [v5 priority];
    if (v9 > v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = v9 != v10;
    }
  }

  return v8;
}

int64_t sub_100A13930(id a1, PersonalizedItemSource *a2, PersonalizedItemSource *a3)
{
  v4 = a3;
  if ([(PersonalizedItemSource *)a2 sourceType]== 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = [(PersonalizedItemSource *)v4 sourceType]== 1;
  }

  return v5;
}

void sub_100A13AE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 77) == 1)
  {
    v3 = *(v2 + 64);
    v9 = [*(a1 + 40) copy];
    v4 = objc_retainBlock(v9);
    [v3 addObject:v4];
  }

  else
  {
    v5 = [*(v2 + 48) copy];
    v6 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A13BFC;
    block[3] = &unk_101661090;
    v7 = *(a1 + 40);
    v11 = v5;
    v12 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_100A13CA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 77) == 1)
  {
    v3 = *(v2 + 56);
    v9 = [*(a1 + 40) copy];
    v4 = objc_retainBlock(v9);
    [v3 addObject:v4];
  }

  else
  {
    v5 = [*(v2 + 40) copy];
    v6 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A13DC4;
    block[3] = &unk_101661090;
    v7 = *(a1 + 40);
    v11 = v5;
    v12 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_100A13EC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v3 == 1)
  {
    v4 = [*(v2 + 48) copy];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }
}

void sub_100A14044(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v3 == 1)
  {
    v4 = [*(v2 + 40) copy];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }
}

void sub_100A142EC(uint64_t a1)
{
  if (*(*(a1 + 32) + 78) != *(a1 + 48))
  {
    v2 = sub_100039D48();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Setting updates paused: %d", v6, 8u);
    }

    v4 = *(a1 + 48);
    *(*(a1 + 32) + 78) = v4;
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(*(a1 + 32) + 76);
    }

    *(*(*(a1 + 40) + 8) + 24) = v5 & 1;
  }
}

void sub_100A14494(uint64_t a1)
{
  v2 = [[NSSet alloc] initWithArray:*(a1 + 32)];
  v3 = [[NSMutableSet alloc] initWithArray:*(*(a1 + 40) + 24)];
  [v3 minusSet:v2];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v94;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v94 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v93 + 1) + 8 * i) removeObserver:*(a1 + 40)];
      }

      v6 = [v4 countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v6);
  }

  v9 = [v2 mutableCopy];
  v10 = [[NSSet alloc] initWithArray:*(*(a1 + 40) + 24)];
  [v9 minusSet:v10];

  v85 = v9;
  v11 = [v9 copy];
  v12 = [v2 allObjects];
  v13 = [v12 mutableCopy];
  v14 = *(a1 + 40);
  v15 = *(v14 + 24);
  *(v14 + 24) = v13;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v90;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v90 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v89 + 1) + 8 * j) addObserver:*(a1 + 40)];
      }

      v18 = [v16 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v18);
  }

  v21 = sub_100039D48();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(*(a1 + 40) + 24);
    v23 = v22;
    v83 = v4;
    v84 = v2;
    v82 = v21;
    if (v22)
    {
      if ([v22 count])
      {
        v79 = v16;
        v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v23 count]);
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        obj = v23;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v26)
        {
          goto LABEL_35;
        }

        v27 = v26;
        v28 = *v98;
        while (1)
        {
          v29 = 0;
          do
          {
            if (*v98 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v97 + 1) + 8 * v29);
            if (v30)
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_28;
              }

              v33 = [v30 performSelector:"accessibilityIdentifier"];
              v34 = v33;
              if (v33 && ![v33 isEqualToString:v32])
              {
                v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];
              }

              else
              {

LABEL_28:
                v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
              }

              goto LABEL_31;
            }

            v35 = @"<nil>";
LABEL_31:

            [v24 addObject:v35];
            v29 = v29 + 1;
          }

          while (v27 != v29);
          v36 = [v25 countByEnumeratingWithState:&v97 objects:buf count:16];
          v27 = v36;
          if (!v36)
          {
LABEL_35:

            v37 = [v25 componentsJoinedByString:{@", "}];
            v38 = [NSString stringWithFormat:@"<%p> [%@]", v25, v37];

            v4 = v83;
            v2 = v84;
            v16 = v79;
            v21 = v82;
            v23 = obj;
            goto LABEL_38;
          }
        }
      }

      v38 = [NSString stringWithFormat:@"<%p> (empty)", v23];
    }

    else
    {
      v38 = @"<nil>";
    }

LABEL_38:

    v39 = v38;
    v40 = [v4 allObjects];
    v41 = v40;
    if (v40)
    {
      if ([v40 count])
      {
        v80 = v39;
        v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v41 count]);
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v77 = v41;
        obja = v41;
        v43 = [obja countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v43)
        {
          goto LABEL_57;
        }

        v44 = v43;
        v45 = *v98;
        while (1)
        {
          v46 = 0;
          do
          {
            if (*v98 != v45)
            {
              objc_enumerationMutation(obja);
            }

            v47 = *(*(&v97 + 1) + 8 * v46);
            if (v47)
            {
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_50;
              }

              v50 = [v47 performSelector:"accessibilityIdentifier"];
              v51 = v50;
              if (v50 && ![v50 isEqualToString:v49])
              {
                v52 = [NSString stringWithFormat:@"%@<%p, %@>", v49, v47, v51];
              }

              else
              {

LABEL_50:
                v52 = [NSString stringWithFormat:@"%@<%p>", v49, v47];
              }

              goto LABEL_53;
            }

            v52 = @"<nil>";
LABEL_53:

            [v42 addObject:v52];
            v46 = v46 + 1;
          }

          while (v44 != v46);
          v53 = [obja countByEnumeratingWithState:&v97 objects:buf count:16];
          v44 = v53;
          if (!v53)
          {
LABEL_57:

            v54 = [obja componentsJoinedByString:{@", "}];
            v55 = [NSString stringWithFormat:@"<%p> [%@]", obja, v54];

            v4 = v83;
            v2 = v84;
            v39 = v80;
            v21 = v82;
            v41 = v77;
            goto LABEL_60;
          }
        }
      }

      v55 = [NSString stringWithFormat:@"<%p> (empty)", v41];
    }

    else
    {
      v55 = @"<nil>";
    }

LABEL_60:

    v56 = v55;
    v57 = [v16 allObjects];
    v58 = v57;
    if (v57)
    {
      if ([v57 count])
      {
        v76 = v56;
        v78 = v41;
        v81 = v39;
        v59 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v58 count]);
        v60 = v58;
        v61 = v59;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v75 = v60;
        objb = v60;
        v62 = [objb countByEnumeratingWithState:&v97 objects:buf count:16];
        if (!v62)
        {
          goto LABEL_79;
        }

        v63 = v62;
        v64 = *v98;
        while (1)
        {
          v65 = 0;
          do
          {
            if (*v98 != v64)
            {
              objc_enumerationMutation(objb);
            }

            v66 = *(*(&v97 + 1) + 8 * v65);
            if (v66)
            {
              v67 = objc_opt_class();
              v68 = NSStringFromClass(v67);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_72;
              }

              v69 = [v66 performSelector:"accessibilityIdentifier"];
              v70 = v69;
              if (v69 && ![v69 isEqualToString:v68])
              {
                v71 = [NSString stringWithFormat:@"%@<%p, %@>", v68, v66, v70];
              }

              else
              {

LABEL_72:
                v71 = [NSString stringWithFormat:@"%@<%p>", v68, v66];
              }

              goto LABEL_75;
            }

            v71 = @"<nil>";
LABEL_75:

            [v61 addObject:v71];
            v65 = v65 + 1;
          }

          while (v63 != v65);
          v72 = [objb countByEnumeratingWithState:&v97 objects:buf count:16];
          v63 = v72;
          if (!v72)
          {
LABEL_79:

            v73 = [objb componentsJoinedByString:{@", "}];
            v74 = [NSString stringWithFormat:@"<%p> [%@]", objb, v73];

            v4 = v83;
            v2 = v84;
            v39 = v81;
            v21 = v82;
            v56 = v76;
            v41 = v78;
            v58 = v75;
            goto LABEL_82;
          }
        }
      }

      v74 = [NSString stringWithFormat:@"<%p> (empty)", v58];
    }

    else
    {
      v74 = @"<nil>";
    }

LABEL_82:

    *buf = 138412802;
    v104 = v39;
    v105 = 2112;
    v106 = v56;
    v107 = 2112;
    v108 = v74;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "-> itemSources: %@\n   outgoing: %@\n   incoming: %@", buf, 0x20u);
  }
}

void sub_100A14F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100A14F30(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) removeObserver:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);

    return [v4 removeObject:v3];
  }

  return result;
}

void sub_100A1508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100A150A4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) addObserver:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_100A15310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A15328(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = *(v2 + 88);
  v4 = (v2 + 88);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100A15554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A1556C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = *(v2 + 80);
  v4 = (v2 + 80);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100A15D70(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MenuContaineeViewController");
  v2 = qword_10195E1A0;
  qword_10195E1A0 = v1;
}

void sub_100A176B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A176D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      *v18 = @"ALL";
      *&v18[8] = 2112;
      *&v18[10] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    v7 = WeakRetained[1];
    v8 = *(a1 + 32);
    v9 = WeakRetained[2];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100A1793C;
    v12[3] = &unk_10165DCA0;
    objc_copyWeak(&v14, (a1 + 56));
    v10 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v10;
    [v7 fetchLocationEntriesForTray:1 currentLocation:v8 queue:v9 handler:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v11 = v3;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsPortraitSource.m";
      v17 = 1026;
      *v18 = 97;
      *&v18[4] = 2082;
      *&v18[6] = "[MapsSuggestionsPortraitSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100A1793C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received an error inside _fetchEntries: %@", &v19, 0xCu);
      }

      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [*(a1 + 32) uniqueName];
        v19 = 138412546;
        v20 = v11;
        v21 = 2080;
        v22[0] = "updateSuggestionEntriesWithHandler";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v19, 0x16u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v12))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v19, 2u);
      }
    }

    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    [WeakRetained addOrUpdateMySuggestionEntries:v13];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [WeakRetained uniqueName];
      v19 = 138412546;
      v20 = v15;
      v21 = 2080;
      v22[0] = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v19, 0x16u);
    }

    v16 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v16))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v19, 2u);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446722;
      v20 = "MapsSuggestionsPortraitSource.m";
      v21 = 1026;
      LODWORD(v22[0]) = 104;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[MapsSuggestionsPortraitSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v19, 0x1Cu);
    }
  }
}

void sub_100A182B4(uint64_t a1)
{
  v5 = [UIFont systemFontOfSize:9.0 weight:UIFontWeightBold];
  [@"AQI" _maps_sizeWithFont:v5];
  v3 = v2 * 5.0;
  [*(a1 + 32) _maps_sizeWithFont:v5];
  if (v4 > v3)
  {
    byte_10195E1B0 = 1;
  }
}

void sub_100A19198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100A191BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_100799CA8();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (a2 == 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarSessionController : user accepted End Navigation prompt", buf, 2u);
    }

    v7 = +[CarDisplayController sharedInstance];
    v8 = [v7 chromeViewController];
    [v8 captureUserAction:3002 onTarget:1013];

    [WeakRetained _promptToEndNavigationAccepted:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarSessionController : user discard End Navigation prompt", v12, 2u);
    }

    v9 = +[CarDisplayController sharedInstance];
    v10 = [v9 chromeViewController];
    [v10 captureUserAction:18 onTarget:1013];

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

void sub_100A1AE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100A1AE3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100A1FFEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained isLowPowerModeEnabled];
    v3 = [v5 stateManager];
    v4 = v3;
    if (v2)
    {
      [v3 recordSessionDisableEvent:0];
    }

    else
    {
      [v3 resetSessionDisableEvent:0];
    }

    WeakRetained = v5;
  }
}

id sub_100A20194()
{
  if (qword_10195E1D8 != -1)
  {
    dispatch_once(&qword_10195E1D8, &stru_101631F80);
  }

  v1 = qword_10195E1D0;

  return v1;
}

void sub_100A201E8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionPowerStateMonitor");
  v2 = qword_10195E1D0;
  qword_10195E1D0 = v1;
}

void sub_100A21A04(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 60 * a3;
    v5 = a2;
    v10 = [NSString _navigation_stringWithSeconds:v4 andAbbreviationType:1];
    v6 = [[RouteMarkerFormatterInfo alloc] initWithRouteDescription:v10 etaComparison:0 tollCurrency:0 styleAttributes:0];
    v7 = *(a1 + 32);
    v8 = [v5 legIndex];

    v9 = [NSNumber numberWithUnsignedInteger:v8];
    [v7 setObject:v6 forKeyedSubscript:v9];
  }
}

void sub_100A21E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A21EB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 remainingMinutes] - *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))(*(a1 + 32), v6, v7, a4);

  *(*(*(a1 + 40) + 8) + 24) += v7;
}

void sub_100A220B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setVirtualGarage:*(a1 + 32)];
    [v3 _reloadAvailability];
    WeakRetained = v3;
  }
}

void sub_100A221D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MapsOfflineUIHelper sharedHelper];
    v3 = [v2 isUsingOfflineMaps];

    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    v5 = [WeakRetained transportType];
    v6 = *(WeakRetained + 24);
    v7 = [WeakRetained virtualGarage];
    if (v7)
    {
      v8 = [WeakRetained numberOfLPRLVehicles] == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = WeakRetained[4];
    UInteger = GEOConfigGetUInteger();
    v11 = UInteger;
    if (IsEnabled_Alberta && v5 == 1)
    {
      v12 = 0;
      if ((v6 & 1) == 0)
      {
        if (v8)
        {
          v12 = (v9 < UInteger) & (v3 ^ 1);
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    [WeakRetained setAvailable:v12];
    v13 = sub_10006250C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v12)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v27 = v14;
      if (IsEnabled_Alberta)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      if (v5 == 1)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = v17;
      if (v6)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = v19;
      if (v8)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = v21;
      if (v9 >= v11)
      {
        v23 = @"NO";
      }

      else
      {
        v23 = @"YES";
      }

      v24 = v23;
      if (v3)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v26 = v25;
      *buf = 138413826;
      v29 = v27;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v22;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "_reloadAvailability LPRRoutingFeatureDiscoverySource isAvailable: %@\n, featureEnabled: %@, validTransportType: %@, wasDismissed: %@, needToAddLicencePlate: %@, belowMaximumViewCount: %@, isOffline: %@", buf, 0x48u);
    }
  }
}

void sub_100A225C8(id a1)
{
  v1 = sub_10006250C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "User selected LPR suggestion.", v5, 2u);
  }

  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];

  [v4 presentLPRWithVehicle:0 scenario:0 presenter:0 completionBlock:0];
}

void sub_100A22744(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A227E8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v2, (a1 + 32));
  if (qword_10195E1E0 != -1)
  {
    dispatch_once(&qword_10195E1E0, block);
  }

  objc_destroyWeak(&v2);
}

void sub_100A227E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10006250C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User viewed LPR suggestion.", v4, 2u);
    }

    ++WeakRetained[4];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setInteger:WeakRetained[4] forKey:@"LPRRoutingFeatureDiscoverySourceViewedTimesKey"];

    [WeakRetained _reloadAvailability];
  }
}

void sub_100A2295C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10006250C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User dismissed LPR suggestion.", v3, 2u);
    }

    WeakRetained[24] = 1;
    [WeakRetained _reloadAvailability];
  }
}

void sub_100A22CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_100A22CFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSelectModel];
}

void sub_100A22D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didViewModel];
}

void sub_100A22D7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_100A22E74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (v4 != WeakRetained[25])
    {
      WeakRetained[25] = v4;
      v5 = sub_10006250C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        if (v3[25])
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = v6;
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did update availability of LPR routing to %@.", buf, 0xCu);
      }

      v8 = *(*(a1 + 32) + 16);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100A22FE4;
      v9[3] = &unk_101661368;
      objc_copyWeak(&v10, (a1 + 40));
      v11 = *(a1 + 48);
      dispatch_async(v8, v9);
      objc_destroyWeak(&v10);
    }
  }
}

void sub_100A22FE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 5);
    [v3 source:v4 didUpdateAvailability:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_100A231C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    if (v3 != WeakRetained[7])
    {
      WeakRetained[7] = v3;
      v4 = WeakRetained;
      [WeakRetained _reloadAvailability];
      WeakRetained = v4;
    }
  }
}

void sub_100A234E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A2350C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100A235DC;
    v7[3] = &unk_101661340;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void sub_100A235DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setVirtualGarage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100A2439C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E1E8;
  qword_10195E1E8 = v1;

  [qword_10195E1E8 setNumberStyle:0];
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195E1E8 setLocale:v3];
}

void sub_100A2565C(uint64_t a1)
{
  v2 = sub_100028730();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Waypoints for directions plan are from navigation with Unique ID: %@, %@", &v5, 0x16u);
  }
}

void sub_100A25710(uint64_t a1)
{
  v2 = sub_100028730();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Waypoints for directions plan are valid from RPS with Unique ID:%@, %@", &v5, 0x16u);
  }
}

void sub_100A257C4(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = objc_alloc_init(DirectionsPlanWaypoint);
  v6 = [*(a1 + 32) waypointAtIndex:a3];
  if (v6)
  {
    [(DirectionsPlanWaypoint *)v5 setWaypoint:v6];
  }

  else
  {
    v7 = [v12 waypointPlaceholder];
    v8 = [v7 displayableMarker];

    v9 = [v8 singleLineAddress];
    if ([v9 length])
    {
      [(DirectionsPlanWaypoint *)v5 setSearchString:v9];
    }

    else
    {
      v10 = [v12 waypointPlaceholder];
      v11 = [v10 name];
      [(DirectionsPlanWaypoint *)v5 setSearchString:v11];
    }
  }

  [*(a1 + 40) addPlanningWaypoint:v5];
}

void sub_100A284F0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  [v2 removeControllerFromStack:*(a1 + 40)];
}

void sub_100A285F8(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  [v2 removeControllerFromStack:*(a1 + 40)];
}

void sub_100A286F8(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  [v2 removeControllerFromStack:*(a1 + 40)];
}

void sub_100A29A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A29A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsTablePartsUpdateWithSender:0 scroll:0];
  [WeakRetained _instrumentSelectingRoute];
}

RAPSingleLineTableViewCell *sub_100A2A060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[RAPSingleLineTableViewCell alloc] initWithStyle:0 reuseIdentifier:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Show all routes" value:@"localized string not found" table:0];
  v7 = [(RAPSingleLineTableViewCell *)v4 textLabel];
  [v7 setText:v6];

  [*(a1 + 32) _separatorInset];
  [(RAPSingleLineTableViewCell *)v4 setSeparatorInset:?];

  return v4;
}

UITableViewCell *__cdecl sub_100A2A138(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[TransitRouteRAPTableViewCell alloc] initWithStyle:0 reuseIdentifier:v2];

  return v3;
}

UITableViewCell *__cdecl sub_100A2A194(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[RAPCheckmarkTableViewCell alloc] initWithStyle:0 reuseIdentifier:v2];

  return v3;
}

void sub_100A2AB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A2AC54;
  block[3] = &unk_1016321C0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v3;
  v6 = v5;
  v13 = *(a1 + 56);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_100A2AC54(uint64_t a1)
{
  v2 = [*(a1 + 32) loisByType];
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  [v2 setObject:v4 forKey:*(a1 + 48)];

  v5 = [*(a1 + 32) retrievingLOIsOfTypes];
  [v5 removeObject:*(a1 + 48)];

  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) initialRetrievalDispatchGroup];
    dispatch_group_leave(v6);
  }

  v7 = [*(a1 + 32) invalidatedLOIsOfTypes];
  v8 = [v7 containsObject:*(a1 + 48)];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);

    [v9 retrieveLOIsOfType:v10];
  }
}

void sub_100A2AE7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateLOIs];
}

id sub_100A2AF50(uint64_t a1)
{
  result = [*(a1 + 32) monitoringLOIsOfType:*(a1 + 40)];
  if (result)
  {
    v3 = [*(a1 + 32) invalidatedLOIsOfTypes];
    v4 = [NSNumber numberWithInteger:*(a1 + 40)];
    [v3 addObject:v4];

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 retrieveLOIsOfType:v6];
  }

  return result;
}

void sub_100A2B070(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) loisByType];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [*(a1 + 32) invalidatedLOIsOfTypes];
        [v9 addObject:v8];

        [*(a1 + 32) retrieveLOIsOfType:{objc_msgSend(v8, "integerValue")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_100A2B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A2B2FC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [*(a1 + 40) loisByType];
        v10 = [v9 objectForKey:v8];

        if (!v10)
        {
          [*(a1 + 40) retrieveLOIsOfType:{objc_msgSend(v8, "integerValue")}];
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);

    if ((v6 & 1) == 0)
    {
      v11 = [*(a1 + 40) initialRetrievalDispatchGroup];
      dispatch_group_notify(v11, &_dispatch_main_q, *(a1 + 48));

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

void sub_100A2B5D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) locationsOfInterestWithType:*(a1 + 48)];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  (*(v1 + 16))(v1, v3);
}

uint64_t sub_100A2B734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A2B74C(uint64_t a1)
{
  v6 = [*(a1 + 32) loisByType];
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100A2BB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A2BB7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 childItem];
  [v2 didTapChildItemButtonForChildItem:v4];
}

void sub_100A2BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A2BFCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A2C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100A2C75C(uint64_t a1, void *a2, void *a3)
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

void sub_100A31358(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(GEORPFeedbackUserInfo);
  v7 = objc_alloc_init(GEORPTdmInfo);
  [v6 setTdmUserInfo:v7];

  v8 = [v6 tdmUserInfo];
  [v8 setIsBlocked:a2];

  v9 = [v6 tdmUserInfo];
  [v9 setIsTrusted:a3];

  v10 = [a1[4] submissionParameters];
  if ([v10 type] != 21)
  {

    goto LABEL_5;
  }

  v11 = [a1[5] previousFeedbackID];

  if (!v11)
  {
LABEL_5:
    v12 = +[_TtC4Maps26FeedbackCommunityIDManager shared];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100A3168C;
    v18[3] = &unk_101632340;
    v14 = &v19;
    v19 = v6;
    v15 = &v20;
    v20 = a1[6];
    v17 = v6;
    [v12 fetchAuthenticationInfoForRAPReportWithReportID:0 completion:v18];
    goto LABEL_6;
  }

  v12 = +[_TtC4Maps26FeedbackCommunityIDManager shared];
  v13 = [a1[5] previousFeedbackID];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100A31578;
  v21[3] = &unk_101632340;
  v14 = &v22;
  v22 = v6;
  v15 = &v23;
  v23 = a1[6];
  v16 = v6;
  [v12 fetchAuthenticationInfoForRAPReportWithReportID:v13 shouldIncreaseCount:0 completion:v21];

LABEL_6:
}

void sub_100A31578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10002E924();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "communityID fetch Error: %@", &v10, 0xCu);
    }
  }

  v8 = [v5 anonymousId];
  v9 = [*(a1 + 32) tdmUserInfo];
  [v9 setAnonymousUserId:v8];

  (*(*(a1 + 40) + 16))();
}

void sub_100A3168C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10002E924();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "communityID fetch Error: %@", &v10, 0xCu);
    }
  }

  v8 = [v5 anonymousId];
  v9 = [*(a1 + 32) tdmUserInfo];
  [v9 setAnonymousUserId:v8];

  (*(*(a1 + 40) + 16))();
}

void sub_100A31A0C(uint64_t a1)
{
  [*(a1 + 32) _invokeChangeHandlers];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  if (_MKRAPIsAvailable() && !sub_1007413D0())
  {
    v4 = *(a1 + 32);
    v43 = 0;
    v5 = [v4 _buildRequestParamsWithError:&v43];
    v6 = v43;
    if (v6)
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        (*(v7 + 16))(v7, *(a1 + 32), v6);
      }
    }

    else if ([v5 hasSubmissionParameters] && (objc_msgSend(v5, "submissionParameters"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasType"), v8, (v9 & 1) != 0))
    {
      v10 = [v5 submissionParameters];
      v11 = [v10 type];

      if (v11 == 11)
      {
        v12 = [GEOLocation alloc];
        v13 = [v5 submissionParameters];
        v14 = [v13 details];
        v15 = [v14 incidentFeedback];
        v16 = [v15 newIncidentDetails];
        v17 = [v16 incidentLocation];
        v18 = [v17 latLng];
        v19 = [v12 initWithLocation:v18];

        v20 = [v5 submissionParameters];
        v21 = [v20 details];
        v22 = [v21 incidentFeedback];
        v23 = [v22 newIncidentDetails];
        v24 = [v23 type];

        v25 = [[TrafficIncidentReport alloc] initWithIncidentLocation:v19 type:v24 userPath:4];
        v26 = *(*(a1 + 32) + 16);
        v27 = [v5 submissionParameters];
        v28 = [v27 commonCorrections];
        v29 = [v28 comments];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100A31FE0;
        v41[3] = &unk_101661090;
        v30 = *(a1 + 56);
        v41[4] = *(a1 + 32);
        v42 = v30;
        [(TrafficIncidentReport *)v25 submitWithAttachedImages:v26 comments:v29 completionHandler:v41];
      }

      else
      {
        objc_initWeak(&buf, *(a1 + 32));
        v32 = *(a1 + 32);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100A32070;
        v35[3] = &unk_1016322C8;
        objc_copyWeak(&v39, &buf);
        v33 = v5;
        v34 = *(a1 + 32);
        v36 = v33;
        v37 = v34;
        v38 = *(a1 + 56);
        [v32 _buildUserInfoWithRequestParams:v33 CompletionHandler:v35];

        objc_destroyWeak(&v39);
        objc_destroyWeak(&buf);
      }
    }

    else
    {
      v31 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Canceling problem report send because the model created a malformed report", &buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

void sub_100A31E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A31E34(uint64_t a1)
{
  if ([*(a1 + 32) _shouldEnableCommunityID] || *(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100A31F44;
      v6[3] = &unk_1016603A8;
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      (*(v4 + 16))(v4, v5, v6);

      return;
    }

    v2 = *(a1 + 56);
  }

  v3 = *(v2 + 16);

  v3();
}

uint64_t sub_100A31F44(uint64_t a1, char a2)
{
  if (a2)
  {
    [GEOAPPortal captureUserAction:17090 target:0 value:0];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setBool:1 forKey:@"RAPHasReceived2015PrivacyConsent"];

    v4 = 40;
  }

  else
  {
    [GEOAPPortal captureUserAction:17085 target:0 value:0];
    v4 = 32;
  }

  v5 = *(*(a1 + v4) + 16);

  return v5();
}

id sub_100A31FE0(uint64_t a1)
{
  v2 = sub_10002E924();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Successfully submitted RAP", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  return [*(a1 + 32) _invokeChangeHandlers];
}

void sub_100A32070(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A32150;
  block[3] = &unk_10164CF68;
  objc_copyWeak(&v13, (a1 + 56));
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v13);
}

void sub_100A32150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v3 = sub_10002E924();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "UserInfo for RAP Submission: %@", &buf, 0xCu);
  }

  if (_GEOConfigHasValue())
  {
    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v52 = [NSNumber numberWithUnsignedInt:118];
  v56 = v52;
  *&buf = &off_1016EE2B8;
  v50 = [NSNumber numberWithUnsignedInt:119];
  v57 = v50;
  *(&buf + 1) = &off_1016EE2E0;
  v48 = [NSNumber numberWithUnsignedInt:120];
  v58 = v48;
  v67 = &off_1016EE308;
  v46 = [NSNumber numberWithUnsignedInt:121];
  v59 = v46;
  v68 = &off_1016EE330;
  v18 = [NSNumber numberWithUnsignedInt:122];
  v60 = v18;
  v69 = &off_1016EE358;
  v19 = [NSNumber numberWithUnsignedInt:123];
  v61 = v19;
  v70 = &off_1016EE380;
  v20 = [NSNumber numberWithUnsignedInt:124];
  v62 = v20;
  v71 = &off_1016EE3A8;
  v21 = [NSNumber numberWithUnsignedInt:125];
  v63 = v21;
  v72 = &off_1016EE3D0;
  v22 = [NSNumber numberWithUnsignedInt:126];
  v64 = v22;
  v73 = &off_1016EE3F8;
  v23 = [NSNumber numberWithUnsignedInt:398];
  v65 = v23;
  v74 = &off_1016EE420;
  v24 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v56 count:10];

  v25 = [NSNumber numberWithUnsignedInt:120];
  v26 = [v24 objectForKeyedSubscript:v25];

  v27 = +[GEOCountryConfiguration sharedConfiguration];
  v28 = [v27 countryCode];
  v29 = [v26 objectForKey:v28];

  if (v29)
  {
    v30 = [v29 BOOLValue];

    if ((v30 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = [*(a1 + 40) submissionParameters];
    [WeakRetained _anonymizePhotos:v5];

    goto LABEL_7;
  }

  BOOL = GEOConfigGetBOOL();

  if (BOOL)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!_GEOConfigHasValue())
  {
    v53 = [NSNumber numberWithUnsignedInt:118];
    v56 = v53;
    *&buf = &off_1016EE2B8;
    v51 = [NSNumber numberWithUnsignedInt:119];
    v57 = v51;
    *(&buf + 1) = &off_1016EE2E0;
    v49 = [NSNumber numberWithUnsignedInt:120];
    v58 = v49;
    v67 = &off_1016EE308;
    v47 = [NSNumber numberWithUnsignedInt:121];
    v59 = v47;
    v68 = &off_1016EE330;
    v31 = [NSNumber numberWithUnsignedInt:122];
    v60 = v31;
    v69 = &off_1016EE358;
    v32 = [NSNumber numberWithUnsignedInt:123];
    v61 = v32;
    v70 = &off_1016EE380;
    v33 = [NSNumber numberWithUnsignedInt:124];
    v62 = v33;
    v71 = &off_1016EE3A8;
    v34 = [NSNumber numberWithUnsignedInt:125];
    v63 = v34;
    v72 = &off_1016EE3D0;
    v35 = [NSNumber numberWithUnsignedInt:126];
    v64 = v35;
    v73 = &off_1016EE3F8;
    v36 = [NSNumber numberWithUnsignedInt:398];
    v65 = v36;
    v74 = &off_1016EE420;
    v37 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v56 count:10];

    v38 = [NSNumber numberWithUnsignedInt:121];
    v39 = [v37 objectForKeyedSubscript:v38];

    v40 = +[GEOCountryConfiguration sharedConfiguration];
    v41 = [v40 countryCode];
    v42 = [v39 objectForKey:v41];

    if (v42)
    {
      v43 = [v42 BOOLValue];

      if ((v43 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v45 = GEOConfigGetBOOL();

      if (!v45)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  if (GEOConfigGetBOOL())
  {
LABEL_9:
    v6 = [*(a1 + 40) submissionParameters];
    [WeakRetained _anonymizeScreenshots:v6];
  }

LABEL_10:
  v7 = [WeakRetained _context];
  v8 = [v7 traits];
  v9 = [v8 copy];

  [v9 setSource:2];
  if (sub_100742958())
  {
    v10 = [*(a1 + 40) submissionParameters];
    [WeakRetained _anonymizeLocations:v10 traits:v9];
  }

  v11 = [*(a1 + 40) submissionParameters];
  [WeakRetained _anonymizeDirectionsRequestsAndResponsesIfNeeded:v11];

  v12 = [WeakRetained _saveRAPInfoToMapsSyncWithRequestParams:*(a1 + 40)];
  v13 = WeakRetained[4];
  v14 = *(a1 + 40);
  v15 = *(*(a1 + 48) + 16);
  v16 = *(a1 + 32);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100A328F8;
  v54[3] = &unk_1016322A0;
  v17 = *(a1 + 56);
  v54[4] = WeakRetained;
  v55 = v17;
  [v13 submitOrEnqueueFeedback:v14 attachedImages:v15 userInfo:v16 traits:v9 debugSettings:0 uploadPolicy:1 feedbackObjectToUpdate:v12 completion:v54];

LABEL_13:
}

void sub_100A328F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v13 = 138412290;
    *&v13[4] = v6;
    v8 = "Submission: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
  }

  else
  {
    v7 = sub_10002E924();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *v13 = 0;
    v8 = "Successfully submitted RAP";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v8, v13, v11);
LABEL_7:

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 32), v6);
  }

  [*(a1 + 32) _invokeChangeHandlers];
}

void sub_100A32B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A32BA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A32BC0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100A335F0(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_10195E208;
  qword_10195E208 = v1;
}

void sub_100A34224(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionLocationTypeMonitor");
  v2 = qword_10195E218;
  qword_10195E218 = v1;
}

void sub_100A35590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A355A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A355C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [TrafficIncidentReport alloc];
        v10 = [v8 type];
        v11 = [v8 countryCode];
        v12 = [(TrafficIncidentReport *)v9 initWithType:v10 countryCodeUponCreation:v11];

        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100A35784;
    v16[3] = &unk_10165F5A0;
    v14 = v13;
    v15 = *(a1 + 40);
    v17 = v14;
    v18 = v15;
    dispatch_async(&_dispatch_main_q, v16);
  }
}

void sub_100A35784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100A3588C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100A359AC;
      block[3] = &unk_101661090;
      v5 = &v10;
      v10 = v4;
      v9 = v3;
      dispatch_async(&_dispatch_main_q, block);

LABEL_6:
    }
  }

  else if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A359C0;
    v6[3] = &unk_101661760;
    v5 = &v7;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
    goto LABEL_6;
  }
}

void sub_100A35A84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100A35B38;
      v5[3] = &unk_101661090;
      v7 = v4;
      v6 = v3;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }
}

void sub_100A35C74(void *a1)
{
  v2 = objc_alloc_init(MSRAPRecordRequest);
  v49 = a1[4];
  v3 = [NSArray arrayWithObjects:&v49 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId == %@" argumentArray:v3];

  v29 = v4;
  v45 = 0;
  v30 = v2;
  v28 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v4 sortDescriptors:0 range:0];
  v5 = [v2 fetchSyncWithOptions:? error:?];
  v6 = 0;
  if (v6)
  {
    v7 = sub_10079901C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch matching synced RAP records with error %@", buf, 0xCu);
    }
  }

  v27 = v6;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v34)
  {
    v32 = *v42;
    v33 = a1;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = [v9 contentData];
        v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v11 error:0];

        v13 = objc_opt_class();
        v14 = [v9 rapResponse];
        v36 = [NSKeyedUnarchiver unarchivedObjectOfClass:v13 fromData:v14 error:0];

        v35 = [RAPRecord alloc];
        v15 = [v9 reportId];
        v16 = [v9 type];
        v17 = [v9 summary];
        v18 = v12;
        v37 = v12;
        v19 = [v12 title];
        v20 = [v9 createTime];
        v21 = [v9 countryCode];
        LOWORD(v26) = +[RAPRecordReportStatus typeFromMapsSyncStatus:](RAPRecordReportStatus, "typeFromMapsSyncStatus:", [v9 status]);
        v22 = [(RAPRecord *)v35 initWithReportID:v15 reportType:v16 reportSummary:v17 reportTitle:v19 dateOfReportCreation:v20 countryCodeUponCreation:v21 reportStatus:v26 contentData:v18 communityIdentifier:0 rapResponse:v36];

        -[RAPRecord setClientRevision:](v22, "setClientRevision:", [v9 clientRevision]);
        a1 = v33;
        [*(*(v33[6] + 8) + 40) addObject:v22];

        v8 = v8 + 1;
      }

      while (v34 != v8);
      v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v34);
  }

  v23 = a1[5];
  if (v23)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A360B8;
    block[3] = &unk_10165F5A0;
    v24 = v23;
    v25 = a1[6];
    v39 = v24;
    v40 = v25;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100A360B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100A36234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A3624C(uint64_t a1, void *a2)
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a2;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v25)
  {
    v23 = *v34;
    v24 = a1;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * v3);
        v27 = v3;
        v5 = objc_opt_class();
        v6 = [v4 contentData];
        v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v6 error:0];

        v8 = objc_opt_class();
        v9 = [v4 rapResponse];
        v29 = [NSKeyedUnarchiver unarchivedObjectOfClass:v8 fromData:v9 error:0];

        v28 = [RAPRecord alloc];
        v26 = [v4 reportId];
        v10 = [v4 type];
        v11 = [v4 summary];
        v12 = [v7 title];
        v13 = [v4 createTime];
        v14 = [v4 countryCode];
        LOWORD(v8) = +[RAPRecordReportStatus typeFromMapsSyncStatus:](RAPRecordReportStatus, "typeFromMapsSyncStatus:", [v4 status]);
        v15 = [v4 communityID];
        v16 = [v15 communityIdentifier];
        LOWORD(v21) = v8;
        v17 = [(RAPRecord *)v28 initWithReportID:v26 reportType:v10 reportSummary:v11 reportTitle:v12 dateOfReportCreation:v13 countryCodeUponCreation:v14 reportStatus:v21 contentData:v7 communityIdentifier:v16 rapResponse:v29];

        a1 = v24;
        [*(*(*(v24 + 40) + 8) + 40) addObject:v17];

        v3 = v27 + 1;
      }

      while (v25 != (v27 + 1));
      v25 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A3657C;
    block[3] = &unk_10165F5A0;
    v19 = v18;
    v20 = *(a1 + 40);
    v31 = v19;
    v32 = v20;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100A3657C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100A366F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A36708(uint64_t a1, void *a2)
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a2;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v25)
  {
    v23 = *v34;
    v24 = a1;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * v3);
        v27 = v3;
        v5 = objc_opt_class();
        v6 = [v4 contentData];
        v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v6 error:0];

        v8 = objc_opt_class();
        v9 = [v4 rapResponse];
        v29 = [NSKeyedUnarchiver unarchivedObjectOfClass:v8 fromData:v9 error:0];

        v28 = [RAPRecord alloc];
        v26 = [v4 reportId];
        v10 = [v4 type];
        v11 = [v4 summary];
        v12 = [v7 title];
        v13 = [v4 createTime];
        v14 = [v4 countryCode];
        LOWORD(v8) = +[RAPRecordReportStatus typeFromMapsSyncStatus:](RAPRecordReportStatus, "typeFromMapsSyncStatus:", [v4 status]);
        v15 = [v4 communityID];
        v16 = [v15 communityIdentifier];
        LOWORD(v21) = v8;
        v17 = [(RAPRecord *)v28 initWithReportID:v26 reportType:v10 reportSummary:v11 reportTitle:v12 dateOfReportCreation:v13 countryCodeUponCreation:v14 reportStatus:v21 contentData:v7 communityIdentifier:v16 rapResponse:v29];

        a1 = v24;
        [*(*(*(v24 + 40) + 8) + 40) addObject:v17];

        v3 = v27 + 1;
      }

      while (v25 != (v27 + 1));
      v25 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A36A38;
    block[3] = &unk_10165F5A0;
    v19 = v18;
    v20 = *(a1 + 40);
    v31 = v19;
    v32 = v20;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100A36A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100A36B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100A36C60;
      block[3] = &unk_101661090;
      v5 = &v10;
      v10 = v4;
      v9 = v3;
      dispatch_async(&_dispatch_main_q, block);

LABEL_6:
    }
  }

  else if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A36C74;
    v6[3] = &unk_101661760;
    v5 = &v7;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
    goto LABEL_6;
  }
}

void sub_100A36D84(id a1)
{
  v3 = +[RAPRecordMapsSync sharedInstance];
  v1 = [[RAPRecordManager alloc] initWithSyncedCache:v3];
  v2 = qword_10195E228;
  qword_10195E228 = v1;
}

void sub_100A370B8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100026868();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error adding traffic incident report to MapsSync cache: %@", &v4, 0xCu);
    }
  }
}

void sub_100A375C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A375DC(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100A37674;
    v5[3] = &unk_101661AE0;
    v6 = a2;
    v5[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

id *sub_100A37674(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _removeAddPhotosRowItemIfNeeded];
  }

  return result;
}

void sub_100A37C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100A37CC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _photoCarouselControllerRequestsPhotoCreditEditor];
    WeakRetained = v2;
  }
}

void sub_100A37D08(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _requestAddingNewPhotoWithSourceType:a2];
    WeakRetained = v4;
  }
}

void sub_100A37DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

void sub_100A386A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A386C4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v5 = WeakRetained;
    [WeakRetained _presentAddPhotosControllerWithSourceType:*(a1 + 40)];
    WeakRetained = v5;
  }
}

MapsAppTest *__cdecl sub_100A38BFC(id a1, NSString *a2, MapsAppTesting *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8 || ([(NSDictionary *)v8 valueForKey:@"testType"], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = v6;
  }

  if ([(NSString *)v6 rangeOfString:@"rpt"])
  {
    if ([(NSString *)v10 rangeOfString:@"pan"]&& [(NSString *)v10 rangeOfString:@"zoom"])
    {
      if ([(NSString *)v10 rangeOfString:@"circle"])
      {
        if ([(NSString *)v10 rangeOfString:@"jump"])
        {
          if ([(NSString *)v10 rangeOfString:@"step"])
          {
            if ([(NSString *)v10 rangeOfString:@"static"])
            {
              if ([(NSString *)v10 rangeOfString:@"pitch"])
              {
                if ([(NSString *)v10 rangeOfString:@"rotate"])
                {
                  v11 = 0;
                  goto LABEL_17;
                }

                v12 = off_1015F6408;
              }

              else
              {
                v12 = off_1015F6390;
              }
            }

            else
            {
              v12 = off_1015F6460;
            }
          }

          else
          {
            v12 = off_1015F6468;
          }
        }

        else
        {
          v12 = off_1015F6370;
        }
      }

      else
      {
        v12 = off_1015F62F8;
      }
    }

    else
    {
      v12 = off_1015F6388;
    }
  }

  else
  {
    v12 = off_1015F63D8;
  }

  v11 = [objc_alloc(*v12) initWithApplication:v7 testName:v6 options:v9];
LABEL_17:

  return v11;
}

void sub_100A39320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A39340(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setViewMode:v2];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setupMenuActions];
}

id sub_100A39E8C()
{
  if (qword_10195E250 != -1)
  {
    dispatch_once(&qword_10195E250, &stru_101632590);
  }

  v1 = qword_10195E248;

  return v1;
}

void sub_100A39EE0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionMonitor");
  v2 = qword_10195E248;
  qword_10195E248 = v1;
}

void sub_100A3B4CC(uint64_t a1)
{
  v2 = sub_10007E168();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [(__CFString *)v3 primaryManeuver];
    v5 = [*(a1 + 32) primaryManeuver];
    v6 = [v5 guidance];
    v7 = [v6 signID];
    *buf = 134218498;
    v144 = v3;
    v145 = 2112;
    v146 = v4;
    v147 = 2112;
    v148 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%p: prepare section of transition from primary sign %@ (%@)", buf, 0x20u);
  }

  v8 = [*(a1 + 32) laneGuidanceInfo];
  v9 = [v8 isForMidStep];

  if (v9)
  {
    v10 = [*(a1 + 32) laneGuidanceInfoID];
    v11 = [*(a1 + 32) laneGuidanceInfo];
    v12 = [v11 laneInfoId];
    v13 = [MNComparison isValue:v10 equalTo:v12];

    if (v13)
    {
      v14 = [*(a1 + 32) primaryManeuver];
      v15 = [*(a1 + 32) laneGuidanceInfo];
      [v14 updateLaneGuidance:v15];
    }
  }

  v16 = [*(a1 + 32) junctionViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [*(a1 + 32) junctionViewInfoID];
    v19 = [*(a1 + 32) junctionViewInfo];
    v20 = [v19 junctionViewId];
    v21 = [MNComparison isValue:v18 equalTo:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [*(a1 + 32) junctionViewInfo];

      if (v22)
      {
        v23 = [*(a1 + 32) junctionViewInfo];
        v24 = [v23 junctionViewId];
        [*(a1 + 32) setJunctionViewInfoID:v24];

        v25 = [*(a1 + 32) junctionViewInfo];
        v26 = [*(a1 + 32) junctionViewController];
        [v26 setJunctionViewInfo:v25];

        v27 = 40;
      }

      else
      {
        v27 = 48;
      }

      v28 = *(a1 + v27);
      v29 = [*(a1 + 32) junctionViewConstraints];
      [v28 addObjectsFromArray:v29];
    }
  }

  v30 = [*(a1 + 32) primaryGuidance];
  v31 = [*(a1 + 32) primaryManeuver];
  v32 = [v31 guidance];

  if (v30 && v32 && v30 != v32 && (([v30 signID], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "signID"), v34 = objc_claimAutoreleasedReturnValue(), v35 = v33, v36 = v34, !(v35 | v36)) || (v37 = v36, v38 = objc_msgSend(v35, "isEqual:", v36), v37, v35, v37, v35, (v38 & 1) != 0)))
  {
    v39 = 1;
  }

  else
  {
    v40 = [*(a1 + 32) laneGuidanceInfoID];
    v41 = [*(a1 + 32) laneGuidanceInfo];
    v42 = [v41 laneInfoId];
    if (([MNComparison isValue:v40 equalTo:v42]& 1) != 0)
    {
      v43 = [*(a1 + 32) primaryGuidanceSignID];
      [*(a1 + 32) primaryGuidance];
      v44 = v140 = v30;
      [v44 signID];
      v45 = v9;
      v47 = v46 = v32;
      v48 = [MNComparison isValue:v43 equalTo:v47];

      v32 = v46;
      v9 = v45;

      v30 = v140;
      if (v48)
      {
        if (!v45)
        {
          goto LABEL_51;
        }

LABEL_21:
        v49 = [*(a1 + 32) junctionViewInfo];
        if (v49)
        {
LABEL_79:

          goto LABEL_80;
        }

        v50 = [*(a1 + 32) secondaryGuidanceSignID];
        v49 = [*(a1 + 32) primaryGuidance];
        v51 = [(CarManeuverView *)v49 signID];
        v52 = [MNComparison isValue:v50 equalTo:v51];

        if (v52)
        {
          goto LABEL_80;
        }

        v53 = [CarManeuverView alloc];
        v54 = [*(a1 + 32) primaryGuidance];
        v49 = -[CarManeuverView initWithGuidance:variant:destination:layoutType:sizeDataSource:](v53, "initWithGuidance:variant:destination:layoutType:sizeDataSource:", v54, 2, [*(a1 + 32) destination], objc_msgSend(*(a1 + 32), "layoutType"), *(a1 + 32));

        v55 = sub_10007E168();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        v56 = *(a1 + 32);
        if (!v56)
        {
          v61 = @"<nil>";
          goto LABEL_68;
        }

        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        if (objc_opt_respondsToSelector())
        {
          v59 = [v56 performSelector:"accessibilityIdentifier"];
          v60 = v59;
          if (v59 && ![v59 isEqualToString:v58])
          {
            v61 = [NSString stringWithFormat:@"%@<%p, %@>", v58, v56, v60];

            goto LABEL_30;
          }
        }

        v61 = [NSString stringWithFormat:@"%@<%p>", v58, v56];
LABEL_30:

LABEL_68:
        *buf = 138543362;
        v144 = v61;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "[%{public}@] Reloading maneuver for midStep change (incoming)", buf, 0xCu);

LABEL_69:
        v113 = +[NavigationFeedbackCollector sharedFeedbackCollector];
        [(CarManeuverView *)v49 setAnalyticsDelegate:v113];

        v114 = [*(a1 + 32) secondaryManeuverConstraints];

        if (v114)
        {
          v115 = *(a1 + 48);
          v116 = [*(a1 + 32) secondaryManeuverConstraints];
          [v115 addObjectsFromArray:v116];
        }

        [*(a1 + 32) _replaceSecondaryViewManeuver:v49 initialConstraints:*(a1 + 56) finalConstraints:*(a1 + 40)];
        v117 = [*(a1 + 32) primaryGuidance];
        goto LABEL_78;
      }
    }

    else
    {
    }

    v39 = 0;
  }

  v62 = [CarManeuverView alloc];
  v63 = [*(a1 + 32) primaryGuidance];
  v64 = -[CarManeuverView initWithGuidance:variant:destination:layoutType:sizeDataSource:](v62, "initWithGuidance:variant:destination:layoutType:sizeDataSource:", v63, [*(a1 + 32) _primaryManeuverViewVariant], objc_msgSend(*(a1 + 32), "destination"), objc_msgSend(*(a1 + 32), "layoutType"), *(a1 + 32));

  v65 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [(CarManeuverView *)v64 setAnalyticsDelegate:v65];

  v66 = [*(a1 + 32) laneGuidanceInfo];

  if (v66)
  {
    v67 = [*(a1 + 32) laneGuidanceInfo];
    [(CarManeuverView *)v64 showLaneGuidance:v67];
  }

  v68 = sub_10007E168();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v137 = v39;
    v69 = *(a1 + 32);
    v139 = v32;
    v141 = v30;
    v138 = v9;
    if (!v69)
    {
      v74 = @"<nil>";
      goto LABEL_44;
    }

    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    if (objc_opt_respondsToSelector())
    {
      v72 = [v69 performSelector:"accessibilityIdentifier"];
      v73 = v72;
      if (v72 && ![v72 isEqualToString:v71])
      {
        v74 = [NSString stringWithFormat:@"%@<%p, %@>", v71, v69, v73];

        goto LABEL_42;
      }
    }

    v74 = [NSString stringWithFormat:@"%@<%p>", v71, v69];
LABEL_42:

LABEL_44:
    v75 = *(a1 + 32);
    v76 = v74;
    v77 = [v75 primaryManeuver];
    v78 = [v77 guidance];
    v79 = [v78 signID];
    v80 = [*(a1 + 32) laneGuidanceInfo];

    v81 = [v80 laneInfoId];
    *buf = 138544130;
    v144 = v74;
    v145 = 2114;
    v146 = v79;
    v147 = 2114;
    v148 = v81;
    v149 = 1024;
    v150 = v137;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[%{public}@] Reloading maneuver for primary(%{public}@)/lane(%{public}@) ID change(s), theyAreTheSameIDButDifferentPointers: %d", buf, 0x26u);

    v32 = v139;
    v30 = v141;
    v9 = v138;
  }

  v82 = [*(a1 + 32) primaryManeuverConstraints];

  if (v82)
  {
    v83 = *(a1 + 48);
    v84 = [*(a1 + 32) primaryManeuverConstraints];
    [v83 addObjectsFromArray:v84];
  }

  v85 = [*(a1 + 32) window];
  if (v85)
  {
    v86 = [*(a1 + 32) primaryManeuver];
    v87 = v86 != 0;
  }

  else
  {
    v87 = 0;
  }

  [*(a1 + 32) _replacePrimaryViewManeuver:v64 initialConstraints:*(a1 + 56) finalConstraints:*(a1 + 40) slide:v87];
  [*(a1 + 32) setNextPrimaryManeuver:v64];
  v88 = [*(a1 + 32) primaryGuidance];
  v89 = [v88 signID];
  [*(a1 + 32) setPrimaryGuidanceSignID:v89];

  v90 = [*(a1 + 32) laneGuidanceInfo];
  v91 = [v90 laneInfoId];
  [*(a1 + 32) setLaneGuidanceInfoID:v91];

  v92 = [*(a1 + 32) junctionViewInfo];
  v93 = [v92 junctionViewId];
  [*(a1 + 32) setJunctionViewInfoID:v93];

  if (v9)
  {
    goto LABEL_21;
  }

LABEL_51:
  v49 = [*(a1 + 32) secondaryGuidanceSignID];
  v94 = [*(a1 + 32) secondaryGuidance];
  v95 = [v94 signID];
  if (([MNComparison isValue:v49 equalTo:v95]& 1) == 0)
  {

    goto LABEL_55;
  }

  v96 = [*(a1 + 32) junctionViewInfoID];
  v97 = [*(a1 + 32) junctionViewInfo];
  v98 = [v97 junctionViewId];
  v99 = [MNComparison isValue:v96 equalTo:v98];

  if ((v99 & 1) == 0)
  {
LABEL_55:
    v100 = [*(a1 + 32) secondaryGuidance];
    if (!v100 || (v101 = v100, [*(a1 + 32) junctionViewInfo], v102 = objc_claimAutoreleasedReturnValue(), v102, v101, v102))
    {
      v49 = 0;
LABEL_75:
      v118 = [*(a1 + 32) secondaryManeuverConstraints];

      if (v118)
      {
        v119 = *(a1 + 48);
        v120 = [*(a1 + 32) secondaryManeuverConstraints];
        [v119 addObjectsFromArray:v120];
      }

      [*(a1 + 32) _replaceSecondaryViewManeuver:v49 initialConstraints:*(a1 + 56) finalConstraints:*(a1 + 40)];
      v117 = [*(a1 + 32) secondaryGuidance];
LABEL_78:
      v121 = v117;
      v122 = [v117 signID];
      [*(a1 + 32) setSecondaryGuidanceSignID:v122];

      [*(a1 + 32) setNextSecondaryManeuver:v49];
      goto LABEL_79;
    }

    v103 = [CarManeuverView alloc];
    v104 = [*(a1 + 32) secondaryGuidance];
    v49 = -[CarManeuverView initWithGuidance:variant:destination:layoutType:sizeDataSource:](v103, "initWithGuidance:variant:destination:layoutType:sizeDataSource:", v104, 2, [*(a1 + 32) destination], objc_msgSend(*(a1 + 32), "layoutType"), *(a1 + 32));

    v105 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    [(CarManeuverView *)v49 setAnalyticsDelegate:v105];

    v106 = sub_10007E168();
    if (!os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
LABEL_74:

      goto LABEL_75;
    }

    v107 = *(a1 + 32);
    if (!v107)
    {
      v112 = @"<nil>";
      goto LABEL_73;
    }

    v108 = objc_opt_class();
    v109 = NSStringFromClass(v108);
    if (objc_opt_respondsToSelector())
    {
      v110 = [v107 performSelector:"accessibilityIdentifier"];
      v111 = v110;
      if (v110 && ![v110 isEqualToString:v109])
      {
        v112 = [NSString stringWithFormat:@"%@<%p, %@>", v109, v107, v111];

        goto LABEL_65;
      }
    }

    v112 = [NSString stringWithFormat:@"%@<%p>", v109, v107];
LABEL_65:

LABEL_73:
    *buf = 138543362;
    v144 = v112;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "[%{public}@] Reloading maneuver for midStep change (outgoing)", buf, 0xCu);

    goto LABEL_74;
  }

LABEL_80:
  v123 = [*(a1 + 32) secondaryManeuverView];
  v124 = [*(a1 + 32) primaryManeuverView];
  [v123 alignSecondarySignSubviewsToPrimaryManeuverView:v124];

  v125 = [*(a1 + 32) secondaryManeuver];
  if (v125)
  {
    v49 = [*(a1 + 32) junctionViewInfo];
    v126 = v49 != 0;
  }

  else
  {
    v126 = 0;
  }

  v127 = [*(a1 + 32) primaryManeuver];
  [v127 setSecondarySignVisible:v126];

  if (v125)
  {
  }

  v128 = [*(a1 + 32) junctionViewInfo];
  if (v128 || ([*(a1 + 32) secondaryManeuverView], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v129 = [*(a1 + 32) primaryViewOnlyConstraints];
    v130 = [v129 firstObject];
    v131 = [v130 isActive];

    if (v128)
    {

      if (v131)
      {
LABEL_89:
        v132 = [*(a1 + 32) primaryViewOnlyConstraints];
        [NSLayoutConstraint deactivateConstraints:v132];
LABEL_94:

        goto LABEL_95;
      }
    }

    else
    {

      if (v131)
      {
        goto LABEL_89;
      }
    }
  }

  v133 = [*(a1 + 32) junctionViewInfo];
  if (v133 || ([*(a1 + 32) secondaryManeuverView], (v133 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v132 = v133;
    goto LABEL_94;
  }

  v134 = [*(a1 + 32) primaryViewOnlyConstraints];
  v135 = [v134 firstObject];
  v136 = [v135 isActive];

  if ((v136 & 1) == 0)
  {
    v132 = [*(a1 + 32) primaryViewOnlyConstraints];
    [NSLayoutConstraint activateConstraints:v132];
    goto LABEL_94;
  }

LABEL_95:
  if ([*(a1 + 56) count])
  {
    [NSLayoutConstraint activateConstraints:*(a1 + 56)];
    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_100A3CACC;
    v142[3] = &unk_101661B18;
    v142[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v142];
  }
}

id sub_100A3C458(uint64_t a1)
{
  v2 = sub_10007E168();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 primaryManeuver];
    v12 = [*(a1 + 32) primaryManeuver];
    v5 = [v12 guidance];
    v6 = [v5 signID];
    v7 = [*(a1 + 32) nextPrimaryManeuver];
    v8 = [*(a1 + 32) nextPrimaryManeuver];
    v9 = [v8 guidance];
    v10 = [v9 signID];
    *buf = 134219010;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%p: animate section of transition from primary sign %@ (%@) to %@ (%@)", buf, 0x34u);
  }

  [NSLayoutConstraint deactivateConstraints:*(a1 + 40)];
  [NSLayoutConstraint deactivateConstraints:*(a1 + 48)];
  return [NSLayoutConstraint activateConstraints:*(a1 + 56)];
}

id sub_100A3C600(uint64_t a1)
{
  v4 = sub_10007E168();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v2 = [v5 primaryManeuver];
    v30 = [*(a1 + 32) primaryManeuver];
    v6 = [v30 guidance];
    v7 = [v6 signID];
    v8 = [*(a1 + 32) nextPrimaryManeuver];
    v9 = [*(a1 + 32) nextPrimaryManeuver];
    v10 = [v9 guidance];
    v1 = [v10 signID];
    *buf = 134219010;
    v32 = v5;
    v33 = 2112;
    v34 = v2;
    v35 = 2112;
    v36 = v7;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: Completing transition from primary sign %@ (%@) to %@ (%@)", buf, 0x34u);
  }

  v11 = [*(a1 + 32) nextPrimaryManeuver];

  if (v11)
  {
    v12 = [*(a1 + 32) primaryManeuver];
    v1 = [*(a1 + 32) nextPrimaryManeuver];

    if (v12 == v1)
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[CarNavigationGuidanceSign updateWithGroupAnimation:]_block_invoke";
        v33 = 2080;
        v34 = "CarNavigationGuidanceSign.m";
        v35 = 1024;
        LODWORD(v36) = 929;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v1 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v32 = v1;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v15 = sub_10007E168();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = *(a1 + 32);
        *buf = 134217984;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%p: It shouldn't be possible to switch between the same instance of the nav sign", buf, 0xCu);
      }
    }
  }

  v17 = [*(a1 + 32) nextPrimaryManeuver];
  if (!v17 || (v18 = v17, [*(a1 + 32) nextPrimaryManeuver], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "primaryManeuver"), v2 = objc_claimAutoreleasedReturnValue(), v2, v1, v18, v1 == v2))
  {
    v21 = 0;
  }

  else
  {
    v19 = [*(a1 + 32) primaryManeuver];
    [v19 removeFromSuperview];

    v20 = [*(a1 + 32) nextPrimaryManeuver];
    [*(a1 + 32) setPrimaryManeuver:v20];

    v21 = 1;
  }

  v22 = [*(a1 + 32) nextSecondaryManeuver];
  if (v22)
  {
    v1 = [*(a1 + 32) nextSecondaryManeuver];
    v23 = [*(a1 + 32) secondaryManeuver];
    v2 = v23;
    if (v1 != v23)
    {

      goto LABEL_27;
    }
  }

  v24 = [*(a1 + 32) secondaryGuidanceSignID];
  if (v24)
  {

    if (!v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v25 = [*(a1 + 32) secondaryManeuver];

  if (v22)
  {
  }

  if (v25)
  {
LABEL_27:
    v26 = [*(a1 + 32) secondaryManeuver];
    [v26 removeFromSuperview];

    v22 = [*(a1 + 32) nextSecondaryManeuver];
    [*(a1 + 32) setSecondaryManeuver:v22];
    v21 = 1;
LABEL_28:
  }

LABEL_29:
  v27 = [*(a1 + 32) junctionViewInfo];
  v28 = [*(a1 + 32) junctionView];
  [v28 setHidden:v27 == 0];

  [*(a1 + 32) setNextPrimaryManeuver:0];
  result = [*(a1 + 32) setNextSecondaryManeuver:0];
  if (v21)
  {
    [*(a1 + 32) setNeedsLayout];
    return [*(a1 + 32) layoutIfNeeded];
  }

  return result;
}

id sub_100A3CACC(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

BOOL sub_100A3DC0C(id a1, UIView *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  NSClassFromString(@"_UIDebugColorBoundsView");
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_100A3FA64(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setAlpha:0.0];
  [*(a1 + 32) transform];
  v2 = *(a1 + 32);
  CGAffineTransformScale(&v7, &v6, 0.001, 0.001);
  v3 = *(v2 + 88);
  v6 = v7;
  [v3 setTransform:&v6];
  v4 = [*(a1 + 32) _cardView];
  v5 = [v4 superview];
  [v5 layoutIfNeeded];
}

void sub_100A3FD5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideMiniSignAnimated:1];
}

void sub_100A3FDC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateMiniSignVisibility];
    WeakRetained = v2;
  }
}

id sub_100A42C08()
{
  if (qword_10195E260 != -1)
  {
    dispatch_once(&qword_10195E260, &stru_1016325D0);
  }

  v1 = qword_10195E258;

  return v1;
}

void sub_100A42C5C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionSunsetSunriseMonitor");
  v2 = qword_10195E258;
  qword_10195E258 = v1;
}

void sub_100A43100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A43124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v8)
    {
      v10 = sub_10003D020();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 localizedDescription];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

LABEL_10:

      [WeakRetained[7] stopAnimating];
      goto LABEL_11;
    }

    if (!v7 || ([v7 size], v12 <= 0.0))
    {
      v10 = sub_10003D020();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Image is nil or has no height", buf, 2u);
      }

      goto LABEL_10;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100A43304;
    v13[3] = &unk_101661340;
    objc_copyWeak(&v15, (a1 + 32));
    v14 = v7;
    dispatch_async(&_dispatch_main_q, v13);

    objc_destroyWeak(&v15);
  }

LABEL_11:
}

void sub_100A43304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] setImage:*(a1 + 32)];
    [*(a1 + 32) size];
    v5 = v4;
    [*(a1 + 32) size];
    v7 = v6;
    v8 = [v3[3] heightAnchor];
    v9 = [v3[3] widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 multiplier:v7 / v5];
    v12 = v10;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [NSLayoutConstraint activateConstraints:v11];

    [v3[7] stopAnimating];
  }
}

void sub_100A43668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A43690(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7 || ![v6 length])
    {
      v9 = sub_10003D020();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 length];
        v11 = [v7 localizedDescription];
        v14 = 134218242;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Data Length: %lu. Error download asset data: %@", &v14, 0x16u);
      }

      v12 = [[NSDataAsset alloc] initWithName:*(a1 + 32)];
      v13 = [v12 data];
      [WeakRetained _showMovieWithData:v13];
    }

    else
    {
      [WeakRetained _showMovieWithData:v6];
    }
  }
}

void sub_100A439A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[7] stopAnimating];
    [v3[1] replaceCurrentItemWithPlayerItem:*(a1 + 32) preserveCurrentTimestamp:0];
    WeakRetained = v3;
  }
}

void sub_100A451F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      [*(a1 + 32) setThumbnailImage:v3];
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100A452EC;
      v6[3] = &unk_101661A90;
      v7 = *(a1 + 32);
      v8 = v3;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

void sub_100A45AD4(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10195E268;
  qword_10195E268 = v1;

  [qword_10195E268 setNumberStyle:0];
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  [qword_10195E268 setLocale:v3];
}

void sub_100A48580(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedLabelMarker];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 48) + 640);
    v6 = *(a1 + 32);

    [v5 viewControllerGoPreviousState:v4 withSender:v6];
  }
}

id sub_100A49B78(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViewController];
  [v2 heightForLayout:1];
  v4 = v3;

  v5 = *(a1 + 32);

  return [v5 contentHeightUpdatedWithValue:v4];
}

id sub_100A4A06C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViewController];
  [v2 heightForLayout:1];
  v4 = v3;

  v5 = *(a1 + 32);

  return [v5 contentHeightUpdatedWithValue:v4];
}

void sub_100A4A1D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100A4A1EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v2 == 1)
  {
    [WeakRetained _setupForFullScreen];
    v5 = 7;
  }

  else
  {
    [WeakRetained _setupForPIP];
    v5 = 6;
  }

  v28 = v5;

  v6 = *(*(a1 + 32) + 648);
  [v6 setCompassHidden:1];
  v7 = *(a1 + 48);
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 pipViewController];
  v10 = [v9 lookAroundContainerView];
  [v10 setBadgeHidden:v7];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 pipViewController];
  v13 = [v12 cardView];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 currentViewController];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 originalLayoutForViewController:v15];

  objc_opt_class();
  v18 = objc_opt_isKindOfClass() & 1;
  v19 = objc_loadWeakRetained((a1 + 40));
  v20 = [v19 containerStyle];
  v21 = (v20 > 7) | (0x5Cu >> v20);

  v22 = v21 & 1;
  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = [v23 view];
  [v24 setNeedsLayout];

  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.25];
  v25 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [CATransaction setAnimationTimingFunction:v25];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100A4A52C;
  v33[3] = &unk_1016326D8;
  objc_copyWeak(v35, (a1 + 40));
  v36 = v18;
  v37 = v22;
  v35[1] = v17;
  v26 = v13;
  v34 = v26;
  v35[2] = v28;
  v38 = *(a1 + 48);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100A4A5E4;
  v29[3] = &unk_101632700;
  objc_copyWeak(&v31, (a1 + 40));
  v32 = *(a1 + 48);
  v27 = v6;
  v30 = v27;
  [UIView animateWithDuration:v33 animations:v29 completion:0.25];
  +[CATransaction commit];

  objc_destroyWeak(&v31);
  objc_destroyWeak(v35);
}

void sub_100A4A50C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_100A4A52C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a1 + 64) == 1 && *(a1 + 65) == 1)
    {
      [WeakRetained setLayoutIfSupported:*(a1 + 48) animated:1];
    }

    [*(a1 + 32) setLayoutStyle:*(a1 + 56)];
    v3 = [v5 view];
    [v3 layoutIfNeeded];

    WeakRetained = v5;
    if ((*(a1 + 66) & 1) == 0)
    {
      v4 = v5[69];
      v5[69] = 0;

      WeakRetained = v5;
    }
  }
}

void sub_100A4A5E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (*(a1 + 48) == 1)
    {
      v3 = [WeakRetained chromeViewController];
      v4 = [v3 acquireChromeDeactivationTokenForReason:@"full-screen Look Around"];
      v5 = v8[69];
      v8[69] = v4;

      v6 = *(a1 + 48);
    }

    else
    {
      v6 = 0;
    }

    [v8 _showTTRButton:v6 & 1];
    v7 = [v8 _maps_mapsSceneDelegate];
    [v7 refreshTitle];

    [*(a1 + 32) setCompassHidden:objc_msgSend(v8 animated:{"isDisplayingLookAroundPIP"), 1}];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:v8 userInfo:0];
    WeakRetained = v8;
  }
}

void sub_100A4A830(uint64_t a1)
{
  [*(a1 + 32) updateMapEdgeInsets];
  v3 = [*(a1 + 32) puckViewController];
  v2 = [v3 view];
  [v2 setAlpha:1.0];
}

id sub_100A4AD58(uint64_t a1)
{
  [*(a1 + 32) setLayoutStyle:*(a1 + 64)];
  [*(a1 + 40) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 40) setAlpha:1.0];
  [*(a1 + 48) setAlpha:1.0];
  [*(a1 + 56) setBadgeHidden:*(a1 + 104)];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void sub_100A4ADCC(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  *(*(a1 + 40) + 566) = 0;
  v2 = [*(a1 + 40) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 40) view];
  [v3 layoutIfNeeded];

  [*(a1 + 40) _showPuckAnimated];
  v4 = *(a1 + 40);
  if (*(v4 + 563) == 1)
  {
    v9 = [v4 chromeViewController];
    v5 = [v9 acquireChromeDeactivationTokenForReason:@"full-screen Look Around"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 552);
    *(v6 + 552) = v5;

    v8 = v9;
  }

  else
  {
    v8 = *(v4 + 552);
    *(v4 + 552) = 0;
  }
}

id sub_100A4B27C(id *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 61);
  if (v3)
  {
    v4 = [v3 window];

    if (v4)
    {
      v5 = [a1[5] window];
      [*(a1[4] + 61) bounds];
      [v5 convertRect:*(a1[4] + 61) fromView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v29.origin.x = v7;
      v29.origin.y = v9;
      v29.size.width = v11;
      v29.size.height = v13;
      v14 = 1.0;
      if (!CGRectEqualToRect(v29, *(a1[4] + 688)))
      {
        v15 = (a1[4] + 688);
        *v15 = v7;
        v15[1] = v9;
        v15[2] = v11;
        v15[3] = v13;
      }
    }

    else
    {
      v19 = a1[4];
      v20 = v19 + 43;
      if ([(CGPoint *)v19 isDisplayingLookAroundPIP])
      {
        v21 = *(a1[4] + 42);
        *v20 = *(a1[4] + 41);
        v20[1] = v21;
      }

      else
      {
        size = CGRectZero.size;
        *v20 = CGRectZero.origin;
        v20[1] = size;
      }

      v14 = 0.0;
    }
  }

  else
  {
    v14 = 0.0;
    if (!CGRectEqualToRect(*(v2 + 656), *(v2 + 688)))
    {
      v16 = a1[4];
      v17 = v16 + 43;
      if ([(CGPoint *)v16 isDisplayingLookAroundPIP])
      {
        v18 = (a1[4] + 656);
      }

      else
      {
        v18 = &CGRectZero;
      }

      v23 = v18->size;
      *v17 = v18->origin;
      v17[1] = v23;
    }
  }

  [a1[4] _sanitizedOriginFrame];
  [a1[6] setFrame:?];
  [a1[6] setAlpha:v14];
  [a1[7] setAlpha:0.0];
  v24 = [a1[4] puckViewController];
  v25 = [v24 view];
  [v25 setAlpha:0.0];

  [a1[8] setLayoutStyle:6];
  v26 = a1[6];

  return [v26 layoutIfNeeded];
}

id sub_100A4B48C(uint64_t a1)
{
  [*(a1 + 32) lookAroundContainerViewControllerDidAnimateFromModeTransition:*(a1 + 40)];
  result = [*(a1 + 48) completeTransition:1];
  *(*(a1 + 40) + 566) = 0;
  return result;
}

id sub_100A4CBB8(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCoordinator];
  [v2 setNeedsMapViewSynchronization];

  *(*(a1 + 32) + 561) = 1;
  v3 = *(a1 + 32);

  return [v3 _updateLayoutWithCurrentValue];
}

id sub_100A4CC18(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCoordinator];
  [v2 resume];

  result = [*(a1 + 32) _updatePIPLayout];
  *(*(a1 + 32) + 561) = 0;
  return result;
}

id sub_100A4CD94(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCoordinator];
  [v2 setNeedsMapViewSynchronization];

  *(*(a1 + 32) + 561) = 1;
  v3 = *(a1 + 32);

  return [v3 _updateLayoutWithCurrentValue];
}

__n128 sub_100A4CDF4(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCoordinator];
  [v2 resume];

  [*(a1 + 32) _updatePIPLayout];
  result = CGSizeZero;
  *(*(a1 + 32) + 584) = CGSizeZero;
  *(*(a1 + 32) + 561) = 0;
  return result;
}

void sub_100A4D570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A4D590(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([v4 hasEnteredLookAround] & 1) == 0 && *(a1 + 32))
  {
    [v4 enterLookAroundWithEntryPoint:?];
  }

  [v4 setDelegate:WeakRetained];
}

void sub_100A4DAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

id sub_100A4DAFC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100A4DB30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 photo];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 photo];
      v8 = [v6 identifier];
      [WeakRetained saveImage:v7 withIdentifier:v8];

      v20[0] = @"id";
      v9 = [v6 identifier];
      v20[1] = @"url";
      v21[0] = v9;
      v10 = [v6 identifier];
      v21[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

      v12 = *(*(*(a1 + 32) + 8) + 40);
      if (v12)
      {
        v19 = v11;
        v13 = [NSArray arrayWithObjects:&v19 count:1];
        (*(v12 + 16))(v12, v13, 0);

        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;
      }

      v16 = [WeakRetained webBundleQuestion];
      v17 = [v16 geotaggedPhotoCommentQuestion];
      v18 = [v3 photo];
      [v17 addPhoto:v18];
    }
  }
}

void sub_100A51B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A51BAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained actionDelegate];
    v3 = [v4 subscriptionInfo];
    [v2 offlineMapDetailsActionSectionControllerDidSelectDeleteMap:v3];

    [GEOAPPortal captureUserAction:408 target:112 value:0];
    WeakRetained = v4;
  }
}

void sub_100A51EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A51ECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained vlfSessionTask];
  [v1 showVLFUI];
}

void sub_100A52070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A5208C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 startDebugInfoRefreshTimer];
}

void sub_100A528D8(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = +[NSURLSession sharedSession];
  v2 = [NSURL URLWithString:@"https://internalcheck.apple.com"];
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100A52B04;
  v7 = &unk_101637420;
  objc_copyWeak(&v8, &location);
  v3 = [v1 dataTaskWithURL:v2 completionHandler:&v4];

  [v3 resume];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void sub_100A529CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int64_t sub_100A529F8(id a1, VLFSessionMonitor *a2, VLFSessionMonitor *a3)
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  v8 = [v5 compare:v7];

  return v8;
}

void sub_100A52A78(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195E290;
  qword_10195E290 = v1;

  [qword_10195E290 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195E290 setLocale:v3];
}

void sub_100A52B04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (!v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 statusCode] == 200)
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = &__kCFBooleanFalse;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsConnectedToInternalAppleNetwork:v9];
}

void sub_100A536E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E278;
  qword_10195E278 = v1;
}

void sub_100A545D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A54600(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v7 selectedLabelMarker];

    if (v4)
    {
      [WeakRetained _instrumentSelectingLabel];
      v5 = [v7 selectedLabelMarker];
      v6 = WeakRetained[9];
      WeakRetained[9] = v5;

      [WeakRetained _updateLabelPickerDoneBarItem];
    }

    else
    {
      [WeakRetained[8] setEnabled:0];
    }
  }
}

void sub_100A562A0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionArrivalStepAvailabilityMonitor");
  v2 = qword_10195E298;
  qword_10195E298 = v1;
}

id sub_100A5D718(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  [v2 invalidateIntrinsicContentSize];

  v3 = *(*(a1 + 40) + 32);

  return [v3 layoutIfNeeded];
}

void sub_100A5E43C(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:*(a1 + 40)];
  v2 = [*(a1 + 32) host];
  [v2 setCollisionConstraintsEnabled:(*(a1 + 48) & 1) == 0 forOverlay:*(a1 + 32)];
}

id sub_100A5F230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  return [v1 setConfiguration:&v3];
}

id *sub_100A5F26C(id *result)
{
  if (*(result + 40) == 1 && (*(result + 41) & 1) == 0)
  {
    return [result[4] reload];
  }

  return result;
}

id sub_100A5F28C(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0 && (*(a1 + 41) & 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100A5F348;
    v3[3] = &unk_101661B18;
    v3[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v3];
  }

  return [*(a1 + 32) setHidden:*(a1 + 41) animated:*(a1 + 42)];
}

id *sub_100A5F330(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] reload];
  }

  return result;
}

void sub_100A5F4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A5F514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

uint64_t sub_100A5F6C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100A5F770(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  v3 = [v2 pptTestScrollView];

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A5F81C;
  v5[3] = &unk_101661B18;
  v5[4] = v4;
  [v4 _performScrollTestOfScrollView:v3 completion:v5];
}

id sub_100A5F908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100A5F980;
  v3[3] = &unk_101661B18;
  v3[4] = v1;
  return [v1 _dispatchAfterShortDelay:v3];
}

BOOL sub_100A5FC54(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 <= 7 && ((1 << a1) & 0xE3) != 0)
  {
    v5 = [v3 horizontalSizeClass] == 1 && objc_msgSend(v4, "verticalSizeClass") == 1;
  }

  return v5;
}

void sub_100A5FCD8(id a1)
{
  v1 = [UIColor colorWithRed:0.4627451 green:0.4627451 blue:0.501960814 alpha:1.0];
  v2 = qword_10195E2B0;
  qword_10195E2B0 = v1;
}

id sub_100A5FD30()
{
  if (qword_10195E2B8 != -1)
  {
    dispatch_once(&qword_10195E2B8, &stru_101632A08);
  }

  v1 = qword_10195E2C0;

  return v1;
}

void sub_100A5FD84(id a1)
{
  v1 = [UIColor _maps_colorFromHexString:@"1C1C1EFF"];
  v2 = qword_10195E2C0;
  qword_10195E2C0 = v1;
}

id sub_100A5FDCC()
{
  if (qword_10195E2C8 != -1)
  {
    dispatch_once(&qword_10195E2C8, &stru_101632A28);
  }

  v1 = qword_10195E2D0;

  return v1;
}

void sub_100A5FE20(id a1)
{
  v1 = [UIColor _maps_colorFromHexString:@"0A0A0BFF"];
  v2 = qword_10195E2D0;
  qword_10195E2D0 = v1;
}

id sub_100A5FE68()
{
  if (qword_10195E2D8 != -1)
  {
    dispatch_once(&qword_10195E2D8, &stru_101632A48);
  }

  v1 = qword_10195E2E0;

  return v1;
}

void sub_100A5FEBC(id a1)
{
  v1 = [UIColor _maps_colorFromHexString:@"1D1D20FF"];
  v2 = qword_10195E2E0;
  qword_10195E2E0 = v1;
}

void sub_100A6052C(uint64_t a1)
{
  v1 = [*(a1 + 32) cancelAction];
  v1[2]();
}

void sub_100A606C4(uint64_t a1)
{
  v3 = [*(a1 + 32) activityAction];
  v2 = [*(a1 + 40) userActivity];
  v3[2](v3, v2);
}

uint64_t sub_100A61470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A61488(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100A614D4(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void sub_100A617A4(id a1, NSArray *a2, NSError *a3)
{
  v3 = a2;
  v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  [v4 deleteWithObjects:v3 completionHandler:&stru_101632B30];
}

void sub_100A61810(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100799818();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Failed to delete synced reviewed places, error %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    v5 = "Successfuly deleted synced reviewed places";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_100A619C8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.maps.ugc.ReviewedPlaceMapsSync", v3);
  v2 = qword_10195E318;
  qword_10195E318 = v1;
}

void sub_100A61E30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100799818();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save synced reviewed place with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully updated synced reviewed place", &v9, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100A6203C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_initWeak(&location, *(a1 + 40));
    v2 = *(*(a1 + 40) + 8);
    v3 = [*(a1 + 48) communityIdentifier];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100A62184;
    v7[3] = &unk_10165DCA0;
    objc_copyWeak(&v10, &location);
    v9 = *(a1 + 56);
    v8 = *(a1 + 48);
    [v2 fetchCommunityIDWithIdentifier:v3 completion:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v4 _buildMapsSyncReviewedPlace:v5 communityID:0 completion:v6];
  }
}

void sub_100A62160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100A62184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100799818();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save synced reviewed place with error %@", &v12, 0xCu);
      }

      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v6);
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [v5 firstObject];
      [WeakRetained _buildMapsSyncReviewedPlace:v10 communityID:v11 completion:*(a1 + 40)];
    }
  }
}

void sub_100A623A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v22 = v3;
  v4 = [NSArray arrayWithObjects:&v22 count:1];
  v5 = [v2 _fetchMSReviewedPlaceWithMuids:v4 error:0];

  if (!v5)
  {
    v7 = sub_100799818();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v19 = 0;
    v20 = 2048;
    v21 = [0 muid];
    v11 = "We fetched and want to delete synced reviewed place %@ with muid %llu";
    v12 = v7;
    v13 = 22;
    goto LABEL_10;
  }

  v6 = [v5 hasUserReviewed];
  v7 = sub_100799818();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412546;
      v19 = v5;
      v20 = 2048;
      v21 = [v5 muid];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "We fetched and want to delete synced reviewed place %@ with muid %llu", buf, 0x16u);
    }

    [v5 setHasUserReviewed:0];
    v9 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v17 = v5;
    v10 = [NSArray arrayWithObjects:&v17 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A6263C;
    v15[3] = &unk_1016610B8;
    v16 = *(a1 + 40);
    [v9 saveWithObjects:v10 completionHandler:v15];

    goto LABEL_13;
  }

  if (v8)
  {
    *buf = 0;
    v11 = "We fetched and want to delete synced reviewed place but it not reviewed";
    v12 = v7;
    v13 = 2;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
  }

LABEL_11:

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }

LABEL_13:
}

void sub_100A6263C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100799818();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to delete synced reviewed place with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully deleted synced reviewed place", &v9, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100A62874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A6288C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A628A4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    NSLog(@"%@", v5);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v8];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_100A62C1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  v4 = [v2 _fetchMSReviewedPlaceWithMuids:v3 error:0];

  v5 = sub_100799818();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412546;
      v28 = v4;
      v29 = 2048;
      v30 = [v4 muid];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We fetched a synced reviewed place - %@ muid %llu ", buf, 0x16u);
    }

    v7 = [v4 hasUserReviewed];
    v8 = sub_100799818();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The user has reviewed this place", buf, 2u);
      }

      v10 = -[UGCReviewedPlace initWithMUID:originallySavedMUID:]([UGCReviewedPlace alloc], "initWithMUID:originallySavedMUID:", *(a1 + 56), [v4 muid]);
      -[UGCReviewedPlace setVersion:](v10, "setVersion:", [v4 version]);
      v8 = [v4 communityID];
      v11 = [v8 communityIdentifier];
      v12 = [v11 copy];
      [(UGCReviewedPlace *)v10 setCommunityIdentifier:v12];
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The user has not reviewed this place", buf, 2u);
      }

      v10 = 0;
    }

    v14 = [v4 muid];
    v15 = *(a1 + 56);
    v16 = sub_100799818();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v14 == v15)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No need to replace MUIDs", buf, 2u);
      }

      v18 = *(a1 + 48);
      if (v18)
      {
        (*(v18 + 16))(v18, v7, v10);
      }
    }

    else
    {
      if (v17)
      {
        v19 = *(a1 + 56);
        *buf = 134218240;
        v28 = v14;
        v29 = 2048;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Current MUID %llu has expired, need to replace with %llu", buf, 0x16u);
      }

      [v4 setMuid:*(a1 + 56)];
      v20 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
      v26 = v4;
      v21 = [NSArray arrayWithObjects:&v26 count:1];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100A63024;
      v22[3] = &unk_101632AD0;
      v24 = *(a1 + 48);
      v25 = v7;
      v23 = v10;
      [v20 saveWithObjects:v21 completionHandler:v22];
    }
  }

  else
  {
    if (v6)
    {
      *buf = 134218242;
      v28 = [0 muid];
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We did not fetch a synced reviewed place for muid %llu, error: %@", buf, 0x16u);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0);
    }
  }
}

void sub_100A63024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100799818();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    v12 = v3;
    v6 = "Failed to update MUID on synced reviewed place with error %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v6 = "Successfully updated MUID on synced reviewed place";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, v8, v6, &v11, v9);
LABEL_7:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), *(a1 + 32));
  }
}

void sub_100A63418(id a1)
{
  v1 = objc_alloc_init(UGCReviewedPlaceMapsSync);
  v2 = qword_10195E308;
  qword_10195E308 = v1;
}

void sub_100A636F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100A63944(uint64_t a1, void *a2, void *a3)
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

id sub_100A64170(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 15)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v2 = @"EV_Routing_Connector_CCS2";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_23;
        }

        v2 = @"EV_Routing_Connector_CHAdeMO";
      }
    }

    else if (a1 == 1)
    {
      v2 = @"EV_Routing_Connector_J1772";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v2 = @"EV_Routing_Connector_CCS1";
    }
  }

  else if (a1 <= 63)
  {
    if (a1 == 16)
    {
      v2 = @"EV_Routing_Connector_GBT_AC";
    }

    else
    {
      if (a1 != 32)
      {
        goto LABEL_23;
      }

      v2 = @"EV_Routing_Connector_GBT_DC";
    }
  }

  else
  {
    switch(a1)
    {
      case 64:
        v2 = @"EV_Routing_Connector_Tesla";
        break;
      case 128:
        v2 = @"EV_Routing_Connector_Mennekes";
        break;
      case 256:
        v2 = @"EV_Routing_Connector_NACS_AC";
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:v2 value:@"localized string not found" table:0];

LABEL_23:

  return v1;
}

void sub_100A66214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100A6623C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [a2 identifier];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v8 = [v9 purpose];

    if (v8 != 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_100A6658C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 purpose] == 2)
  {
    v6 = sub_10003D020();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 identifier];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping %@. This is an interoperable suggestion.", &v12, 0xCu);
    }
  }

  else
  {
    if ([v5 paymentMethodType] != 3 && objc_msgSend(v5, "paymentMethodType") != 1 && objc_msgSend(v5, "paymentMethodType") != 4)
    {
      v10 = *(a1 + 32);
      v11 = [v5 identifier];
      [v10 addObject:v11];

      goto LABEL_10;
    }

    v6 = sub_10003D020();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 identifier];
      [v5 paymentMethodType];
      v9 = GEOTransitPaymentMethodTypeAsString();
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping non-CL payment method %@. It is %@.", &v12, 0x16u);
    }
  }

LABEL_10:
}

void sub_100A67FC8(uint64_t a1, void *a2, id a3)
{
  v5 = a2;
  if ([v5 paymentMethodType] == 2)
  {
    ++*(*(a1 + 32) + 96);
  }

  if ([v5 paymentMethodType] == 4)
  {
    ++*(*(a1 + 32) + 104);
  }

  if ([v5 paymentMethodType] == 1)
  {
    ++*(*(a1 + 32) + 88);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 16);
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = [v9 paymentMethodIndices];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            v14 = 0;
            do
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v21 + 1) + 8 * v14) unsignedIntegerValue] == a3)
              {
                [*(*(a1 + 32) + 72) setObject:v9 forKeyedSubscript:v5];
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = *(*(a1 + 32) + 80);
  v16 = [v5 identifier];
  [v15 setObject:v5 forKeyedSubscript:v16];

  v17 = *(*(a1 + 32) + 32);
  v18 = [v5 identifier];
  [v17 addObject:v18];
}

void sub_100A68C00(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195E328;
  qword_10195E328 = v1;
}

void sub_100A69BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100A69BF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _markAsShown];
    WeakRetained = v2;
  }
}

void sub_100A69C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _dismissTip];
    WeakRetained = v2;
  }
}

void sub_100A69C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setShowFeature:1];
    [v2 _notifyObservers];
    WeakRetained = v2;
  }
}

id sub_100A69FA0()
{
  if (qword_10195E340 != -1)
  {
    dispatch_once(&qword_10195E340, &stru_101632BC8);
  }

  v1 = qword_10195E338;

  return v1;
}

void sub_100A69FF4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "OfflineMapsDownloadFeatureTipSource");
  v2 = qword_10195E338;
  qword_10195E338 = v1;
}

id sub_100A6A3CC()
{
  if (qword_10195E350 != -1)
  {
    dispatch_once(&qword_10195E350, &stru_101632BE8);
  }

  v1 = qword_10195E348;

  return v1;
}

void sub_100A6A420(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionNetworkReachabilityMonitor");
  v2 = qword_10195E348;
  qword_10195E348 = v1;
}

uint64_t sub_100A6C418(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v120) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v120 & 0x7F) << v5;
      if ((v120 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(GEOStorageRouteRequestStorage);
        objc_storeStrong((a1 + 104), v13);
        v120 = 0;
        v121 = 0;
        if (PBReaderPlaceMark() && [(DirectionsPlanTransitPreferences *)v13 readFrom:a2])
        {
          goto LABEL_157;
        }

        goto LABEL_232;
      case 2u:
        v50 = PBReaderReadString();
        v51 = 88;
        goto LABEL_160;
      case 3u:
        v50 = PBReaderReadString();
        v51 = 56;
        goto LABEL_160;
      case 4u:
        *(a1 + 148) |= 8u;
        v120 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v117 = [a2 data];
          [v117 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v114 = v120;
        v115 = 32;
        goto LABEL_229;
      case 5u:
        *(a1 + 148) |= 1u;
        v120 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v116 = [a2 data];
          [v116 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v114 = v120;
        v115 = 8;
        goto LABEL_229;
      case 6u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 148) |= 2u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v120 & 0x7F) << v72;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_203;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v74;
        }

LABEL_203:
        v112 = 16;
        goto LABEL_212;
      case 7u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v120 & 0x7F) << v85;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_211;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v87;
        }

LABEL_211:
        v112 = 24;
LABEL_212:
        *(a1 + v112) = v78;
        goto LABEL_230;
      case 8u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 148) |= 0x20u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v120 & 0x7F) << v60;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_197;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v62;
        }

LABEL_197:
        v110 = 64;
        goto LABEL_219;
      case 9u:
        v13 = objc_alloc_init(DirectionsPlanTransitPreferences);
        objc_storeStrong((a1 + 128), v13);
        v120 = 0;
        v121 = 0;
        if (PBReaderPlaceMark() && sub_100C653DC(v13, a2))
        {
          goto LABEL_157;
        }

        goto LABEL_232;
      case 0xAu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 148) |= 0x200u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v120 & 0x7F) << v44;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_187;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v46;
        }

LABEL_187:
        v110 = 116;
        goto LABEL_219;
      case 0xBu:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 148) |= 0x40u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v120 & 0x7F) << v97;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v99;
        }

LABEL_218:
        v110 = 68;
        goto LABEL_219;
      case 0xCu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 148) |= 0x80u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v120 & 0x7F) << v30;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_179;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_179:
        v110 = 80;
        goto LABEL_219;
      case 0xDu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 148) |= 0x100u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v120 & 0x7F) << v38;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_183;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v40;
        }

LABEL_183:
        v110 = 112;
        goto LABEL_219;
      case 0xEu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 148) |= 0x400u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v120 & 0x7F) << v79;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_207;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v81;
        }

LABEL_207:
        v110 = 120;
        goto LABEL_219;
      case 0xFu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 148) |= 0x800u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v120 & 0x7F) << v23;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_175;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_175:
        v110 = 136;
        goto LABEL_219;
      case 0x10u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 148) |= 0x1000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v120 & 0x7F) << v52;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_193;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v54;
        }

LABEL_193:
        v110 = 140;
LABEL_219:
        *(a1 + v110) = v29;
        goto LABEL_230;
      case 0x11u:
        *(a1 + 148) |= 0x10u;
        v120 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v113 = [a2 data];
          [v113 getBytes:&v120 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v114 = v120;
        v115 = 40;
LABEL_229:
        *(a1 + v115) = v114;
        goto LABEL_230;
      case 0x12u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 148) |= 0x10000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v120 & 0x7F) << v66;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_199;
          }
        }

        v20 = (v68 != 0) & ~[a2 hasError];
LABEL_199:
        v111 = 147;
        goto LABEL_222;
      case 0x13u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 148) |= 0x4000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v120 & 0x7F) << v91;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_214;
          }
        }

        v20 = (v93 != 0) & ~[a2 hasError];
LABEL_214:
        v111 = 145;
        goto LABEL_222;
      case 0x14u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 148) |= 0x2000u;
        while (1)
        {
          LOBYTE(v120) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v120 & 0x7F) << v104;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_221;
          }
        }

        v20 = (v106 != 0) & ~[a2 hasError];
LABEL_221:
        v111 = 144;
        goto LABEL_222;
      case 0x15u:
        v13 = objc_alloc_init(DirectionsPlanWaypoint);
        [a1 addPlanningWaypoint:v13];
        v120 = 0;
        v121 = 0;
        if (PBReaderPlaceMark() && sub_1007E6F74(v13, a2))
        {
LABEL_157:
          PBReaderRecallMark();
LABEL_158:

LABEL_230:
          v118 = [a2 position];
          if (v118 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_232:

        return 0;
      case 0x16u:
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addHandlesForSharingETA:v13];
        }

        goto LABEL_158;
      case 0x17u:
        v50 = PBReaderReadData();
        v51 = 48;
LABEL_160:
        v103 = *(a1 + v51);
        *(a1 + v51) = v50;

        goto LABEL_230;
      default:
        if ((v12 >> 3) == 404)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 148) |= 0x8000u;
          while (1)
          {
            LOBYTE(v120) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v120 & 0x7F) << v14;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_189;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_189:
          v111 = 146;
LABEL_222:
          *(a1 + v111) = v20;
        }

        else if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_230;
    }
  }
}

void sub_100A6ECE0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A6ED84;
    block[3] = &unk_101661B18;
    block[4] = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100A6F178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A6F198(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained sidebarContentInjector];

    if (v5 == v6)
    {
      [v6 removeContentFromMapView];
      [v6 addContentToMapView];
    }
  }
}

void sub_100A6F8B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained drivePreferences];
  if (([v3 hasAnyNonStandardPreferences] & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 cyclePreferences];
    if (([v5 hasAnyNonStandardPreferences] & 1) == 0)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 transitPreferences];
      if (([v7 hasAnyNonStandardPreferences] & 1) == 0)
      {
        v15 = objc_loadWeakRetained((a1 + 32));
        v16 = [v15 walkPreferences];
        v17 = [v16 hasAnyNonStandardPreferences];

        if ((v17 & 1) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  v8 = BiomeLibrary();
  v9 = [v8 Discoverability];
  v10 = [v9 Signals];
  v18 = [v10 source];

  v11 = [BMDiscoverabilitySignals alloc];
  v12 = +[NSProcessInfo processInfo];
  v13 = [v12 operatingSystemVersionString];
  v14 = [v11 initWithContentIdentifier:@"com.apple.Maps.UserHasNonStandardPreferences" context:@"Route-Planning-Settings" osBuild:v13 userInfo:0];

  [v18 sendEvent:v14];
}

void sub_100A7025C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100A70294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100A702D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A704DC;
  v14[3] = &unk_1016334B8;
  objc_copyWeak(&v15, (a1 + 48));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A7052C;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 48));
  v5 = [v3 addSwitchRowWithTitle:v4 get:v14 set:v12];
  v6 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A706B0;
  v10[3] = &unk_1016334B8;
  objc_copyWeak(&v11, (a1 + 48));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A70700;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = [v3 addSwitchRowWithTitle:v6 get:v10 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100A704A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_100A704DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cyclePreferences];
  v3 = [v2 avoidHills];

  return v3;
}

void sub_100A7052C(uint64_t a1, uint64_t a2)
{
  v4 = [CyclePreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained cyclePreferences];
  v7 = [v6 avoidBusyRoads];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 cyclePreferences];
  v10 = [v9 ebike];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(CyclePreferences *)v4 initWithAvoidHills:a2 avoidBusyRoads:v7 ebike:v10 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setCyclePreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 5035;
  }

  else
  {
    v15 = 5036;
  }

  v16 = +[MKMapService sharedService];
  v17 = objc_loadWeakRetained((a1 + 32));
  [v16 captureUserAction:v15 onTarget:objc_msgSend(v17 eventValue:{"analyticsTarget"), @"BICYCLE"}];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _sendBiomeDiscoverabilitySignals];
}

id sub_100A706B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cyclePreferences];
  v3 = [v2 avoidBusyRoads];

  return v3;
}

void sub_100A70700(uint64_t a1, uint64_t a2)
{
  v4 = [CyclePreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained cyclePreferences];
  v7 = [v6 avoidHills];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 cyclePreferences];
  v10 = [v9 ebike];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(CyclePreferences *)v4 initWithAvoidHills:v7 avoidBusyRoads:a2 ebike:v10 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setCyclePreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 5033;
  }

  else
  {
    v15 = 5034;
  }

  v16 = +[MKMapService sharedService];
  v17 = objc_loadWeakRetained((a1 + 32));
  [v16 captureUserAction:v15 onTarget:objc_msgSend(v17 eventValue:{"analyticsTarget"), @"BICYCLE"}];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _sendBiomeDiscoverabilitySignals];
}

void sub_100A709F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) titleForFooterInSection:*(a1 + 48)];
  [v3 setFooter:v4];

  if (!*(a1 + 56))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100A70BA4;
    v12[3] = &unk_101632CE8;
    v14 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v13 = v5;
    v15 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A70CA8;
    v10[3] = &unk_101653F10;
    objc_copyWeak(&v11, (a1 + 40));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100A70E64;
    v8[3] = &unk_10165D828;
    objc_copyWeak(&v9, (a1 + 40));
    v7 = [v3 addCheckmarkRowsGroupWithContent:v12 get:v10 set:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
  }
}

void sub_100A70B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A70BA4(void *a1, void *a2)
{
  v10 = a2;
  [v10 setAllowMultipleSelection:1];
  [v10 setMinimumSelectionCount:1];
  if (a1[5] >= 1)
  {
    v3 = 0;
    do
    {
      v4 = a1[4];
      v5 = [NSIndexPath indexPathForRow:v3 inSection:a1[6]];
      v6 = [v4 _modeForIndexPath:v5];

      v7 = sub_100DF72F8(v6);
      v8 = [NSNumber numberWithUnsignedInteger:v6];
      v9 = [v10 addRowWithTitle:v7 value:v8];

      ++v3;
    }

    while (v3 < a1[5]);
  }
}

id sub_100A70CA8(uint64_t a1)
{
  if (qword_10195E370 != -1)
  {
    dispatch_once(&qword_10195E370, &stru_101632D30);
  }

  v2 = qword_10195E368;
  v15 = [v2 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 integerValue];
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v11 = [WeakRetained transitDataSource];
        v12 = [v11 preferences];
        LODWORD(v9) = [v12 isModeDisabled:v9];

        if (v9)
        {
          [v15 removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v15 copy];

  return v13;
}

void sub_100A70E64(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transitDataSource];
  v6 = [v5 preferences];
  [v6 toggleModeEnabled:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _updateHasUnsavedChanges];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _sendBiomeDiscoverabilitySignals];
}

void sub_100A70F18(id a1)
{
  v1 = qword_10195E368;
  qword_10195E368 = &off_1016ED340;
}

void sub_100A710CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100A710F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_100F2C748())
  {
    v4 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100A713F0;
    v20[3] = &unk_1016334B8;
    objc_copyWeak(&v21, (a1 + 56));
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100A71440;
    v18[3] = &unk_1016619A8;
    objc_copyWeak(&v19, (a1 + 56));
    v5 = [v3 addSwitchRowWithTitle:v4 get:v20 set:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
  }

  if (sub_100F2C748())
  {
    v6 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100A715C4;
    v16[3] = &unk_1016334B8;
    objc_copyWeak(&v17, (a1 + 56));
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100A71614;
    v14[3] = &unk_1016619A8;
    objc_copyWeak(&v15, (a1 + 56));
    v7 = [v3 addSwitchRowWithTitle:v6 get:v16 set:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
  }

  if (sub_100F2C7A8())
  {
    v8 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100A71798;
    v12[3] = &unk_1016334B8;
    objc_copyWeak(&v13, (a1 + 56));
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A717E8;
    v10[3] = &unk_1016619A8;
    objc_copyWeak(&v11, (a1 + 56));
    v9 = [v3 addSwitchRowWithTitle:v8 get:v12 set:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }
}

void sub_100A713CC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

id sub_100A713F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained walkPreferences];
  v3 = [v2 avoidHills];

  return v3;
}

void sub_100A71440(uint64_t a1, uint64_t a2)
{
  v4 = [WalkPreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained walkPreferences];
  v7 = [v6 avoidBusyRoads];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 walkPreferences];
  v10 = [v9 avoidStairs];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(WalkPreferences *)v4 initWithAvoidHills:a2 avoidBusyRoads:v7 avoidStairs:v10 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setWalkPreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 5035;
  }

  else
  {
    v15 = 5036;
  }

  v16 = +[MKMapService sharedService];
  v17 = objc_loadWeakRetained((a1 + 32));
  [v16 captureUserAction:v15 onTarget:objc_msgSend(v17 eventValue:{"analyticsTarget"), @"WALKING"}];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _sendBiomeDiscoverabilitySignals];
}

id sub_100A715C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained walkPreferences];
  v3 = [v2 avoidBusyRoads];

  return v3;
}

void sub_100A71614(uint64_t a1, uint64_t a2)
{
  v4 = [WalkPreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained walkPreferences];
  v7 = [v6 avoidHills];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 walkPreferences];
  v10 = [v9 avoidStairs];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(WalkPreferences *)v4 initWithAvoidHills:v7 avoidBusyRoads:a2 avoidStairs:v10 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setWalkPreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 5033;
  }

  else
  {
    v15 = 5034;
  }

  v16 = +[MKMapService sharedService];
  v17 = objc_loadWeakRetained((a1 + 32));
  [v16 captureUserAction:v15 onTarget:objc_msgSend(v17 eventValue:{"analyticsTarget"), @"WALKING"}];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _sendBiomeDiscoverabilitySignals];
}