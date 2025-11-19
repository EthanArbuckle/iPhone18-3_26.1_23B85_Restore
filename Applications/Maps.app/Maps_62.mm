void sub_100B72CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _routeContextBuilder];
    v5 = [v4 buildRouteContextForAnchorPoints:*(a1 + 32)];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B72F68;
    block[3] = &unk_10165DEA0;
    objc_copyWeak(&v10, (a1 + 48));
    v8 = v5;
    v9 = *(a1 + 40);
    v6 = v5;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v10);
  }
}

void sub_100B72DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100B72E8C;
    v5[3] = &unk_101661090;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v5);
    v4 = v3[2];
    v3[2] = 0;
  }
}

uint64_t sub_100B72E8C(uint64_t a1)
{
  v2 = sub_1000421A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v6 = 134349314;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Clearing route context on map view (%@)", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 32) _clearRouteContext];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100B72F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_1000421A8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = WeakRetained[4];
      v7 = 134349570;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Setting route context (%@) on map view (%@)", &v7, 0x20u);
    }

    [WeakRetained[4] _setRouteContext:*(a1 + 32)];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

NSString *__cdecl sub_100B73068(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v3 = [(GEOComposedRoute *)a2 uniqueRouteID];
  v4 = [v3 UUIDString];

  return v4;
}

void sub_100B730B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_1000421A8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = WeakRetained[4];
      v7 = 134349570;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Setting route context (%@) on map view (%@)", &v7, 0x20u);
    }

    [WeakRetained _updateRouteMarkersInContext:*(a1 + 32)];
    [WeakRetained[4] _setRouteContext:*(a1 + 32)];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

NSString *__cdecl sub_100B731C4(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v3 = [(GEOComposedRoute *)a2 uniqueRouteID];
  v4 = [v3 UUIDString];

  return v4;
}

NSString *__cdecl sub_100B73214(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v3 = [(GEOComposedRoute *)a2 uniqueRouteID];
  v4 = [v3 UUIDString];

  return v4;
}

void sub_100B73D24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100B73D48(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0 && *(a1 + 40) == 1)
    {
      v5 = WeakRetained;
      [WeakRetained _updateRouteMarkersInContext:0];
      WeakRetained = v5;
    }

    if (*(a1 + 41) == 1)
    {
      v6 = WeakRetained;
      [WeakRetained _updateWaypointCaptions];
      WeakRetained = v6;
    }
  }
}

void sub_100B74074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B74090(uint64_t a1)
{
  v2 = sub_1000421A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 134349056;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Updated route context for waypoint style attribute change", &v4, 0xCu);
  }
}

void sub_100B744FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B74524(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      [WeakRetained _updateRouteMarkersInContext:0];
      WeakRetained = v4;
    }
  }
}

void sub_100B74EC8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AxisAdjustingStackView");
  v2 = qword_10195E860;
  qword_10195E860 = v1;
}

void sub_100B76720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B76744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sub_1007990B4();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v9)
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed Sundew call when attempting to fetch with error %@", &v14, 0xCu);
      }

      v10 = 0;
      WeakRetained[209] = 0;
      v11 = *(WeakRetained + 27);
      *(WeakRetained + 27) = 0;
    }

    else
    {
      if (v9)
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched photo credit result: %@", &v14, 0xCu);
      }

      WeakRetained[209] = [v5 attributePhotos];
      v12 = [v5 attributionName];
      v13 = *(WeakRetained + 27);
      *(WeakRetained + 27) = v12;

      v11 = [WeakRetained delegate];
      [v11 photoCarouselControllerDidUpdatePhotoCredit:WeakRetained];
      v10 = 2;
    }

    *(WeakRetained + 29) = v10;
  }
}

void sub_100B76F5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100B76F80(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = WeakRetained;
      [WeakRetained _updateSelection];
      v6 = [*(a1 + 32) isSuggestedPhoto];
      v5 = v7;
      if (v6)
      {
        [*(a1 + 32) setPhotoWithMetadata:0];
        [GEOAPPortal captureUserAction:326 target:666 value:0];
        v5 = v7;
      }
    }
  }
}

void sub_100B77014(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B77190;
  v10[3] = &unk_10163B498;
  v4 = v2;
  v11 = v4;
  v12 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B772BC;
  v5[3] = &unk_10163B4C0;
  objc_copyWeak(&v9, &location);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 loadOriginalImageWithDisplayScale:v10 progressHandler:v5 completion:v3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100B77174(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100B77190(uint64_t a1, double a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v13 = a5;
  if ([*(a1 + 32) checked])
  {
    if (a2 + -1.0 < 0.0001 || *a4 == 1)
    {
      [*(a1 + 32) setIsLoading:{0, a2 + -1.0}];
    }

    v8 = [*(a1 + 40) identifier];
    v9 = [*(a1 + 32) _maps_diffableDataSourceIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      [*(a1 + 40) setLoadingProgress:1 animated:&stru_10163B470 completion:a2];
      [*(a1 + 40) setViewModel:*(a1 + 32)];
    }
  }

  else
  {
    v11 = [v13 objectForKeyedSubscript:PHImageResultRequestIDKey];
    v12 = [v11 intValue];

    [*(a1 + 32) cancelLoadImageWithRequestID:v12];
  }
}

void sub_100B772BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  --*(WeakRetained + 24);
  if (([*(a1 + 32) checked] & 1) == 0)
  {
    v13 = sub_100B77578();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "User cancelled loading the photo", &v18, 2u);
    }

    goto LABEL_13;
  }

  if (!v3)
  {
    v14 = sub_100B77578();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Fail to load the photo", &v18, 2u);
    }

    [*(a1 + 32) setChecked:0];
    v15 = [*(a1 + 40) identifier];
    v16 = [*(a1 + 32) _maps_diffableDataSourceIdentifier];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      [*(a1 + 40) setViewModel:*(a1 + 32)];
    }

LABEL_13:
    [v5 _updateSelection];
    goto LABEL_14;
  }

  [*(a1 + 32) setIsLoading:0];
  v6 = [*(a1 + 40) identifier];
  v7 = [*(a1 + 32) _maps_diffableDataSourceIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) setViewModel:*(a1 + 32)];
  }

  v9 = sub_100B77578();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) asset];
    v11 = [v10 localIdentifier];
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully loaded the photo. Updating the view model with asset identifier %@", &v18, 0xCu);
  }

  [*(a1 + 32) setPhotoWithMetadata:v3];
  v12 = [*(a1 + 32) photoWithMetadata];
  [v5 _handleAddFromSuggestionImage:v12 atIndexPath:*(a1 + 48)];

  [v5 _updateSelection];
  [v5 _refreshCollectionViewWithAnimatingDifferences:1];
  if ([*(a1 + 32) isSuggestedPhoto])
  {
    [GEOAPPortal captureUserAction:336 target:666 value:0];
  }

LABEL_14:
}

id sub_100B77578()
{
  if (qword_10195E878 != -1)
  {
    dispatch_once(&qword_10195E878, &stru_10163B530);
  }

  v1 = qword_10195E870;

  return v1;
}

void sub_100B775CC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCARPPhotoCarouselController");
  v2 = qword_10195E870;
  qword_10195E870 = v1;
}

void sub_100B77828(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B778D8;
  v4[3] = &unk_10165FED0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v3 loadThumbnailImageWithDisplayScale:v4 completion:v2];
}

void sub_100B778D8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) _maps_diffableDataSourceIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 32) setImage:v6];
  }
}

void sub_100B77D80(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  UInteger = GEOConfigGetUInteger();
  v28 = MKCoordinateRegionMakeWithDistance(*(*(a1 + 32) + 136), UInteger, UInteger);
  latitudeDelta = v28.span.latitudeDelta;
  longitudeDelta = v28.span.longitudeDelta;
  v6 = CLLocationCoordinate2DMake(*(*(a1 + 32) + 136) + v28.span.latitudeDelta, *(*(a1 + 32) + 144) - v28.span.longitudeDelta);
  v7 = CLLocationCoordinate2DMake(*(*(a1 + 32) + 136) - latitudeDelta, *(*(a1 + 32) + 144) + longitudeDelta);
  v8 = [[CLLocation alloc] initWithLatitude:v6.latitude longitude:v6.longitude];
  v9 = [[CLLocation alloc] initWithLatitude:v7.latitude longitude:v7.longitude];
  v10 = [PHAsset fetchAssetsInBoundingBoxWithTopLeftLocation:v8 bottomRightLocation:v9 options:*(a1 + 40)];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v2 addObject:*(*(&v23 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100B78044;
  v22[3] = &unk_10163B450;
  v22[4] = *(a1 + 32);
  v15 = sub_100021DB0(v2, v22);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B780E8;
  block[3] = &unk_101661090;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v20 = v15;
  v21 = v17;
  v18 = v15;
  dispatch_async(v16, block);
}

UGCARPPhotoCarouselViewModel *sub_100B78044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[UGCARPPhotoCarouselViewModel alloc] initWithImageManager:*(*(a1 + 32) + 128)];
  [(UGCARPPhotoCarouselViewModel *)v4 setAsset:v3];
  v5 = [v3 localIdentifier];

  [(UGCARPPhotoCarouselViewModel *)v4 setIdentifier:v5];
  [(UGCARPPhotoCarouselViewModel *)v4 setIsSuggestedPhoto:1];

  return v4;
}

void sub_100B780E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100B78218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B78234(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v6 count])
  {
    if (*(WeakRetained + 241) == 1)
    {
      [WeakRetained fetchPhotoCreditPreferences];
    }

    [GEOAPPortal captureUserAction:327 target:666 value:0];
    v4 = *(WeakRetained + 22);
    v5 = [v6 copy];
    [v4 addObjectsFromArray:v5];

    [WeakRetained _refreshCollectionViewWithAnimatingDifferences:1];
  }
}

void sub_100B78A78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedOtherStations];
}

id sub_100B78EB8()
{
  if (qword_10195E888 != -1)
  {
    dispatch_once(&qword_10195E888, &stru_10163B628);
  }

  v1 = qword_10195E880;

  return v1;
}

void sub_100B78F0C(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) unformattedInternationalStringValue];
  [v3 callPhoneNumber:v2 completion:0];
}

void sub_100B78F80(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavTrayViewController");
  v2 = qword_10195E880;
  qword_10195E880 = v1;
}

BOOL sub_100B79D08(id a1, NavTrayWaypointRow *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NavTrayWaypointRow *)a2 waypoint:a3];
  v5 = [v4 isServerProvidedWaypoint];

  return v5 ^ 1;
}

void sub_100B7A1F8(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100B7A6A4(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100B7AD30(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100B7B994(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = [v17 etaInfo];
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v8;
  if (v9 | v10)
  {
    v11 = v10;
    v12 = [v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      v13 = [v17 waypoint];
      v14 = [v13 uniqueID];
      v15 = [*(a1 + 32) waypointID];
      v16 = [v14 isEqual:v15];

      if (!v16)
      {
        goto LABEL_9;
      }

      [v17 setEtaInfo:*(a1 + 32)];
      v9 = [NSIndexPath indexPathForRow:a3 inSection:*(a1 + 56)];
      if ([*(a1 + 40) containsObject:v9])
      {
        [*(a1 + 48) addObject:v9];
      }

      *a4 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
}

void sub_100B7C700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B7C724(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100B78EB8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      *buf = 134349314;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Error prompting to unlock phone before launching Find My: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    [v6 userLaunchedFindMy];

    v7 = sub_100B78EB8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = *(a1 + 32);
      *buf = 134349315;
      v15 = v8;
      v16 = 2113;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Prompt to unlock phone successful. Will launch into Find My.app with handle identifier: %{private}@", buf, 0x16u);
    }

    v10 = [NSString stringWithFormat:@"findmy://friend/%@", *(a1 + 32)];
    v4 = [NSURL URLWithString:v10];

    v11 = +[UIApplication sharedApplication];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100B7C978;
    v12[3] = &unk_1016619A8;
    objc_copyWeak(&v13, (a1 + 40));
    [v11 _maps_openURL:v4 options:0 completionHandler:v12];

    objc_destroyWeak(&v13);
  }
}

void sub_100B7C978(uint64_t a1, int a2)
{
  v4 = sub_100B78EB8();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully launched FindMy", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B7CA98;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to launch FindMy", buf, 2u);
    }
  }
}

void sub_100B7CA98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _delegate];
    [v2 pressedEndWithSender:v3 feedback:0];

    WeakRetained = v3;
  }
}

void sub_100B7DB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B7DB5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 29);
    *(WeakRetained + 29) = 0;

    v7 = +[MSPSharedTripService sharedInstance];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B7DC64;
    v9[3] = &unk_10163B558;
    objc_copyWeak(&v10, (a1 + 40));
    [v7 startSharingWithContact:v8 completion:v9];

    objc_destroyWeak(&v10);
  }
}

void sub_100B7DC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = 3;
    if (a3)
    {
      v5 = 0;
    }

    WeakRetained[41] = v5;
    v6 = WeakRetained;
    [WeakRetained _startTimerToDismissInitialBannerWithInterval:5.0];
    WeakRetained = v6;
  }
}

void sub_100B7E844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cardPresentationController];
  [v1 updateHeightForCurrentLayoutAnimated:1];
}

void sub_100B7EB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B7EB44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100B78EB8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v6 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Dismissing initial share ETA banner", buf, 0xCu);
    }

    v3 = WeakRetained[28];
    WeakRetained[28] = 0;

    *(WeakRetained + 220) = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B7EC80;
    v4[3] = &unk_101661B18;
    v4[4] = WeakRetained;
    [UIView animateWithDuration:117440512 delay:v4 options:0 animations:0.25 completion:0.0];
  }
}

void sub_100B7EC80(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) waldoModel];

  [*(a1 + 32) _updateShareETADisclosure];
  v3 = [*(*(a1 + 32) + 192) waldoModel];

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    [GEOAPPortal captureUserAction:399 target:91 value:0];
  }
}

void sub_100B7EED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B7EEF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100B78EB8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v6 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Displaying initial share ETA banner", buf, 0xCu);
    }

    v3 = WeakRetained[28];
    WeakRetained[28] = 0;

    *(WeakRetained + 220) = 1;
    *(WeakRetained + 221) = 1;
    [WeakRetained _startTimerToDismissInitialBanner];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B7F054;
    v4[3] = &unk_101661B18;
    v4[4] = WeakRetained;
    [UIView animateWithDuration:117440512 delay:v4 options:0 animations:0.25 completion:0.0];
  }
}

void sub_100B8074C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B80778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained categoriesAPIController];
  v4 = [v3 categories];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _computeSections];

    v8 = objc_loadWeakRetained((a1 + 32));
    v7 = [v8 tableView];
    [v7 reloadData];
  }
}

void sub_100B812D0(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100B81314(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setOverrideUserInterfaceStyle:2];
    v4 = sub_100A5FDCC();
    [*(a1 + 32) setCardColor:v4];

    v5 = *(a1 + 32);
    if (v5[220] == 1)
    {
      v5[220] = 0;
      [*(a1 + 32) _updateShareETADisclosure];
      v6 = [*(a1 + 32) cardPresentationController];
      [v6 updateHeightForCurrentLayout];

      v5 = *(a1 + 32);
    }

    v7 = [v5 cardPresentationController];
    v8 = [v7 containeeLayout];

    if (v8 != 1)
    {
      v9 = [*(a1 + 32) cardPresentationController];
      [v9 wantsLayout:1];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    [WeakRetained dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    [v3 setOverrideUserInterfaceStyle:0];
    WeakRetained = [UIColor colorNamed:@"NavigationMaterialColor"];
    [*(a1 + 32) setCardColor:?];
  }
}

void sub_100B8199C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B819D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100B78EB8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349314;
      v7 = WeakRetained;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Refreshed sharing identity: %@", &v6, 0x16u);
    }

    [WeakRetained _updateShareETAFooterTextWithSharingIdentity:v3];
  }
}

void sub_100B83AF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B83B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      [v6 localizedDescription];
    }

    else
    {
      [v5 version];
    }
    v8 = ;
    v9 = [WeakRetained serverVersionNumberRow];
    [v9 setSubtitle:v8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B83C2C;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v11, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v11);
  }
}

void sub_100B83C2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadData];
    WeakRetained = v2;
  }
}

void sub_100B83F68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B84064;
  block[3] = &unk_101653D50;
  v15 = v8;
  v16 = v7;
  v10 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100B84064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v12 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v12];
    v5 = v12;
    if ([v2 statusCode] >= 200 && objc_msgSend(v2, "statusCode") < 300)
    {
      v6 = *(a1 + 48);
      v7 = [NSString stringWithFormat:@"Fixed %@\n\n%@", *(a1 + 56), v4];
      v8 = @"Success";
    }

    else
    {
      v6 = *(a1 + 48);
      v7 = [NSString stringWithFormat:@"%@", v4];
      v8 = @"SimJana Error";
    }

    [v6 displayMessage:v7 titled:v8];
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = [v9 localizedDescription];
    [v10 displayMessage:v11 titled:@"SimJana Error"];
  }
}

