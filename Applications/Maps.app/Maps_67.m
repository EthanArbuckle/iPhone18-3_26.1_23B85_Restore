uint64_t sub_100E1F9F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100E1FFEC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5 || ![v11 count])
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [v11 firstObject];
    v8 = [v7 mapRegion];
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = [v11 firstObject];
      (*(v9 + 16))(v9, v10, 0);
    }

    if (*(a1 + 64) == 1 && v8)
    {
      [*(a1 + 32) _zoomToRegionForLineIfNecessary:v7 region:v8 withStartingRegion:*(a1 + 40) startedShowingLineDate:*(a1 + 48)];
    }
  }
}

void sub_100E2035C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v5)
  {
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    if (v6)
    {
      (*(v6 + 16))(v6, v10, 0);
    }

    if (*(a1 + 56) == 1)
    {
      v7 = [v10 mapRegion];

      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [v10 mapRegion];
        [v8 _zoomToRegionForLineIfNecessary:v10 region:v9 withStartingRegion:0 startedShowingLineDate:*(a1 + 40)];
      }
    }
  }
}

void sub_100E20448(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v8 = MKMapItemIdentifiersToGEOMapItemIdentifier();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v20 = v5;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v14 isEqual:v8];

          if (v15)
          {
            v10 = v13;
            goto LABEL_14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v5 = v20;
    }

    if (*(a1 + 72) == 1)
    {
      v16 = [v10 mapRegion];

      if (v16)
      {
        v17 = *(a1 + 40);
        v18 = [v10 mapRegion];
        [v17 _zoomToRegionForLineIfNecessary:v10 region:v18 withStartingRegion:*(a1 + 48) startedShowingLineDate:*(a1 + 56)];
      }
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      (*(v19 + 16))(v19, v10, 0);
    }
  }
}

id sub_100E20CCC()
{
  if (qword_10195F338 != -1)
  {
    dispatch_once(&qword_10195F338, &stru_101655B68);
  }

  v1 = qword_10195F330;

  return v1;
}

void sub_100E20D20(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionSunsetSunriseMonitor");
  v2 = qword_10195F330;
  qword_10195F330 = v1;
}

void sub_100E21C54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 32), "count") > a4)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a4];
    v7 = [v6 copy];

    [v7 fire];
  }
}

void sub_100E21CE8(id a1)
{
  v1 = +[MNNavigationService sharedService];
  v2 = [v1 isInNavigatingState];

  if (v2)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 stopNavigationWithReason:2];
  }
}

id sub_100E22014(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

id sub_100E2205C(uint64_t a1)
{
  [*(a1 + 32) _bringNavigationBarToFront:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

id sub_100E222DC(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

id sub_100E22324(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) _bringNavigationBarToFront:*(a1 + 48)];
  v2 = *(a1 + 48);

  return [v2 completeTransition:1];
}

void sub_100E236B4(id *a1)
{
  [a1[4] setAlpha:1.0];
  [a1[5] setAlpha:0.0];
  v4 = [a1[6] view];
  v2 = [v4 _cardView];
  v3 = [v2 superview];
  [v3 layoutIfNeeded];
}

void sub_100E2373C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) incomingSign];

  if (v4 != v5)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  v6 = [*(a1 + 40) signAnimationQueue];
  [v6 removeObjectAtIndex:0];

  v7 = [*(a1 + 40) incomingSign];
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "etaCardVC: sign swap animation finished: %@ to sign: %@", &v14, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 96), v7);
  v11 = [*(a1 + 40) signAnimationQueue];
  v12 = [v11 firstObject];
  [*(a1 + 40) setIncomingSign:v12];

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2);
  }
}

void sub_100E2476C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E247B8(uint64_t a1)
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

void sub_100E24B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E24B38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained startedTest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100E24C60;
    v6[3] = &unk_10165FBE8;
    objc_copyWeak(&v7, (a1 + 32));
    [PPTNotificationCenter addOnceObserverForName:@"PPTTest_SearchHome_DidSetActive" object:0 usingBlock:v6];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"didUpdateDataFetcher:" name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    v5 = [v3 testCoordinator];
    [v5 pptTestEnterSearchMode];

    objc_destroyWeak(&v7);
  }
}

void sub_100E24C60(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 object];
    [WeakRetained setNumberOfDataFetchers:{objc_msgSend(v4, "_ppt_numberOfDataFetchers")}];
    [WeakRetained startedSubTest:@"collectData"];
  }
}

void sub_100E2B1B8(id a1)
{
  v1 = objc_alloc_init(SearchSessionAnalyticsAggregator);
  v2 = qword_10195F340;
  qword_10195F340 = v1;
}

uint64_t sub_100E2B3E0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SearchResult);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || ![(SearchResult *)v13 readFrom:a2])
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100E30278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100E303EC(uint64_t a1)
{
  [*(a1 + 32) endSearch];
  v2 = [*(a1 + 32) cardPresentationController];
  [v2 updateHeightForCurrentLayout];
}

void sub_100E30DD4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarPlayAccessoriesOverlay");
  v2 = qword_10195F350;
  qword_10195F350 = v1;
}

void sub_100E31384(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAlpha:*(a1 + 40)];
  v2 = [*(a1 + 32) host];
  [v2 setCollisionConstraintsEnabled:(*(a1 + 44) & 1) == 0 forOverlay:*(a1 + 32)];
}

void sub_100E32890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_100E328DC(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = sub_10008DF8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained host];
    v7 = [v6 overlayContentView];
    v8 = [v7 sceneIdentifierForLogging];
    v9 = [v3 contentsHidden];
    v10 = @"NO";
    v13 = 134349570;
    v14 = WeakRetained;
    v15 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Heading indicator did change visibility (contentsHidden:%@)", &v13, 0x20u);
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 reloadAnimated:1];
}

void sub_100E32A44(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = sub_10008DF8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained host];
    v7 = [v6 overlayContentView];
    v8 = [v7 sceneIdentifierForLogging];
    v9 = [v3 contentsHidden];
    v10 = @"NO";
    v13 = 134349570;
    v14 = WeakRetained;
    v15 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Speed sign did change visibility (contentsHidden:%@)", &v13, 0x20u);
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 reloadAnimated:1];
}

void sub_100E34040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100E34094(uint64_t a1, char a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(*(a1 + 48) + 8) + 24) = 1;
  *(*(*(a1 + 56) + 8) + 24) = a2;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E34184;
  block[3] = &unk_101655E20;
  v5 = *(a1 + 40);
  v7 = a2;
  objc_copyWeak(&v6, (a1 + 64));
  v8 = *(a1 + 72);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
}

void sub_100E34184(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _willEndMovingLookAroundView:*(a1 + 48) shouldZoomIfFinished:*(a1 + 49)];
}

void sub_100E34738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E3475C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E34848;
  v9[3] = &unk_10165E728;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v13);
}

void sub_100E34848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!*(a1 + 32))
  {
    if ([*(a1 + 40) count])
    {
      v3 = [*(a1 + 40) firstObject];
      [v3 closeUpViewCoordinate];
      v6 = v5;
      v8 = v7;
      v9 = sub_100798614();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v3 name];
        v11 = [v3 _hasLookAroundStorefront];
        v12 = @"NO";
        *v15 = 138413058;
        *&v15[12] = 2112;
        *&v15[4] = v10;
        if (v11)
        {
          v12 = @"YES";
        }

        *&v15[14] = v12;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Refined label marker for %@, hasLookAroundStorefront=%@, coordinate={%g, %g}", v15, 0x2Au);
      }

      v13 = [WeakRetained labelMarkerToRefine];
      v14 = *(a1 + 48);

      if (v13 == v14)
      {
        [WeakRetained _moveLookAroundViewToMapItem:v3];
      }

      [WeakRetained setLabelMarkerToRefine:{0, *v15}];
      [WeakRetained setRefineTicket:0];
      goto LABEL_12;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_13;
    }
  }

  v3 = sub_100798614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    *v15 = 138412290;
    *&v15[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error: Identifier refinement ticket failed: %@", v15, 0xCu);
  }

LABEL_12:

LABEL_13:
}

void sub_100E34C2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100E34C50(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 mapView];
  [v5 _handleMapViewPanStop:v6 shouldMoveLookAroundView:0];

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _notifyObservers:23];

    [v11 coordinate];
    [v11 coordinate];
    [*(a1 + 32) _coordinate];
    [*(a1 + 32) _coordinate];
    GEOBearingFromCoordinateToCoordinate();
    v9 = v8;
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 _startMovingLookAroundViewToMapItem:*(a1 + 32) orMuninMarker:v11 heading:1 shouldZoom:v9];
  }
}

void sub_100E34E40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100E34E64(uint64_t a1, int a2, void *a3)
{
  v16 = a3;
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 mapView];
  [v5 _handleMapViewPanStop:v6 shouldMoveLookAroundView:0];

  if (a2)
  {
    [v16 coordinate];
    v8 = v7;
    [v16 coordinate];
    v10 = [[CLLocation alloc] initWithLatitude:v8 longitude:v9];
    v11 = [[CLLocation alloc] initWithLatitude:*(a1 + 48) longitude:*(a1 + 56)];
    [v10 distanceFromLocation:v11];
    if (v12 <= 10.0)
    {
      v14 = *(*(a1 + 32) + 216);
    }

    else
    {
      GEOBearingFromCoordinateToCoordinate();
      v14 = v13;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _startMovingLookAroundViewToMapItem:0 orMuninMarker:v16 heading:1 shouldZoom:v14];
  }
}

uint64_t sub_100E36A78(uint64_t a1)
{
  v2 = sub_100798614();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Did exit LookAround PIP", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyObservers:5];

  return (*(*(a1 + 32) + 16))();
}

void sub_100E36FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100E37004(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained lookAroundViewDidBecomeAdequatelyDrawnObserver];
  [v2 removeObserver:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setLookAroundViewDidBecomeAdequatelyDrawnObserver:0];

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void sub_100E374BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100E37638;
    v7[3] = &unk_101661068;
    v8 = *(a1 + 32);
    v9 = v3;
    v11 = *(a1 + 64);
    v10 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v7);
  }

  else
  {
    v4 = sub_100798614();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      *buf = 134218240;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error: mapView returned a nil muninMarker at coordinate=(%g, %g)", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100E37638(uint64_t a1)
{
  v2 = [*(a1 + 32) camera];
  v3 = [v2 copy];

  [*(a1 + 40) coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [v3 setCenterCoordinate:?];
  v7 = sub_100798614();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    latitude = v6.latitude;
    v14 = 2048;
    longitude = v6.longitude;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Synchronizing mapView with muninMarker at coordinate=(%g, %g)", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100E377EC;
    v9[3] = &unk_101655D58;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v8 setCamera:v3 animated:1 completionHandler:v9];
  }

  else
  {
    [*(a1 + 32) setCamera:v3 animated:1];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100E37C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E37C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E37D4C;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 40));
  [WeakRetained _onSuccess:a2 setLookAroundViewEntryPointWithMapItem:v7 orMuninMarker:v5 andContinue:v8];

  objc_destroyWeak(&v9);
}

void sub_100E37D4C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E37E0C;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained _onSuccess:a2 waitForLookAroundViewToBecomeAdequatelyDrawnIfNeededAndContinue:v5];

  objc_destroyWeak(&v6);
}

void sub_100E37E0C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E37ECC;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained _onSuccess:a2 synchronizeMapViewCenterToLookAroundViewCenterAndContinue:v5];

  objc_destroyWeak(&v6);
}

void sub_100E37ECC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onSuccessProceedToEnterLookArounPIP:a2];
}

uint64_t sub_100E38E6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100E39344(uint64_t a1)
{
  v2 = sub_100019CDC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 134349056;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] child animation completion group notify block running", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  return [*(a1 + 32) _childAnimationsDidComplete];
}

void sub_100E394F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _leaveCompletionWaitDispatchGroupWithReason:*(a1 + 32)];
}

id sub_100E3A1C8(uint64_t a1)
{
  [*(a1 + 32) prepare];
  [*(a1 + 32) animate];
  v2 = *(a1 + 32);

  return [v2 complete:1];
}

void sub_100E3AEC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = *(a1 + 40);
    if (v15 == [WeakRetained currentBookReservationNumber])
    {
      if (v12)
      {
        [v14 setBookReservationRequestError:v12];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v28 = 138412290;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: %@", &v28, 0xCu);
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 uniqueName];
          v28 = 138412546;
          v29 = v18;
          v30 = 2080;
          v31[0] = "requestUserCurrentBooking";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v28, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v28) = 0;
        v20 = "requestUserCurrentBooking";
      }

      else
      {
        [v14 setBookReservationResponse:v9];
        v25 = [v9 userActivity];
        [v14 setBookReservationUserActivity:v25];

        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = [v14 uniqueName];
          v28 = 138412546;
          v29 = v27;
          v30 = 2080;
          v31[0] = "bookRestaurantReservation";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v28, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v28) = 0;
        v20 = "bookRestaurantReservation";
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v20, "", &v28, 2u);
LABEL_25:

      [v14 setBookReservationRequestPending:0];
      goto LABEL_26;
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "bookReservationNumber is not the same anymore", &v28, 2u);
    }

    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v14 uniqueName];
      v28 = 138412546;
      v29 = v24;
      v30 = 2080;
      v31[0] = "bookRestaurantReservation";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v28, 0x16u);
    }

    v21 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v21))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "bookRestaurantReservation", "", &v28, 2u);
    }
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "RestaurantReservationRequester.m";
      v30 = 1026;
      LODWORD(v31[0]) = 437;
      WORD2(v31[0]) = 2082;
      *(v31 + 6) = "[RestaurantReservationRequester bookRestaurantReservation:guest:selectedOffer:specialRequest:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v28, 0x1Cu);
    }
  }

LABEL_26:
}

void sub_100E3B9D4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9 && ([*(a1 + 32) _maps_responseIsValid:v9] & 1) == 0)
    {
      v14 = [*(a1 + 32) _maps_sanitizedResponseForResponse:v9];

      v9 = v14;
    }

    v15 = *(a1 + 48);
    if (v15 == [WeakRetained currentAvailableBookingNumber])
    {
      if (v12)
      {
        [WeakRetained setAvailableBookingsRequestError:v12];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v28 = 138412290;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: %@", &v28, 0xCu);
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [WeakRetained uniqueName];
          v28 = 138412546;
          v29 = v18;
          v30 = 2080;
          v31[0] = "requestUserCurrentBooking";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v28, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_28;
        }

        LOWORD(v28) = 0;
        v20 = "requestUserCurrentBooking";
      }

      else
      {
        [WeakRetained setAvailableBookingsResponse:v9];
        v25 = [v9 userActivity];
        [WeakRetained setAvailableBookingsUserActivity:v25];

        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = [WeakRetained uniqueName];
          v28 = 138412546;
          v29 = v27;
          v30 = 2080;
          v31[0] = "requestAvailableBookings";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v28, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_28;
        }

        LOWORD(v28) = 0;
        v20 = "requestAvailableBookings";
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v20, "", &v28, 2u);
LABEL_28:

      [WeakRetained setAvailableBookingsRequestPending:0];
      goto LABEL_29;
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "availableBookingNumber is not the same anymore", &v28, 2u);
    }

    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [WeakRetained uniqueName];
      v28 = 138412546;
      v29 = v24;
      v30 = 2080;
      v31[0] = "requestAvailableBookings";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v28, 0x16u);
    }

    v21 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v21))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestAvailableBookings", "", &v28, 2u);
    }
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "RestaurantReservationRequester.m";
      v30 = 1026;
      LODWORD(v31[0]) = 347;
      WORD2(v31[0]) = 2082;
      *(v31 + 6) = "[RestaurantReservationRequester requestAvailableBookingsForPreferredTime:partySize:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v28, 0x1Cu);
    }
  }

LABEL_29:
}