void sub_100B84610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_100B84694(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B85858;
    v13[3] = &unk_101661B98;
    objc_copyWeak(&v14, (a1 + 40));
    v5 = [v3 addButtonRowWithTitle:@"Download Web Module" action:v13];
    v6 = [*(a1 + 32) webBundleDirectory];
    v7 = [v6 absoluteString];
    v8 = [v3 addReadOnlyRowWithTitle:@"Web Bundle Directory" value:v7];
    [WeakRetained setDeviceVersionNumberRow:v8];

    v9 = [v3 addReadOnlyRowWithTitle:@"Web Bundle Server Version" value:@"Loading..."];
    [WeakRetained setServerVersionNumberRow:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B858CC;
    v11[3] = &unk_101661B18;
    v12 = *(a1 + 32);
    v10 = [v3 addButtonRowWithTitle:@"Remove WebBundle files" action:v11];

    objc_destroyWeak(&v14);
  }
}

void sub_100B84874(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B85604;
  v7[3] = &unk_10163B740;
  v3 = a2;
  v8 = v3;
  sub_1007416FC(v7);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B856A0;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Reset defaults" action:v5];
  objc_destroyWeak(&v6);
}

void sub_100B84994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Received RAP Consent" defaultsKey:@"RAPHasReceived2015PrivacyConsent"];
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Maps"];
  v6 = [v3 addSwitchRowWithTitle:@"Development APS" userDefaults:v5 defaultsKey:@"__internal__PushManagerUseDevelopmentAPSEnvironment"];

  [v6 setSubtitle:@"Use the development APS environment rather than prod."];
  v7 = [v3 addButtonRowWithTitle:@"Present Fake Resolution (10s delay)" action:&stru_10163B7C0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B852D0;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, (a1 + 32));
  v8 = [v3 addButtonRowWithTitle:@"Display Push Details" action:v9];
  objc_destroyWeak(&v10);
}

void sub_100B84AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addTextFieldRowWithTitle:0 placeholderText:@"Problem ID" inputType:0 defaultsKey:@"RAPLastSubmittedProblemID"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B84FBC;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Fix" action:v6];
  objc_destroyWeak(&v7);
}

void sub_100B84BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringArrayForKey:@"RAPPreviouslySubmittedProblemIDs"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v11);
        v9 = [NSString stringWithFormat:@"Fix %@", v13];

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100B84FB0;
        v16[3] = &unk_101661A90;
        v16[4] = WeakRetained;
        v16[5] = v13;
        v14 = [v3 addButtonRowWithTitle:v9 action:v16];
        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_100B84DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringArrayForKey:@"RAPPreviouslySubmittedProblemURLs"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v11);
        v9 = [NSString stringWithFormat:@"Open %@", v13];

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100B84FA4;
        v16[3] = &unk_101661A90;
        v16[4] = WeakRetained;
        v16[5] = v13;
        v14 = [v3 addButtonRowWithTitle:v9 action:v16];
        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_100B84FBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 endEditing:1];

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"RAPLastSubmittedProblemID"];

  [WeakRetained simulateFixForProblemWithID:v3];
}

void sub_100B85094(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Force Client Override" geoConfigKey:MapKitConfig_RAPForceOverrideServerConfig[0] switchOnStateIfUnset:MapKitConfig_RAPForceOverrideServerConfig[1] changeHandler:0, 0];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Building Cell" geoConfigKey:399 switchOnStateIfUnset:&unk_1016409B8 changeHandler:0, 0];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Floor Cell" geoConfigKey:400 switchOnStateIfUnset:&unk_1016409F0 changeHandler:0, 0];
  v5 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Unit Cell" geoConfigKey:401 switchOnStateIfUnset:&unk_101640A28 changeHandler:0, 0];
  v6 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Lightweight Feedback" geoConfigKey:153 switchOnStateIfUnset:&unk_10163DA88 changeHandler:0, 0];
  v7 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Suggest an Edit Button" geoConfigKey:MapKitConfig_RAPForceShowSuggestAnEditButton[0] switchOnStateIfUnset:MapKitConfig_RAPForceShowSuggestAnEditButton[1] changeHandler:0, 0];
}

void sub_100B851D0(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enable Server Controlled UI" geoConfigKey:388 switchOnStateIfUnset:&unk_1016407D8 changeHandler:1, 0];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Cache Server Layout Results" geoConfigKey:397, &unk_101640938];
  v4 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Delete all cached layout results" action:&stru_10163B828];
}

void sub_100B85274(id a1)
{
  v1 = +[RAPFileManager baseLayoutFilePath];
  [RAPFileManager removeAllItemsInDirectory:v1];
}

void sub_100B852D0(uint64_t a1)
{
  v2 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100B854C8;
  v18 = sub_100B854D8;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100B854E0;
  v11[3] = &unk_10163B7E8;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 fetchDevicePushToken:v11];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = [v2 icloudUserPersonId];
  v8 = [v2 icloudUserMapsAuthToken];
  v9 = [NSString stringWithFormat:@"Account PersonID: %@\nMaps Auth Token: %@\nMaps Push Token: %@\n", v7, v8, v15[5]];

  NSLog(@"%@", v9);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displayMessage:v9 titled:@"Push Details"];

  _Block_object_dispose(&v14, 8);
}

void sub_100B854A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B854C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B854E0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100B85540(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 simulateProblemResolution];
}

void sub_100B85588(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable Long-Press to Show reportID" userDefaults:v2 defaultsKey:@"__internal__EnableTapRAPForReportID"];
}

uint64_t sub_100B85604(uint64_t a1)
{
  v2 = *(a1 + 32);
  GEOConfigGetPropertiesForKey();

  return 1;
}

void sub_100B856A0(uint64_t a1)
{
  sub_1007416FC(&stru_10163B780);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B8571C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v7 = [*(a1 + 32) addSwitchRowWithTitle:v8 geoConfigKey:*(a1 + 40) switchOnStateIfUnset:*(a1 + 48) changeHandler:{objc_msgSend(a5, "BOOLValue"), 0}];
}

void sub_100B857CC(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 simulateRAPStatusChangeNotification];
}

void sub_100B85858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[RAPWebBundleDownloadManager sharedInstance];
    [v2 _downloadWebBundleWithForce:1];
    [v2 addObserver:v3];

    WeakRetained = v3;
  }
}

void sub_100B858CC(uint64_t a1)
{
  v1 = [*(a1 + 32) webBundleDirectory];
  [NSFileManager emptyContentsOfDirectoryAtURL:v1 error:0];
}

void sub_100B85B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = +[MKLocationManager sharedLocationManager];
    v5 = v4;
    if (v3 == 1)
    {
      [v4 startLocationUpdateWithObserver:v6];
    }

    else
    {
      [v4 stopLocationUpdateWithObserver:v6];
    }

    WeakRetained = v6;
  }
}

id sub_100B85F0C()
{
  if (qword_10195E898 != -1)
  {
    dispatch_once(&qword_10195E898, &stru_10163B8B0);
  }

  v1 = qword_10195E890;

  return v1;
}

void sub_100B85F60(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFVIOSessionLocationAccuracyMonitor");
  v2 = qword_10195E890;
  qword_10195E890 = v1;
}

void sub_100B86680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchResult alloc] initWithMapItem:v3];

  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchResult:v4];
  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [SearchInfo searchInfoWithResults:v6];

  v8 = [*(a1 + 32) appCoordinator];
  [v8 openSearch:v5 andResults:v7];
}

void sub_100B882C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sectionType];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v44 = [v3 guideLocations];

      if (!v44)
      {
        goto LABEL_31;
      }

      v7 = [v3 guideLocations];
      if ([v7 count])
      {
        v20 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 2, *(a1 + 32), [v7 count], *(a1 + 48));
        v26 = [[MKPlaceCompactCollectionsLogicController alloc] initWithGuideLocations:v7 context:2];
        v45 = [*(a1 + 40) compactCollectionLogicControllers];
        v46 = [(GuidesHomeSection *)v20 sectionIdentifier];
        [v45 setObject:v26 forKey:v46];

        v47 = [v3 title];
        [(GuidesHomeSection *)v20 setSectionTitle:v47];

        v48 = [*(a1 + 40) sections];
        [v48 addObject:v20];

        goto LABEL_22;
      }

      v50 = sub_1007982D8();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v51 = "Guides Home section for GuideLocations couldn't build any objects to display in section.";
        goto LABEL_36;
      }
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_31;
      }

      v19 = [v3 publishers];
      v7 = v19;
      if (!v19)
      {
LABEL_30:

        goto LABEL_31;
      }

      if ([v19 count])
      {
        v20 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 5, *(a1 + 32), [v7 count], *(a1 + 48));
        v21 = [v3 title];
        [(GuidesHomeSection *)v20 setSectionTitle:v21];

        v22 = +[UIDevice currentDevice];
        v23 = [v22 userInterfaceIdiom] != 5;

        v24 = [v3 publishers];
        v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 count]);

        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100B88B28;
        v52[3] = &unk_10163B918;
        v53 = v25;
        v54 = v23;
        v26 = v25;
        [v7 enumerateObjectsUsingBlock:v52];
        v27 = [[NSOrderedSet alloc] initWithArray:v26];
        v28 = [v27 array];
        v29 = [v28 copy];
        [*(a1 + 40) setPublishers:v29];

        v30 = [*(a1 + 40) sections];
        [v30 addObject:v20];

LABEL_22:
        goto LABEL_30;
      }

      v50 = sub_1007982D8();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v51 = "Guides Home section for Publishers couldn't build any objects to display in section.";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v51, buf, 2u);
      }
    }

    goto LABEL_30;
  }

  if (v4 == 1)
  {
    v31 = objc_alloc_init(NSMutableArray);
    v32 = [v3 curatedGuides];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100B88A68;
    v58[3] = &unk_10165D7E0;
    v7 = v31;
    v59 = v7;
    [v32 enumerateObjectsUsingBlock:v58];

    if ([v7 count])
    {
      v33 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 3, *(a1 + 32), [v7 count], *(a1 + 48));
      v34 = [MKPlaceCollectionsLogicController alloc];
      v35 = [v7 copy];
      v36 = +[CuratedCollectionSyncManager sharedManager];
      v37 = [v34 initWithPlaceCollections:v35 usingSyncCoordinator:v36 inContext:8];

      v38 = [*(a1 + 40) collectionLogicControllers];
      v39 = [(GuidesHomeSection *)v33 sectionIdentifier];
      [v38 setObject:v37 forKey:v39];

      v40 = [v3 title];
      [(GuidesHomeSection *)v33 setSectionTitle:v40];

      v41 = [v3 contentType];
      if (v41 == 2)
      {
        v42 = 2;
      }

      else
      {
        v42 = v41 == 1;
      }

      [(GuidesHomeSection *)v33 setContentType:v42];
      v43 = [*(a1 + 40) sections];
      [v43 addObject:v33];
    }

    else
    {
      v33 = sub_1007982D8();
      if (os_log_type_enabled(&v33->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v33->super, OS_LOG_TYPE_ERROR, "Guides Home section for HorizontalGuides couldn't build any objects to display in section", buf, 2u);
      }
    }

    v49 = v59;
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [v3 curatedGuides];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100B88AC8;
    v55[3] = &unk_10165D7E0;
    v7 = v5;
    v56 = v7;
    [v6 enumerateObjectsUsingBlock:v55];

    if ([v7 count])
    {
      v8 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 4, *(a1 + 32), [v7 count], *(a1 + 48));
      v9 = [MKPlaceCollectionsLogicController alloc];
      v10 = [v7 copy];
      v11 = +[CuratedCollectionSyncManager sharedManager];
      v12 = [v9 initWithPlaceCollections:v10 usingSyncCoordinator:v11 inContext:9];

      v13 = [*(a1 + 40) collectionLogicControllers];
      v14 = [(GuidesHomeSection *)v8 sectionIdentifier];
      [v13 setObject:v12 forKey:v14];

      v15 = [v3 title];
      [(GuidesHomeSection *)v8 setSectionTitle:v15];

      v16 = [v3 contentType];
      if (v16 == 2)
      {
        v17 = 2;
      }

      else
      {
        v17 = v16 == 1;
      }

      [(GuidesHomeSection *)v8 setContentType:v17];
      v18 = [*(a1 + 40) sections];
      [v18 addObject:v8];
    }

    else
    {
      v8 = sub_1007982D8();
      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_ERROR, "Guides Home section for VerticalGuides couldn't build any objects to display in section.", buf, 2u);
      }
    }

    v49 = v56;
LABEL_29:

    goto LABEL_30;
  }

LABEL_31:
}

void sub_100B88A68(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void sub_100B88AC8(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void sub_100B88B28(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 publisher];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v7 publisher];
    v6 = [TwoLinesContentViewModelComposer cellModelForPublisher:v5 showDisclosureIndicator:*(a1 + 40)];
    [v4 addObject:v6];
  }
}

void sub_100B893B4(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

id sub_100B89A1C(id a1, GEOLocation *a2, unint64_t a3)
{
  v3 = a2;
  [(GEOLocation *)v3 clearSensitiveFields:0];

  return v3;
}

void sub_100B89AFC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  [v1 setObject:@"Error" forKeyedSubscript:@"kMapsInterruptionTitle"];
  [v1 setObject:@"The incident submission failed forKeyedSubscript:{please file a radar", @"kMapsInterruptionMessage"}];
  v2 = [MapsInterruptionAction actionWithTitle:@"Dismiss" cancels:1 handler:0];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  [v1 setObject:v3 forKeyedSubscript:@"kMapsInterruptionActions"];

  v4 = +[UIApplication sharedMapsDelegate];
  v5 = [v1 copy];
  [v4 interruptApplicationWithKind:23 userInfo:v5 completionHandler:0];

  v6 = dispatch_time(0, 25000000000);
  dispatch_after(v6, &_dispatch_main_q, &stru_10163BA20);
}

void sub_100B89C58(id a1)
{
  v1 = +[UIApplication sharedMapsDelegate];
  [v1 dismissCurrentInterruptionOfKind:23];
}

void sub_100B8A464(uint64_t a1)
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 submissionManager];
  v4 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  v7 = +[GEOMapService sharedService];
  v8 = [v7 defaultTraits];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B8A580;
  v10[3] = &unk_10163B9B8;
  v9 = *(a1 + 56);
  v10[4] = *(a1 + 64);
  [v3 submitOrEnqueueFeedback:v4 attachedImages:v5 userInfo:v6 traits:v8 debugSettings:v9 uploadPolicy:0 feedbackObjectToUpdate:0 completion:v10];
}

void sub_100B8A580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10002171C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error submitting incident %@", &v8, 0xCu);
    }

    v6 = +[TrafficIncidentsStorageManager sharedInstance];
    [v6 resubmitLastReport];

    [*(a1 + 32) _displayInternalErrorAlert];
  }

  else
  {
    v7 = +[NSDate date];
    [*(a1 + 32) setIncidentUpdateTime:v7];
  }
}

id sub_100B8A7D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 _submitFeedbackRequestParameters:v4 attachedImages:v5 comments:v6 userInfo:a2];
  }

  else
  {
    v8 = sub_10002171C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error generating userInfo for authenication", v11, 2u);
    }

    v9 = +[TrafficIncidentAuthenticationManager sharedInstance];
    [v9 rolloverAnonymousId];

    v10 = +[TrafficIncidentsStorageManager sharedInstance];
    [v10 resubmitLastReport];

    return [*(a1 + 32) _displayInternalErrorAlert];
  }
}

void sub_100B8ADF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = +[NSDate date];
    [WeakRetained setIncidentUpdateTime:v2];

    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

void sub_100B8AF98(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _processLocations:a2];
  v4 = [GEORPFeedbackRequestParameters alloc];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  v8 = *(v5 + 12);
  v9 = [v5 _incidentUserPath];
  v10 = [v4 initWithIncidentLocation:v6 userLocation:v7 type:v8 historicalLocations:v3 userPath:v9];

  if (*(*(a1 + 32) + 8) == 1)
  {
    v11 = objc_alloc_init(GEORPSiriContext);
    v12 = *(*(a1 + 32) + 12);
    if (v12 >= 0x14)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", *(*(a1 + 32) + 12)];
    }

    else
    {
      v13 = *(&off_10163BAB8 + v12);
    }

    [v11 setSiriIncidentType:v13];

    v14 = [v10 submissionParameters];
    v15 = [v14 details];
    v16 = [v15 incidentFeedback];
    [v16 setSiriContext:v11];
  }

  v17 = sub_10002171C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = *(*(a1 + 32) + 12);
    *buf = 67109378;
    v20 = v18;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Submitting incident report type: %d locations: %@", buf, 0x12u);
  }

  [*(a1 + 32) _submitFeedbackRequestParameters:v10 attachedImages:*(a1 + 40) comments:*(a1 + 48) requireAuthenication:sub_100F35DC4() completionHandler:*(a1 + 56)];
}

void sub_100B8BE20(id a1, unint64_t a2)
{
  v2 = +[GEOTileLoader modernLoader];
  [v2 clearAllCaches];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

uint64_t sub_100B8C280()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_10195E8A0;
  v5 = qword_10195E8A0;
  if (!qword_10195E8A0)
  {
    v6 = *off_10163BB78;
    v7 = *off_10163BB88;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_10195E8A0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100B8C394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100B8C3AC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195E8A8;
  v7 = qword_10195E8A8;
  if (!qword_10195E8A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100B8C62C;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100B8C62C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100B8C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100B8C48C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195E8B0;
  v7 = qword_10195E8B0;
  if (!qword_10195E8B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100B8C56C;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100B8C56C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100B8C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B8C56C(uint64_t a1)
{
  sub_100B8C5DC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WatermarkProperties");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195E8B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100B8C5DC();
  }
}

void sub_100B8C5DC()
{
  if (!sub_100B8C280())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class sub_100B8C62C(uint64_t a1)
{
  sub_100B8C5DC();
  result = objc_getClass("FCFImageEncoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195E8A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100B8C69C(v3);
  }

  return result;
}

uint64_t sub_100B8C69C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195E8A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100B8CC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B8CC8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100798EEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received notification that the AppleConnect ID has changed", v3, 2u);
  }

  [WeakRetained _updateWatermark];
}

void sub_100B8D294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained placeCardItem];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained placeCardItem];
    if (([v4 isIntermediateMapItem] & 1) == 0)
    {
      v5 = [WeakRetained placeCardItem];
      v6 = [v5 mapItem];
      v7 = [v6 _muid];

      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 32);
      v3 = [WeakRetained placeCardItem];
      v4 = [v3 mapItem];
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Placecard map item identifier: %llu", [v4 _muid]);
      [v8 addNote:v9];
    }
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void sub_100B8E360(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 304))
    {
      v3 = *(v2 + 296);
      *(v2 + 296) = 0;
    }
  }
}

id sub_100B8E810(uint64_t a1)
{
  v1 = [[UIDragPreview alloc] initWithView:*(a1 + 32)];

  return v1;
}

void sub_100B8F410(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_1007986AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AppClip of url %@ is available", &v13, 0xCu);
    }
  }

  else
  {
    v8 = sub_1007986AC();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = [v5 description];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed with error: %@", &v13, 0x16u);
      }
    }

    else if (v9)
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed", &v13, 0xCu);
    }

    v6 = [*(a1 + 40) placeCardDelegate];
    [v6 placeCardViewController:*(a1 + 40) openURL:*(a1 + 32)];
  }
}

void sub_100B8F9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B8F9E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained placeCardDelegate];
    [v2 placeViewControllerViewContactsClosed:v3];

    WeakRetained = v3;
  }
}

void sub_100B8FC38(uint64_t a1)
{
  v2 = [*(a1 + 32) placeCardDelegate];
  [v2 placeCardViewControllerRemovedObservingHandle:*(a1 + 32)];
}

void sub_100B8FE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B8FEB8(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = sub_1007986AC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [WeakRetained placeCardItem];
        v5 = [v4 searchResult];
        v6 = [v5 autocompletePerson];
        v7 = [v6 title];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opened message app for handle for identifier: %@", &v8, 0xCu);
      }
    }
  }
}

void sub_100B901C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B90200(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = sub_1007986AC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Opened findmy handle for identifier: %@", &v6, 0xCu);
      }
    }
  }
}

void sub_100B90510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B9052C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _chromeViewControllerPresent:*(a1 + 32)];
    WeakRetained = v3;
  }
}

BOOL sub_100B90580(id a1, CNLabeledValue *a2, NSDictionary *a3)
{
  v3 = [(CNLabeledValue *)a2 identifier];
  v4 = +[CNContact _mapkit_sharedLocationContactIdentifer];
  v5 = v3 != v4;

  return v5;
}

void sub_100B911D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_100B91220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained viewContact];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _instrumentHeaderButtonAction:6044 withFeedbackType:0];
}

void sub_100B91288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openFindMy];
}

void sub_100B912C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openRequestLocation];
}

void sub_100B91308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained placeCardDelegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 placeCardItem];
  v6 = [v5 searchResult];
  [v3 placeCardViewController:v4 editLocationOfMarkedLocation:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _instrumentHeaderButtonAction:6005 withFeedbackType:0];
}

void sub_100B913D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained placeCardDelegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 placeCardItem];
  v6 = [v5 mapItem];
  [v3 placeCardViewController:v4 enterFlyoverForMapItem:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _instrumentHeaderButtonAction:6004 withFeedbackType:127];
}

void sub_100B914A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained placeCardDelegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 placeCardViewController:v6 createDroppedPin:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _instrumentHeaderButtonAction:1030 withFeedbackType:0];
}

void sub_100B91558(uint64_t a1)
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = [v2 isAuthorizedForPreciseLocation];

  if (v3)
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained placeCardItem];
    v6 = [v5 searchResult];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:56 onTarget:691 eventValue:0];

    v8 = +[MKLocationManager sharedLocationManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B91810;
    v10[3] = &unk_1016610B8;
    v11 = *(a1 + 32);
    [v8 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForMarkLocationPurposeKey" completion:v10];
  }
}

void sub_100B916C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [GEOAPPortal captureUserAction:2063 target:253 value:0];
    [v2 placeViewControllerDidSelectRefineLocation:v2[31]];
    WeakRetained = v2;
  }
}

void sub_100B91730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[31] analyticsController];
    v4 = [*(a1 + 32) URLString];
    [v3 instrumentAction:50 target:201 eventValue:v4 moduleType:2 feedbackType:0];

    v5 = [*(a1 + 32) URLString];
    [v3 instrumentAction:6105 target:670 eventValue:v5 moduleType:2 feedbackType:0];

    [v6 presentQuickLink:*(a1 + 32)];
    WeakRetained = v6;
  }
}

void sub_100B91810(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v13 = v5;
    v14 = v4;
    v15 = v2;
    v16 = v3;
    v7 = +[MKLocationManager sharedLocationManager];
    v8 = [v7 isAuthorizedForPreciseLocation];

    if (v8)
    {
      v9 = +[MKLocationManager sharedLocationManager];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100B91914;
      v11[3] = &unk_10165D568;
      v12 = *(a1 + 32);
      v10 = [v9 singleLocationUpdateWithDesiredAccuracy:v11 handler:kCLLocationAccuracyBest];

      [v10 start];
    }
  }
}

void sub_100B91914(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SearchResult currentLocationSearchResult];
  (*(v1 + 16))(v1, v2);
}

void sub_100B91C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B91C28(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained placeCardDelegate];
    v7 = [v8 mapItem];
    [v6 placeCardViewController:v5 didSelectParent:v7];
  }
}

void sub_100B91FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B91FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isAuthorizedForPreciseLocation], v4, !v5))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[MKLocationManager sharedLocationManager];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100B92148;
    v11 = &unk_10163BD28;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v7 = [v6 singleLocationUpdateWithDesiredAccuracy:&v8 handler:kCLLocationAccuracyBest];

    [v7 start];
    objc_destroyWeak(&v13);
  }
}

void sub_100B92148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = +[SearchResult currentLocationSearchResult];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B92270;
    v9[3] = &unk_10163BD00;
    objc_copyWeak(&v12, (a1 + 40));
    v8 = v7;
    v10 = v8;
    v11 = *(a1 + 32);
    [v8 tryUpdatingCurrentLocationSearchResultWithCompletion:v9];

    objc_destroyWeak(&v12);
  }
}

void sub_100B92270(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (a2)
    {
      v5 = [*(a1 + 32) mapItem];
      v6 = v7[34];
      v7[34] = v5;
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = v7;
  }
}

void sub_100B923E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100B92490;
    v5[3] = &unk_101661090;
    v7 = v4;
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_100B92BB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rapPlace];
  [v3 setReportedPlace:v4];
}

void sub_100B92D4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rapPlace];
  [v3 setReportedPlace:v4];
}

void sub_100B92E88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rapPlace];
  [v3 setReportedPlace:v4];
}

void sub_100B93094(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rapPlace];
  [v3 setReportedPlace:v4];
}

void sub_100B9343C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 440);
  v3 = a2;
  v4 = [v2 rapPlace];
  [v3 setReportedPlace:v4];
}

void sub_100B93B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B93B3C(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v4 = sub_1007986AC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error removing shortcut", v6, 2u);
      }
    }

    v5 = WeakRetained[39];
    WeakRetained[39] = 0;
  }
}

void sub_100B93E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B93E8C(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = sub_1007986AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error adding shortcut", v9, 2u);
      }
    }

    v6 = WeakRetained[39];
    WeakRetained[39] = 0;

    if (*(a1 + 32))
    {
      v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
      v10 = *(a1 + 32);
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      [v7 saveWithObjects:v8 error:0];
    }
  }
}

uint64_t sub_100B954C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reportStatus])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 contentData];
    v6 = [v5 mapItemStorage];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 _identifier];
      if (v8)
      {
        v9 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v8];
        v10 = [*(a1 + 32) mapItem];
        v11 = [v10 _identifier];
        v12 = v11;
        if (v11 == v9)
        {
          v4 = 1;
        }

        else
        {
          v4 = [v11 isEqual:v9];
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_100B95950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100B9596C(uint64_t a1)
{
  v2 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:*(a1 + 32)];
  [(CollectionEditSession *)v2 addSelectedObject:*(a1 + 40)];
  v3 = [(CollectionEditSession *)v2 collection];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B95AC8;
  v4[3] = &unk_10163BC38;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 56));
  v6 = *(a1 + 32);
  [(CollectionAddOrRemoveSession *)v2 applyToCollection:v3 completion:v4];

  objc_destroyWeak(&v7);
}

uint64_t sub_100B95A80(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setName:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100B95AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10000BDA4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error saving collection session: %@", &v7, 0xCu);
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v5 placeCardViewController:WeakRetained editCollection:*(a1 + 40)];
  }
}

void sub_100B95DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B95DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained[31] analyticsController];
    v10 = [*(a1 + 32) analyticsModuleMetadata];
    [v9 infoCardAnalyticsDidSelectAction:a2 target:a3 eventValue:v11 moduleMetadata:v10 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }
}

void sub_100B96918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B969AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addPlaceToCollection:*(a1 + 32) editCollection:0];
}

void sub_100B96A00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v3 = [(CollectionSaveSession *)[CollectionAddOrRemoveSession alloc] initWithMapItem:*(a1 + 32)];
      v4 = [v6 placeCardDelegate];
      [v4 placeCardViewController:v6 createNewCollectionWithSession:v3];
    }

    else
    {
      v3 = +[CollectionHandler collection];
      v5 = +[NSBundle mainBundle];
      v4 = [v5 localizedStringForKey:@"[Collections] New Guide" value:@"localized string not found" table:0];

      [(CollectionAddOrRemoveSession *)v3 updateTitle:v4];
      [v6 _addPlaceToCollection:v3 editCollection:1];
    }

    [GEOAPPortal captureUserAction:2072 target:201 value:0];
    WeakRetained = v6;
  }
}

void sub_100B96B24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_opt_new();
    [v2 setIsQuickAction:1];
    [v3 placeViewControllerDidSelectAddAPlace:v3[31] environment:v2];

    WeakRetained = v3;
  }
}

void sub_100B96D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B96D64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _routeFromCurrentSearchResult];
}

id sub_100B9707C()
{
  if (qword_10195E8D0 != -1)
  {
    dispatch_once(&qword_10195E8D0, &stru_10163BE48);
  }

  v1 = qword_10195E8C8;

  return v1;
}

void sub_100B970D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PlaceCardViewController");
  v2 = qword_10195E8C8;
  qword_10195E8C8 = v1;
}

id sub_100B98CAC(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"OfflineMapsPlaceCardDownloadTipsShownKey"];

  [*(a1 + 32) _clearOfflineDownloadTipIfNeeded];

  return [GEOAPPortal captureUserAction:371 target:201 value:0];
}

void sub_100B9A04C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v32 = a3;
  *(*(a1 + 32) + 262) = 0;
  v7 = *(*(a1 + 32) + 440);
  v8 = a2;
  v9 = [v7 mapItem];
  v10 = [v9 _identifier];
  v11 = [v8 isEqual:v10];

  if (a4 || !v11 || ([v32 mapItem], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "_geoMapItem"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasExpiredComponents"), v13, v12, (v14 & 1) != 0))
  {
    v15 = [*(a1 + 32) placeCardItem];
    v16 = [v15 isIntermediateMapItem];

    v17 = *(a1 + 32);
    if (v16)
    {
      v18 = [v17 placeCardItem];
      [v18 setIsIntermediateMapItem:0];

      v19 = [*(*(a1 + 32) + 248) analyticsController];
      [v19 disableDeferLoggingUntilRefinementWithShouldInvokeReveal:0];

      [*(a1 + 32) placeCardItemMapItemDidChangeWithFailedRefinement:1];
    }

    else
    {
      v20 = [v17[31] analyticsController];
      [v20 disableDeferLoggingUntilRefinementWithShouldInvokeReveal:1];
    }
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 408);
    v23 = [*(v21 + 440) mapItem];
    v24 = [v32 mapItem];
    [v22 updateMapsSyncPlaceItemsMatchingMapItem:v23 withStorageFrom:v24];

    [*(a1 + 32) _carryOverTransitDisplayInformationFromCurrentItemToNewFetchedResult:v32];
    v25 = [[PlaceCardItem alloc] initWithSearchResult:v32];
    v26 = [*(*(a1 + 32) + 248) analyticsController];
    [v26 disableDeferLoggingUntilRefinementWithShouldInvokeReveal:0];

    [*(*(a1 + 32) + 424) setNeedsRefinement:0];
    [*(a1 + 32) setPlaceCardItem:v25];
    v27 = [PlaceCardSynchronizationNotificationInfo alloc];
    v28 = +[CarDisplayController sharedInstance];
    v29 = [v28 platformController];
    v30 = [(PlaceCardSynchronizationNotificationInfo *)v27 initWithPlaceCardItem:v25 platformController:v29];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 postNotificationName:off_1019377A8 object:v30];
  }
}

id sub_100B9A3C0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B9A43C;
  v2[3] = &unk_101661B18;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_100B9A8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B9A8D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1007986AC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[55];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopped monitoring friendship stream for PlaceCardItem: %@", &v5, 0xCu);
    }

    v4 = WeakRetained[49];
    WeakRetained[49] = 0;
  }
}

UIFont *__cdecl sub_100B9BFB0(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 boldBodyFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:24.0];

  return v3;
}

void sub_100B9C1EC(uint64_t a1)
{
  v1 = [*(a1 + 32) _installedApps];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"__internal__DisableTransitAppSieving"];

  v4 = v1;
  if ((v3 & 1) == 0)
  {
    v26 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v1;
    obj = v1;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v33;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * v9);
          v12 = [v11 coverageFilePath];
          v13 = +[NSFileManager defaultManager];
          v14 = [v13 isReadableFileAtPath:v12];

          if (v14)
          {
            v15 = [_MKRoutingAppCoverageRegions alloc];
            v16 = [NSURL fileURLWithPath:v12];
            v31 = v10;
            v17 = [v15 initWithContentsOfURL:v16 error:&v31];
            v7 = v31;

            if (v17)
            {
              if ([v17 containsCoordinate:{*(a1 + 48), *(a1 + 56)}] && objc_msgSend(v17, "containsCoordinate:", *(a1 + 64), *(a1 + 72)))
              {
                [v26 addObject:v11];
              }
            }

            else
            {
              NSLog(@"Error parsing GeoJSON coverage file: %@.", v7);
            }

            v10 = v7;
          }

          else
          {
            [v26 addObject:v11];
            NSLog(@"No readable coverage file at path: %@.", v12);
            v7 = v10;
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v4 = v26;
    v1 = v23;
  }

  v18 = [*(a1 + 32) routingAppLaunchRecord];
  v19 = [v18 rankedRoutingAppProxiesWithProxies:v4];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B9C534;
  block[3] = &unk_1016605F8;
  v20 = *(a1 + 40);
  v29 = v1;
  v30 = v20;
  v28 = v19;
  v21 = v1;
  v22 = v19;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100B9C5DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _installedApps];
  if ([v2 count])
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 bundleIdentifier];
          [v3 setObject:v9 forKeyedSubscript:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v11 = [*(a1 + 32) _appIdsStringWithApplicationProxies:v4];
    v12 = objc_alloc_init(SSSoftwareLibrary);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B9C7D8;
    v15[3] = &unk_10165FE18;
    v13 = *(a1 + 32);
    v16 = v3;
    v17 = v13;
    v14 = v3;
    [v12 getLibraryItemForBundleIdentifiers:v11 completionBlock:v15];
  }
}