void sub_100E3C3F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = *(a1 + 40);
    if (v15 == [WeakRetained currentUserBookingNumber])
    {
      if (v12)
      {
        [v14 setUserCurrentBookingRequestError:v12];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v27 = 138412290;
          v28 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: %@", &v27, 0xCu);
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v18;
          v29 = 2080;
          v30[0] = "requestUserCurrentBooking";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      else
      {
        [v14 setUserCurrentBookingResponse:v9];
        v24 = [v9 userActivity];
        [v14 setUserCurrentBookingUserActivity:v24];

        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v26;
          v29 = 2080;
          v30[0] = "requestUserCurrentBooking";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestUserCurrentBooking", "", &v27, 2u);
LABEL_25:

      [v14 setUserCurrentBookingRequestPending:0];
      goto LABEL_26;
    }

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "bookingRequestNumber is not the same anymore", &v27, 2u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v14 uniqueName];
      v27 = 138412546;
      v28 = v23;
      v29 = 2080;
      v30[0] = "requestUserCurrentBooking";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
    }

    v20 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v20))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestUserCurrentBooking", "", &v27, 2u);
    }
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446722;
      v28 = "RestaurantReservationRequester.m";
      v29 = 1026;
      LODWORD(v30[0]) = 260;
      WORD2(v30[0]) = 2082;
      *(v30 + 6) = "[RestaurantReservationRequester requestUserCurrentBookingWithRelevanceWindow:reservationIdentifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v27, 0x1Cu);
    }
  }

LABEL_26:
}

void sub_100E3CD8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = *(a1 + 40);
    if (v15 == [WeakRetained currentReservationDefaultsNumber])
    {
      if (v12)
      {
        [v14 setReservationDefaultsRequestError:v12];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v27 = 138412290;
          v28 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: %@", &v27, 0xCu);
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v18;
          v29 = 2080;
          v30[0] = "requestReservationDefaults";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      else
      {
        [v14 setReservationDefaultsResponse:v9];
        v24 = [v9 userActivity];
        [v14 setReservationDefaultsUserActivity:v24];

        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v26;
          v29 = 2080;
          v30[0] = "requestReservationDefaults";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestReservationDefaults", "", &v27, 2u);
LABEL_25:

      [v14 setReservationDefaultsRequestPending:0];
      goto LABEL_26;
    }

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "reservationDefaultsNumber is not the same anymore", &v27, 2u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v14 uniqueName];
      v27 = 138412546;
      v28 = v23;
      v29 = 2080;
      v30[0] = "requestReservationDefaults";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
    }

    v20 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v20))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestReservationDefaults", "", &v27, 2u);
    }
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446722;
      v28 = "RestaurantReservationRequester.m";
      v29 = 1026;
      LODWORD(v30[0]) = 172;
      WORD2(v30[0]) = 2082;
      *(v30 + 6) = "[RestaurantReservationRequester requestReservationDefaults]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v27, 0x1Cu);
    }
  }

LABEL_26:
}

void sub_100E3D6E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = *(a1 + 40);
    if (v15 == [WeakRetained currentGuestRequestNumber])
    {
      if (v12)
      {
        [v14 setGuestRequestError:v12];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v27 = 138412290;
          v28 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: %@", &v27, 0xCu);
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v18;
          v29 = 2080;
          v30[0] = "requestGuest";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      else
      {
        [v14 setGuestResponse:v9];
        v24 = [v9 userActivity];
        [v14 setGuestUserActivity:v24];

        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v14 uniqueName];
          v27 = 138412546;
          v28 = v26;
          v29 = 2080;
          v30[0] = "requestGuest";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v27, 0x16u);
        }

        v19 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = 0;
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestGuest", "", &v27, 2u);
LABEL_25:

      [v14 setGuestRequestPending:0];
      goto LABEL_26;
    }

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "guestRequestNumber is not the same anymore", &v27, 2u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v14 uniqueName];
      v27 = 138412546;
      v28 = v23;
      v29 = 2080;
      v30[0] = "requestGuest";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v27, 0x16u);
    }

    v20 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v20))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestGuest", "", &v27, 2u);
    }
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446722;
      v28 = "RestaurantReservationRequester.m";
      v29 = 1026;
      LODWORD(v30[0]) = 100;
      WORD2(v30[0]) = 2082;
      *(v30 + 6) = "[RestaurantReservationRequester requestGuest]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v27, 0x1Cu);
    }
  }

LABEL_26:
}

void sub_100E3EB58(id *a1)
{
  if (GEOConfigGetBOOL())
  {
    v2 = [a1[4] mapView];
    v3 = [v2 _mapLayer];

    if (!v3)
    {
LABEL_14:

      goto LABEL_15;
    }

    v4 = sub_10000B11C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_13:

      v11 = [a1[4] view];
      v12 = [v11 sceneIdentifierForLogging];
      v13 = [NSString stringWithFormat:@"VKMapViewDetailedDescription.%p.%@.txt", v3, v12];

      v14 = [v3 detailedDescription];
      v15 = a1[5];
      v16 = [MapsRadarTextAttachment attachmentWithFileName:v13 text:v14];
      [v15 addAttachment:v16];

      goto LABEL_14;
    }

    v5 = a1[4];
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_12;
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

        goto LABEL_10;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Generating VKMapView detailedDescription attachment", buf, 0xCu);

    goto LABEL_13;
  }

LABEL_15:
  v17 = [a1[4] view];
  v18 = [v17 window];

  v19 = dispatch_group_create();
  v20 = a1[4];
  if (v18 && (v20[441] & 1) == 0)
  {
    v21 = [a1[4] view];
    v22 = [v21 sceneIdentifierForLogging];
    v23 = [NSString stringWithFormat:@"%p.%@.png", v20, v22];

    dispatch_group_enter(v19);
    v24 = [a1[4] desiredRadarScreenshotTypes];
    v25 = [a1[4] mapView];
    v26 = a1[5];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100E3EF74;
    v30[3] = &unk_101661B18;
    v31 = v19;
    [MapsRadarScreenshotAttachmentHelper generateScreenshotAttachments:v24 fromWindow:v18 mapView:v25 withName:v23 radarDraft:v26 completion:v30];

    v20 = a1[4];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E3EF7C;
  block[3] = &unk_1016605F8;
  block[4] = v20;
  v28 = a1[5];
  v29 = a1[6];
  dispatch_group_notify(v19, &_dispatch_main_q, block);
}

void sub_100E3EF7C(id *a1)
{
  v2 = sub_10000B11C();
  v46 = a1;
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v3 = a1[4];
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
  v58 = v8;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] Start querying contexts for attachments", buf, 0xCu);

  a1 = v46;
LABEL_11:

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = a1[4];
  v11 = [v10 view];
  v12 = [v11 sceneIdentifierForLogging];
  v13 = [NSString stringWithFormat:@"contexts.%p.%@.txt", v10, v12];

  v14 = [a1[4] contexts];
  v15 = [v14 description];
  v44 = v13;
  v16 = [MapsRadarTextAttachment attachmentWithFileName:v13 text:v15];

  v43 = v16;
  [a1[5] addAttachment:v16];
  v56 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v17 = [a1[4] contexts];
  v18 = [v17 reverseObjectEnumerator];

  v19 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (!v19)
  {
    goto LABEL_51;
  }

  v20 = v19;
  v21 = *v54;
  v47 = v9;
  v48 = v18;
  do
  {
    v22 = 0;
    do
    {
      if (*v54 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v53 + 1) + 8 * v22);
      if (objc_opt_respondsToSelector())
      {
        v24 = (objc_opt_respondsToSelector() & 1) != 0 ? [v23 supportsTTRWhenNotTopContext] : 0;
        if (([a1[4] isTopContext:v23] & 1) != 0 || v24)
        {
          dispatch_group_enter(v9);
          v25 = a1[5];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100E3F66C;
          v51[3] = &unk_101661B18;
          v26 = v9;
          v52 = v26;
          LODWORD(v25) = [v23 provideAttachmentsForRadarDraft:v25 withCompletion:v51];
          v27 = sub_10000B11C();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
          if (v25)
          {
            if (v28)
            {
              v29 = a1[4];
              if (v29)
              {
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_29;
                }

                v32 = [v29 performSelector:"accessibilityIdentifier"];
                v33 = v32;
                if (v32 && ![v32 isEqualToString:v31])
                {
                  v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

                  a1 = v46;
                }

                else
                {

                  a1 = v46;
LABEL_29:
                  v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
                }
              }

              else
              {
                v34 = @"<nil>";
              }

              *buf = 138543618;
              v58 = v34;
              v59 = 2112;
              v60 = v23;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] Waiting for context %@ to provide attachments", buf, 0x16u);

              v9 = v47;
            }

LABEL_45:
            v18 = v48;
            goto LABEL_46;
          }

          if (v28)
          {
            v35 = a1[4];
            if (v35)
            {
              v36 = objc_opt_class();
              v37 = NSStringFromClass(v36);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_37;
              }

              v38 = v37;
              v39 = [v35 performSelector:"accessibilityIdentifier"];
              v40 = v39;
              if (v39 && ![v39 isEqualToString:v38])
              {
                v45 = v38;
                v41 = [NSString stringWithFormat:@"%@<%p, %@>", v38, v35, v40];

                v37 = v45;
              }

              else
              {

                v37 = v38;
LABEL_37:
                v41 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
              }
            }

            else
            {
              v41 = @"<nil>";
            }

            *buf = 138543618;
            v58 = v41;
            v59 = 2112;
            v60 = v23;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] Context %@ will not provide attachments", buf, 0x16u);

            a1 = v46;
            v9 = v47;
          }

          dispatch_group_leave(v26);
          goto LABEL_45;
        }
      }

LABEL_46:
      v22 = v22 + 1;
    }

    while (v20 != v22);
    v42 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
    v20 = v42;
  }

  while (v42);
LABEL_51:

  dispatch_group_leave(v9);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E3F6F0;
  block[3] = &unk_101661090;
  block[4] = a1[4];
  v50 = a1[6];
  dispatch_group_notify(v9, &_dispatch_main_q, block);
}

void sub_100E3F66C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E3F880;
  block[3] = &unk_101661B18;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100E3F6F0(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Finished generating radar attachments", buf, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100E40768(id *a1)
{
  if ([a1[4] isDisplayingNavigation])
  {
    v2 = [a1[4] navigationApplicationState];
  }

  else
  {
    v2 = 6;
  }

  v3 = [a1[4] mapView];
  v4 = [v3 _applicationState];

  if (v4 != v2)
  {
    v5 = sub_10000B11C();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      v13 = [a1[4] mapView];
      [v13 _setApplicationState:v2];

      goto LABEL_16;
    }

    v6 = a1[4];
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_14;
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

LABEL_14:
    v12 = [a1[4] mapView];
    *buf = 138543874;
    v77 = v11;
    v78 = 1024;
    *v79 = [v12 _applicationState];
    *&v79[4] = 1024;
    *&v79[6] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Updating map app state from %d to %d", buf, 0x18u);

    goto LABEL_15;
  }

LABEL_16:
  if ([a1[5] isAnimated] && objc_msgSend(a1[4], "isViewLoaded"))
  {
    v14 = [a1[4] view];
    v15 = [v14 window];
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_10000B11C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[4];
    if (!v18)
    {
      v23 = @"<nil>";
LABEL_29:

      v24 = v23;
      v25 = a1[6];
      if (!v25)
      {
        v30 = @"<nil>";
        goto LABEL_37;
      }

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      if (objc_opt_respondsToSelector())
      {
        v28 = [v25 performSelector:"accessibilityIdentifier"];
        v29 = v28;
        if (v28 && ![v28 isEqualToString:v27])
        {
          v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

          goto LABEL_35;
        }
      }

      v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_35:

LABEL_37:
      *buf = 138543618;
      v77 = v24;
      v78 = 2112;
      *v79 = v30;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will start running navigation if needed, context %@ wants it", buf, 0x16u);

      goto LABEL_38;
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

        goto LABEL_27;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_27:

    goto LABEL_29;
  }

LABEL_38:

  v31 = [a1[4] navigationDisplay];

  if (!v31)
  {
    v32 = [[ChromeNavigationDisplay alloc] initWithChromeViewController:a1[4]];
    [a1[4] setNavigationDisplay:v32];

    v33 = [(ChromeDelegateProxy *)[ChromeNavigationDisplayDelegateProxy alloc] initWithChromeViewController:a1[4]];
    v34 = a1[4];
    v35 = v34[4];
    v34[4] = v33;

    v36 = a1[4];
    v37 = v36[4];
    v38 = [v36 navigationDisplay];
    [v38 setDelegate:v37];

    v39 = [a1[4] navigationDisplay];
    [v39 setSuppressed:{objc_msgSend(a1[4], "isSuppressed")}];

    [a1[4] setNeedsUpdateComponent:@"mapInsets" animated:1];
    [a1[4] setNeedsUpdateComponent:@"routeAnnotations" animated:1];
    [a1[4] setNeedsUpdateComponent:@"mapcontrols" animated:1];
  }

  v40 = [a1[4] isDisplayingNavigation];
  v41 = v40;
  if (v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = 4;
  }

  if (objc_opt_respondsToSelector())
  {
    v43 = sub_10000B11C();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
LABEL_62:

      v57 = [a1[4] navigationDisplay];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100E4118C;
      v73[3] = &unk_1016561C8;
      v75 = v42;
      v74 = a1[6];
      [v57 configureDisplay:v73 animated:v16];

      goto LABEL_63;
    }

    v44 = a1[4];
    if (!v44)
    {
      v49 = @"<nil>";
LABEL_53:

      v50 = v49;
      v51 = a1[6];
      if (!v51)
      {
        v56 = @"<nil>";
        goto LABEL_61;
      }

      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      if (objc_opt_respondsToSelector())
      {
        v54 = [v51 performSelector:"accessibilityIdentifier"];
        v55 = v54;
        if (v54 && ![v54 isEqualToString:v53])
        {
          v56 = [NSString stringWithFormat:@"%@<%p, %@>", v53, v51, v55];

          goto LABEL_59;
        }
      }

      v56 = [NSString stringWithFormat:@"%@<%p>", v53, v51];
LABEL_59:

LABEL_61:
      *buf = 138543618;
      v77 = v50;
      v78 = 2112;
      *v79 = v56;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asking %@ to configure navigation display", buf, 0x16u);

      goto LABEL_62;
    }

    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    if (objc_opt_respondsToSelector())
    {
      v47 = [v44 performSelector:"accessibilityIdentifier"];
      v48 = v47;
      if (v47 && ![v47 isEqualToString:v46])
      {
        v49 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];

        goto LABEL_51;
      }
    }

    v49 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
LABEL_51:

    goto LABEL_53;
  }

LABEL_63:
  v58 = [a1[4] navigationDisplay];
  if (![v58 isSuppressed])
  {
LABEL_78:

    goto LABEL_79;
  }

  v59 = [a1[4] isSuppressed];

  if ((v59 & 1) == 0)
  {
    v60 = sub_10000B11C();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
LABEL_77:

      v58 = [a1[4] navigationDisplay];
      [v58 setSuppressed:0 animated:v16];
      goto LABEL_78;
    }

    v61 = a1[4];
    if (!v61)
    {
      v66 = @"<nil>";
      goto LABEL_76;
    }

    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    if (objc_opt_respondsToSelector())
    {
      v64 = [v61 performSelector:"accessibilityIdentifier"];
      v65 = v64;
      if (v64 && ![v64 isEqualToString:v63])
      {
        v66 = [NSString stringWithFormat:@"%@<%p, %@>", v63, v61, v65];

        goto LABEL_72;
      }
    }

    v66 = [NSString stringWithFormat:@"%@<%p>", v63, v61];
LABEL_72:

LABEL_76:
    *buf = 138543362;
    v77 = v66;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unpausing navigation display", buf, 0xCu);

    goto LABEL_77;
  }