void sub_100B9C7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [a3 description];
    NSLog(@"Error loading app metadata: %@.", v7);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = SSSoftwareLibraryItemBundleIdentifier;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v13 valueForProperty:v11];
          v15 = [*(a1 + 32) valueForKey:v14];
          if (v15)
          {
            [*(a1 + 40) _updateCoverageFileForAppProxy:v15 libraryItem:v13];
          }

          else
          {
            NSLog(@"Warning: Unrecognized bundleId for routing application: %@.", v14);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

void sub_100B9CAB8(uint64_t a1)
{
  v2 = [NSMutableURLRequest alloc];
  v3 = [NSURL URLWithString:*(a1 + 32)];
  v4 = [v2 initWithURL:v3 cachePolicy:0 timeoutInterval:5.0];

  [v4 setValue:*(a1 + 40) forHTTPHeaderField:@"If-None-Match"];
  v5 = +[NSURLSession sharedSession];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100B9CBEC;
  v10 = &unk_10163BF08;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v6 = [v5 dataTaskWithRequest:v4 completionHandler:&v7];

  [v6 resume];
}

void sub_100B9CBEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B9CCFC;
  block[3] = &unk_101653D50;
  v12 = a3;
  v13 = a4;
  v14 = v7;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v8 = v7;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100B9CCFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([v2 statusCode] == 200)
  {
    if (!*(a1 + 48))
    {
      sub_100DA10F8(@"Error downloading coverage file: %@.", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
      goto LABEL_24;
    }

    v10 = +[NSFileManager defaultManager];
    v11 = [*(a1 + 56) coverageFilePath];
    v12 = [v11 stringByAppendingPathExtension:@"download"];
    if ([v10 fileExistsAtPath:v12])
    {
      v72 = 0;
      v13 = [v10 removeItemAtPath:v12 error:&v72];
      v21 = v72;
      if ((v13 & 1) == 0)
      {
        sub_100DA10F8(@"Error removing old coverage download file at path: %@. Error: %@.", v14, v15, v16, v17, v18, v19, v20, v12);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = v21;
    v30 = *(a1 + 48);
    v71 = v21;
    v31 = [v30 writeToFile:v12 options:0 error:&v71];
    v21 = v71;

    if ((v31 & 1) == 0)
    {
      sub_100DA10F8(@"Error saving updated coverage file to download path: %@. Error: %@.", v32, v33, v34, v35, v36, v37, v38, v12);
      goto LABEL_23;
    }

    if ([v10 fileExistsAtPath:v11])
    {
      v70 = v21;
      v39 = [v10 removeItemAtPath:v11 error:&v70];
      v40 = v70;

      if ((v39 & 1) == 0)
      {
        sub_100DA10F8(@"Error removing old coverage file at path %@. Error: %@.", v41, v42, v43, v44, v45, v46, v47, v11);
LABEL_22:
        v21 = v40;
        goto LABEL_23;
      }

      v21 = v40;
    }

    v69 = v21;
    v48 = [v10 moveItemAtPath:v12 toPath:v11 error:&v69];
    v40 = v69;

    if (v48)
    {
      v56 = [v2 allHeaderFields];
      v57 = [v56 objectForKeyedSubscript:@"Etag"];

      v58 = *(a1 + 64);
      v68 = v40;
      v59 = [v58 setETag:v57 forAssetType:SSDownloadAssetTypeTransitMapsData error:&v68];
      v21 = v68;

      if ((v59 & 1) == 0)
      {
        sub_100DA10F8(@"Failed to save eTag %@ to library item %@. Error: %@.", v60, v61, v62, v63, v64, v65, v66, v57);
      }

      goto LABEL_23;
    }

    sub_100DA10F8(@"Error moving old coverage file at path %@ to %@. Error: %@.", v49, v50, v51, v52, v53, v54, v55, v11);
    goto LABEL_22;
  }

  v67 = [v2 statusCode];
  sub_100DA10F8(@"Non-200 response (%d) for coverage file: %@.", v22, v23, v24, v25, v26, v27, v28, v67);
LABEL_24:
}

void sub_100B9D290(id a1)
{
  v1 = objc_alloc_init(RoutingAppsManager);
  v2 = qword_10195E8D8;
  qword_10195E8D8 = v1;
}

uint64_t sub_100B9D704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B9E0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(GEORPFeedbackUserInfo);
  v5 = [v3 anonUserInfo];

  [v4 setRolloverInfo:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B9E1E4;
  v8[3] = &unk_10163C010;
  v9 = v4;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v4;
  [v6 _generateKey:v8];
}

uint64_t sub_100B9E1E4(uint64_t a1, void *a2)
{
  v3 = [a2 anonUserInfo];
  [*(a1 + 32) setAnonUserInfo:v3];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100B9E384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] != 4)
    {
      v8 = +[NSUserDefaults standardUserDefaults];
      [v8 setObject:0 forKey:@"TrafficIncidentAuthenicationInfo"];
    }

    v9 = sub_10002171C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TrafficIncidentAuthenticationManager: _generateAssertionKeyId error %@", &v19, 0xCu);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }

  else
  {
    v11 = objc_alloc_init(GEORPFeedbackUserInfo);
    v12 = objc_alloc_init(GEORPAppAttestInfo);
    [v11 setAnonUserInfo:v12];

    v13 = [v11 anonUserInfo];
    [v13 setAssertion:v5];

    v14 = [*(a1 + 32) _storedUUID];
    v15 = [v11 anonUserInfo];
    [v15 setAnonymousUserId:v14];

    v16 = [*(a1 + 32) _keyId];
    v17 = [v11 anonUserInfo];
    [v17 setKeyId:v16];

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, v11);
    }
  }
}

void sub_100B9E6B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] != 4)
    {
      v8 = +[NSUserDefaults standardUserDefaults];
      [v8 setObject:0 forKey:@"TrafficIncidentAuthenicationInfo"];
    }

    v9 = sub_10002171C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TrafficIncidentAuthenticationManager: _attestKeyId error %@", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }

  else
  {
    v11 = [NSArray alloc];
    v12 = *(a1 + 32);
    v13 = [NSNumber numberWithBool:1];
    v14 = [v11 initWithObjects:{v12, v13, 0}];

    v15 = [[NSArray alloc] initWithObjects:{@"TrafficIncidentAuthenicationKeyId", @"TrafficIncidentAuthenicationAttested", 0}];
    v16 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15];
    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 setObject:v16 forKey:*(a1 + 32)];

    v18 = objc_alloc_init(GEORPFeedbackUserInfo);
    v19 = objc_alloc_init(GEORPAppAttestInfo);
    [v18 setAnonUserInfo:v19];

    v20 = [v18 anonUserInfo];
    [v20 setAttestation:v5];

    v21 = [*(a1 + 40) _storedUUID];
    v22 = [v18 anonUserInfo];
    [v22 setAnonymousUserId:v21];

    v23 = [*(a1 + 40) _keyId];
    v24 = [v18 anonUserInfo];
    [v24 setKeyId:v23];

    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))(v25, v18);
    }
  }
}

void sub_100B9EA68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10002171C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "TrafficIncidentAuthenticationManager: _generateKey error %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  else
  {
    v9 = [NSArray alloc];
    v10 = [NSNumber numberWithBool:0];
    v11 = [v9 initWithObjects:{v5, v10, 0}];

    v12 = [[NSArray alloc] initWithObjects:{@"TrafficIncidentAuthenicationKeyId", @"TrafficIncidentAuthenicationAttested", 0}];
    v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12];
    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 setObject:v13 forKey:@"TrafficIncidentAuthenicationInfo"];

    [*(a1 + 32) _refreshStoredUUID];
    [*(a1 + 32) _attestKeyId:v5 completionHandler:*(a1 + 40)];
  }
}

void sub_100B9F95C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_100B9F980()
{
  if (qword_10195E910 != -1)
  {
    dispatch_once(&qword_10195E910, &stru_10163C0C0);
  }

  v1 = qword_10195E908;

  return v1;
}

void sub_100B9F9D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setPlaceCollections:0];
      (*(*(a1 + 32) + 16))();
      v9 = sub_100B9F980();
      v10 = v9;
      v11 = *(a1 + 48);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchingPublisherViewBatch", "", buf, 2u);
      }
    }

    else
    {
      v12 = sub_100B9F980();
      v13 = v12;
      v14 = *(a1 + 48);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "FetchingPublisherViewBatch", "", v15, 2u);
      }

      [v8 setPlaceCollections:v5];
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_100B9FB58(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PublisherAPIController");
  v2 = qword_10195E908;
  qword_10195E908 = v1;
}

void sub_100B9FEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B9FF10(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v14 = sub_100B9F980();
    v15 = v14;
    v16 = *(a1 + 48);
    if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
    {
      goto LABEL_13;
    }

    v35 = 0;
    v17 = &v35;
    goto LABEL_12;
  }

  if (a5)
  {
    goto LABEL_9;
  }

  v13 = [v11 publisher];
  if ([v13 isSuppressed])
  {

    goto LABEL_9;
  }

  v18 = [v11 publisher];
  v19 = [v18 isBlocked];

  if (v19)
  {
LABEL_9:
    v20 = [WeakRetained stateHandler];
    (v20)[2](v20, [WeakRetained state], 3);

    [WeakRetained setState:3];
    v21 = sub_100B9F980();
    v15 = v21;
    v16 = *(a1 + 48);
    if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v17 = buf;
LABEL_12:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "FetchingPublisherView", "", v17, 2u);
LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_100B9F980();
  v23 = v22;
  v24 = *(a1 + 48);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v33 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v24, "FetchingPublisherView", "", v33, 2u);
  }

  if (!v9)
  {
    v25 = [WeakRetained filters];
    v26 = [v25 count];

    if (!v26)
    {
      goto LABEL_25;
    }
  }

  v27 = [WeakRetained filters];
  v28 = [v27 count];

  if (v9 && !v28)
  {
    v29 = [v9 resultFilters];
    [WeakRetained setFilters:v29];
  }

  if ([v10 count])
  {
    [WeakRetained setCollectionResults:v10];
    [WeakRetained setPublisherResult:v11];
    v30 = [v9 collectionIdentifiers];
    [WeakRetained setCollectionIds:v30];

    v31 = [WeakRetained stateHandler];
    (v31)[2](v31, [WeakRetained state], 2);

    [WeakRetained setState:2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
LABEL_25:
    v32 = [WeakRetained stateHandler];
    (v32)[2](v32, [WeakRetained state], 3);

    [WeakRetained setState:3];
  }

LABEL_14:
}

void sub_100BA0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_100BA0768(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = sub_100E9E6E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler)", buf, 0xCu);
  }

  if (WeakRetained && v3)
  {
    v5 = WeakRetained[5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100BA0A18;
    v6[3] = &unk_101661A90;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100BA08A4(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Received new connection: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
}

void sub_100BA0958(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

void sub_100BA09B0(id a1)
{
  v1 = sub_100E9E6E8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "MapsIPCInterface Connection interrupted.", v2, 2u);
  }
}

void sub_100BA0A18(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = sub_100E9E6E8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == v2)
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler): releasing _connection", &v10, 0xCu);
    }

    v9 = *(a1 + 32);
    v4 = *(v9 + 48);
    *(v9 + 48) = 0;
  }

  else if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 48);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler): _connection changed to %@", &v10, 0x16u);
  }
}

uint64_t sub_100BA0D50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BA0D68(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[5];
LABEL_7:
    objc_storeStrong((*(v4 + 8) + 40), v3);
    return;
  }

  if (*(v2 + 56))
  {
    v5 = sub_100E9E6E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1[4] + 56);
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface Using existing dispatchGroup: %@", buf, 0xCu);
    }

    v3 = *(a1[4] + 56);
    v4 = a1[6];
    goto LABEL_7;
  }

  v7 = dispatch_group_create();
  v8 = a1[4];
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  v10 = sub_100E9E6E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1[4] + 56);
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsIPCInterface Created connectionGroup to wait for Maps: %@", buf, 0xCu);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 56));
  dispatch_group_enter(*(a1[4] + 56));
  v12 = dispatch_time(0, 20000000000);
  v13 = a1[4];
  v14 = *(v13 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA0FEC;
  block[3] = &unk_101661B18;
  block[4] = v13;
  dispatch_after(v12, v14, block);
}

void sub_100BA0F48(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Used established 'connection' but it was nil!", v3, 2u);
    }
  }
}

void sub_100BA0FEC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v5 = sub_100E9E6E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface Timed out waiting for a connection to be established", v6, 2u);
    }
  }
}

void sub_100BA11C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface performWithMapsRunning openApplication completed, error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100BA1290(id a1)
{
  v4[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v4[1] = FBSOpenApplicationOptionKeyPayloadURL;
  v5[0] = &__kCFBooleanTrue;
  v1 = [NSURL URLWithString:@"x-maps-reopen://?backgroundnavigation"];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = qword_10195E918;
  qword_10195E918 = v2;
}

void sub_100BA1734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_100BA1764(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps broker connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;
  }
}

void sub_100BA17F0(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps broker connection interrupted.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[2] remoteObjectProxy];
    v6 = [v4[3] endpoint];
    [v5 listenerEndpointDidChange:v6 forIdentifier:v4[4]];
  }
}

id sub_100BA22F8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Library] Edit Details" value:@"localized string not found" table:0];
  v5 = [UIImage systemImageNamed:@"info.circle"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100BA2574;
  v21[3] = &unk_10163C178;
  v6 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v6;
  v7 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_editPinAction" handler:v21];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Library] Unpin" value:@"localized string not found" table:0];
  v10 = [UIImage systemImageNamed:@"pin.slash"];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100BA25C8;
  v18 = &unk_10163C178;
  v11 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v11;
  v12 = [UIAction actionWithTitle:v9 image:v10 identifier:@"_removePinAction" handler:&v15];

  [v12 setAttributes:{2, v15, v16, v17, v18, v19}];
  if ([*(a1 + 40) type] != 6)
  {
    [v2 addObject:v7];
  }

  [v2 addObject:v12];
  v13 = [UIMenu menuWithChildren:v2];

  return v13;
}

void sub_100BA2574(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 shortcutsRowCellProvider:*(a1 + 32) editShortcut:*(a1 + 40)];
}

void sub_100BA25C8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 shortcutsRowCellProvider:*(a1 + 32) removeShortcut:*(a1 + 40)];
}

void sub_100BA2A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BA2A84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BA2A9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = sub_10009B2BC(a2);
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [NSIndexPath indexPathForRow:a3 inSection:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_100BA309C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100BA30C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBackgroundView];
}

void sub_100BA3108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBackgroundView];
}

void sub_100BA3248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100BA326C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v4 traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

    v9 = [v4 container];
    [v9 effectiveContentSize];
    v11 = v10;

    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 32.0;
    }

    if (IsAccessibilityCategory)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + -13.0;
    }

    if (IsAccessibilityCategory)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v12 + -13.0;
    }

    v15 = [v4 traitCollection];
    [ShortcutsRowCollectionViewCell cellSizeWithTraitCollection:v15];
    v17 = v16;

    if (v11 > 0.0 && v17 > 0.0)
    {
      if (IsAccessibilityCategory)
      {
        +[ShortcutsRowCollectionViewCell imageSize];
        v18 = [v4 traitCollection];
        [v18 _maps_displayScaleOrMainScreenScale];
        UIRoundToScale();
        v20 = v11 - (v13 + v14 + v19);

        v17 = fmin(v17, v20);
      }

      else if (v11 - v13 - floor((v11 - v13) / v17) * v17 < 29.0)
      {
        v22 = [v4 traitCollection];
        [v22 _maps_displayScaleOrMainScreenScale];
        UICeilToScale();
        v24 = v23;

        +[ShortcutsRowCollectionViewCell textHorizontalMargin];
        if (v24 <= v25)
        {
          +[ShortcutsRowCollectionViewCell textHorizontalMargin];
          v24 = v26;
        }

        v17 = v24 * 2.0 + -26.0 + v17;
        v14 = v12 - v24;
        v13 = v14;
      }
    }

    v27 = [NSCollectionLayoutDimension absoluteDimension:v17];
    v28 = 1.0;
    if (IsAccessibilityCategory)
    {
      v28 = 0.5;
    }

    v29 = [NSCollectionLayoutDimension fractionalHeightDimension:v28];
    v30 = [NSCollectionLayoutSize sizeWithWidthDimension:v27 heightDimension:v29];

    v31 = [NSCollectionLayoutItem itemWithLayoutSize:v30];
    v32 = [v30 widthDimension];
    v33 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
    v34 = [NSCollectionLayoutSize sizeWithWidthDimension:v32 heightDimension:v33];

    v38 = v31;
    v35 = [NSArray arrayWithObjects:&v38 count:1];
    v36 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v34 subitems:v35];

    v21 = [NSCollectionLayoutSection sectionWithGroup:v36];
    [v21 setContentInsets:{0.0, v13, 0.0, v14}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_100BA3DFC()
{
  if (qword_10195E930 != -1)
  {
    dispatch_once(&qword_10195E930, &stru_10163C1C0);
  }

  v1 = qword_10195E928;

  return v1;
}

void sub_100BA3E58(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarHybridInstrumentClusterNavigationModeController");
  v2 = qword_10195E928;
  qword_10195E928 = v1;
}

void sub_100BA4318(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) desiredCards];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"%@.desiredCards.txt", v5];

  v7 = v3;
  v8 = v7;
  if (!v7)
  {
    v23 = @"<nil>";
    goto LABEL_23;
  }

  if (![v7 count])
  {
    v23 = [NSString stringWithFormat:@"<%p> (empty)", v8];
    goto LABEL_23;
  }

  v26 = v6;
  v27 = a1;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v8;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v13 = *v29;
  do
  {
    v14 = 0;
    do
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      if (v15)
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v18 = [v15 performSelector:"accessibilityIdentifier"];
        v19 = v18;
        if (v18 && ![v18 isEqualToString:v17])
        {
          v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];
        }

        else
        {

LABEL_13:
          v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
        }

        goto LABEL_16;
      }

      v20 = @"<nil>";
LABEL_16:

      [v9 addObject:v20];
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v21 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v12 = v21;
  }

  while (v21);
LABEL_20:

  v22 = [v10 componentsJoinedByString:{@", "}];
  v23 = [NSString stringWithFormat:@"<%p> [%@]", v10, v22];

  a1 = v27;
  v8 = v25;
  v6 = v26;
LABEL_23:

  v24 = [MapsRadarTextAttachment attachmentWithFileName:v6 text:v23];

  [v2 addObject:v24];
  [*(a1 + 40) addAttachments:v2];
  (*(*(a1 + 48) + 16))();
}

void sub_100BA6F50(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  [v2 unregisterObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) guidanceObserver];
  v4 = [*(a1 + 32) guidanceCardController];
  [v3 removeOutlet:v4];

  if (*(*(a1 + 32) + 80))
  {
    [NSLayoutConstraint deactivateConstraints:?];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = 0;
  }
}

void *sub_100BA7190(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  [v2 registerObserver:*(a1 + 32)];

  result = *(a1 + 32);
  if (result[3] == 2)
  {
    v54 = [result chromeViewController];
    v53 = [v54 mapInsetsLayoutGuide];
    v48 = [v53 topAnchor];
    v52 = [*(a1 + 32) chromeViewController];
    v51 = [v52 view];
    v50 = [v51 safeAreaLayoutGuide];
    v45 = [v50 topAnchor];
    v49 = [*(a1 + 32) chromeViewController];
    v47 = [v49 view];
    v46 = [v47 window];
    v44 = [v46 screen];
    [v44 _car_pixelsToPoints:80.0];
    v43 = [v48 constraintGreaterThanOrEqualToAnchor:v45 constant:?];
    v55[0] = v43;
    v42 = [*(a1 + 32) chromeViewController];
    v41 = [v42 mapInsetsLayoutGuide];
    v36 = [v41 bottomAnchor];
    v40 = [*(a1 + 32) chromeViewController];
    v39 = [v40 view];
    v38 = [v39 safeAreaLayoutGuide];
    v33 = [v38 bottomAnchor];
    v37 = [*(a1 + 32) chromeViewController];
    v35 = [v37 view];
    v34 = [v35 window];
    v32 = [v34 screen];
    [v32 _car_pixelsToPoints:16.0];
    v31 = [v36 constraintLessThanOrEqualToAnchor:v33 constant:-v4];
    v55[1] = v31;
    v30 = [*(a1 + 32) chromeViewController];
    v29 = [v30 mapInsetsLayoutGuide];
    v25 = [v29 leadingAnchor];
    v28 = [*(a1 + 32) chromeViewController];
    v27 = [v28 viewportLayoutGuide];
    v22 = [v27 leadingAnchor];
    v26 = [*(a1 + 32) chromeViewController];
    v24 = [v26 view];
    v23 = [v24 window];
    v21 = [v23 screen];
    [v21 _car_pixelsToPoints:12.0];
    v20 = [v25 constraintGreaterThanOrEqualToAnchor:v22 constant:?];
    v55[2] = v20;
    v19 = [*(a1 + 32) chromeViewController];
    v18 = [v19 mapInsetsLayoutGuide];
    v5 = [v18 trailingAnchor];
    v6 = [*(a1 + 32) chromeViewController];
    v7 = [v6 viewportLayoutGuide];
    v8 = [v7 trailingAnchor];
    v9 = [*(a1 + 32) chromeViewController];
    v10 = [v9 view];
    v11 = [v10 window];
    v12 = [v11 screen];
    [v12 _car_pixelsToPoints:12.0];
    v14 = [v5 constraintLessThanOrEqualToAnchor:v8 constant:-v13];
    v55[3] = v14;
    v15 = [NSArray arrayWithObjects:v55 count:4];
    v16 = *(a1 + 32);
    v17 = *(v16 + 80);
    *(v16 + 80) = v15;

    return [NSLayoutConstraint activateConstraints:*(*(a1 + 32) + 80)];
  }

  return result;
}

void sub_100BA7684(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  [v2 setNeedsUpdateMapInsets];

  v3 = [*(a1 + 32) chromeViewController];
  v4 = [v3 mapView];
  [v4 _setApplicationState:2];

  v5 = [*(a1 + 32) chromeViewController];
  v6 = [v5 mapView];
  [v6 _setDisplayedSearchResultsType:0];

  v7 = [*(a1 + 32) chromeViewController];
  v8 = [v7 userLocationView];
  v9 = 1;
  [v8 setMode:1 animated:*(a1 + 40)];

  [*(a1 + 32) _setupGuidanceDisplays:*(a1 + 40)];
  [*(a1 + 32) refreshCameraTypeAnimated:*(a1 + 40)];
  v12 = +[MNNavigationService sharedService];
  v10 = [v12 route];
  [*(a1 + 32) setCurrentRoute:v10];

  if ([v12 navigationState] != 6)
  {
    v9 = [v12 navigationState] == 7;
  }

  [*(a1 + 32) setHasArrived:v9];
  v11 = [v12 displayEtaInfo];

  if (v11)
  {
    [*(a1 + 32) _updateDisplayETA];
  }
}

id sub_100BA9A6C(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_100BAABD4(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

id *sub_100BAB43C(id *result)
{
  if (result[5] <= 2)
  {
    v2 = result;
    [result[4] setIsInitializing:result[5] & 1];
    v3 = v2[4];

    return [v3 setDidRecordInitializing:0];
  }

  return result;
}

id sub_100BAB588(uint64_t a1)
{
  [*(a1 + 32) completeInFlightEntriesWithExitReason:12];
  v2 = *(a1 + 32);

  return [v2 createEntryForUsageType:12 value:0];
}

void sub_100BAB7AC(uint64_t a1)
{
  if ([*(a1 + 32) isPaused])
  {
    return;
  }

  v16 = [*(a1 + 32) stateManager];
  if ([v16 isDisabled])
  {

    return;
  }

  v2 = [*(a1 + 32) stateManager];
  v3 = [v2 isThrottling];

  if (v3)
  {
    return;
  }

  v4 = [*(a1 + 40) trackingState];
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if ([*(a1 + 32) isInitializing])
      {
        v5 = 14;
      }

      else
      {
        v5 = 6;
      }

      [*(a1 + 32) completeInFlightEntriesWithExitReason:v5];
      [*(a1 + 32) createEntryForUsageType:6 value:0];
      [*(a1 + 32) setIsInitializing:0];
      v6 = *(a1 + 32);
      v7 = 0;
LABEL_20:

      [v6 setDidRecordInitializing:v7];
      return;
    }

    if ([*(a1 + 32) isInitializing])
    {
      v8 = *(a1 + 32);
LABEL_18:
      if ([v8 didRecordInitializing])
      {
        return;
      }

      [*(a1 + 32) completeInFlightEntriesWithExitReason:13];
      [*(a1 + 32) createEntryForUsageType:13 value:0];
      v6 = *(a1 + 32);
      v7 = 1;
      goto LABEL_20;
    }

    v10 = [*(a1 + 40) trackingStateReason];
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = 7;
          goto LABEL_43;
        }
      }

      else
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = "GEOMarcoLiteUsageState_MarcoLiteUsageType MarcoLiteUsageTypeForARTrackingStateReason(ARTrackingStateReason)";
          v19 = 2080;
          v20 = "VIOSessionAnalyticsCapturer.m";
          v21 = 1024;
          v22 = 98;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v14 = sub_10006D178();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v18 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      switch(v10)
      {
        case 4:
          v11 = 10;
          goto LABEL_43;
        case 3:
          v11 = 9;
          goto LABEL_43;
        case 2:
          v11 = 8;
LABEL_43:
          [*(a1 + 32) completeInFlightEntriesWithExitReason:v11];
          [*(a1 + 32) createEntryForUsageType:v11 value:0];
          return;
      }
    }

    v11 = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v9 = [*(a1 + 32) isInitializing];
  v8 = *(a1 + 32);
  if (v9)
  {
    goto LABEL_18;
  }

  [v8 completeInFlightEntriesWithExitReason:11];
  v12 = *(a1 + 32);

  [v12 createEntryForUsageType:11 value:0];
}

id sub_100BAC298()
{
  if (qword_10195E948 != -1)
  {
    dispatch_once(&qword_10195E948, &stru_10164C4D8);
  }

  v1 = qword_10195E940;

  return v1;
}

int64_t sub_100BADBC4(id a1, VIOSessionAnalyticsEntry *a2, VIOSessionAnalyticsEntry *a3)
{
  v4 = a3;
  v5 = [(VIOSessionAnalyticsEntry *)a2 startDate];
  v6 = [(VIOSessionAnalyticsEntry *)v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100BB06CC(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleAnnotation];
  [v2 setCoordinate:{*(a1 + 48), *(a1 + 56)}];

  v3 = [*(a1 + 32) vehicleAnnotationView];
  v4 = [*(a1 + 40) vehicleLocation];
  [v4 course];
  [v3 _setDirection:?];

  v5 = [*(a1 + 32) vehicleAnnotationView];
  [v5 setAlpha:1.0];
}

void sub_100BB14F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 geocodedMapItem];

    v9 = sub_100067540();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (!v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SAR: forward geocode address : %@", buf, 0xCu);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100BB1870;
      v21[3] = &unk_10164C6C0;
      v22 = *(a1 + 32);
      [v5 forwardGeocodeAddress:v21];
      v14 = v22;
      goto LABEL_14;
    }

    if (v10)
    {
      v11 = [v5 geocodedMapItem];
      v12 = [v11 name];
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SAR: Opening client resolved item for address : %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = [v5 geocodedMapItem];
    v24 = v14;
    v15 = &v24;
LABEL_10:
    v20 = [NSArray arrayWithObjects:v15 count:1];
    (*(v13 + 16))(v13, v20, 0);

LABEL_14:
    goto LABEL_15;
  }

  v16 = [v6 mapItem];

  if (v16)
  {
    v17 = sub_100067540();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v7 mapItem];
      v19 = [v18 name];
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "SAR: Received location of interest with map item: %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = [v7 mapItem];
    v23 = v14;
    v15 = &v23;
    goto LABEL_10;
  }

LABEL_15:
}

uint64_t sub_100BB17B0(uint64_t a1)
{
  v2 = sub_100067540();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SAR: Showing search results for %lu map items.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100BB1870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (v5)
  {
    v7 = sub_100067540();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SAR: Received forward geocoded map item: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v11 = v5;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    (*(v9 + 16))(v9, v10, 0);
  }
}

uint64_t sub_100BB2308(uint64_t a1)
{
  v2 = +[MapsRadarComponent mapsShareETAiOSComponent];
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

id sub_100BB2B08(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = IOSSharedTripsContext;
  return objc_msgSendSuper2(&v3, "resignCurrent:", v1);
}

void sub_100BB2BD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v9.receiver = *(a1 + 32);
  v9.super_class = IOSSharedTripsContext;
  objc_msgSendSuper2(&v9, "becomeCurrent:", v2);
  v3 = [*(a1 + 32) selectedTrip];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 selectedTrip];
    [*(a1 + 32) _presentCardForSharedTrip:v5];
  }

  else if (!v4[9])
  {
    v6 = objc_alloc_init(SharedTripListContaineeViewController);
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    [*(*(a1 + 32) + 72) setDelegate:?];
  }
}

id sub_100BB2E24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _presentImagePickerWithSourceType:1];
}

id sub_100BB2EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _presentImagePickerWithSourceType:2];
}

void sub_100BB2F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_100BB3080(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100BB34C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BB34EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [UGCPhotoWithMetadata alloc];
    v6 = *(a1 + 32);
    v7 = +[NSDate date];
    v8 = [(UGCPhotoWithMetadata *)v5 initWithImageData:v6 date:v7 location:v3 source:1];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:WeakRetained name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

    v10 = objc_loadWeakRetained(WeakRetained + 7);
    v12 = v8;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 takePhotoController:WeakRetained didSelectPhotosWithMetadata:v11];
  }
}

void sub_100BB3EC0(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 56));
    v6 = [v5 addPhotosControllerRequestsAnchoringBarButtonItem:*(a1 + 32)];
    [v7 setSourceItem:v6];
  }
}

uint64_t sub_100BB4984(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 identifier];
  v6 = [v4 shortcutIdentifier];
  v7 = v6;
  if (v5 == v6)
  {

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v8 = [v5 isEqual:v6];

  if (v8)
  {
    goto LABEL_8;
  }

  if ([v4 isShortcutForSetup])
  {
    if ([v3 isSetupPlaceholder])
    {
      [v4 type];
      v9 = MapsSuggestionsShortcutTypeFromEntryType();
      if (v9 == [v3 type])
      {
        goto LABEL_8;
      }
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void sub_100BB563C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BB5660(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && [*(WeakRetained + 11) isEqualToString:*(a1 + 32)] && *(a1 + 48) == v4[2])
  {
    if (v6)
    {
      [v4 setContactImage:?];
    }

    else
    {
      v5 = [UIImage imageNamed:@"SharedTrip"];
      [v4 setContactImage:v5];
    }
  }
}

void sub_100BBA378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100BBA39C(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1[4] + 128) == v7)
  {
    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v10 = v7;
    v9 = [v7 isHidden];
    v8 = v10;
    if ((v9 & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = a3;
    }
  }
}

void sub_100BBAFB8(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
  v2 = qword_10195E970;
  qword_10195E970 = v1;
}

void sub_100BBB65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BBB680(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 48) == *(WeakRetained + 60))
  {
    v5 = [v6 imageWithRenderingMode:2];

    (*(*(a1 + 32) + 16))();
    v6 = v5;
  }
}

void sub_100BBB7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100BBB7FC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[29] setImage:v5];
  }
}

void sub_100BBBB2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100BBBB60(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == WeakRetained[60])
  {
    if (v5)
    {
      [WeakRetained setMapsImage:?];
    }

    else
    {
      [WeakRetained setDefaultImage];
    }
  }
}

void sub_100BBBBEC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && a4 && *(a1 + 40) == WeakRetained[60])
  {
    if (v8)
    {
      [WeakRetained setMapsImage:?];
    }

    else
    {
      [WeakRetained setDefaultImage];
    }
  }
}

void sub_100BBC49C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 scale];
  *&v3 = v2 * 64.0;

  qword_10195E980 = v3;
  qword_10195E988 = v3;
}

void *sub_100BBD190(void *result, uint64_t a2)
{
  v2 = result[4];
  if (*(result + 10) == *(v2 + 248))
  {
    return [*(v2 + 240) setImage:a2];
  }

  return result;
}

void sub_100BBD1C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [UIImage imageNamed:@"Fallback-Guide"];
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

void sub_100BBF988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find a LOI w/ identifier %@. Error: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100BBFB2C;
    v10[3] = &unk_10164C8C8;
    v9 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v5;
    v13 = *(a1 + 48);
    [v12 hydrateMapItemWithNetworkRequester:v9 completion:v10];
  }
}

void sub_100BBFB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138412547;
      v11 = v5;
      v12 = 2113;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed hydrating the geoMapItem for LOI w/ identifier %@. Error: %{private}@", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) mapItem];

    if (v6)
    {
      v7 = [MapsLocationOfInterest alloc];
      v8 = *(a1 + 40);
      v9 = [v8 mapItem];
      v6 = [(MapsLocationOfInterest *)v7 initWithLocationOfInterest:v8 geoMapItem:v9];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100BBFFD0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARMotionMonitorTask");
  v2 = qword_10195E998;
  qword_10195E998 = v1;
}

void sub_100BC03C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BC03E4(uint64_t a1)
{
  v2 = sub_100076A84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134349056;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Re-starting motion updates now", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _startIfNecessary];
}

void sub_100BC09DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) camera];
  [v2 eulerAngles];
  v4 = v3 * 57.2957795;
  v5 = [*(a1 + 32) camera];
  [v5 eulerAngles];
  [WeakRetained updateVisibilityWithCurrentPitch:v4 currentRoll:v6 * 57.2957795];
}

void sub_100BC1CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BC1CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100076A84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 134349314;
      v20 = WeakRetained;
      v21 = 2112;
      v22 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}p] Error monitoring device motion updates: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [v5 attitude];
    [v9 pitch];
    v11 = v10 * 57.2957795;

    v12 = [v5 attitude];
    [v12 roll];
    v14 = v13 * 57.2957795;

    v15 = sub_100076A84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_loadWeakRetained((a1 + 32));
      *buf = 134349568;
      v20 = v16;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Got device motion with pitch: %f, roll: %f", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BC1EF8;
    block[3] = &unk_10164CBF8;
    objc_copyWeak(v18, (a1 + 32));
    v18[1] = *&v11;
    v18[2] = *&v14;
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v18);
  }
}