LABEL_79:
  if ((v41 & 1) == 0)
  {
    v67 = [a1[4] navigationDisplay];
    v68 = [v67 configuration];
    v69 = [v68 cameraStyle];

    if (v69 != 4)
    {
      v70 = [a1[4] navigationDisplay];
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100E411F8;
      v72[3] = &unk_1016561E8;
      v72[4] = 4;
      [v70 configureDisplay:v72 animated:v16];
    }
  }

  v71 = [a1[4] navigationDisplay];
  [v71 startRunningNavigationAnimated:v16];
}

void sub_100E4118C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    [v3 setCameraStyle:?];
    v3 = v4;
  }

  [v3 setRouteGeniusEntry:0];
  [*(a1 + 32) configureNavigationDisplay:v4];
}

void sub_100E41294(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationDisplay];

  if (!v2)
  {
    return;
  }

  v3 = [*(a1 + 32) mapView];
  v4 = [v3 _applicationState];

  if (v4 == 2)
  {
    v5 = [*(a1 + 32) mapView];
    [v5 _setApplicationState:0];
  }

  v6 = [*(a1 + 32) contexts];
  v7 = [v6 lastObject];

  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      v14 = @"<nil>";
LABEL_13:

      v15 = v14;
      v16 = v7;
      if (!v16)
      {
        v21 = @"<nil>";
        goto LABEL_21;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (objc_opt_respondsToSelector())
      {
        v19 = [v16 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (v19 && ![v19 isEqualToString:v18])
        {
          v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

          goto LABEL_19;
        }
      }

      v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_19:

LABEL_21:
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will stop any running navigation, no context wants it (top: %@)", buf, 0x16u);

      goto LABEL_22;
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

        goto LABEL_11;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_11:

    goto LABEL_13;
  }

LABEL_22:

  if ([*(a1 + 40) isAnimated] && objc_msgSend(*(a1 + 32), "isViewLoaded"))
  {
    v22 = [*(a1 + 32) view];
    v23 = [v22 window];
    v24 = v23 != 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = [*(a1 + 32) navigationDisplay];
  [v25 stopRunningNavigationAnimated:v24];

  [*(a1 + 32) setNavigationDisplay:0];
  v26 = *(a1 + 32);
  v27 = *(v26 + 32);
  *(v26 + 32) = 0;

  [*(a1 + 32) setNeedsUpdateComponent:@"mapInsets" animated:1];
  [*(a1 + 32) setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  [*(a1 + 32) setNeedsUpdateComponent:@"mapcontrols" animated:1];
}

void sub_100E42320(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100E4234C(uint64_t a1)
{
  if ([*(a1 + 32) shouldAutomaticallyLoadMapView])
  {
    [*(a1 + 32) loadMapViewIfNeeded];
    [*(a1 + 32) updateComponentsIfNeeded:0];
  }

  [*(a1 + 32) _addWatermarkView];
  if ([*(a1 + 32) isInactive])
  {
    [*(a1 + 32) _setInactive:*(*(a1 + 32) + 442)];
  }

  v2 = [*(a1 + 32) overlayController];
  v3 = [*(a1 + 32) view];
  v4 = *(a1 + 32);
  v5 = v4[16];
  v6 = [v4 mapInsetsLayoutGuide];
  v7 = [*(a1 + 32) viewportLayoutGuide];
  [v2 installInView:v3 containingViewController:v4 contentLayoutGuide:v5 mapInsetsLayoutGuide:v6 viewportLayoutGuide:v7];

  [*(*(a1 + 32) + 552) setSuppressed:0];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];
}

void sub_100E424B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
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
    *buf = 138543618;
    v31 = v9;
    v32 = 2048;
    v33 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did complete unsuppress animation: %p", buf, 0x16u);
  }

  [*(a1 + 32) didUnsuppress];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(*(a1 + 32) + 504);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 chromeDidUnsuppress:*(a1 + 32)];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  if (v17 == WeakRetained)
  {
    *(v16 + 80) = 0;

    if ([*(a1 + 32) isSuppressed])
    {
      v18 = sub_10000B11C();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:

        [*(a1 + 32) _suppress];
        goto LABEL_34;
      }

      v19 = *(a1 + 32);
      if (!v19)
      {
        v24 = @"<nil>";
        goto LABEL_32;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [v19 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ![v22 isEqualToString:v21])
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

          goto LABEL_29;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_29:

LABEL_32:
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Now suppressed at end of unsuppress animation, will run suppress now", buf, 0xCu);

      goto LABEL_33;
    }
  }

LABEL_34:
}

void sub_100E42C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E42C48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
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
    *buf = 138543618;
    v59 = v9;
    v60 = 2048;
    v61 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did complete suppress animation: %p", buf, 0x16u);
  }

  v10 = +[GEOOfflineService shared];
  [v10 unregisterMapView:*(*(a1 + 32) + 520)];

  [*(*(a1 + 32) + 552) stopRunningNavigationAnimated:1];
  v11 = *(a1 + 32);
  v12 = *(v11 + 32);
  *(v11 + 32) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 552);
  *(v13 + 552) = 0;

  [*(*(a1 + 32) + 520) setDelegate:0];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = 0;

  [*(*(a1 + 32) + 520) removeFromSuperview];
  v17 = *(a1 + 32);
  v18 = *(v17 + 520);
  *(v17 + 520) = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  *(v19 + 16) = 0;

  [*(*(a1 + 32) + 240) removeFromSuperview];
  v21 = *(a1 + 32);
  v22 = *(v21 + 240);
  *(v21 + 240) = 0;

  [*(a1 + 32) _removeWatermarkView];
  v23 = *(a1 + 32);
  v24 = *(v23 + 448);
  *(v23 + 448) = 0;

  v25 = *(a1 + 32);
  v26 = *(v25 + 488);
  *(v25 + 488) = 0;

  v27 = *(a1 + 32);
  v28 = *(v27 + 456);
  *(v27 + 456) = 0;

  v29 = *(a1 + 32);
  v30 = *(v29 + 464);
  *(v29 + 464) = 0;

  v31 = *(a1 + 32);
  v32 = *(v31 + 256);
  *(v31 + 256) = 0;

  v33 = *(a1 + 32);
  v34 = *(v33 + 480);
  *(v33 + 480) = 0;

  v35 = *(a1 + 32);
  v36 = *(v35 + 496);
  *(v35 + 496) = 0;

  v37 = [*(a1 + 32) overlayController];
  [v37 installInView:0 containingViewController:0 contentLayoutGuide:0 mapInsetsLayoutGuide:0 viewportLayoutGuide:0];

  [*(a1 + 32) didSuppress];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = *(*(a1 + 32) + 504);
  v39 = [v38 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v54;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v53 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v43 chromeDidSuppress:*(a1 + 32)];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v40);
  }

  v44 = *(a1 + 32);
  v45 = *(v44 + 80);
  if (v45 == WeakRetained)
  {
    *(v44 + 80) = 0;

    if (([*(a1 + 32) isSuppressed] & 1) == 0)
    {
      v46 = sub_10000B11C();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:

        [*(a1 + 32) _unsuppress];
        goto LABEL_34;
      }

      v47 = *(a1 + 32);
      if (!v47)
      {
        v52 = @"<nil>";
        goto LABEL_32;
      }

      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      if (objc_opt_respondsToSelector())
      {
        v50 = [v47 performSelector:"accessibilityIdentifier"];
        v51 = v50;
        if (v50 && ![v50 isEqualToString:v49])
        {
          v52 = [NSString stringWithFormat:@"%@<%p, %@>", v49, v47, v51];

          goto LABEL_29;
        }
      }

      v52 = [NSString stringWithFormat:@"%@<%p>", v49, v47];
LABEL_29:

LABEL_32:
      *buf = 138543362;
      v59 = v52;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] No longer suppressed at end of suppress animation, will run unsuppress now", buf, 0xCu);

      goto LABEL_33;
    }
  }

LABEL_34:
}

void sub_100E43818(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100E43834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v41 = sub_10006D178();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v55 = "[ChromeViewController _updateFullscreenViewControllerWithAnimation:]_block_invoke";
      v56 = 2080;
      v57 = "ChromeViewController.m";
      v58 = 1024;
      *v59 = 2279;
      *&v59[4] = 2080;
      *&v59[6] = "strongAnimation != nil";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v42 = sub_10006D178();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v55 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v3 = [*(a1 + 32) currentContextTransition];
  v4 = [v3 previousTopContext];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) topContext];
  }

  v7 = v6;

  v8 = [*(a1 + 32) currentContextTransition];
  if (v8)
  {
    v9 = [*(a1 + 32) currentContextTransition];
    v10 = [v9 pendingContexts];
    v46 = [v10 containsObject:v7] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  v11 = [*(a1 + 32) pendingContexts];
  v12 = v11;
  v47 = v7;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [*(a1 + 32) contexts];
  }

  v14 = v13;
  v48 = a1;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = v14;
  v15 = [v14 reverseObjectEnumerator];
  v16 = [v15 allObjects];

  v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = *v51;
    v49 = @"NO";
    v44 = WeakRetained;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v50 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v24 = [v23 fullscreenViewController];

          v25 = v23;
          v26 = v20;
          v20 = v25;

          v19 = v24;
        }

        if (objc_opt_respondsToSelector() & 1) == 0 || ([v23 wantsFullscreenViewControllerControl])
        {
          v49 = @"YES";
          WeakRetained = v44;
          goto LABEL_25;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
      WeakRetained = v44;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v49 = @"NO";
  }

LABEL_25:

  v27 = sub_10000B11C();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = *(v48 + 32);
    if (!v28)
    {
      v33 = @"<nil>";
LABEL_34:

      v34 = v33;
      v35 = v19;
      if (!v35)
      {
        v40 = @"<nil>";
        goto LABEL_42;
      }

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      if (objc_opt_respondsToSelector())
      {
        v38 = [v35 performSelector:"accessibilityIdentifier"];
        v39 = v38;
        if (v38 && ![v38 isEqualToString:v37])
        {
          v40 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

          goto LABEL_40;
        }
      }

      v40 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_40:

LABEL_42:
      *buf = 138544130;
      v55 = v34;
      v56 = 2114;
      v57 = v40;
      v58 = 2114;
      *v59 = v20;
      *&v59[8] = 2114;
      *&v59[10] = v49;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] Updating fullscreenViewController: %{public}@ from %{public}@ (wantsControl: %{public}@)", buf, 0x2Au);

      goto LABEL_43;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [v28 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

        goto LABEL_32;
      }
    }

    v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_32:

    goto LABEL_34;
  }

LABEL_43:

  [*(v48 + 32) _transitionToFullscreenViewController:v19 forContext:v20 previousIsLeaving:v46 withAnimation:WeakRetained];
}

void sub_100E43EAC(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) personalizedItemSourcesForCurrentState];
  v3 = sub_10000B11C();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_33;
  }

  v4 = *(v1 + 32);
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
  v10 = v9;
  v11 = v2;
  v12 = v11;
  if (v11)
  {
    if ([v11 count])
    {
      v30 = v10;
      v31 = v3;
      v32 = v1;
      v33 = v2;
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = v15;
      v17 = *v35;
      while (1)
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          if (v19)
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_22;
            }

            v22 = [v19 performSelector:"accessibilityIdentifier"];
            v23 = v22;
            if (v22 && ![v22 isEqualToString:v21])
            {
              v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];
            }

            else
            {

LABEL_22:
              v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
            }

            goto LABEL_25;
          }

          v24 = @"<nil>";
LABEL_25:

          [v13 addObject:v24];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v25 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
        v16 = v25;
        if (!v25)
        {
LABEL_29:

          v26 = [v14 componentsJoinedByString:{@", "}];
          v27 = [NSString stringWithFormat:@"<%p> [%@]", v14, v26];

          v1 = v32;
          v2 = v33;
          v10 = v30;
          v3 = v31;
          v12 = v29;
          goto LABEL_32;
        }
      }
    }

    v27 = [NSString stringWithFormat:@"<%p> (empty)", v12];
  }

  else
  {
    v27 = @"<nil>";
  }

LABEL_32:

  *buf = 138543618;
  v39 = v10;
  v40 = 2112;
  v41 = v27;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] -> item sources: %@", buf, 0x16u);

LABEL_33:
  [*(v1 + 32) customPOIsController];

  v28 = [*(v1 + 32) personalizedItemManager];
  [v28 setItemSources:v2];
}

void sub_100E44338(uint64_t a1)
{
  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x3032000000;
  v123[3] = sub_100E454E0;
  v123[4] = sub_100E454F0;
  v124 = 0;
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_100E454F8;
  v122[3] = &unk_1016561A0;
  v1 = (a1 + 32);
  v122[4] = *(a1 + 32);
  v122[5] = v123;
  v109 = objc_retainBlock(v122);
  if (![*v1 isRunningNavigationDisplay])
  {
    v113 = 0;
    v107 = 0;
    goto LABEL_17;
  }

  v2 = (v109[2])();
  v3 = [*(a1 + 32) navigationDisplay];
  v107 = [v3 updateRouteAnnotationsConfiguration:v2];

  if (v107)
  {
    v4 = sub_10000B11C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      v113 = v2;
      goto LABEL_16;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_14;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ([v8 isEqualToString:v7] & 1) == 0)
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_10;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_10:

LABEL_14:
    *buf = 138543362;
    v126 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] - navigation display is providing route annotations", buf, 0xCu);

    goto LABEL_15;
  }

  v113 = 0;
LABEL_16:

LABEL_17:
  v11 = [*(a1 + 32) pendingContexts];
  v12 = v11;
  if (v11)
  {
    v106 = v11;
  }

  else
  {
    v106 = [*(a1 + 32) contexts];
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v13 = [v106 reverseObjectEnumerator];
  obj = [v13 allObjects];

  v14 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
  if (v14)
  {
    v111 = *v119;
LABEL_22:
    v15 = 0;
    while (1)
    {
      if (*v119 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v118 + 1) + 8 * v15);
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v16 routeAnnotationsProvider], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = v16;
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v17 = v18;
        }

        else
        {
          v17 = 0;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = (v109[2])();
        if ([v17 updateRouteAnnotationsConfiguration:v19])
        {
          v23 = sub_10000B11C();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = *(a1 + 32);
            if (v24)
            {
              v25 = objc_opt_class();
              v26 = NSStringFromClass(v25);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_49;
              }

              v27 = [v24 performSelector:"accessibilityIdentifier"];
              v28 = v27;
              if (v27 && ([v27 isEqualToString:v26] & 1) == 0)
              {
                v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];
              }

              else
              {

LABEL_49:
                v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
              }
            }

            else
            {
              v29 = @"<nil>";
            }

            *buf = 138543618;
            v126 = v29;
            v127 = 2114;
            v128 = @"<nil>";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] - %{public}@ is updating the route annotation configuration", buf, 0x16u);
          }

          v17 = v17;
          v20 = [v19 copy];

          v22 = 1;
          goto LABEL_94;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v20 = [v17 routeAnnotationsConfiguration];

        if (v20)
        {
          v17 = v17;
          if ([*(a1 + 32) isRunningNavigationDisplay])
          {
            v30 = sub_10000B11C();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = *(a1 + 32);
              if (v31)
              {
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_58;
                }

                v34 = [v31 performSelector:"accessibilityIdentifier"];
                v35 = v34;
                if (v34 && ([v34 isEqualToString:v33] & 1) == 0)
                {
                  v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];
                }

                else
                {

LABEL_58:
                  v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
                }
              }

              else
              {
                v36 = @"<nil>";
              }

              v37 = v36;
              v38 = v17;
              if (v38)
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_70;
                }

                v41 = [v38 performSelector:"accessibilityIdentifier"];
                v42 = v41;
                if (v41 && ([v41 isEqualToString:v40] & 1) == 0)
                {
                  v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];
                }

                else
                {

LABEL_70:
                  v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
                }
              }

              else
              {
                v43 = @"<nil>";
              }

              *buf = 138543618;
              v126 = v37;
              v127 = 2114;
              v128 = v43;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] Context %{public}@ is overriding the route annotations configuration prepared by navigation display", buf, 0x16u);
            }
          }

          v19 = sub_10000B11C();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v44 = *(a1 + 32);
            if (v44)
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_81;
              }

              v47 = [v44 performSelector:"accessibilityIdentifier"];
              v48 = v47;
              if (v47 && ([v47 isEqualToString:v46] & 1) == 0)
              {
                v49 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];
              }

              else
              {

LABEL_81:
                v49 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
              }
            }

            else
            {
              v49 = @"<nil>";
            }

            v50 = v49;
            v17 = v17;
            if (v17)
            {
              v51 = objc_opt_class();
              v52 = NSStringFromClass(v51);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_89;
              }

              v53 = [v17 performSelector:"accessibilityIdentifier"];
              v54 = v53;
              if (v53 && ([v53 isEqualToString:v52] & 1) == 0)
              {
                v55 = [NSString stringWithFormat:@"%@<%p, %@>", v52, v17, v54];
              }

              else
              {

LABEL_89:
                v55 = [NSString stringWithFormat:@"%@<%p>", v52, v17];
              }
            }

            else
            {
              v55 = @"<nil>";
            }

            *buf = 138543618;
            v126 = v50;
            v127 = 2114;
            v128 = v55;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}@] - %{public}@ is providing a route annotation configuration", buf, 0x16u);
          }

          v22 = v107;