void sub_100BC1EF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVisibilityWithCurrentPitch:*(a1 + 40) currentRoll:*(a1 + 48)];
}

NSString *__cdecl sub_100BC3640(id a1, CLLocation *a2, unint64_t a3)
{
  v3 = a2;
  [(CLLocation *)v3 probabilityPositionContextStateIndoor];
  v5 = v4;
  [(CLLocation *)v3 probabilityPositionContextStateOutdoor];
  v7 = v6;
  v8 = [(CLLocation *)v3 positionContextState];

  v9 = @"Unknown";
  if (v8 == 1)
  {
    v9 = @"Indoor";
  }

  if (v8 == 2)
  {
    v9 = @"Outdoor";
  }

  return [NSString stringWithFormat:@"in: %f, out: %f, c: %@", v5, v7, v9];
}

id sub_100BC3A6C()
{
  if (qword_10195E9B0 != -1)
  {
    dispatch_once(&qword_10195E9B0, &stru_10164CAB8);
  }

  v1 = qword_10195E9A8;

  return v1;
}

void sub_100BC3AC0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionLocationOutdoorMonitor");
  v2 = qword_10195E9A8;
  qword_10195E9A8 = v1;
}

id sub_100BC4674(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_10009B2BC(a2);
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

uint64_t sub_100BC4B28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100BC4B40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    [_TtC4Maps29MapsSharedTripAnalyticsHelper sendSuccessAnalyticFor:*(a1 + 32)];
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
    v5 = v7;
  }
}

id sub_100BC4C4C(uint64_t a1, void *a2)
{
  v3 = [a2 contact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) contact];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

id sub_100BC55C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:v3])
  {
    v4 = sub_10009B2BC(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100BC6064(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  (*(v2 + 16))(v2, v4, 0, 0);
}

void sub_100BC6630(uint64_t a1)
{
  v2 = +[MapsAppDelegate mapsIsLaunchedForTesting];
  v3 = GEOFindOrCreateLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ – invoking completion handler with result", &v14, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ – invoking completion handler with result %@", &v14, 0x16u);
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [*(a1 + 32) ticket];
  v12 = [v11 directionsResponse];
  v13 = [v12 advisoriesInfo];
  (*(v9 + 16))(v9, v10, v13);
}

uint64_t sub_100BC69A8(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ – invoking completion handler with result %@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void sub_100BC6CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BC6D24(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v20 = WeakRetained;
      v21 = 2048;
      v22 = [v7 count];
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ - MNNavigationServiceDirectionsRequestTicket completion handler called with routes (count: %ld), error: %{public}@, directionsError: %{public}@", buf, 0x2Au);
    }

    v12 = [WeakRetained isolationQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100BC6F14;
    v13[3] = &unk_101650CD8;
    v13[4] = WeakRetained;
    v14 = v8;
    v15 = v9;
    v16 = a1[4];
    v17 = v7;
    v18 = a1[5];
    dispatch_async(v12, v13);
  }
}

void sub_100BC6F14(uint64_t a1)
{
  if ([*(a1 + 32) taskState] == 1)
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      v3 = [*(a1 + 56) waypoints];
      v4 = [NSDictionary _navigation_stringTokensForDirectionsError:v2 waypoints:v3];

      v5 = [*(a1 + 40) _mapkit_errorWithDirectionsError:*(a1 + 48) stringTokens:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = [*(a1 + 32) navigationService];
    [v6 closeForClient:*(a1 + 32)];

    if ([*(a1 + 64) count])
    {
      v7 = [*(a1 + 32) ticket];
      v8 = [v7 traceRecordingData];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = *(a1 + 64);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v14 + 1) + 8 * v13) _maps_setTraceRecordingData:{v8, v14}];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    [*(a1 + 32) _createResultOnIsolationQueueWithRoutes:*(a1 + 64) error:v5 completionHandler:{*(a1 + 72), v14}];
  }
}

void sub_100BC72DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100BC72FC(uint64_t a1)
{
  result = [*(a1 + 32) taskState];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setTaskState:1];
  }

  return result;
}

void sub_100BC7418(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ - cancelling task", &v5, 0xCu);
  }

  [*(a1 + 32) setTaskState:2];
  v4 = [*(a1 + 32) ticket];
  [v4 cancel];
}

void sub_100BC7614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BC762C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BC7644(uint64_t a1)
{
  v2 = [*(a1 + 32) resultOnIsolationQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100BC7768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100BC7780(uint64_t a1)
{
  result = [*(a1 + 32) taskState];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

void sub_100BC7B1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32) && *(a1 + 40))
    {
      v3 = [GEOMapItemStorage mapItemStorageForGEOMapItem:?];
      v4 = [v3 data];
      if (v4)
      {
        v5 = v4;
        v6 = [*(a1 + 40) data];

        if (v6)
        {
          v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
          v8 = [v7 cacheDirectory];

          v9 = [v8 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_DATA.pbd"];

          v10 = [v3 data];
          v26 = 0;
          [v10 writeToFile:v9 options:1 error:&v26];
          v11 = v26;

          if (v11)
          {
            v12 = sub_10003D020();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = [v11 localizedDescription];
              *buf = 138412546;
              v28 = v9;
              v29 = 2112;
              v30 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unable to write mapItem data to file: %@ because of %@", buf, 0x16u);
            }

            [WeakRetained _deleteCachedFiles];
          }

          else
          {
            v15 = +[MSPMapsPaths mapsApplicationContainerPaths];
            v16 = [v15 cacheDirectory];

            v17 = [v16 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_LOCATION_DATA.pbd"];

            v18 = [*(a1 + 40) data];
            v25 = 0;
            [v18 writeToFile:v17 options:1 error:&v25];
            v11 = v25;

            v19 = sub_10003D020();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
            if (v11)
            {
              if (v20)
              {
                v21 = [v11 localizedDescription];
                *buf = 138412546;
                v28 = v17;
                v29 = 2112;
                v30 = v21;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Unable to write location data to file: %@ because of %@", buf, 0x16u);
              }

              [WeakRetained _deleteCachedFiles];
            }

            else
            {
              if (v20)
              {
                v22 = *(a1 + 40);
                *buf = 138412290;
                v28 = v22;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Successfully cached the userLocation:\n%@", buf, 0xCu);
              }

              v23 = sub_10003D020();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = *(a1 + 32);
                *buf = 138412290;
                v28 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Successfully cached the paymentPolygon:\n%@", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = sub_10003D020();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Either location or polygon is nil. Interpreting this as a command to delete the cache.", buf, 2u);
      }

      [WeakRetained _deleteCachedFiles];
    }
  }
}

void sub_100BC8108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v4 = [v3 cacheDirectory];

    v5 = [v4 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_DATA.pbd"];

    v6 = [[NSData alloc] initWithContentsOfFile:v5];
    if (!v6)
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v30 = 138412290;
        v31 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No mapItem is cached at this path: %@", &v30, 0xCu);
      }

      [WeakRetained _deleteCachedFiles];
      (*(*(a1 + 40) + 16))();
      goto LABEL_16;
    }

    v7 = [[GEOMapItemStorage alloc] initWithData:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v7 hasExpiredComponents])
      {
        v14 = +[MSPMapsPaths mapsApplicationContainerPaths];
        v15 = [v14 cacheDirectory];

        v16 = [v15 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_LOCATION_DATA.pbd"];

        v17 = [[NSData alloc] initWithContentsOfFile:v16];
        if (v17)
        {
          v18 = [[GEOLocation alloc] initWithData:v17];
          v19 = [*(a1 + 32) latLng];
          [v19 coordinate];
          v20 = [v18 latLng];
          [v20 coordinate];
          GEOCalculateDistance();
          v22 = v21;

          [v7 cachingRadiusMeters];
          v24 = v23;
          v25 = sub_10003D020();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
          if (v22 <= v24)
          {
            if (v26)
            {
              v30 = 138412290;
              v31 = v7;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found mapItem to uncache:\n%@", &v30, 0xCu);
            }

            v28 = *(*(a1 + 40) + 16);
          }

          else
          {
            if (v26)
            {
              v27 = [NSNumber numberWithDouble:v22];
              v30 = 138412546;
              v31 = v27;
              v32 = 2048;
              v33 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Distance:%@ > Caching Radius:%g", &v30, 0x16u);
            }

            [WeakRetained _deleteCachedFiles];
            v28 = *(*(a1 + 40) + 16);
          }

          v28();
        }

        else
        {
          v29 = sub_10003D020();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "No locationData is cached at this path: %@", &v30, 0xCu);
          }

          [WeakRetained _deleteCachedFiles];
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_12;
      }

      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v30) = 0;
        v9 = "mapItem has expired. It's too old.";
        v10 = v8;
        v11 = 2;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v30, v11);
      }
    }

    else
    {
      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v30 = 138412546;
        v31 = v5;
        v32 = 2112;
        v33 = *&v7;
        v9 = "mapItem cannot be formed with the data cached at this path: %@. mapItem: %@";
        v10 = v8;
        v11 = 22;
        goto LABEL_10;
      }
    }

    [WeakRetained _deleteCachedFiles];
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v12);
LABEL_12:

LABEL_16:
  }
}

void sub_100BC85AC(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v3 = [v2 cacheDirectory];

  v4 = [v3 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_DATA.pbd"];

  v14 = 0;
  [v1 removeItemAtPath:v4 error:&v14];
  v5 = v14;
  if (v5 && [v1 fileExistsAtPath:v4])
  {
    v6 = sub_10003D020();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error removing cached mapItem at path:%@", buf, 0xCu);
    }
  }

  v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v8 = [v7 cacheDirectory];

  v9 = [v8 stringByAppendingPathComponent:@"TRANSIT_PAY_PAYMENT_POLYGON_LOCATION_DATA.pbd"];

  v13 = 0;
  [v1 removeItemAtPath:v9 error:&v13];
  v10 = v13;
  if (v10 && [v1 fileExistsAtPath:v9])
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error removing cached mapItem at path:%@", buf, 0xCu);
    }
  }

  v12 = sub_10003D020();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleted cached location and mapItem files at: %@ and %@", buf, 0x16u);
  }
}

void sub_100BC8AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100BC8C20();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v7 = 134349312;
      v8 = WeakRetained;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Charging state updated: %ld", &v7, 0x16u);
    }

    v5 = [WeakRetained thermalPressureController];
    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 currentThermalPressureLevel]);
    +[GEOAPPortal captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:](GEOAPPortal, "captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:", 4, v6, [WeakRetained _mapType], 0, objc_msgSend(WeakRetained, "_chargingState"));
  }
}

id sub_100BC8C20()
{
  if (qword_10195E9C0 != -1)
  {
    dispatch_once(&qword_10195E9C0, &stru_10164CC18);
  }

  v1 = qword_10195E9B8;

  return v1;
}

void sub_100BC8C74(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ThermalPressureAnalyticsTask");
  v2 = qword_10195E9B8;
  qword_10195E9B8 = v1;
}

void sub_100BC8DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100BC8C20();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v9 = 134349568;
      v10 = WeakRetained;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Nav state updated: %lu -> %lu", &v9, 0x20u);
    }

    if (MNNavigationServiceStateChangedToNavigating())
    {
      v6 = 1;
LABEL_8:
      v7 = [WeakRetained thermalPressureController];
      v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 currentThermalPressureLevel]);
      +[GEOAPPortal captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:](GEOAPPortal, "captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:", v6, v8, [WeakRetained _mapType], 0, objc_msgSend(WeakRetained, "_chargingState"));

      goto LABEL_9;
    }

    if (MNNavigationServiceStateChangedFromNavigatingToStopped())
    {
      v6 = 2;
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_100BC8FF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100BC8C20();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v6 = 134349312;
      v7 = WeakRetained;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Thermal pressure updated: %d", &v6, 0x12u);
    }

    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    +[GEOAPPortal captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:](GEOAPPortal, "captureNavThermalPressureTrigger:thermalPressure:navMapType:supressedFeatures:chargingState:", 3, v5, [WeakRetained _mapType], 0, objc_msgSend(WeakRetained, "_chargingState"));
  }
}

void sub_100BC9204(uint64_t a1)
{
  v2 = [*(a1 + 32) platformController];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];
  v5 = [v4 _mapLayer];

  if (v5)
  {
    if ([v5 enableGlobe])
    {
      v6 = [v5 isShowingCuratedElevatedGround];
      v7 = *(*(a1 + 40) + 8);
      if (v6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = 3;
    }

    *(v7 + 24) = v8;
  }

  else
  {
    v9 = sub_100BC8C20();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 134349056;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] There is no map layer; cannot determine map type", &v11, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

id sub_100BC9DB4(uint64_t a1)
{
  [*(a1 + 32) applyTransitionWithProgress:0.0];
  v2 = *(a1 + 40);

  return [v2 applyTransitionWithProgress:1.0];
}

id sub_100BC9E08(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = *(a1 + 40);

  return [v2 applyTransitionWithProgress:1.0];
}

id sub_100BCA170(uint64_t a1)
{
  [*(a1 + 32) applyTransitionWithProgress:0.0];
  v2 = *(a1 + 40);

  return [v2 applyTransitionWithProgress:1.0];
}

id sub_100BCA1B4(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  [*(a1 + 40) applyTransitionWithProgress:1.0];
  v2 = *(a1 + 48);

  return [v2 didCompleteModeTransition];
}

id sub_100BCA54C(uint64_t a1)
{
  [*(a1 + 32) applyTransitionWithProgress:0.0];
  v2 = *(a1 + 40);

  return [v2 applyTransitionWithProgress:1.0];
}

id sub_100BCAC04(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  v4 = *(*(a1 + 32) + 24);

  return [v4 setAlpha:v3];
}

void *sub_100BCAC54(void *result, int a2)
{
  if (a2)
  {
    return [*(result[4] + 24) setHidden:(result[5] & 1) == 0];
  }

  return result;
}

void sub_100BCD590(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10195E9C8;
  qword_10195E9C8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195E9C8 setLocale:v3];

  v4 = qword_10195E9C8;

  [v4 setNumberStyle:2];
}

void sub_100BCE054(uint64_t a1)
{
  v1 = [*(a1 + 32) searchBar];
  [v1 becomeFirstResponder];
}

void sub_100BD0ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _expirationTimerFired];
}

void sub_100BD137C(uint64_t a1)
{
  v2 = sub_1000410AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ %@, success = YES, cacheKey = %@", &v7, 0x20u);
  }
}

void sub_100BD146C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = *(a1 + 40);
    v9 = 138413058;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ %@, error = %@, cacheKey = %@", &v9, 0x2Au);
  }
}

void sub_100BD177C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BD17A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BD1894;
  v9[3] = &unk_10165E728;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v13);
}

void sub_100BD1894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleResult:*(a1 + 32) error:*(a1 + 40) cacheKey:*(a1 + 48)];
}

id sub_100BD3038()
{
  if (qword_10195E9F0 != -1)
  {
    dispatch_once(&qword_10195E9F0, &stru_10164CEB8);
  }

  v1 = qword_10195E9E8;

  return v1;
}

void sub_100BD308C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningWaypointListView");
  v2 = qword_10195E9E8;
  qword_10195E9E8 = v1;
}

void sub_100BD32CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained performDeleteAtIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

BOOL sub_100BD34C8(id a1, SearchFieldItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SearchFieldItem *)a2 composedWaypoint:a3];
  v5 = [v4 isServerProvidedWaypoint];

  return v5 ^ 1;
}

void sub_100BD4128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BD4164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained performDeleteAtIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_100BD4E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BD4E44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BD4E5C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v12;
  if (isKindOfClass)
  {
    v9 = v12;
    v10 = [v9 currentText];
    v11 = [v10 length];

    if (!v11)
    {
      *a4 = 1;
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    }

    v8 = v12;
  }
}

void sub_100BD59A0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(*(a1 + 32) + 48) count] == (a3 + 1))
  {
    *a4 = 1;
  }

  else
  {
    v8 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a3];
    v7 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [*(a1 + 32) _layoutDottedLineForCell:v8 atIndexPath:v7];
  }
}

BOOL sub_100BD5BB8(id a1, UITableViewCell *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100BD6A38(id a1)
{
  v1 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = qword_10195E9D8;
  qword_10195E9D8 = v1;
}

void sub_100BD76C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [RoutePlanningWaypointCell alloc];
  v16 = v7;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v12 + 8));
  v14 = [(RoutePlanningWaypointCell *)v8 initWithWaypoints:v9 waypointIndex:v10 editable:v11 delegate:v12 waypointInfoProvider:WeakRetained cellIndex:a3];
  [v6 addObject:v14];

  if (*(a1 + 48) - 1 == a3)
  {
    *a4 = 1;
  }
}

BOOL sub_100BD79B0(id a1, SearchFieldItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SearchFieldItem *)a2 composedWaypoint:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 isServerProvidedWaypoint];
  return v7 ^ 1;
}

void sub_100BD87A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BD87C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutDottedLines];
}

void sub_100BD8C6C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100BD8F80;
  v21[3] = &unk_101661A90;
  v2 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v2;
  v3 = objc_retainBlock(v21);
  v4 = [*(a1 + 40) title];
  v5 = [*(a1 + 40) message];
  v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = [*(a1 + 40) openAppCommandTitle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100BD9010;
  v18[3] = &unk_10165F668;
  v19 = *(a1 + 40);
  v8 = v3;
  v20 = v8;
  v9 = [UIAlertAction actionWithTitle:v7 style:0 handler:v18];
  [v6 addAction:v9];

  v10 = [*(a1 + 40) dismissCommandTitle];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100BD9054;
  v16[3] = &unk_101660728;
  v11 = v8;
  v17 = v11;
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:v16];
  [v6 addAction:v12];

  objc_storeStrong((*(a1 + 32) + 16), v6);
  objc_initWeak(&location, v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100BD9064;
  v13[3] = &unk_10164CEE0;
  objc_copyWeak(&v14, &location);
  [*(a1 + 40) setDidSupersede:v13];
  [*(a1 + 48) presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_100BD8F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BD8F80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [*(a1 + 40) cause];
  if (v4 <= 3)
  {
    v5 = 4u >> (v4 & 0xF);
    v6 = [*(a1 + 32) appCoordinator];
    [v6 dismissRidesharingSessionAndReturnToRoutePlanning:v5 & 1];
  }
}

uint64_t sub_100BD9010(uint64_t a1)
{
  [*(a1 + 32) openApp];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100BD9064(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained presentingViewController];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100BD9734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BD9770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appCoordinator];
  [v1 dismissRidesharingSessionAndReturnToRoutePlanning:1];
}

id sub_100BD9980()
{
  v0 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v0 setHidesWhenStopped:1];

  return v0;
}

id sub_100BD99D0()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"Error Reporting Issue [RAP]" value:@"localized string not found" table:0];

  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Error Reporting Issue Description [RAP]" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OK [RAP]" value:@"localized string not found" table:0];

  v6 = [UIAlertController alertControllerWithTitle:v1 message:v3 preferredStyle:1];
  v7 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];
  [v6 addAction:v7];

  return v6;
}

void sub_100BD9B50(id a1)
{
  byte_10195EA08 = SBSIsSystemApertureAvailable();
  v1 = sub_100BD9C24();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10195EA08)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    v3 = v2;
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Current device is island device: %@", &v4, 0xCu);
  }
}

id sub_100BD9C24()
{
  if (qword_10195EA20 != -1)
  {
    dispatch_once(&qword_10195EA20, &stru_10164CF40);
  }

  v1 = qword_10195EA18;

  return v1;
}

void sub_100BD9C78(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFDeviceInfo");
  v2 = qword_10195EA18;
  qword_10195EA18 = v1;
}

void sub_100BD9D04(id a1)
{
  byte_10195E9F8 = MGGetSInt32Answer() == 2;
  v1 = sub_100BD9C24();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10195E9F8)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    v3 = v2;
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Current device is notch device: %@", &v4, 0xCu);
  }
}

void sub_100BDB7B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100BDB7E4(id *a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] stopAnimating];
    [a1[5] setAccessoryView:0];
    v4 = [v7 description];
    v5 = [UIAlertController alertControllerWithTitle:@"Error fetching diagnostics string from Watch" message:v4 preferredStyle:1];

    v6 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [v5 addAction:v6];

    [WeakRetained presentViewController:v5 animated:1 completion:0];
  }
}

void sub_100BDB8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BDBD2C;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100BDB98C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BDBAA0;
  v9[3] = &unk_10164CFB8;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v6;
  v14 = a1[6];
  v11 = a1[4];
  v12 = a1[5];
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v15);
}

void sub_100BDBAA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      [*(a1 + 40) stopAnimating];
      v3 = [UIImage kitImageNamed:@"UIAccessoryButtonCheckmark"];
      v4 = [v3 imageWithRenderingMode:2];

      v5 = [[UIImageView alloc] initWithImage:v4];
      v6 = +[UIColor systemGreenColor];
      [v5 setTintColor:v6];

      [v5 sizeToFit];
      [*(a1 + 48) setAccessoryView:v5];
      v7 = *(a1 + 56);
      v8 = +[UIPasteboard generalPasteboard];
      [v8 setString:v7];

      NSLog(@"Paired Watch Diagnostic String: %@", *(a1 + 56));
      v9 = NSTemporaryDirectory();
      v10 = [v9 stringByAppendingPathComponent:@"Diagnostics.txt"];
      v11 = [NSURL fileURLWithPath:v10];

      v12 = *(a1 + 56);
      v17 = 0;
      [v12 writeToURL:v11 atomically:1 encoding:4 error:&v17];
      v13 = v17;
      if (!v13)
      {
        v14 = [[MapsDebugFileExportController alloc] initWithFileAtURL:v11 presentingViewController:WeakRetained];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100BDBCD0;
        v15[3] = &unk_101661B18;
        v16 = v11;
        [(MapsDebugFileExportController *)v14 startWithCompletion:v15];
      }
    }
  }
}

void sub_100BDBCD0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_100BDC2EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100BDC318(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained navigationController];

    if (v6)
    {
      [*(a1 + 32) stopAnimating];
      v7 = [v5 tableView];
      [v7 setTableHeaderView:0];

      v8 = [v3 description];
      v9 = [UIAlertController alertControllerWithTitle:@"Error Communicating with Watch" message:v8 preferredStyle:1];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100BDC794;
      v11[3] = &unk_101658AF0;
      objc_copyWeak(&v12, (a1 + 40));
      v10 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v11];
      [v9 addAction:v10];

      [v5 presentViewController:v9 animated:1 completion:0];
      objc_destroyWeak(&v12);
    }
  }
}

void sub_100BDC4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BDC780;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100BDC554(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BDC654;
  block[3] = &unk_10164CF68;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v6;
  v13 = a1[5];
  v11 = a1[4];
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v14);
}

void sub_100BDC654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if (*(a1 + 32))
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [*(a1 + 40) stopAnimating];
      v3 = [v10 tableView];
      [v3 setTableHeaderView:0];

      objc_storeStrong(v10 + 14, *(a1 + 48));
      v4 = [*(a1 + 48) objectForKeyedSubscript:@"ActiveTileGroupData"];

      if (v4)
      {
        v5 = [GEOActiveTileGroup alloc];
        v6 = [*(a1 + 48) objectForKeyedSubscript:@"ActiveTileGroupData"];
        v7 = [v5 initWithData:v6];
        v8 = v10[15];
        v10[15] = v7;
      }

      v9 = [v10 tableView];
      [v9 reloadData];
    }

    WeakRetained = v10;
  }
}

void sub_100BDC794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void sub_100BDCB18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 startNavigationWithDetails:v3 error:&v14];
  v5 = v14;
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started navigation. details=%@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 40);
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to start navigation. error=%@, details=%@", buf, 0x16u);
  }

  v10 = +[GEOPlatform sharedPlatform];
  v11 = [v10 isInternalInstall];

  if (v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100BDCCE4;
    v12[3] = &unk_101661B18;
    v13 = v5;
    dispatch_async(&_dispatch_main_q, v12);
    v7 = v13;
LABEL_8:
  }
}

void sub_100BDCCE4(uint64_t a1)
{
  v5 = [NSString stringWithFormat:@"Error: %@", *(a1 + 32)];
  v1 = [UIAlertController alertControllerWithTitle:@"Navigation failed to start [Internal Only]" message:v5 preferredStyle:1];
  v2 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v1 addAction:v2];

  v3 = +[UIApplication _maps_keyMapsSceneDelegate];
  v4 = [v3 topMostPresentedViewController];
  [v4 presentViewController:v1 animated:1 completion:0];
}

MapViewModeGridButtonView *sub_100BDDCA0(uint64_t a1)
{
  v2 = [[MapViewModeGridButtonView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapViewModeGridButtonView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) addSubview:v2];

  return v2;
}

id sub_100BDDD0C(uint64_t a1)
{
  v2 = objc_alloc_init(UILayoutGuide);
  [*(a1 + 32) addLayoutGuide:v2];

  return v2;
}

void sub_100BDDE5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 setViewModel:v5];
}

void sub_100BDEA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BDEA20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BDEA38(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100BDF260(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 sectionIdentifier];
  v4 = [v3 numberOfSections];

  v5 = [NSNumber numberWithInteger:v4];
  [*(*(a1 + 32) + 56) setObject:v5 forKeyedSubscript:v9];

  v6 = [NSNumber numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  [*(*(a1 + 32) + 64) setObject:v6 forKeyedSubscript:v9];

  v7 = *(*(a1 + 32) + 72);
  v8 = [NSNumber numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  [v7 setObject:v9 forKeyedSubscript:v8];

  *(*(*(a1 + 40) + 8) + 24) += v4;
}

void sub_100BDF5D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHost:v3];
  v5 = *(*(a1 + 32) + 40);
  v6 = [v4 sectionIdentifier];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

void sub_100BDFA20(uint64_t a1)
{
  v2 = sub_1007995B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = "hide";
    }

    else
    {
      v3 = "show";
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will %s all sections...", &v4, 0xCu);
  }

  *(*(a1 + 32) + 80) = *(a1 + 40);
}

id sub_100BE0214(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_getAssociatedObject(v6, "defaultCollectionViewLayout");
  v8 = [v7 collectionView];
  v9 = [v8 dataSource];

  if (!v9)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "+[RoutePlanningOutlineController defaultCollectionViewLayout]_block_invoke";
      v35 = 2080;
      v36 = "RoutePlanningOutlineController.m";
      v37 = 1024;
      LODWORD(v38[0]) = 77;
      WORD2(v38[0]) = 2080;
      *(v38 + 6) = "controller != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v28 = sub_100BE0768();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v7 collectionView];
      v30 = [v7 collectionView];
      v31 = [v30 dataSource];
      *buf = 138478339;
      v34 = v7;
      v35 = 2113;
      v36 = v29;
      v37 = 2113;
      v38[0] = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "No controller for returning a collectionview layout section. layout: %{private}@, collectionView: %{private}@, dataSource: %{private}@", buf, 0x20u);
    }
  }

  v10 = [v9 outlineSectionAtIndex:a2];
  v11 = [v9 _localSectionForGlobalSectionIndex:a2 forSection:v10];
  v12 = [v10 layoutSectionAtIndex:v11 layoutEnvironment:v5];
  if (!v12)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "+[RoutePlanningOutlineController defaultCollectionViewLayout]_block_invoke";
      v35 = 2080;
      v36 = "RoutePlanningOutlineController.m";
      v37 = 1024;
      LODWORD(v38[0]) = 86;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v16 = sub_100BE0768();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v34 = v10;
      v35 = 2048;
      v36 = a2;
      v37 = 2048;
      v38[0] = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "outline section did not provide a layout.  outlineSection: %{public}@, section: %ld, localSection: %ld", buf, 0x20u);
    }

    v12 = [*(a1 + 32) defaultLayoutSectionInLayoutEnvironment:v5];
  }

  v17 = [v10 wantsDefaultPaddingAboveSection];
  if (v11)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 == 0;
  }

  if (!v18 && [v9 _positionOfSection:v10])
  {
    [v12 contentInsets];
    +[_TtC4Maps23MapsDesignConstantsShim discreteListRowSpacing];
    [v12 setContentInsets:?];
  }

  if ([v9 totalAvailableSections] - 1 == a2)
  {
    v19 = [NSCollectionLayoutDimension estimatedDimension:1.0];
    v20 = [NSCollectionLayoutDimension estimatedDimension:1.0];
    v21 = [NSCollectionLayoutSize sizeWithWidthDimension:v19 heightDimension:v20];
    v22 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v21 elementKind:UICollectionElementKindSectionFooter alignment:4];
    v32 = v22;
    v23 = [NSArray arrayWithObjects:&v32 count:1];
    [v12 setBoundarySupplementaryItems:v23];
  }

  return v12;
}

id sub_100BE0768()
{
  if (qword_10195EA30 != -1)
  {
    dispatch_once(&qword_10195EA30, &stru_10164D1B8);
  }

  v1 = qword_10195EA28;

  return v1;
}

void sub_100BE07BC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningOutlineController");
  v2 = qword_10195EA28;
  qword_10195EA28 = v1;
}

id sub_100BE1374()
{
  if (qword_10195EA40 != -1)
  {
    dispatch_once(&qword_10195EA40, &stru_10164D1D8);
  }

  v1 = qword_10195EA38;

  return v1;
}

void sub_100BE13C8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionSunsetSunriseMonitor");
  v2 = qword_10195EA38;
  qword_10195EA38 = v1;
}

void sub_100BE221C(id a1)
{
  v1 = qword_10195EA48;
  qword_10195EA48 = &off_1016ED6A0;
}

uint64_t sub_100BE2DF0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100BE2EB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100BE2F68(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  v3 = [v2 pptTestScrollView];

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100BE3014;
  v5[3] = &unk_10164F548;
  v5[4] = v4;
  [v4 _performScrollTestOfScrollView:v3 completion:v5];
}

id sub_100BE3014(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 results];
  [v5 addEntriesFromDictionary:v4];

  v6 = *(a1 + 32);

  return [v6 finishedTest];
}

id sub_100BE3160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100BE31D8;
  v3[3] = &unk_101661B18;
  v3[4] = v1;
  return [v1 _dispatchAfterShortDelay:v3];
}

void sub_100BE35DC(id a1)
{
  v1 = [MapsSuggestionsNavdLBALocationManager alloc];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("MapsSuggestionsNavdLBALocationManagerQueue", v5);
  v3 = [(MapsSuggestionsNavdLBALocationManager *)v1 initWithName:@"MapsSuggestionsNavdLBALocationManager" queue:v2];
  v4 = qword_10195EA58;
  qword_10195EA58 = v3;
}

BOOL sub_100BE3988(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t sub_100BE5B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didPresentContainee:*(a1 + 40) finished:1];

  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 48)];
  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v3 didResignContainee:*(a1 + 48) finished:1];

  [*(a1 + 40) didBecomeCurrent];
  v4 = [*(a1 + 40) view];
  [v4 setUserInteractionEnabled:1];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v5 transitionEnded];

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))();
  }

  [*(a1 + 32) setViewControllerTransitioning:0];
  [*(a1 + 32) dequeueWaitingContainees];
  result = *(a1 + 64);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void sub_100BE5C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didPresentContainee:*(a1 + 40) finished:1];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v3 didResignContainee:*(a1 + 48) finished:1];

  [*(a1 + 40) didBecomeCurrent];
  v4 = [*(a1 + 40) view];
  [v4 setUserInteractionEnabled:1];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v5 transitionEnded];

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8 = [v7 topMostPresentedViewController];
  v9 = [v8 transitionCoordinator];

  if (v9)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100BE66F8;
    v14[3] = &unk_10164D2A8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 64);
    [v9 animateAlongsideTransition:0 completion:v14];
  }

  else
  {
    [*(a1 + 32) setViewControllerTransitioning:0];
    [*(a1 + 32) dequeueWaitingContainees];
  }

  v10 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v11 = [v10 view];
  [v11 setNeedsLayout];

  v12 = [*(a1 + 40) cardPresentationController];
  [*(a1 + 40) setModalTransitionStyle:{objc_msgSend(v12, "modalDismissStyle")}];

  if (!v9)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, 1);
    }
  }
}

void sub_100BE5E58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained updateMapEdgeInsets];
}

id sub_100BE5EBC(id result)
{
  v1 = result;
  v2 = *(result + 7);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      CGAffineTransformMakeScale(&v10, 0.970000029, 0.970000029);
      v3 = *(v1 + 4);
      v11 = *&v10.a;
      v12 = *&v10.c;
      v4 = *&v10.tx;
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      [*(result + 6) willMoveToParentViewController:0];
      [*(v1 + 4) bounds];
      v6 = -v5;
      if (*(v1 + 81))
      {
        v6 = v5;
      }

      CGAffineTransformMakeTranslation(&v8, v6, 0.0);
      v3 = *(v1 + 4);
      v11 = *&v8.a;
      v12 = *&v8.c;
      v4 = *&v8.tx;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    [*(result + 6) willMoveToParentViewController:0];
    CGAffineTransformMakeTranslation(&v9, 0.0, *(v1 + 8));
    v3 = *(v1 + 4);
    v11 = *&v9.a;
    v12 = *&v9.c;
    v4 = *&v9.tx;
  }

  else
  {
    [*(result + 5) deltaHeight];
    CGAffineTransformMakeTranslation(&v14, 0.0, fmax(*(v1 + 8) - *(v1 + 9), 0.0) + v7);
    v3 = *(v1 + 4);
    v11 = *&v14.a;
    v12 = *&v14.c;
    v4 = *&v14.tx;
  }

  v13 = v4;
  return [v3 setTransform:&v11];
}