LABEL_94:

          v112 = 0;
          v113 = v20;
          v21 = v17;
          goto LABEL_95;
        }

        v113 = 0;
      }

      if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 wantsRouteAnnotationsControl])
      {
        v21 = 0;
        v112 = 1;
        v22 = v107;
LABEL_95:

        goto LABEL_96;
      }

      if (v14 == ++v15)
      {
        v14 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  v21 = 0;
  v112 = 0;
  v22 = v107;
LABEL_96:

  v56 = [*(a1 + 32) routeAnnotationsController];
  v57 = [v56 configuration];
  v58 = [v57 routes];
  v59 = [(__CFString *)v113 routes];
  v60 = v58;
  v61 = v59;
  if (v60 | v61)
  {
    v62 = v61;
    v63 = [v60 isEqual:v61];

    if (v63)
    {
      goto LABEL_107;
    }

    v64 = [*(a1 + 32) searchPinsManager];
    v56 = [v64 routeStartEndItemSource];

    v57 = [*(a1 + 32) personalizedItemManager];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v65 = [(__CFString *)v113 routes];
    v66 = [v65 countByEnumeratingWithState:&v114 objects:v135 count:16];
    if (v66)
    {
      v67 = *v115;
      do
      {
        for (i = 0; i != v66; i = i + 1)
        {
          if (*v115 != v67)
          {
            objc_enumerationMutation(v65);
          }

          [*(*(&v114 + 1) + 8 * i) updateWaypointStyleAttributesWithItemSource:v56 personalizedItemManager:v57];
        }

        v66 = [v65 countByEnumeratingWithState:&v114 objects:v135 count:16];
      }

      while (v66);
    }
  }

LABEL_107:
  v69 = sub_10000B11C();
  v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);

  v71 = sub_10000B11C();
  v72 = v71;
  if (!v70)
  {
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      goto LABEL_162;
    }

    v79 = *(a1 + 32);
    if (!v79)
    {
      v84 = @"<nil>";
LABEL_138:

      v85 = v84;
      if (v22)
      {
        v94 = "Updating";
      }

      else
      {
        v94 = "Replacing";
      }

      v95 = v21;
      if (v107)
      {
        v95 = [*(a1 + 32) navigationDisplay];
      }

      v96 = v95;
      if (!v96)
      {
        v93 = @"<nil>";
        goto LABEL_157;
      }

      v97 = objc_opt_class();
      v98 = NSStringFromClass(v97);
      if (objc_opt_respondsToSelector())
      {
        v99 = [v96 performSelector:"accessibilityIdentifier"];
        v100 = v99;
        if (v99 && ([v99 isEqualToString:v98] & 1) == 0)
        {
          v93 = [NSString stringWithFormat:@"%@<%p, %@>", v98, v96, v100];

          goto LABEL_149;
        }
      }

      v93 = [NSString stringWithFormat:@"%@<%p>", v98, v96];
LABEL_149:

LABEL_157:
      v103 = @"NO";
      *buf = 138544130;
      v127 = 2080;
      v126 = v85;
      if (v112)
      {
        v103 = @"YES";
      }

      v128 = v94;
      v129 = 2114;
      v130 = v93;
      v131 = 2114;
      v132 = v103;
      v102 = v103;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[%{public}@] %s route annotations configurations for %{public}@ (wantsControl: %{public}@)", buf, 0x2Au);
      if (v107)
      {
      }

      goto LABEL_161;
    }

    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    if (objc_opt_respondsToSelector())
    {
      v82 = [v79 performSelector:"accessibilityIdentifier"];
      v83 = v82;
      if (v82 && ([v82 isEqualToString:v81] & 1) == 0)
      {
        v84 = [NSString stringWithFormat:@"%@<%p, %@>", v81, v79, v83];

        goto LABEL_123;
      }
    }

    v84 = [NSString stringWithFormat:@"%@<%p>", v81, v79];
LABEL_123:

    goto LABEL_138;
  }

  if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_162;
  }

  v73 = *(a1 + 32);
  if (v73)
  {
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    if (objc_opt_respondsToSelector())
    {
      v76 = [v73 performSelector:"accessibilityIdentifier"];
      v77 = v76;
      if (v76 && ([v76 isEqualToString:v75] & 1) == 0)
      {
        v78 = [NSString stringWithFormat:@"%@<%p, %@>", v75, v73, v77];

        goto LABEL_115;
      }
    }

    v78 = [NSString stringWithFormat:@"%@<%p>", v75, v73];
LABEL_115:

    goto LABEL_125;
  }

  v78 = @"<nil>";
LABEL_125:

  v85 = v78;
  if (v22)
  {
    v86 = "Updating";
  }

  else
  {
    v86 = "Replacing";
  }

  v87 = v21;
  if (v107)
  {
    v87 = [*(a1 + 32) navigationDisplay];
  }

  v88 = v87;
  if (!v88)
  {
    v93 = @"<nil>";
    goto LABEL_151;
  }

  v89 = objc_opt_class();
  v90 = NSStringFromClass(v89);
  if (objc_opt_respondsToSelector())
  {
    v91 = [v88 performSelector:"accessibilityIdentifier"];
    v92 = v91;
    if (v91 && ([v91 isEqualToString:v90] & 1) == 0)
    {
      v93 = [NSString stringWithFormat:@"%@<%p, %@>", v90, v88, v92];

      goto LABEL_136;
    }
  }

  v93 = [NSString stringWithFormat:@"%@<%p>", v90, v88];
LABEL_136:

LABEL_151:
  v127 = 2080;
  v101 = @"NO";
  *buf = 138544386;
  v126 = v85;
  if (v112)
  {
    v101 = @"YES";
  }

  v128 = v86;
  v129 = 2114;
  v130 = v93;
  v131 = 2114;
  v132 = v113;
  v133 = 2114;
  v134 = v101;
  v102 = v101;
  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "[%{public}@] %s route annotations configurations for %{public}@: %{public}@ (wantsControl: %{public}@)", buf, 0x34u);
  if (v107)
  {
  }

LABEL_161:

LABEL_162:
  v104 = v112;
  if (v21)
  {
    v104 = 1;
  }

  if (v113 || (v104 & 1) == 0)
  {
    v105 = [*(a1 + 32) routeAnnotationsController];
    [v105 setConfiguration:v113];
  }

  _Block_object_dispose(v123, 8);
}

uint64_t sub_100E454E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100E454F8(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [*(a1 + 32) routeAnnotationsController];
    v4 = [v3 configuration];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (!v5)
    {
      v6 = objc_alloc_init(RouteAnnotationsMutableConfiguration);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    if (!v5)
    {
    }

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void sub_100E45808(uint64_t a1)
{
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
  [*(a1 + 32) setAutoresizingMask:18];
  v2 = [*(a1 + 40) view];
  [v2 bounds];
  [*(a1 + 32) setFrame:?];

  v3 = *(a1 + 40);
  if (v3[65] && ([v3[65] superview], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "view"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v3 = *(a1 + 40), v4 == v5))
  {
    v6 = [v3 view];
    [v6 insertSubview:*(a1 + 32) aboveSubview:*(*(a1 + 40) + 520)];
  }

  else
  {
    v6 = [v3 view];
    [v6 insertSubview:*(a1 + 32) atIndex:0];
  }
}

void sub_100E48718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E48744(uint64_t a1, int a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sub_10000B11C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349825;
      v34 = WeakRetained;
      v35 = 2049;
      v36 = a3;
      v37 = 2049;
      v38 = a4;
      v39 = 1025;
      v40 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got hiking coordinate result for coordinate:  %{private}f, %{private}f: %{private}d", buf, 0x26u);
    }

    v9 = [_MapsCoordinateKey coordinateKeyFromCoordinate:a3, a4];
    v10 = sub_10000B11C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [WeakRetained[46] objectForKey:v9];
      v12 = COERCE_DOUBLE([v11 count]);
      *buf = 134349312;
      v34 = WeakRetained;
      v35 = 2048;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Executing %lu completion blocks", buf, 0x16u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [WeakRetained[46] objectForKey:{v9, 0}];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v28 + 1) + 8 * i) + 16))(a3, a4);
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    [WeakRetained[46] removeObjectForKey:v9];
    v18 = [WeakRetained[46] count];
    v19 = sub_10000B11C();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        *buf = 134349056;
        v34 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] There are more hiking coordinate checks queued up; kicking off the next one", buf, 0xCu);
      }

      v21 = [WeakRetained[46] keyEnumerator];
      v22 = [v21 allObjects];
      v23 = [v22 firstObject];
      [v23 coordinate];
      v25 = v24;
      v27 = v26;

      [WeakRetained _checkHikingCoordinate:{v25, v27}];
    }

    else
    {
      if (v20)
      {
        *buf = 134349056;
        v34 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] There are no more hiking coordinate checks queued up", buf, 0xCu);
      }
    }
  }
}

id sub_100E49B90(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E49C24;
  v4[3] = &unk_101656150;
  v4[4] = *(a1 + 32);
  v1 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v1;
  v2 = *(a1 + 88);
  v7 = *(a1 + 72);
  v8 = v2;
  return [UIView performWithoutAnimation:v4];
}

void sub_100E49C24(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
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
    v9 = NSStringFromUIEdgeInsets(*(a1 + 40));
    *buf = 138543618;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] - label insets: %@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = [*(a1 + 32) mapView];
  [v14 _setLabelEdgeInsets:{v10, v11, v12, v13}];

  v15 = sub_10000B11C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_20;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_18;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_18:

LABEL_20:
    v22 = NSStringFromUIEdgeInsets(*(a1 + 72));
    *buf = 138543618;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] - label widths: %@", buf, 0x16u);
  }

  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = [*(a1 + 32) mapView];
  [v27 _setLabelEdgeWidths:{v23, v24, v25, v26}];
}

void sub_100E4A494(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 224) activeConstraints];
  v3 = [v2 mutableCopy];

  if (([*(a1 + 40) isEqualToArray:v3] & 1) == 0)
  {
    [v3 removeObjectsInArray:*(a1 + 40)];
    [NSLayoutConstraint deactivateConstraints:v3];
    [NSLayoutConstraint activateConstraints:*(a1 + 40)];
    v4 = sub_10000B11C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 40) count];

      if (v5)
      {
        v6 = sub_10000B11C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 32);
          if (!v7)
          {
            v12 = @"<nil>";
            goto LABEL_24;
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

              goto LABEL_11;
            }
          }

          v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_11:

LABEL_24:
          v18 = _NSStringFromUIRectEdge();
          *buf = 138543618;
          v73 = v12;
          v74 = 2114;
          v75 = v18;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Will constrain map edge insets to safe areas: %{public}@", buf, 0x16u);

          goto LABEL_25;
        }

LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
    }

    v6 = sub_10000B11C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v13 = *(a1 + 32);
    if (!v13)
    {
      v12 = @"<nil>";
      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_20;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_20:

LABEL_22:
    *buf = 138543362;
    v73 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Will not constrain map edge insets to safe areas", buf, 0xCu);
LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
  v19 = [*(a1 + 32) mapInsetsLayoutGuide];
  [v19 layoutFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [*(a1 + 32) view];
  [v28 bounds];
  v63 = v30;
  v64 = v29;
  v61 = v32;
  v62 = v31;
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  bottom = UIEdgeInsetsZero.bottom;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v59 = v25;
  v60 = v21;
  v76.origin.x = v21;
  v36 = v23;
  v76.origin.y = v23;
  v76.size.width = v25;
  v37 = v27;
  v76.size.height = v27;
  v84.origin.x = CGRectZero.origin.x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  if (CGRectEqualToRect(v76, v84))
  {
    v39 = left;
    top = UIEdgeInsetsZero.top;
    v41 = right;
    v40 = bottom;
  }

  else
  {
    v77.origin.y = v63;
    v77.origin.x = v64;
    v77.size.height = v61;
    v77.size.width = v62;
    v85.origin.x = CGRectZero.origin.x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    v39 = left;
    top = UIEdgeInsetsZero.top;
    v41 = right;
    v40 = bottom;
    if (!CGRectEqualToRect(v77, v85))
    {
      v78.origin.x = v60;
      v78.origin.y = v36;
      v78.size.width = v59;
      v78.size.height = v37;
      MinY = CGRectGetMinY(v78);
      v79.origin.x = v60;
      v79.origin.y = v36;
      v79.size.width = v59;
      v79.size.height = v37;
      MinX = CGRectGetMinX(v79);
      v80.origin.x = v64;
      v80.origin.y = v63;
      v80.size.width = v62;
      v80.size.height = v61;
      v67 = CGRectGetHeight(v80);
      v81.origin.x = v60;
      v81.origin.y = v36;
      v81.size.width = v59;
      v81.size.height = v37;
      v68 = v67 - CGRectGetMaxY(v81);
      v82.origin.x = v64;
      top = MinY;
      v82.origin.y = v63;
      v82.size.width = v62;
      v82.size.height = v61;
      v42 = CGRectGetWidth(v82);
      v83.origin.x = v60;
      v83.origin.y = v36;
      v83.size.width = v59;
      v83.size.height = v37;
      v40 = v68;
      v39 = MinX;
      v41 = v42 - CGRectGetMaxX(v83);
    }
  }

  v43 = [*(a1 + 32) mapView];
  [v43 _edgeInsets];
  if (v39 != v47 || top != v44 || v41 != v46)
  {

    goto LABEL_40;
  }

  v50 = v45;

  if (v40 != v50)
  {
LABEL_40:
    v51 = sub_10000B11C();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
LABEL_50:

      v58 = *(*(a1 + 48) + 8);
      v58[4] = top;
      v58[5] = v39;
      v58[6] = v40;
      v58[7] = v41;
      goto LABEL_51;
    }

    v52 = *(a1 + 32);
    if (!v52)
    {
      v57 = @"<nil>";
      goto LABEL_49;
    }

    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    if (objc_opt_respondsToSelector())
    {
      v55 = [v52 performSelector:"accessibilityIdentifier"];
      v56 = v55;
      if (v55 && ![v55 isEqualToString:v54])
      {
        v57 = [NSString stringWithFormat:@"%@<%p, %@>", v54, v52, v56];

        goto LABEL_47;
      }
    }

    v57 = [NSString stringWithFormat:@"%@<%p>", v54, v52];
LABEL_47:

LABEL_49:
    *buf = 138543362;
    v73 = v57;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "[%{public}@] - map insets did change after updating safe area constraints, will permit updating map view", buf, 0xCu);

    goto LABEL_50;
  }

LABEL_51:
}

void sub_100E4AAF8(uint64_t a1)
{
  v2 = vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(*(*(a1 + 40) + 8) + 32), UIEdgeInsetsNull[0]), vceqq_f64(*(*(*(a1 + 40) + 8) + 48), UIEdgeInsetsNull[1]))), 0xFuLL)));
  v3 = sub_10000B11C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if ((v2 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_19;
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

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_19:
    v17 = NSStringFromUIEdgeInsets(*(*(*(a1 + 40) + 8) + 32));
    *buf = 138543618;
    v43 = v10;
    v44 = 2114;
    v45 = v17;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] - map insets: %{public}@", buf, 0x16u);

LABEL_20:
    v18 = *(*(a1 + 40) + 8);
    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[6];
    v22 = v18[7];
    v23 = [*(a1 + 32) mapView];
    [v23 _setEdgeInsets:{v19, v20, v21, v22}];

    [*(a1 + 32) mapAttributionInsets];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [*(a1 + 32) mapView];
    [v32 _attributionInsets];
    if (v27 == v36 && v25 == v33 && v31 == v35)
    {
      v39 = v34;

      if (v29 == v39)
      {
LABEL_30:
        [*(a1 + 32) _updateDebugLayoutGuidesView];
        v41 = [*(a1 + 32) navigationDisplay];
        [v41 mapInsetsDidChangeAnimated:*(a1 + 48)];

        v3 = [*(a1 + 32) overlayController];
        [v3 enumerateOverlaysUsingBlock:&stru_101656128];
        goto LABEL_33;
      }
    }

    else
    {
    }

    v40 = [*(a1 + 32) mapView];
    [v40 _setAttributionInsets:{v25, v27, v29, v31}];

    goto LABEL_30;
  }

  if (v4)
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_32;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_17;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_17:

LABEL_32:
    *buf = 138543362;
    v43 = v16;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] - map insets are null, meaning we specifically don't want to continue this update", buf, 0xCu);
  }

LABEL_33:
}

void sub_100E4AEF4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ChromeViewControllerDidUpdateMapInsetsNotification" object:*(a1 + 32)];

  v3 = [*(a1 + 32) topContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) topContext];
    [v5 mapInsetsDidChangeAnimated:*(a1 + 40)];
  }
}

void sub_100E4AFB4(id a1, ChromeOverlay *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(ChromeOverlay *)v4 didUpdateMapInsets];
  }
}

void sub_100E4C084(uint64_t a1)
{
  v24[0] = &off_1016E9F50;
  v18 = +[NSBundle mainBundle];
  v17 = [v18 localizedStringForKey:@"MapView_Venue_LookInside" value:@"localized string not found" table:0];
  v25[0] = v17;
  v24[1] = &off_1016E9F68;
  v16 = +[NSBundle mainBundle];
  v1 = [v16 localizedStringForKey:@"MapView_POI_AdditionalClusterCount" value:@"localized string not found" table:0];
  v25[1] = v1;
  v24[2] = &off_1016E9F80;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[EV Chargers Availability] No Availability" value:@"localized string not found" table:0];
  v25[2] = v3;
  v24[3] = &off_1016E9F98;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[EV Chargers Availability] x of y available" value:@"localized string not found" table:0];
  v25[3] = v5;
  v24[4] = &off_1016E9FB0;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[EV Chargers Availability] No Status" value:@"localized string not found" table:0];
  v25[4] = v7;
  v24[5] = &off_1016E9FC8;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OFFLINE_REGION_LABEL" value:@"localized string not found" table:@"Offline"];
  v25[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 preferredLocalizations];
  v13 = [v12 firstObject];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E4C3A0;
  block[3] = &unk_101661A40;
  v21 = *(a1 + 32);
  v22 = v10;
  v23 = v13;
  v14 = v13;
  v15 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100E4C3A0(uint64_t a1)
{
  v3 = [[VKClientLocalizedStrings alloc] initWithStrings:*(a1 + 40) locale:*(a1 + 48)];
  v2 = [*(a1 + 32) _mapLayer];
  [v2 setClientLocalizedStrings:v3];
}

void sub_100E4C788(uint64_t a1)
{
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*(a1 + 40) view];
  [v2 bounds];
  [*(a1 + 32) setFrame:?];

  v3 = [*(a1 + 40) view];
  [v3 addSubview:*(a1 + 32)];

  v4 = *(a1 + 32);
  v8 = [*(a1 + 40) view];
  LODWORD(v5) = 1148846080;
  v6 = [v4 _maps_constraintsEqualToEdgesOfView:v8 priority:v5];
  v7 = [v6 allConstraints];
  [NSLayoutConstraint activateConstraints:v7];
}

void sub_100E4D4FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[ChromeComponentUpdateInfo supportsCallstackSymbols])
  {
    v7 = sub_100021DB0(v6, &stru_101656078);
    v8 = sub_100013558();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_20:

      goto LABEL_23;
    }

    v9 = *(a1 + 32);
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_19;
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

        goto LABEL_9;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_9:

LABEL_19:
    *buf = 138543874;
    v40 = v14;
    v41 = 2112;
    v42 = v5;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating %@:\n%@", buf, 0x20u);

    goto LABEL_20;
  }

  v7 = sub_100013558();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    v20 = @"<nil>";
    goto LABEL_22;
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

      goto LABEL_17;
    }
  }

  v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_17:

LABEL_22:
  *buf = 138543618;
  v40 = v20;
  v41 = 2112;
  v42 = v5;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating %@", buf, 0x16u);

LABEL_23:
  [*(a1 + 32) updateComponent:v5 forTiming:*(a1 + 48) withAnimation:*(a1 + 40)];
  if ([v6 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v34 + 1) + 8 * i);
          v27 = [v26 completionHandler];

          if (v27)
          {
            v28 = *(a1 + 40);
            v29 = [v26 completionHandler];
            [v28 addCompletion:v29];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v23);
    }
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100E4D958;
  v32[3] = &unk_101661570;
  v30 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v5;
  v31 = v5;
  [v30 addCompletion:v32];
}

id sub_100E4D958(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
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
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Finished updating %@", buf, 0x16u);
  }

  [*(*(a1 + 32) + 104) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 96) count];
  if (!result)
  {
    return result;
  }

  v11 = sub_10000B11C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_21;
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

        goto LABEL_19;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_19:

LABEL_21:
    v18 = [*(*(a1 + 32) + 96) allKeys];
    *buf = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Still waiting to update: %@", buf, 0x16u);
  }

  return [*(a1 + 32) updateComponentsIfNeeded];
}

void sub_100E4F184(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_100E4F1C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[44];
    WeakRetained[44] = 0;
    v3 = WeakRetained;

    [v3 loadMapViewIfNeeded];
    WeakRetained = v3;
  }
}

void sub_100E4F21C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v3 = [v2 copy];

  [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E4F43C;
  v5[3] = &unk_101655FE8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100E4F2F4(uint64_t a1)
{
  [*(*(a1 + 32) + 72) chromeViewController:*(a1 + 32) didMoveFromContextStack:*(a1 + 40) toContextStack:*(a1 + 48)];
  if ([objc_opt_class() requiresUniqueContextIdentifiers])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 56);
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

          v7 = [*(a1 + 32) uniqueIdentifierForContext:{*(*(&v8 + 1) + 8 * v6), v8}];
          [*(*(a1 + 32) + 48) removeObjectForKey:v7];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

void sub_100E4F43C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      v13 = @"<nil>";
LABEL_10:

      v14 = v13;
      v15 = *(a1 + 40);
      if (!v15)
      {
        v20 = @"<nil>";
        goto LABEL_18;
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

          goto LABEL_16;
        }
      }

      v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_16:

LABEL_18:
      *buf = 138543874;
      v22 = v14;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Running deferred action '%{public}@' for %{public}@", buf, 0x20u);

      goto LABEL_19;
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

    goto LABEL_10;
  }

LABEL_19:

  v6[2](v6, *(a1 + 48));
}

void sub_100E4FB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E4FB84(uint64_t a1)
{
  if ([objc_opt_class() requiresUniqueContextIdentifiers])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          v8 = [*(a1 + 32) uniqueIdentifierForContext:{v7, v9}];
          [*(*(a1 + 32) + 48) setObject:v7 forKey:v8];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

void sub_100E4FCC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained acquireChromeDeactivationTokenForReason:@"top context does not show map view"];
    v3 = v4[44];
    v4[44] = v2;

    WeakRetained = v4;
  }
}

uint64_t sub_100E4FD30(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setChromeViewController:0];
  }

  return result;
}

void sub_100E50398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_100E503DC(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = 134349056;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Transitioning animation complete; will queue up pending context change now", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 _setContexts:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
}

void sub_100E504B4(uint64_t a1)
{
  v2 = [*(a1 + 32) acquireMapInsetPropagationSuspensionTokenForReason:@"chrome is transitioning between contexts"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100E50508(uint64_t a1)
{
  [*(a1 + 32) _teardownContextTransition:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) setNeedsUpdateComponent:@"mapInsets" animated:*(a1 + 56)];
  v4 = [GroupAnimation animationForAnimatedFlag:*(a1 + 56)];
  [*(a1 + 32) _updateComponentsIfNeeded:1 forceImmediateUpdate:1 forTiming:4 withAnimation:v4];
  [v4 runWithoutAnimation];
}

id sub_100E506B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_10000B11C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_33;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    v12 = @"<nil>";
    goto LABEL_10;
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

      goto LABEL_8;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
  v13 = v12;
  v14 = *(a1 + 40);
  v15 = v14;
  if (v14)
  {
    if ([v14 count])
    {
      v34 = v13;
      v35 = v6;
      v36 = a4;
      v37 = a1;
      v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v33 = v15;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v38 objects:buf count:16];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = v18;
      v20 = *v39;
      while (1)
      {
        v21 = 0;
        do
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * v21);
          if (v22)
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_22;
            }

            v25 = [v22 performSelector:"accessibilityIdentifier"];
            v26 = v25;
            if (v25 && ![v25 isEqualToString:v24])
            {
              v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];
            }

            else
            {

LABEL_22:
              v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
            }

            goto LABEL_25;
          }

          v27 = @"<nil>";
LABEL_25:

          [v16 addObject:v27];
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v28 = [v17 countByEnumeratingWithState:&v38 objects:buf count:16];
        v19 = v28;
        if (!v28)
        {
LABEL_29:

          v29 = [v17 componentsJoinedByString:{@", "}];
          v30 = [NSString stringWithFormat:@"<%p> [%@]", v17, v29];

          a4 = v36;
          a1 = v37;
          v13 = v34;
          v6 = v35;
          v15 = v33;
          goto LABEL_32;
        }
      }
    }

    v30 = [NSString stringWithFormat:@"<%p> (empty)", v15];
  }

  else
  {
    v30 = @"<nil>";
  }

LABEL_32:

  *buf = 138543618;
  v43 = v13;
  v44 = 2112;
  v45 = v30;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Set: %@", buf, 0x16u);

LABEL_33:
  *a4 = *(a1 + 48);
  v31 = *(a1 + 40);

  return v31;
}

uint64_t sub_100E50AB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100E50C6C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (![v6 count] || (objc_msgSend(v6, "containsObject:", *(a1 + 32)) & 1) == 0)
  {
    v14 = v6;
    goto LABEL_23;
  }

  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      v13 = @"<nil>";
LABEL_13:

      v15 = v13;
      v16 = *(a1 + 32);
      if (!v16)
      {
        v21 = @"<nil>";
        goto LABEL_21;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (objc_opt_respondsToSelector())
      {
        v19 = [v16 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (v19 && ![v19 isEqualToString:v18])
        {
          v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

          goto LABEL_19;
        }
      }

      v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_19:

LABEL_21:
      *buf = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Remove: %@", buf, 0x16u);

      goto LABEL_22;
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

    goto LABEL_13;
  }

LABEL_22:

  *a4 = *(a1 + 48);
  v14 = [v6 mutableCopy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100E50FB8;
  v23[3] = &unk_101655F70;
  v24 = *(a1 + 32);
  [v14 removeObjectAtIndex:{objc_msgSend(v14, "indexOfObjectWithOptions:passingTest:", 2, v23)}];

LABEL_23:

  return v14;
}

uint64_t sub_100E50FA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_100E50FB8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 32);
  if (v4 == a2)
  {
    *a4 = 1;
  }

  return v4 == a2;
}

id sub_100E51168(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 indexOfObject:*(a1 + 32)];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    goto LABEL_22;
  }

  v9 = v7;
  v10 = sub_10000B11C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      v16 = @"<nil>";
LABEL_12:

      v17 = v16;
      v18 = *(a1 + 32);
      if (!v18)
      {
        v23 = @"<nil>";
        goto LABEL_20;
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

          goto LABEL_18;
        }
      }

      v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_18:

LABEL_20:
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Pop To: %@", buf, 0x16u);

      goto LABEL_21;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_10;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_10:

    goto LABEL_12;
  }

LABEL_21:

  *a4 = *(a1 + 48);
  v8 = [v6 _maps_subarrayToIndex:v9];
LABEL_22:
  v24 = v8;

  return v24;
}

uint64_t sub_100E51434(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100E51554(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    v9 = v6;
    goto LABEL_46;
  }

  *a4 = *(a1 + 48);
  v9 = [v6 mutableCopy];
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 32) supportsDuplicationInStack];
  }

  else
  {
    v10 = 1;
  }

  if (![v9 containsObject:*(a1 + 32)] || (v10 & 1) != 0)
  {
    v11 = sub_10000B11C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    v18 = *(a1 + 40);
    if (!v18)
    {
      v23 = @"<nil>";
LABEL_25:

      v24 = v23;
      v25 = *(a1 + 32);
      if (!v25)
      {
        v30 = @"<nil>";
        goto LABEL_33;
      }

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      if (objc_opt_respondsToSelector())
      {
        v28 = [v25 performSelector:"accessibilityIdentifier"];
        v29 = v28;
        if (v28 && ![v28 isEqualToString:v27])
        {
          v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

          goto LABEL_31;
        }
      }

      v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_31:

LABEL_33:
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v30;
      v31 = "[%{public}@] Push: %@";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v31, buf, 0x16u);

      goto LABEL_45;
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

        goto LABEL_23;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_23:

    goto LABEL_25;
  }

  [v9 removeObject:*(a1 + 32)];
  v11 = sub_10000B11C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    if (!v12)
    {
      v17 = @"<nil>";
LABEL_35:

      v24 = v17;
      v32 = *(a1 + 32);
      if (!v32)
      {
        v30 = @"<nil>";
        goto LABEL_43;
      }

      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      if (objc_opt_respondsToSelector())
      {
        v35 = [v32 performSelector:"accessibilityIdentifier"];
        v36 = v35;
        if (v35 && ![v35 isEqualToString:v34])
        {
          v30 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

          goto LABEL_41;
        }
      }

      v30 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_41:

LABEL_43:
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v30;
      v31 = "[%{public}@] Move To Top: %@";
      goto LABEL_44;
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

        goto LABEL_15;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_15:

    goto LABEL_35;
  }

LABEL_45:

  [v9 addObject:*(a1 + 32)];
LABEL_46:

  return v9;
}

uint64_t sub_100E51A4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100E52A1C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195F390;
  qword_10195F390 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195F390 setLocale:v3];

  v4 = qword_10195F390;

  [v4 setTimeStyle:1];
}

uint64_t sub_100E53F1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100E53F34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E54254;
  block[3] = &unk_1016562A0;
  v7 = *(a1 + 48);
  v11 = v6;
  v15 = v7;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100E54028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v14 + 1) + 8 * v12) locationOfInterest];
          if (v13)
          {
            [v7 addObject:v13];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100E541B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [*(a1 + 32) allObjects];
    (*(v1 + 16))(v1, v4, 0);
  }
}

void sub_100E54254(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 64) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  [*(a1 + 40) addObjectsFromArray:*(a1 + 48)];
  v6 = *(a1 + 56);

  dispatch_group_leave(v6);
}

void sub_100E544B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E544E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100E545B4;
  v3[3] = &unk_101661340;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained addFullyDrawnCallback:v3];

  objc_destroyWeak(&v5);
}

void sub_100E545B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishedSerialSubTest:*(a1 + 32)];
}