void sub_100BE5FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [v3 didMoveToParentViewController:WeakRetained];

    [*(a1 + 32) didChangeLayout:*(a1 + 64)];
    [*(a1 + 48) setUserInteractionEnabled:1];
    v6 = objc_loadWeakRetained((*(a1 + 40) + 24));
    [v6 didPresentContainee:*(a1 + 32) finished:a2];
  }

  v7 = *(a1 + 56);

  dispatch_group_leave(v7);
}

void sub_100BE608C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1 && (*(a1 + 89) & 1) == 0 && !*(a1 + 32))
  {
    [*(a1 + 40) setModalPresenter:*(a1 + 48)];
  }

  if ((*(a1 + 89) & 1) != 0 || (*(a1 + 88) & 1) == 0)
  {
    v21 = a2;
    v4 = objc_opt_new();
    v5 = *(a1 + 56);
    if (!v5)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = v5;
      v6 = [v5 constraints];
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 firstItem];
          v13 = v12;
          if (v12 == *(a1 + 56))
          {
          }

          else
          {
            v14 = [v11 secondItem];
            v15 = *(a1 + 56);

            if (v14 != v15)
            {
              continue;
            }
          }

          [v4 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
LABEL_20:

      v16 = [v22 superview];

      v5 = v16;
      if (!v16)
      {
LABEL_21:
        [NSLayoutConstraint deactivateConstraints:v4];
        [*(a1 + 56) removeFromSuperview];
        WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 24));
        [WeakRetained removeCardforViewController:*(a1 + 48)];

        v18 = *(a1 + 56);
        v19 = *&CGAffineTransformIdentity.c;
        v23[0] = *&CGAffineTransformIdentity.a;
        v23[1] = v19;
        v23[2] = *&CGAffineTransformIdentity.tx;
        [v18 setTransform:v23];
        [*(a1 + 48) removeFromParentViewController];
        [*(*(a1 + 64) + 8) removeObjectForKey:*(a1 + 48)];

        a2 = v21;
        break;
      }
    }
  }

  if (*(a1 + 90) == 1 && (*(a1 + 91) & 1) == 0)
  {
    [*(a1 + 72) setModalPresenter:0];
  }

  if (*(a1 + 92) == 1)
  {
    [*(a1 + 48) shoulDismissForVerticalSwipe_nonUIKitCardsOnly];
  }

  v20 = objc_loadWeakRetained((*(a1 + 64) + 24));
  [v20 didResignContainee:*(a1 + 48) finished:a2];

  dispatch_group_leave(*(a1 + 80));
}

void sub_100BE632C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100BE66B0;
    v8[3] = &unk_101661B18;
    v8[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v8];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained transitionEnded];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  if (*(a1 + 57) == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BE66B8;
    block[3] = &unk_101661B18;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [*(a1 + 32) setViewControllerTransitioning:0];
    [*(a1 + 32) dequeueWaitingContainees];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  [@"com.apple.Maps" UTF8String];
  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CardPresentationDuration", "", v6, 2u);
  }
}

uint64_t sub_100BE64E4(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100BE6504(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = [WeakRetained view];
  [v3 setNeedsLayout];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

uint64_t sub_100BE65A4(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 40) = 0;
  return result;
}

void sub_100BE65DC(void *a1)
{
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v2 = [WeakRetained view];
  [v2 layoutIfNeeded];
}

uint64_t sub_100BE665C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_100BE66B8(uint64_t a1)
{
  [*(a1 + 32) setViewControllerTransitioning:0];
  v2 = *(a1 + 32);

  return [v2 dequeueWaitingContainees];
}

uint64_t sub_100BE66F8(uint64_t a1)
{
  [*(a1 + 32) setViewControllerTransitioning:0];
  [*(a1 + 32) dequeueWaitingContainees];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100BE6BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BE6C08(uint64_t a1)
{
  v2 = sub_10000F504();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134349056;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}p] Transition finished", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 dequeueWaitingContainees];
}

void sub_100BE7134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BE7158(uint64_t a1)
{
  v2 = sub_10000F504();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134349056;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}p] Transition finished", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 dequeueWaitingContainees];
}

UIColor *__cdecl sub_100BE894C(id a1, UITraitCollection *a2)
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

void sub_100BE8C3C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  dispatch_group_leave(*(a1 + 32));
  if (!v6 || v7)
  {
    v8 = sub_1007982D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error parsing description HTML: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100BE94D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100BE9510(uint64_t a1)
{
  v2 = sub_1007982D8();
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "ParseRichText", "", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [WeakRetained _mergeRichTextCollectionDescription:*(*(*(a1 + 48) + 8) + 40) itemDescriptions:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v6);
  }

  return result;
}

void sub_100BEA0D8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = objc_alloc_init(MapsActivity);
    [(MapsActivity *)v3 setDirectionsPlan:*(a1 + 32)];
    [(MapsActivity *)v3 data];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BEA1BC;
    v6 = block[3] = &unk_101661B18;
    v4 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {

    dispatch_async(&_dispatch_main_q, &stru_10164D4D8);
  }
}

void sub_100BEA1BC(uint64_t a1)
{
  v2 = sub_100028730();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_saveDirectionPlan: will save plan", v5, 2u);
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:*(a1 + 32) forKey:@"NavigationUserActivityDefault"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"NavigationRestorationAttempts"];
}

void sub_100BEA278(id a1)
{
  v1 = sub_100028730();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "_saveDirectionPlan: will remove saved data", v4, 2u);
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"NavigationUserActivityDefault"];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"NavigationRestorationAttempts"];
}

void sub_100BEB594(id a1, id a2, RAPPlacecardImageryQuestion *a3)
{
  v3 = a3;
  [(RAPQuestion *)v3 _setComplete:[(RAPPlacecardImageryQuestion *)v3 isComplete]];
}

void sub_100BEBAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BEBAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a3 && [v7 count])
    {
      v6 = [v7 firstObject];
      [WeakRetained updateWithReverseGeocodedMapItem:v6];
    }

    (*(*(a1 + 32) + 16))();
  }
}

id sub_100BEBEB0()
{
  if (qword_10195EA80 != -1)
  {
    dispatch_once(&qword_10195EA80, &stru_10164D5A0);
  }

  v1 = qword_10195EA78;

  return v1;
}

void sub_100BEBF04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavSignLabel");
  v2 = qword_10195EA78;
  qword_10195EA78 = v1;
}

void sub_100BEC90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BEC934(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BEC94C(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v13;
  if (isKindOfClass)
  {
    v6 = v13;
    v7 = [v6 image];
    [v7 size];
    v9 = v8;
    v10 = [*(*(*(a1 + 32) + 8) + 40) image];
    [v10 size];
    v12 = v11;

    if (v9 > v12)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    }

    v5 = v13;
  }
}

void sub_100BEEE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BEEE54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained editNameRowAtIndexPath:*(a1 + 32) completion:0];
    WeakRetained = v3;
  }
}

void sub_100BEF008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BEF030(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BEF0E8;
  v9[3] = &unk_101661760;
  v10 = v5;
  v8 = v5;
  [WeakRetained editNameRowAtIndexPath:v7 completion:v9];
}

void sub_100BEF238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BEF25C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained shareRowAtIndexPath:*(a1 + 32) completion:0];
    WeakRetained = v3;
  }
}

void sub_100BEF394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100BEF3B0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2, 1);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained shareRowAtIndexPath:*(a1 + 32) completion:&stru_10164D5E8];
}

void sub_100BEF55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BEF580(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained deleteRowAtIndexPath:*(a1 + 32) completion:0];
    WeakRetained = v3;
  }
}

void sub_100BEF6B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100BEF6D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RDS _deleteAction", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteRowAtIndexPath:*(a1 + 32) completion:v3];
}

void sub_100BF0774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_100BF0794(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained currentContent];
    v5 = [v4 mutableCopy];

    v6 = [a1[4] row];
    if (v6 < [v5 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = a1[5], v7, v7 == v8))
    {
      [v5 removeObjectAtIndex:v6];
      v10 = [v5 copy];
      v11 = v3[17];
      v3[17] = v10;

      v9 = [v3 tableView];
      v22 = a1[4];
      v12 = [NSArray arrayWithObjects:&v22 count:1];
      [v9 deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }

    else
    {
      v9 = sub_10000BDA4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Wrong collection item found at index %d after confirming deletion", buf, 8u);
      }
    }

    v13 = v3[15];
    v14 = [NSSet setWithObject:a1[5]];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BF0A8C;
    v15[3] = &unk_10164D5C8;
    objc_copyWeak(&v19, a1 + 7);
    v18 = a1[6];
    v16 = a1[4];
    v17 = a1[5];
    [v13 removeObjects:v14 completion:v15];

    objc_destroyWeak(&v19);
  }
}

uint64_t sub_100BF0A24(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100BF0A8C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    v6 = WeakRetained;
    if (v5)
    {
      (*(v5 + 16))(v5, a2 == 0);
      WeakRetained = v6;
    }

    if (!a2)
    {
      [WeakRetained sendAnalyticsForDataAtIndexPath:*(a1 + 32) object:*(a1 + 40) action:2009];
      WeakRetained = v6;
    }
  }
}

void sub_100BF11D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v2[2] = 4;
    [v2 logEvent];
    v3 = sub_1007982D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged guide home closed.", v4, 2u);
    }
  }
}

void sub_100BF130C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v2[2] = 8;
    [v2 logEvent];
    v3 = sub_1007982D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged scroll down.", v4, 2u);
    }
  }
}

void sub_100BF1444(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v2[2] = 7;
    [v2 logEvent];
    v3 = sub_1007982D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged scroll up.", v4, 2u);
    }
  }
}

void sub_100BF160C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    *(v3 + 2) = 244;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
    v5 = *(v3 + 3);
    *(v3 + 3) = v4;

    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) muid]);
    v7 = *(v3 + 8);
    *(v3 + 8) = v6;

    v8 = [NSNumber numberWithBool:*(a1 + 80)];
    v9 = *(v3 + 4);
    *(v3 + 4) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v11 = *(v3 + 5);
    *(v3 + 5) = v10;

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    v13 = *(v3 + 7);
    *(v3 + 7) = v12;

    objc_storeStrong(v3 + 2, *(a1 + 48));
    [v3 logEvent];
    v14 = sub_1007982D8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged tapped filtered guide.", v15, 2u);
    }
  }
}

void sub_100BF182C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 204;
    v4 = objc_alloc_init(NSMutableString);
    v5 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100BF1970;
    v11[3] = &unk_10164D688;
    v12 = v5;
    v6 = v4;
    v13 = v6;
    [v12 enumerateObjectsUsingBlock:v11];
    v7 = *(v3 + 2);
    *(v3 + 2) = v6;
    v8 = v6;

    [v3 logEvent];
    v9 = sub_1007982D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged filtered guide list displayed.", v10, 2u);
    }
  }
}

void sub_100BF1970(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 count] - 1;
  v8 = *(a1 + 40);
  v9 = [v6 muid];

  if (v7 == a3)
  {
    v10 = @"%llu";
  }

  else
  {
    v10 = @"%llu,";
  }

  v11 = [NSString stringWithFormat:v10, v9];
  [v8 appendString:v11];
}

void sub_100BF1B0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    *(v3 + 2) = 49;
    objc_storeStrong(v3 + 2, *(a1 + 32));
    v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v5 = *(v3 + 6);
    *(v3 + 6) = v4;

    v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v7 = *(v3 + 7);
    *(v3 + 7) = v6;

    [v3 logEvent];
    v8 = sub_1007982D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged filter tap.", v9, 2u);
    }
  }
}

void sub_100BF1D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 2198;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
    v5 = *(v3 + 3);
    *(v3 + 3) = v4;

    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) muid]);
    v7 = *(v3 + 8);
    *(v3 + 8) = v6;

    v8 = [NSNumber numberWithBool:*(a1 + 72)];
    v9 = *(v3 + 4);
    *(v3 + 4) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v11 = *(v3 + 6);
    *(v3 + 6) = v10;

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v13 = *(v3 + 7);
    *(v3 + 7) = v12;

    [v3 logEvent];
    v14 = sub_1007982D8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged editor picked guide tap.", v15, 2u);
    }
  }
}

void sub_100BF1F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 188;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
    v5 = *(v3 + 3);
    *(v3 + 3) = v4;

    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) muid]);
    v7 = *(v3 + 8);
    *(v3 + 8) = v6;

    v8 = [NSNumber numberWithBool:*(a1 + 72)];
    v9 = *(v3 + 4);
    *(v3 + 4) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v11 = *(v3 + 6);
    *(v3 + 6) = v10;

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v13 = *(v3 + 7);
    *(v3 + 7) = v12;

    [v3 logEvent];
    v14 = sub_1007982D8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged temporal guide tap.", v15, 2u);
    }
  }
}

void sub_100BF21B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 187;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
    v5 = *(v3 + 3);
    *(v3 + 3) = v4;

    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) muid]);
    v7 = *(v3 + 8);
    *(v3 + 8) = v6;

    v8 = [NSNumber numberWithBool:*(a1 + 72)];
    v9 = *(v3 + 4);
    *(v3 + 4) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v11 = *(v3 + 5);
    *(v3 + 5) = v10;

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v13 = *(v3 + 7);
    *(v3 + 7) = v12;

    [v3 logEvent];
    v14 = sub_1007982D8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged latest guide tap.", v15, 2u);
    }
  }
}

void sub_100BF23DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 2102;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
    v5 = *(v3 + 8);
    *(v3 + 8) = v4;

    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) resultProviderID]);
    v7 = *(v3 + 9);
    *(v3 + 9) = v6;

    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v9 = *(v3 + 5);
    *(v3 + 5) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v11 = *(v3 + 7);
    *(v3 + 7) = v10;

    [v3 logEvent];
    v12 = sub_1007982D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13[0] = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged publisher tap.", v13, 2u);
    }
  }
}

void sub_100BF25E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    v3[2] = 177;
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [*(a1 + 32) muid]);
    v5 = *(v3 + 2);
    *(v3 + 2) = v4;

    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) resultProviderID]);
    v7 = *(v3 + 9);
    *(v3 + 9) = v6;

    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v9 = *(v3 + 6);
    *(v3 + 6) = v8;

    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v11 = *(v3 + 7);
    *(v3 + 7) = v10;

    [v3 logEvent];
    v12 = sub_1007982D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged city guide tap.", buf, 2u);
    }
  }
}

void sub_100BF27C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    *(v2 + 2) = 21;
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [*(v2 + 13) muid]);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(v2 + 13) resultProviderID]);
    v6 = *(v2 + 9);
    *(v2 + 9) = v5;

    [v2 logEvent];
    v7 = sub_1007982D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged reveal", buf, 2u);
    }
  }
}

void sub_100BF2968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cleanUp];

  *(*(a1 + 32) + 8) = 210;
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 logEvent];

  v4 = sub_1007982D8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged city guides more button tapped.", v5, 2u);
  }
}

void sub_100BF2AAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    if (*(v2 + 112) == 1)
    {
      v2[2] = 147;
      [v2 logEvent];
      v3 = sub_1007982D8();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4[0] = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged city selector tap.", v4, 2u);
      }
    }
  }
}

void sub_100BF2C48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanUp];
    if (*(v3 + 112) == 1)
    {
      v3[2] = 181;
      v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) muid]);
      v5 = *(v3 + 3);
      *(v3 + 3) = v4;

      v6 = [NSNumber numberWithBool:*(a1 + 56)];
      v7 = *(v3 + 4);
      *(v3 + 4) = v6;

      v8 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "muid")}];
      v9 = *(v3 + 8);
      *(v3 + 8) = v8;

      [v3 logEvent];
      v10 = sub_1007982D8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11[0] = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "GuidesHomeAnalyticsManager logged featured guide tap.", v11, 2u);
      }
    }
  }
}

uint64_t sub_100BF3C2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100BF3C44(uint64_t a1, void *a2)
{
  v3 = [a2 locationDisplayString];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100BF3F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    v25 = a1;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v27;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = [[SearchResult alloc] initWithMapItem:v15];
        v17 = [v15 _displayMapRegion];
        v18 = v17;
        if (v12)
        {
          v19 = GEOMapRegionUnion();

          v12 = v19;
          if (!v16)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v8 addObject:v16];
          goto LABEL_13;
        }

        v12 = v17;
        if (v16)
        {
          goto LABEL_12;
        }

LABEL_13:

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v20 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v11 = v20;
      if (!v20)
      {
LABEL_20:

        v21 = [SearchInfo searchInfoWithResults:v8 boundingMapRegion:v12];
        v22 = objc_alloc_init(SearchFieldItem);
        v23 = [*(v25 + 32) objectForKeyedSubscript:@"MKPlaceBrandUserActivityName"];
        [(SearchFieldItem *)v22 setSearchString:v23];

        v24 = *(v25 + 40);
        if (v24)
        {
          (*(v24 + 16))(v24, v22, v21);
        }

        v6 = 0;
        goto LABEL_23;
      }
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, 0);
  }

LABEL_23:
}