id sub_100E56094()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195F3A0;
  v7 = qword_10195F3A0;
  if (!qword_10195F3A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100E5644C;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100E5644C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100E5615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100E5617C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195F3B0;
  v7 = qword_10195F3B0;
  if (!qword_10195F3B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100E5625C;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100E5625C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100E56244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E5625C(uint64_t a1)
{
  sub_100E562CC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RPTTestRunner");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195F3B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100E562CC();
  }
}

void sub_100E562CC()
{
  v1[0] = 0;
  if (!qword_10195F3A8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100E563D8;
    v1[4] = &unk_1016611D0;
    v1[5] = v1;
    v2 = off_101656378;
    v3 = 0;
    qword_10195F3A8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10195F3A8)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_100E563D8()
{
  result = _sl_dlopen();
  qword_10195F3A8 = result;
  return result;
}

MapsAppTestResizeWindow *sub_100E5644C(uint64_t a1)
{
  sub_100E562CC();
  result = objc_getClass("RPTResizeTestParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195F3A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(MapsAppTestResizeWindow *)v3 initWithApplication:v4 testName:v5 options:v6, v7];
  }

  return result;
}

void sub_100E5675C(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  v3 = [v2 mapViewForPPTTest];
  v4 = [v3 window];

  v5 = objc_alloc(sub_100E56094());
  v6 = [*(a1 + 32) testName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E5687C;
  v8[3] = &unk_101661B18;
  v8[4] = *(a1 + 32);
  v7 = [v5 initWithTestName:v6 window:v4 completionHandler:v8];

  [v7 setMinimumWindowSize:{300.0, 300.0}];
  [v7 setMaximumWindowSize:{600.0, 600.0}];
  [sub_100E5617C() runTestWithParameters:v7];
}

void sub_100E573CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100E57418(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoading:0];
  [WeakRetained _handleResults:v6 error:v5];
}

void sub_100E5749C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoading:0];
  [WeakRetained _handleResults:v6 error:v5];
}

void sub_100E58794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E587B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E58890;
  block[3] = &unk_101661480;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_100E58890(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (!v3 || ([v3 identifier], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained[8], "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v6))
    {
      [WeakRetained setReloading:0];
      if (*(a1 + 40) || !*(a1 + 32))
      {
        v7 = sub_100022C48();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get latest SoC for vehicle.", v9, 2u);
        }

        v8 = +[MKMapService sharedService];
        [v8 captureUserAction:6094 onTarget:0 eventValue:0];
      }

      else
      {
        [WeakRetained setVehicle:?];
      }
    }
  }
}

void sub_100E5C974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained updateRemainingTime:*(a1 + 40)])
  {
    [WeakRetained sendRouteGuidance];
  }
}

int64_t sub_100E5DC50(id a1, CarClusterUpdateManeuverInfo *a2, CarClusterUpdateManeuverInfo *a3)
{
  v4 = a3;
  v5 = [(CarClusterUpdateManeuverInfo *)a2 guidanceEvent];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 stackRanking]);
  v7 = [(CarClusterUpdateManeuverInfo *)v4 guidanceEvent];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 stackRanking]);
  v9 = [v6 compare:v8];

  return v9;
}

BOOL sub_100E5FF20(id a1, GEOComposedGuidanceEvent *a2, NSDictionary *a3)
{
  v3 = [(GEOComposedGuidanceEvent *)a2 lanes];
  v4 = [v3 count] != 0;

  return v4;
}

double sub_100E60BC4(uint64_t a1, void *a2)
{
  if ([a2 row] == (*(a1 + 32) - 1))
  {
    return _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  else
  {
    return _UICollectionViewListLayoutSectionAutomaticDimension;
  }
}

double sub_100E60FB0(uint64_t a1, void *a2)
{
  if ([a2 row] == (*(a1 + 32) - 1))
  {
    return _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  else
  {
    return _UICollectionViewListLayoutSectionAutomaticDimension;
  }
}

void sub_100E61B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E61B64(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 72) sizeForFilter:a2];
  v4 = v3;
  v6 = v5;
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v3;
  v7 = [NSCollectionLayoutDimension absoluteDimension:v3];
  v8 = [NSCollectionLayoutDimension absoluteDimension:v6];
  v14 = [NSCollectionLayoutSize sizeWithWidthDimension:v7 heightDimension:v8];

  v9 = [NSCollectionLayoutItem itemWithLayoutSize:v14];
  [*(*(a1 + 32) + 72) defaultHeight];
  v10 = [NSCollectionLayoutDimension estimatedDimension:?];
  v11 = [NSCollectionLayoutDimension absoluteDimension:v4];
  v12 = [NSCollectionLayoutSize sizeWithWidthDimension:v11 heightDimension:v10];
  v13 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v12 subitem:v9 count:1];
  [*(a1 + 40) addObject:v13];
}

void sub_100E6210C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplicationFinder.m");
    v4 = [[NSString alloc] initWithFormat:@"_MXExtensionManager gave error: %@", *(a1 + 32)];
    *buf = 136315394;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
  }

  *(*(a1 + 40) + 8) = 0;
}

void sub_100E623D4(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v26 = objc_opt_new();
  [_MXExtensionManager _maps_updateRideBookingExtensions:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = a1;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 _containingAppIdentifer];
        if (v8 && (v9 = v8, [v7 extensionPointIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
        {
          v11 = [[RideBookingApplication alloc] initWithExtension:v7];
          v12 = [(RideBookingApplication *)v11 identifier];
          if (v12)
          {
            v13 = v12;
            v14 = [(RideBookingApplication *)v11 identifier];
            v15 = [v14 length];

            if (v15)
            {
              [*(*(v25 + 32) + 48) registerAppTracker:?];
              [v26 addObject:v11];
              goto LABEL_16;
            }
          }

          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplicationFinder.m");
            v19 = [[NSString alloc] initWithFormat:@"Application Identifier is nil for Application %@. Skipping.", v11];
            *buf = 136315394;
            v32 = v18;
            v33 = 2112;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
          }
        }

        else
        {
          v11 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_INFO))
          {
            goto LABEL_16;
          }

          v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplicationFinder.m");
          v17 = [[NSString alloc] initWithFormat:@"Containing app identifier for extension %@ is nil. Skipping.", v7];
          *buf = 136315394;
          v32 = v16;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v4);
  }

  v20 = [v26 copy];
  v21 = *(v25 + 32);
  v22 = *(v21 + 32);
  *(v21 + 32) = v20;

  v23 = [*(v25 + 32) delegate];
  v24 = [v26 copy];
  [v23 rideBookingApplicationsDidChange:v24];
}

BOOL sub_100E62734(id a1, _MXExtension *a2)
{
  v2 = a2;
  v3 = [(_MXExtension *)v2 extensionPointIdentifier];
  v4 = [v3 isEqualToString:INIntentsServiceExtensionPointName];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = +[_MXExtensionManager _maps_ridesharingRequiredIntentClassesForNonUIHandling];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![(_MXExtension *)v2 canSupportIntentClass:*(*(&v11 + 1) + 8 * i)])
          {
            LOBYTE(v4) = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v4) = 1;
LABEL_12:
  }

  return v4;
}

void sub_100E62F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose((v68 - 248), 8);
  _Block_object_dispose((v68 - 200), 8);
  _Block_object_dispose((v68 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100E62FA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100E62FBC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100E6301C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100E6307C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100E630DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100E634EC;
  v21 = &unk_101656690;
  v22 = 2;
  v4 = [NSPredicate predicateWithBlock:&v18];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100E634EC;
  v21 = &unk_101656690;
  v22 = 3;
  v8 = v3;
  v9 = [NSPredicate predicateWithBlock:&v18];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100E634EC;
  v21 = &unk_101656690;
  v22 = 5;
  v13 = v8;
  v14 = [NSPredicate predicateWithBlock:&v18];
  v15 = [v13 filteredArrayUsingPredicate:v14];

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100E632D0(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E633F8;
  v9[3] = &unk_101656620;
  v17 = *(a1 + 128);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 64);
  v8 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v8;
  v13 = *(a1 + 72);
  [v2 getRapSnapshotImageDataWithCompletion:v9];
}

void sub_100E633F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 128);
  v4 = a2;
  v5 = [RAPAppState alloc];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 80) + 8) + 40);
  v9 = *(*(*(a1 + 88) + 8) + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(*(a1 + 96) + 8) + 40);
  if (v3 == 1)
  {
    v13 = [(RAPAppState *)v5 initWithMapView:v6 traits:v7 searchHistory:v8 directionHistory:v9 place:v10 searchDataSource:v11 directionsDataSource:*(a1 + 64) currentlyConnectedAuxiliaryControls:v12 homeShortuts:*(*(*(a1 + 104) + 8) + 40) workShorcuts:*(*(*(a1 + 112) + 8) + 40) schoolShorcuts:*(*(*(a1 + 120) + 8) + 40)];
  }

  else
  {
    v13 = [(RAPAppState *)v5 initWithMapView:v6 traits:v7 searchHistory:v8 directionHistory:v9 place:v10 searchDataSource:v11 directionsDataSource:*(a1 + 64) currentlyConnectedAuxiliaryControls:v12];
  }

  v14 = v13;
  [(RAPMapState *)v13 setMapSnapshotImageData:v4];

  (*(*(a1 + 72) + 16))();
}

id sub_100E634EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32) && (objc_msgSend(v3, "isSetupPlaceholder") & 1) == 0)
  {
    v4 = [v3 isBackedPlaceholder];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100E6368C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!a2 || a3)
  {
    v5 = *(v3 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0);
  }

  else
  {
    v7 = [a2 image];
    v4 = UIImageJPEGRepresentation(v7, 0.400000006);
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_100E638C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100E63F5C(id a1, UIAlertAction *a2)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"bridge:tab=SETTINGS&root=GENERAL_LINK&path=USAGE_LINK"];
  [v3 _maps_openURL:v2 options:&__NSDictionary0__struct completionHandler:0];
}

void sub_100E64AF0(id a1, UIAlertAction *a2)
{
  v3 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v2 = +[UIApplication sharedApplication];
  [v2 _maps_openURL:v3 options:0 completionHandler:0];
}

void sub_100E66C14(id a1, UIAlertAction *a2)
{
  v3 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v2 = +[UIApplication sharedApplication];
  [v2 _maps_openURL:v3 options:0 completionHandler:0];
}

void sub_100E66EF8(id a1)
{
  v3[0] = &off_1016EA070;
  v3[1] = &off_1016EA088;
  v4[0] = @"navigationRouteGuidanceDisplayComponentID";
  v4[1] = @"index";
  v3[2] = &off_1016EA0A0;
  v3[3] = &off_1016EA0B8;
  v4[2] = @"laneInfoList";
  v4[3] = @"instructionText";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_10195F3C0;
  qword_10195F3C0 = v1;
}

id sub_100E6791C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:objc_msgSend(*(a1 + 32) layoutEnvironment:{"collectionViewListLayoutAppearanceStyle"), v5}];
  v7 = _UICollectionViewListLayoutSectionAutomaticDimension;
  [v6 setEstimatedRowHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  v8 = v7;
  if (!a2)
  {
    v8 = v7;
    if ([*(a1 + 32) shouldCollapseFirstCollectionViewSectionHeader])
    {
      v9 = [*(a1 + 32) dataSource];
      v10 = [NSIndexPath indexPathForItem:0 inSection:0];
      v11 = [v9 sectionAtIndexPath:v10];

      v12 = [v11 title];
      v13 = [v12 length];

      if (v13)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  [v6 setSectionHeaderHeight:v8];
  [v6 setSectionFooterHeight:v7];
  [v6 setSeparatorStyle:{objc_msgSend(*(a1 + 32), "collectionViewConfigurationSeparatorStyle")}];
  v14 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v6 layoutEnvironment:v5];
  [*(a1 + 32) collectionViewListSectionContentInsetsForSection:a2];
  [v14 setContentInsets:?];
  v15 = [*(a1 + 32) collectionViewDecorationItems];
  if (v15)
  {
    [*(a1 + 32) collectionViewDecorationItemContentInsetsForSection:a2];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v15 firstObject];
    [v24 setContentInsets:{v17, v19, v21, v23}];

    [v14 setDecorationItems:v15];
  }

  v25 = [*(a1 + 32) collectionViewLayoutBoundarySupplementaryItems];

  if (v25)
  {
    v26 = [*(a1 + 32) collectionViewLayoutBoundarySupplementaryItems];
    [v14 setBoundarySupplementaryItems:v26];
  }

  return v14;
}

void sub_100E69530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _searchResultFromWaypointRequest:a2 resolvedWaypoint:a3];
  [v3 addObject:v4];
}

id sub_100E6D704()
{
  if (qword_10195F3D0 != -1)
  {
    dispatch_once(&qword_10195F3D0, &stru_1016567A0);
  }

  v1 = qword_10195F3C8;

  return v1;
}

void sub_100E6D758(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionRouteDistanceMonitor");
  v2 = qword_10195F3C8;
  qword_10195F3C8 = v1;
}

BOOL sub_100E6F4E0(id a1, UIButton *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(UIButton *)v4 isEnabled])
  {
    v5 = [(UIButton *)v4 _maps_isVisible];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100E6F5B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 cancels])
  {
    v7 = [*(a1 + 32) resultBlock];
    v7[2](v7, *(a1 + 32), 1, a3);

    *a4 = 1;
  }
}

void sub_100E71420(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsPowerSourceController");
  v2 = qword_10195F3E8;
  qword_10195F3E8 = v1;
}

void sub_100E71AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E71AF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateChargingState];
}

void sub_100E71B88(id a1)
{
  v1 = objc_alloc_init(MapsPowerSourceController);
  v2 = qword_10195F3D8;
  qword_10195F3D8 = v1;
}

void sub_100E74318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100E74344()
{
  if (qword_10195F400 != -1)
  {
    dispatch_once(&qword_10195F400, &stru_101656A20);
  }

  v1 = qword_10195F3F8;

  return v1;
}

void sub_100E74398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = sub_100E74344();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      [WeakRetained updateForClusteredLegSelectedRideIndexChange];
      [WeakRetained _reloadListViewForRouteChangeIfNotAnimating];
      v5[2](v5);
      goto LABEL_10;
    }

    v8 = WeakRetained;
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

    *buf = 138543362;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Will update for latest clustered ride selections and reload list view", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
}

void sub_100E74548(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitStepsList");
  v2 = qword_10195F3F8;
  qword_10195F3F8 = v1;
}

void sub_100E74D80(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = *(a1 + 32);
  if (v2[40] == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E74F08;
    block[3] = &unk_101661B18;
    block[4] = v2;
    dispatch_async(&_dispatch_main_q, block);
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = +[MKMapService sharedService];
    v6 = *(a1 + 40);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [v6 expanded];

    if (v8)
    {
      v9 = 3017;
    }

    else
    {
      v9 = 3016;
    }

    if (v8)
    {
      v10 = 3019;
    }

    else
    {
      v10 = 3018;
    }

    if (isKindOfClass)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = [*(a1 + 32) delegate];
    v13 = [v12 currentUITargetForAnalytics];
    v14 = [*(a1 + 32) displayedItemIndexForAnalytics];
    [v5 captureUserAction:v11 onTarget:v13 eventValue:0 transitStep:v14];
  }
}

void sub_100E7521C(id *a1)
{
  v2 = [a1[4] collectionView];
  v3 = [v2 numberOfItemsInSection:{objc_msgSend(a1[5], "section")}];

  [a1[6] setExpanded:{objc_msgSend(a1[6], "expanded") ^ 1}];
  v4 = a1[4];
  v5 = [v4 collectionView];
  v6 = [v4 collectionView:v5 numberOfItemsInSection:{objc_msgSend(a1[5], "section")}];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [a1[4] collectionView];
  v8 = [v7 indexPathsForVisibleItems];

  v9 = [v8 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        v14 = [v13 section];
        if (v14 == [a1[5] section])
        {
          v15 = [a1[4] collectionView];
          v16 = [v15 cellForItemAtIndexPath:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 stepView];
            [v17 _updateForParentExpansionOrCollapse];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v10);
  }

  v18 = [a1[7] stepView];
  [v18 updateExpandCollapseStyling];

  v19 = [a1[6] expandedItems];
  v20 = [v19 count];

  if (v20 != fabs((v6 - v3)))
  {
    v49 = sub_10006D178();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v58 = "[TransitDirectionsStepsListDataSource _transitDirectionsCell:wantsToExpandOrCollapseItem:inCollectionView:]_block_invoke";
      v59 = 2080;
      v60 = "TransitDirectionsStepsListDataSource.m";
      v61 = 1024;
      *v62 = 1847;
      *&v62[4] = 2080;
      *&v62[6] = "numAffectedCells == (NSUInteger)fabs(newCount - oldCount)";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v50 = sub_10006D178();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v58 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v21 = v6;
  v22 = v3;
  v23 = [[NSMutableArray alloc] initWithCapacity:v20];
  v24 = [a1[4] dataProvider];
  v25 = [v24 indexPathForItem:a1[6]];

  v26 = [a1[4] _flatIndexFromIndexPath:v25];

  v52 = v26;
  v27 = [v26 row];
  v28 = [a1[6] postTertiaryItems];
  v29 = [v28 count] + v27 + 1;

  if (v20 >= 1)
  {
    v30 = v29;
    do
    {
      v31 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v30, [a1[5] section]);
      [v23 addObject:v31];

      ++v30;
    }

    while (v30 < &v29[v20]);
  }

  v32 = sub_100E74344();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
  if (v21 >= v22)
  {
    if (!v33)
    {
LABEL_38:

      v47 = [a1[4] collectionView];
      [v47 insertItemsAtIndexPaths:v23];
      goto LABEL_39;
    }

    v40 = a1[4];
    if (!v40)
    {
      v45 = @"<nil>";
      goto LABEL_37;
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

        goto LABEL_32;
      }
    }

    v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_32:

LABEL_37:
    v48 = [v23 count];
    *buf = 138544130;
    v58 = v45;
    v59 = 2048;
    v60 = v48;
    v61 = 2048;
    *v62 = v20;
    *&v62[8] = 2048;
    *&v62[10] = v29;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Will insert %lu cells (expected %lu) at index %lu", buf, 0x2Au);

    goto LABEL_38;
  }

  if (v33)
  {
    v34 = a1[4];
    if (!v34)
    {
      v39 = @"<nil>";
      goto LABEL_34;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_24;
      }
    }

    v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_24:

LABEL_34:
    v46 = [v23 count];
    *buf = 138544130;
    v58 = v39;
    v59 = 2048;
    v60 = v46;
    v61 = 2048;
    *v62 = v20;
    *&v62[8] = 2048;
    *&v62[10] = v29;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Will hide %lu cells (expected %lu) from index %lu", buf, 0x2Au);
  }

  v47 = [a1[4] collectionView];
  [v47 deleteItemsAtIndexPaths:v23];
LABEL_39:
}

void sub_100E75904(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = *(a1 + 32);
  if (v2[40] == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E75A8C;
    block[3] = &unk_101661B18;
    block[4] = v2;
    dispatch_async(&_dispatch_main_q, block);
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = +[MKMapService sharedService];
    v6 = *(a1 + 40);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [v6 expanded];

    if (v8)
    {
      v9 = 3017;
    }

    else
    {
      v9 = 3016;
    }

    if (v8)
    {
      v10 = 3019;
    }

    else
    {
      v10 = 3018;
    }

    if (isKindOfClass)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = [*(a1 + 32) delegate];
    v13 = [v12 currentUITargetForAnalytics];
    v14 = [*(a1 + 32) displayedItemIndexForAnalytics];
    [v5 captureUserAction:v11 onTarget:v13 eventValue:0 transitStep:v14];
  }
}

void sub_100E75D94(id *a1)
{
  v2 = [a1[4] tableView];
  v3 = [v2 numberOfRowsInSection:{objc_msgSend(a1[5], "section")}];

  [a1[6] setExpanded:{objc_msgSend(a1[6], "expanded") ^ 1}];
  v4 = a1[4];
  v5 = [v4 tableView];
  v6 = [v4 tableView:v5 numberOfRowsInSection:{objc_msgSend(a1[5], "section")}];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [a1[4] tableView];
  v8 = [v7 indexPathsForVisibleRows];

  v9 = [v8 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        v14 = [v13 section];
        if (v14 == [a1[5] section])
        {
          v15 = [a1[4] tableView];
          v16 = [v15 cellForRowAtIndexPath:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 stepView];
            [v17 _updateForParentExpansionOrCollapse];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v10);
  }

  v18 = [a1[7] stepView];
  [v18 updateExpandCollapseStyling];

  v19 = [a1[6] expandedItems];
  v20 = [v19 count];

  if (v20 != fabs((v6 - v3)))
  {
    v49 = sub_10006D178();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v58 = "[TransitDirectionsStepsListDataSource _transitDirectionsCell:wantsToExpandOrCollapseItem:inTableView:]_block_invoke";
      v59 = 2080;
      v60 = "TransitDirectionsStepsListDataSource.m";
      v61 = 1024;
      *v62 = 1773;
      *&v62[4] = 2080;
      *&v62[6] = "numAffectedCells == (NSUInteger)fabs(newCount - oldCount)";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v50 = sub_10006D178();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v58 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v21 = v6;
  v22 = v3;
  v23 = [[NSMutableArray alloc] initWithCapacity:v20];
  v24 = [a1[4] dataProvider];
  v25 = [v24 indexPathForItem:a1[6]];

  v26 = [a1[4] _flatIndexFromIndexPath:v25];

  v52 = v26;
  v27 = [v26 row];
  v28 = [a1[6] postTertiaryItems];
  v29 = [v28 count] + v27 + 1;

  if (v20 >= 1)
  {
    v30 = v29;
    do
    {
      v31 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v30, [a1[5] section]);
      [v23 addObject:v31];

      ++v30;
    }

    while (v30 < &v29[v20]);
  }

  v32 = sub_100E74344();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
  if (v21 >= v22)
  {
    if (!v33)
    {
LABEL_38:

      v47 = [a1[4] tableView];
      [v47 insertRowsAtIndexPaths:v23 withRowAnimation:0];
      goto LABEL_39;
    }

    v40 = a1[4];
    if (!v40)
    {
      v45 = @"<nil>";
      goto LABEL_37;
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

        goto LABEL_32;
      }
    }

    v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_32:

LABEL_37:
    v48 = [v23 count];
    *buf = 138544130;
    v58 = v45;
    v59 = 2048;
    v60 = v48;
    v61 = 2048;
    *v62 = v20;
    *&v62[8] = 2048;
    *&v62[10] = v29;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Will insert %lu cells (expected %lu) at index %lu", buf, 0x2Au);

    goto LABEL_38;
  }

  if (v33)
  {
    v34 = a1[4];
    if (!v34)
    {
      v39 = @"<nil>";
      goto LABEL_34;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_24;
      }
    }

    v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_24:

LABEL_34:
    v46 = [v23 count];
    *buf = 138544130;
    v58 = v39;
    v59 = 2048;
    v60 = v46;
    v61 = 2048;
    *v62 = v20;
    *&v62[8] = 2048;
    *&v62[10] = v29;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Will hide %lu cells (expected %lu) from index %lu", buf, 0x2Au);
  }

  v47 = [a1[4] tableView];
  [v47 deleteRowsAtIndexPaths:v23 withRowAnimation:0];
LABEL_39:
}

void sub_100E76484(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = *(a1 + 32);
  if (v2[40] == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E7660C;
    block[3] = &unk_101661B18;
    block[4] = v2;
    dispatch_async(&_dispatch_main_q, block);
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = +[MKMapService sharedService];
    v6 = *(a1 + 40);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [v6 expanded];

    if (v8)
    {
      v9 = 3017;
    }

    else
    {
      v9 = 3016;
    }

    if (v8)
    {
      v10 = 3019;
    }

    else
    {
      v10 = 3018;
    }

    if (isKindOfClass)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = [*(a1 + 32) delegate];
    v13 = [v12 currentUITargetForAnalytics];
    v14 = [*(a1 + 32) displayedItemIndexForAnalytics];
    [v5 captureUserAction:v11 onTarget:v13 eventValue:0 transitStep:v14];
  }
}

void sub_100E78870(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell])
  {
    v5 = *(a1 + 32);
    v6 = v10;
    v7 = [v5 objectAtIndexedSubscript:a3];
    v8 = [v6 stepView];
    v9 = [v8 transitListItem];

    [v6 setDisplayOptions:{objc_msgSend(*(a1 + 40), "_stepViewDisplayOptionsForSection:", objc_msgSend(v7, "section"))}];
    [v6 setNavigationState:{objc_msgSend(*(a1 + 40), "_cellNavStateForItem:atIndexPath:", v9, v7)}];
  }
}

void sub_100E78968(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell])
  {
    v5 = *(a1 + 32);
    v6 = v10;
    v7 = [v5 objectAtIndexedSubscript:a3];
    v8 = [v6 stepView];
    v9 = [v8 transitListItem];

    [v6 setDisplayOptions:{objc_msgSend(*(a1 + 40), "_stepViewDisplayOptionsForSection:", objc_msgSend(v7, "section"))}];
    [v6 setNavigationState:{objc_msgSend(*(a1 + 40), "_cellNavStateForItem:atIndexPath:", v9, v7)}];
  }
}

void sub_100E78A60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 listView];
  v7 = [v5 indexPathForStepView:v4];

  v6 = [v4 transitListItem];
  [v4 setDisplayOptions:{objc_msgSend(*(a1 + 32), "_stepViewDisplayOptionsForSection:", objc_msgSend(v7, "section"))}];
  [v4 setNavigationState:{objc_msgSend(*(a1 + 32), "_cellNavStateForItem:atIndexPath:", v6, v7)}];
}

void sub_100E78D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E78D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadListViewForRouteChangeIfNotAnimating];

  v6[2]();
}

double sub_100E79B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tableView];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 tableView];
    v7 = [v6 cellForRowAtIndexPath:v3];
    [v7 frame];
    x = v8;
  }

  else
  {
    v10 = [v5 collectionView];

    v11 = *(a1 + 32);
    if (v10)
    {
      v12 = [v11 collectionView];
      v13 = [v12 collectionViewLayout];
      v14 = [v13 layoutAttributesForItemAtIndexPath:v3];

      [v14 frame];
      x = v15;
    }

    else
    {
      v16 = [v11 listView];

      if (v16)
      {
        v17 = [*(a1 + 32) listView];
        v18 = [v17 stepViewForIndexPath:v3];

        [v18 frame];
        x = v19;
      }

      else
      {
        x = CGRectZero.origin.x;
      }
    }
  }

  return x;
}

id sub_100E7BB34(uint64_t a1)
{
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateDetails" object:0 userInfo:0];
  [*(a1 + 32) _refreshItemInstructionStrings];
  [*(a1 + 32) _reloadListViewForRouteChangeIfNotAnimating];

  return [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateDetails" object:0 userInfo:0];
}

void sub_100E7BD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E7BD24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateListForClusteredRideOptionChangeInClusteredSegment:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100E7BDF8(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) dataProvider];
  v5 = [v4 items];
  v6 = [v5 count];

  if (v6 > a2)
  {
    v7 = [*(a1 + 32) dataProvider];
    v8 = [v7 items];
    v9 = [v8 objectAtIndexedSubscript:a2];

    if ([v9 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
    {
      [v9 setExpanded:1];
    }
  }
}

id sub_100E7DBA0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 adaptiveShieldSize])
    {
      v5 = [v4 sizedArtworkForStyle:0];
      [*(a1 + 32) setObject:v4 forKey:v5];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100E7E530(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell])
  {
    v5 = *(a1 + 32);
    v6 = v11;
    v7 = [v5 objectAtIndexedSubscript:a3];
    v8 = [*(a1 + 40) _indexPathFromFlatIndexPath:v7];
    v9 = [*(a1 + 40) dataProvider];
    v10 = [v9 itemAtIndexPath:v8];

    [*(a1 + 40) _configureTransitDirectionsCollectionViewCell:v6 withItem:v10 atIndexPath:v7];
  }
}

void sub_100E7F78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E7F7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollToFirstCell];
}

void sub_100E7FDE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (!v7 || v8)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [*(a1 + 32) thumbnailImage];
      (*(v16 + 16))(v16, v17, v9);
    }
  }

  else
  {
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = +[UIScreen mainScreen];
    v14 = [v13 traitCollection];
    v15 = [v14 layoutDirection] == 1;

    objc_initWeak(&location, *(a1 + 32));
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100E7FF84;
    v18[3] = &unk_101656A48;
    objc_copyWeak(&v20, &location);
    v19 = *(a1 + 40);
    [v7 maps_blurredImageScale:v15 isRTL:v18 completion:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_100E7FF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E7FF84(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E80050;
  block[3] = &unk_10165DEA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_100E80050(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setCurrentImage:*(a1 + 32)];
    [v5 setHasFinishedLoading:1];
    WeakRetained = v5;
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v5 thumbnailImage];
      (*(v3 + 16))(v3, v4, 0);

      WeakRetained = v5;
    }
  }
}

void sub_100E807B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E80EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100E80EF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100E80F08(uint64_t a1)
{
  v2 = [SearchFieldItem searchFieldItemWithObject:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100E80F5C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    v4 = [v3 isAuthorizedForPreciseLocation];

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 routeSearchController:*(a1 + 32) didSelectItem:*(a1 + 40)];
    }
  }
}

uint64_t sub_100E81CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = v3;
  v5 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && ([v8 historyEntry], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "conformsToProtocol:", v5), v9, v10))
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {

LABEL_19:
    v19 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v12 = v6;
  v13 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
  objc_opt_class();
  v6 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15 && ([v15 historyEntry], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToProtocol:", v13), v16, v17))
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  v20 = v6;
  v21 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v22 = v20;
  v23 = (objc_opt_isKindOfClass() & 1) != 0 ? v22 : 0;
  v24 = v23;

  if (v24 && ([v24 historyEntry], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "conformsToProtocol:", v21), v25, v26))
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v27 historyEntry];
  v29 = [v28 endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_29:
    v6 = [*(a1 + 32) delegate];
    v19 = [v6 routeSearchController:*(a1 + 32) waypointsIncludeObject:v3] ^ 1;
    goto LABEL_30;
  }

  v19 = 0;
LABEL_31:

  return v19;
}

id sub_100E82264()
{
  if (qword_10195F410 != -1)
  {
    dispatch_once(&qword_10195F410, &stru_101656BA0);
  }

  v1 = qword_10195F408;

  return v1;
}

void sub_100E822B8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100E82264();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to send RAP notificaiton was shown log event with error %@", &v4, 0xCu);
    }
  }
}

void sub_100E82368(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPSubmissionStatusDownloader");
  v2 = qword_10195F408;
  qword_10195F408 = v1;
}

void sub_100E825AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E825C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_100E82264();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Finished making Sundew call", buf, 2u);
    }

    if (v6)
    {
      v9 = sub_100E82264();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed Sundew call with error %@", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      if (v10)
      {
        if (MapsFeature_IsEnabled_RAPCommunityID())
        {
          v11 = v10[2];
          v12 = [v5 rapInfos];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100E828CC;
          v21[3] = &unk_101656B38;
          v22 = 0;
          v23 = v10;
          v24 = v5;
          v25 = *(a1 + 32);
          [v11 updateRAPsStatusWithRapInfos:v12 completion:v21];

          v13 = v22;
        }

        else
        {
          v14 = sub_100E82264();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v5 reviewedSubmissionIdentifiers];
            *buf = 138412290;
            v27 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Array of RAP submissions that have been Reviewed: %@", buf, 0xCu);
          }

          v16 = v10[2];
          v17 = [v5 reviewedSubmissionIdentifiers];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100E829B0;
          v18[3] = &unk_10165E240;
          v19 = 0;
          v20 = *(a1 + 32);
          [v16 setIdentifiersAsReviewed:v17 completion:v18];

          v13 = v19;
        }
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

uint64_t sub_100E828CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100E82264();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to persist identifiers with error %@", &v8, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) rapInfos];
  [v5 _checkForStatusChangeNotificationsNeededForRapInfos:v6];

  return (*(*(a1 + 56) + 16))();
}

uint64_t sub_100E829B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100E82264();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to persist identifiers with error %@", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100E82B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E82BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_100E82264();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Finished making the sync call", buf, 2u);
    }

    if (v6)
    {
      v9 = sub_100E82264();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed sync call with error %@", buf, 0xCu);
      }

LABEL_7:

      (*(*(a1 + 32) + 16))();
      goto LABEL_12;
    }

    v10 = [v5 count];
    v9 = sub_100E82264();
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (!v10)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "get empty result, finish fetching", buf, 2u);
      }

      goto LABEL_7;
    }

    if (v11)
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Calling Sundew for RAP submission identifiers %@", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E82E10;
    v12[3] = &unk_101661090;
    v14 = *(a1 + 32);
    v13 = v5;
    [WeakRetained _updateSubmissionStatusWithIdentifier:v13 completion:v12];
  }

LABEL_12:
}

void sub_100E82FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E82FF4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5 || ![v7 count])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      [WeakRetained _updateAllSubmissionStatusWithOffset:objc_msgSend(v7 batchSize:"count") + *(a1 + 48) completion:{*(a1 + 56), *(a1 + 32)}];
    }
  }
}

void sub_100E831EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100E82264();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Update all submission status completed", &v6, 2u);
  }

  if (v3)
  {
    v5 = sub_100E82264();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to update all submission statuses with error %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100E83BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = [*(a1 + 32) trayContaineeViewController];
  [WeakRetained presentController:v2 animated:0];
}

void sub_100E841C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E84200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained actionDelegate];
    [v2 parkedCarHeaderButtonsSectionControllerRequestsEditLocation:v3];

    WeakRetained = v3;
  }
}

void sub_100E848B0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionLocationHorizontalAccuracyMonitor");
  v2 = qword_10195F418;
  qword_10195F418 = v1;
}

uint64_t sub_100E86464(uint64_t a1)
{
  v2 = +[MapsRadarComponent mapsShareETACarPlayComponent];
  [*(a1 + 32) setComponent:v2];

  [*(a1 + 32) setCollectFullLogArchive:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v12 + 1) + 8 * v7) senderInfo];
        v10 = [v9 fromIdentifier];
        [v8 addCollaborationContactHandle:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return (*(*(a1 + 48) + 16))();
}

id sub_100E86D00()
{
  if (qword_10195F430 != -1)
  {
    dispatch_once(&qword_10195F430, &stru_101656CD8);
  }

  v1 = qword_10195F428;

  return v1;
}

void sub_100E86D54(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarSharedTripsContext");
  v2 = qword_10195F428;
  qword_10195F428 = v1;
}

void sub_100E873E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = CarSharedTripsContext;
  objc_msgSendSuper2(&v4, "resignCurrent:", v2);
  v3 = [*(a1 + 32) sharedTripsAnnotationsController];
  [v3 setChromeViewController:0];
}

void sub_100E87580(uint64_t a1)
{
  v2 = *(a1 + 48);
  v13.receiver = *(a1 + 32);
  v13.super_class = CarSharedTripsContext;
  objc_msgSendSuper2(&v13, "becomeCurrent:", v2);
  v3 = [*(a1 + 32) sharedTripsAnnotationsController];
  [v3 setChromeViewController:*(a1 + 40)];

  v4 = [*(a1 + 32) selectedTrip];
  if (v4)
  {
    v5 = v4;
    v6 = [*(*(a1 + 32) + 88) sharedTrip];
    v7 = [*(a1 + 32) selectedTrip];

    if (v6 != v7)
    {
      v8 = [CarSharedTripDetailCardViewController alloc];
      v9 = [*(a1 + 32) selectedTrip];
      v10 = [(CarSharedTripDetailCardViewController *)v8 initWithSharedTrip:v9 delegate:*(a1 + 32)];
      v11 = *(a1 + 32);
      v12 = *(v11 + 88);
      *(v11 + 88) = v10;
    }
  }
}

void sub_100E8787C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E878A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedTrip:v3];

  v4 = [WeakRetained chromeViewController];
  v5 = [WeakRetained _transportTypeStringForAnalytics];
  [v4 captureUserAction:21 eventValue:v5];
}

void sub_100E87E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100E87E88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = +[CarShareTripContactCell reuseIdentifier];
    v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v8];

    [v12 configureWithSharedTrip:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100E883E0()
{
  if (qword_10195F440 != -1)
  {
    dispatch_once(&qword_10195F440, &stru_101656D70);
  }

  v1 = qword_10195F438;

  return v1;
}

void sub_100E88434(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = +[UIApplication sharedApplication];
  [v3 _maps_openURL:v2 options:0 completionHandler:0];
}

void sub_100E884A0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsAppDelegateMenuBuilding");
  v2 = qword_10195F438;
  qword_10195F438 = v1;
}

id sub_100E8980C(id a1, MNGuidanceARInfo *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(MNGuidanceARInfo *)v3 mapsLongDescription];
  v5 = [(MNGuidanceARInfo *)v3 variableOverrides];

  v6 = [v4 stringByAppendingFormat:@"<variable overrides: %@>", v5];

  return v6;
}

void sub_100E89968(id a1, GuidanceDisplay *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(GuidanceDisplay *)v2 hideRecalculating];
  }
}

void sub_100E89A10(id a1, GuidanceDisplay *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(GuidanceDisplay *)v2 showRecalculationFailed];
  }
}

void sub_100E89B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E89B68(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 didReroute];
    }

    if (objc_opt_respondsToSelector())
    {
      [v4 hideJunctionView];
      [WeakRetained _removeRepeatableUpdateForKey:@"showJunctionViewInfo"];
    }
  }
}

void sub_100E89CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setGuidanceEnabled:*(a1 + 32) animated:1];
  }
}

void sub_100E8A02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E8A048(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [v5 setDestinationDisplayName:*(WeakRetained + 3)];
  }
}

void sub_100E8A148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateARSigns:*(a1 + 32)];
  }
}

void sub_100E8A1F8(id a1, GuidanceDisplay *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(GuidanceDisplay *)v2 hideJunctionView];
  }
}

void sub_100E8A2F4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [[NavJunctionViewInfo alloc] initWithGuidanceJunctionViewInfo:*(a1 + 32)];
    [v4 showJunctionView:v3];
  }
}

void sub_100E8A3C0(id a1, GuidanceDisplay *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(GuidanceDisplay *)v2 hideLaneGuidance];
  }
}

void sub_100E8A4BC(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v9;
  if (v3)
  {
    v5 = [v9 currentLaneGuidanceId];
    v6 = [*(a1 + 32) uniqueID];
    v7 = [v6 isEqual:v5];

    if (v7)
    {
      v8 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:*(a1 + 32)];
      if (objc_opt_respondsToSelector())
      {
        [v9 updateLaneGuidance:v8];
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_8:

        v4 = v9;
        goto LABEL_9;
      }

      v8 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:*(a1 + 32)];
      [v9 showLaneGuidance:v8];
    }

    goto LABEL_8;
  }

LABEL_9:
}

id sub_100E8B06C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

id sub_100E8B0D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

void sub_100E8B13C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 showManeuverSign:v2 maneuverStepIndex:{objc_msgSend(v3, "stepIndex")}];
}

id sub_100E8B198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

id sub_100E8B200(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

MKServerFormattedString *__cdecl sub_100E8B27C(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

MKServerFormattedString *__cdecl sub_100E8B2D4(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

MKServerFormattedString *__cdecl sub_100E8B32C(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

MKServerFormattedString *__cdecl sub_100E8B384(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

void sub_100E8BBC4(id a1)
{
  v3[0] = @"primaryOrProceedToRouteManeuver";
  v3[1] = @"secondaryManeuver";
  v3[2] = @"recalculating";
  v3[3] = @"announcementStage";
  v3[4] = @"remainingManeuverTimeAndDistance";
  v3[5] = @"remainingTotalTimeAndDistance";
  v3[6] = @"destinationDisplayName";
  v3[7] = @"showLaneGuidanceInfo";
  v3[8] = @"hideLaneGuidanceInfo";
  v3[9] = @"showJunctionViewInfo";
  v3[10] = @"hideJunctionViewInfo";
  v3[11] = @"usePersistentDisplay";
  v3[12] = @"ARSignInfos";
  v1 = [NSArray arrayWithObjects:v3 count:13];
  v2 = qword_10195F448;
  qword_10195F448 = v1;
}

void sub_100E8C924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error: Identifier refinement ticket failed: %@", &v28, 0xCu);
    }
  }

  if (![v5 count])
  {
    v8 = [[MKMapItem alloc] _initWithLabelMarker:*(a1 + 32)];
    v11 = [PlaceCardItem alloc];
    goto LABEL_9;
  }

  v8 = [v5 firstObject];
  v9 = [*(a1 + 32) waypointInfo];
  v10 = [v9 type];

  v11 = [PlaceCardItem alloc];
  v12 = v11;
  if (v10 != 2)
  {
LABEL_9:
    v14 = [(PlaceCardItem *)v11 initWithMapItem:v8];
    goto LABEL_10;
  }

  v13 = [*(a1 + 32) waypointInfo];
  v14 = [(PlaceCardItem *)v12 initWithMapItem:v8 chargeStationWaypointInfo:v13];

LABEL_10:
  v15 = [*(a1 + 40) containerViewController];
  v16 = [v15 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || ([*(a1 + 40) containerViewController], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "currentViewController"), v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v19, "placeCardItem"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[PlaceCardItem isEqual:](v14, "isEqual:", v20), v20, v19, (v21 & 1) == 0))
  {
    v22 = sub_100035E6C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v8 name];
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pushing place card for %@ (name: %@)", &v28, 0x16u);
    }

    v24 = [*(a1 + 40) placecardViewController];
    [v24 resetState];
    v25 = [*(a1 + 40) navigationTransportType];
    v26 = 0;
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        if (v25 == 5)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
          goto LABEL_25;
        }

LABEL_26:
        [v24 setIsAdditionalStop:v26];
        [v24 setExcludedContent:{objc_msgSend(*(a1 + 40), "excludedContentForMapItem:", v8)}];
        [v24 setPlaceCardItem:v14 withHistory:0];
        [*(a1 + 40) presentPlacecardViewController];

        goto LABEL_27;
      }
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_25:
          v26 = IsEnabled_Maps420;
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v26 = 1;
        goto LABEL_26;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_25;
  }

LABEL_27:
}

id sub_100E8E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *(a1 + 48);

  return [v6 trackNavigationStarted:isKindOfClass & 1 purpose:v8 originResolvedType:a2 destinationResolvedType:a3];
}

void sub_100E8E44C(void *a1, unsigned int a2)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2 >= 5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = 136446978;
        v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v11 = 1024;
        *v12 = 94;
        *&v12[4] = 2082;
        *&v12[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        *&v12[14] = 2082;
        *&v12[16] = "YES";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v9, 0x26u);
      }

      v5 = @"?";
    }

    else
    {
      v5 = off_101657218[a2];
    }

    v7 = a1[5];
    v8 = a1[6];
    v9 = 138412802;
    v10 = v5;
    v11 = 2048;
    *v12 = v7;
    *&v12[8] = 2048;
    *&v12[10] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Determined %@ for origin <%+.6f,%+.6f>", &v9, 0x20u);
  }

  *(*(a1[4] + 8) + 24) = a2;
}

void sub_100E8E5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error checking coordinate: %@", &v18, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = v5;
    v10 = [v9 shortcutsForHome];
    v11 = [v10 count];

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v14 = [v9 shortcutsForWork];
      v15 = [v14 count];

      if (v15)
      {
        v12 = 2;
      }

      else
      {
        v16 = [v9 shortcutsForAll];
        v17 = [v16 count];

        if (v17)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }
      }
    }

    (*(v8 + 16))(v8, v12);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100E8E7A4(void *a1, unsigned int a2)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2 >= 5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = 136446978;
        v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v11 = 1024;
        *v12 = 94;
        *&v12[4] = 2082;
        *&v12[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        *&v12[14] = 2082;
        *&v12[16] = "YES";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v9, 0x26u);
      }

      v5 = @"?";
    }

    else
    {
      v5 = off_101657218[a2];
    }

    v7 = a1[5];
    v8 = a1[6];
    v9 = 138412802;
    v10 = v5;
    v11 = 2048;
    *v12 = v7;
    *&v12[8] = 2048;
    *&v12[10] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Determined %@ for destination <%+.6f,%+.6f>", &v9, 0x20u);
  }

  *(*(a1[4] + 8) + 24) = a2;
}

uint64_t sub_100E8E950(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1[5] + 8) + 24);
    if (v3 >= 5)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446978;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v12 = 1024;
        *v13 = 94;
        *&v13[4] = 2082;
        *&v13[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        v14 = 2082;
        v15 = "YES";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v10, 0x26u);
      }

      v4 = @"?";
    }

    else
    {
      v4 = off_101657218[v3];
    }

    v6 = *(*(a1[6] + 8) + 24);
    if (v6 >= 5)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136446978;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v12 = 1024;
        *v13 = 94;
        *&v13[4] = 2082;
        *&v13[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        v14 = 2082;
        v15 = "YES";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v10, 0x26u);
      }

      v7 = @"?";
    }

    else
    {
      v7 = off_101657218[v6];
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    *v13 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Calling back with [%@, %@]", &v10, 0x16u);
  }

  return (*(a1[4] + 16))();
}

uint64_t sub_100E8F7E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100E8F7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(*(*(a1 + 40) + 8) + 40) || ([v3 methodSignatureForSelector:*(a1 + 48)], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(*(a1 + 40) + 8), v6 = *(v5 + 40), *(v5 + 40) = v4, v6, *(*(*(a1 + 40) + 8) + 40)))
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) addObject:v8];
    }
  }

  return _objc_release_x3();
}

void sub_100E908D0(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100E90CF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100E90D0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[18] updateButtons];
    WeakRetained = v2;
  }
}

void sub_100E90E7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100E90E98(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E90F48;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100E90F48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[18] setButtonEnabled:1];
    WeakRetained = v2;
  }
}

void sub_100E9106C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100E91088(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E91138;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100E91138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[18] setButtonEnabled:1];
    WeakRetained = v2;
  }
}

void sub_100E92F48(uint64_t a1)
{
  v2 = [*(a1 + 32) carChromeViewController];
  v3 = [v2 nudgerizer];
  [v3 setDelegate:0];

  v5 = [*(a1 + 32) chromeViewController];
  v4 = [v5 mapView];
  [v4 setScrollEnabled:*(*(a1 + 32) + 16)];
}

void sub_100E92FE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_100E93084(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 acquireMapInsetPropagationSuspensionTokenForReason:@"CarPlay panning context"];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [*(a1 + 32) chromeViewController];
  v7 = [v6 mapView];
  [*(*(a1 + 32) + 8) setMapView:v7];

  v8 = [*(a1 + 32) chromeViewController];
  [*(*(a1 + 32) + 8) setChromeViewController:v8];

  v9 = [*(a1 + 32) carChromeViewController];
  v10 = [v9 nudgerizer];
  [*(*(a1 + 32) + 8) setNudgerizer:v10];

  v11 = *(*(a1 + 32) + 8);
  v12 = [v11 nudgerizer];
  [v12 setDelegate:v11];

  v13 = [*(*(a1 + 32) + 8) mapView];
  [v13 setUserTrackingMode:0 animated:*(a1 + 40)];

  v14 = [*(a1 + 32) chromeViewController];
  v15 = [v14 mapView];
  *(*(a1 + 32) + 16) = [v15 isScrollEnabled];

  v17 = [*(a1 + 32) chromeViewController];
  v16 = [v17 mapView];
  [v16 setScrollEnabled:0];
}