id sub_100E93724()
{
  if (qword_10195F480 != -1)
  {
    dispatch_once(&qword_10195F480, &stru_1016572A8);
  }

  v1 = qword_10195F478;

  return v1;
}

void sub_100E93778(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionUsageTracker");
  v2 = qword_10195F478;
  qword_10195F478 = v1;
}

void sub_100E95408(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F468;
  qword_10195F468 = v1;
}

double sub_100E97EBC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  [*(a1 + 32) maxLineHeight];
  if (v8 > 0.0)
  {
    [*(a1 + 32) maxLineHeight];
    if (a5 >= v9)
    {
      [*(a1 + 32) maxLineHeight];
    }
  }

  return a2;
}

void sub_100E97FDC(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MinX = CGRectGetMinX(v33);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
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

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 view];
        [v19 _mapkit_fittingSize];
        v21 = v20;
        v23 = v22;

        v24 = [v13 firstObject];

        if (v18 != v24)
        {
          [*(a1 + 32) _paddingForItem:v18];
          MinX = v25 + MinX;
        }

        v34.origin.x = a3;
        v34.origin.y = a4;
        v34.size.width = a5;
        v34.size.height = a6;
        MinY = CGRectGetMinY(v34);
        v35.origin.x = a3;
        v35.origin.y = a4;
        v35.size.width = a5;
        v35.size.height = a6;
        CGRectGetHeight(v35);
        UIRoundToViewScale();
        (*(*(a1 + 40) + 16))(MinX, v27 + MinY, v21, v23);
        MinX = MinX + v21;
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }
}

void sub_100E9837C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E98394(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *(*(*(a1 + 32) + 8) + 32);
  if (v10 <= CGRectGetMaxX(*&a2))
  {
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    MaxX = CGRectGetMaxX(v16);
    v11 = *(*(a1 + 32) + 8);
  }

  else
  {
    v11 = *(*(a1 + 32) + 8);
    MaxX = *(v11 + 32);
  }

  *(v11 + 32) = MaxX;
  v13 = *(*(*(a1 + 32) + 8) + 40);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  if (v13 <= CGRectGetMaxY(v17))
  {
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MaxY = CGRectGetMaxY(v18);
    v14 = *(*(a1 + 32) + 8);
  }

  else
  {
    v14 = *(*(a1 + 32) + 8);
    MaxY = *(v14 + 40);
  }

  *(v14 + 40) = MaxY;
}

void sub_100E98568(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = a2;
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    [*(a1 + 32) bounds];
    MaxX = CGRectGetMaxX(v15);
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    a3 = MaxX - CGRectGetMaxX(v16);
  }

  v12 = [v13 view];
  [v12 setFrame:{a3, a4, a5, a6}];
}

BOOL sub_100E98714(uint64_t a1, void *a2)
{
  v3 = [a2 view];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void sub_100E989B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E98B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100E99D98(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) loadingIndicator];
    [v3 stopAnimating];
  }
}

void sub_100E9C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E9C2B0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }

  [*(a1 + 32) setEnabled:0];
  [*(a1 + 32) setScale:0.0];
  v7 = sub_10000EBC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Transition to normal puck completed: %@", &v10, 0xCu);
  }
}

id sub_100E9C3C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

void sub_100E9C850(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_100E9C8A0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;

    v6 = [v4 _vkNavigationPuckMarker];
    LODWORD(v7) = 1.0;
    [v6 setScale:v7];
  }

  v8 = sub_10000EBC4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Transition to navigation puck completed: %@", &v11, 0xCu);
  }
}

id sub_100E9C9B4(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.0, 0.0);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

void sub_100E9DA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E9DA7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[4])
    {
      v9 = sub_1000946AC();
      v10 = v9;
      if (v5)
      {
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
LABEL_11:

          v18 = v5;
          v10 = v8[3];
          v8[3] = v18;
LABEL_27:

          goto LABEL_28;
        }

        v11 = v8;
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

        v17 = *(a1 + 32);
        *buf = 138543618;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Acquired token for trip %{public}@", buf, 0x16u);

        goto LABEL_11;
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v30 = v8;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      if (objc_opt_respondsToSelector())
      {
        v33 = [v30 performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];

          goto LABEL_25;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
LABEL_25:

      v35 = *(a1 + 32);
      *buf = 138543874;
      v37 = v24;
      v38 = 2114;
      v39 = v35;
      v40 = 2114;
      v41 = v6;
      v26 = "[%{public}@] Failed to acquire token for trip %{public}@: %{public}@";
      v27 = v10;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 32;
      goto LABEL_26;
    }

    v10 = sub_1000946AC();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v19 = v8;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_18;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_18:

    v25 = *(a1 + 32);
    *buf = 138543618;
    v37 = v24;
    v38 = 2114;
    v39 = v25;
    v26 = "[%{public}@] No longer active after token acquisition callback for trip %{public}@";
    v27 = v10;
    v28 = OS_LOG_TYPE_INFO;
    v29 = 22;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);

    goto LABEL_27;
  }

LABEL_28:
}

id sub_100E9E6E8()
{
  if (qword_10195F4A0 != -1)
  {
    dispatch_once(&qword_10195F4A0, &stru_101657450);
  }

  v1 = qword_10195F498;

  return v1;
}

void sub_100E9E73C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "BackgroundState");
  v2 = qword_10195F498;
  qword_10195F498 = v1;
}

void sub_100EA0C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EA0C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _delayTimerFired];
}

void sub_100EA1234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EA1250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _arrivalEndTimerFired];
}

void sub_100EA14AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EA14C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backgroundArrivalTimerFired];
}

void sub_100EA25EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EA2608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _locationExpirationTimerFired];
}

id sub_100EA27C8(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  [*(a1 + 32) setAlpha:v2];
  v3 = *(a1 + 32);

  return [v3 setHidden:0];
}

id sub_100EA28AC(uint64_t a1)
{
  v2 = [*(a1 + 32) stepActionCoordinator];
  v3 = [v2 isAuthorizedForPreciseLocation];

  result = [*(a1 + 32) isUserTrackingViewVisible];
  if (v3 != result)
  {
    v5 = result ^ 1;
    v6 = *(a1 + 32);

    return [v6 setUserTrackingViewVisible:v3 & v5 animated:1];
  }

  return result;
}

void sub_100EA2AEC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 32);
  if (v10[481] == 1)
  {
    v11 = [v10 mapView];
    v12 = [v11 userTrackingMode];

    if (v12)
    {
      return;
    }

    v10 = *(a1 + 32);
  }

  v13 = [v10 mapView];
  [v13 animateToVisibleMapRect:0 usingDefaultAnimationDuration:&stru_101657470 completion:{a2, a3, a4, a5}];
}

id sub_100EA4B34(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 postTertiaryItems];
  v5 = [NSMutableArray arrayWithArray:v4];

  if (a2)
  {
    v6 = [v3 expandedItems];
    [v5 addObjectsFromArray:v6];
  }

  v7 = [v3 footerItems];
  [v5 addObjectsFromArray:v7];

  v8 = [v5 copy];

  return v8;
}

void sub_100EA5104(id a1, GEOComposedStringArgument *a2)
{
  v2 = [(GEOComposedStringArgument *)a2 distanceFormat];
  [v2 setFormatOptions:1];
}

void sub_100EA56BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100EA56F0(uint64_t a1)
{
  v2 = sub_100029734();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

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
  v9 = objc_retainBlock(*(a1 + 32));
  *buf = 138543618;
  v12 = v8;
  v13 = 2112;
  v14 = v9;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] Transition complete with completion: %@", buf, 0x16u);

LABEL_11:
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100EA6C18(uint64_t a1)
{
  GEOMapRectForGEOTileKey();
  v2 = *(*(a1 + 32) + 40);

  return [v2 setNeedsDisplayInMapRect:?];
}

id sub_100EA6D24(uint64_t a1)
{
  GEOMapRectForGEOTileKey();
  v2 = *(*(a1 + 32) + 40);

  return [v2 setNeedsDisplayInMapRect:?];
}

id sub_100EA6F40()
{
  if (qword_10195F4C0 != -1)
  {
    dispatch_once(&qword_10195F4C0, &stru_1016575D0);
  }

  v1 = qword_10195F4B8;

  return v1;
}

void sub_100EA6F94(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteTilePreloading");
  v2 = qword_10195F4B8;
  qword_10195F4B8 = v1;
}

uint64_t sub_100EA7B0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100EA7B34(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = &__NSArray0__struct;
}

id sub_100EA7C68(id a1, GEORPEnrichmentImage *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[UGCDownloadablePhoto alloc] initWithGEORPEnrichmentImage:v3];

  v5 = [[MKMapItemPhoto alloc] initWithGeoMapItemPhoto:v4];

  return v5;
}

void sub_100EA889C(id a1)
{
  if (!qword_10195F4D0)
  {
    v1 = objc_alloc_init(NSLock);
    v2 = qword_10195F4D0;
    qword_10195F4D0 = v1;
  }
}

void sub_100EA8AB8(id a1)
{
  if (!qword_10195F4D0)
  {
    v1 = objc_alloc_init(NSLock);
    v2 = qword_10195F4D0;
    qword_10195F4D0 = v1;
  }
}

double sub_100EA9CA0(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    return _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  top = NSDirectionalEdgeInsetsZero.top;
  +[RouteOverviewCell horizontalContentInset];
  +[RouteOverviewCell horizontalBackgroundInset];
  return top;
}

void sub_100EA9E48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) rideBookingRideOption];
  [RouteOverviewCellComposer configureCell:v1 forRideBookingRideOption:v2];
}

id sub_100EAA0F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) rideBookingRideOption];
  [RouteOverviewCellComposer configureCell:v2 forRideBookingRideOption:v3];

  if ([*(a1 + 40) applicationSectionIsExpanded])
  {
    v4 = [*(a1 + 40) rideBookingRideOptions];
    v5 = [v4 count] - 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [*(a1 + 40) rideBookingRideOptions];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = *(a1 + 32);
    v9 = 1;
  }

  else if ([*(a1 + 40) rideBookingRideOptionIndex])
  {
    v10 = [*(a1 + 40) rideBookingRideOptionIndex];
    v8 = *(a1 + 32);
    if (v10 == v5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = 2;
  }

  return [v8 setOverrideCellGrouping:v9];
}

void sub_100EABCB0(id a1)
{
  v1 = objc_alloc_init(GuidanceModernBannerSignStyle);
  v2 = qword_10195F4E8;
  qword_10195F4E8 = v1;
}

void sub_100EAC2FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 11))
  {
    *(v1 + 11) = 0;
    [*(a1 + 32) currentMapViewTargetForAnalytics];
    v12 = [*(a1 + 40) annotation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v12 annotation];

      v12 = v3;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v12;
    if (isKindOfClass)
    {
      v6 = v12;
      v7 = [v6 mapItem];
      v8 = [v7 _geoMapItem];
      v9 = [GEOPlaceActionDetails actionDetailsWithMapItem:v8 timestamp:0xFFFFFFFFLL resultIndex:0.0];

      v10 = [v6 type];
      if (v10 <= 0xD && ((0x3239u >> v10) & 1) != 0)
      {
        v11 = dword_101215E98[v10];

        v6 = +[MKMapService sharedService];
        [v6 captureUserAction:v11 onTarget:503 eventValue:0 placeActionDetails:v9];
      }

      v5 = v12;
    }
  }
}

void sub_100EAC50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 11))
  {
    *(v1 + 11) = 0;
    v12 = [[MapsAnalyticsHelper alloc] initWithLabelMarker:*(a1 + 40)];
    v3 = [(MapsAnalyticsHelper *)v12 tapAction];
    v4 = [*(a1 + 32) currentMapViewTargetForAnalytics];
    v5 = [(MapsAnalyticsHelper *)v12 actionDetails];
    v6 = [(MapsAnalyticsHelper *)v12 eventValue];
    if (v3)
    {
      v7 = [(MapsAnalyticsHelper *)v12 populateTapEvent];

      if (v7)
      {
        v8 = [(MapsAnalyticsHelper *)v12 populateTapEvent];
        v8[2]();
      }

      v9 = +[MKMapService sharedService];
      [v9 captureUserAction:v3 onTarget:v4 eventValue:v6 placeActionDetails:v5];

      v10 = objc_alloc_init(SearchSessionAnalytics);
      [(SearchSessionAnalytics *)v10 setAction:v3];
      [(SearchSessionAnalytics *)v10 setTarget:v4];
      v11 = +[SearchSessionAnalyticsAggregator sharedAggregator];
      [v11 collectSearchSessionAnalytics:v10];
    }
  }
}

void sub_100EAC824(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapSelectionManager");
  v2 = qword_10195F4F8;
  qword_10195F4F8 = v1;
}

uint64_t sub_100EAD3C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) selectLabelMarker:v2 animated:1 updateIfNeeded:*(a1 + 56)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100EAD60C(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) resumeUpdates];
  v3 = v5;
  if (v5)
  {
    [*(a1 + 32) _selectCustomPOIAnnotation:v5 camera:*(a1 + 40) restoreRegion:*(a1 + 56) updateIfNeeded:*(a1 + 57) completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      goto LABEL_6;
    }

    (*(v4 + 16))(v4, 0);
  }

  v3 = v5;
LABEL_6:
}

id sub_100EAE8D8(uint64_t a1)
{
  result = [*(a1 + 32) _notifyDelegate];
  *(*(a1 + 32) + 8) = 0;
  return result;
}

id sub_100EAEB88(id a1, VKTrafficFeature *a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(VKTrafficFeature *)v4 infoCard];

    if (v5)
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100EAEF14()
{
  if (qword_10195F510 != -1)
  {
    dispatch_once(&qword_10195F510, &stru_101657808);
  }

  v1 = qword_10195F508;

  return v1;
}

void sub_100EAEF68(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFVIOSessionFusedLocationMonitor");
  v2 = qword_10195F508;
  qword_10195F508 = v1;
}

void sub_100EAF054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = +[VLFLocationManager sharedLocationManager];
    v5 = v4;
    if (v3 == 1)
    {
      [v4 addObserver:v6];
    }

    else
    {
      [v4 removeObserver:v6];
    }

    WeakRetained = v6;
  }
}

void sub_100EAF69C(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"MUID" placeholderText:@"enter muid" inputType:1 get:&stru_1016579C8 set:&stru_1016579E8];
  v3 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"ResultProviderID" placeholderText:@"enter lsp" inputType:1 get:&stru_101657A08 set:&stru_101657A28];
}

void sub_100EAF738(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 length])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetInteger();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

NSString *__cdecl sub_100EAF7A8(id a1)
{
  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v2 = [NSNumber numberWithInteger:Integer];
    v3 = [NSString stringWithFormat:@"%@", v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100EAF83C(id a1, NSString *a2)
{
  v4 = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  if (v4 && [(NSString *)v4 length])
  {
    [v2 setObject:v4 forKey:@"__internal__PlaceCardHardCodedMUID"];
  }

  else
  {
    [v2 removeObjectForKey:@"__internal__PlaceCardHardCodedMUID"];
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 synchronize];
}

NSString *__cdecl sub_100EAF8EC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 objectForKey:@"__internal__PlaceCardHardCodedMUID"];

  if (v2)
  {
    v2 = [v1 stringForKey:@"__internal__PlaceCardHardCodedMUID"];
  }

  return v2;
}

void sub_100EAF968(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Initial height" placeholderText:@"250" inputType:3 geoConfigKeyDouble:MapKitConfig_HTMLRenderedWebModulesDefaultHeight[0], MapKitConfig_HTMLRenderedWebModulesDefaultHeight[1]];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Shows loading indicator" geoConfigKey:MapKitConfig_HTMLRenderedWebModuleShowsLoadingIndicator[0], MapKitConfig_HTMLRenderedWebModuleShowsLoadingIndicator[1]];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Shows context menu overlay" geoConfigKey:MapKitConfig_HTMLRenderedWebModulesShowCTAOverlay[0], MapKitConfig_HTMLRenderedWebModulesShowCTAOverlay[1]];
}

void sub_100EAFA14(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Force Recommended Dishes Text UI" get:&stru_101657848 set:&stru_101657868];
  v3 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Force fullscreen photo gallery" get:&stru_101657888 set:&stru_1016578A8];
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v4 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Force show native photo carousel add buttons" get:&stru_1016578C8 set:&stru_1016578E8];
    v5 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Force show native photo gallery" get:&stru_101657908 set:&stru_101657928];
  }

  v6 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Override photos attribution with Yelp adamID" get:&stru_101657948 set:&stru_101657968];
  v7 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Should override photo slideshow count" geoConfigKey:MapKitConfig_Debug_AllowOverridingPhotoSlideshowCounts[0], MapKitConfig_Debug_AllowOverridingPhotoSlideshowCounts[1]];
  v8 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Photo slideshow count override" placeholderText:@"12" inputType:1 geoConfigKeyUInteger:MapKitConfig_Debug_PhotoSlideshowOverrideCount[0], MapKitConfig_Debug_PhotoSlideshowOverrideCount[1]];
}

void sub_100EAFB6C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"MKPlacecardOverridePhotosAttributionYelpAdamID"];
}

BOOL sub_100EAFBCC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MKPlacecardOverridePhotosAttributionYelpAdamID"];

  return v2;
}

void sub_100EAFC14(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"MKPlacecardForceNativePhotoGallery"];
}

BOOL sub_100EAFC74(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MKPlacecardForceNativePhotoGallery"];

  return v2;
}

void sub_100EAFCBC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"MKPlacecardForceNativePhotoCarousel"];
}

BOOL sub_100EAFD1C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MKPlacecardForceNativePhotoCarousel"];

  return v2;
}

void sub_100EAFD64(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"MKPlacecardForceFullScreenGallery"];
}

BOOL sub_100EAFDC4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MKPlacecardForceFullScreenGallery"];

  return v2;
}

id sub_100EB05C4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [a2 row];

  return [v2 objectAtIndexedSubscript:v3];
}

void sub_100EB5EA4(id a1)
{
  v3 = +[RouteStepListMetrics routePlanningMetrics];
  v1 = [v3 copy];
  v2 = qword_10195F558;
  qword_10195F558 = v1;

  *(qword_10195F558 + 12) = 1;
}

void sub_100EB5F64(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F548;
  qword_10195F548 = v1;

  *(qword_10195F548 + 16) = 0x4038000000000000;
  v3 = +[UIColor labelColor];
  v4 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v5 = [v3 resolvedColorWithTraitCollection:v4];
  v6 = *(qword_10195F548 + 32);
  *(qword_10195F548 + 32) = v5;

  objc_storeStrong((qword_10195F548 + 40), *(qword_10195F548 + 32));
  *(qword_10195F548 + 8) = 1;
  if (qword_10195F520 != -1)
  {
    dispatch_once(&qword_10195F520, &stru_101657A70);
  }

  v7 = 28.0;
  if (byte_10195F518)
  {
    v7 = 24.0;
  }

  v8 = qword_10195F548;
  *(qword_10195F548 + 56) = v7;
  *(v8 + 64) = UIFontWeightBold;
  *(v8 + 72) = 0x4000000000000000;
  v9 = +[UIColor secondaryLabelColor];
  v10 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v11 = [v9 resolvedColorWithTraitCollection:v10];
  v12 = *(qword_10195F548 + 80);
  *(qword_10195F548 + 80) = v11;

  objc_storeStrong((qword_10195F548 + 88), *(qword_10195F548 + 80));
  *(qword_10195F548 + 9) = 1;
  if (qword_10195F520 != -1)
  {
    dispatch_once(&qword_10195F520, &stru_101657A70);
  }

  v13 = 28.0;
  if (byte_10195F518)
  {
    v13 = 24.0;
  }

  v14 = qword_10195F548;
  *(qword_10195F548 + 104) = v13;
  *(v14 + 112) = UIFontWeightMedium;
  *(v14 + 120) = 0x4000000000000000;
  objc_storeStrong((v14 + 128), *(v14 + 80));
  objc_storeStrong((qword_10195F548 + 136), *(qword_10195F548 + 80));
  *(qword_10195F548 + 10) = 1;
  if (qword_10195F520 != -1)
  {
    dispatch_once(&qword_10195F520, &stru_101657A70);
  }

  v15 = 30.0;
  if (byte_10195F518)
  {
    v15 = 24.0;
  }

  v16 = qword_10195F548;
  *(qword_10195F548 + 152) = v15;
  *(v16 + 160) = UIFontWeightMedium;
  v17 = +[UIColor whiteColor];
  v18 = [v17 colorWithAlphaComponent:0.8];
  v19 = *(qword_10195F548 + 168);
  *(qword_10195F548 + 168) = v18;

  v20 = qword_10195F548;
  *(qword_10195F548 + 176) = 0x4036000000000000;
  *(v20 + 184) = UIFontWeightMedium;
  v21 = *(v20 + 192);
  *(v20 + 192) = 0;

  v22 = qword_10195F548;
  __asm { FMOV            V0.2D, #24.0 }

  *(qword_10195F548 + 200) = _Q0;
  *(v22 + 216) = xmmword_101212B00;
  *(v22 + 232) = xmmword_101212B10;
  if (qword_10195F520 != -1)
  {
    dispatch_once(&qword_10195F520, &stru_101657A70);
  }

  v28 = 60.0;
  if (byte_10195F518)
  {
    v29 = 40.0;
  }

  else
  {
    v29 = 60.0;
  }

  *(qword_10195F548 + 264) = v29;
  if (byte_10195F518)
  {
    v28 = 40.0;
  }

  v30 = qword_10195F548;
  *(qword_10195F548 + 272) = v28;
  v30[35] = 6;
  v30[36] = 2;
  MKDefaultGuidanceManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy(v30 + 42, __src, 0x1F0uLL);
  v31 = qword_10195F548;
  MKDefaultJunctionManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy((v31 + 832), __src, 0x1F0uLL);
  v32 = qword_10195F548;
  MKDefaultGuidanceManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy((v32 + 1328), __src, 0x1F0uLL);
  v33 = qword_10195F548;
  MKDefaultJunctionManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy((v33 + 1824), __src, 0x1F0uLL);
  v34 = +[UIColor whiteColor];
  v35 = *(qword_10195F548 + 296);
  *(qword_10195F548 + 296) = v34;

  v36 = +[UIColor iOSJunctionColor];
  v37 = *(qword_10195F548 + 304);
  *(qword_10195F548 + 304) = v36;

  v38 = +[UIColor whiteColor];
  v39 = [v38 colorWithAlphaComponent:0.150000006];
  v40 = *(qword_10195F548 + 328);
  *(qword_10195F548 + 328) = v39;

  v41 = qword_10195F548;
  *(qword_10195F548 + 312) = 0x4038000000000000;
  *(v41 + 320) = 5;
}

void sub_100EB63DC(id a1)
{
  v1 = MGGetProductType();
  v3 = v1 == 2336512887 || v1 == 952317141;
  byte_10195F518 = v3;
}

void sub_100EB646C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F538;
  qword_10195F538 = v1;

  *(qword_10195F538 + 16) = 0x4040000000000000;
  v3 = +[UIColor labelColor];
  v4 = *(qword_10195F538 + 32);
  *(qword_10195F538 + 32) = v3;

  v5 = +[UIColor labelColor];
  v6 = [v5 colorWithAlphaComponent:0.150000006];
  v7 = *(qword_10195F538 + 40);
  *(qword_10195F538 + 40) = v6;

  objc_storeStrong((qword_10195F538 + 48), UIFontTextStyleTitle2);
  v8 = qword_10195F538;
  *(qword_10195F538 + 64) = UIFontWeightBold;
  *(v8 + 72) = 0x4000000000000000;
  v9 = +[UIColor secondaryLabelColor];
  v10 = *(qword_10195F538 + 80);
  *(qword_10195F538 + 80) = v9;

  v11 = +[UIColor secondaryLabelColor];
  v12 = [v11 colorWithAlphaComponent:0.150000006];
  v13 = *(qword_10195F538 + 88);
  *(qword_10195F538 + 88) = v12;

  objc_storeStrong((qword_10195F538 + 96), UIFontTextStyleTitle3);
  v14 = qword_10195F538;
  *(qword_10195F538 + 112) = UIFontWeightRegular;
  *(v14 + 120) = 0x4018000000000000;
  v15 = +[UIColor secondaryLabelColor];
  v16 = *(qword_10195F538 + 128);
  *(qword_10195F538 + 128) = v15;

  v17 = +[UIColor secondaryLabelColor];
  v18 = [v17 colorWithAlphaComponent:0.150000006];
  v19 = *(qword_10195F538 + 136);
  *(qword_10195F538 + 136) = v18;

  objc_storeStrong((qword_10195F538 + 144), UIFontTextStyleTitle3);
  *(qword_10195F538 + 160) = UIFontWeightRegular;
  v20 = [UIColor colorNamed:@"DirectionsTableViewCellBackgroundView"];
  v21 = *(qword_10195F538 + 192);
  *(qword_10195F538 + 192) = v20;

  v22 = qword_10195F538;
  *(qword_10195F538 + 200) = xmmword_101212B20;
  *(v22 + 216) = xmmword_101212B30;
  *(v22 + 232) = xmmword_101212B40;
  *(v22 + 248) = vdupq_n_s64(0x404E000000000000uLL);
  *(v22 + 264) = 0x4055800000000000;
  *(v22 + 272) = 0x4055800000000000;
  *(v22 + 280) = 6;
  *(v22 + 288) = 3;
  MKDefaultGuidanceManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy((v22 + 336), __src, 0x1F0uLL);
  v23 = qword_10195F538;
  MKDefaultJunctionManeuverMetrics();
  MKGuidanceManeuverArrowMetricsApplyScaleForContent();
  memcpy((v23 + 832), __src, 0x1F0uLL);
  v24 = +[UIColor labelColor];
  v25 = [v24 colorWithAlphaComponent:0.150000006];
  v26 = *(qword_10195F538 + 328);
  *(qword_10195F538 + 328) = v25;
}

void sub_100EB679C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F528;
  qword_10195F528 = v1;

  *(qword_10195F528 + 16) = xmmword_101212B50;
  v3 = +[UIColor labelColor];
  v4 = *(qword_10195F528 + 32);
  *(qword_10195F528 + 32) = v3;

  v5 = +[UIColor labelColor];
  v6 = *(qword_10195F528 + 40);
  *(qword_10195F528 + 40) = v5;

  objc_storeStrong((qword_10195F528 + 48), UIFontTextStyleSubheadline);
  v7 = qword_10195F528;
  *(qword_10195F528 + 64) = UIFontWeightBold;
  *(v7 + 72) = 0x4000000000000000;
  v8 = [UIColor colorWithDynamicProvider:&stru_101657AB0];
  v9 = *(qword_10195F528 + 80);
  *(qword_10195F528 + 80) = v8;

  v10 = [UIColor colorWithDynamicProvider:&stru_101657AD0];
  v11 = *(qword_10195F528 + 88);
  *(qword_10195F528 + 88) = v10;

  objc_storeStrong((qword_10195F528 + 96), UIFontTextStyleSubheadline);
  v12 = qword_10195F528;
  *(qword_10195F528 + 112) = UIFontWeightRegular;
  *(v12 + 120) = 0x4000000000000000;
  v13 = +[UIColor secondaryLabelColor];
  v14 = *(qword_10195F528 + 128);
  *(qword_10195F528 + 128) = v13;

  v15 = +[UIColor secondaryLabelColor];
  v16 = *(qword_10195F528 + 136);
  *(qword_10195F528 + 136) = v15;

  objc_storeStrong((qword_10195F528 + 144), UIFontTextStyleSubheadline);
  v17 = qword_10195F528;
  *(qword_10195F528 + 160) = UIFontWeightRegular;
  v18 = *(v17 + 192);
  *(v17 + 192) = 0;

  v19 = qword_10195F528;
  __asm { FMOV            V0.2D, #15.0 }

  *(qword_10195F528 + 200) = _Q0;
  *(v19 + 216) = xmmword_101212B60;
  *(v19 + 232) = xmmword_101212B70;
  __asm { FMOV            V0.2D, #30.0 }

  *(v19 + 248) = _Q0;
  *(v19 + 264) = 0x403E000000000000;
  *(v19 + 272) = 0x403E000000000000;
  *(v19 + 280) = 5;
  *(v19 + 288) = 2;
  MKDefaultGuidanceManeuverMetrics();
  memcpy((v19 + 336), v30, 0x1F0uLL);
  v26 = qword_10195F528;
  MKDefaultJunctionManeuverMetrics();
  memcpy((v26 + 832), v30, 0x1F0uLL);
  *(qword_10195F528 + 11) = 1;
  v27 = +[UIColor labelColor];
  v28 = [v27 colorWithAlphaComponent:0.150000006];
  v29 = *(qword_10195F528 + 328);
  *(qword_10195F528 + 328) = v28;
}

void sub_100EB7CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EB7D00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[40] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

void sub_100EBA7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EBA7EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained[1];
    v3 = v2;
    if (v2 && ([v2 hasMarkedText] & 1) == 0)
    {
      v4 = v6[20];
      v5 = [v3 text];
      [v4 updateTitle:v5];
    }

    WeakRetained = v6;
  }
}

void sub_100EBBE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EBBE7C(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Automatically dismissing VoiceVolumeControl", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained voiceVolumeControlDelegate];
  [v4 dismissVoiceVolumeControlViewController:WeakRetained];
}

void sub_100EBCD80(id a1, $464B15F94E0D705FD6D497CD7841E26A a2)
{
  v2 = [AudioPreferences alloc];
  v3 = +[NSUserDefaults standardUserDefaults];
  v8 = [(AudioPreferences *)v2 initWithDefaults:v3];

  v4 = +[MNNavigationService sharedService];
  v5 = [v4 navigationTransportType];

  if ([(AudioPreferences *)v8 guidanceLevelForTransportType:v5]== 2)
  {
    v6 = +[MNNavigationService sharedService];
    [v6 stopCurrentGuidancePrompt];

    v7 = +[MNNavigationService sharedService];
    [v7 repeatCurrentGuidance:&stru_101657CA8];
  }

  else
  {
    [(AudioPreferences *)v8 setGuidanceLevel:2 forTransportType:v5];
    [(AudioPreferences *)v8 synchronize];
  }
}

void sub_100EBCE80(id a1, BOOL a2)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "repeatCurrentGuidance", v3, 2u);
  }
}

void sub_100EBE7FC(id a1)
{
  v4 = +[GEOPlatform sharedPlatform];
  [v4 deviceScreenWidthInPixels];
  [v4 deviceScreenScale];
  v1 = +[UIDevice currentDevice];
  if ([v1 userInterfaceIdiom] == 1)
  {

LABEL_4:
    MGGetSInt32Answer();
    goto LABEL_5;
  }

  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    goto LABEL_4;
  }

LABEL_5:
  dword_10195F568 = GEOConfigGetUInteger();
}

void sub_100EBFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EBFE28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _maps_carSceneDelegate];
  [v1 rebuildContextsForCurrentAppState];
}

void sub_100EC05DC(uint64_t a1, int a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100EC0890;
  v2[3] = &unk_101657DC8;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_100EC0664(uint64_t a1)
{
  v2 = MapsSuggestionsTransportModeForOriginAndDestination();
  v3 = NSStringFromClass(*(a1 + 72));
  MapsSuggestionsLogPredictedTransportMode();

  if (MapsSuggestionsGetTransportationModeDebugPanelSetting() && v2 != 4)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (v2 < 7 && ((0x6Fu >> v2) & 1) != 0)
      {
        v5 = off_101657E60[v2];
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", v2];
      }

      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "\tUsing MSg PTM %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v2 >= 7)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v2];
    }

    else
    {
      v7 = off_101657E98[v2];
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "\tNot using MSg PTM %{public}@", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100EC0890(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (v3 >= 7)
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *(a1 + 40)];
    }

    else
    {
      v4 = off_101657E98[v3];
    }

    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "\tDelivering resolved transport type %{public}@", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100EC0B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((a2 & 0xFFFFFFFFFFFFFFFBLL) != 0 && (a2 - 2) <= 3)
  {
    v3 = qword_101215F90[a2 - 2];
  }

  else
  {
    v3 = 1;
  }

  return (*(v2 + 16))(v2, v3);
}

id sub_100EC1E20()
{
  if (qword_10195F580 != -1)
  {
    dispatch_once(&qword_10195F580, &stru_101657FA8);
  }

  v1 = qword_10195F578;

  return v1;
}

void sub_100EC1E74(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchHomeDataDownloader");
  v2 = qword_10195F578;
  qword_10195F578 = v1;
}

void sub_100EC2440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100798B6C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = WeakRetained[33];
        v17 = 138412546;
        v18 = v6;
        v19 = 1024;
        LODWORD(v20) = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Error while fetching the browse categories %@. The maps offline status: %d", &v17, 0x12u);
      }
    }

    else
    {
      v10 = sub_100EC1E20();
      v11 = v10;
      v12 = *(a1 + 56);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchingSearchHome", "", &v17, 2u);
      }

      v13 = [WeakRetained cache];
      [v13 replaceCachedObject:v5 withKey:*(a1 + 32)];

      [WeakRetained parseResponse:v5];
      v8 = sub_100798B6C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = [v5 cachedNaturalSearchKey];
        v15 = [*(a1 + 40) deviceDisplayLanguages];
        v16 = [v15 firstObject];
        v17 = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The natural search supported key: %@, language region: %@", &v17, 0x16u);
      }
    }
  }
}

id sub_100EC2CFC()
{
  if (qword_10195F590 != -1)
  {
    dispatch_once(&qword_10195F590, &stru_101658388);
  }

  v1 = qword_10195F588;

  return v1;
}

void sub_100EC2D50(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPHomeViewController");
  v2 = qword_10195F588;
  qword_10195F588 = v1;
}

id sub_100EC3588(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 192) sectionForIndex:a2];
  v7 = sub_10000FA08(*(a1 + 32));
  if (v7 == 5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:v8 layoutEnvironment:v5];
  v10 = _UICollectionViewListLayoutSectionAutomaticDimension;
  [v9 setEstimatedRowHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  [v9 setRowHeight:v10];
  [v9 setSeparatorStyle:v7 != 5];
  [*(*(a1 + 32) + 192) footerHeightForSection:v6 collectionView:*(*(a1 + 32) + 144)];
  v12 = v11;
  [*(*(a1 + 32) + 192) headerHeightForSection:v6 collectionView:*(*(a1 + 32) + 144)];
  [v9 setSectionHeaderHeight:?];
  [v9 setSectionFooterHeight:v12];
  v13 = [v9 _separatorConfiguration];
  v14 = [v13 copy];

  v15 = [*(a1 + 32) theme];
  v16 = [v15 dynamicHairlineColor];
  [v14 _setColor:v16];

  if (!a2)
  {
    [v14 _setInsets:{0.0, 56.0, 0.0, 0.0}];
  }

  [v9 _setSeparatorConfiguration:v14];
  v17 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v9 layoutEnvironment:v5];
  v18 = v17;
  if (v7 == 5)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 8.0;
  }

  v20 = 16.0;
  if (v7 == 5)
  {
    v20 = 0.0;
  }

  [v17 setContentInsets:{0.0, v20, v19, v20}];

  return v18;
}

void sub_100EC4B04(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EC4BA8;
  v3[3] = &unk_101661738;
  v3[4] = *(a1 + 32);
  v2 = [a2 addSwitchRowWithTitle:@"Enable Visualizer" get:&stru_101658518 set:v3];
  [v2 setSubtitle:@"Toggle displaying a real time view of the Destination Graph"];
}

uint64_t sub_100EC4BA8(uint64_t a1, int a2)
{
  v3 = [*(*(a1 + 32) + 16) view];
  [v3 setHidden:a2 ^ 1u];

  return GEOConfigSetBOOL();
}

void sub_100EC4C20(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"MSg Transportation Mode Prediction" get:&stru_1016584D8 set:&stru_1016584F8];
  [v2 setSubtitle:@"Toggle MSg-based transportation mode prediction"];
}

void sub_100EC4C90(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"Verbose logging" get:&stru_101658478 set:&stru_101658498];
  [v2 setSubtitle:@"Adds serialized suggestion entries to logs."];
}

void sub_100EC51F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EC5214(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addMapsSuggestionsSettingsToDebugVC:v3];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsDebugController.m";
      v9 = 1026;
      v10 = 50;
      v11 = 2082;
      v12 = "[MapsSuggestionsDebugController _setupDebugValuesController]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100EC57CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EC58A4;
  v6[3] = &unk_1016607C8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  [RAPPrivacy showPrivacyScreenWithAppearance:1 completion:v6];
}

uint64_t sub_100EC5870(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100EC5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100EC58A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  [*(a1 + 32) rapCompleted:a2 privacyShown:a3 analyticsEvent:v8];
}

void sub_100EC6A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 && (*a2 & 0x7F) == GEOVoltaireTileProvider)
  {
    v5 = *(a1 + 40);
    if (GEOConfigGetBOOL())
    {
      if (v5 < (*(a2 + 6) & 0x3Fu))
      {
        return;
      }

      v6 = *(v2 + 8);
      v7 = [NSNumber numberWithUnsignedInt:(*(a2 + 10) | (*(a2 + 14) << 32)) >> 26];
      v8 = [v6 objectForKeyedSubscript:v7];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v25 + 1) + 8 * i) unsignedIntegerValue];
            if (v14 <= v5 && v14 > (*(a2 + 6) & 0x3Fu))
            {

              return;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    else if ((*(a2 + 6) & 0x3F) != 0xF)
    {
      return;
    }

    GEOMapRectForGEOTileKey();
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    if (MKMapRectIntersectsRect(v31, *(a1 + 48)))
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      CGContextFillRect(*(a1 + 80), v32);
      v20 = *(a1 + 80);
      v21 = x;
      v22 = y;
      v23 = width;
      v24 = height;

      CGContextStrokeRect(v20, *&v21);
    }
  }
}

void sub_100EC7090(uint64_t a1, int a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 40);
  if (v7 && a4 > 0.0)
  {
    v33 = v10;
    if (a2 == 2)
    {
      v11 = +[UIColor systemRedColor];
    }

    else if (a2 == 1)
    {
      v11 = +[UIColor systemGreenColor];
    }

    else
    {
      if (a2)
      {
        goto LABEL_17;
      }

      v11 = +[UIColor systemGrayColor];
    }

    v12 = v11;
    v10 = v33;
    if (v12)
    {
      v32 = v8;
      Mutable = CGPathCreateMutable();
      v14 = [v7 overlay];
      [v14 boundingMapRect];
      v16 = v15;
      v18 = v17;

      v19 = [v33 coordinateAtOffset:a3];
      LODWORD(v14) = v19;
      [v33 pointAtRouteCoordinate:v19];
      v20 = MKMapPointForCoordinate(v35);
      CGPathMoveToPoint(Mutable, 0, v20.x - v16, v20.y - v18);
      v21 = (v14 + 1);
      if (v21 < [v33 pointCount] - 1)
      {
        v22 = 0.0;
        while (1)
        {
          [v33 pointAt:v21];
          v24 = v23;
          v26 = v25;
          GEOCalculateDistance();
          v22 = v27 + v22;
          if (v22 >= a4)
          {
            break;
          }

          v36.latitude = v24;
          v36.longitude = v26;
          v28 = MKMapPointForCoordinate(v36);
          CGPathAddLineToPoint(Mutable, 0, v28.x - v16, v28.y - v18);
          if (++v21 >= [v33 pointCount] - 1)
          {
            goto LABEL_16;
          }
        }

        [v33 pointAtRouteCoordinate:{objc_msgSend(v33, "coordinateAtOffset:", a4 + a3)}];
        v29 = MKMapPointForCoordinate(v37);
        CGPathMoveToPoint(Mutable, 0, v29.x - v16, v29.y - v18);
      }

LABEL_16:
      CGContextSaveGState(v9);
      CGContextAddPath(v9, Mutable);
      [v7 contentScaleFactor];
      CGContextSetLineWidth(v9, v30 * 8.0 / v32);
      CGContextSetLineJoin(v9, kCGLineJoinRound);
      CGContextSetLineCap(v9, kCGLineCapButt);
      v31 = [v12 colorWithAlphaComponent:0.600000024];
      CGContextSetStrokeColorWithColor(v9, [v31 CGColor]);

      CGContextStrokePath(v9);
      CGContextRestoreGState(v9);
      CGPathRelease(Mutable);

      v10 = v33;
    }
  }

LABEL_17:
}

void sub_100EC99A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRRecentContactsLibrary messageSourcesBundleIdentifiers];
  v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 originalSource];
        if ([v11 length] && objc_msgSend(v4, "indexOfObject:", v11) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [AutocompleteMatchInfo matchInfoWithType:4];
          [*(*(a1 + 32) + 24) setMatchInfo:v12 forObject:v10];
          v13 = [[AutocompleteItem alloc] initWithLocalCompletion:v10 sourceType:5 sourceSubtype:6 matchInfo:v12];
          [v25 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v14 = a1;
  v15 = [*(a1 + 32) isCancelled];
  v16 = sub_100067540();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v17)
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SearchRecentsOperation - %@ is cancelled", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    v20 = WeakRetained;
    v21 = *(a1 + 32);
    v22 = &__NSArray0__struct;
  }

  else
  {
    if (v17)
    {
      v23 = *(a1 + 32);
      v24 = [v25 count];
      *buf = 138412546;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SearchRecentsOperation - %@ collected %lu results", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(v14 + 32) + 40));
    v20 = WeakRetained;
    v21 = *(v14 + 32);
    v22 = v25;
  }

  [WeakRetained searchRecentsOperation:v21 didMatchResults:v22];

  [*(v14 + 32) willChangeValueForKey:@"isExecuting"];
  [*(v14 + 32) willChangeValueForKey:@"isFinished"];
  os_unfair_lock_lock((*(v14 + 32) + 32));
  if (([*(v14 + 32) isCancelled] & 1) == 0)
  {
    *(*(v14 + 32) + 16) = 0;
    *(*(v14 + 32) + 17) = 1;
  }

  os_unfair_lock_unlock((*(v14 + 32) + 32));
  [*(v14 + 32) didChangeValueForKey:@"isExecuting"];
  [*(v14 + 32) didChangeValueForKey:@"isFinished"];
}

void sub_100ECA3E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Maps Guide: Guide Name [User Guide Sharing]" value:@"localized string not found" table:0];
  v9 = [*(a1 + 32) title];
  v10 = [NSString stringWithFormat:v8, v9];
  v20 = [v10 _navigation_sanitizedStringForDisplayInHTML];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"count_of_places" value:@"localized string not found" table:0];
  v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v12, [*(a1 + 40) count]);
  v14 = [v13 _navigation_sanitizedStringForDisplayInHTML];

  v15 = [NSString stringWithFormat:@"<b>%@</b><br>%@", v20, v14];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Open in Apple Maps [User Guide Sharing]" value:@"localized string not found" table:0];
  v18 = HTMLStringForURLWithLabel();

  v19 = HTMLBodyWrapperStringWithFormat();

  (*(*(a1 + 56) + 16))(*(a1 + 56), v19, v5);
}

id sub_100ECB9C4()
{
  if (qword_10195F5A0 != -1)
  {
    dispatch_once(&qword_10195F5A0, &stru_101658628);
  }

  v1 = qword_10195F598;

  return v1;
}

void sub_100ECBA18(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionTransitSteppingMonitor");
  v2 = qword_10195F598;
  qword_10195F598 = v1;
}

id sub_100ECC364(void *a1)
{
  v1 = a1;
  v2 = [v1 sourceType];
  v3 = [v1 suggestionType];
  v4 = [v1 serverEntryType];

  if (v2 == 1)
  {
    if (v4 >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1016586C0[v4];
    }

    [NSString stringWithFormat:@"ServerEntryType=%@", v5];
  }

  else
  {
    if (v2)
    {
      goto LABEL_12;
    }

    if (v3 >= 0xF)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", v3];
    }

    else
    {
      v5 = off_101658648[v3];
    }

    [NSString stringWithFormat:@"SuggestionType=%@", v5];
  }
  v1 = ;

LABEL_12:

  return v1;
}

NSString *sub_100ECC484(void *a1)
{
  v1 = [a1 featureType];
  if ((v1 - 1) > 0x28)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = off_1016586E0[(v1 - 1)];
  }

  return [NSString stringWithFormat:@"Feature=%@", v2];
}

void sub_100ECD59C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10003D9F4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to restore expired subscription %@", &v5, 0xCu);
    }
  }
}

void sub_100ECDF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100ECDF90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained offlineMapsDataSource];
    v9 = [v8 sectionForSectionIndex:a2];

    if ([v9 sectionType] || (objc_msgSend(v7, "collectionView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfSections"), v10, v11 != 1))
    {
      v12 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
      v18 = +[UIColor clearColor];
      [v12 setBackgroundColor:v18];

      v19 = [v9 headerText];
      [v12 setHeaderMode:{objc_msgSend(v19, "length") != 0}];

      [v12 setFooterMode:1];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100ECE308;
      v27[3] = &unk_101658830;
      objc_copyWeak(&v28, (a1 + 32));
      [v12 setTrailingSwipeActionsConfigurationProvider:v27];
      v17 = [NSCollectionLayoutSection sectionWithListConfiguration:v12 layoutEnvironment:v5];
      if (a2 < 1)
      {
        v22 = 0.0;
      }

      else
      {
        v20 = [v9 headerText];
        v21 = [v20 length] == 0;

        if (v21)
        {
          v22 = 16.0;
        }

        else
        {
          v22 = 0.0;
        }
      }

      v23 = [v9 sectionType];
      v24 = 32.0;
      v25 = 16.0;
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v25 = 32.0;
      }

      [v17 setContentInsets:{v24, v25, 0.0, v25}];
      objc_destroyWeak(&v28);
    }

    else
    {
      v12 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:1.0];
      v13 = [NSCollectionLayoutItem itemWithLayoutSize:v12];
      [v13 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      v14 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:1.0];
      v29 = v13;
      v15 = [NSArray arrayWithObjects:&v29 count:1];
      v16 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v14 subitems:v15];

      v17 = [NSCollectionLayoutSection sectionWithGroup:v16];
      [v17 setContentInsets:{0.0, 32.0, 0.0, 32.0}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_100ECE308(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained offlineMapsDataSource];
    v7 = [v6 swipeActionsConfigurationForIndexPath:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id MapsSuggestionsResourceDepotForMapsProcess()
{
  if (qword_10195F5C0 != -1)
  {
    dispatch_once(&qword_10195F5C0, &stru_101658870);
  }

  v0 = [qword_10195F5C8 resourceDepot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100ECE5F8(id a1)
{
  v1 = +[MapsSuggestionsEngineBuilder forDevice];
  v2 = qword_10195F5C8;
  qword_10195F5C8 = v1;
}

uint64_t sub_100ECE638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100ECEE88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 iapIdentifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

void sub_100ECF04C(uint64_t a1)
{
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User selected not to pair pair accessory (%@) to vehicle: %@", &v5, 0x16u);
  }
}

void sub_100ECF100(uint64_t a1)
{
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User selected not to find a paired vehicle for accessory (%@)", &v4, 0xCu);
  }
}

void sub_100ECF1A8(uint64_t a1)
{
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User selected find a paired vehicle for accessory: %@", &v4, 0xCu);
  }
}

void sub_100ECF610(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ECF6E0;
  block[3] = &unk_101658938;
  v11 = a2;
  v12 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100ECF6BC(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t (**sub_100ECF6E0(uint64_t a1))(void)
{
  v2 = *(a1 + 48);
  v3 = sub_100005610();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PushNotificationPrompt: requestAuthorizationWithOptions returned granted = YES", &v8, 2u);
    }

    v5 = 270;
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PushNotificationPrompt: requestAuthorizationWithOptions returned granted = NO with error: %@", &v8, 0xCu);
    }

    v5 = 77;
  }

  result = [GEOAPPortal captureUserAction:v5 target:51 value:0];
  if ((*(a1 + 49) & 1) == 0)
  {
    result = *(*(a1 + 40) + 8);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

uint64_t sub_100ED10DC(uint64_t a1)
{
  +[GEOAPPortal captureUserAction:target:value:](GEOAPPortal, "captureUserAction:target:value:", 2122, [*(a1 + 32) _analyticsTarget], 0);
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100ED1D34(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100ED1DD0;
  v4[3] = &unk_101658A20;
  v5 = *(a1 + 32);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_100ED3F2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 offerTitleText];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_100ED3F74(uint64_t a1, uint64_t a2)
{
  v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", a2 + 1, [*(a1 + 32) offersSection]);
  v3 = [*(a1 + 32) offersRowHeight];
  v4 = [*(a1 + 32) heightCache];
  [v4 setObject:v3 forKeyedSubscript:v5];

  [*(a1 + 40) addObject:v5];
}

void sub_100ED6EF0(uint64_t a1)
{
  v4 = objc_alloc_init(UICollectionViewFlowLayoutInvalidationContext);
  [v4 setInvalidateFlowLayoutAttributes:0];
  v2 = [*(a1 + 32) reservationDetailCell];
  v3 = [v2 timeSelectionCollectionViewLayout];
  [v3 invalidateLayoutWithContext:v4];
}

void sub_100ED98B0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F5D0;
  qword_10195F5D0 = v1;

  v3 = qword_10195F5D0;
  __asm { FMOV            V0.2D, #16.0 }

  *(qword_10195F5D0 + 8) = _Q0;
  *(v3 + 24) = xmmword_101212B80;
  *(v3 + 40) = 0x4038000000000000;
  v9 = +[UIColor labelColor];
  v10 = *(qword_10195F5D0 + 64);
  *(qword_10195F5D0 + 64) = v9;

  v11 = qword_10195F5D0;
  *(qword_10195F5D0 + 72) = xmmword_101212B90;
  *(v11 + 88) = 0x403E000000000000;
  *(v11 + 48) = UIFontTextStyleTitle3;
  *(v11 + 56) = UIFontWeightRegular;
  v12 = +[UIColor secondaryLabelColor];
  v13 = *(qword_10195F5D0 + 96);
  *(qword_10195F5D0 + 96) = v12;

  v14 = qword_10195F5D0;
  *(qword_10195F5D0 + 104) = 0x402C000000000000;
  *(v14 + 112) = UIFontTextStyleTitle1;
  *(v14 + 120) = UIFontWeightBold;
  v15 = +[UIColor labelColor];
  v16 = *(qword_10195F5D0 + 128);
  *(qword_10195F5D0 + 128) = v15;

  v17 = qword_10195F5D0;
  *(qword_10195F5D0 + 272) = vdupq_n_s64(0x4042000000000000uLL);
  *(v17 + 136) = xmmword_101212BA0;
  v18 = _UISolariumEnabled();
  v19 = 66.0;
  if (v18)
  {
    v19 = 60.0;
  }

  v20 = qword_10195F5D0;
  *(qword_10195F5D0 + 152) = v19;
  *(v20 + 160) = UIFontTextStyleTitle2;
  *(v20 + 168) = UIFontWeightBold;
  *(v20 + 176) = UIFontTextStyleTitle3;
  *(v20 + 184) = UIFontWeightBold;
  *(v20 + 192) = 2;
  v21 = +[UIColor systemWhiteColor];
  v22 = *(qword_10195F5D0 + 200);
  *(qword_10195F5D0 + 200) = v21;

  v23 = +[UIColor systemRedColor];
  v24 = *(qword_10195F5D0 + 208);
  *(qword_10195F5D0 + 208) = v23;

  *(qword_10195F5D0 + 216) = xmmword_101212BB0;
  v25 = +[UIColor systemBlueColor];
  v26 = *(qword_10195F5D0 + 232);
  *(qword_10195F5D0 + 232) = v25;

  v27 = +[UIColor tertiarySystemFillColor];
  v28 = *(qword_10195F5D0 + 240);
  *(qword_10195F5D0 + 240) = v27;

  *(qword_10195F5D0 + 248) = 0x4028000000000000;
  v29 = _UISolariumEnabled();
  v30 = 6.0;
  if (v29)
  {
    v30 = 0.0;
  }

  v31 = qword_10195F5D0;
  *(qword_10195F5D0 + 256) = v30;
  *(v31 + 264) = 0x4010000000000000;
}

void sub_100ED9C30(uint64_t a1)
{
  v2 = [[CNMonogrammer alloc] initWithStyle:0 diameter:*(a1 + 48)];
  v3 = [v2 monogramForContact:*(a1 + 32)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ED9D0C;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100ED9EB0(uint64_t a1)
{
  v2 = [[CNMonogrammer alloc] initWithStyle:0 diameter:*(a1 + 40)];
  v3 = [v2 questionMarkMonogram];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ED9F88;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100EDA058(uint64_t a1)
{
  v2 = [[CNMonogrammer alloc] initWithStyle:0 diameter:*(a1 + 40)];
  v3 = [v2 silhouetteMonogram];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EDA130;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100EDD67C(uint64_t a1)
{
  v12 = +[NSMutableArray array];
  v2 = [*(a1 + 32) platformController];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  v5 = [*(a1 + 32) platformController];
  v6 = [v5 auxiliaryTasksManager];
  v7 = [v6 auxilaryTaskForClass:objc_opt_class()];

  if (v3 & 1) != 0 && v4 || ([v7 isProvidingARAnnotations] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isAttached"))
  {
    v8 = [*(a1 + 32) debugText];
    v9 = [v8 string];

    v10 = [MapsRadarTextAttachment attachmentWithFileName:@"PedestrianARStateDiagnostics.txt" text:v9];
    [v12 addObject:v10];

    v11 = [MapsRadarKeyword keywordWithName:@"MAPS377" number:1281664];

    [*(a1 + 40) addAttachments:v12];
    if (v11)
    {
      [*(a1 + 40) addKeyword:v11];
    }
  }

  else
  {
    [*(a1 + 40) addAttachments:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100EDD8EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];
}

void sub_100EDDA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EDDA74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained composeTTR];
}

void sub_100EDDB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EDDBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 startDebugInfoRefreshTimer];
}

int64_t sub_100EDEADC(id a1, PedestrianARSessionMonitor *a2, PedestrianARSessionMonitor *a3)
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  v8 = [v5 compare:v7];

  return v8;
}

void sub_100EDEB5C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195F5F8;
  qword_10195F5F8 = v1;

  [qword_10195F5F8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195F5F8 setLocale:v3];
}

id sub_100EDF210()
{
  if (qword_10195F608 != -1)
  {
    dispatch_once(&qword_10195F608, &stru_101658B10);
  }

  v1 = qword_10195F600;

  return v1;
}

void sub_100EDF264(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_100EDF210();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 134349314;
    v25 = v10;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] %@ TTR category chosen", buf, 0x16u);
  }

  v11 = objc_alloc_init(NSDateFormatter);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v12 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v11 setLocale:v12];

  v13 = +[NSDate date];
  v14 = [v11 stringFromDate:v13];
  v15 = [NSString stringWithFormat:@"Timestamp: %@\n\nSummary:\n\nSteps to Reproduce:\n\nResults:\n", v14];

  v16 = objc_opt_new();
  v17 = [NSString stringWithFormat:@"[Pedestrian AR]: %@", v7];
  [v16 setTitle:v17];

  [v16 addNote:v15];
  [v16 setComponent:v8];

  [v16 setClassification:a3];
  v18 = [MapsRadarKeyword keywordWithName:@"MAPS377" number:1281664];
  v23 = v18;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  [v16 addKeywords:v19];

  v20 = sub_100EDF210();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 32);
    *buf = 134349056;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Will launch MapsRadarController", buf, 0xCu);
  }

  v22 = +[MapsRadarController sharedInstance];
  [v22 launchTTRWithRadar:v16];
}

void sub_100EDF52C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  (*(v1 + 16))(v1, @"Missing AR element", 5, v2);
}

void sub_100EDF59C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  (*(v1 + 16))(v1, @"Wrong AR placement", 5, v2);
}

void sub_100EDF60C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  (*(v1 + 16))(v1, @"Wrong instruction text", 5, v2);
}

void sub_100EDF67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsVisualLocalizationComponent];
  (*(v1 + 16))(v1, @"Failed to localize", 5, v2);
}

void sub_100EDF6EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsVisualLocalizationComponent];
  (*(v1 + 16))(v1, @"Slow to localize", 5, v2);
}

void sub_100EDF75C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  (*(v1 + 16))(v1, @"Performance", 4, v2);
}

void sub_100EDF7CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  (*(v1 + 16))(v1, &stru_1016631F0, 7, v2);
}

void sub_100EDF83C(uint64_t a1)
{
  v2 = sub_100EDF210();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 134349056;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] User canceled TTR action sheet", &v4, 0xCu);
  }
}

void sub_100EDF8E4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARFloatingDebugViewController");
  v2 = qword_10195F600;
  qword_10195F600 = v1;
}

void sub_100EE00AC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F5E0;
  qword_10195F5E0 = v1;
}

void sub_100EE120C(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_101658BC0];
  v2 = qword_10195F610;
  qword_10195F610 = v1;
}

void sub_100EE126C(id a1, SmallDropDownOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
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

  [(SmallDropDownOutlineCell *)v8 setCellModel:v7];
}

void sub_100EE1588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EE15B0(uint64_t a1, void *a2, id a3)
{
  v5 = a2;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100EE16C8;
  v10 = &unk_101658B58;
  objc_copyWeak(v11, (a1 + 48));
  v11[1] = a3;
  v6 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:&v7];
  [v6 setState:{objc_msgSend(*(*(a1 + 32) + 48), "selectedIndex", v7, v8, v9, v10) == a3}];
  [*(a1 + 40) addObject:v6];

  objc_destroyWeak(v11);
}

void sub_100EE16C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _itemSelectedAtIndex:*(a1 + 40)];
}

void sub_100EE1E6C(uint64_t a1)
{
  v2 = sub_10000649C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Allowing previous value of currentCarPlayExternalDevice to deallocate: %{public}@", &v4, 0xCu);
  }
}

uint64_t sub_100EE1F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100EE1F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _populateExternalDevice];
}

void sub_100EE21A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100EE21E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addAppUISectionTo:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 addChromeSettingsTo:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 addCarPlaySectionTo:v3];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 addFlexiblePlacecardSettingsTo:v3];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 addWidgetSettingsTo:v3];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 addWarmingSheetSettingTo:v3];
}

void sub_100EE22E0(uint64_t a1, void *a2)
{
  v29 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addContaineeSettingsTo:v29];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 addHikingSettingsTo:v29];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 addImpressionLoggingSettingsTo:v29];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 addEnhancedBusinessSettingsTo:v29];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 addSmartCardsSettingsTo:v29];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 addDavisSettingsTo:v29];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 addUGCSettingsTo:v29];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 addLPRSettingsTo:v29];

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 addMFDSettingsTo:v29];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 addRoutePlanningSettingsTo:v29];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 addMapsHomeSettingsTo:v29];

  v14 = [v29 addNavigationRowForViewControllerClass:objc_opt_class()];
  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 addLookAroundSettingsTo:v29];

  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 addCollectionSettingsTo:v29];

  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 addShareETASettingsTo:v29];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 addScreenshot2SettingsTo:v29];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 addTransitSettingsTo:v29];

  v20 = objc_loadWeakRetained((a1 + 32));
  [v20 addDOoMSettingsTo:v29];

  v21 = objc_loadWeakRetained((a1 + 32));
  [v21 addFindMyCarSettingsTo:v29];

  v22 = objc_loadWeakRetained((a1 + 32));
  [v22 addPoisInjectionSettingsTo:v29];

  v23 = objc_loadWeakRetained((a1 + 32));
  [v23 addAutocompleteSettingsTo:v29];

  v24 = objc_loadWeakRetained((a1 + 32));
  [v24 addSearchSettingsTo:v29];

  v25 = [v29 addNavigationRowForViewControllerClass:objc_opt_class()];
  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    v26 = objc_loadWeakRetained((a1 + 32));
    [v26 addVisitedPlacesDebugSettingTo:v29];
  }

  v27 = objc_loadWeakRetained((a1 + 32));
  [v27 addTipKitSettingsTo:v29];

  v28 = objc_loadWeakRetained((a1 + 32));
  [v28 addFeaturesSectionTo:v29];
}

void sub_100EE25AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addMapsResetLaunchAlertsTo:v3];

  v6 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 addCoreRecentsTo:v3];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 addOthersTo:v3];
}

void sub_100EE27CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 mapItemIdentifier];

        if (v11)
        {
          v12 = [GEOMapItemIdentifier alloc];
          v13 = [v10 mapItemIdentifier];
          v14 = [v12 initWithMapsIdentifierString:v13];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = +[GEOMapService sharedService];
  v16 = +[GEOMapService sharedService];
  v17 = [v16 defaultTraits];
  v18 = [v15 ticketForIdentifiers:v4 traits:v17];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EE2A14;
  v20[3] = &unk_1016601F0;
  v21 = v5;
  v22 = *(a1 + 32);
  v19 = v5;
  [v18 submitWithCompletionHandler:v20];
}

void sub_100EE2A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 enclosingRegionIdentifier];

        if (v12)
        {
          v13 = [v11 enclosingRegionIdentifier];
          [v4 addObject:v13];
        }

        v14 = [v11 _identifier];
        v15 = [v14 mapsIdentifierString];

        if (v15)
        {
          v16 = [v11 _identifier];
          v17 = [v16 mapsIdentifierString];
          [v5 setObject:v11 forKeyedSubscript:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v18 = +[GEOMapService sharedService];
  v19 = [v4 allObjects];
  v20 = +[GEOMapService sharedService];
  v21 = [v20 defaultTraits];
  v22 = [v18 ticketForIdentifiers:v19 traits:v21];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100EE2CC8;
  v24[3] = &unk_10165FB28;
  v25 = *(a1 + 32);
  v26 = v5;
  v27 = *(a1 + 40);
  v23 = v5;
  [v22 submitWithCompletionHandler:v24];
}

void sub_100EE2CC8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        if ([v9 _hasMUID])
        {
          v10 = [v9 name];

          if (v10)
          {
            v11 = [v9 name];
            v12 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(v9, "_muid")}];
            [v3 setObject:v11 forKeyedSubscript:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v6);
  }

  v29 = v4;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * j);
        v19 = [v18 mapItemIdentifier];

        if (v19)
        {
          v20 = *(a1 + 40);
          v21 = [v18 mapItemIdentifier];
          v22 = [v20 objectForKeyedSubscript:v21];
          v23 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v22];
          [v18 setMapItemStorage:v23];
        }

        v24 = [v18 enclosingRegionMuid];

        if (v24)
        {
          v25 = [v18 enclosingRegionMuid];
          v26 = [v3 objectForKeyedSubscript:v25];
          [v18 setMapItemCity:v26];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
  }

  v27 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v28 = *(a1 + 32);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100EE303C;
  v31[3] = &unk_1016610B8;
  v32 = *(a1 + 48);
  [v27 saveWithObjects:v28 completionHandler:v31];
}

void sub_100EE30D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EE3234;
  v10[3] = &unk_1016612C8;
  v10[4] = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Test Features" content:v10];
  v5 = [v3 addSectionWithTitle:@"Retention Limit" content:&stru_10165C800];
  objc_initWeak(&location, *(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EE33FC;
  v7[3] = &unk_10165E0A8;
  objc_copyWeak(&v8, &location);
  v6 = [v3 addSectionWithTitle:@"Test Features" content:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_100EE3218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EE3234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Library Place Cell Menu" defaultsKey:@"MapsEnableVisitedPlacesLibraryCellMenu"];
  v5 = [v3 addSwitchRowWithTitle:@"Fake Visits - Inject with Low Confidence" defaultsKey:@"MapsInjectFakeVisitsWithLowConfidenceFlag"];
  v6 = [v3 addSwitchRowWithTitle:@"Show Low Confidence CurrentLocation Suggestions" geoConfigKey:{GEOConfigMapsSuggestionsCurrentLocationOfInterestShowLowConfidenceSuggestions[0], GEOConfigMapsSuggestionsCurrentLocationOfInterestShowLowConfidenceSuggestions[1]}];
  v7 = [v3 addSwitchRowWithTitle:@"Opt Out of Analytics while importing visits" geoConfigKey:{GEOConfigMapsSuggestionsVisitsLoaderAnalyticsOptOut[0], GEOConfigMapsSuggestionsVisitsLoaderAnalyticsOptOut[1]}];
  v8 = [v3 addButtonRowWithTitle:@"Reset Visited Places Notification" action:&stru_10165C710];
  v9 = [v3 addButtonRowWithTitle:@"Trigger the Visited Places Notification" action:&stru_10165C740];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EE3794;
  v13[3] = &unk_101661B18;
  v13[4] = *(a1 + 32);
  v10 = [v3 addButtonRowWithTitle:@"‼️ Delete all Visits & Locations ‼️" action:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EE3880;
  v12[3] = &unk_101661B18;
  v12[4] = *(a1 + 32);
  v11 = [v3 addButtonRowWithTitle:@"Refresh Map Items" action:v12];
}

void sub_100EE33FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE34E4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Show VP Welcome Screen" action:v6];
  v5 = [v3 addButtonRowWithTitle:@"Reset Visited Places Warming Sheet" action:&stru_10165C8C0];
  objc_destroyWeak(&v7);
}

void sub_100EE34E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10165C880];
    WeakRetained = v2;
  }
}

void sub_100EE3548(id a1)
{
  v3 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:1 actionFlow:2 actionHandler:&stru_10165C8A0];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100EE361C(id a1, id a2)
{
  v2 = a2;
  v3 = +[_TtC8MapsSync18MapsSyncKeyedStore shared];
  [v3 setObject:v2 key:@"MapsSyncVisitRetentionLimit"];
}

id sub_100EE3688(id a1)
{
  v1 = +[_TtC8MapsSync18MapsSyncKeyedStore shared];
  v2 = [v1 objectForKey:@"MapsSyncVisitRetentionLimit"];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_1016EA310;
  }

  return v3;
}

void sub_100EE3700(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"3 Month" value:&off_1016EA2E0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"12 Months" value:&off_1016EA2F8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Forever (50k cap)" value:&off_1016EA2C8];
}

void sub_100EE3794(uint64_t a1)
{
  v4 = [UIAlertController alertControllerWithTitle:@"Are You Sure?" message:@"This cannot be undone!" preferredStyle:1];
  v2 = [UIAlertAction actionWithTitle:@"☠ Yes style:Delete ☠" handler:2, &stru_10165C7A0];
  [v4 addAction:v2];

  v3 = [UIAlertAction actionWithTitle:@"No style:Cancel" handler:1, &stru_10165C7C0];
  [v4 addAction:v3];

  [*(a1 + 32) _maps_topMostPresentViewController:v4 animated:1 completion:0];
}

void sub_100EE38B8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v4)
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch visits for the notification.", v8, 2u);
    }

    goto LABEL_6;
  }

  if (v3)
  {
    v5 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    v6 = MapsSuggestionsSeePlacesYouveVisitedString();
    v7 = MapsSuggestionsSufficientVisitsMessageString();
    [v5 addSufficientVisitsNotification:v6 message:v7];

LABEL_6:
  }
}

void sub_100EE3988(id a1)
{
  GEOConfigSetBOOL();
  v1 = +[_TtC4Maps32VisitsLoaderConfigurationStorage _debug_only_deleteVisitsLoaderNotificationShownFromDisk];
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "VisitsLoaderConfigurationStorage: %@.", &v3, 0xCu);
  }
}

void sub_100EE3ABC(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Force show suggestion" geoConfigKey:230, &unk_10163EA58];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Force hide suggestion" geoConfigKey:231, &unk_10163EA90];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Allow repeated presentation per launch" geoConfigKey:232, &unk_10163EAC8];
  v5 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Allow when launched for testing" defaultsKey:@"DTMFeatureDiscoveryAllowForTests"];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Max required previous sessions" placeholderText:@"e.g. 3" inputType:1 geoConfigKeyUInteger:233, &unk_10163EB00];
  v7 = [(MapsDebugTableSection *)v8 addButtonRowWithTitle:@"Reset user dismissals" action:&stru_10165C6F0];
}

void sub_100EE3C0C(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:0 content:&stru_10165C650];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:0 content:&stru_10165C670];
}

void sub_100EE3CAC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setInteger:0 forKey:@"LPRRoutingFeatureDiscoverySourceViewedTimesKey"];
}

void sub_100EE3D6C(id a1, MapsDebugValuesViewController *a2)
{
  v5 = a2;
  v2 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Web Bundle" content:&stru_10165C550];
  v3 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Debug Panel" content:&stru_10165C570];
  v4 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Network defaults" content:&stru_10165C610];
}

void sub_100EE3E00(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Feature flag" geoConfigKey:MapsFeaturesConfig_Maps102[0], MapsFeaturesConfig_Maps102[1]];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Debug UI indicator" geoConfigKey:MapsUIConfig_FlexiblePlacecardShowDebugIndicator[0], MapsUIConfig_FlexiblePlacecardShowDebugIndicator[1]];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Allow in Maps.app" geoConfigKey:MapsUIConfig_FlexiblePlacecardAllowInMaps[0], MapsUIConfig_FlexiblePlacecardAllowInMaps[1]];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Allow in 1st Party apps" geoConfigKey:MapsUIConfig_FlexiblePlacecardAllowInFirstParty[0], MapsUIConfig_FlexiblePlacecardAllowInFirstParty[1]];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Allow in 3rd Party apps" geoConfigKey:MapsUIConfig_FlexiblePlacecardAllowInThirdParty[0], MapsUIConfig_FlexiblePlacecardAllowInThirdParty[1]];
}

void sub_100EE3EE8(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Debug Panel Enabled" geoConfigKey:MapsUIConfig_FlexiblePlacecardDebugPanelEnabled[0], MapsUIConfig_FlexiblePlacecardDebugPanelEnabled[1]];
  v3 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"Debug Panel URL" placeholderText:@"URL" inputType:0 get:&stru_10165C590 set:&stru_10165C5B0];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"AccessibilityID Enabled" geoConfigKey:MapsUIConfig_FlexiblePlacecardAXIDEnabled[0], MapsUIConfig_FlexiblePlacecardAXIDEnabled[1]];
  v5 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"AccessibilityID Script URL" placeholderText:@"URL" inputType:0 get:&stru_10165C5D0 set:&stru_10165C5F0];
}

void sub_100EE401C(id a1, MapsDebugTableSection *a2)
{
  v14 = a2;
  v2 = +[MUWebBasedPlacecardResourceManager sharedInstance];
  v3 = [v2 onlineBundleVersion];
  v4 = [(MapsDebugTableSection *)v14 addReadOnlyRowWithTitle:@"Remote Bundle version" value:v3];

  v5 = +[MUWebBasedPlacecardResourceManager sharedInstance];
  v6 = [v5 localBundleVersion];
  v7 = [(MapsDebugTableSection *)v14 addReadOnlyRowWithTitle:@"Local Bundle version (Built-in)" value:v6];

  v8 = +[MUWebBasedPlacecardResourceManager sharedInstance];
  v9 = [v8 bundleDirectory];
  v10 = [(MapsDebugTableSection *)v14 addReadOnlyRowWithTitle:@"Current bundle directory" value:v9];

  v11 = [(MapsDebugTableSection *)v14 addEmptySectionBannerRowWithTitle:@"Maps is required to be relaunched after switching the menu below."];
  v12 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Disable Built-in fallback" geoConfigKey:MapsUIConfig_FlexiblePlacecardDisableBuiltInBundleFallback[0], MapsUIConfig_FlexiblePlacecardDisableBuiltInBundleFallback[1]];
  v13 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Force to use Built-in bundle" geoConfigKey:MapsUIConfig_FlexiblePlacecardForceToFallbackBuiltInBundle[0], MapsUIConfig_FlexiblePlacecardForceToFallbackBuiltInBundle[1]];
}

void sub_100EE426C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100EE4288(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 addSectionWithTitle:@"Ratings and Photos" content:&stru_10165C280];
  v4 = [v13 addSectionWithTitle:@"Informed Consent" content:&stru_10165C330];
  v5 = [v13 addSectionWithTitle:@"Notifications" content:&stru_10165C3B0];
  v6 = [v13 addSectionWithTitle:@"Siri Traffic Incidents" content:&stru_10165C410];
  v7 = +[GEOPlatform sharedPlatform];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    v9 = [v13 addSectionWithTitle:@"Laguna Beach Submission Defaults" content:&stru_10165C490];
  }

  v10 = [v13 addSectionWithTitle:@"LogDiscard Settings" content:&stru_10165C4B0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[13] appendEnvironmentSectionToDebugController:v13];
  }
}

void sub_100EE4410(id a1)
{
  v1 = objc_opt_new();
  MSPUGCFetchClientCertificateWithCompletion();
}

void sub_100EE4470(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Send geotags with photos" geoConfigKey:283 switchOnStateIfUnset:&unk_10163F5F0 changeHandler:0, 0];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Send timestamps with photos" geoConfigKey:284 switchOnStateIfUnset:&unk_10163F628 changeHandler:0, 0];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Send device location with submission" geoConfigKey:285 switchOnStateIfUnset:&unk_10163F660 changeHandler:0, 0];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Save photos after submission" geoConfigKey:313, &unk_10163FC10];
}

void sub_100EE454C(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Enabled" geoConfigKey:MapsFeaturesConfig_EnableBakersfield[0] switchOnStateIfUnset:MapsFeaturesConfig_EnableBakersfield[1] changeHandler:0, 0];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Debug submissions" geoConfigKey:169 switchOnStateIfUnset:&unk_10163DDE0 changeHandler:0, 0];
  v4 = [(MapsDebugTableSection *)v7 addButtonRowWithTitle:@"Delete all cached layout results" action:&stru_10165C430];
  v5 = [(MapsDebugTableSection *)v7 addButtonRowWithTitle:@"Delete all user generated reports" action:&stru_10165C450];
  v6 = [(MapsDebugTableSection *)v7 addButtonRowWithTitle:@"Rollover annon ID" action:&stru_10165C470];
}

void sub_100EE4638(id a1)
{
  v1 = +[TrafficIncidentAuthenticationManager sharedInstance];
  [v1 rolloverAnonymousId];
}

void sub_100EE4680(id a1)
{
  v1 = +[TrafficIncidentsStorageManager sharedInstance];
  [v1 clearCache];
}

void sub_100EE46C8(id a1)
{
  v1 = +[TrafficIncidentLayoutStorage sharedInstance];
  [v1 clearCache];
}

void sub_100EE4710(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Present Fake Photo Submission Resolution (10s delay)" action:&stru_10165C3D0];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Present Fake Photo Attribution Cleared Notification" action:&stru_10165C3F0];
}

void sub_100EE4784(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 simulateUGCPhotoAttributionClearedNotification];
}

void sub_100EE47CC(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 simulateUGCPhotoSubmissionResolution];
}

void sub_100EE4850(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EE488C(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EE48D8(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v8 = a2;
  v2 = [NSNumber numberWithInteger:1];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Opted in" value:v2];

  v4 = [NSNumber numberWithInteger:2];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Opted out" value:v4];

  v6 = [NSNumber numberWithInteger:0];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Hasn't answered yet" value:v6];
}

void sub_100EE49B8(id a1, MapsDebugTableSection *a2)
{
  v11 = a2;
  v2 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Enable user generated content" geoConfigKey:MapsFeaturesConfig_ShouldEnableLagunaBeach[0], MapsFeaturesConfig_ShouldEnableLagunaBeach[1]];
  v3 = [(MapsDebugTableSection *)v11 addButtonRowWithTitle:@"Clear all POI enrichment content" action:&stru_10165C2A0];
  v4 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Enable add photo override" defaultsKey:@"__internal__AllowAddingFakePhotos" switchOnStateIfUnset:0 changeHandler:0];
  v5 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Tipkit banner set" geoConfigKey:262, &unk_10163F158];
  v6 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Force All Siri Suggestions As Rating Suggestions" geoConfigKey:263, &unk_10163F190];
  GEOConfigGetDouble();
  v8 = [NSString stringWithFormat:@"Present Third Party Photo Sharing splash screen (%.f s delay)", v7];
  v9 = [(MapsDebugTableSection *)v11 addButtonRowWithTitle:v8 action:&stru_10165C2D0];

  v10 = [(MapsDebugTableSection *)v11 addButtonRowWithTitle:@"Reset Third Party Photo Sharing splash screen" action:&stru_10165C310];
}

void sub_100EE4B1C(id a1)
{
  v1 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
  [v1 debugEraseServerSavedThirdPartyPhotoSharingPreference];
}

void sub_100EE4B64(id a1)
{
  GEOConfigGetDouble();
  v2 = dispatch_time(0, (v1 * 1000000000.0));

  dispatch_after(v2, &_dispatch_main_q, &stru_10165C2F0);
}

void sub_100EE4BC0(id a1)
{
  v3 = objc_alloc_init(UGCThirdPartyPhotoSharingSplashViewController);
  [(UGCThirdPartyPhotoSharingSplashViewController *)v3 setModalPresentationStyle:2];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100EE4CBC(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enable Save MapItem UI" geoConfigKey:MapKitConfig_MKUseSerializedMapItemStorage[0], MapKitConfig_MKUseSerializedMapItemStorage[1]];
  v3 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Clear Saved MapItem" action:&stru_10165C260];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Hide rating ribbon item if call to action present" geoConfigKey:MapsUIConfig_MakeRatingScoreAndCallToActionRibbonItemsMutuallyExclusive[0], MapsUIConfig_MakeRatingScoreAndCallToActionRibbonItemsMutuallyExclusive[1]];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Force separator style" geoConfigKey:MapsUIConfig_ForceSeparatorPlacecardStyle[0], MapsUIConfig_ForceSeparatorPlacecardStyle[1]];
}

void sub_100EE4D7C(id a1)
{
  v1 = NSTemporaryDirectory();
  v3 = [v1 stringByAppendingPathComponent:@"SavedMapItem.json"];

  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:v3 error:0];
}

void sub_100EE4E64(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Place Card Impressions" defaultsKey:@"EnablePlacecardImpressionLoggingVisualization" switchOnStateIfUnset:0 changeHandler:&stru_10165C1E0];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Search Result Impressions" defaultsKey:@"EnableSearchResultsImpressionLoggingVisualization" switchOnStateIfUnset:0 changeHandler:&stru_10165C200];
}

void sub_100EE4EF0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[MapsImpressionsSearchResultsFloatingDebugViewController sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 attach];
  }

  else
  {
    [v3 detach];
  }
}

void sub_100EE4F50(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[MapsImpressionsPlaceCardFloatingDebugViewController sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 attach];
  }

  else
  {
    [v3 detach];
  }
}

void sub_100EE506C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100EE5088(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100EE514C;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Verified Business Header" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100EE514C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSliderRowWithTitle:@"Logo visibility start transition" subtitleStringHandler:&stru_10165C160 min:MapsUIConfig_EnhancedPlaceHeaderLogoStartTransition[0] max:MapsUIConfig_EnhancedPlaceHeaderLogoStartTransition[1] geoConfigKeyDouble:0 changeHandler:{0.0, 1.0}];
  v5 = [v3 addSliderRowWithTitle:@"Logo visibility end transition" subtitleStringHandler:&stru_10165C180 min:MapsUIConfig_EnhancedPlaceHeaderLogoEndTransition[0] max:MapsUIConfig_EnhancedPlaceHeaderLogoEndTransition[1] geoConfigKeyDouble:0 changeHandler:{0.0, 1.0}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EE527C;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, (a1 + 32));
  v6 = [v3 addButtonRowWithTitle:@"Restore Defaults" action:v7];
  objc_destroyWeak(&v8);
}

void sub_100EE527C(uint64_t a1)
{
  GEOConfigSetDouble();
  GEOConfigSetDouble();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100EE539C(id a1, MapsDebugValuesViewController *a2)
{
  v9 = a2;
  v2 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Elevation Graph (Smoothing)" content:&stru_10165C030];
  v3 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Elevation Graph (Accessibility)" content:&stru_10165C080];
  v4 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Elevation Graph (Planning content:Normalisation)", &stru_10165C0A0];
  v5 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Elevation Graph (Planning content:Alternative Normalisation)", &stru_10165C0C0];
  v6 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Routing Options" content:&stru_10165C0E0];
  v7 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Annotations" content:&stru_10165C100];
  v8 = [(MapsDebugValuesViewController *)v9 addSectionWithTitle:@"Out of Coverage Error" content:&stru_10165C120];
}

void sub_100EE5528(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addSwitchRowWithTitle:@"Show all possible options" geoConfigKey:240, &unk_10163EC88];
  [(MapsDebugTableSection *)v3 setFooter:@"China doesn't support avoidance, but does support e-bike. This switch enables the UI for both for all countries."];
}

void sub_100EE5590(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Force linear calculation" geoConfigKey:293, &unk_10163F7E8];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Avg linear ratio" placeholderText:0 inputType:3 geoConfigKeyDouble:294, &unk_10163F820];
  [(MapsDebugTableSection *)v4 setFooter:@"Uses simple linear equations to figure out the chart width based on route length. Route lengths from Min to Average will reach a max of [avg linear ratio] of available width, e.g. 70%. From Average to Max covers the remaining available width, e.g. 30%."];
}

void sub_100EE5624(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Min route length" placeholderText:0 inputType:3 geoConfigKeyDouble:288, &unk_10163F6D0];
  v3 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Average route length" placeholderText:0 inputType:3 geoConfigKeyDouble:289, &unk_10163F708];
  v4 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Max route length" placeholderText:0 inputType:3 geoConfigKeyDouble:290, &unk_10163F740];
  v5 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"A" placeholderText:0 inputType:3 geoConfigKeyDouble:291, &unk_10163F778];
  v6 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"B" placeholderText:0 inputType:3 geoConfigKeyDouble:292, &unk_10163F7B0];
  [(MapsDebugTableSection *)v7 setFooter:@"Normalisation is done using the equation y = A + B ln(x), where x is the distance in km and y is the ratio from 0.0 to 1.0 for available chart width."];
}

void sub_100EE5744(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addSwitchRowWithTitle:@"Fake segment descriptions (AX)" defaultsKey:@"ElevationGraphFakeSegmentDescriptions"];
  [(MapsDebugTableSection *)v3 setFooter:@"Generates fake 4 equally-sized segments with generic names."];
}

void sub_100EE57A8(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Skip all smoothing" geoConfigKey:238, &unk_10163EC18];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Ignore server smoothing range" geoConfigKey:267, &unk_10163F270];
  v4 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Client smoothing (metres)" placeholderText:@"e.g. 40" inputType:3 geoConfigKeyDouble:237, &unk_10163EBE0];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Fake segment descriptions (AX)" defaultsKey:@"ElevationGraphFakeSegmentDescriptions"];
  [(MapsDebugTableSection *)v6 setFooter:@"Client smoothing only applies in the absence of server smoothing values or the Ignore switch."];
}

void sub_100EE58B8(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Snapshotting" content:&stru_10165BFB0];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Radar" content:&stru_10165BFF0];
}

void sub_100EE5998(id a1)
{
  v1 = +[MURouteSnapshotManager sharedInstance];
  [v1 purgeSnapshotsWithCompletionBlock:0];
}

void sub_100EE5A68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EE5B88;
    v8[3] = &unk_10165BE30;
    v8[4] = *(a1 + 32);
    v9 = 0;
    v4 = [v3 addSectionWithTitle:@"Location Intelligence" content:v8];
  }

  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100EE5D60;
    v6[3] = &unk_10165BE30;
    v6[4] = *(a1 + 32);
    v7 = 0;
    v5 = [v3 addSectionWithTitle:@"Visited Places" content:v6];
  }
}

void sub_100EE5B88(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EE6284;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  v4 = [v3 addButtonRowWithTitle:@"Show LI welcome screen" action:v11];
  v5 = [v3 addButtonRowWithTitle:@"Reset LI Seen Flags" action:&stru_10165BD88];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EE62D4;
  v9[3] = &unk_101661B18;
  v10 = *(a1 + 40);
  v6 = [v3 addButtonRowWithTitle:@"Reset Last Seen Date" action:v9];
  v7 = [v3 addTextFieldRowWithTitle:@"LocInt warming sheet threshold" placeholderText:@"x days" inputType:1 get:&stru_10165BDB8 set:&stru_10165BDE8];
  v8 = [v3 addButtonRowWithTitle:@"Reset Route Planning Tip" action:&stru_10165BE08];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_100EE5D40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100EE5D60(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100EE5FB4;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, &location);
  v4 = [v3 addButtonRowWithTitle:@"Show Onboarding Flow" action:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE6004;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  v5 = [v3 addButtonRowWithTitle:@"Show Settings Flow" action:v15];
  v6 = [v3 addButtonRowWithTitle:@"Reset Warming Sheet" action:&stru_10165BED0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100EE6054;
  v13 = &unk_101661B18;
  v14 = *(a1 + 40);
  v7 = [v3 addButtonRowWithTitle:@"Reset Last Seen Date" action:&v10];
  v8 = [v3 addButtonRowWithTitle:@"Reset Tipkit In Library" action:{&stru_10165BF10, v10, v11, v12, v13}];
  v9 = [v3 addTextFieldRowWithTitle:@"VP warming sheet threshold" placeholderText:@"x days" inputType:1 get:&stru_10165BF40 set:&stru_10165BF70];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_100EE5F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100EE5FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10165BE50];
    WeakRetained = v2;
  }
}

void sub_100EE6004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10165BE90];
    WeakRetained = v2;
  }
}

void sub_100EE6068(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 integerValue])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetUInteger();
  }
}

NSString *__cdecl sub_100EE60C4(id a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%ld", GEOConfigGetUInteger()];

  return v1;
}

void sub_100EE6154(id a1)
{
  v3 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:1 actionFlow:1 actionHandler:&stru_10165BEB0];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100EE61EC(id a1)
{
  v3 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:1 actionFlow:2 actionHandler:&stru_10165BE70];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100EE6284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10165BD48];
    WeakRetained = v2;
  }
}

void sub_100EE62FC(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 integerValue])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetUInteger();
  }
}

NSString *__cdecl sub_100EE6358(id a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%ld", GEOConfigGetUInteger()];

  return v1;
}

void sub_100EE63D4(id a1)
{
  v3 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:0 actionFlow:2 actionHandler:&stru_10165BD68];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

id sub_100EE64F0(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EE6574;
  v3[3] = &unk_1016612C8;
  v3[4] = *(a1 + 32);
  return [a2 addSectionWithTitle:@"SwiftUI Support" content:v3];
}

void sub_100EE6574(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EE66CC;
  v9[3] = &unk_101661B18;
  v9[4] = *(a1 + 32);
  v4 = [v3 addButtonRowWithTitle:@"Push Modal Card" action:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EE66E0;
  v8[3] = &unk_101661B18;
  v8[4] = *(a1 + 32);
  v5 = [v3 addButtonRowWithTitle:@"Push Large Card" action:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EE66F4;
  v7[3] = &unk_101661B18;
  v7[4] = *(a1 + 32);
  v6 = [v3 addButtonRowWithTitle:@"Push Resizeable Card" action:v7];
}

void sub_100EE6708(id a1, IOSBasedChromeViewController *a2)
{
  v2 = a2;
  v6 = objc_alloc_init(_TtC4Maps37TestResizeableContaineeViewController);
  v3 = [(IOSBasedChromeViewController *)v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];
  [(ContaineeViewController *)v6 setContaineeDelegate:v4];

  v5 = [(IOSBasedChromeViewController *)v2 _currentContainerViewController];

  [v5 presentController:v6 animated:1];
}

void sub_100EE67BC(id a1, IOSBasedChromeViewController *a2)
{
  v2 = a2;
  v6 = objc_alloc_init(_TtC4Maps36TestLargeCardContaineeViewController);
  v3 = [(IOSBasedChromeViewController *)v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];
  [(ContaineeViewController *)v6 setContaineeDelegate:v4];

  v5 = [(IOSBasedChromeViewController *)v2 _currentContainerViewController];

  [v5 presentController:v6 animated:1];
}

void sub_100EE6870(id a1, IOSBasedChromeViewController *a2)
{
  v2 = a2;
  v6 = objc_alloc_init(_TtC4Maps36TestModalCardContaineeViewController);
  v3 = [(IOSBasedChromeViewController *)v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];
  [(ContaineeViewController *)v6 setContaineeDelegate:v4];

  v5 = [(IOSBasedChromeViewController *)v2 _currentContainerViewController];

  [v5 presentController:v6 animated:1];
}

void sub_100EE6A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100EE6A94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 lastError];
  if (v5)
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch test route: %@", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = [v5 localizedDescription];
      v9 = [UIAlertController alertControllerWithTitle:@"Failed to get test route" message:v8 preferredStyle:1];

      v10 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:0];
      [v9 addAction:v10];

      [WeakRetained presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    v11 = [v4 routes];
    WeakRetained = [v11 firstObject];

    v12 = sub_100798A3C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [WeakRetained expectedTime] / 0x3CuLL;
      v14 = [*(a1 + 32) valueForKey:@"name"];
      v15 = 134218242;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Fetched a %lu minute test route with waypoints: %@", &v15, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100EE6E0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100EE6E34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 mapItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
  {
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch test destination: %@", &v17, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v9 = [v6 localizedDescription];
      v10 = [UIAlertController alertControllerWithTitle:@"Failed to find test waypoints" message:v9 preferredStyle:1];

      v11 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:0];
      [v10 addAction:v11];

      [WeakRetained presentViewController:v10 animated:1 completion:0];
    }
  }

  else
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
    [v14 addObject:v15];

    v16 = [v5 mapItems];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100EE70EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Catalyst" content:&stru_10165BAE0];
  v5 = [v3 addSectionWithTitle:@"iOS" content:&stru_10165BB00];
  v6 = [v3 addSectionWithTitle:@"Out of Coverage Errors" content:&stru_10165BB20];
  v7 = [v3 addSectionWithTitle:@"Transit Route Updates" content:&stru_10165BB40];
  v8 = [v3 addSectionWithTitle:@"Environmental/Regulatory" content:&stru_10165BB60];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EE7224;
  v10[3] = &unk_1016612C8;
  v10[4] = *(a1 + 32);
  v9 = [v3 addSectionWithTitle:@"Resume Route Testing" content:v10];
}

void sub_100EE7224(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFooter:{@"Searches for the query above and then gets a route through a number of the results.\nAll routes originate from current location.\nThis can take a few seconds to complete, wait for an alert."}];
  objc_initWeak(&location, *(a1 + 32));
  v4 = [v3 addTextFieldRowWithTitle:@"Destination Search Query" placeholderText:@"search category or chain name" inputType:0 defaultsKey:@"__internal_ResumeRouteTestSearchQuery"];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100EE7610;
  v33[3] = &unk_10165BC78;
  v33[4] = *(a1 + 32);
  objc_copyWeak(&v34, &location);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100EE77A4;
  v31[3] = &unk_101661760;
  v5 = objc_retainBlock(v33);
  v32 = v5;
  v6 = [v3 addButtonRowWithTitle:@"A-B" action:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100EE77C0;
  v29[3] = &unk_101661760;
  v7 = v5;
  v30 = v7;
  v8 = [v3 addButtonRowWithTitle:@"A-B (bad storage action:{current location only)", v29}];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100EE77E0;
  v27[3] = &unk_101661760;
  v9 = v7;
  v28 = v9;
  v10 = [v3 addButtonRowWithTitle:@"A-B (bad storage action:{one waypoint only)", v27}];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100EE7800;
  v25[3] = &unk_101661760;
  v11 = v9;
  v26 = v11;
  v12 = [v3 addButtonRowWithTitle:@"A-B-C (no progress)" action:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100EE781C;
  v23[3] = &unk_101661760;
  v13 = v11;
  v24 = v13;
  v14 = [v3 addButtonRowWithTitle:@"A-B-C-D (no progress)" action:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100EE7838;
  v21[3] = &unk_101661760;
  v15 = v13;
  v22 = v15;
  v16 = [v3 addButtonRowWithTitle:@"A-B-C-D (resume towards C)" action:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100EE7854;
  v19[3] = &unk_101661760;
  v17 = v15;
  v20 = v17;
  v18 = [v3 addButtonRowWithTitle:@"A-B-C-D (resume towards D)" action:v19];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void sub_100EE7610(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v7 = a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v21[3] = v8;
  v9 = [*(a1 + 32) presentingViewController];
  v10 = [v9 _maps_mapsSceneDelegate];

  v11 = [v10 chromeViewController];
  v12 = [v11 currentTraits];
  v13 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EE7870;
  v16[3] = &unk_10165BC50;
  v20[1] = a2;
  v16[4] = v13;
  v14 = v12;
  v17 = v14;
  v19 = v21;
  v15 = v7;
  v18 = v15;
  objc_copyWeak(v20, (a1 + 40));
  [v13 _searchForWaypointsWithCompletion:v16];
  objc_destroyWeak(v20);

  _Block_object_dispose(v21, 8);
}

void sub_100EE7774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100EE7870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
  [v4 addObject:v5];

  if (*(a1 + 72))
  {
    v6 = 0;
    do
    {
        ;
      }

      v8 = [v3 objectAtIndexedSubscript:i];
      v9 = [v8 _geoMapItem];
      v10 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v9];
      [v4 addObject:v10];

      ++v6;
    }

    while (v6 < *(a1 + 72));
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE7A44;
  v15[3] = &unk_10165BC28;
  v13 = *(a1 + 48);
  v18 = *(a1 + 56);
  v16 = v13;
  objc_copyWeak(&v19, (a1 + 64));
  v14 = v4;
  v17 = v14;
  [v11 _requestRouteWithWaypoints:v14 traits:v12 completion:v15];

  objc_destroyWeak(&v19);
}

void sub_100EE7A44(uint64_t a1, void *a2)
{
  v3 = a2;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100EE7C74;
  v22[3] = &unk_10165BB88;
  v22[4] = *(a1 + 48);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100EE7DD4;
  v20[4] = sub_100EE7DE4;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE7DEC;
  v15[3] = &unk_10165BBB0;
  v4 = objc_retainBlock(v22);
  v17 = v4;
  v16 = *(a1 + 32);
  v5 = *(a1 + 48);
  v18 = v20;
  v19 = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EE80DC;
  v9[3] = &unk_10165BC00;
  objc_copyWeak(&v14, (a1 + 56));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v6;
  v12 = v7;
  v13 = v20;
  v11 = *(a1 + 32);
  v8 = [HistoryEntryRecentsItem saveRoute:v3 withOriginalHistoryIdentifier:0 editBlock:v15 completionBlock:v9];

  objc_destroyWeak(&v14);
  _Block_object_dispose(v20, 8);
}

void sub_100EE7C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 64));
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_100EE7C74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(__CFString *)v6 length])
  {
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updating test route request storage for variant %@", &v11, 0xCu);
    }

    if (v6 == @"current-location-only")
    {
      v8 = [v5 waypoints];
      v9 = [v8 firstObject];
    }

    else
    {
      if (v6 != @"one-waypoint-only")
      {
        goto LABEL_11;
      }

      v8 = [v5 waypoints];
      v9 = [v8 lastObject];
    }

    v10 = v9;

    if (v10)
    {
      [v5 clearWaypoints];
      [v5 addWaypoints:v10];
      *(*(*(a1 + 32) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_11:
}

uint64_t sub_100EE7DD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100EE7DEC(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 routeRequestStorage];
    (*(a1[5] + 16))();
    [v4 setRouteRequestStorage:v5];
    v6 = [v5 waypoints];
    v7 = [v6 copy];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [v4 setNavigationInterrupted:1];
    v10 = sub_100798A3C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Saving for Resume Route...", &v23, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v3;
    v12 = [v11 routeRequestStorage];
    (*(a1[5] + 16))();
    [v11 setRouteRequestStorage:v12];
    v13 = [v12 waypoints];
    v14 = [v13 copy];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [v11 setNavigationInterrupted:1];
    v17 = *(*(a1[7] + 8) + 24);
    if (v17 >= [v12 waypointsCount])
    {
      v18 = sub_100798A3C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Not setting progress waypoint index for test route, it's out of bounds", &v23, 2u);
      }
    }

    else
    {
      [v11 setRouteProgressWaypointIndex:*(*(a1[7] + 8) + 24)];
    }

    v19 = [v12 waypointsAtIndex:*(*(a1[7] + 8) + 24)];
    v20 = sub_100798A3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(*(a1[7] + 8) + 24);
      v22 = [v19 name];
      v23 = 134218242;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Saving for Resume Route (resuming towards waypoint index %lu, %@)...", &v23, 0x16u);
    }
  }
}

void sub_100EE80DC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EE81D0;
  block[3] = &unk_10165BBD8;
  objc_copyWeak(&v14, (a1 + 64));
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v11 = v4;
  v13 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v14);
}

void sub_100EE81D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 localizedDescription];
      v5 = [UIAlertController alertControllerWithTitle:@"Route Not Saved" message:v4 preferredStyle:1];

      v6 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
      [v5 addAction:v6];

      [WeakRetained presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v5 = MapsSuggestionsEngineForMapsProcess();
      [v5 hintRefreshOfType:11];
      v7 = [*(a1 + 40) valueForKey:@"name"];
      v8 = *(*(*(a1 + 56) + 8) + 24);
      if (v8 >= [*(*(*(a1 + 64) + 8) + 40) count])
      {
        v9 = 0;
      }

      else
      {
        v9 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      }

      v10 = [*(*(*(a1 + 64) + 8) + 40) valueForKey:@"name"];
      v11 = [v7 componentsJoinedByString:@" >\n"];
      v12 = [NSString stringWithFormat:@"Requested Waypoints:\n%@", v11];

      if (*(a1 + 48))
      {
        v13 = [v10 componentsJoinedByString:@" >\n"];
        v14 = [v12 stringByAppendingFormat:@"\n\nFinal Waypoints:\n%@\n\nPost-processing: %@", v13, *(a1 + 48)];

        v12 = v14;
      }

      if (v9)
      {
        v15 = [v9 name];
        v16 = [v12 stringByAppendingFormat:@"\n\nResuming to: %@", v15];

        v12 = v16;
      }

      v17 = [WeakRetained parentViewController];
      v18 = [UIAlertController alertControllerWithTitle:@"Route Saved" message:v12 preferredStyle:1];
      v19 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:0];
      [v18 addAction:v19];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100EE8538;
      v22[3] = &unk_10165F220;
      v23 = v17;
      v20 = v17;
      v21 = [UIAlertAction actionWithTitle:@"Close Debug Panel" style:0 handler:v22];
      [v18 addAction:v21];

      [WeakRetained presentViewController:v18 animated:1 completion:0];
    }
  }
}

void sub_100EE865C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 registerDefaults:&off_1016EE628];
}

void sub_100EE8864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) displayName];
    v6 = [NSString stringWithFormat:@"Error Sharing with %@", v5];
    v7 = [v4 debugDescription];
    v8 = [v7 copy];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100EE89F0;
    v12[3] = &unk_10165F220;
    v13 = v9;
    v10 = v9;
    v11 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:v12];
    [v10 addAction:v11];

    [*(a1 + 40) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [_TtC4Maps29MapsSharedTripAnalyticsHelper sendSuccessAnalyticFor:*(a1 + 32)];
  }
}

void sub_100EE8A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Share ETA" content:&stru_10165B748];
  v5 = [v3 addSectionWithTitle:@"IDS Capabilities" content:&stru_10165B7C8];
  v6 = [v3 addSectionWithTitle:@"Minimal Strategy" content:&stru_10165B7E8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EE8CB8;
  v16[3] = &unk_1016612C8;
  v16[4] = *(a1 + 32);
  v7 = [v3 addSectionWithTitle:@"Live Strategy" content:v16];
  v8 = [v3 addSectionWithTitle:@"User Input (Siri/Keyboard)" content:&stru_10165B8B0];
  v9 = [v3 addSectionWithTitle:0 content:&stru_10165B8D0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE8D8C;
  v15[3] = &unk_1016612C8;
  v15[4] = *(a1 + 32);
  v10 = [v3 addSectionWithTitle:@"Testing the service" content:v15];
  v11 = [v3 addSectionWithTitle:@"Mock trips for UI testing" content:&stru_10165B950];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EE8EEC;
  v14[3] = &unk_1016612C8;
  v14[4] = *(a1 + 32);
  v12 = [v3 addSectionWithTitle:@"UI" content:v14];
  v13 = [v3 addSectionWithTitle:@"Notifications" content:&stru_10165B990];
}

void sub_100EE8CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(v4) = 1119092736;
  LODWORD(v5) = 1.0;
  v6 = [v3 addSliderRowWithTitle:@"Between 2 ETA updates" subtitleStringFormat:@"%.1f" min:&stru_10165B848 max:&stru_10165B868 get:v5 set:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EEA158;
  v8[3] = &unk_101661B18;
  v8[4] = *(a1 + 32);
  v7 = [v3 addButtonRowWithTitle:@"Reset" action:v8];
}

void sub_100EE8D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EE9D6C;
  v10[3] = &unk_101661B18;
  v10[4] = *(a1 + 32);
  v4 = [v3 addButtonRowWithTitle:@"Share with contact..." action:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EE9DFC;
  v9[3] = &unk_101661B18;
  v9[4] = *(a1 + 32);
  v5 = [v3 addButtonRowWithTitle:@"Stop all sharing" action:v9];
  v6 = [v3 addButtonRowWithTitle:@"Clear 'user confirmed handle'" action:&stru_10165B8F0];
  v7 = [v3 addButtonRowWithTitle:@"Purge expired blocked trip identifiers" action:&stru_10165B910];
  v8 = [v3 addButtonRowWithTitle:@"Clear blocked trip identifiers" action:&stru_10165B930];
}

id sub_100EE8EEC(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EE9B14;
  v3[3] = &unk_101661B18;
  v3[4] = *(a1 + 32);
  return [a2 addButtonRowWithTitle:@"Push SharedTripsContext" action:v3];
}

void sub_100EE8F70(id a1, MapsDebugTableSection *a2)
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100EE923C;
  v24[3] = &unk_10165BA38;
  v25 = &stru_10165BA10;
  v26 = &stru_10165B9D0;
  v2 = a2;
  v3 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Initial" action:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100EE9354;
  v21[3] = &unk_10165BA38;
  v22 = &stru_10165BA10;
  v23 = &stru_10165B9D0;
  v4 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Update" action:v21];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100EE946C;
  v18[3] = &unk_10165BA38;
  v19 = &stru_10165BA10;
  v20 = &stru_10165B9D0;
  v5 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Charging Stop" action:v18];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE9584;
  v15[3] = &unk_10165BA38;
  v16 = &stru_10165BA10;
  v17 = &stru_10165B9D0;
  v6 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Intermediate Stop" action:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EE969C;
  v12[3] = &unk_10165BA38;
  v13 = &stru_10165BA10;
  v14 = &stru_10165B9D0;
  v7 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Resume" action:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EE97B4;
  v9[3] = &unk_10165BA38;
  v10 = &stru_10165BA10;
  v11 = &stru_10165B9D0;
  v8 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Final" action:v9];
  [(MapsDebugTableSection *)v2 setFooter:@"Only to be used for testing strings.\nRequires at least one received trip."];
}

void sub_100EE923C(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 initialNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 initialNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTrip"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE9354(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 updateNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 updateNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTripUpdate"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE946C(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 chargingStopNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 chargingStopNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTripUpdate"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE9584(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 intermediateArrivalNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 intermediateArrivalNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTripUpdate"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE969C(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 waypointResumeNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 waypointResumeNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTripUpdate"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE97B4(uint64_t a1)
{
  v6 = (*(*(a1 + 32) + 16))();
  v2 = objc_alloc_init(UNMutableNotificationContent);
  [v2 setTitle:&stru_1016631F0];
  v3 = [v6 arrivalNotificationSubtitle];
  [v2 setSubtitle:v3];

  v4 = [v6 arrivalNotificationBody];
  [v2 setBody:v4];

  [v2 setInterruptionLevel:2];
  v5 = [NSURL URLWithString:@"maps://"];
  [v2 setDefaultActionURL:v5];

  [v2 setCategoryIdentifier:@"MapsUNCategorySharedTripUpdate"];
  (*(*(a1 + 40) + 16))();
}

void sub_100EE98CC(id a1, UNNotificationContent *a2)
{
  v2 = a2;
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [UNNotificationRequest requestWithIdentifier:v4 content:v2 trigger:0 destinations:1];

  v6 = +[UNUserNotificationCenter currentNotificationCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EE99DC;
  v8[3] = &unk_10165F7B8;
  v9 = v5;
  v7 = v5;
  [v6 addNotificationRequest:v7 withCompletionHandler:v8];
}

void sub_100EE99DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1007984E4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error adding test notification: %@\n(notification: %@)", &v6, 0x16u);
    }
  }
}

GEOSharedNavState *__cdecl sub_100EE9AA8(id a1)
{
  v1 = +[MSPSharedTripService sharedInstance];
  v2 = [v1 receivedTrips];
  v3 = [v2 lastObject];

  return v3;
}

void sub_100EE9B14(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EE9BE4;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EE9BE4(uint64_t a1)
{
  v4 = objc_alloc_init(IOSSharedTripsContext);
  v2 = [*(a1 + 32) appCoordinator];
  v3 = [v2 baseActionCoordinator];
  [(IOSSharedTripsContext *)v4 setDelegate:v3];

  [*(a1 + 32) pushContext:v4 animated:1 completion:&stru_10165B970];
}

void sub_100EE9C84(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Single destination" geoConfigKey:GEOConfigMSPShareETAIncludeMockTripForUITesting[0], GEOConfigMSPShareETAIncludeMockTripForUITesting[1]];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Multiple destinations geoConfigKey:start of route", GEOConfigMSPShareETAIncludeMockMPRTripForUITesting[0], GEOConfigMSPShareETAIncludeMockMPRTripForUITesting[1]];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Multiple destinations geoConfigKey:passed 1 stop", GEOConfigMSPShareETAIncludeMockMPRMiddleOfRouteTripForUITesting[0], GEOConfigMSPShareETAIncludeMockMPRMiddleOfRouteTripForUITesting[1]];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Sky trip" geoConfigKey:GEOConfigMSPShareETAIncludeMockSkyTripForUITesting[0], GEOConfigMSPShareETAIncludeMockSkyTripForUITesting[1]];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Closed trip with past ETA (Safety Check)" geoConfigKey:GEOConfigMSPShareETAIncludeMockClosedTripWithPastETAForUITesting[0], GEOConfigMSPShareETAIncludeMockClosedTripWithPastETAForUITesting[1]];
}

void sub_100EE9D6C(uint64_t a1)
{
  v2 = objc_alloc_init(CNContactPickerViewController);
  [v2 setDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  v5 = v2;

  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

void sub_100EE9DFC(uint64_t a1)
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EE9F90;
  v3[3] = &unk_10165F7B8;
  v3[4] = *(a1 + 32);
  [v2 stopAllSharingWithCompletion:v3];
}

void sub_100EE9E90(id a1)
{
  v1 = +[MSPSharedTripService sharedInstance];
  [v1 clearBlockedTripIdentifiers];
}

void sub_100EE9ED8(id a1)
{
  v1 = +[MSPSharedTripService sharedInstance];
  [v1 purgeExpiredBlockedTripIdentifiers];
}

void sub_100EE9F20(id a1)
{
  v1 = +[NSUserDefaults __maps_groupUserDefaults];
  [v1 removeObjectForKey:@"MapsSharedETADefaultSender"];

  v2 = +[NSUserDefaults __maps_groupUserDefaults];
  [v2 synchronize];
}

void sub_100EE9F90(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 debugDescription];
    v4 = [v3 copy];
    v5 = [UIAlertController alertControllerWithTitle:@"Error Stopping Sharing" message:v4 preferredStyle:1];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EEA0B8;
    v8[3] = &unk_10165F220;
    v9 = v5;
    v6 = v5;
    v7 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:v8];
    [v6 addAction:v7];

    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
}

void sub_100EEA0C8(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

id sub_100EEA1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  [a5 doubleValue];
  GEOConfigSetDouble();
  v6 = *(a1 + 32);

  return [v6 reloadData];
}

void sub_100EEA25C(id a1, MapsDebugTableSection *a2)
{
  LODWORD(v3) = 1133903872;
  LODWORD(v2) = 10.0;
  v4 = [(MapsDebugTableSection *)a2 addSliderRowWithTitle:@"Between 2 ETA updates" subtitleStringFormat:@"%.1f" min:&stru_10165B808 max:&stru_10165B828 get:v2 set:v3];
}

void sub_100EEA2E8(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Suppress Sky message content" geoConfigKey:GEOConfigMSPShareETASuppressSharingRoutingPathLegs[0], GEOConfigMSPShareETASuppressSharingRoutingPathLegs[1]];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Suppress Sydney message content" geoConfigKey:GEOConfigMSPShareETASuppressSharingWaypointRoutes[0], GEOConfigMSPShareETASuppressSharingWaypointRoutes[1]];
}

void sub_100EEA364(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enable Share ETA" geoConfigKey:GEOConfigMSPSharedTripServerEnabled[0] switchOnStateIfUnset:GEOConfigMSPSharedTripServerEnabled[1] changeHandler:1, &stru_10165B768];
  v3 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Delete all session storage" action:&stru_10165B788];
  v4 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Block all received trips" action:&stru_10165B7A8];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Archive and restore sending state in navigation" geoConfigKey:521, &unk_101642210];
}

void sub_100EEA42C(id a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[MSPSharedTripService sharedInstance];
  v2 = [v1 receivedTrips];

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

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = +[MSPSharedTripService sharedInstance];
        v9 = [v7 groupIdentifier];
        [v8 blockSharedTripWithIdentifier:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100EEA56C(id a1)
{
  v1 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v2 = [v1 groupDirectory];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&off_1016EDAF0 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138543618;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&off_1016EDAF0);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v2 stringByAppendingPathComponent:{v8, v13}];
        v10 = +[NSFileManager defaultManager];
        v14 = 0;
        [v10 removeItemAtPath:v9 error:&v14];
        v11 = v14;

        if (v11)
        {
          v12 = sub_1000946AC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = v8;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error removing %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v5 = [&off_1016EDAF0 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

void sub_100EEA844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100EEA85C(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EEA8E0;
  v3[3] = &unk_101658EF0;
  v4 = *(a1 + 32);
  return [a2 addSectionWithTitle:@"Guides" content:v3];
}

id sub_100EEA8E0(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EEA964;
  v3[3] = &unk_101661600;
  v4 = *(a1 + 32);
  return [a2 addButtonRowWithTitle:@"Present URL storage" action:v3];
}

void sub_100EEA964(uint64_t a1)
{
  v2 = [_MKURLParser alloc];
  v3 = [NSURL URLWithString:*(*(*(a1 + 40) + 8) + 40)];
  v4 = [v2 initWithURL:v3];

  [v4 parseIncludingCustomParameters:1];
  v5 = [v4 collectionStorage];
  v6 = [CollectionHandler collectionWithStorage:v5];
  v7 = [*(a1 + 32) presentingViewController];
  v8 = [v7 _maps_mapsSceneDelegate];

  v9 = [v8 chromeViewController];
  v10 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EEAAD0;
  v13[3] = &unk_101661A90;
  v14 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v6;
  [v10 dismissViewControllerAnimated:1 completion:v13];
}

void sub_100EEAAD0(uint64_t a1)
{
  v3 = [[_TtC4Maps30UserGuidesContextConfiguration alloc] initWithCollectionHandler:*(a1 + 32) excludedPlaceCardContent:0];
  v2 = [[_TtC4Maps17UserGuidesContext alloc] initWithConfiguration:v3];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EEAD78(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Fake Search Response" defaultsKey:@"__internal__FakeTransitResponse"];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Disable Local Sieving" defaultsKey:@"__internal__DisableTransitAppSieving"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enable Logging" defaultsKey:@"__internal__RoutingAppsLogging"];
}

void sub_100EEAE40(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Place Card Trigger" defaultsKey:@"__internal__PlaceCardLocationSimulation"];
  v3 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Clear Simulated Location" action:&stru_10165B600];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Assume accurate locations" get:&stru_10165B620 set:&stru_10165B640];
  [(MapsDebugTableSection *)v5 setFooter:@"Toggle Assume accurate locations when using location simulation, otherwise all directions requests may incur a location fix delay of 10s."];
}

void sub_100EEAEEC(id a1, BOOL a2)
{
  GEOConfigSetBOOL();
  v2 = +[MKLocationManager sharedLocationManager];
  if (objc_opt_respondsToSelector())
  {
    [v2 _syncLocationProviderWithTracking];
  }
}

void sub_100EEAF6C(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = [v1 isInternalInstall];

  if (v2)
  {
    v3 = objc_alloc_init(CLSimulationManager);
    [v3 clearSimulatedLocations];
    [v3 stopLocationSimulation];
  }
}

void sub_100EEB16C(id a1, UIAlertAction *a2)
{
  v2 = a2;
  [CLLocationManager setAuthorizationStatusByType:0 forBundleIdentifier:@"com.apple.Maps"];
  [CLLocationManager setTemporaryAuthorizationGranted:0 forBundleIdentifier:@"com.apple.Maps"];
  exit(0);
}

void sub_100EEB1B4(id a1, UIAlertAction *a2)
{
  [CLLocationManager setAuthorizationStatusByType:0 forBundleIdentifier:@"com.apple.Maps"];

  [CLLocationManager setTemporaryAuthorizationGranted:0 forBundleIdentifier:@"com.apple.Maps"];
}

void sub_100EEB28C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:&stru_1016631F0 content:&stru_10165B440];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EEB344;
  v6[3] = &unk_1016612C8;
  v6[4] = *(a1 + 32);
  v5 = [v3 addSectionWithTitle:@"Reset Launch Alerts" content:v6];
}

void sub_100EEB344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addButtonRowWithTitle:@"Set Declined Notifications DistantPast" action:&stru_10165B460];
  v5 = [v3 addButtonRowWithTitle:@"Reset Notification Repeat Prompt Count" action:&stru_10165B480];
  v6 = [v3 addButtonRowWithTitle:@"Reset Initial Notification Prompt Count" action:&stru_10165B4A0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EEB5D8;
  v20[3] = &unk_101661B18;
  v20[4] = *(a1 + 32);
  v7 = [v3 addButtonRowWithTitle:@"Reset CoreLocation Auth" action:v20];
  v8 = sub_10000FA08(*(a1 + 32));
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100EEB5E0;
  v18[3] = &unk_1016591E0;
  v19 = v8 != 5;
  v9 = [v3 addButtonRowWithTitle:@"Reset Help Improve Maps" action:v18];
  v10 = [v3 addButtonRowWithTitle:@"Reset Nav Trace Prompt" action:&stru_10165B4C0];
  v11 = [v3 addButtonRowWithTitle:@"Reset Precise Location Disabled Alert" action:&stru_10165B4E0];
  v12 = [v3 addButtonRowWithTitle:@"Reset What’s New" action:&stru_10165B500];
  v13 = [v3 addButtonRowWithTitle:@"Reset Offline Place Card Download Tips" action:&stru_10165B520];
  v14 = [v3 addButtonRowWithTitle:@"Reset Offline Maps Tips" action:&stru_10165B540];
  if (MapsFeature_IsEnabled_HikingiOS())
  {
    v15 = [v3 addButtonRowWithTitle:@"Reset Hiking Welcome Screen" action:&stru_10165B560];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100EEB678;
  v17[3] = &unk_101661B18;
  v17[4] = *(a1 + 32);
  v16 = [v3 addButtonRowWithTitle:@"Reset All" action:v17];
}

void sub_100EEB5E0(uint64_t a1)
{
  _GEOConfigRemoveValue();
  if (*(a1 + 32) == 1)
  {
    v2 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppGenius.bundle"];
    [CLLocationManager setAuthorizationStatusByType:2 forBundle:v2];
  }
}

id sub_100EEB678(uint64_t a1)
{
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setInteger:0 forKey:@"kMapsWelcomeScreenKey"];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"OfflineMapsDownloadingTipDisplayedCountKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"OfflineMapsDownloadingTipLastDisplayedTimeKey"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"OfflineMapsUserHasOpenedOfflineManagementScreenKey"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"OfflineMapsPlaceCardDownloadTipsShownKey"];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"OfflineMapsPlaceCardDownloadTipsDisplayedCountKey"];

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 removeObjectForKey:@"HikingWelcomeScreenDisplayed"];

  v9 = *(a1 + 32);

  return [v9 promptCLReset];
}

void sub_100EEB7CC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"HikingWelcomeScreenDisplayed"];
}

void sub_100EEB81C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"OfflineMapsDownloadingTipDisplayedCountKey"];

  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"OfflineMapsDownloadingTipLastDisplayedTimeKey"];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"OfflineMapsUserHasOpenedOfflineManagementScreenKey"];
}

void sub_100EEB8B4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"OfflineMapsPlaceCardDownloadTipsShownKey"];

  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"OfflineMapsPlaceCardDownloadTipsDisplayedCountKey"];
}

void sub_100EEB92C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setInteger:0 forKey:@"kMapsWelcomeScreenKey"];
}

void sub_100EEB9A0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setInteger:0 forKey:@"MapsNotificationAuthPromptCount"];
}

void sub_100EEB9F4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setInteger:0 forKey:@"MapsNotificationAuthRepromptCount"];
}

void sub_100EEBA48(id a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v1 = +[NSDate distantPast];
  [v2 setObject:v1 forKey:@"MapsNotificationAuthLastPromptedDate"];
}

void sub_100EEBB60(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear System Recents" action:&stru_10165B400];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Add Default Recent" action:&stru_10165B420];
}

void sub_100EEBBD4(id a1)
{
  v1 = +[CRRecentContactsLibrary defaultInstance];
  v2 = objc_alloc_init(CRSearchQuery);
  v8 = CRRecentsDomainMaps;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 setDomains:v3];

  v4 = +[CRRecentContactsLibrary defaultInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EEBD18;
  v6[3] = &unk_101660FB0;
  v7 = v1;
  v5 = v1;
  [v4 performRecentsSearch:v2 queue:&_dispatch_main_q completion:v6];
}

void sub_100EEBD18(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v12 = 0;
    if ([v4 removeRecentContacts:v3 error:&v12])
    {
      v5 = v12 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      NSLog(@"Cannot remove CoreRecents: %@", v12);
    }
  }

  v6 = CRAddressKindMapLocation;
  v7 = +[NSDate date];
  v14 = CRRecentContactMetadataSubject;
  v15 = @"Default";
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [CRRecentContactsLibrary recentEventForAddress:@"706 Mission Street displayName:SF CA 94103-3162" kind:@"706 Mission Street date:SF" weight:v6 metadata:v7 options:0, v8, 0];

  v10 = *(a1 + 32);
  v13 = v9;
  v11 = [NSArray arrayWithObjects:&v13 count:1];
  [v10 recordContactEvents:v11 recentsDomain:CRRecentsDomainMaps sendingAddress:0 completion:0];
}

void sub_100EEBEAC(id a1)
{
  v1 = +[CRRecentContactsLibrary defaultInstance];
  v2 = objc_alloc_init(CRSearchQuery);
  v8 = CRRecentsDomainMaps;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 setDomains:v3];

  v4 = +[CRRecentContactsLibrary defaultInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EEBFF0;
  v6[3] = &unk_101660FB0;
  v7 = v1;
  v5 = v1;
  [v4 performRecentsSearch:v2 queue:&_dispatch_main_q completion:v6];
}

void sub_100EEBFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v6 = 0;
    if ([v4 removeRecentContacts:v3 error:&v6])
    {
      v5 = v6 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      NSLog(@"Cannot remove CoreRecents: %@", v6);
    }
  }
}

void sub_100EEC094(id a1, MapsDebugValuesViewController *a2)
{
  v6 = a2;
  v2 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:0 content:&stru_10165B300];
  v3 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"China AOI" content:&stru_10165B320];
  v4 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Ride Booking" content:&stru_10165B340];
  v5 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:0 content:&stru_10165B3A0];
}

void sub_100EEC174(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear completed ride dates cache" action:&stru_10165B360];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable Ride Booking on iPad (Maps will quit)" geoConfigKey:41 switchOnStateIfUnset:&unk_10163C850 changeHandler:0, &stru_10165B380];
}

void sub_100EEC20C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setObject:&__NSDictionary0__struct forKey:@"RideBookingCompletedRideIdentifiersAndDates"];

  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 synchronize];
}

void sub_100EEC284(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show place card link to first child" userDefaults:v2 defaultsKey:@"__mapsInternal_placeCardShowLinkToFirstChild"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Treat AOI POIs as Search Results" userDefaults:v4 defaultsKey:@"__internalChinaAOIInjectPOIsAsSearchResults"];
}

void sub_100EEC338(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100EEC3F8(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Draw results viewport on map" get:&stru_10165B280 set:&stru_10165B2A0];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Allow SAR in all TbT" defaultsKey:@"__internal__NavigationAllowSAREverywhere"];
  if (MapsFeature_IsEnabled_ShelbyvilleSearch())
  {
    v4 = [(MapsDebugTableSection *)v8 addSliderRowWithTitle:@"Number of auxiliary tier search results" subtitleStringFormat:@"%1.0f auxiliary results" min:0 max:500 geoConfigKeyInteger:322 changeHandler:&unk_10163FD28, 0];
    v5 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Auto redo search prototype" geoConfigKey:323, &unk_10163FD60];
  }

  v6 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Force topographic features" geoConfigKey:724, &unk_1016449B8];
  if (MapsFeature_IsEnabled_NaturalSearchMaps())
  {
    v7 = [(MapsDebugTableSection *)v8 addButtonRowWithTitle:@"Reset NaturalSearch Regions" action:&stru_10165B2C0];
  }
}

void sub_100EEC5C8(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Use CoreDuet to rank contacts" get:&stru_10165B190 set:&stru_10165B1C0];
  v3 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Local backfill for short query" placeholderText:@"backfill (short)" inputType:1 geoConfigKeyInteger:73, &unk_10163CD58];
  v4 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Local backfill for long query" placeholderText:@"backfill (long)" inputType:1 geoConfigKeyInteger:74, &unk_10163CD90];
  v5 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Max length of short query" placeholderText:@"length" inputType:1 geoConfigKeyInteger:72, &unk_10163CD20];
  LODWORD(v6) = 1157234688;
  v7 = [(MapsDebugTableSection *)v10 addSliderRowWithTitle:@"Minimum Latency" subtitleStringFormat:@"%.0f milliseconds" min:&stru_10165B200 max:&stru_10165B220 get:0.0 set:v6];
  v8 = [(MapsDebugTableSection *)v10 addNavigationRowForViewControllerClass:objc_opt_class()];
  v9 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Disable AC in Mac routing" defaultsKey:@"__internal_DisableMacRoutingAutocomplete"];
}

void sub_100EEC730(id a1, float a2)
{
  if (fabsf(a2) >= 0.01)
  {
    GEOConfigSetDouble();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

float sub_100EEC778(id a1)
{
  GEOConfigGetDouble();
  *&v1 = v1;
  return *&v1 * 1000.0;
}

void sub_100EEC838(id a1, MapsDebugTableSection *a2)
{
  v16 = a2;
  v2 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Search for 'Home' and 'Work' use address results" get:&stru_10165B050 set:&stru_10165B070];
  v3 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Enable Calendar events on map" defaultsKey:@"__personalizedMapsCalendarEnabled"];
  v4 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Disable text only calendar events" defaultsKey:@"__personalizedMapsCalendarDisableCanonicalLookupSearch"];
  v5 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Show cluster count in subtitle" defaultsKey:@"__personalizedMapsShowClusterCountInSubtitle"];
  v6 = [(MapsDebugTableSection *)v16 addTextFieldRowWithTitle:@"Override POI locale" placeholderText:@"locale inputType:eg 'en'" defaultsKey:0, @"__personalizedMapsOverrideLocale"];
  v7 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Make all injected POIs airports" defaultsKey:@"__personalizedMapsInjectedPOIsLookLikeAirports"];
  v8 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Fixed Zoom on cluster" defaultsKey:@"__personalizedMapsFixedClusterZoom"];
  v9 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Calendar items use Generic POI type" defaultsKey:@"__personalizedMapsCalendarItemsUseGenericPOI"];
  v10 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Show favorites on map" defaultsKey:@"__personalizedMapsShowFavorites"];
  v11 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Sync address corrections & labels" get:&stru_10165B090 set:&stru_10165B0B0];
  v12 = [(MapsDebugTableSection *)v16 addSwitchRowWithTitle:@"Write sync corrections to Core Routine" get:&stru_10165B0D0 set:&stru_10165B0F0];
  LODWORD(v13) = 981668463;
  LODWORD(v14) = 1.0;
  v15 = [(MapsDebugTableSection *)v16 addSliderRowWithTitle:@"Deselect Clusters when zooming" subtitleStringFormat:@"When gesture scale is +/- %.3f of 1.0" min:&stru_10165B110 max:&stru_10165B130 get:v13 set:v14];
}

void sub_100EECA2C(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"__personalizedMapsZoomAmountToClearClusterSelection" forKey:v3];
}

float sub_100EECA8C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 floatForKey:@"__personalizedMapsZoomAmountToClearClusterSelection"];
  v3 = v2;

  return v3;
}

void sub_100EECBB0(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Add MT02 parked car" action:&stru_10165AF90];
  v3 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Show Notification" action:&stru_10165AFB0];
  v4 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Show Multi-Car Replacement Notification" action:&stru_10165AFD0];
  v5 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Remove Parked Car" action:&stru_10165AFF0];
}

void sub_100EECC64(id a1)
{
  v1 = +[ParkedCarManager sharedManager];
  [v1 removeParkedCar];
}

void sub_100EECCAC(id a1)
{
  v1 = +[ParkedCarManager sharedManager];
  [v1 _debug_showParkedCarReplacementNotification];
}

void sub_100EECCF4(id a1)
{
  v1 = +[ParkedCarManager sharedManager];
  [v1 _debug_showParkedCarNotification];
}

void sub_100EECD3C(id a1)
{
  v2 = [[CLLocation alloc] initWithLatitude:37.391576 longitude:-122.032652];
  v1 = +[ParkedCarManager sharedManager];
  [v1 addParkedCarAtLocation:v2];
}

void sub_100EECE20(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Hide All Tips For Testing" geoConfigKey:773, &unk_101645480];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Show All Tips For Testing" geoConfigKey:774, &unk_1016454B8];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Reset All Tips For Testing" geoConfigKey:775, &unk_1016454F0];
  [(MapsDebugTableSection *)v5 setFooter:@"TipKit testing settings changes require relaunching Maps to take effect."];
}

void sub_100EECF04(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Logging" content:&stru_10165AE20];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Transportation Mode" content:&stru_10165AE80];
}

void sub_100EECF78(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"MSg Transportation Mode Prediction" get:&stru_10165AEA0 set:&stru_10165AEC0];
  [v2 setSubtitle:@"Toggle MSg-based transportation mode prediction"];
}

void sub_100EECFE8(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"Verbose logging" get:&stru_10165AE40 set:&stru_10165AE60];
  [v2 setSubtitle:@"Adds serialized suggestion entries to logs."];
}

void sub_100EED08C(id a1, MapsDebugValuesViewController *a2)
{
  v5 = a2;
  v2 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Transit" content:&stru_10165AC40];
  v3 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Nearby Transit" content:&stru_10165AD60];
  v4 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Transit + Pay" content:&stru_10165ADC0];
}

void sub_100EED154(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"__internal__TransitPayTipInfoKey"];
}

void sub_100EED1A4(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Force isTransitUserHere" defaultsKey:@"__internal__NearbyTransitDebugForceTransitUser"];
  v3 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Reset Nearby Transit tip state history" action:&stru_10165AD80];
  v4 = [(MapsDebugTableSection *)v6 addButtonRowWithTitle:@"Reset teachable moment history" action:&stru_10165ADA0];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Use map center after panning (ignore user location)" defaultsKey:@"__internal__NearbyTransitAlwaysFollowMap"];
}

void sub_100EED258(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"__internal__NearbyTransitTeachableMomentShownKey"];

  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"__internal__NearbyTransitTeachableMomentShownCardTimes"];
}

void sub_100EED2D0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"__internal__NearbyTransitTipInfoKey"];
}

void sub_100EED320(id a1, MapsDebugTableSection *a2)
{
  v12 = a2;
  v2 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Show Routing Apps Sheet" defaultsKey:@"EnableRoutingAppsSheet"];
  v3 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Enable Re-routing" defaultsKey:@"__internal__EnableTransitRerouting"];
  v4 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Enable Debug Local Instruction Strings" defaultsKey:@"__internal__EnableTransitDebugLocalInstruction"];
  v5 = [(MapsDebugTableSection *)v12 addTextFieldRowWithTitle:@"Max vehicles displayed" placeholderText:@"1" inputType:1 get:&stru_10165AC60 set:&stru_10165AC80];
  v6 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Suppress summary in boarding info" defaultsKey:@"__internal_MapsTransitDebugSuppressSummaryBoardingInfo"];
  v7 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Suppress reference date update timer" geoConfigKey:MapKitConfig_DisableTransitReferenceDateUpdater[0], MapKitConfig_DisableTransitReferenceDateUpdater[1]];
  v8 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Suppress transit route update timer" geoConfigKey:GeoServicesConfig_SuppressTransitRealtimeUpdates[0], GeoServicesConfig_SuppressTransitRealtimeUpdates[1]];
  v9 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Enable Pre-Flight Markets" get:&stru_10165ACA0 set:&stru_10165ACC0];
  v10 = [(MapsDebugTableSection *)v12 addTextFieldRowWithTitle:@"Realtime update initial request delay" placeholderText:@"seconds" inputType:1 get:&stru_10165ACE0 set:&stru_10165AD00];
  v11 = [(MapsDebugTableSection *)v12 addTextFieldRowWithTitle:@"Realtime update refresh rate override" placeholderText:@"seconds" inputType:1 get:&stru_10165AD20 set:&stru_10165AD40];
}

void sub_100EED4E8(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 length])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetDouble();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

NSString *__cdecl sub_100EED5F4(id a1)
{
  GEOConfigGetDouble();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 stringValue];

  return v2;
}

void sub_100EED65C(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 length])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetDouble();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

void sub_100EED708(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x100EED690);
}

NSString *__cdecl sub_100EED734(id a1)
{
  GEOConfigGetDouble();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 stringValue];

  return v2;
}

void sub_100EED79C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = GEOConfigGetDictionary();
  v6 = [v3 mutableCopy];

  v4 = [NSNumber numberWithBool:v2];
  [v6 setObject:v4 forKeyedSubscript:@"*"];

  GEOConfigSetDictionary();
  v5 = [@"com.apple.geoservices" stringByAppendingString:@".siri_data_changed"];
  notify_post([v5 UTF8String]);
}

BOOL sub_100EED878(id a1)
{
  v1 = GEOConfigGetDictionary();
  v2 = [v1 objectForKeyedSubscript:@"*"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100EED900(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 length])
  {
    [(NSString *)v2 integerValue];
    GEOConfigSetUInteger();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

void sub_100EED9A8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x100EED934);
}

NSString *__cdecl sub_100EED9D4(id a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:GEOConfigGetUInteger()];
  v2 = [v1 stringValue];

  return v2;
}

void sub_100EEDAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EEDD10;
  v15[3] = &unk_10165E0A8;
  objc_copyWeak(&v16, &location);
  v4 = [v3 addSectionWithTitle:@"Restore Defaults" content:v15];
  v5 = [v3 addSectionWithTitle:@"Snapshot" content:&stru_10165A2A0];
  v6 = [v3 addSectionWithTitle:@"Commute Window" content:&stru_10165A2C0];
  v7 = [v3 addSectionWithTitle:@"DOoM" content:&stru_10165A3A0];
  v8 = [v3 addSectionWithTitle:@"Budget Per Destination" content:&stru_10165A540];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EEDDF4;
  v14[3] = &unk_1016612C8;
  v14[4] = *(a1 + 32);
  v9 = [v3 addSectionWithTitle:@"Warming Sheet" content:v14];
  v10 = [v3 addSectionWithTitle:@"Routing Internal Settings" content:&stru_10165A680];
  v11 = [v3 addSectionWithTitle:@"Heavy Traffic Threshold" content:&stru_10165A6E0];
  v12 = [v3 addSectionWithTitle:@"Consider Driving as at least ONE of:" content:&stru_10165A760];
  v13 = [v3 addSectionWithTitle:@"Advanced Controls" content:&stru_10165A840];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_100EEDCF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100EEDD10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100EF0664;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Restore DOoM Defaults" action:v5];
  [v4 setIsDestructive:1];

  [v3 setFooter:@"NOTE: This does not restore the defaults for Heavy Traffic Threshold & Routing Internal Settings"];
  objc_destroyWeak(&v6);
}

void sub_100EEDDF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100EEF0C0;
    v9 = &unk_101661B98;
    objc_copyWeak(&v10, &location);
    v4 = [v3 addButtonRowWithTitle:@"Show LocInt Welcome Screen" action:&v6];
    v5 = [v3 addButtonRowWithTitle:@"Reset LocInt Warming Sheet" action:{&stru_10165A660, v6, v7, v8, v9}];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_100EEDED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100EEDEF8(id a1, MapsDebugTableSection *a2)
{
  v17 = a2;
  v2 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Consider Gyms for \nNext Destination" get:&stru_10165A860 set:&stru_10165A880];
  v3 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Gym Threshold" placeholderText:@"LOIs with lower probability will not be considered" inputType:3 get:&stru_10165A8A0 set:&stru_10165A8C0];
  v4 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Consider Schools for \nNext Destination" get:&stru_10165A8E0 set:&stru_10165A900];
  v5 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Schools Threshold" placeholderText:@"LOIs with lower probability will not be considered" inputType:3 get:&stru_10165A920 set:&stru_10165A940];
  v6 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Consider Uncategorized LOIs for \nNext Destination" get:&stru_10165A960 set:&stru_10165A980];
  v7 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Uncategorized LOIs Threshold" placeholderText:@"LOIs with lower probability will not be considered" inputType:3 get:&stru_10165A9A0 set:&stru_10165A9C0];
  v8 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Show Test Notification\n(Needs a real predicted destination\nWarning: Very noisy get:use at your own risk)" set:&stru_10165A9E0, &stru_10165AA00];
  v9 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Commute Window Refresh \nDuration (minutes)" placeholderText:@"The time interval to re-check for DOoM during Commute Window" inputType:3 get:&stru_10165AA20 set:&stru_10165AA40];
  v10 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Commute Window Refresh \nDuration when in \nLow Power Mode (minutes)" placeholderText:@"The time interval to re-check for DOoM during Commute Window" inputType:3 get:&stru_10165AA60 set:&stru_10165AA80];
  v11 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Leeway" placeholderText:@"Wake up timer leeway" inputType:3 get:&stru_10165AAA0 set:&stru_10165AAC0];
  v12 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Leeway when Driving" placeholderText:@"Wake up timer leeway when driving" inputType:3 get:&stru_10165AAE0 set:&stru_10165AB00];
  v13 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Commute Window Refresh \nDuration (minutes)" placeholderText:@"The time interval to re-check for DOoM during Commute Window" inputType:3 get:&stru_10165AB20 set:&stru_10165AB40];
  v14 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Routine Callback CanKicker \nDuration (seconds)" placeholderText:@"The amount of time we will delay the execution of Routine callbacks in order to shield ourselves from callback storms" inputType:3 get:&stru_10165AB60 set:&stru_10165AB80];
  v15 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Backup Waking Timer" get:&stru_10165ABA0 set:&stru_10165ABC0];
  v16 = [(MapsDebugTableSection *)v17 addTextFieldRowWithTitle:@"Sleep Timer Wakeup \nDuration (hours)" placeholderText:@"Duration to wake up after if we don't hear back from CR" inputType:3 get:&stru_10165ABE0 set:&stru_10165AC00];
}

void sub_100EEE1FC(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE264(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.000277777778];

  return v3;
}

void sub_100EEE2FC(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE358(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEE3C0(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE428(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.0166666667];

  return v3;
}

void sub_100EEE49C(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE504(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.0166666667];

  return v3;
}

void sub_100EEE578(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE5E0(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.0166666667];

  return v3;
}

void sub_100EEE654(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE6BC(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.0166666667];

  return v3;
}

void sub_100EEE730(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE798(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.0166666667];

  return v3;
}

void sub_100EEE830(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE88C(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEE918(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEE974(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEEA00(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEEA5C(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEEAE8(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Bluetooth connection to a vehicle" get:&stru_10165A780 set:&stru_10165A7A0];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"CarPlay connection to a vehicle" get:&stru_10165A7C0 set:&stru_10165A7E0];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Leave it to CoreMotion 🤷🏻‍♂️" get:&stru_10165A800 set:&stru_10165A820];
}

void sub_100EEEC00(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  [(MapsDebugTableSection *)v2 setFooter:@"These parameters control the amount of delay required for Routing to consider a route to have heavy traffic. Both criteria must be met for heavy traffic to be reported. For example, the default is 5 minutes and 20%, meaning that a route's estimated travel duration with traffic must be at least 5 minutes slower than the travel duration without traffic, AND the difference is at least 20% of the travel duration without traffic. Lower values effectively mean it is more likely for Routing to return a route that is considered heavy traffic."];
  [NSRegularExpression regularExpressionWithPattern:@"^\\([0-9]+)_m\\$" options:1 error:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EEED1C;
  v7 = v6[3] = &unk_101658E28;
  v3 = v7;
  v4 = [(MapsDebugTableSection *)v2 addTextFieldRowWithTitle:@"Minimum time delay" placeholderText:@"5 min" inputType:1 get:v6 set:&stru_10165A700];
  v5 = [(MapsDebugTableSection *)v2 addTextFieldRowWithTitle:@"Percentage Delay" placeholderText:@"20%" inputType:1 get:&stru_10165A720 set:&stru_10165A740];
}

id sub_100EEED1C(uint64_t a1)
{
  v2 = GEOConfigGetDictionary();
  v3 = [v2 objectForKeyedSubscript:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_min_time"];
  if ([v3 length])
  {
    v4 = [*(a1 + 32) firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v5 = v4;
    if (v4 && [v4 numberOfRanges] == 2)
    {
      v6 = [v5 rangeAtIndex:1];
      v8 = [v3 substringWithRange:{v6, v7}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100EEEE08(id a1, NSString *a2)
{
  v4 = a2;
  v2 = GEOConfigGetDictionary();
  v3 = [NSMutableDictionary dictionaryWithDictionary:v2];
  if ([(NSString *)v4 length])
  {
    [v3 setObject:v4 forKeyedSubscript:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_linear_factor"];
  }

  else
  {
    [v3 removeObjectForKey:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_linear_factor"];
  }

  GEOConfigSetDictionary();
}

NSString *__cdecl sub_100EEEED4(id a1)
{
  v1 = GEOConfigGetDictionary();
  v2 = [v1 objectForKeyedSubscript:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_linear_factor"];

  return v2;
}

void sub_100EEEF34(id a1, NSString *a2)
{
  v5 = a2;
  v2 = GEOConfigGetDictionary();
  v3 = [NSMutableDictionary dictionaryWithDictionary:v2];
  if ([(NSString *)v5 length])
  {
    v4 = [NSString stringWithFormat:@"\\%@_m\\"", v5];
    [v3 setObject:v4 forKeyedSubscript:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_min_time"];
  }

  else
  {
    [v3 removeObjectForKey:@"TrafficDensityCalculator.familiar_route_heavy_traffic_formula_min_time"];
  }

  GEOConfigSetDictionary();
}

void sub_100EEF030(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"Heavy traffic notifications for non-familiar routes" get:&stru_10165A6A0 set:&stru_10165A6C0];
  [v2 setSubtitle:{@"By default, DOoM only alerts if Routing detects heavy traffic on a familiar route. Enable this to get a fake alert even if there is no familiar route."}];
}

void sub_100EEF0C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10165A620];
    WeakRetained = v2;
  }
}

void sub_100EEF124(id a1)
{
  v3 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:0 actionFlow:2 actionHandler:&stru_10165A640];
  v1 = +[UIApplication sharedMapsDelegate];
  v2 = [v1 chromeViewController];
  [v2 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100EEF1BC(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addTextFieldRowWithTitle:@"ETA Requests" placeholderText:@"Non zero" inputType:1 get:&stru_10165A560 set:&stru_10165A580];
  v3 = [(MapsDebugTableSection *)v5 addTextFieldRowWithTitle:@"Request Budget Before Driving" placeholderText:@"Non zero" inputType:1 get:&stru_10165A5A0 set:&stru_10165A5C0];
  v4 = [(MapsDebugTableSection *)v5 addTextFieldRowWithTitle:@"Request Budget En Route" placeholderText:@"Non zero" inputType:1 get:&stru_10165A5E0 set:&stru_10165A600];
}

void sub_100EEF290(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 integerValue];
    GEOConfigSetInteger();
  }
}

NSString *__cdecl sub_100EEF2F0(id a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%ld", GEOConfigGetInteger()];

  return v1;
}

void sub_100EEF358(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 integerValue];
    GEOConfigSetInteger();
  }
}

NSString *__cdecl sub_100EEF3B8(id a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%ld", GEOConfigGetInteger()];

  return v1;
}

void sub_100EEF420(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 integerValue];
    GEOConfigSetInteger();
  }
}

NSString *__cdecl sub_100EEF480(id a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%ld", GEOConfigGetInteger()];

  return v1;
}

void sub_100EEF4E8(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Is DOoM enabled?" get:&stru_10165A3C0 set:&stru_10165A3E0];
  v3 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Forecast Duration (hours)" placeholderText:@"Duration to look ahead for Context predictions from CR" inputType:3 get:&stru_10165A400 set:&stru_10165A420];
  v4 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Home Threshold" placeholderText:@"LOIs with lower probability will not be considered" inputType:3 get:&stru_10165A440 set:&stru_10165A460];
  v5 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Work Threshold" placeholderText:@"LOIs with lower probability will not be considered" inputType:3 get:&stru_10165A480 set:&stru_10165A4A0];
  v6 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Current Location \nArea Radius (meters)" placeholderText:@"Distance delta to assume next LOI == current location" inputType:3 get:&stru_10165A4C0 set:&stru_10165A4E0];
  v7 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Destination distance\nthreshold (meters)" placeholderText:@"Distance delta beyond which we'll drop destinations" inputType:3 get:&stru_10165A500 set:&stru_10165A520];
}

void sub_100EEF650(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEF6AC(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEF714(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEF770(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEF7D8(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEF834(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEF89C(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEF8F8(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2];

  return v3;
}

void sub_100EEF960(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEF9C8(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.000277777778];

  return v3;
}

void sub_100EEFA60(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addTextFieldRowWithTitle:@"Before Time (hours)" placeholderText:@"Duration before the exit time" inputType:3 get:&stru_10165A2E0 set:&stru_10165A300];
  v3 = [(MapsDebugTableSection *)v5 addTextFieldRowWithTitle:@"Default Travel Time when not available from Routing (minutes)" placeholderText:&stru_1016631F0 inputType:3 get:&stru_10165A320 set:&stru_10165A340];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enforce being in Commute Window" get:&stru_10165A360 set:&stru_10165A380];
}

void sub_100EEFB48(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEFBB0(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.000277777778];

  return v3;
}

void sub_100EEFC24(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 != 0.0)
  {
    [(NSString *)v3 doubleValue];
    GEOConfigSetDouble();
  }
}

NSString *__cdecl sub_100EEFC8C(id a1)
{
  v1 = [NSString alloc];
  GEOConfigGetDouble();
  v3 = [v1 initWithFormat:@"%.2f", v2 * 0.000277777778];

  return v3;
}

void sub_100EEFD00(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = GEOConfigGetDictionary();
  if (v3)
  {
    v4 = [NSString alloc];
    v5 = v3;
    v6 = [v5 objectForKey:@"DOoM_timeStamp"];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"DOoM_timeStamp"];
    }

    else
    {
      v7 = @"Nil";
    }

    v9 = [v4 initWithFormat:@"Latest DOoM Snapshot as of %@", v7];
    v10 = [(MapsDebugTableSection *)v2 addEmptySectionBannerRowWithTitle:v9];

    v11 = v5;
    v12 = [v11 objectForKey:@"DOoM_nextDestination"];

    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:@"DOoM_nextDestination"];
    }

    else
    {
      v13 = @"Nil";
    }

    v14 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Next Destination?" value:v13];
    v15 = v11;
    v16 = [v15 objectForKey:@"DOoM_entryTime"];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:@"DOoM_entryTime"];
    }

    else
    {
      v17 = @"Nil";
    }

    v18 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Entry Time?" value:v17];
    v19 = v15;
    v20 = [v19 objectForKey:@"DOoM_transitionTime"];

    if (v20)
    {
      v21 = [v19 objectForKeyedSubscript:@"DOoM_transitionTime"];
    }

    else
    {
      v21 = @"Nil";
    }

    v22 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"ETA to the next destination" value:v21];
    v23 = v19;
    v24 = [v23 objectForKey:@"DOoM_commuteWindow"];

    if (v24)
    {
      v25 = [v23 objectForKeyedSubscript:@"DOoM_commuteWindow"];
    }

    else
    {
      v25 = @"Nil";
    }

    v26 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Commute Window?" value:v25];
    v27 = v23;
    v28 = [v27 objectForKey:@"DOoM_isInWindow"];

    if (v28)
    {
      v29 = [v27 objectForKeyedSubscript:@"DOoM_isInWindow"];
    }

    else
    {
      v29 = @"Nil";
    }

    v30 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"In Commute Window as of Snapshot time?" value:v29];
    v31 = v27;
    v32 = [v31 objectForKey:@"DOoM_serverTitle"];

    if (v32)
    {
      v33 = [v31 objectForKeyedSubscript:@"DOoM_serverTitle"];
    }

    else
    {
      v33 = @"Nil";
    }

    v34 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Last Server Title Seen" value:v33];
    v35 = v31;
    v36 = [v35 objectForKey:@"DOoM_serverMessage"];

    if (v36)
    {
      v37 = [v35 objectForKeyedSubscript:@"DOoM_serverMessage"];
    }

    else
    {
      v37 = @"Nil";
    }

    v38 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Last Server Message Seen" value:v37];
    v39 = v35;
    v40 = [v39 objectForKey:@"DOoM_isDriving"];

    if (v40)
    {
      v41 = [v39 objectForKeyedSubscript:@"DOoM_isDriving"];
    }

    else
    {
      v41 = @"Nil";
    }

    v42 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Is user driving" value:v41];
    v43 = v39;
    v44 = [v43 objectForKey:@"DOoM_nextWakeupTime"];

    if (v44)
    {
      v45 = [v43 objectForKeyedSubscript:@"DOoM_nextWakeupTime"];
    }

    else
    {
      v45 = @"Nil";
    }

    v46 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Next wake up time" value:v45];
    v47 = v43;
    v48 = [v47 objectForKey:@"DOoM_lastRequestTime"];

    if (v48)
    {
      v49 = [v47 objectForKeyedSubscript:@"DOoM_lastRequestTime"];
    }

    else
    {
      v49 = @"Nil";
    }

    v50 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Last Route Request Time" value:v49];
    v51 = v47;
    v52 = [v51 objectForKey:@"DOoM_lastResponseTime"];

    if (v52)
    {
      v53 = [v51 objectForKeyedSubscript:@"DOoM_lastResponseTime"];
    }

    else
    {
      v53 = @"Nil";
    }

    v54 = [(MapsDebugTableSection *)v2 addReadOnlyRowWithTitle:@"Last Route Response time" value:v53];
  }

  else
  {
    v8 = [(MapsDebugTableSection *)v2 addEmptySectionBannerRowWithTitle:@"No Current Snapshot"];
  }

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100EF0324;
  v57[3] = &unk_101661B18;
  v58 = v3;
  v55 = v3;
  v56 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Tap-To-Radar" action:v57];
}

void sub_100EF0324(uint64_t a1)
{
  v2 = +[MapsRadarController sharedInstance];
  v3 = [[MapsRadarDraft alloc] initWithoutLocationInformation];
  [(MapsRadarDraft *)v3 setTitle:@"[LocIntel][DOoM TTR]"];
  v4 = +[MapsRadarComponent mapsLocationIntelligenceComponent];
  [(MapsRadarDraft *)v3 setComponent:v4];

  [(MapsRadarDraft *)v3 setClassification:6];
  [(MapsRadarDraft *)v3 setReproducibility:6];
  v32[0] = @"Filing a DOoM radar because... ";
  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
    if (v7)
    {
      v25 = v3;
      v26 = v2;
      v8 = [[NSMutableArray alloc] initWithCapacity:v7];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [v6 allKeys];
      v10 = [v9 sortedArrayUsingSelector:"compare:"];

      v11 = v10;
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            v17 = [NSString alloc];
            v18 = [v6 objectForKeyedSubscript:v16];
            v19 = [v17 initWithFormat:@"%@: %@", v16, v18];
            [v8 addObject:v19];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v13);
      }

      v20 = [v8 componentsJoinedByString:{@", "}];
      v21 = [NSString stringWithFormat:@"<%p> {%@}", v6, v20];

      v3 = v25;
      v2 = v26;
    }

    else
    {
      v21 = [NSString stringWithFormat:@"<%p> (empty)", v6];
    }
  }

  else
  {
    v21 = @"<nil>";
  }

  v32[1] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:2];
  [(MapsRadarDraft *)v3 setNotes:v22];

  v23 = [MapsRadarKeyword keywordWithName:@"Maps LocIntel" number:1668207];
  v31 = v23;
  v24 = [NSArray arrayWithObjects:&v31 count:1];
  [(MapsRadarDraft *)v3 setKeywords:v24];

  [v2 launchTTRWithRadar:v3];
}

void sub_100EF0664(uint64_t a1)
{
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100EF09EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100EF0A08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MapsDebugTableSection);
  v5 = [(MapsDebugTableSection *)v4 addNavigationRowWithTitle:@"Headunit Info" viewControllerContent:&stru_101658F98];
  [v3 addSection:v4];
  v6 = [v3 addSectionWithTitle:@"Simulate Connection Scenario" content:&stru_101659040];
  v7 = [v3 addSectionWithTitle:@"UI Experiments" content:&stru_1016590E0];
  v8 = [v3 addSectionWithTitle:@"Speed Sign" content:&stru_101659140];
  v9 = [v3 addSectionWithTitle:@"Mini Sign" content:&stru_101659160];
  v10 = [v3 addSectionWithTitle:@"Debugging" content:&stru_101659180];
  v11 = [v3 addSectionWithTitle:@"Map Deactivation" content:&stru_101659200];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100EF0D0C;
  v23[3] = &unk_10165E0A8;
  objc_copyWeak(&v24, (a1 + 32));
  v12 = [v3 addSectionWithTitle:@"Vehicle" content:v23];
  v13 = [v3 addSectionWithTitle:@"Console" content:&stru_101659270];
  v14 = [v3 addSectionWithTitle:@"Timeout intervals" content:&stru_101659290];
  v15 = [v3 addSectionWithTitle:@"Search Along The Route" content:&stru_1016593B0];
  v16 = [v3 addSectionWithTitle:@"Route Genius/Maps Suggestions" content:&stru_1016593D0];
  v17 = [v3 addSectionWithTitle:@"Search" content:&stru_101659470];
  v18 = [v3 addSectionWithTitle:@"Pannning" content:&stru_101659490];
  v19 = [v3 addSectionWithTitle:@"One Handed Zoom" content:&stru_101659550];
  v20 = [v3 addSectionWithTitle:@"Interruption Testing" content:&stru_101659630];
  v21 = [v3 addSectionWithTitle:@"CarCard Testing" content:&stru_1016597C0];
  v22 = [v3 addSectionWithTitle:@"Dual-screen experience" content:&stru_101659AC0];
  objc_destroyWeak(&v24);
}

void sub_100EF0D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Enable Route Handoff" geoConfigKey:{51, &unk_10163C930}];
  v5 = [v3 addSwitchRowWithTitle:@"Route Handoff Verbose Logging" geoConfigKey:{52, &unk_10163C968}];
  v6 = [v3 addSwitchRowWithTitle:@"Enable Low Fuel*" get:&stru_101659230 set:&stru_101659250];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EF6FF8;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, (a1 + 32));
  v7 = [v3 addButtonRowWithTitle:@"Start updating vehicle sensor data" action:v11];
  v8 = [v3 addSwitchRowWithTitle:@"External Accessory Logging" defaultsKey:@"MapsEALoggingKey"];
  v9 = [v3 addSwitchRowWithTitle:@"Simulate Destination Handoff Available" defaultsKey:@"StarkDestinationSharingEnableKey"];
  v10 = [v3 addSwitchRowWithTitle:@"Debug Destination Handoff Output" defaultsKey:@"StarkDestinationSharingTestKey"];
  [v3 setFooter:{@"Simulate Destination Handoff Available - Shows the handoff button even in cars that don't support it.\nDebug Destination Handoff Output - Instead of trying to send the destination to the car, it's fed to an activity controller instead for email/AirDrop, etc. Canceling the activity controller will trigger a handoff failure response.\n*Restart maps after changing state"}];
  objc_destroyWeak(&v12);
}

void sub_100EF0EB0(id a1, MapsDebugTableSection *a2)
{
  v11 = a2;
  v2 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Change camera mode on IC connection changes" geoConfigKey:590, &unk_1016430B0];
  v3 = [(MapsDebugTableSection *)v11 addEmptySectionBannerRowWithTitle:@"IC Dual Screen Camera Behavior"];
  v4 = [(MapsDebugTableSection *)v11 addCheckmarkRowsGroupWithContent:&stru_101659AE0 backingGeoConfigKey:695 get:&unk_101644398 set:&stru_101659B00, &stru_101659B20];
  v5 = [(MapsDebugTableSection *)v11 addEmptySectionBannerRowWithTitle:@"IC Single Screen Camera Behavior"];
  v6 = [(MapsDebugTableSection *)v11 addCheckmarkRowsGroupWithContent:&stru_101659B40 backingGeoConfigKey:696 get:&unk_1016443D0 set:&stru_101659B60, &stru_101659B80];
  v7 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Force dual display config" defaultsKey:@"CarDisplayConfigForceDualDisplayKey"];
  v8 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Hide current location text label" geoConfigKey:592, &unk_101643120];
  v9 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Hide guidance card in center display" defaultsKey:@"CarNavigationHideGuidanceCard"];
  v10 = [(MapsDebugTableSection *)v11 addNavigationRowWithTitle:@"Hybrid IC" viewControllerContent:&stru_101659BA0];
}

void sub_100EF1024(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Hybrid IC" content:&stru_101659BC0];
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Force hybrid IC everywhere" content:&stru_101659BE0];
  [v4 setFooter:@"Force all instrument cluster displays to render the hybrid stream. Requires relaunching Maps to take effect."];
  v5 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Dynamic content scale" content:&stru_101659C00];
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Physical size override" content:&stru_101659C40];
  v7 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Guidance card" content:&stru_101659C80];
  v8 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"ETA tray" content:&stru_101659CA0];
  v9 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Flexible UI" content:&stru_101659CC0];
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Alignment style" content:&stru_101659D60];
  v11 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Card alignment" content:&stru_101659E00];
  v12 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Narrow card width" content:&stru_101659EA0];
  v13 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Map inset centering" content:&stru_101659EE0];
  v14 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Camera styles" content:&stru_101659F20];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100EF135C;
  v24[3] = &unk_10165A0D0;
  v25 = &stru_10165A020;
  v15 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Compass override" content:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100EF1438;
  v22[3] = &unk_10165A0D0;
  v23 = &stru_10165A020;
  v16 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Speed limit override" content:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EF1514;
  v20[3] = &unk_10165A0D0;
  v21 = &stru_10165A020;
  v17 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"ETA tray override" content:v20];
  v18 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Presentation style override" content:&stru_10165A1B0];
  v19 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Clear all overrides" content:&stru_10165A210];
}

void sub_100EF135C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF1C2C;
  v6[3] = &unk_10165A048;
  v7 = *(a1 + 32);
  v4 = [v3 addCheckmarkRowsGroupWithContent:v6 backingGeoConfigKey:679 get:&unk_101644050 set:{&stru_10165A068, &stru_10165A088}];
  v5 = [v3 addButtonRowWithTitle:@"Clear override" action:&stru_10165A0A8];
}

void sub_100EF1438(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF1ABC;
  v6[3] = &unk_10165A048;
  v7 = *(a1 + 32);
  v4 = [v3 addCheckmarkRowsGroupWithContent:v6 backingGeoConfigKey:680 get:&unk_101644088 set:{&stru_10165A0F0, &stru_10165A110}];
  v5 = [v3 addButtonRowWithTitle:@"Clear override" action:&stru_10165A130];
}

void sub_100EF1514(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF1A10;
  v6[3] = &unk_10165A048;
  v7 = *(a1 + 32);
  v4 = [v3 addCheckmarkRowsGroupWithContent:v6 backingGeoConfigKey:681 get:&unk_1016440C0 set:{&stru_10165A150, &stru_10165A170}];
  v5 = [v3 addButtonRowWithTitle:@"Clear override" action:&stru_10165A190];
}

void sub_100EF1624(id a1)
{
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();

  _GEOConfigRemoveValue();
}

void sub_100EF18F4(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addCheckmarkRowsGroupForConfigKey:787 content:&unk_101645758, &stru_10165A1D0];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear override" action:&stru_10165A1F0];
}

void sub_100EF197C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Default" value:&off_1016EA250];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"DCACarousel" value:&off_1016EA1F0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"MapsMediaCarousel" value:&off_1016EA220];
}

void sub_100EF1A34(id a1, id a2)
{
  [a2 unsignedIntegerValue];

  GEOConfigSetUInteger();
}

id sub_100EF1A70(id a1)
{
  UInteger = GEOConfigGetUInteger();

  return [NSNumber numberWithUnsignedInteger:UInteger];
}

void sub_100EF1AE0(id a1, id a2)
{
  [a2 unsignedIntegerValue];

  GEOConfigSetUInteger();
}

id sub_100EF1B1C(id a1)
{
  UInteger = GEOConfigGetUInteger();

  return [NSNumber numberWithUnsignedInteger:UInteger];
}

void sub_100EF1B68(id a1, MapsDebugCheckmarkRowsGroup *a2, BOOL a3)
{
  v3 = a3;
  v8 = a2;
  v4 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Unspecified" value:&off_1016EA250];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Enabled" value:&off_1016EA1F0];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Disabled" value:&off_1016EA220];
  if (v3)
  {
    v7 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"User" value:&off_1016EA268];
  }
}

void sub_100EF1C50(id a1, id a2)
{
  [a2 unsignedIntegerValue];

  GEOConfigSetUInteger();
}

id sub_100EF1C8C(id a1)
{
  UInteger = GEOConfigGetUInteger();

  return [NSNumber numberWithUnsignedInteger:UInteger];
}

void sub_100EF1CD8(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addEmptySectionBannerRowWithTitle:@"Default center console camera style"];
  v3 = [(MapsDebugTableSection *)v6 addCheckmarkRowsGroupWithContent:&stru_101659F40 backingGeoConfigKey:697 get:&unk_101644408 set:&stru_101659F60, &stru_101659F80];
  v4 = [(MapsDebugTableSection *)v6 addEmptySectionBannerRowWithTitle:@"Default hybrid IC camera style"];
  v5 = [(MapsDebugTableSection *)v6 addCheckmarkRowsGroupWithContent:&stru_101659FA0 backingGeoConfigKey:698 get:&unk_101644440 set:&stru_101659FC0, &stru_101659FE0];
}

void sub_100EF1DA4(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF1DE0(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF1E2C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Trench" value:&off_1016EA298];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Overview" value:&off_1016EA2B0];
}

void sub_100EF1EA0(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF1EDC(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF1F28(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Trench" value:&off_1016EA298];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Overview" value:&off_1016EA2B0];
}

void sub_100EF1F9C(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Maneuver width multiple requirement" placeholderText:@"3" inputType:3 geoConfigKeyDouble:723, &unk_101644980];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear override" action:&stru_101659F00];
}

void sub_100EF2030(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Max card width" placeholderText:@"300" inputType:3 geoConfigKeyDouble:722, &unk_101644948];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear override" action:&stru_101659EC0];
}

void sub_100EF20C4(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:711, &unk_101644718];
  v3 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupWithContent:&stru_101659E20 backingGeoConfigKey:692 get:&unk_101644328 set:&stru_101659E40, &stru_101659E60];
  v4 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Clear override" action:&stru_101659E80];
}

void sub_100EF2180(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF21BC(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF2208(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Center" value:&off_1016EA2C8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Left" value:&off_1016EA298];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Right" value:&off_1016EA2B0];
}

void sub_100EF229C(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupWithContent:&stru_101659D80 backingGeoConfigKey:715 get:&unk_1016447F8 set:&stru_101659DA0, &stru_101659DC0];
  v3 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Clear override" action:&stru_101659DE0];
  v4 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Wide alignment width multiple requirement" placeholderText:@"2.0" inputType:3 geoConfigKeyDouble:716, &unk_101644830];
}

void sub_100EF2364(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF23A0(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF23EC(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Narrow" value:&off_1016EA2C8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Wide" value:&off_1016EA298];
}

void sub_100EF2460(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enabled" geoConfigKey:710, &unk_1016446E0];
  v3 = [(MapsDebugTableSection *)v10 addCheckmarkRowsGroupWithContent:&stru_101659CE0 backingGeoConfigKey:712 get:&unk_101644750 set:&stru_101659D00, &stru_101659D20];
  v4 = [(MapsDebugTableSection *)v10 addButtonRowWithTitle:@"Clear override" action:&stru_101659D40];
  v5 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Maneuver+Map template visibility ratio" placeholderText:@"0.4" inputType:3 geoConfigKeyDouble:713, &unk_101644788];
  v6 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Maneuver+Map+Other template visibility ratio" placeholderText:@"0.3" inputType:3 geoConfigKeyDouble:714, &unk_1016447C0];
  v7 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"DCA Carousel guidance card max height ratio" placeholderText:@"0.4" inputType:3 geoConfigKeyDouble:788, &unk_101645790];
  v8 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Carousel guidance card min height" placeholderText:@"65.0" inputType:3 geoConfigKeyDouble:789, &unk_1016457C8];
  v9 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Carousel eta tray min height" placeholderText:@"36" inputType:3 geoConfigKeyDouble:790, &unk_101645800];
}

void sub_100EF2614(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF2650(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF269C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Maneuver only" value:&off_1016EA2C8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Maneuver + map" value:&off_1016EA298];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Maneuver + map + other" value:&off_1016EA2B0];
}

void sub_100EF2730(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addEmptySectionBannerRowWithTitle:@"Visibility"];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Overview mode - narrow" geoConfigKey:685, &unk_1016441A0];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Detail mode - narrow" geoConfigKey:686, &unk_1016441D8];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Overview mode - wide" geoConfigKey:689, &unk_101644280];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Detail mode - wide" geoConfigKey:690, &unk_1016442B8];
}

void sub_100EF280C(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Guidance card enabled" geoConfigKey:589, &unk_101643078];
  v3 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Hide secondary guidance" geoConfigKey:682, &unk_1016440F8];
  v4 = [(MapsDebugTableSection *)v9 addEmptySectionBannerRowWithTitle:@"Visibility"];
  v5 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Overview mode - narrow" geoConfigKey:683, &unk_101644130];
  v6 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Detail mode - narrow" geoConfigKey:684, &unk_101644168];
  v7 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Overview mode - wide" geoConfigKey:687, &unk_101644210];
  v8 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Detail mode - wide" geoConfigKey:688, &unk_101644248];
}

void sub_100EF2930(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Width (mm)" placeholderText:@"-1" inputType:3 geoConfigKeyDouble:707, &unk_101644638];
  v3 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Height (mm)" placeholderText:@"-1" inputType:3 geoConfigKeyDouble:708, &unk_101644670];
  v4 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Clear overrides" action:&stru_101659C60];
}

void sub_100EF29EC(id a1)
{
  _GEOConfigRemoveValue();

  _GEOConfigRemoveValue();
}

void sub_100EF2A2C(id a1, MapsDebugTableSection *a2)
{
  v13 = a2;
  v2 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Enabled" geoConfigKey:709, &unk_1016446A8];
  v3 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline screen width (pixels)" placeholderText:@"1920" inputType:3 geoConfigKeyDouble:700, &unk_1016444B0];
  v4 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline screen height (pixels)" placeholderText:@"720" inputType:3 geoConfigKeyDouble:701, &unk_1016444E8];
  v5 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline screen width (mm)" placeholderText:@"293" inputType:3 geoConfigKeyDouble:702, &unk_101644520];
  v6 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline screen height (mm)" placeholderText:@"110" inputType:3 geoConfigKeyDouble:703, &unk_101644558];
  v7 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline maneuver width (pixels)" placeholderText:@"330" inputType:3 geoConfigKeyDouble:704, &unk_101644590];
  v8 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline maneuver height (pixels)" placeholderText:@"115" inputType:3 geoConfigKeyDouble:705, &unk_1016445C8];
  v9 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Baseline content scale" placeholderText:@"2.0" inputType:3 geoConfigKeyDouble:699, &unk_101644478];
  v10 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Point scale override" placeholderText:@"-1" inputType:3 geoConfigKeyDouble:718, &unk_101644868];
  v11 = [(MapsDebugTableSection *)v13 addGEOTextFieldRowWithTitle:@"Pixel scale override" placeholderText:@"-1" inputType:3 geoConfigKeyDouble:719, &unk_1016448A0];
  v12 = [(MapsDebugTableSection *)v13 addButtonRowWithTitle:@"Clear scale overrides" action:&stru_101659C20];
}

void sub_100EF2C5C(id a1)
{
  _GEOConfigRemoveValue();

  _GEOConfigRemoveValue();
}

void sub_100EF2D0C(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF2D48(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF2D94(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Overview" value:&off_1016EA298];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Detailed" value:&off_1016EA2B0];
}

void sub_100EF2E08(id a1, id a2)
{
  [a2 integerValue];

  GEOConfigSetInteger();
}

id sub_100EF2E44(id a1)
{
  Integer = GEOConfigGetInteger();

  return [NSNumber numberWithInteger:Integer];
}

void sub_100EF2E90(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Overview" value:&off_1016EA298];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Detailed" value:&off_1016EA2B0];
}

void sub_100EF2F04(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Navigation compression test" action:&stru_1016597E0];
  v3 = [(MapsDebugTableSection *)v4 addNavigationRowWithTitle:@"Add Card" viewControllerContent:&stru_101659800];
}

void sub_100EF2F78(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 1;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 1;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 1;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x4049000000000000;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0x4059000000000000;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100EF3630;
  v18[3] = &unk_101659890;
  v18[4] = v41;
  v18[5] = v40;
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Position" content:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100EF3894;
  v17[3] = &unk_101659948;
  v17[4] = v39;
  v17[5] = v38;
  v17[6] = v36;
  v17[7] = v35;
  v17[8] = v33;
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Primary Axis" content:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EF3A38;
  v16[3] = &unk_101659738;
  v16[4] = v31;
  v5 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Stays On Top" content:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EF3B00;
  v15[3] = &unk_101659738;
  v15[4] = v30;
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Pinned Edges" content:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EF3C44;
  v14[3] = &unk_1016599E8;
  v14[4] = v28;
  v14[5] = v26;
  v14[6] = v20;
  v14[7] = v19;
  v7 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Size" content:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EF3F2C;
  v13[3] = &unk_101659A10;
  v13[4] = v25;
  v13[5] = v23;
  v13[6] = v22;
  v8 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Stack" content:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EF4168;
  v12[3] = &unk_101659738;
  v12[4] = v21;
  v9 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Stack Alignment" content:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EF4230;
  v11[3] = &unk_101659AA0;
  v11[4] = v41;
  v11[5] = v39;
  v11[6] = v30;
  v11[7] = v38;
  v11[8] = v35;
  v11[9] = v40;
  v11[10] = v36;
  v11[11] = v33;
  v11[12] = v19;
  v11[13] = v20;
  v11[14] = v31;
  v11[15] = v28;
  v11[16] = v26;
  v11[17] = v25;
  v11[18] = v23;
  v11[19] = v22;
  v11[20] = v21;
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:&stru_1016631F0 content:v11];
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
}

void sub_100EF3558(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100EF3630(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100EE7DD4;
  v27 = sub_100EE7DE4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100EE7DD4;
  v21 = sub_100EE7DE4;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EF552C;
  v16[3] = &unk_1016596E8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EF5548;
  v13[3] = &unk_101659848;
  v4 = *(a1 + 32);
  v16[4] = *(a1 + 32);
  v14 = v4;
  v15 = &v17;
  v5 = [v3 addCheckmarkRowsGroupWithContent:&stru_101659820 get:v16 set:v13];
  v6 = v24[5];
  v24[5] = v5;

  v10[6] = &v23;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EF55A4;
  v11[3] = &unk_1016596E8;
  v12 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EF55C0;
  v10[3] = &unk_101659848;
  v7 = *(a1 + 32);
  v10[4] = v12;
  v10[5] = v7;
  v8 = [v3 addCheckmarkRowsGroupWithContent:&stru_101659868 get:v11 set:v10];
  v9 = v18[5];
  v18[5] = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_100EF3870(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100EF3894(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EF4C10;
  v12[3] = &unk_1016598B8;
  v13 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EF4C28;
  v11[3] = &unk_10165F5C8;
  v11[4] = v13;
  v4 = [v3 addSwitchRowWithTitle:@"Horizontal" get:v12 set:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EF4C3C;
  v9[3] = &unk_101659900;
  v10 = *(a1 + 40);
  v5 = [v3 addNavigationRowWithTitle:@"Primary Axis Fill Mode" viewControllerContent:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF4D3C;
  v7[3] = &unk_101659900;
  v8 = *(a1 + 56);
  v6 = [v3 addNavigationRowWithTitle:@"Secondary Axis Fill Mode" viewControllerContent:v7];
}

id sub_100EF3A38(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EF4BF0;
  v4[3] = &unk_1016598B8;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EF4C00;
  v3[3] = &unk_10165F5C8;
  v3[4] = v5;
  return [a2 addSwitchRowWithTitle:@"Stays On Top" get:v4 set:v3];
}

void sub_100EF3B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = &off_1016EA1F0;
  v10[1] = &off_1016EA208;
  v11[0] = @"Top";
  v11[1] = @"Bottom";
  v10[2] = &off_1016EA220;
  v10[3] = &off_1016EA238;
  v11[2] = @"Left";
  v11[3] = @"Right";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF4AB4;
  v7[3] = &unk_1016599C0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100EF3C44(void *a1, void *a2)
{
  v3 = a2;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100EF4A24;
  v22[3] = &unk_1016598B8;
  v23 = a1[4];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100EF4A34;
  v21[3] = &unk_10165F5C8;
  v21[4] = v23;
  v4 = [v3 addSwitchRowWithTitle:@"Grows" get:v22 set:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100EF4A44;
  v19[3] = &unk_1016598B8;
  v20 = a1[5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100EF4A54;
  v18[3] = &unk_10165F5C8;
  v18[4] = v20;
  v5 = [v3 addSwitchRowWithTitle:@"Compresses" get:v19 set:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EF4A64;
  v16[3] = &unk_101659678;
  v17 = a1[6];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EF4A78;
  v15[3] = &unk_1016596A0;
  v15[4] = v17;
  LODWORD(v6) = 1128792064;
  LODWORD(v7) = 10.0;
  v8 = [v3 addSliderRowWithTitle:@"Height" subtitleStringFormat:@"%.1f" min:v16 max:v15 get:v7 set:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EF4A8C;
  v13[3] = &unk_101659678;
  v14 = a1[7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EF4AA0;
  v12[3] = &unk_1016596A0;
  v12[4] = v14;
  LODWORD(v9) = 1137180672;
  LODWORD(v10) = 10.0;
  v11 = [v3 addSliderRowWithTitle:@"Width" subtitleStringFormat:@"%.1f" min:v13 max:v12 get:v10 set:v9];
}

void sub_100EF3F2C(void *a1, void *a2)
{
  v3 = a2;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EF49B0;
  v15[3] = &unk_101659678;
  v16 = a1[4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EF49C4;
  v14[3] = &unk_1016596A0;
  v14[4] = v16;
  LODWORD(v4) = 4.0;
  v5 = [v3 addSliderRowWithTitle:@"Count" subtitleStringFormat:@"%.0f" min:v15 max:v14 get:0.0 set:v4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100EF49D8;
  v12[3] = &unk_1016598B8;
  v13 = a1[5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EF49E8;
  v11[3] = &unk_10165F5C8;
  v11[4] = v13;
  v6 = [v3 addSwitchRowWithTitle:@"Use card layout" get:v12 set:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EF49F8;
  v9[3] = &unk_1016598B8;
  v10 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EF4A10;
  v8[3] = &unk_10165F5C8;
  v8[4] = v10;
  v7 = [v3 addSwitchRowWithTitle:@"Horizontal" get:v9 set:v8];
}

id sub_100EF4168(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EF48AC;
  v4[3] = &unk_1016596E8;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EF48C8;
  v3[3] = &unk_101659710;
  v3[4] = v5;
  return [a2 addCheckmarkRowsGroupWithContent:&stru_101659A30 get:v4 set:v3];
}

void sub_100EF4230(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EF4318;
  v10[3] = &unk_101659A58;
  v4 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v4;
  v5 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = v5;
  v6 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v6;
  v7 = *(a1 + 144);
  v17 = *(a1 + 128);
  v18 = v7;
  v19 = *(a1 + 160);
  v8 = [v3 addButtonRowWithTitle:@"Make Card" action:v10];
  v9 = [v3 addButtonRowWithTitle:@"Remove all Cards" action:&stru_101659A78];
}

void sub_100EF4318(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    v3 = *(*(a1[5] + 8) + 24);
    v4 = *(*(a1[6] + 8) + 24);
    v5 = *(*(a1[7] + 8) + 24);
    v6 = *(*(a1[8] + 8) + 24);
    v7 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v7 setEdgePosition:v2];
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = *(*(a1[9] + 8) + 24);
    v3 = *(*(a1[5] + 8) + 24);
    v4 = *(*(a1[6] + 8) + 24);
    v5 = *(*(a1[7] + 8) + 24);
    v6 = *(*(a1[8] + 8) + 24);
    v7 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v7 setEdgePosition:0];
    v8 = v7;
    v9 = v10;
  }

  [(CarCardLayout *)v8 setCornerPosition:v9];
  [(CarCardLayout *)v7 setPrimaryAxis:v3];
  [(CarCardLayout *)v7 setPinnedEdges:v4];
  [(CarCardLayout *)v7 setPrimaryAxisFillMode:v5];
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v11 = 1000.0;
  }

  else
  {
    *&v11 = 1.0;
  }

  [(CarCardLayout *)v7 setPrimaryAxisFillModePriority:v11];
  [(CarCardLayout *)v7 setSecondaryAxisFillMode:v6];
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v12 = 1000.0;
  }

  else
  {
    *&v12 = 1.0;
  }

  [(CarCardLayout *)v7 setSecondaryAxisFillModePriority:v12];
  [(CarCardLayout *)v7 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v7 setFlipForRightHandDrive:1];
  v13 = v7;
  v14 = [(CarCardLayout *)v13 primaryAxis];
  v15 = [(CarCardLayout *)v13 cornerPosition];
  if (v14 == 1)
  {
    if (v15 == 4 || [(CarCardLayout *)v13 cornerPosition]== 1 || [(CarCardLayout *)v13 edgePosition]== 2)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if ([(CarCardLayout *)v13 cornerPosition]== 8 || [(CarCardLayout *)v13 cornerPosition]== 2 || [(CarCardLayout *)v13 edgePosition]== 8)
    {
      v16 |= 2uLL;
    }

    if ([(CarCardLayout *)v13 edgePosition]== 1)
    {
      v16 |= 4uLL;
    }

    v17 = v16 | ([(CarCardLayout *)v13 edgePosition]== 4);
  }

  else
  {
    v17 = v15 == 4 || [(CarCardLayout *)v13 cornerPosition]== 8 || [(CarCardLayout *)v13 edgePosition]== 4;
    if ([(CarCardLayout *)v13 cornerPosition]== 1 || [(CarCardLayout *)v13 cornerPosition]== 2 || [(CarCardLayout *)v13 edgePosition]== 1)
    {
      v17 |= 4uLL;
    }

    if ([(CarCardLayout *)v13 edgePosition]== 2)
    {
      v17 |= 8uLL;
    }

    if ([(CarCardLayout *)v13 edgePosition]== 8)
    {
      v17 |= 2uLL;
    }
  }

  [(CarCardLayout *)v13 setEdgesAffectingMapInsets:v17];
  [(CarCardLayout *)v13 setHorizontallyCenterMapInsets:0];
  LODWORD(v18) = *(*(a1[10] + 8) + 24);
  [(CarCardLayout *)v13 setPrimaryAxisFillModePriority:v18];
  LODWORD(v19) = *(*(a1[11] + 8) + 24);
  [(CarCardLayout *)v13 setSecondaryAxisFillModePriority:v19];
  v29 = [NSValue valueWithCGSize:*(*(a1[12] + 8) + 24), *(*(a1[13] + 8) + 24)];
  v20 = +[NSNotificationCenter defaultCenter];
  v31[0] = v13;
  v30[0] = @"Layout";
  v30[1] = @"StaysOnTop";
  v21 = [NSNumber numberWithBool:*(*(a1[14] + 8) + 24)];
  v31[1] = v21;
  v31[2] = v29;
  v30[2] = @"Size";
  v30[3] = @"Grows";
  v22 = [NSNumber numberWithBool:*(*(a1[15] + 8) + 24)];
  v31[3] = v22;
  v30[4] = @"Compresses";
  v23 = [NSNumber numberWithBool:*(*(a1[16] + 8) + 24)];
  v31[4] = v23;
  v30[5] = @"StackCount";
  v24 = [NSNumber numberWithUnsignedInteger:*(*(a1[17] + 8) + 24)];
  v31[5] = v24;
  v30[6] = @"StackUseCardLayout";
  v25 = [NSNumber numberWithBool:*(*(a1[18] + 8) + 24)];
  v31[6] = v25;
  v30[7] = @"StackAxis";
  v26 = [NSNumber numberWithInteger:*(*(a1[19] + 8) + 24)];
  v31[7] = v26;
  v30[8] = @"StackAlignment";
  v27 = [NSNumber numberWithInteger:*(*(a1[20] + 8) + 24)];
  v31[8] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
  [v20 postNotificationName:@"__internal_CarCardTestDebug" object:0 userInfo:v28];
}

void sub_100EF4850(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"__internal_CarCardTestDebug" object:0 userInfo:&off_1016EE600];
}

id sub_100EF48C8(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100EF48FC(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Fill" value:&off_1016EA178];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Leading/Top" value:&off_1016EA190];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Center" value:&off_1016EA1C0];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Trailing/Bottom" value:&off_1016EA280];
}

double sub_100EF4A78(uint64_t a1, float a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double sub_100EF4AA0(uint64_t a1, float a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100EF4AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EF4BA4;
  v10[3] = &unk_101659970;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EF4BBC;
  v9[3] = &unk_101659998;
  v9[4] = v11;
  v9[5] = v6;
  v8 = [v7 addSwitchRowWithTitle:v5 get:v10 set:v9];
}

uint64_t sub_100EF4BBC(uint64_t result, int a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  if (a2)
  {
    v4 = *(v3 + 24) | v2;
  }

  else
  {
    v4 = *(v3 + 24) & ~v2;
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_100EF4C3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF51B4;
  v7[3] = &unk_101659738;
  v7[4] = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Primary Axis Fill Mode" content:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF529C;
  v6[3] = &unk_101659738;
  v6[4] = *(a1 + 40);
  v5 = [v3 addSectionWithTitle:@"Priority" content:v6];
}

void sub_100EF4D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF4E3C;
  v7[3] = &unk_101659738;
  v7[4] = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Secondary Axis Fill Mode" content:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF4F24;
  v6[3] = &unk_101659738;
  v6[4] = *(a1 + 40);
  v5 = [v3 addSectionWithTitle:@"Priority" content:v6];
}

void sub_100EF4E3C(uint64_t a1, void *a2)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100EF50B0;
  v12 = &unk_1016596E8;
  v13 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100EF50CC;
  v7 = &unk_101659710;
  v8 = v13;
  v2 = a2;
  v3 = [v2 addCheckmarkRowsGroupWithContent:&stru_101659920 get:&v9 set:&v4];
  [v2 setFooter:{@"* for horizontal, the width is capped to minimum of 640pt and 38% of screen width. For vertical axis it behaves as .Fill", v4, v5, v6, v7, v8, v9, v10, v11, v12}];
}

void sub_100EF4F24(uint64_t a1, void *a2)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100EF5018;
  v12 = &unk_101658EA0;
  v13 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100EF507C;
  v7 = &unk_101658EC8;
  v8 = v13;
  v2 = a2;
  v3 = [v2 addTextFieldRowWithTitle:@"Priority" placeholderText:@"0" inputType:1 get:&v9 set:&v4];
  [v2 setFooter:{@"For Intrinsic fill mode, the higher the priority, the more space the card will have available compared to other, competing Intrinsic cards", v4, v5, v6, v7, v8, v9, v10, v11, v12}];
}

id sub_100EF5018(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(*(a1 + 32) + 8) + 24);
  v2 = [NSNumber numberWithFloat:a2];
  v3 = [v2 stringValue];

  return v3;
}

id sub_100EF507C(uint64_t a1, void *a2)
{
  result = [a2 floatValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

id sub_100EF50CC(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100EF5100(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Intrinsic" value:&off_1016EA250];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Restricted" value:&off_1016EA1F0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Best for Screen" value:&off_1016EA220];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Fill" value:&off_1016EA268];
}

void sub_100EF51B4(uint64_t a1, void *a2)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100EF5428;
  v12 = &unk_1016596E8;
  v13 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100EF5444;
  v7 = &unk_101659710;
  v8 = v13;
  v2 = a2;
  v3 = [v2 addCheckmarkRowsGroupWithContent:&stru_1016598D8 get:&v9 set:&v4];
  [v2 setFooter:{@"* for horizontal, the width is capped to minimum of 320 and 38% of screen width. For vertical axis it behaves as .Fill", v4, v5, v6, v7, v8, v9, v10, v11, v12}];
}

void sub_100EF529C(uint64_t a1, void *a2)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100EF5390;
  v12 = &unk_101658EA0;
  v13 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100EF53F4;
  v7 = &unk_101658EC8;
  v8 = v13;
  v2 = a2;
  v3 = [v2 addTextFieldRowWithTitle:@"Priority" placeholderText:@"0" inputType:1 get:&v9 set:&v4];
  [v2 setFooter:{@"For Intrinsic fill mode, the higher the priority, the more space the card will have available compared to other, competing Intrinsic cards", v4, v5, v6, v7, v8, v9, v10, v11, v12}];
}

id sub_100EF5390(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(*(a1 + 32) + 8) + 24);
  v2 = [NSNumber numberWithFloat:a2];
  v3 = [v2 stringValue];

  return v3;
}

id sub_100EF53F4(uint64_t a1, void *a2)
{
  result = [a2 floatValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

id sub_100EF5444(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100EF5478(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Intrinsic" value:&off_1016EA250];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Restricted" value:&off_1016EA1F0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Best for Screen*" value:&off_1016EA220];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Fill" value:&off_1016EA268];
}

id sub_100EF5548(void *a1, void *a2)
{
  *(*(a1[4] + 8) + 24) = [a2 unsignedIntegerValue];
  *(*(a1[5] + 8) + 24) = 0;
  v3 = *(*(a1[6] + 8) + 40);

  return [v3 update];
}

id sub_100EF55C0(void *a1, void *a2)
{
  *(*(a1[4] + 8) + 24) = [a2 unsignedIntegerValue];
  *(*(a1[5] + 8) + 24) = 0;
  v3 = *(*(a1[6] + 8) + 40);

  return [v3 update];
}

void sub_100EF561C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Top Left" value:&off_1016EA1F0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Bottom Left" value:&off_1016EA208];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Top Right" value:&off_1016EA220];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Bottom Right" value:&off_1016EA238];
}

void sub_100EF56D0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Top" value:&off_1016EA1F0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Bottom" value:&off_1016EA208];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Left" value:&off_1016EA220];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Right" value:&off_1016EA238];
}

void sub_100EF5784(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.maps.compressionTest" object:0];
}

void sub_100EF580C(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100EE7DD4;
  v32 = sub_100EE7DE4;
  v33 = @"Debug interruption";
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100EE7DD4;
  v26 = sub_100EE7DE4;
  v27 = @"Some very long message that tells us something useful.";
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 3;
  v3 = objc_alloc_init(MapsDebugTableSection);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EF5C8C;
  v20[3] = &unk_101659678;
  v20[4] = v34;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100EF5CA0;
  v19[3] = &unk_1016596A0;
  v19[4] = v34;
  LODWORD(v4) = 4.0;
  v5 = [(MapsDebugTableSection *)v3 addSliderRowWithTitle:@"Count" subtitleStringFormat:@"%.0f" min:v20 max:v19 get:0.0 set:v4];
  v6 = v29[5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100EF5CB4;
  v18[3] = &unk_101658EA0;
  v18[4] = &v28;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100EF5CC4;
  v17[3] = &unk_101658EC8;
  v17[4] = &v28;
  v7 = [(MapsDebugTableSection *)v3 addTextFieldRowWithTitle:@"Title" placeholderText:v6 inputType:0 get:v18 set:v17];
  v8 = v23[5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EF5CD4;
  v16[3] = &unk_101658EA0;
  v16[4] = &v22;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EF5CE4;
  v15[3] = &unk_101658EC8;
  v15[4] = &v22;
  v9 = [(MapsDebugTableSection *)v3 addTextFieldRowWithTitle:@"Message" placeholderText:v8 inputType:0 get:v16 set:v15];
  [(MapsDebugValuesViewController *)v2 addSection:v3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EF5CF4;
  v14[3] = &unk_101659738;
  v14[4] = v21;
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Interrupt Kind" content:v14];
  v11 = objc_alloc_init(MapsDebugTableSection);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EF5DBC;
  v13[3] = &unk_1016597A0;
  v13[4] = &v28;
  v13[5] = &v22;
  v13[6] = v34;
  v13[7] = v21;
  v12 = [(MapsDebugTableSection *)v11 addButtonRowWithTitle:@"Trigger" action:v13];
  [(MapsDebugValuesViewController *)v2 addSection:v11];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);
}

void sub_100EF5C4C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_100EF5CF4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EF5F48;
  v4[3] = &unk_1016596E8;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EF5F64;
  v3[3] = &unk_101659710;
  v3[4] = v5;
  return [a2 addCheckmarkRowsGroupWithContent:&stru_1016596C0 get:v4 set:v3];
}

void sub_100EF5DBC(void *a1)
{
  v7 = objc_opt_new();
  [v7 setObject:*(*(a1[4] + 8) + 40) forKeyedSubscript:@"kMapsInterruptionTitle"];
  [v7 setObject:*(*(a1[5] + 8) + 40) forKeyedSubscript:@"kMapsInterruptionMessage"];
  v2 = objc_opt_new();
  if (*(*(a1[6] + 8) + 24))
  {
    v3 = 0;
    do
    {
      v4 = [NSString stringWithFormat:@"Action %lu", v3];
      v5 = [MapsInterruptionAction actionWithTitle:v4 cancels:0 handler:0];

      [v2 addObject:v5];
      ++v3;
    }

    while (v3 < *(*(a1[6] + 8) + 24));
  }

  if ([v2 count])
  {
    [v7 setObject:v2 forKeyedSubscript:@"kMapsInterruptionActions"];
  }

  v6 = +[UIApplication sharedMapsDelegate];
  [v6 interruptApplicationWithKind:*(*(a1[7] + 8) + 24) userInfo:v7 completionHandler:&stru_101659778];
}

id sub_100EF5F64(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100EF5F98(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Generic Error" value:&off_1016EA1C0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"NavSim" value:&off_1016EA1D8];
}

void sub_100EF600C(id a1, MapsDebugTableSection *a2)
{
  v23 = a2;
  v2 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable One handed Zoom Gesture" defaultsKey:@"__internal__CarPlayOneHandedZoomEnabled" switchOnStateIfUnset:+[CarChromeViewController changeHandler:"allowOneHandedZooming"], &stru_101659570];
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 1.5;
  LODWORD(v5) = 1.0;
  v6 = [(MapsDebugTableSection *)v23 addSliderRowWithTitle:@"Dragging Resistance Scale" subtitleStringFormat:@"%.2f" min:@"__internal__CarPlayOneHandedZoomDraggingResistance" max:&stru_101659590 defaultsKey:v3 sliderValueIfUnset:v4 changeHandler:v5];
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 15.0;
  LODWORD(v9) = 1.5;
  v10 = [(MapsDebugTableSection *)v23 addSliderRowWithTitle:@"Minimum velocity threshold for deceleration animation" subtitleStringFormat:@"%.2f" min:@"__internal__CarPlayOneHandedZoomMinimumVelocity" max:&stru_1016595B0 defaultsKey:v7 sliderValueIfUnset:v8 changeHandler:v9];
  LODWORD(v11) = 5.0;
  LODWORD(v12) = 15.0;
  LODWORD(v13) = 10.0;
  v14 = [(MapsDebugTableSection *)v23 addSliderRowWithTitle:@"Maximum velocity for zoom in deceleration animation" subtitleStringFormat:@"%.2f" min:@"__internal__CarPlayOneHandedZoomInMaximumVelocity" max:&stru_1016595D0 defaultsKey:v11 sliderValueIfUnset:v12 changeHandler:v13];
  LODWORD(v15) = 0.5;
  LODWORD(v16) = 10.0;
  LODWORD(v17) = 1.5;
  v18 = [(MapsDebugTableSection *)v23 addSliderRowWithTitle:@"Maximum velocity for zoom out deceleration animation" subtitleStringFormat:@"%.2f" min:@"__internal__CarPlayOneHandedZoomOutMaximumVelocity" max:&stru_1016595F0 defaultsKey:v15 sliderValueIfUnset:v16 changeHandler:v17];
  LODWORD(v19) = 1.0;
  LODWORD(v20) = 5.0;
  LODWORD(v21) = 2.5;
  v22 = [(MapsDebugTableSection *)v23 addSliderRowWithTitle:@"Zoom Out friction scale" subtitleStringFormat:@"%.1f" min:@"__internal__CarPlayOneHandedZoomOutFrictionScale" max:&stru_101659610 defaultsKey:v19 sliderValueIfUnset:v20 changeHandler:v21];
}

void sub_100EF61A8(id a1, float a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF61FC(id a1, float a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF6250(id a1, float a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF62A4(id a1, float a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF62F8(id a1, float a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF634C(id a1, BOOL a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];
}

void sub_100EF63A0(id a1, MapsDebugTableSection *a2)
{
  v17 = a2;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 0.25;
  v4 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Hold magnitude" subtitleStringFormat:@"%.2f" min:@"CarMapNudgerizerMagnitudeHold" max:&stru_1016594B0 defaultsKey:0.0 sliderValueIfUnset:v2 changeHandler:v3];
  LODWORD(v5) = 1050253722;
  LODWORD(v6) = 1.0;
  v7 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Impulse magnitude" subtitleStringFormat:@"%.2f" min:@"CarMapNudgerizerMagnitudeImpulse" max:&stru_1016594D0 defaultsKey:0.0 sliderValueIfUnset:v6 changeHandler:v5];
  LODWORD(v8) = 1036831949;
  LODWORD(v9) = 1.0;
  v10 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Impulse magnitude acceleration" subtitleStringFormat:@"%.2f" min:@"CarMapNudgerizerMagnitudeImpulseAcceleration" max:&stru_1016594F0 defaultsKey:0.0 sliderValueIfUnset:v9 changeHandler:v8];
  LODWORD(v11) = *"333?";
  LODWORD(v12) = 1.0;
  v13 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Impulse max magnitude" subtitleStringFormat:@"%.2f" min:@"CarMapNudgerizerMagnitudeImpulseMax" max:&stru_101659510 defaultsKey:0.0 sliderValueIfUnset:v12 changeHandler:v11];
  LODWORD(v14) = 1114636288;
  LODWORD(v15) = 5.0;
  v16 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Acceleration timeout" subtitleStringFormat:@"%.2f" min:@"CarMapNudgerizerImpulseAccelerationTimeout" max:&stru_101659530 defaultsKey:0.0 sliderValueIfUnset:v14 changeHandler:v15];
}

void sub_100EF650C(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"CarMapNudgerizerImpulseAccelerationTimeout" forKey:v3];
}

void sub_100EF656C(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"CarMapNudgerizerMagnitudeImpulseMax" forKey:v3];
}

void sub_100EF65CC(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"CarMapNudgerizerMagnitudeImpulseAcceleration" forKey:v3];
}

void sub_100EF662C(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"CarMapNudgerizerMagnitudeImpulse" forKey:v3];
}

void sub_100EF668C(id a1, float a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  *&v3 = a2;
  [v4 setFloat:@"CarMapNudgerizerMagnitudeHold" forKey:v3];
}

void sub_100EF6720(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Set Route Genius Active" action:&stru_1016593F0];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100EE7DD4;
  v10[4] = sub_100EE7DE4;
  v11 = @"McDonald's";
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EF6924;
  v9[3] = &unk_101658EA0;
  v9[4] = v10;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EF6934;
  v8[3] = &unk_101658EC8;
  v8[4] = v10;
  v4 = [(MapsDebugTableSection *)v2 addTextFieldRowWithTitle:@"Route Genius place" placeholderText:@"(place name inputType:be specific)" get:0 set:v9, v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF6944;
  v7[3] = &unk_1016608A8;
  v7[4] = v10;
  v5 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Force Destination" action:v7];
  v6 = [(MapsDebugTableSection *)v2 addButtonRowWithTitle:@"Reset Forced Destination" action:&stru_101659450];
  [(MapsDebugTableSection *)v2 setFooter:@"Tap the Force Destination to find the place matching the query in the text field above. This will do nothing if no place or route is found.\nReset Forced Destination to allow real Route Genius suggestions to appear again."];
  _Block_object_dispose(v10, 8);
}

void sub_100EF6944(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) length])
  {
    v3 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:*(*(*(a1 + 32) + 8) + 40)];
    v2 = [[MKLocalSearch alloc] initWithRequest:v3];
    [v2 startWithCompletionHandler:&stru_101659430];
  }
}

void sub_100EF69EC(id a1)
{
  v1 = +[CarRouteGeniusService sharedService];
  [v1 resetForcedDestination];
}

void sub_100EF6A34(id a1, MKLocalSearchResponse *a2, NSError *a3)
{
  v3 = [(MKLocalSearchResponse *)a2 mapItems];
  v9 = [v3 firstObject];

  if (v9)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 routeGeniusManager];
    v6 = +[CarRouteGeniusManager sharedDebugPanelChrome];
    [v5 activateIfPossibleForChrome:v6];

    v7 = +[CarRouteGeniusService sharedService];
    v8 = [v9 _geoMapItem];
    [v7 forceSuggestionWithMapItem:v8];
  }
}

void sub_100EF6B20(id a1)
{
  v3 = +[CarDisplayController sharedInstance];
  v1 = [v3 routeGeniusManager];
  v2 = +[CarRouteGeniusManager sharedDebugPanelChrome];
  [v1 activateIfPossibleForChrome:v2];
}

void sub_100EF6BA0(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addSwitchRowWithTitle:@"Default to iPhone SAR categories" defaultsKey:@"EnableCarSARCategoryWorkaround"];
  [(MapsDebugTableSection *)v3 setFooter:@"This setting will take effect the next time you show SAR"];
}

void sub_100EF6C04(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Disconnected and idle" placeholderText:@"(seconds)" inputType:3 geoConfigKeyDouble:643, &unk_101643A48];
  v3 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"Navigation obscured" placeholderText:@"(seconds)" inputType:1 get:&stru_1016592D0 set:&stru_101659310];
  v4 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"Destination handoff" placeholderText:@"(seconds)" inputType:1 get:&stru_101659330 set:&stru_101659350];
  v5 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"Content AutoHide" placeholderText:@"(seconds)" inputType:1 get:&stru_101659370 set:&stru_101659390];
  [(MapsDebugTableSection *)v6 setFooter:@"No screen ownership: how long after we lose the main CarPlay application scene before we suppress its chrome.\nDisconnected and idle: How long after we lose the main CarPlay screen before we destroy our chrome.\nNavigation obscured: while navigating, how long a context can sit on top of navigation before being purged (if permitted).\nDestination handoff: how long we wait for a success/failure notification from the car when sharing a destination.\nNavBar AutoHide: how long we wait to hide the nav bar after the last interaction."];
}

void sub_100EF6D14(id a1, NSString *a2)
{
  v4 = a2;
  v2 = v4;
  if (![(NSString *)v4 length])
  {

    v2 = 0;
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v2 forKey:@"CarAutoHideContentTimeInterval"];
}

NSString *__cdecl sub_100EF6D9C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"CarAutoHideContentTimeInterval"];

  return v2;
}

void sub_100EF6DF8(id a1, NSString *a2)
{
  v4 = a2;
  v2 = v4;
  if (![(NSString *)v4 length])
  {

    v2 = 0;
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v2 forKey:@"__internal__CarDestinationHandoffTimeoutInterval"];
}

NSString *__cdecl sub_100EF6E80(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"__internal__CarDestinationHandoffTimeoutInterval"];

  return v2;
}

void sub_100EF6EDC(id a1, NSString *a2)
{
  v4 = a2;
  v2 = v4;
  if (![(NSString *)v4 length])
  {

    v2 = 0;
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v2 forKey:@"CarNavigationObscuredTimeoutInterval"];
}

NSString *__cdecl sub_100EF6F64(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"CarNavigationObscuredTimeoutInterval"];

  return v2;
}

void sub_100EF6FF8(uint64_t a1)
{
  v7 = +[MKLocationManager sharedLocationManager];
  [v7 startVehicleSpeedUpdate];
  [v7 startVehicleHeadingUpdate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];

  [v6 _setUseVehicleHeading:1];
  [v6 setUserTrackingMode:2];
}

void sub_100EF70F8(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"List deactivation reasons over map" defaultsKey:@"CarInternalShowDeactivationReasons"];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Avoid all map deactivation" geoConfigKey:645, &unk_101643AB8];
  [(MapsDebugTableSection *)v4 setFooter:@"The map is automatically deactivated in certain circumstances where it isn't visible for performance reasons."];
}

void sub_100EF7180(id a1, MapsDebugTableSection *a2)
{
  v14 = a2;
  v2 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Visualize Launch Performance *" defaultsKey:@"StarkLaunchPerformanceDebug"];
  v3 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Visualize Focus Guides *" defaultsKey:@"__internal_CarVisualizeFocusGuidesDebug"];
  v4 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Visualize Map Controls Containers *" defaultsKey:@"__internal_CarVisualizeMapControlContainersDebug"];
  v5 = [(MapsDebugTableSection *)v14 addTextFieldRowWithTitle:@"Launch Performance Seconds Delay *" placeholderText:@"10" inputType:1 defaultsKey:@"StarkLaunchPerformanceDelayDebug"];
  v6 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Search Cell Items" defaultsKey:@"CarSearchCellItemDebug"];
  v7 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Route Genius Location Ranking" defaultsKey:@"CarRouteGeniusManagerLocationRankingDebug"];
  v8 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"EV Search Testing" defaultsKey:@"CarEVSearchTestingDebug"];
  v9 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Panning touch targets" defaultsKey:@"CarPanningTouchTargetDebug"];
  v10 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Force warning for low range" defaultsKey:@"ExternalAccessoryForceLowRangeWarningForLowRange"];
  v11 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Human Presence **" get:&stru_1016591A0 set:&stru_1016591C0];
  v12 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Visualize card containers" defaultsKey:@"__internal_CarVisualizeCardContainersDebug"];
  v13 = [(MapsDebugTableSection *)v14 addSwitchRowWithTitle:@"Test CarCards *" defaultsKey:@"__internal_CarCardTestDebug"];
  [(MapsDebugTableSection *)v14 setFooter:@"* restart maps for settings to be made active            \n** first on/off toggle after launch does nothing.  2nd and there after on/off toggle will work"];
}

void sub_100EF7358(id a1, BOOL a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EF73CC;
  block[3] = &unk_1016591E0;
  v3 = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100EF73CC(uint64_t a1)
{
  v2 = +[UIScreen _carScreen];
  [v2 _setCarPlayHumanPresenceInRange:*(a1 + 32)];
}

BOOL sub_100EF7424(id a1)
{
  v1 = +[UIScreen _carScreen];
  v2 = [v1 _isCarPlayHumanPresenceInRange];

  return v2;
}

void sub_100EF7464(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Hint enabled" geoConfigKey:798 switchOnStateIfUnset:&unk_1016459E0 changeHandler:1, 0];
  v3 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Auto dismiss delay" placeholderText:@"5" inputType:3 geoConfigKeyDouble:799, &unk_101645A18];
  v4 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Auto dismiss animation duration" placeholderText:@"0.5" inputType:3 geoConfigKeyDouble:800, &unk_101645A50];
}

void sub_100EF7524(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable speed sign road matcher" geoConfigKey:574, &unk_101642D38];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Search radius" placeholderText:@"(metres)" inputType:3 geoConfigKeyDouble:575, &unk_101642D70];
}

void sub_100EF75AC(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Map appearance should follow system settings *" geoConfigKey:500, &unk_101641DB0];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Should accessories modify map insets" geoConfigKey:501, &unk_101641DE8];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"MSg decorated titles" defaultsKey:@"__internal__CarMapsSuggestionsEntryDecoratedTitle"];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Disable blur" get:&stru_101659100 set:&stru_101659120];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Drive Camera" geoConfigKey:580, &unk_101642E88];
}

void sub_100EF76B0(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addCheckmarkRowsGroupWithContent:&stru_101659080 defaultsKey:@"StarkDisplayEnablingState" checkedRowValueIfUnset:0 changeHandler:&stru_1016590C0];
  [(MapsDebugTableSection *)v3 setFooter:@"These settings take effect immediately.\n- No Simulation: default device behaviour (resolves to Allow/Disallow depending on device and region).\n- Enabled/Allowed: force CarPlay allowed on all devices.\n- No Screen: simulate no screen attached.\n- No Screen Ownership: allow a screen, but simulate no ownership (e.g. reverse camera, radio, etc).\n- Disabled/Disallowed: disallow CarPlay entirely on all devices."];
}

void sub_100EF7720(id a1, id a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CarDisplayDidUpdateEnablingStateNotification" object:0];
}

void sub_100EF7774(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"No Simulation" value:0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Enabled/Allowed" value:&off_1016EA178];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"No Screen" value:&off_1016EA190];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"No Screen Ownership" value:&off_1016EA1C0];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Disabled/Disallowed" value:&off_1016EA1A8];
}

void sub_100EF7844(id a1, MapsDebugValuesViewController *a2)
{
  v31 = a2;
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 connectedCarScreenInfos];

  v30 = v3;
  v4 = [v3 keyEnumerator];
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&stru_101658FB8];

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 connectedScenes];
  v9 = sub_1000282CC(v8, &stru_101658FD8);
  v29 = sub_1006F76DC(v9, &stru_101658FF8);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = *v38;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [v30 objectForKey:v13];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100EF7BB0;
        v36[3] = &unk_10165FD80;
        v36[4] = v13;
        v15 = sub_100030774(v29, v36);
        v16 = [v15 screen];
        v17 = [v13 identifier];
        v18 = +[UIScreen _carScreen];
        v19 = [v18 _displayID];
        v20 = [v17 isEqualToString:v19];
        v21 = @"Instrument cluster info";
        if (v20)
        {
          v21 = @"Center console info";
        }

        v22 = v21;

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100EF7C24;
        v32[3] = &unk_101659020;
        v33 = v14;
        v34 = v16;
        v35 = v15;
        v23 = v15;
        v24 = v16;
        v25 = v14;
        v26 = [(MapsDebugValuesViewController *)v31 addSectionWithTitle:v22 content:v32];
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }
}

id sub_100EF7BB0(uint64_t a1, void *a2)
{
  v3 = [a2 screen];
  v4 = [v3 _displayID];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_100EF7C24(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] carName];
  v5 = [v3 addReadOnlyRowWithTitle:@"CarName" value:v4];

  v6 = [a1[4] manufacturer];
  v7 = [v3 addReadOnlyRowWithTitle:@"Manufacturer" value:v6];

  v8 = [a1[4] model];
  v9 = [v3 addReadOnlyRowWithTitle:@"Model" value:v8];

  v10 = [a1[4] deviceConnection];
  if (v10 >= 3)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_10165C920[v10];
  }

  v12 = [v3 addReadOnlyRowWithTitle:@"Connection" value:v11];

  [a1[5] _car_physicalSize];
  v14 = v13;
  [a1[5] _car_physicalSize];
  v16 = [NSString stringWithFormat:@"w:%.2f h:%.2f", v14, v15];
  v17 = [v3 addReadOnlyRowWithTitle:@"Dimensions (mm)" value:v16];

  v18 = a1[4];
  if (v18)
  {
    [v18 screenResolution];
    v19 = a1[4];
    v20 = v78;
    if (v19)
    {
      [v19 screenResolution];
      v21 = v74;
      goto LABEL_9;
    }
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v20 = 0;
    v79 = 0;
  }

  v74 = 0;
  v75 = 0;
  v21 = 0;
  v76 = 0;
LABEL_9:
  v22 = [NSString stringWithFormat:@"w:%.2f h:%.2f", v20, v21, v74, v75, v76, v77, v78, v79];
  v23 = [v3 addReadOnlyRowWithTitle:@"Resolution (pixels)" value:v22];

  v24 = [a1[6] safeAreaLayoutGuide];
  [v24 layoutFrame];
  v26 = v25;
  [a1[5] nativeScale];
  v28 = v26 * v27;
  v29 = [a1[6] safeAreaLayoutGuide];
  [v29 layoutFrame];
  v31 = v30;
  [a1[5] nativeScale];
  v33 = [NSString stringWithFormat:@"w:%.2f h:%.2f", *&v28, v31 * v32];
  v34 = [v3 addReadOnlyRowWithTitle:@"Safe area (pixels)" value:v33];

  [a1[5] _car_physicalPixelSize];
  v36 = [NSString stringWithFormat:@"%.3f", v35];
  v37 = [v3 addReadOnlyRowWithTitle:@"Physical pixel size (mm)" value:v36];

  [a1[5] _car_physicalPointSize];
  v39 = [NSString stringWithFormat:@"%.3f", v38];
  v40 = [v3 addReadOnlyRowWithTitle:@"Physical point size (mm)" value:v39];

  [a1[5] nativeScale];
  v42 = [NSString stringWithFormat:@"%.3f", v41];
  v43 = [v3 addReadOnlyRowWithTitle:@"Content scale" value:v42];

  [a1[5] _car_dynamicPixelScaleValue];
  v45 = [NSString stringWithFormat:@"%.3f", v44];
  v46 = [v3 addReadOnlyRowWithTitle:@"Dynamic pixel scale factor" value:v45];

  [a1[5] _car_dynamicPointScaleValue];
  v48 = [NSString stringWithFormat:@"%.3f", v47];
  v49 = [v3 addReadOnlyRowWithTitle:@"Dynamic point scale factor" value:v48];

  v50 = [a1[6] _car_hybridInstrumentClusterAlignmentStyle];
  v51 = @"?";
  v52 = @"Wide";
  if (v50 != 1)
  {
    v52 = @"?";
  }

  if (v50)
  {
    v53 = v52;
  }

  else
  {
    v53 = @"Narrow";
  }

  v54 = [v3 addReadOnlyRowWithTitle:@"Alignment style" value:v53];
  v55 = [a1[6] _car_hybridInstrumentClusterAlignment];
  if (v55 <= 2)
  {
    v51 = off_10165C938[v55];
  }

  v56 = [v3 addReadOnlyRowWithTitle:@"Alignment" value:v51];
  v57 = objc_opt_new();
  if ([a1[4] engineTypesCount])
  {
    v58 = 0;
    do
    {
      v59 = [a1[4] engineTypeAtIndex:v58];
      if (v59 >= 5)
      {
        v60 = [NSString stringWithFormat:@"(unknown: %i)", v59];
      }

      else
      {
        v60 = off_10165C950[v59];
      }

      [v57 addObject:v60];

      ++v58;
    }

    while (v58 < [a1[4] engineTypesCount]);
  }

  v61 = [v57 componentsJoinedByString:{@", "}];
  v62 = [v3 addReadOnlyRowWithTitle:@"EngineType(s)" value:v61];

  v63 = objc_opt_new();
  if ([a1[4] inputMethodsCount])
  {
    v64 = 0;
    do
    {
      v65 = [a1[4] inputMethodAtIndex:v64];
      if (v65 >= 5)
      {
        v66 = [NSString stringWithFormat:@"(unknown: %i)", v65];
      }

      else
      {
        v66 = off_10165C998[v65];
      }

      [v63 addObject:v66];

      ++v64;
    }

    while (v64 < [a1[4] inputMethodsCount]);
  }

  v67 = [v63 componentsJoinedByString:{@", "}];
  v68 = [v3 addReadOnlyRowWithTitle:@"InputMethod(s)" value:v67];

  if ([a1[4] destinationSharingEnabled])
  {
    v69 = @"YES";
  }

  else
  {
    v69 = @"NO";
  }

  v70 = [v3 addReadOnlyRowWithTitle:@"DestinationSharing" value:v69];
  v71 = [a1[4] navAidedDrivingStatus];
  if (v71 >= 4)
  {
    v72 = [NSString stringWithFormat:@"(unknown: %i)", v71];
  }

  else
  {
    v72 = off_10165C978[v71];
  }

  v73 = [v3 addReadOnlyRowWithTitle:@"NavAidedDrivingSatus" value:v72];
}

BOOL sub_100EF82E4(id a1, UIScene *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

int64_t sub_100EF8330(id a1, CARScreenInfo *a2, CARScreenInfo *a3)
{
  v4 = a3;
  v5 = [(CARScreenInfo *)a2 identifier];
  v6 = +[UIScreen _carScreen];
  v7 = [v6 _displayID];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v10 = [(CARScreenInfo *)v4 identifier];
    v11 = +[UIScreen _carScreen];
    v12 = [v11 _displayID];
    v13 = [v10 isEqualToString:v12];

    v9 = v13;
  }

  return v9;
}

void sub_100EF858C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Chrome" content:&stru_101658DE0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EF8760;
  v14[3] = &unk_1016612C8;
  v14[4] = *(a1 + 32);
  v5 = [v3 addSectionWithTitle:@"iOS/Mac" content:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EF8E20;
  v13[3] = &unk_1016612C8;
  v13[4] = *(a1 + 32);
  v6 = [v3 addSectionWithTitle:@"Mac" content:v13];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4010000000;
  v10[3] = &unk_1014C0133;
  size = MKMapRectNull.size;
  origin = MKMapRectNull.origin;
  v12 = size;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EF8EDC;
  v9[3] = &unk_101658EF0;
  v9[4] = *(a1 + 32);
  v9[5] = v10;
  v8 = [v3 addSectionWithTitle:@"Set Visible Map Rect" content:v9];
  _Block_object_dispose(v10, 8);
}

void sub_100EF8748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100EF8760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Force stale map effect" defaultsKey:@"__internal_MapsDebugForceChromeStaleMapEffect"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100EF9744;
  v40[3] = &unk_101661B18;
  v40[4] = *(a1 + 32);
  v5 = [v3 addButtonRowWithTitle:@"Pop to root context" action:v40];
  v6 = [v3 addSwitchRowWithTitle:@"Enable new RoutePlanningContext" geoConfigKey:{777, &unk_101645560}];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100EF9758;
  v39[3] = &unk_101661B18;
  v39[4] = *(a1 + 32);
  v7 = [v3 addButtonRowWithTitle:@"Push card test context" action:v39];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100EF9828;
  v38[3] = &unk_101661B18;
  v38[4] = *(a1 + 32);
  v8 = [v3 addButtonRowWithTitle:@"Push card test context (custom container)" action:v38];
  if (![*(*(a1 + 32) + 112) length])
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 112);
    *(v9 + 112) = @"Taco Bell";
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100EF98F8;
  v36[3] = &unk_101658E28;
  v37 = *(a1 + 32);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100EF990C;
  v35[3] = &unk_10165EF00;
  v35[4] = v37;
  v11 = [v3 addTextFieldRowWithTitle:@"Place Card Context Query" placeholderText:@"Enter a place name" inputType:0 get:v36 set:v35];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100EF9920;
  v34[3] = &unk_101661B18;
  v34[4] = *(a1 + 32);
  v12 = [v3 addButtonRowWithTitle:@"Push test place card context" action:v34];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100EF9A3C;
  v33[3] = &unk_101661B18;
  v33[4] = *(a1 + 32);
  v13 = [v3 addButtonRowWithTitle:@"Push test parked car card context" action:v33];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100EF9B24;
  v32[3] = &unk_101661B18;
  v32[4] = *(a1 + 32);
  v14 = [v3 addButtonRowWithTitle:@"Push test user guides context" action:v32];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100EF9C3C;
  v31[3] = &unk_101661B18;
  v31[4] = *(a1 + 32);
  v15 = [v3 addButtonRowWithTitle:@"Push test current location place card context" action:v31];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100EF9D5C;
  v30[3] = &unk_101661B18;
  v30[4] = *(a1 + 32);
  v16 = [v3 addButtonRowWithTitle:@"Push nearby transit context" action:v30];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100EF9E2C;
  v29[3] = &unk_101661B18;
  v29[4] = *(a1 + 32);
  v17 = [v3 addButtonRowWithTitle:@"Push guides home context" action:v29];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100EF9F3C;
  v28[3] = &unk_101661B18;
  v28[4] = *(a1 + 32);
  v18 = [v3 addButtonRowWithTitle:@"Push guides home context with skip to city selector" action:v28];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100EFA04C;
  v27[3] = &unk_101661B18;
  v27[4] = *(a1 + 32);
  v19 = [v3 addButtonRowWithTitle:@"Push Map home context" action:v27];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100EE7DD4;
  v25[4] = sub_100EE7DE4;
  v26 = @"coffee";
  v23[4] = v25;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100EFA11C;
  v24[3] = &unk_101658EA0;
  v24[4] = v25;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100EFA12C;
  v23[3] = &unk_101658EC8;
  v20 = [v3 addTextFieldRowWithTitle:@"Search Results Context Query" placeholderText:@"Enter a search term" inputType:0 get:v24 set:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100EFA13C;
  v22[3] = &unk_101661600;
  v22[4] = *(a1 + 32);
  v22[5] = v25;
  v21 = [v3 addButtonRowWithTitle:@"Push test search results context" action:v22];
  _Block_object_dispose(v25, 8);
}

void sub_100EF8E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Enable Chrome-owned sidebar" geoConfigKey:{552, &unk_1016428A0}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF9614;
  v6[3] = &unk_101661B18;
  v6[4] = *(a1 + 32);
  v5 = [v3 addButtonRowWithTitle:@"Push sidebar test context" action:v6];
}

void sub_100EF8EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100EF9264;
  v29[3] = &unk_101658EA0;
  v30 = *(a1 + 40);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100EF92E4;
  v28[3] = &unk_101658EC8;
  v28[4] = v30;
  v4 = [v3 addTextFieldRowWithTitle:@"origin.x" placeholderText:0 inputType:3 get:v29 set:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100EF9318;
  v26[3] = &unk_101658EA0;
  v27 = *(a1 + 40);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100EF9398;
  v25[3] = &unk_101658EC8;
  v25[4] = v27;
  v5 = [v3 addTextFieldRowWithTitle:@"origin.y" placeholderText:0 inputType:3 get:v26 set:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100EF93CC;
  v23[3] = &unk_101658EA0;
  v24 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100EF9450;
  v22[3] = &unk_101658EC8;
  v22[4] = v24;
  v6 = [v3 addTextFieldRowWithTitle:@"size.width" placeholderText:0 inputType:3 get:v23 set:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EF9484;
  v20[3] = &unk_101658EA0;
  v21 = *(a1 + 40);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100EF9508;
  v19[3] = &unk_101658EC8;
  v19[4] = v21;
  v7 = [v3 addTextFieldRowWithTitle:@"size.height" placeholderText:0 inputType:3 get:v20 set:v19];
  v8 = [*(a1 + 32) presentingViewController];
  v9 = [v8 _maps_mapsSceneDelegate];

  v10 = [v9 chromeViewController];
  v11 = [v10 mapView];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EF953C;
  v16[3] = &unk_101660778;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17 = v11;
  v18 = v12;
  v16[4] = v13;
  v14 = v11;
  v15 = [v3 addButtonRowWithTitle:@"Apply" action:v16];
}

id sub_100EF9264(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 32) == MKMapRectNull.origin.x && *(v1 + 40) == MKMapRectNull.origin.y)
  {
    v4 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithDouble:?];
    v4 = [v3 stringValue];
  }

  return v4;
}

id sub_100EF92E4(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 32) = v4;
  return result;
}

id sub_100EF9318(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (*(v1 + 32) == MKMapRectNull.origin.x && v2 == MKMapRectNull.origin.y)
  {
    v5 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithDouble:v2];
    v5 = [v4 stringValue];
  }

  return v5;
}

id sub_100EF9398(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 40) = v4;
  return result;
}

id sub_100EF93CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = v1[5];
  if (v1[4] == MKMapRectNull.origin.x && v2 == MKMapRectNull.origin.y)
  {
    v5 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithDouble:v1[6], v2];
    v5 = [v4 stringValue];
  }

  return v5;
}

id sub_100EF9450(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 48) = v4;
  return result;
}

id sub_100EF9484(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = v1[5];
  if (v1[4] == MKMapRectNull.origin.x && v2 == MKMapRectNull.origin.y)
  {
    v5 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithDouble:v1[7], v2];
    v5 = [v4 stringValue];
  }

  return v5;
}

id sub_100EF9508(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 56) = v4;
  return result;
}

void sub_100EF953C(uint64_t a1)
{
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 32) != MKMapRectNull.origin.x || *(v3 + 40) != MKMapRectNull.origin.y)
  {
    v12 = v1;
    v13 = v2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100EF95F8;
    v9[3] = &unk_101661600;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = v7;
    v11 = v8;
    [v6 dismissViewControllerAnimated:1 completion:v9];
  }
}

void sub_100EF9614(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 macChromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EF96E4;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EF96E4(uint64_t a1)
{
  v2 = objc_alloc_init(MacSidebarTestContext);
  [*(a1 + 32) pushContext:v2 animated:1 completion:0];
}

void sub_100EF9758(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EFAB7C;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EF9828(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EFAB1C;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EF9920(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:*(*(a1 + 32) + 112)];
  v6 = [[MKLocalSearch alloc] initWithRequest:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EFA968;
  v8[3] = &unk_101658E50;
  v8[4] = *(a1 + 32);
  v9 = v4;
  v7 = v4;
  [v6 startWithCompletionHandler:v8];
}

void sub_100EF9A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = +[ParkedCarManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EFA818;
  v7[3] = &unk_101658E78;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  [v5 fetchParkedCar:v7];
}

void sub_100EF9B24(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = +[CollectionManager sharedManager];
  v6 = [v5 collectionsForAddingMapItems];
  if ([v6 count])
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EFA76C;
    v8[3] = &unk_101661A90;
    v9 = v6;
    v10 = v4;
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }
}

void sub_100EF9C3C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = +[SearchResult currentLocationSearchResult];
  v6 = [[PlaceCardItem alloc] initWithSearchResult:v5];
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EFA6DC;
  v10[3] = &unk_101661A90;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 dismissViewControllerAnimated:1 completion:v10];
}

void sub_100EF9D5C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EFA67C;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EF9E2C(uint64_t a1)
{
  v2 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:@"San Francisco"];
  v3 = [[MKLocalSearch alloc] initWithRequest:v2];
  v4 = [*(a1 + 32) presentingViewController];
  v5 = [v4 _maps_mapsSceneDelegate];

  v6 = [v5 chromeViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EFA4D0;
  v8[3] = &unk_101658E50;
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v6;
  [v3 startWithCompletionHandler:v8];
}

void sub_100EF9F3C(uint64_t a1)
{
  v2 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:@"San Francisco"];
  v3 = [[MKLocalSearch alloc] initWithRequest:v2];
  v4 = [*(a1 + 32) presentingViewController];
  v5 = [v4 _maps_mapsSceneDelegate];

  v6 = [v5 chromeViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EFA324;
  v8[3] = &unk_101658E50;
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v6;
  [v3 startWithCompletionHandler:v8];
}

void sub_100EFA04C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100EFA2C4;
  v7[3] = &unk_101661B18;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void sub_100EFA13C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EFA20C;
  v8[3] = &unk_101661600;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v7 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

void sub_100EFA20C(uint64_t a1)
{
  v5 = [SearchFieldItem searchFieldItemWithObject:*(*(*(a1 + 40) + 8) + 40)];
  v2 = [_TtC4Maps20SearchResultsContext alloc];
  v3 = objc_alloc_init(GEOAutocompleteSessionData);
  v4 = [(SearchResultsContext *)v2 initWithSearchFieldItem:v5 contextType:1 recentAutocompleteSearchSessionData:v3];

  [*(a1 + 32) pushContext:v4 animated:1 completion:0];
}

void sub_100EFA2C4(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC4Maps11HomeContext);
  [*(a1 + 32) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 mapItems];
    v7 = [v6 firstObject];
    v8 = [v7 _exploreGuides];
    v9 = [v8 guideLocation];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100EFA448;
      v11[3] = &unk_101661A90;
      v12 = v9;
      v13 = *(a1 + 40);
      [v10 dismissViewControllerAnimated:1 completion:v11];
    }
  }
}

void sub_100EFA448(uint64_t a1)
{
  v3 = [[_TtC4Maps30GuidesHomeContextConfiguration alloc] initWithLocation:*(a1 + 32) skipToCitySelector:1];
  v2 = [[_TtC4Maps17GuidesHomeContext alloc] initWithConfiguration:v3];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA4D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 mapItems];
    v7 = [v6 firstObject];
    v8 = [v7 _exploreGuides];
    v9 = [v8 guideLocation];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100EFA5F4;
      v11[3] = &unk_101661A90;
      v12 = v9;
      v13 = *(a1 + 40);
      [v10 dismissViewControllerAnimated:1 completion:v11];
    }
  }
}

void sub_100EFA5F4(uint64_t a1)
{
  v3 = [[_TtC4Maps30GuidesHomeContextConfiguration alloc] initWithLocation:*(a1 + 32) skipToCitySelector:0];
  v2 = [[_TtC4Maps17GuidesHomeContext alloc] initWithConfiguration:v3];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA67C(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC4Maps20NearbyTransitContext);
  [*(a1 + 32) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA6DC(uint64_t a1)
{
  v3 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:*(a1 + 32) shouldInsertInHistory:0 excludedContent:0 buildingMultistopRoute:0];
  v2 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v3];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA76C(uint64_t a1)
{
  v2 = [_TtC4Maps30UserGuidesContextConfiguration alloc];
  v3 = [*(a1 + 32) lastObject];
  v5 = [(UserGuidesContextConfiguration *)v2 initWithCollectionHandler:v3 excludedPlaceCardContent:0];

  v4 = [[_TtC4Maps17UserGuidesContext alloc] initWithConfiguration:v5];
  [*(a1 + 40) pushContext:v4 animated:1 completion:0];
}

void sub_100EFA818(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[_TtC4Maps29ParkedCarContextConfiguration alloc] initWithParkedCar:v3 initialAction:0 selectOnMap:0];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100EFA900;
    v7[3] = &unk_101661A90;
    v8 = v4;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = v4;
    [v5 dismissViewControllerAnimated:1 completion:v7];
  }
}

void sub_100EFA900(uint64_t a1)
{
  v2 = [[_TtC4Maps16ParkedCarContext alloc] initWithConfiguration:*(a1 + 32)];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EFA968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [PlaceCardItem alloc];
    v7 = [v3 mapItems];
    v8 = [v7 firstObject];
    v9 = [(PlaceCardItem *)v6 initWithMapItem:v8];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100EFAAB4;
    v12[3] = &unk_101661A90;
    v13 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v9 shouldInsertInHistory:0 excludedContent:0 buildingMultistopRoute:0];
    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
    v11 = v13;
    [v10 dismissViewControllerAnimated:1 completion:v12];
  }
}

void sub_100EFAAB4(uint64_t a1)
{
  v2 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:*(a1 + 32)];
  [*(a1 + 40) pushContext:v2 animated:1 completion:0];
}

void sub_100EFAB1C(uint64_t a1)
{
  v2 = objc_alloc_init(IOSCardTestCustomContainerContext);
  [*(a1 + 32) pushContext:v2 animated:1 completion:0];
}

void sub_100EFAB7C(uint64_t a1)
{
  v2 = objc_alloc_init(IOSCardTestContext);
  [*(a1 + 32) pushContext:v2 animated:1 completion:0];
}

void sub_100EFABEC(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Show Chrome layout guides" defaultsKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Force Chrome map inactive" defaultsKey:@"__internal_MapsDebugForceChromeMapViewInactive"];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Enable status bar indicator" geoConfigKey:641, &unk_1016439D8];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Force show attribution text" geoConfigKey:817, &unk_101645DF0];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Force show attribution Apple logo" geoConfigKey:818, &unk_101645E28];
}

void sub_100EFB010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100EFB02C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100EFB104;
  v8 = &unk_101658D78;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:0 content:&v5];
  [*(a1 + 32) addVisualEffectSettingsTo:{v3, v5, v6, v7, v8}];
  objc_destroyWeak(&v10);
}

void sub_100EFB104(uint64_t a1, void *a2)
{
  v3 = a2;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100EFB88C;
  v48[3] = &unk_1016619A8;
  objc_copyWeak(&v49, (a1 + 40));
  v4 = [v3 addSwitchRowWithTitle:@"Show Application Size" geoConfigKey:524 switchOnStateIfUnset:&unk_101642280 changeHandler:{0, v48}];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100EFB8CC;
  v46[3] = &unk_1016619A8;
  objc_copyWeak(&v47, (a1 + 40));
  v5 = [v3 addSwitchRowWithTitle:@"Allow Cards To Always Use Default Layout" geoConfigKey:540 switchOnStateIfUnset:&unk_101642600 changeHandler:{1, v46}];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100EFB90C;
  v44[3] = &unk_1016619A8;
  objc_copyWeak(&v45, (a1 + 40));
  v6 = [v3 addSwitchRowWithTitle:@"Enable UIKitCards on Mac" geoConfigKey:404 switchOnStateIfUnset:&unk_101640AD0 changeHandler:{0, v44}];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100EFB94C;
  v42[3] = &unk_1016619A8;
  objc_copyWeak(&v43, (a1 + 40));
  v7 = [v3 addSwitchRowWithTitle:@"Optimize animations for sheet presentation" geoConfigKey:663 switchOnStateIfUnset:&unk_101643DE8 changeHandler:{0, v42}];
  v8 = [v3 addSwitchRowWithTitle:@"Enable Thick Card Material" geoConfigKey:{405, &unk_101640B08}];
  v9 = [v3 addSwitchRowWithTitle:@"Enable Test Mode" defaultsKey:@"__internal__EnableTestMode" switchOnStateIfUnset:0 changeHandler:0];
  v10 = [v3 addSwitchRowWithTitle:@"Show MapsSuggestion debug" defaultsKey:@"__internal__EnableMapsSuggestion" switchOnStateIfUnset:0 changeHandler:0];
  v11 = [v3 addSwitchRowWithTitle:@"Show search debug" defaultsKey:@"EnableSearchDebug" switchOnStateIfUnset:0 changeHandler:0];
  v12 = [v3 addSwitchRowWithTitle:@"Enable Tap-to-Hide" defaultsKey:@"__internal__EnabletapToHide" switchOnStateIfUnset:0 changeHandler:0];
  v13 = [v3 addSwitchRowWithTitle:@"Enable Tap-to-Minmize" defaultsKey:@"__internal__EnabletapToMinimize" switchOnStateIfUnset:0 changeHandler:0];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100EFB98C;
  v40[3] = &unk_1016619A8;
  objc_copyWeak(&v41, (a1 + 40));
  v14 = [v3 addSwitchRowWithTitle:@"MapsSuggestion LOI only filter" defaultsKey:@"__internal__EnableMapsSuggestionLOIOnly" switchOnStateIfUnset:0 changeHandler:v40];
  v15 = [v3 addSwitchRowWithTitle:@"Don't Reset User Location" defaultsKey:@"__internal__MapsDebugDontResetUserLocation"];
  v16 = [v3 addSwitchRowWithTitle:@"Highlight view frames" get:&stru_101658CB0 set:&stru_101658CD0];
  v17 = [v3 addSwitchRowWithTitle:@"Enable Maps357 in Stark (must restart)" geoConfigKey:{503, &unk_101641E58}];
  v18 = [v3 addSwitchRowWithTitle:@"Thermal debug view" get:&stru_101658CF0 set:&stru_101658D10];
  v19 = [v3 addSwitchRowWithTitle:@"TTR capture screenshot" geoConfigKey:{563, &unk_101642B08}];
  v20 = [v3 addSwitchRowWithTitle:@"Force Sticky Banners" defaultsKey:@"__internal_MapsDebugForceStickyBanners"];
  v21 = [v3 addSwitchRowWithTitle:@"Updated maneuver arrow metrics" geoConfigKey:{MapKitConfig_ArrowDrawingUseUpdatedGuidanceManeuverMetrics[0], MapKitConfig_ArrowDrawingUseUpdatedGuidanceManeuverMetrics[1]}];
  v22 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v23 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v24 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v25 = [v3 addSwitchRowWithTitle:@"Enable RealTime EVChargers" geoConfigKey:{MapsFeaturesConfig_RealTimeEVCharger[0], MapsFeaturesConfig_RealTimeEVCharger[1]}];
  v26 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v27 = [v3 addSwitchRowWithTitle:@"Enable invalid root install alert" defaultsKey:@"EnableRootInstallationFailureAlert"];
  v28 = [v3 addSwitchRowWithTitle:@"Enable automatic card expansion in route creation" defaultsKey:@"__internal_EnableAutomaticCardExpanion"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100EFB9CC;
  v39[3] = &unk_101661B18;
  v39[4] = *(a1 + 32);
  v29 = [v3 addButtonRowWithTitle:@"Enable view inspector" action:v39];
  v30 = [v3 addSwitchRowWithTitle:@"Hide status bar on iPad" geoConfigKey:{803, &unk_101645AF8}];
  v31 = [v3 addSwitchRowWithTitle:@"Enable background card height optimization" geoConfigKey:{842, &unk_1016462B8}];
  objc_initWeak(&location, *(a1 + 32));
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100EFB9E0;
  v36[3] = &unk_101661B98;
  objc_copyWeak(&v37, &location);
  v32 = [v3 addButtonRowWithTitle:@"Hide all chrome" action:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100EFBA9C;
  v34[3] = &unk_101661B98;
  objc_copyWeak(&v35, &location);
  v33 = [v3 addButtonRowWithTitle:@"Show all chrome" action:v34];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
}

void sub_100EFB808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  _Unwind_Resume(a1);
}

void sub_100EFB88C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFB8CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFB90C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFB94C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFB98C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFB9E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EFBD5C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
}

void sub_100EFBA9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100EFBB58;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
}

void sub_100EFBB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = +[UIApplication sharedApplication];
    v3 = [v2 connectedScenes];

    v4 = v3;
    v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v11)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v12 = [v11 windows];
            v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v18;
              do
              {
                v16 = 0;
                do
                {
                  if (*v18 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [WeakRetained _recursivelySetHidden:0 forView:*(*(&v17 + 1) + 8 * v16)];
                  v16 = v16 + 1;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v14);
            }
          }

          v8 = v8 + 1;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

void sub_100EFBD5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = +[UIApplication sharedApplication];
    v3 = [v2 connectedScenes];

    v4 = v3;
    v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v11)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v12 = [v11 windows];
            v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v18;
              do
              {
                v16 = 0;
                do
                {
                  if (*v18 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [WeakRetained _recursivelySetHidden:1 forView:*(*(&v17 + 1) + 8 * v16)];
                  v16 = v16 + 1;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v14);
            }
          }

          v8 = v8 + 1;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

void sub_100EFBF6C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[ThermalStateFloatingDebugViewController sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 attach];
  }

  else
  {
    [v3 detach];
  }
}

BOOL sub_100EFBFCC(id a1)
{
  v1 = +[ThermalStateFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100EFC0E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100EFC0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100EFC1C0;
  v5[3] = &unk_101658C70;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addNavigationRowWithTitle:@"Visual Effect Setting" viewControllerContent:v5];
  objc_destroyWeak(&v6);
}

void sub_100EFC1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100EFC284;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Global Settings" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100EFC284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Hide Chrome in Navigation" defaultsKey:@"__internal__hideChromeInNavigation" switchOnStateIfUnset:0 changeHandler:&stru_101658C48];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EFC37C;
  v6[3] = &unk_1016619A8;
  objc_copyWeak(&v7, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Disable Chrome" defaultsKey:@"__internal__DisableChrome" switchOnStateIfUnset:0 changeHandler:v6];
  objc_destroyWeak(&v7);
}

void sub_100EFC37C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptForRestart];
}

void sub_100EFC3BC(id a1, BOOL a2)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"__internal__hideChromeInNavigation" object:0];
}

void sub_100EFC8A8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v10)
  {
    [*(a1 + 32) setAddress:?];
  }

  else if (v5)
  {
    v7 = [SearchResult alloc];
    v8 = [v6 mapItem];
    v9 = [(SearchResult *)v7 initWithMapItem:v8];

    [(SearchResult *)v9 setLocationOfInterest:v6];
    [*(a1 + 32) setSearchResult:v9];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100EFC97C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SearchResult alloc];
  v5 = [v3 mapItem];

  v6 = [(SearchResult *)v4 initWithMapItem:v5];
  [*(a1 + 32) setSearchResult:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100EFCE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100EFCEAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100EFCEC4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100EFCF24(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

id sub_100EFCF84(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) transportType];
  v6 = *(a1 + 48);

  return [v4 _continueWithOrigin:v2 destination:v3 transportType:v5 completion:v6];
}

id sub_100EFD6B0()
{
  if (qword_10195F650 != -1)
  {
    dispatch_once(&qword_10195F650, &stru_10165CAA0);
  }

  v1 = qword_10195F648;

  return v1;
}

void sub_100EFD704(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningWaypointEditor");
  v2 = qword_10195F648;
  qword_10195F648 = v1;
}

void sub_100EFDE4C(uint64_t a1)
{
  v2 = [*(a1 + 32) waypointListView];
  v3 = [v2 indexForLastWaypointCell];

  v4 = [*(a1 + 32) delegate];
  [v4 routeSearch:*(a1 + 32) didUpdateInputText:&stru_1016631F0 atIndex:v3];

  v5 = [*(a1 + 32) waypointListView];
  [v5 selectRowIndex:v3];
}

SearchFieldItem *__cdecl sub_100EFE84C(id a1, SearchFieldItem *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(SearchFieldItem *)v3 composedWaypoint];
  v5 = [v4 isServerProvidedWaypoint];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_100EFF708()
{
  if (qword_10195F660 != -1)
  {
    dispatch_once(&qword_10195F660, &stru_10165CAC0);
  }

  v1 = qword_10195F658;

  return v1;
}

void sub_100EFF75C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarUserTrackingButton");
  v2 = qword_10195F658;
  qword_10195F658 = v1;
}

uint64_t sub_100F001A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100F00270(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100F004A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F004E8(uint64_t a1)
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

void sub_100F00648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F00664(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained canUpdateTrayLayout])
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_100F00710;
      v3[3] = &unk_101661B18;
      v3[4] = v2;
      [v2 updateTrayLayout:2 animated:1 completion:v3];
    }

    else
    {
      [v2 _scrollCuratedCollection];
    }
  }
}

void sub_100F00880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100F0089C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100F00958;
    v3[3] = &unk_101661B98;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained addFullyDrawnCallback:v3];
    objc_destroyWeak(&v4);
  }
}

void sub_100F00958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startTestAndSelectAndScrollCuratedCollection];
    WeakRetained = v2;
  }
}

BOOL sub_100F00C70(void *a1, void *a2)
{
  [a2 frame];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectIntersectsRect(*&v3, *&v7);
}

id sub_100F01F14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

id sub_100F01F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

MKServerFormattedString *__cdecl sub_100F01FE4(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

MKServerFormattedString *__cdecl sub_100F0203C(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

id sub_100F051C4()
{
  if (qword_10195F680 != -1)
  {
    dispatch_once(&qword_10195F680, &stru_10165CCA0);
  }

  v1 = qword_10195F678;

  return v1;
}

void sub_100F05218(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NanoRoutePlanningSession");
  v2 = qword_10195F678;
  qword_10195F678 = v1;
}

void sub_100F05708(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained _hasReceivedAllExpectedRoutes];
}

uint64_t sub_100F05A78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F05A90(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) selectedCompanionRoute];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F05BD0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) selectedRoute];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F05E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained isInvalidated];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [v5 _transitionToState:*(*(a1 + 32) + 48) withClass:*(a1 + 48)];
      v3 = v5;
    }
  }
}

void sub_100F061FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isInvalidated] & 1) == 0)
  {
    [v3 _triggerStalenessTimer];
    v4 = *(v3 + 6);
    v5 = (*(*(a1 + 32) + 16))();
    if (v5 > 1)
    {
      if (v5 == 3)
      {
        v14 = sub_100F051C4();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (v4 > 4)
          {
            v15 = @"unknown";
          }

          else
          {
            v15 = off_10164F5A8[v4];
          }

          v24 = v15;
          v25 = @"complete";
          v26 = [*(v3 + 9) lastError];
          v32 = 134218754;
          v33 = v3;
          v34 = 2112;
          v35 = v24;
          v36 = 2112;
          v37 = @"complete";
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%p] '%@' reported an error, moving to '%@'; error: %@", &v32, 0x2Au);
        }

        v27 = v3;
        v28 = 4;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_45;
        }

        v8 = 3;
        if (v4 < 3)
        {
          v8 = v4;
        }

        v9 = v8 + 1;
        v6 = sub_100F051C4();
        v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
        if (v9 == v4)
        {
          if (v10)
          {
            if (v4 > 4)
            {
              v11 = @"unknown";
            }

            else
            {
              v11 = off_10164F5A8[v4];
            }

            v17 = v11;
            v32 = 134218242;
            v33 = v3;
            v34 = 2112;
            v35 = v17;
            v20 = "[%p] '%@' reported finished, but will not advance state";
            v21 = v6;
            v22 = 22;
            goto LABEL_36;
          }

LABEL_37:

          [v3 _notifySessionDidUpdateResponse];
          goto LABEL_45;
        }

        if (v10)
        {
          if (v4 > 4)
          {
            v16 = @"unknown";
          }

          else
          {
            v16 = off_10164F5A8[v4];
          }

          v29 = v16;
          if (v9 > 4)
          {
            v30 = @"unknown";
          }

          else
          {
            v30 = off_10164F5A8[v9];
          }

          v31 = v30;
          v32 = 134218498;
          v33 = v3;
          v34 = 2112;
          v35 = v29;
          v36 = 2112;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%p] '%@' has finished, advancing to '%@'", &v32, 0x20u);
        }

        v27 = v3;
        v28 = v9;
      }

      [v27 _transitionToState:v28];
      goto LABEL_45;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        v6 = sub_100F051C4();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          if (v4 > 4)
          {
            v7 = @"unknown";
          }

          else
          {
            v7 = off_10164F5A8[v4];
          }

          v17 = v7;
          v18 = [*(v3 + 9) numberOfRoutes];
          v19 = [*(v3 + 9) expectedNumberOfRoutes];
          v32 = 134218754;
          v33 = v3;
          v34 = 2112;
          v35 = v17;
          v36 = 2048;
          v37 = v18;
          v38 = 2048;
          v39 = v19;
          v20 = "[%p] '%@' did update; (%lu/%lu)";
          v21 = v6;
          v22 = 42;
LABEL_36:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v20, &v32, v22);

          goto LABEL_37;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v12 = sub_100F051C4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (v4 > 4)
        {
          v13 = @"unknown";
        }

        else
        {
          v13 = off_10164F5A8[v4];
        }

        v23 = v13;
        v32 = 134218242;
        v33 = v3;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%p] '%@' is still running", &v32, 0x16u);
      }
    }
  }

LABEL_45:
}

void sub_100F067A0(uint64_t a1)
{
  v2 = sub_100F051C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 observers];
    v6 = 134218498;
    v7 = v3;
    v8 = 2080;
    v9 = "[NanoRoutePlanningSession _notifyDidInvalidate]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%p] %s <%@>", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) observers];
  [v5 routePlanningSessionDidInvalidate:*(a1 + 32)];
}

void sub_100F06928(uint64_t a1)
{
  v2 = sub_100F051C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [v3 observers];
    v8 = 134218498;
    v9 = v3;
    v10 = 2080;
    v11 = "[NanoRoutePlanningSession _notifySessionDidFail]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%p] %s <%@>", &v8, 0x20u);
  }

  v5 = [*(a1 + 32) observers];
  v6 = *(a1 + 32);
  v7 = [v6 response];
  [v5 routePlanningSession:v6 didFailWithResponse:v7];
}

void sub_100F06AD0(uint64_t a1)
{
  v2 = sub_100F051C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 observers];
    v8 = 134218498;
    v9 = v3;
    v10 = 2080;
    v11 = "[NanoRoutePlanningSession _notifySessionDidUpdateResponse]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%p] %s <%@>", &v8, 0x20u);
  }

  v5 = [*(a1 + 32) observers];
  v6 = *(a1 + 32);
  v7 = [v6 response];
  [v5 routePlanningSession:v6 didUpdateWithResponse:v7];
}

void sub_100F06C78(uint64_t a1)
{
  v2 = sub_100F051C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 observers];
    v8 = 134218498;
    v9 = v3;
    v10 = 2080;
    v11 = "[NanoRoutePlanningSession _notifySessionDidStartLoading]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%p] %s <%@>", &v8, 0x20u);
  }

  v5 = [*(a1 + 32) observers];
  v6 = *(a1 + 32);
  v7 = [v6 request];
  [v5 routePlanningSession:v6 didStartLoadingWithRequest:v7];
}

void sub_100F06E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) isInvalidated];
  v3 = sub_100F051C4();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%p] invalidated before we could post NanoRoutePlanningSessionWillStartNotification", &v7, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%p] posting NanoRoutePlanningSessionWillStartNotification", &v7, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"NanoRoutePlanningSessionWillStart" object:*(a1 + 32)];
  }
}

void sub_100F071C8(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F07768(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F078AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F07BA8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

id sub_100F07EA4(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _notifyDidInvalidate];
}

void sub_100F080D0(uint64_t a1)
{
  v2 = [*(a1 + 32) _description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F08540(id a1)
{
  v4[0] = &off_1016EA340;
  v5[0] = objc_opt_class();
  v4[1] = &off_1016EA358;
  v5[1] = objc_opt_class();
  v4[2] = &off_1016EA370;
  v5[2] = objc_opt_class();
  v4[3] = &off_1016EA388;
  v5[3] = objc_opt_class();
  v4[4] = &off_1016EA3A0;
  v5[4] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
  v2 = [v1 mutableCopy];
  v3 = qword_10195F668;
  qword_10195F668 = v2;
}

void sub_100F08BCC(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v5 mutableCopy];
    [v6 _setResponse:v7];
  }
}

void sub_100F08F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100F08F74(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100F097FC(id a1)
{
  v1 = objc_alloc_init(NavSteppingSignLayout);
  v2 = qword_10195F688;
  qword_10195F688 = v1;
}

void sub_100F09C30(id a1)
{
  v1 = objc_alloc_init(NavPedestrianSignLayout);
  v2 = qword_10195F698;
  qword_10195F698 = v1;
}

void sub_100F09D88(id a1)
{
  v1 = objc_alloc_init(NavDrivingSignLayout);
  v2 = qword_10195F6A8;
  qword_10195F6A8 = v1;
}

void sub_100F0A9DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeNavigationDisplay");
  v2 = qword_10195F6B8;
  qword_10195F6B8 = v1;
}

void sub_100F0B688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F0B6AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained configuration];
    v13 = [v12 cameraStyle];
    v14 = *(a1 + 40);

    if (v13 == v14)
    {
      v15 = [v11 delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v11 delegate];
        [v17 chromeNavigationDisplayWillApplyStaticFraming:v11];
      }

      v18 = sub_10009B590();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20[0] = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Applying fetched transit step frame", v20, 2u);
      }

      v19 = [v11 mapView];
      [v19 animateToVisibleMapRect:1 usingDefaultAnimationDuration:1 resetHeading:0 completion:{a2, a3, a4, a5}];
    }
  }
}

void sub_100F0BABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(a1 + 40) == 2)
  {
    [v3 setAlternateRoutesEnabled:*(a1 + 48)];
  }

  else
  {
    v4 = [*(a1 + 32) trafficAlert];
    if (v4)
    {
      v5 = *(a1 + 48);
    }

    else
    {
      v5 = 0;
    }

    [v9 setAlternateRoutesEnabled:v5 & 1];
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [v7 trafficAlert];
  [v9 setRouteMarkerOptions:{objc_msgSend(v7, "_routeMarkerOptionsForCameraStyle:incidentAlert:", v6, v8)}];
}

void sub_100F0C994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F0C9B8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _locationManagerApprovalDidChange:v5];
  }
}

void sub_100F0E1DC(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 environment];
  v8 = [v2 objectForKeyedSubscript:@"XCODE_BUILT_PRODUCTS"];

  if (!v8)
  {
    v3 = UISystemRootDirectory();
    v8 = [v3 stringByAppendingPathComponent:@"/AppleInternal/Library/Bundles/"];
  }

  v4 = [NSBundle alloc];
  v5 = [v8 stringByAppendingPathComponent:@"MapsInternalExtras.bundle"];
  v6 = [v4 initWithPath:v5];
  v7 = qword_10195F6D0;
  qword_10195F6D0 = v6;
}

void sub_100F0F134(id a1)
{
  v1 = objc_alloc_init(UserProfileLinkPreferencesProvider);
  v2 = qword_10195F6D8;
  qword_10195F6D8 = v1;
}

void sub_100F0F940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F0F98C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 selectedValue];
  [v5 setSelectedValue:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _instrumentSelectedSearch];
}

void sub_100F0FA10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proceedToNextQuestion:v3];
}

void sub_100F1358C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_100F135C0(uint64_t a1)
{
  [*(a1 + 32) setSharingState:0 animated:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopCompletionTimer];

  return [GEOAPPortal captureUserAction:402 target:126 value:0];
}

void sub_100F13628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);

    [v4 setSharingState:0 animated:0];
  }

  else
  {
    [_TtC4Maps29MapsSharedTripAnalyticsHelper sendSuccessAnalyticFor:*(a1 + 32)];
    [GEOAPPortal captureUserAction:400 target:126 value:0];
    [*(a1 + 40) setSharingState:3 animated:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _startCompletionTimer];
  }
}

void sub_100F13928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F1395C(uint64_t a1)
{
  [*(a1 + 32) setSharingState:0 animated:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopCompletionTimer];

  return [GEOAPPortal captureUserAction:402 target:126 value:0];
}

void sub_100F13B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F13B28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F13B40(void *a1)
{
  v2 = a1[4];
  v3 = +[CarShareTripContactCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3 forIndexPath:a1[5]];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(a1[7] + 8) + 40) setShowsSubtitleWhenNotSharing:1];
  [*(*(a1[7] + 8) + 40) setDelegate:a1[6]];
  [*(*(a1[7] + 8) + 40) configureWithMSPSharedTripContact:*(a1[6] + 32)];
  v7 = +[MSPSharedTripService sharedInstance];
  v8 = *(a1[6] + 32);
  v12 = 0;
  v9 = [v7 capabilityTypeForContact:v8 serviceName:&v12 isActiveReceiver:0];
  v10 = v12;

  [*(*(a1[7] + 8) + 40) setCapabilityType:v9 serviceName:v10];
  v11 = +[MSPSharedTripService sharedInstance];
  LODWORD(v9) = [v11 isSharingWithContact:*(a1[6] + 32)];

  if (v9)
  {
    [*(*(a1[7] + 8) + 40) setSharingState:3 animated:0];
  }
}

id sub_100F13E74(uint64_t a1)
{
  [*(a1 + 32) updateContent];
  v2 = *(*(a1 + 32) + 48);

  return [v2 reloadData];
}

void sub_100F14008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1402C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[10];
    WeakRetained[10] = 0;
    v4 = WeakRetained;

    v4[8] = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"CarShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification" object:v4];

    [GEOAPPortal captureUserAction:399 target:126 value:0];
    WeakRetained = v4;
  }
}

void sub_100F14D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F14DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFooterContentWithSharingIdentity:v3];
}

void sub_100F16E80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 coordinator];
  [v4 showAnnouncementForFlyover:v3];
}

void sub_100F186B8(void *a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    v6 = 138412802;
    v7 = v5;
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) from source: %ld – plan: %@", &v6, 0x20u);
  }
}

id sub_100F1877C()
{
  if (qword_10195F6F0 != -1)
  {
    dispatch_once(&qword_10195F6F0, &stru_10165D0D0);
  }

  v1 = qword_10195F6E8;

  return v1;
}

id sub_100F187D0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v5 = [v3 route];
    v6 = [v5 persistentData];
    [v4 setRouteData:v6];
  }

  else
  {
    if ((*(a1 + 32) & 1) != 0 || ![v3 isCurrentLocation])
    {
      v7 = [[SearchResult alloc] initWithComposedWaypoint:v3];
    }

    else
    {
      v7 = +[SearchResult currentLocationSearchResult];
    }

    v4 = v7;
  }

  v8 = [SearchFieldItem searchFieldItemWithObject:v4];

  if (!v8)
  {
    v9 = sub_100F1877C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 shortDescription];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Substituting empty item for failed conversion from waypoint: %@", &v12, 0xCu);
    }

    v8 = objc_opt_new();
  }

  return v8;
}

id sub_100F18994(void *a1)
{
  v1 = a1;
  if ([v1 _maps_isEqualToSearchStringForCurrentLocationSearchResult])
  {
    v2 = +[SearchResult currentLocationSearchResult];
    v3 = [SearchFieldItem searchFieldItemWithObject:v2];
  }

  else
  {
    v3 = [SearchFieldItem searchFieldItemWithObject:v1];
  }

  return v3;
}

void sub_100F18A2C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AppStateManager");
  v2 = qword_10195F6E8;
  qword_10195F6E8 = v1;
}

void sub_100F19ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100F19F60(void *a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    v6 = 138412802;
    v7 = v5;
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) from source: %ld : state: %@", &v6, 0x20u);
  }
}

uint64_t sub_100F1A024(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F1A03C(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [SearchInfo searchInfoWithResults:?];
  if ([*(a1 + 32) hasSelectedPlaceIndex])
  {
    v4 = [*(a1 + 32) selectedPlaceIndex];
    if (v4 < [v13 count])
    {
      [v3 setSelectedIndex:{objc_msgSend(*(a1 + 32), "selectedPlaceIndex")}];
    }
  }

  if (v3 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = objc_alloc_init(SearchFieldItem);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v3 results];
    v9 = [v8 firstObject];

    v10 = [v9 title];
    [*(*(*(a1 + 48) + 8) + 40) setSearchString:v10];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v12 = [WeakRetained baseActionCoordinator];
    [v12 restoreSearchForItem:*(*(*(a1 + 48) + 8) + 40) withResults:v3];
  }
}

void sub_100F1A1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[SearchResult alloc] initWithMapItem:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(a1 + 32) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100F1A2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(SearchFieldItem);
    v6 = [v3 title];
    [(SearchFieldItem *)v5 setSearchString:v6];

    v7 = objc_loadWeakRetained(WeakRetained + 2);
    v8 = [v7 baseActionCoordinator];
    v11 = v3;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = [SearchInfo searchInfoWithResults:v9];
    [v8 restoreSearchForItem:v5 withResults:v10];
  }
}

void sub_100F1B818(void *a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    v6 = 138412802;
    v7 = v5;
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) from source: %ld : state: %@", &v6, 0x20u);
  }
}

void sub_100F1BA74(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 count];
  v4 = v10;
  if (v3)
  {
    v5 = [v10 firstObject];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v5 _geoMapItem];
      [v7 updateWithGEOMapItem:v8];
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 32));
    }

    v4 = v10;
  }
}

void sub_100F1D4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1D4F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = sub_1000410AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error deleting item from collection '%@': %@", buf, 0x16u);
      }

      v8 = *(a1 + 40);
      v7 = [NSArray arrayWithObjects:&v8 count:1];
      [WeakRetained endFailedDeletions:v7 error:v3];
    }

    [WeakRetained[16] removeObject:*(a1 + 48)];
  }
}

void sub_100F1D76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1D798(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v7 = *(a1 + 32);
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 endFailedDeletions:v6 error:v3];
  }
}

void sub_100F1DA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1DA60(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _didConfirmDeleteCollection:*(a1 + 32) deletion:*(a1 + 40)];
  }
}

void sub_100F1DF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1DF3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = sub_1000410AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) identifier];
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error copying map item into collection '%@': %@", &v7, 0x16u);
      }
    }

    [WeakRetained[15] removeObject:*(a1 + 40)];
  }
}

void sub_100F1E524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F1E544(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10000BDA4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "error creating collection from home:%@", &v6, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained editCollection:*(a1 + 32)];
  }
}

void sub_100F1E808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100F1E82C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = sub_1000410AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) identifier];
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error duplicating collection '%@': %@", &v7, 0x16u);
      }
    }

    [WeakRetained[18] removeObject:*(a1 + 40)];
  }
}

void sub_100F1EB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1EB30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = sub_1000410AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error moving map item into collection '%@': %@", buf, 0x16u);
      }
    }

    else
    {
      [WeakRetained[17] addObject:*(a1 + 40)];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100F1ED20;
      v10[3] = &unk_10165D238;
      objc_copyWeak(&v13, (a1 + 64));
      v11 = *(a1 + 48);
      v12 = *(a1 + 40);
      [v8 applyToCollection:v9 completion:v10];

      objc_destroyWeak(&v13);
    }

    [v5[17] removeObject:*(a1 + 56)];
  }
}

void sub_100F1ED20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = sub_1000410AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) identifier];
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error removing map item from collection '%@': %@", &v7, 0x16u);
      }
    }

    [WeakRetained[17] removeObject:*(a1 + 40)];
  }
}

void sub_100F1F2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1F2CC(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = sub_1007986AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error removing shortcut", v6, 2u);
      }
    }

    [WeakRetained[19] setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_100F1F514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F1F530(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = sub_1007986AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error adding shortcut", v6, 2u);
      }
    }

    [WeakRetained[19] setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_100F1F798(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error renaming place in collection: %@", &v4, 0xCu);
    }
  }
}

void sub_100F1FE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_100F1FE8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:1];
}

void sub_100F1FEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:0];
}

void sub_100F1FF34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

void sub_100F209C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(v65);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x248]);
  _Unwind_Resume(a1);
}

void sub_100F20AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _moveMapItemSnapshot:*(a1 + 32) toCollection:*(a1 + 40)];
}

void sub_100F20B3C(uint64_t a1)
{
  v5 = +[CollectionHandler collection];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] New Guide Name" value:@"localized string not found" table:0];
  [v5 updateTitle:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _moveMapItemSnapshot:*(a1 + 32) toCollection:v5];

  [GEOAPPortal captureUserAction:2072 target:251 value:0];
}

void sub_100F20C10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _renameMapItemSnapshot:*(a1 + 32)];
}

void sub_100F20C60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:1];
}

void sub_100F20CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:0];
}

void sub_100F20D08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addMapItemSnapshotToFavorites:*(a1 + 32)];
}

void sub_100F20D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeMapItemSnapshotFromFavorites:*(a1 + 32) shortcut:*(a1 + 40)];
}

void sub_100F20DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

void sub_100F215B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 168));
  _Unwind_Resume(a1);
}

void sub_100F21698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _editCollectionSnapshot:*(a1 + 32)];
}

void sub_100F216E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addPlacesToCollectionSnapshot:*(a1 + 32)];
}

void sub_100F21738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _duplicateCollectionSnapshot:*(a1 + 32)];
}

void sub_100F21788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:1];
}

void sub_100F217DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:0];
}

void sub_100F21830(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

void sub_100F226D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F226F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[21];
    v7 = v3;
    if (v4 != *(a1 + 32))
    {
      v5 = [v4 isEqual:?];
      v3 = v7;
      if (!v5)
      {
        goto LABEL_6;
      }

      v4 = v7[21];
    }

    v3[21] = 0;

    v6 = [v7 delegate];
    [v6 sectionController:v7 setNeedsApplySnapshotAnimated:1];

    v3 = v7;
  }

LABEL_6:
}

void sub_100F22964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F22980(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _editCollection:*(a1 + 32)];
  }
}

void sub_100F22D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F22D74(uint64_t a1)
{
  v2 = sub_1000410AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Timeout waiting for collection %@. Dropping pending operation.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearPendingCollection];
}

void sub_100F23080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F2309C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showAndEditCollection:*(a1 + 32)];
}

void sub_100F231B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F231D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showCollection:*(a1 + 32) completion:0];
}

TwoLinesCollectionOutlineCellModel *sub_100F2382C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v94 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = [v6 topIdentifierPath];
    v10 = [v8 containsObject:v9];

    v11 = [v6 topIdentifierPath];
    v12 = v11;
    if (v11 == *(*(a1 + 40) + 160))
    {
      v13 = 1;
    }

    else
    {
      v13 = [v11 isEqual:?];
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v33 = *(a1 + 32);
    v34 = [v33 countByEnumeratingWithState:&v99 objects:v105 count:16];
    if (v34)
    {
      v35 = v34;
      v88 = v10;
      v92 = v13;
      v36 = v7;
      v37 = *v100;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v100 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v99 + 1) + 8 * i);
          v40 = [v6 topIdentifierPath];
          if ([v39 hasPrefix:v40])
          {
            v41 = [v39 length];
            v42 = [v6 depth];

            if (v41 > v42)
            {
              v43 = 1;
              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v99 objects:v105 count:16];
      }

      while (v35);
      v43 = 0;
LABEL_35:
      v7 = v36;
      v13 = v92;
      v10 = v88;
    }

    else
    {
      v43 = 0;
    }

    v17 = objc_alloc_init(NSMutableArray);
    if (![v7 handlerType])
    {
      v45 = -[TwoLineOutlineCellButtonAccessoryModel initWithAccessoryType:visibility:delegate:]([TwoLineOutlineCellButtonAccessoryModel alloc], "initWithAccessoryType:visibility:delegate:", 1, [*(a1 + 40) _accessoryVisibilityForCollection:v7 withAccessoryType:1], *(a1 + 40));
      [v17 addObject:v45];
    }

    if ([v7 contentType])
    {
      v46 = -[TwoLineOutlineCellButtonAccessoryModel initWithAccessoryType:visibility:delegate:]([TwoLineOutlineCellButtonAccessoryModel alloc], "initWithAccessoryType:visibility:delegate:", 2, [*(a1 + 40) _accessoryVisibilityForCollection:v7 withAccessoryType:2], *(a1 + 40));
      [v17 addObject:v46];
    }

    v47 = 0;
    if (![v7 handlerType] && ((v10 | v43 | v13) & 1) != 0)
    {
      v48 = [*(a1 + 40) expandedIdentifierPaths];
      v49 = [v6 topIdentifierPath];
      v93 = v7;
      v50 = [v48 containsObject:v49];

      v51 = [*(a1 + 40) _childItemsInCollection:v93 excludeDeletions:1];
      v52 = [v51 count] != 0;

      v85 = v43;
      v89 = [SidebarOutlineCellBackgroundModel alloc];
      v53 = v13;
      if ((v50 & v52) != 0)
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }

      v55 = [*(a1 + 40) delegate];
      v56 = [v55 isCollectionViewFocusedWithSectionController:*(a1 + 40)];
      v57 = [*(a1 + 40) delegate];
      v58 = [v57 isCollectionViewProxyFocusedWithSectionController:*(a1 + 40)];
      v59 = [*(a1 + 40) delegate];
      v60 = [v59 hasCollectionViewDropSessionWithSectionController:*(a1 + 40)];
      v61 = v54;
      v7 = v93;
      v47 = [(SidebarOutlineCellBackgroundModel *)v89 initWithStyle:v85 dropStyle:v53 grouping:v61 collectionViewFocused:v56 collectionViewProxyFocused:v58 collectionViewHasDropSession:v60];
    }

    v62 = [TwoLinesCollectionOutlineCellModel alloc];
    v63 = [v17 copy];
    v64 = [(TwoLinesCollectionOutlineCellModel *)v62 initWithCollection:v7 accessoryModels:v63 backgroundModel:v47 actionModel:0];

    goto LABEL_51;
  }

  v14 = [v6 parentItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v91 = v15;

  v16 = [v6 topIdentifierPath];
  v17 = [v16 identifierPathByRemovingLastIdentifier];

  v18 = *(a1 + 32);
  v19 = [v6 topIdentifierPath];
  v20 = [v18 containsObject:v19];

  v21 = [*(a1 + 32) containsObject:v17];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v22 = *(a1 + 32);
  v23 = [v22 countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (v23)
  {
    v24 = v23;
    v84 = v21;
    v87 = v20;
    v25 = *v96;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v96 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v95 + 1) + 8 * j);
        if ([v27 hasPrefix:v17])
        {
          v28 = [v27 length];
          if (v28 >= [v6 depth])
          {
            v29 = [v6 topIdentifierPath];
            v30 = v29;
            if (v27 == v29)
            {
            }

            else
            {
              v31 = [v27 isEqual:v29];

              if (!v31)
              {
                v32 = 1;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v95 objects:v104 count:16];
    }

    while (v24);
    v32 = 0;
LABEL_21:
    v20 = v87;
    v21 = v84;
  }

  else
  {
    v32 = 0;
  }

  v7 = v91;
  if (v17 == *(*(a1 + 40) + 160))
  {
    v44 = 1;
  }

  else
  {
    v44 = [v17 isEqual:?];
  }

  if ([v91 handlerType] || ((v20 | v21 | v32 | v44) & 1) == 0)
  {
    v47 = 0;
    v65 = v94;
  }

  else
  {
    if (v91)
    {
      v66 = [*(a1 + 40) _childItemsInCollection:v91 excludeDeletions:1];
    }

    else
    {
      v66 = &__NSArray0__struct;
    }

    v72 = [v66 lastObject];
    v73 = v72;
    v90 = v66;
    if (v72 == v94)
    {
      v75 = 4;
    }

    else
    {
      v74 = [v72 isEqual:v94];
      v75 = 3;
      if (v74)
      {
        v75 = 4;
      }
    }

    v86 = v75;

    v83 = [SidebarOutlineCellBackgroundModel alloc];
    if (v20)
    {
      v76 = 0;
    }

    else
    {
      v76 = 2;
    }

    if (v44)
    {
      v77 = 2;
    }

    else
    {
      v77 = 0;
    }

    v78 = [*(a1 + 40) delegate];
    v79 = [v78 isCollectionViewFocusedWithSectionController:*(a1 + 40)];
    v80 = [*(a1 + 40) delegate];
    v81 = [v80 isCollectionViewProxyFocusedWithSectionController:*(a1 + 40)];
    v82 = [*(a1 + 40) delegate];
    v47 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v83, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", v76, v77, v86, v79, v81, [v82 hasCollectionViewDropSessionWithSectionController:*(a1 + 40)]);

    v7 = v91;
    v65 = v94;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = [[TwoLinesCollectionMapItemOutlineCellModel alloc] initWithMapItem:v65 currentLocation:*(a1 + 48) distanceUnit:*(a1 + 56) backgroundModel:v47];
LABEL_60:
    v64 = v67;
    goto LABEL_61;
  }

  if ([v65 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
  {
    v69 = [[TwoLineOutlineCellButtonAccessoryModel alloc] initWithAccessoryType:1 visibility:1 delegate:*(a1 + 40)];
    v70 = [TwoLinesTransitLineOutlineCellModel alloc];
    v103 = v69;
    v71 = [NSArray arrayWithObjects:&v103 count:1];
    v64 = [(TwoLinesTransitLineOutlineCellModel *)v70 initWithTransitLine:v94 accessoryModels:v71 backgroundModel:v47];

LABEL_51:
    v65 = v94;
    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = [v65 cellModelWithBackgroundModel:v47];
    goto LABEL_60;
  }

  v64 = 0;
LABEL_61:

  return v64;
}

id sub_100F2409C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _childItemsInCollection:v3 excludeDeletions:0];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

id sub_100F2411C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 expandedIdentifierPaths];
  v6 = [v4 topIdentifierPath];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_100F24AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F24ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[2];
    WeakRetained[2] = 0;

    if (!v5)
    {
      v7[3] = 2;
      v7[4] = a2;
LABEL_14:
      [v7 _update];
      goto LABEL_15;
    }

    v9 = [v5 domain];
    v10 = GEOErrorDomain();
    if ([v9 isEqualToString:v10])
    {
      v11 = [v5 code];

      if (v11 == -6)
      {
        v12 = sub_1007989A4();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Offline Maps is not available/supported in this location", &v14, 2u);
        }

        v13 = 0;
LABEL_13:

        v7[3] = v13;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v12 = sub_1007989A4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to determine offline region support/size: %{public}@", &v14, 0xCu);
    }

    v13 = 3;
    goto LABEL_13;
  }

LABEL_15:
}

void sub_100F25D20(uint64_t a1, void *a2)
{
  if (a2)
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
}

void sub_100F27838(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = sub_1007989A4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Adding subscription for %@", buf, 0xCu);
  }

  dispatch_group_enter(*(a1 + 32));
  v7 = +[MapsOfflineUIHelper sharedHelper];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F281B8;
  v9[3] = &unk_10165D350;
  v11 = a3;
  v8 = *(a1 + 40);
  v10 = *(a1 + 32);
  [v7 addSubscriptionWithRegion:v8 name:v5 completion:v9];
}

void sub_100F2798C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = [v4 cellularBehaviorForDownloadOfSize:*(a1 + 56) forForcedDownload:0];

  v6 = sub_1007989A4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking cellular download policy (%ld)", buf, 0xCu);
  }

  if (v5 == 2)
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v8 = +[MapsOfflineUIHelper sharedHelper];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F2816C;
    v11[3] = &unk_10165D3A0;
    v9 = *(a1 + 56);
    v14 = *(a1 + 48);
    v12 = v3;
    v13 = *(a1 + 32);
    v10 = [v8 alertControllerForCellularDownloadConfirmationForRegionName:v12 size:v9 actionHandler:v11];

    [*(a1 + 40) _maps_topMostPresentViewController:v10 animated:1 completion:0];
  }

  else if (!v5)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_9:
    v7();
  }
}

void sub_100F27B8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10003D9F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching suggested name for region: %{public}@", &v16, 0xCu);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v8 = [v5 firstObject];
  v7 = [v8 name];

  v9 = [v7 length];
  v10 = sub_10003D9F4();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      v14 = *(a1 + 32);
      v16 = 138477827;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempt to fetch suggested name for region succeeded, but no name was provided (%{private}@)", &v16, 0xCu);
    }

    goto LABEL_11;
  }

  if (v11)
  {
    v12 = *(a1 + 32);
    v16 = 138478083;
    v17 = v7;
    v18 = 2113;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetched suggested name '%{private}@' for region %{private}@", &v16, 0x16u);
  }

  v7 = v7;
  v13 = v7;
LABEL_12:

  if (![v13 length])
  {
    v15 = *(a1 + 40);

    v13 = v15;
  }

  (*(*(a1 + 56) + 16))();
  dispatch_group_leave(*(a1 + 48));
}

void sub_100F27D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1007989A4();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "(editing) error saving route: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    v6 = "(editing) saved route: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100F27E8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100F28068;
    v4[3] = &unk_10165D300;
    v5 = v3;
    v6 = *(a1 + 32);
    [MapsSavedRoutesManager saveRouteData:v5 completion:v4];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100F27F64(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [a1[4] setEnabled:1];
    if ([a1[5] source] == 2)
    {
      if ([a1[5] mapItemMuid])
      {
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [a1[5] mapItemMuid]);
      }

      else
      {
        v3 = 0;
      }

      [GEOAPPortal captureUserAction:469 target:132 value:v3];
    }

    else
    {
      [GEOAPPortal captureUserAction:463 target:131 value:0];
    }

    v4 = objc_loadWeakRetained(v5 + 16);
    [v4 didSaveCustomRoute:a1[5]];

    WeakRetained = v5;
  }
}

void sub_100F28068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1007989A4();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "(creating) error saving route: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    v6 = "(creating) saved route: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100F2816C(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100F281B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1007989A4();
  v8 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to add offline region: %{public}@", &v9, 0xCu);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Added subscription for %@", &v9, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    v8 = +[MapsOfflineUIHelper sharedHelper];
    [v8 resumeDownloadForSubscriptionWithIdentifier:v5 mode:1];
LABEL_8:
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100F28604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F28620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [v5 firstObject];
    v9 = v8;
    if (v6 || !v8)
    {
      v10 = sub_1007989A4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error fetching route address before saving: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_loadWeakRetained(WeakRetained + 16);
      v11 = [v9 addressObject];
      [v10 applyRouteDataAddress:v11];
    }

    v12 = [*(a1 + 40) iso3166CountryCode];
    v13 = [v12 length];

    if (v13 <= 1)
    {
      dispatch_group_enter(*(a1 + 32));
      v14 = *(a1 + 40);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100F2881C;
      v15[3] = &unk_10165D300;
      v16 = v14;
      v17 = *(a1 + 32);
      [v16 updateCountryIfNecessaryWithCompletionHandler:v15];
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100F2881C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1007989A4();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Error getting country for saved route. We will be unable to load this route. Error: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) userProvidedName];
    v7 = [*(a1 + 32) iso3166CountryCode];
    v8 = 138478083;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Route %{private}@ was updated with country %@.", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100F2A42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F2A448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startRAPPlacecardTest];
}

void sub_100F2B58C(uint64_t a1)
{
  v5 = [*(a1 + 32) actionCoordinator];
  v2 = [v5 isAuthorizedForPreciseLocation];
  v3 = [*(a1 + 32) chromeViewController];
  v4 = [v3 mapView];
  [v4 _setShowHeadingIndicatorForStepping:v2];
}

void sub_100F2B9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F2BA00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resignTopContextInChromeViewController:*(a1 + 32)];
}

void sub_100F2BE3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F2BE58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _becomeTopContextInChromeViewController:*(a1 + 32)];
}

uint64_t sub_100F2C748()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  v1 = [v0 countryCode];
  v2 = [v1 isEqualToString:@"CN"];

  return v2 ^ 1;
}

uint64_t sub_100F2C7A8()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  if ([v0 currentCountrySupportsAvoidStairs])
  {
    v1 = 1;
  }

  else
  {
    v2 = +[GEOCountryConfiguration sharedConfiguration];
    v3 = [v2 countryCode];
    v1 = [v3 isEqualToString:@"CN"];
  }

  return v1;
}

id sub_100F2CAEC()
{
  if (qword_10195F710 != -1)
  {
    dispatch_once(&qword_10195F710, &stru_10165D458);
  }

  v1 = qword_10195F708;

  return v1;
}

void sub_100F2CB40(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ARFrameIndoorOutdoor");
  v2 = qword_10195F708;
  qword_10195F708 = v1;
}

id sub_100F2CC54(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100F2CFF4()
{
  if (qword_10195F720 != -1)
  {
    dispatch_once(&qword_10195F720, &stru_10165D478);
  }

  v1 = qword_10195F718;

  return v1;
}

void sub_100F2D048(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionMapsHomeMonitor");
  v2 = qword_10195F718;
  qword_10195F718 = v1;
}

void sub_100F2E194(id a1, id a2, RAPCuratedCollectionQuestion *a3)
{
  v3 = a3;
  [(RAPQuestion *)v3 _setComplete:[(RAPCuratedCollectionQuestion *)v3 isComplete]];
}

void sub_100F30944(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = +[CustomSearchManager sharedManager];
  [v3 setCustomSearchResult:0 animated:0 shouldSelectOnMap:0];

  if (v18)
  {
    v4 = [*(a1 + 32) chrome];
    [v18 coordinate];
    [v4 createCustomSearchResultForDroppedPinAtPoint:sub_100054304(v18) floorOrdinal:1 animated:{v5, v6}];

    v7 = [*(a1 + 32) chrome];
    v8 = [v7 userLocationView];
    [v8 animateVLFPuckOnce];

    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:1030 onTarget:503 eventValue:0];
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Mark My Location [Launch Action]" value:@"localized string not found" table:0];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Your current location is not available." value:@"localized string not found" table:0];
    v9 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];

    [v9 addAction:v16];
    v17 = [*(a1 + 32) chrome];
    [v17 presentViewController:v9 animated:1 completion:0];
  }
}

void sub_100F30B94(uint64_t a1, uint64_t a2)
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
      v11[2] = sub_100F30C98;
      v11[3] = &unk_10165D568;
      v12 = *(a1 + 32);
      v10 = [v9 singleLocationUpdateWithDesiredAccuracy:v11 handler:kCLLocationAccuracyBest];

      [v10 start];
    }
  }
}

void sub_100F31344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchResult alloc] initWithCuratedGuide:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_100F3262C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_100F326BC(uint64_t a1, void *a2)
{
  v3 = [a2 row];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained toggles];
  v6 = [v5 count] - 1;

  if (v3 == v6)
  {
    return _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  else
  {
    return _UICollectionViewListLayoutSectionAutomaticDimension;
  }
}

double sub_100F32758(uint64_t a1, void *a2)
{
  v3 = [a2 row];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained numberOfItems] - 1;

  if (v3 == v5)
  {
    return _UICollectionViewListSectionSeparatorInsetHidden[0];
  }

  else
  {
    return _UICollectionViewListLayoutSectionAutomaticDimension;
  }
}

void sub_100F32E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F32E58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100F32E70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v70 = a2;
  v72 = a3;
  v69 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained viewModel];
  v9 = [v8 sections];
  v71 = [v9 objectAtIndex:{objc_msgSend(v72, "section")}];

  v10 = [WeakRetained viewModel];
  v11 = [v10 sections];
  if ([v11 count] == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v71 type];
  if (v13 != 2)
  {
    if (v13 == 1)
    {
      v28 = v71;
      v29 = v69;
      v30 = +[_TtC4Maps36AllRefinementsMultiSelectElementCell reuseIdentifier];
      v16 = [v70 dequeueReusableCellWithReuseIdentifier:v30 forIndexPath:v72];

      [WeakRetained getMaxWidth];
      v32 = v31;
      v33 = [v29 displayName];
      v34 = [v29 isSelected];
      v35 = [v29 labelWidth];
      [v35 floatValue];
      v37 = v36;
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100F339E0;
      v81[3] = &unk_10165D5E0;
      v81[4] = WeakRetained;
      v82 = v28;
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_100F33A24;
      v78[3] = &unk_10165E668;
      v78[4] = WeakRetained;
      v79 = v29;
      v80 = v12;
      v38 = v29;
      v39 = v28;
      [v16 setDisplayName:v33 isSelected:v34 labelWidth:v81 maxWidth:v78 allowSelection:v37 tapHandler:v32];

      [v16 setNeedsUpdateConfiguration];
      goto LABEL_18;
    }

    if (!v13)
    {
      v14 = v69;
      v15 = +[NonSelectableCollectionViewListCell reuseIdentifier];
      v16 = [v70 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v72];

      v17 = +[UIListContentConfiguration cellConfiguration];
      v18 = [v14 displayName];
      [v17 setText:v18];

      [v16 setContentConfiguration:v17];
      v87 = 0;
      v88 = &v87;
      v89 = 0x3032000000;
      v90 = sub_100F32E58;
      v91 = sub_100F32E68;
      v92 = 0;
      v19 = [UISwitch alloc];
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100F338A0;
      v83[3] = &unk_10165D5B8;
      v83[4] = WeakRetained;
      v20 = v14;
      v84 = v20;
      v85 = &v87;
      v86 = v12;
      v21 = [UIAction actionWithHandler:v83];
      v22 = [v19 initWithFrame:v21 primaryAction:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v23 = v88[5];
      v88[5] = v22;

      v24 = [v20 isSelected];
      [v88[5] setOn:v24];
      [v88[5] setAccessibilityIdentifier:@"RefinementToggle"];
      v25 = [UICellAccessoryCustomView alloc];
      v26 = [v25 initWithCustomView:v88[5] placement:1];
      v94 = v26;
      v27 = [NSArray arrayWithObjects:&v94 count:1];
      [v16 setAccessories:v27];

      [v16 setAccessibilityIdentifier:@"RefinementToggleCell"];
      _Block_object_dispose(&v87, 8);

      goto LABEL_18;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v53 = +[_TtC4Maps24AllRefinementsOpenAtCell reuseIdentifier];
    v16 = [v70 dequeueReusableCellWithReuseIdentifier:v53 forIndexPath:v72];

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
    v40 = +[NonSelectableCollectionViewListCell reuseIdentifier];
    v16 = [v70 dequeueReusableCellWithReuseIdentifier:v40 forIndexPath:v72];

    v41 = +[UIListContentConfiguration cellConfiguration];
    v42 = [*(*(*(a1 + 32) + 8) + 40) displayName];
    [v41 setText:v42];

    [v16 setContentConfiguration:v41];
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_100F32E58;
    v91 = sub_100F32E68;
    v92 = 0;
    v43 = [UISwitch alloc];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100F33B40;
    v77[3] = &unk_10165D608;
    v44 = *(a1 + 32);
    v45 = *(a1 + 40);
    v77[4] = WeakRetained;
    v77[5] = v44;
    v77[6] = &v87;
    v77[7] = v45;
    v77[8] = v12;
    v46 = [UIAction actionWithHandler:v77];
    v47 = [v43 initWithFrame:v46 primaryAction:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v48 = v88[5];
    v88[5] = v47;

    v49 = [*(*(*(a1 + 32) + 8) + 40) isSelected];
    [v88[5] setOn:v49];
    [v88[5] setAccessibilityIdentifier:@"RefinementToggle"];
    v50 = [UICellAccessoryCustomView alloc];
    v51 = [v50 initWithCustomView:v88[5] placement:1];
    v93 = v51;
    v52 = [NSArray arrayWithObjects:&v93 count:1];
    [v16 setAccessories:v52];

    [v16 setAccessibilityIdentifier:@"RefinementToggleCell"];
    _Block_object_dispose(&v87, 8);

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v54 = v69;
  v55 = +[_TtC4Maps24AllRefinementsOpenAtCell reuseIdentifier];
  v56 = [v70 dequeueReusableCellWithReuseIdentifier:v55 forIndexPath:v72];
  v57 = *(*(a1 + 40) + 8);
  v58 = *(v57 + 40);
  *(v57 + 40) = v56;

  v59 = *(*(*(a1 + 32) + 8) + 40);
  if (v59)
  {
    [*(*(*(a1 + 40) + 8) + 40) shouldEnableControl:{objc_msgSend(v59, "isSelected") ^ 1}];
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100F33CC4;
  v73[3] = &unk_10165D630;
  v74 = v54;
  v75 = WeakRetained;
  v76 = v12;
  v61 = *(a1 + 40);
  v60 = a1 + 40;
  v62 = *(*(v61 + 8) + 40);
  v63 = v54;
  [v62 setDateSelectionHandler:v73];
  v64 = *(*(*v60 + 8) + 40);
  [v63 timeStamp];
  v66 = v65;
  v67 = [v63 displayName];
  [v64 updatedContentsWithTime:v67 displayName:objc_msgSend(v63 openAtSelected:{"isSelected"), v66}];

  v16 = *(*(*v60 + 8) + 40);
LABEL_18:

  return v16;
}

id sub_100F33790(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained viewModel];
  v10 = [v9 sections];
  v11 = [v10 objectAtIndex:{objc_msgSend(v6, "section")}];

  v12 = +[AllRefinementsHeaderView reuseIdentifier];
  v13 = [v7 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v12 forIndexPath:v6];

  v14 = [v11 displayName];
  [v13 setTitle:v14];

  return v13;
}

void sub_100F338A0(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionSequenceNumber];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 intValue] + 1);
  [*(a1 + 32) setSelectionSequenceNumber:v3];

  v4 = [*(a1 + 32) togglesLogicController];
  v5 = *(a1 + 40);
  v6 = [*(*(*(a1 + 48) + 8) + 40) isOn];
  v7 = [*(a1 + 32) selectionSequenceNumber];
  [v4 toggleValueDidChange:v5 newValue:v6 selectionSequenceNumber:v7];

  v8 = [*(a1 + 32) analyticsDelegate];
  v9 = [*(a1 + 40) refinementKey];
  [v8 resultRefinementTappedWithKey:v9 source:*(a1 + 56) refinementType:0 isSelected:{objc_msgSend(*(a1 + 40), "isSelected")}];

  v10 = [*(a1 + 32) viewModelDelegate];
  [v10 refinementViewModelDidChange];
}

id sub_100F339E0(uint64_t a1)
{
  v2 = [*(a1 + 32) multiSelectLogicController];
  v3 = [v2 allowsSelectionWithViewModel:*(a1 + 40)];

  return v3;
}

void sub_100F33A24(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionSequenceNumber];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 intValue] + 1);
  [*(a1 + 32) setSelectionSequenceNumber:v3];

  v4 = [*(a1 + 32) multiSelectLogicController];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) selectionSequenceNumber];
  [v4 didTapOnMultiSelectElement:v5 selectionSequenceNumber:v6];

  v7 = [*(a1 + 32) analyticsDelegate];
  v8 = [*(a1 + 40) refinementKey];
  [v7 resultRefinementTappedWithKey:v8 source:*(a1 + 48) refinementType:1 isSelected:{objc_msgSend(*(a1 + 40), "isSelected")}];

  v9 = [*(a1 + 32) viewModelDelegate];
  [v9 refinementViewModelDidChange];
}

void sub_100F33B40(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionSequenceNumber];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 intValue] + 1);
  [*(a1 + 32) setSelectionSequenceNumber:v3];

  v4 = [*(a1 + 32) togglesLogicController];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [*(*(*(a1 + 48) + 8) + 40) isOn];
  v7 = [*(a1 + 32) selectionSequenceNumber];
  [v4 toggleValueDidChange:v5 newValue:v6 selectionSequenceNumber:v7];

  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (v8)
  {
    [v8 shouldEnableControl:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isOn") ^ 1}];
  }

  v9 = [*(a1 + 32) viewModelDelegate];
  [v9 refinementViewModelDidChange];

  v11 = [*(a1 + 32) analyticsDelegate];
  v10 = [*(*(*(a1 + 40) + 8) + 40) refinementKey];
  [v11 resultRefinementTappedWithKey:v10 source:*(a1 + 64) refinementType:0 isSelected:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isSelected")}];
}

void sub_100F33CC4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v9 = a3;
  if (a2)
  {
    [*(a1 + 32) updateTimeStamp:1 isSelected:a4];
    v7 = [*(a1 + 40) viewModelDelegate];
    [v7 refinementViewModelDidChange];
  }

  v8 = [*(a1 + 40) analyticsDelegate];
  [v8 resultRefinementTappedWithKey:v9 source:*(a1 + 48) refinementType:1 isSelected:a2];
}

id sub_100F3403C()
{
  if (qword_10195F730 != -1)
  {
    dispatch_once(&qword_10195F730, &stru_10165D6C8);
  }

  v1 = qword_10195F728;

  return v1;
}

void sub_100F34090(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFVIOSessionTimeoutMonitor");
  v2 = qword_10195F728;
  qword_10195F728 = v1;
}

void sub_100F34264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F34288(uint64_t a1)
{
  v2 = sub_100F3403C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 134349056;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Timeout timer fired", &v8, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    [v4 setTimeoutTimer:0];
    v6 = [v5 stateManager];
    [v6 recordSessionDisableEvent:8];

    v7 = [v5 platformController];
    [v7 unregisterObserver:v5];
  }
}

void sub_100F34D0C(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setUserInteractionEnabled:fabs(*(a1 + 40) + -1.0) <= 2.22044605e-16];
  [*(*(a1 + 32) + 40) setAlpha:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t sub_100F353B8(void *a1)
{
  sub_100021DB0(a1, &stru_10165D6E8);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = [v1 firstObject];
        LODWORD(v6) = [v6 isEqualToString:v7];

        if (!v6)
        {
          v8 = 0;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

id sub_100F354F8(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    if ([v1 count] == 1 || sub_100F353B8(v1))
    {
      v2 = +[NSBundle mainBundle];
      v3 = [v2 localizedStringForKey:@"Try EV title with single vehicle [Title value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];

      v4 = [v1 firstObject];
      v5 = [v4 manufacturer];
      v6 = v5;
      if (v5)
      {
        v7 = [NSString stringWithFormat:v3, v5];
      }

      else
      {
        v8 = [v1 firstObject];
        v9 = [v8 displayName];
        v7 = [NSString stringWithFormat:v3, v9];
      }
    }

    else
    {
      v3 = +[NSBundle mainBundle];
      v7 = [v3 localizedStringForKey:@"Try EV title with multiple vehicles [Title value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_100F3567C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (GEOConfigGetBOOL())
    {
      v2 = sub_10006250C();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        v3 = "EVRoutingForceHideFeatureDiscovery is set to yes, do not show EV Onboarding";
        v4 = v2;
        v5 = OS_LOG_TYPE_INFO;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v4, v5, v3, &v18, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    if (GEOConfigGetBOOL())
    {
      v2 = sub_10006250C();
      v6 = 1;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      LOWORD(v18) = 0;
      v8 = "EVOnboardingShouldShowEventForKey is set to yes, should try to show vehicles.";
      v9 = v2;
      v10 = 2;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v18, v10);
      goto LABEL_9;
    }

    if (qword_10195F740 != -1)
    {
      dispatch_once(&qword_10195F740, &stru_10165D708);
    }

    if ([qword_10195F738 containsObject:v1])
    {
      v2 = sub_10006250C();
      v6 = 1;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v18 = 138412290;
      v19 = v1;
      v8 = "The key: %@ was already displayed during this Maps launch.";
      v9 = v2;
      v10 = 12;
      goto LABEL_18;
    }

    v11 = +[NSUserDefaults standardUserDefaults];
    v2 = [v11 dictionaryForKey:@"EVViewedVehiclesHistoryDictionaryKey"];

    v12 = [v2 objectForKeyedSubscript:v1];
    v13 = [v12 unsignedIntegerValue];

    UInteger = GEOConfigGetUInteger();
    v15 = sub_100798370();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    v6 = v13 < UInteger;
    if (v13 >= UInteger)
    {
      if (v16)
      {
        v18 = 138412546;
        v19 = v1;
        v20 = 2048;
        v21 = UInteger;
        v17 = "EVOnboardingShouldShowEventForKey onboarding suggestion for %@ was shown more than %lu, won't show again.";
        goto LABEL_24;
      }
    }

    else if (v16)
    {
      v18 = 138412546;
      v19 = v1;
      v20 = 2048;
      v21 = v13;
      v17 = "EVOnboardingShouldShowEventForKey onboarding suggestion for %@ was shown %lu times, will attempt to show.";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v18, 0x16u);
    }

    goto LABEL_9;
  }

  v2 = sub_10006250C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v18) = 0;
    v3 = "EVOnboardingShouldShowEventForKey key can't be nil";
    v4 = v2;
    v5 = OS_LOG_TYPE_FAULT;
    goto LABEL_7;
  }

LABEL_8:
  v6 = 0;
LABEL_9:

  return v6;
}

void sub_100F35970(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  v2 = qword_10195F738;
  qword_10195F738 = v1;
}

void sub_100F359AC(void *a1)
{
  v1 = COERCE_DOUBLE(a1);
  if (v1 == 0.0)
  {
    v2 = sub_10006250C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "EVOnboardingMarkKeyAsViewed key can't be nil", &v24, 2u);
    }
  }

  else
  {
    if (qword_10195F740 != -1)
    {
      dispatch_once(&qword_10195F740, &stru_10165D708);
    }

    [qword_10195F738 addObject:*&v1];
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 dictionaryForKey:@"EVViewedVehiclesHistoryDictionaryKey"];
    v4 = [v3 mutableCopy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = +[NSMutableDictionary dictionary];
    }

    v7 = v6;

    Current = CFAbsoluteTimeGetCurrent();
    v9 = [v7 objectForKeyedSubscript:*&v1];

    if (v9)
    {
      v10 = [v7 valueForKey:@"EVViewedVehiclesHistoryLastUpdateKey"];
      v11 = v10;
      v12 = Current;
      if (v10)
      {
        [v10 doubleValue];
        v12 = v13;
      }

      GEOConfigGetDouble();
      v15 = v14;
      if (Current <= v14 + v12)
      {
        v20 = sub_10006250C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = 134218240;
          v25 = v12;
          v26 = 2048;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "EVOnboardingFeatureDiscovery last entry was at %.2f, min delay of %.2f hasn't passed yet", &v24, 0x16u);
        }
      }

      else
      {
        v16 = [v7 objectForKeyedSubscript:*&v1];
        v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 unsignedIntegerValue] + 1);
        [v7 setObject:v17 forKeyedSubscript:*&v1];

        v18 = [NSNumber numberWithDouble:Current];
        [v7 setObject:v18 forKeyedSubscript:@"EVViewedVehiclesHistoryLastUpdateKey"];

        v19 = [v7 copy];
        [v2 setObject:v19 forKey:@"EVViewedVehiclesHistoryDictionaryKey"];

        v20 = sub_10006250C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v7 objectForKeyedSubscript:*&v1];
          v24 = 138412802;
          v25 = v1;
          v26 = 2112;
          v27 = *&v21;
          v28 = 2048;
          UInteger = GEOConfigGetUInteger();
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "EVOnboardingFeatureDiscovery for %@ has been shown %@/%lu times", &v24, 0x20u);
        }
      }
    }

    else
    {
      [v7 setObject:&off_1016EA3D0 forKeyedSubscript:*&v1];
      v22 = [NSNumber numberWithDouble:Current];
      [v7 setObject:v22 forKeyedSubscript:@"EVViewedVehiclesHistoryLastUpdateKey"];

      v23 = [v7 copy];
      [v2 setObject:v23 forKey:@"EVViewedVehiclesHistoryDictionaryKey"];

      v11 = sub_10006250C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "EVOnboardingFeatureDiscovery for %@ has been shown once", &v24, 0xCu);
      }
    }
  }
}

uint64_t sub_100F35DC4()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v1 = [NSNumber numberWithUnsignedInt:168];
    v12[0] = v1;
    v13[0] = &off_1016EE650;
    v2 = [NSNumber numberWithUnsignedInt:170];
    v12[1] = v2;
    v13[1] = &off_1016EE678;
    v3 = [NSNumber numberWithUnsignedInt:167];
    v12[2] = v3;
    v13[2] = &off_1016EE6A0;
    v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    v5 = [NSNumber numberWithUnsignedInt:170];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = +[GEOCountryConfiguration sharedConfiguration];
    v8 = [v7 countryCode];
    v9 = [v6 objectForKey:v8];

    if (v9)
    {
      BOOL = [v9 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v11 = BOOL;

    return v11;
  }
}

void sub_100F36608(id a1, GEOComposedStringArgument *a2)
{
  v3 = a2;
  if ([(GEOComposedStringArgument *)v3 type]== 1)
  {
    v2 = [(GEOComposedStringArgument *)v3 distanceFormat];
    [v2 setFormatOptions:1];
  }
}

void sub_100F36984(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 durationFormat];

  if (v3)
  {
    [*(a1 + 32) travelAndChargingDuration];
    v5 = v4;
    v6 = [v7 durationFormat];
    [v6 setOverrideValue:v5];
  }
}

void sub_100F37868(uint64_t a1)
{
  v3 = [*(a1 + 32) cardPresentationController];
  [v3 cardHeight];
  *(*(a1 + 32) + 168) = v2;
}

void sub_100F37E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F37E68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained dataSource];

    if (v2)
    {
      v3 = [v5 dataSource];
      [v3 didTapTryAgainOnErrorView];

      v4 = [v5 analyticsManager];
      [v4 publisherTryAgainTapped];
    }

    else
    {
      v4 = [v5 apiController];
      [v4 fetchPublisherViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10165D800];
    }

    WeakRetained = v5;
  }
}

void sub_100F38048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v2 = [WeakRetained loadingView];
    if (!v2)
    {
      v3 = [v12 apiController];
      v4 = [v3 currentState];

      WeakRetained = v12;
      if (v4 != 1)
      {
        goto LABEL_6;
      }

      v5 = [LoadingModeView alloc];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
      v8 = [(LoadingModeView *)v5 initWithTitle:v7];
      [v12 setLoadingView:v8];

      v9 = [v12 loadingView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [v12 contentView];
      v11 = [v12 loadingView];
      [v10 addSubview:v11];

      v2 = [v12 loadingView];
      [v12 activateConstraintsForViewPinnedBelowHeader:v2];
    }

    WeakRetained = v12;
  }

LABEL_6:
}

void sub_100F39324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F39348(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 collection];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 collection];
    [v4 addObject:v5];
  }
}

void sub_100F393C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setContentOffset:{CGPointZero.x, CGPointZero.y}];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 publisherHeaderView];
  [v5 maximumRequiredHeight];
  v7 = v6;
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 headerHeightConstraint];
  [v9 setConstant:v7];

  v11 = objc_loadWeakRetained((a1 + 32));
  v10 = [v11 publisherHeaderView];
  [v10 resetLogoHeight];
}

id sub_100F398D0()
{
  if (qword_10195F750 != -1)
  {
    dispatch_once(&qword_10195F750, &stru_10165D848);
  }

  v1 = qword_10195F748;

  return v1;
}

void sub_100F39924(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PublisherViewController");
  v2 = qword_10195F748;
  qword_10195F748 = v1;
}

void sub_100F39E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F39E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained onTransitionFromState:a2 toState:a3];
  }
}

UIFont *__cdecl sub_100F3A0FC(id a1)
{
  v1 = +[UIFont system18];
  v2 = [v1 _maps_fontWithMonospacedNumbers];

  return v2;
}

UIFont *__cdecl sub_100F3A15C(id a1)
{
  v1 = +[UIFont system17Medium];
  v2 = [v1 _maps_fontWithMonospacedNumbers];

  return v2;
}

UIFont *__cdecl sub_100F3A1BC(id a1)
{
  v1 = +[UIFont system15];
  v2 = [v1 _maps_fontWithMonospacedNumbers];

  return v2;
}

void sub_100F3A7B4(void *a1)
{
  v1 = a1;
  v2 = [v1 keyEnumerator];
  v3 = [v2 allObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v1 objectForKey:{v9, v13}];
        v11 = NSSelectorFromString(v10);

        if (objc_opt_respondsToSelector())
        {
          v12 = ([v9 methodForSelector:v11])(v9, v11);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_100F3A928(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  v4 = [v9 firstItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v9 firstItem];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      v8 = [v9 firstItem];
      v6 = [v8 owningView];
    }

    else
    {
      v6 = 0;
    }
  }

  [v3 scaledValue];
  UIRoundToViewScale();
  [v9 setConstant:?];
}

void sub_100F3ACD0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195F758;
  qword_10195F758 = v1;
}

void sub_100F3B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100F3B99C(uint64_t a1, void *a2, void *a3)
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

id sub_100F3BDD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100A38BFC(&stru_1016324F0, v7, v8, v9);
  if (!v10)
  {
    v10 = sub_1008C45F0(&stru_10162D778, v7, v8, v9);
    if (!v10)
    {
      v10 = sub_100FEDB44(&stru_101660F68, v7, v8, v9);
      if (!v10)
      {
        v10 = sub_10078395C(&stru_101628C18, v7, v8, v9);
      }
    }
  }

  v11 = v10;
  [PPTNotificationCenter setEnabled:v10 != 0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F3BF6C;
  v16[3] = &unk_101661A40;
  v12 = v11;
  v17 = v12;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  [v12 popToRootTrayWithCompletion:v16];
  v13 = v19;
  v14 = v12;

  return v12;
}

id sub_100F3BF6C(uint64_t a1)
{
  result = [*(a1 + 32) runTest];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 failedTest:v4];
  }

  return result;
}

int64_t sub_100F3C3D4(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  rect = v6;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  MinY = CGRectGetMinY(v26);
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  if (MinY < CGRectGetMinY(v27))
  {
    return -1;
  }

  v28.origin.x = rect;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v23 = CGRectGetMinY(v28);
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  if (v23 > CGRectGetMinY(v29))
  {
    return 1;
  }

  v30.origin.x = rect;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  if (MinX >= CGRectGetMinX(v31))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_100F3E798(id a1, UIAction *a2)
{
  v2 = +[MNNavigationService sharedService];
  [v2 stopNavigationWithReason:2];
}

void sub_100F3F4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F3F518(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [v3 count])
  {
    v5 = [MKMapItem alloc];
    v6 = [v3 firstObject];
    v7 = [v5 initWithGeoMapItem:v6 isPlaceHolderPlace:0];

    [*(a1 + 32) setMapItem:v7];
    v8 = [*(a1 + 32) vehicleEvent];
    if (v8)
    {
      v9 = [v7 _geoMapItemStorageForPersistence];
      v10 = +[RTRoutineManager defaultManager];
      v11 = [v8 identifier];
      [v10 updateVehicleEventWithIdentifier:v11 geoMapItem:v9];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [WeakRetained[1] allObjects];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 parkedCarManager:WeakRetained didUpdateParkedCar:*(a1 + 32)];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

void sub_100F3F728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  [WeakRetained resolveMapItemFromVehicleEvent:v2 overrideCoordinate:2 referenceFrame:*(a1 + 40) callback:?];
}

void sub_100F3F7A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setParkedCarWithMapItem:0 overrideCoordinate:0 referenceFrame:0 vehicleEvent:{kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude}];
  (*(*(a1 + 32) + 16))();
}

void sub_100F3F818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained resolveMapItemFromVehicleEvent:*(a1 + 32) overrideCoordinate:1 referenceFrame:*(a1 + 40) callback:{kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude}];
}

void sub_100F3FA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F3FABC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F3FBAC;
  block[3] = &unk_10165DC00;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = v3;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_100F3FBAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setParkedCarWithMapItem:*(a1 + 32) overrideCoordinate:*(a1 + 80) referenceFrame:*(a1 + 40) vehicleEvent:{*(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void sub_100F42694(uint64_t a1)
{
  v2 = [*(a1 + 32) detailButton];
  [v2 setTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) detailButton];
  [v3 setEnabled:{objc_msgSend(*(a1 + 48), "shouldEnableExpandedButton")}];
}

void sub_100F42E48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3 + 1;
  if (a3 + 1 != *(a1 + 48))
  {
    v9 = v5;
    v7 = 0;
    do
    {
      v8 = v7;
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];

      if (![v7 isHidden])
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a1 + 48));
    [*(a1 + 40) _extraSpacingAboveView:v7];
    [*(*(a1 + 40) + 296) setCustomSpacing:v9 afterView:?];

    v5 = v9;
  }
}

UIColor *__cdecl sub_100F454F8(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlackColor];
  }
  v2 = ;

  return v2;
}

void sub_100F47F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F47F60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F48CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100F48D28(void *a1)
{
  *(a1[4] + 76) = 1;
  *(*(a1[5] + 8) + 24) = atomic_fetch_add_explicit((a1[4] + 72), 1u, memory_order_relaxed) + 1;
  v2 = [*(a1[4] + 80) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F48D9C(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    goto LABEL_240;
  }

  v3 = os_signpost_id_generate(*(v1 + 32));
  v4 = *(v1 + 32);
  v5 = v4;
  v194 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CreatePOIsForItemsCalculation", "", buf, 2u);
  }

  spid = v3;

  v6 = sub_1000177D0();
  v214 = v1;
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  v7 = WeakRetained;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(atomic_uint *)v7 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

      goto LABEL_11;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_11:

  v13 = v12;
  *buf = 138543362;
  v259 = v13;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] POI calculation starting...", buf, 0xCu);

  v1 = v214;
LABEL_12:

  v14 = [*(*(*(v1 + 64) + 8) + 40) allKeys];
  v198 = [NSSet setWithArray:v14];

  v15 = +[NSMutableSet set];
  v16 = +[NSMutableDictionary dictionary];
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  obj = *(v1 + 40);
  v17 = [obj countByEnumeratingWithState:&v252 objects:v269 count:16];
  v213 = WeakRetained;
  if (!v17)
  {
    goto LABEL_38;
  }

  v18 = v17;
  v210 = *v253;
  do
  {
    v19 = 0;
    do
    {
      if (*v253 != v210)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v252 + 1) + 8 * v19);
      v21 = *(*(*(v1 + 72) + 8) + 24);
      if (v21 != atomic_fetch_add_explicit(WeakRetained + 18, 0, memory_order_relaxed))
      {
        log = sub_1000177D0();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_239;
        }

        v43 = WeakRetained;
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        if (objc_opt_respondsToSelector())
        {
          v46 = [(atomic_uint *)v43 performSelector:"accessibilityIdentifier"];
          v47 = v46;
          if (!v46 || [v46 isEqualToString:v45])
          {

            goto LABEL_51;
          }

          v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];
        }

        else
        {
LABEL_51:
          v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
        }

        v49 = *(*(*(v214 + 72) + 8) + 24);
        *buf = 138543618;
        v259 = v48;
        v260 = 1024;
        LODWORD(v261) = v49;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%{public}@] Counter (%d) updated while calculating POI items; aborting early", buf, 0x12u);

        goto LABEL_239;
      }

      if ([(POIAnnotation *)v20 shouldBeHiddenFromMap])
      {
        v22 = sub_1000177D0();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_34;
        }

        v23 = WeakRetained;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        if (objc_opt_respondsToSelector())
        {
          v26 = [(atomic_uint *)v23 performSelector:"accessibilityIdentifier"];
          v27 = v26;
          if (!v26 || [v26 isEqualToString:v25])
          {

            goto LABEL_24;
          }

          v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];
        }

        else
        {
LABEL_24:
          v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
        }

        v29 = v28;
        *buf = 138543618;
        v259 = v29;
        v260 = 2112;
        v261 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Item (%@) should be hidden from map; skipping", buf, 0x16u);

        goto LABEL_33;
      }

      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v22 = [(POIAnnotation *)v20 keys];
      v30 = [v22 countByEnumeratingWithState:&v248 objects:v268 count:16];
      if (!v30)
      {
        goto LABEL_34;
      }

      v31 = v30;
      v32 = *v249;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v249 != v32)
          {
            objc_enumerationMutation(v22);
          }

          v34 = *(*(&v248 + 1) + 8 * i);
          [(POIAnnotation *)v15 addObject:v34];
          [v16 setObject:v20 forKeyedSubscript:v34];
        }

        v31 = [v22 countByEnumeratingWithState:&v248 objects:v268 count:16];
      }

      while (v31);
LABEL_33:
      WeakRetained = v213;
LABEL_34:

      v19 = v19 + 1;
      v1 = v214;
    }

    while (v19 != v18);
    v35 = [obj countByEnumeratingWithState:&v252 objects:v269 count:16];
    v18 = v35;
  }

  while (v35);
LABEL_38:

  v36 = sub_1000177D0();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = objc_loadWeakRetained((v1 + 80));
    if (v37)
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_44;
      }

      v40 = [v37 performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v39])
      {
        v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];
      }

      else
      {

LABEL_44:
        v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
      }
    }

    else
    {
      v42 = @"<nil>";
    }

    v50 = v42;
    *buf = 138543618;
    v259 = v50;
    v260 = 2112;
    v261 = v198;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[%{public}@] - current keys: %@", buf, 0x16u);

    v1 = v214;
  }

  v51 = sub_1000177D0();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = objc_loadWeakRetained((v1 + 80));
    if (v52)
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_62;
      }

      v55 = [v52 performSelector:"accessibilityIdentifier"];
      v56 = v55;
      if (v55 && ![v55 isEqualToString:v54])
      {
        v57 = [NSString stringWithFormat:@"%@<%p, %@>", v54, v52, v56];
      }

      else
      {

LABEL_62:
        v57 = [NSString stringWithFormat:@"%@<%p>", v54, v52];
      }
    }

    else
    {
      v57 = @"<nil>";
    }

    v58 = v57;
    *buf = 138543618;
    v259 = v58;
    v260 = 2112;
    v261 = v15;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "[%{public}@] - incoming keys: %@", buf, 0x16u);

    v1 = v214;
  }

  v59 = [(POIAnnotation *)v198 mutableCopy];
  [v59 unionSet:v15];
  log = [NSHashTable hashTableWithOptions:512];
  v200 = [NSHashTable hashTableWithOptions:512];
  v206 = [NSHashTable hashTableWithOptions:512];
  v204 = [NSHashTable hashTableWithOptions:512];
  v199 = [NSHashTable hashTableWithOptions:512];
  v195 = [NSHashTable hashTableWithOptions:512];
  v60 = [*(*(*(v1 + 64) + 8) + 40) mutableCopy];
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  obj = v59;
  v207 = [obj countByEnumeratingWithState:&v244 objects:v267 count:16];
  if (!v207)
  {
    goto LABEL_107;
  }

  v61 = *v245;
  v201 = *v245;
  while (2)
  {
    v62 = 0;
    while (2)
    {
      if (*v245 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v63 = *(*(&v244 + 1) + 8 * v62);
      v64 = *(*(*(v1 + 72) + 8) + 24);
      if (v64 != atomic_fetch_add_explicit(WeakRetained + 18, 0, memory_order_relaxed))
      {
        v165 = sub_1000177D0();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
        {
          v166 = WeakRetained;
          v167 = objc_opt_class();
          v168 = NSStringFromClass(v167);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_218;
          }

          v169 = [(atomic_uint *)v166 performSelector:"accessibilityIdentifier"];
          v170 = v169;
          if (v169 && ![v169 isEqualToString:v168])
          {
            v171 = [NSString stringWithFormat:@"%@<%p, %@>", v168, v166, v170];
          }

          else
          {

LABEL_218:
            v171 = [NSString stringWithFormat:@"%@<%p>", v168, v166];
          }

          v172 = *(*(*(v214 + 72) + 8) + 24);
          *buf = 138543618;
          v259 = v171;
          v260 = 1024;
          LODWORD(v261) = v172;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEBUG, "[%{public}@] Counter (%d) updated while comparing existing POIs; aborting early", buf, 0x12u);
        }

        v164 = obj;
        goto LABEL_238;
      }

      v65 = [*(*(*(v1 + 64) + 8) + 40) objectForKeyedSubscript:v63];
      v211 = v65;
      if (v65)
      {
        v66 = [v65 compoundItem];
      }

      else
      {
        v66 = 0;
      }

      v67 = [v16 objectForKeyedSubscript:v63];
      v68 = v67;
      if (v66)
      {
        v69 = 1;
      }

      else
      {
        v69 = v67 == 0;
      }

      v70 = !v69;
      if (v69)
      {
        if (!v66 || !v67)
        {
          if (!v66 || v67)
          {
            goto LABEL_105;
          }

          goto LABEL_94;
        }

        v72 = sub_100044AE0(v67);
        if (v72 != [v211 presentationAttributesHash] || (objc_msgSend(v66, "isEqual:", v68) & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
LABEL_82:
        if ([v68 shouldBeClustered])
        {
          v71 = v200;
        }

        else
        {
          v71 = log;
        }

        [v71 addObject:v68];
        if (v70)
        {
          goto LABEL_105;
        }

LABEL_94:
        if ([v66 shouldBeClustered])
        {
          v73 = v204;
        }

        else
        {
          v73 = v206;
        }

        [v73 addObject:v211];
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v74 = [v66 keys];
        v75 = [v74 countByEnumeratingWithState:&v240 objects:v266 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v241;
          do
          {
            for (j = 0; j != v76; j = j + 1)
            {
              if (*v241 != v77)
              {
                objc_enumerationMutation(v74);
              }

              [v60 removeObjectForKey:*(*(&v240 + 1) + 8 * j)];
            }

            v76 = [v74 countByEnumeratingWithState:&v240 objects:v266 count:16];
          }

          while (v76);
        }

        v1 = v214;
        v61 = v201;
      }

LABEL_105:

      v62 = v62 + 1;
      WeakRetained = v213;
      if (v62 != v207)
      {
        continue;
      }

      break;
    }

    v207 = [obj countByEnumeratingWithState:&v244 objects:v267 count:16];
    if (v207)
    {
      continue;
    }

    break;
  }

LABEL_107:

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v197 = log;
  v208 = [v197 countByEnumeratingWithState:&v236 objects:v265 count:16];
  if (!v208)
  {
    goto LABEL_153;
  }

  v202 = *v237;
  while (2)
  {
    v79 = 0;
    while (2)
    {
      if (*v237 != v202)
      {
        objc_enumerationMutation(v197);
      }

      v80 = *(*(&v236 + 1) + 8 * v79);
      v81 = *(*(*(v1 + 72) + 8) + 24);
      if (v81 != atomic_fetch_add_explicit(WeakRetained + 18, 0, memory_order_relaxed))
      {
        v173 = sub_1000177D0();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
        {
          v174 = WeakRetained;
          v175 = objc_opt_class();
          v176 = NSStringFromClass(v175);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_226;
          }

          v177 = [(atomic_uint *)v174 performSelector:"accessibilityIdentifier"];
          v178 = v177;
          if (v177 && ![v177 isEqualToString:v176])
          {
            v179 = [NSString stringWithFormat:@"%@<%p, %@>", v176, v174, v178];
          }

          else
          {

LABEL_226:
            v179 = [NSString stringWithFormat:@"%@<%p>", v176, v174];
          }

          v180 = *(*(*(v214 + 72) + 8) + 24);
          *buf = 138543618;
          v259 = v179;
          v260 = 1024;
          LODWORD(v261) = v180;
          _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEBUG, "[%{public}@] Counter (%d) updated while creating new normal POIs; aborting early", buf, 0x12u);
        }

        v164 = v197;
        goto LABEL_238;
      }

      if ([(POIAnnotation *)v80 shouldBeHiddenFromMap])
      {
        v82 = sub_1000177D0();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = WeakRetained;
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_119;
          }

          v86 = [(atomic_uint *)v83 performSelector:"accessibilityIdentifier"];
          v87 = v86;
          if (v86 && ![v86 isEqualToString:v85])
          {
            v88 = [NSString stringWithFormat:@"%@<%p, %@>", v85, v83, v87];
          }

          else
          {

LABEL_119:
            v88 = [NSString stringWithFormat:@"%@<%p>", v85, v83];
          }

          v89 = v88;
          *buf = 138543618;
          v259 = v89;
          v260 = 2112;
          v261 = v80;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "[%{public}@] Item (%@) marked as should be hidden from the map; this shouldn't have happened", buf, 0x16u);

          WeakRetained = v213;
        }
      }

      if ([(POIAnnotation *)v80 shouldBeClustered])
      {
        v90 = sub_1000177D0();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = WeakRetained;
          v92 = objc_opt_class();
          v93 = NSStringFromClass(v92);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_128;
          }

          v94 = [(atomic_uint *)v91 performSelector:"accessibilityIdentifier"];
          v95 = v94;
          if (v94 && ![v94 isEqualToString:v93])
          {
            v96 = [NSString stringWithFormat:@"%@<%p, %@>", v93, v91, v95];
          }

          else
          {

LABEL_128:
            v96 = [NSString stringWithFormat:@"%@<%p>", v93, v91];
          }

          v97 = v96;
          *buf = 138543618;
          v259 = v97;
          v260 = 2112;
          v261 = v80;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "[%{public}@] Item (%@) marked as should be clustered; this shouldn't have happened", buf, 0x16u);

          WeakRetained = v213;
        }
      }

      v98 = [[POIAnnotation alloc] initWithItem:v80 defaultLocale:*(WeakRetained + 3)];
      if (!v98)
      {
        v99 = sub_1000177D0();
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_147;
        }

        v104 = WeakRetained;
        v105 = objc_opt_class();
        v106 = NSStringFromClass(v105);
        if (objc_opt_respondsToSelector())
        {
          v107 = v106;
          v108 = [(atomic_uint *)v104 performSelector:"accessibilityIdentifier"];
          v109 = v108;
          if (v108 && ![v108 isEqualToString:v107])
          {
            v191 = v107;
            v110 = [NSString stringWithFormat:@"%@<%p, %@>", v107, v104, v109];

            v106 = v191;
            goto LABEL_146;
          }

          v106 = v107;
        }

        v110 = [NSString stringWithFormat:@"%@<%p>", v106, v104];
LABEL_146:

        v111 = v110;
        WeakRetained = v213;
        v112 = *(v213 + 3);
        *buf = 138543874;
        v259 = v111;
        v260 = 2112;
        v261 = v80;
        v262 = 2112;
        v263 = v112;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%{public}@] Could not generate normal POI for item: %@ with locale: %@", buf, 0x20u);

        goto LABEL_147;
      }

      [v199 addObject:v98];
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v99 = [(POIAnnotation *)v80 keys];
      v100 = [v99 countByEnumeratingWithState:&v232 objects:v264 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v233;
        do
        {
          for (k = 0; k != v101; k = k + 1)
          {
            if (*v233 != v102)
            {
              objc_enumerationMutation(v99);
            }

            [v60 setObject:v98 forKeyedSubscript:*(*(&v232 + 1) + 8 * k)];
          }

          v101 = [v99 countByEnumeratingWithState:&v232 objects:v264 count:16];
        }

        while (v101);
      }

LABEL_147:

      v79 = v79 + 1;
      v1 = v214;
      if (v79 != v208)
      {
        continue;
      }

      break;
    }

    v113 = [v197 countByEnumeratingWithState:&v236 objects:v265 count:16];
    v208 = v113;
    if (v113)
    {
      continue;
    }

    break;
  }

LABEL_153:

  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v196 = v200;
  v203 = [v196 countByEnumeratingWithState:&v228 objects:v257 count:16];
  if (!v203)
  {
    goto LABEL_209;
  }

  v114 = *v229;
  v192 = *v229;
  while (2)
  {
    v115 = 0;
    while (2)
    {
      if (*v229 != v114)
      {
        objc_enumerationMutation(v196);
      }

      v212 = v115;
      v116 = *(*(&v228 + 1) + 8 * v115);
      v117 = *(*(*(v1 + 72) + 8) + 24);
      if (v117 != atomic_fetch_add_explicit(WeakRetained + 18, 0, memory_order_relaxed))
      {
        v181 = sub_1000177D0();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
        {
          v182 = WeakRetained;
          v183 = objc_opt_class();
          v184 = NSStringFromClass(v183);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_235;
          }

          v185 = [(atomic_uint *)v182 performSelector:"accessibilityIdentifier"];
          v186 = v185;
          if (v185 && ![v185 isEqualToString:v184])
          {
            v187 = [NSString stringWithFormat:@"%@<%p, %@>", v184, v182, v186];
          }

          else
          {

LABEL_235:
            v187 = [NSString stringWithFormat:@"%@<%p>", v184, v182];
          }

          v188 = v187;
          v189 = *(*(*(v214 + 72) + 8) + 24);
          *buf = 138543618;
          v259 = v188;
          v260 = 1024;
          LODWORD(v261) = v189;
          _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEBUG, "[%{public}@] Counter (%d) updated while creating new clustered POIs; aborting early", buf, 0x12u);
        }

        v164 = v196;
        goto LABEL_238;
      }

      if ([(POIAnnotation *)v116 shouldBeHiddenFromMap])
      {
        v118 = sub_1000177D0();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          v119 = WeakRetained;
          v120 = objc_opt_class();
          v121 = NSStringFromClass(v120);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_165;
          }

          v122 = [(atomic_uint *)v119 performSelector:"accessibilityIdentifier"];
          v123 = v122;
          if (v122 && ![v122 isEqualToString:v121])
          {
            v124 = [NSString stringWithFormat:@"%@<%p, %@>", v121, v119, v123];
          }

          else
          {

LABEL_165:
            v124 = [NSString stringWithFormat:@"%@<%p>", v121, v119];
          }

          v125 = v124;
          *buf = 138543618;
          v259 = v125;
          v260 = 2112;
          v261 = v116;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "[%{public}@] Item (%@) marked as should be hidden from the map; this shouldn't have happened", buf, 0x16u);

          WeakRetained = v213;
        }

        v1 = v214;
      }

      if (([(POIAnnotation *)v116 shouldBeClustered]& 1) == 0)
      {
        v126 = sub_1000177D0();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          v127 = WeakRetained;
          v128 = objc_opt_class();
          v129 = NSStringFromClass(v128);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_174;
          }

          v130 = [(atomic_uint *)v127 performSelector:"accessibilityIdentifier"];
          v131 = v130;
          if (v130 && ![v130 isEqualToString:v129])
          {
            v132 = [NSString stringWithFormat:@"%@<%p, %@>", v129, v127, v131];
          }

          else
          {

LABEL_174:
            v132 = [NSString stringWithFormat:@"%@<%p>", v129, v127];
          }

          v133 = v132;
          *buf = 138543618;
          v259 = v133;
          v260 = 2112;
          v261 = v116;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "[%{public}@] Item (%@) marked as shouldn't be clustered; this shouldn't have happened", buf, 0x16u);

          WeakRetained = v213;
        }

        v1 = v214;
      }

      v134 = [[POIAnnotation alloc] initWithItem:v116 defaultLocale:*(WeakRetained + 3)];
      v135 = sub_1000177D0();
      v136 = v135;
      if (!v134)
      {
        if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_202;
        }

        v144 = v213;
        v145 = objc_opt_class();
        v146 = NSStringFromClass(v145);
        if (objc_opt_respondsToSelector())
        {
          v147 = [(atomic_uint *)v144 performSelector:"accessibilityIdentifier"];
          v148 = v147;
          if (v147 && ![v147 isEqualToString:v146])
          {
            v149 = [NSString stringWithFormat:@"%@<%p, %@>", v146, v144, v148];

            goto LABEL_192;
          }
        }

        v149 = [NSString stringWithFormat:@"%@<%p>", v146, v144];
LABEL_192:

        v150 = v149;
        v151 = *(v213 + 3);
        *buf = 138543874;
        v259 = v150;
        v260 = 2112;
        v261 = v116;
        v262 = 2112;
        v263 = v151;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "[%{public}@] Could not generate cluster POI for item: %@ with locale: %@", buf, 0x20u);

        v1 = v214;
        v114 = v192;
        goto LABEL_202;
      }

      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v137 = objc_loadWeakRetained((v1 + 80));
        if (v137)
        {
          v138 = objc_opt_class();
          v139 = NSStringFromClass(v138);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_184;
          }

          v140 = v139;
          v141 = [v137 performSelector:"accessibilityIdentifier"];
          v142 = v141;
          if (v141 && ![v141 isEqualToString:v140])
          {
            v190 = v140;
            v143 = [NSString stringWithFormat:@"%@<%p, %@>", v140, v137, v142];

            v139 = v190;
          }

          else
          {

            v139 = v140;
LABEL_184:
            v143 = [NSString stringWithFormat:@"%@<%p>", v139, v137];
          }
        }

        else
        {
          v143 = @"<nil>";
        }

        v152 = v143;
        *buf = 138543618;
        v259 = v152;
        v260 = 2112;
        v261 = v134;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "[%{public}@] Adding cluster POI: %@", buf, 0x16u);

        v1 = v214;
        v114 = v192;
      }

      [v195 addObject:v134];
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v136 = [(POIAnnotation *)v116 keys];
      v153 = [v136 countByEnumeratingWithState:&v224 objects:v256 count:16];
      if (v153)
      {
        v154 = v153;
        v155 = *v225;
        do
        {
          for (m = 0; m != v154; m = m + 1)
          {
            if (*v225 != v155)
            {
              objc_enumerationMutation(v136);
            }

            [v60 setObject:v134 forKeyedSubscript:*(*(&v224 + 1) + 8 * m)];
          }

          v154 = [v136 countByEnumeratingWithState:&v224 objects:v256 count:16];
        }

        while (v154);
      }

LABEL_202:

      WeakRetained = v213;
      v115 = v212 + 1;
      if ((v212 + 1) != v203)
      {
        continue;
      }

      break;
    }

    v157 = [v196 countByEnumeratingWithState:&v228 objects:v257 count:16];
    v203 = v157;
    if (v157)
    {
      continue;
    }

    break;
  }

LABEL_209:

  v158 = *(v1 + 32);
  v159 = v158;
  if (v194 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v158))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v159, OS_SIGNPOST_INTERVAL_END, spid, "CreatePOIsForItemsCalculation", "", buf, 2u);
  }

  v160 = v1;
  v161 = *(v1 + 48);
  v162 = &_dispatch_main_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F4AA24;
  block[3] = &unk_10165DF18;
  v163 = *(v160 + 72);
  block[4] = *(v160 + 56);
  v222 = v163;
  v216 = v60;
  v217 = *(v160 + 40);
  v218 = v206;
  v219 = v204;
  v220 = v199;
  v221 = v195;
  objc_copyWeak(&v223, (v160 + 80));
  dispatch_group_notify(v161, &_dispatch_main_q, block);

  objc_destroyWeak(&v223);
  v164 = v216;
LABEL_238:

LABEL_239:
LABEL_240:
}

void sub_100F4AA24(uint64_t a1)
{
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F4BB60;
  block[3] = &unk_10165DEC8;
  v132 = *(a1 + 88);
  v133 = &v134;
  block[4] = v2;
  v130 = *(a1 + 40);
  v131 = *(a1 + 48);
  dispatch_sync(v3, block);
  if (*(v135 + 24) != 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
    v4 = [WeakRetained _selectedLabelMarker];

    v12 = [v4 featureAnnotation];
    v13 = sub_1000177D0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_21;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ([v17 isEqualToString:v16] & 1) == 0)
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

LABEL_21:
    v21 = v19;
    v22 = sub_100F4BBF0(*(a1 + 56));
    v23 = sub_100F4BBF0(*(a1 + 64));
    v24 = sub_100F4BBF0(*(a1 + 72));
    v25 = sub_100F4BBF0(*(a1 + 80));
    *buf = 138544642;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v143 = v22;
    *v144 = 2112;
    *&v144[2] = v23;
    *&v144[10] = 2112;
    *&v144[12] = v24;
    v145 = 2112;
    v146 = v25;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] POI calculation complete:\nSelected: %@\nRemoving: %@\nRemoving Clusters: %@\nAdding: %@\nAdding Clusters: %@", buf, 0x3Eu);

LABEL_22:
    v26 = *(*(a1 + 32) + 32);
    v27 = [*(a1 + 56) allObjects];
    [v26 removeAnnotations:v27];

    v28 = *(*(a1 + 32) + 32);
    v29 = [*(a1 + 72) allObjects];
    [v28 addAnnotations:v29];

    v30 = [*(a1 + 64) count];
    v31 = [*(a1 + 80) count];
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_100F4BC38;
    v126[3] = &unk_101661480;
    v126[4] = *(a1 + 32);
    v127 = *(a1 + 48);
    objc_copyWeak(&v128, (a1 + 96));
    v32 = objc_retainBlock(v126);
    if (v31)
    {
      *(*(a1 + 32) + 56) = 0;
      v33 = [*(*(a1 + 32) + 40) annotationCount];
      v34 = [*(a1 + 32) allowSingleSearchResult];
      if (&v33[v31 - v30] == 1)
      {
        v35 = v34;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      [*(*(a1 + 32) + 40) setSceneID:v36];
      v37 = *(*(a1 + 32) + 40);
      v38 = [*(a1 + 64) allObjects];
      [v37 removeAnnotations:v38];

      v39 = *(*(a1 + 32) + 40);
      v40 = [*(a1 + 80) allObjects];
      [v39 addAnnotations:v40];

      v41 = *(a1 + 32);
      v42 = *(v41 + 40);
      v43 = [*(v41 + 48) allObjects];
      [v42 removeAnnotations:v43];

      [*(*(a1 + 32) + 48) removeAllObjects];
      [*(*(a1 + 32) + 40) showScene];
      v44 = sub_1000177D0();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      if (!v45)
      {
        v50 = @"<nil>";
        goto LABEL_47;
      }

      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      if (objc_opt_respondsToSelector())
      {
        v48 = [v45 performSelector:"accessibilityIdentifier"];
        v49 = v48;
        if (v48 && ([v48 isEqualToString:v47] & 1) == 0)
        {
          v50 = [NSString stringWithFormat:@"%@<%p, %@>", v47, v45, v49];

          goto LABEL_36;
        }
      }

      v50 = [NSString stringWithFormat:@"%@<%p>", v47, v45];
LABEL_36:

LABEL_47:
      *buf = 138543362;
      *&buf[4] = v50;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[%{public}@] Showing clustering features scene", buf, 0xCu);

LABEL_48:
      goto LABEL_54;
    }

    if (!v30)
    {
LABEL_54:
      (v32[2])(v32);
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
LABEL_99:
        v91 = [*(a1 + 32) mapView];
        v92 = [v91 _mapLayer];
        v93 = [v92 selectedLabelMarker];
        if (v93)
        {
        }

        else
        {
          v94 = [*(a1 + 32) mapView];
          v95 = [v94 _applicationState] == 9;

          if (v95)
          {
            goto LABEL_104;
          }

          v91 = [*(a1 + 32) mapView];
          v92 = [v91 _mapLayer];
          [v92 clearPreviouslySelectedLabelMarker];
        }

LABEL_104:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v143 = sub_100F47F60;
        *v144 = sub_100F47F70;
        *&v144[8] = 0;
        v96 = *(a1 + 32);
        v97 = *(v96 + 8);
        v119[0] = _NSConcreteStackBlock;
        v119[1] = 3221225472;
        v119[2] = sub_100F4BF90;
        v119[3] = &unk_10165DEF0;
        v98 = *(a1 + 88);
        v119[4] = v96;
        v119[5] = v98;
        v119[6] = buf;
        dispatch_sync(v97, v119);
        v99 = sub_1000177D0();
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
LABEL_114:

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v106 = *(*&buf[8] + 40);
          v107 = [v106 countByEnumeratingWithState:&v115 objects:v138 count:16];
          if (v107)
          {
            v108 = *v116;
            do
            {
              for (i = 0; i != v107; i = i + 1)
              {
                if (*v116 != v108)
                {
                  objc_enumerationMutation(v106);
                }

                (*(*(*(&v115 + 1) + 8 * i) + 16))();
              }

              v107 = [v106 countByEnumeratingWithState:&v115 objects:v138 count:16];
            }

            while (v107);
          }

          _Block_object_dispose(buf, 8);
          objc_destroyWeak(&v128);

          goto LABEL_122;
        }

        v100 = *(a1 + 32);
        if (!v100)
        {
          v105 = @"<nil>";
          goto LABEL_113;
        }

        v101 = objc_opt_class();
        v102 = NSStringFromClass(v101);
        if (objc_opt_respondsToSelector())
        {
          v103 = [v100 performSelector:"accessibilityIdentifier"];
          v104 = v103;
          if (v103 && ([v103 isEqualToString:v102] & 1) == 0)
          {
            v105 = [NSString stringWithFormat:@"%@<%p, %@>", v102, v100, v104];

            goto LABEL_111;
          }
        }

        v105 = [NSString stringWithFormat:@"%@<%p>", v102, v100];
LABEL_111:

LABEL_113:
        *v139 = 138543362;
        v140 = v105;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "[%{public}@] Update complete, calling post-update blocks", v139, 0xCu);

        goto LABEL_114;
      }

      v61 = v12;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v62 = [v61 keys];
      v63 = [v62 countByEnumeratingWithState:&v120 objects:v141 count:16];
      if (v63)
      {
        v64 = *v121;
LABEL_58:
        v65 = 0;
        while (1)
        {
          if (*v121 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v120 + 1) + 8 * v65)];
          if (v66)
          {
            break;
          }

          if (v63 == ++v65)
          {
            v63 = [v62 countByEnumeratingWithState:&v120 objects:v141 count:16];
            if (v63)
            {
              goto LABEL_58;
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
LABEL_64:
        v66 = 0;
      }

      v67 = [*(a1 + 32) activeInjectedAnnotation];
      v68 = [v61 isEqual:v67];

      if (v68)
      {
        v69 = v61;

        v66 = v69;
      }

      if (v66)
      {
        v70 = [v66 isEqual:v61];
        if ([v66 isMarkedLocation] && objc_msgSend(v61, "isMarkedLocation"))
        {
          v71 = [v66 title];
          v72 = [v61 title];
          v73 = [v71 isEqualToString:v72];

          v74 = v73 ^ 1;
        }

        else
        {
          v74 = 0;
        }

        if (v70 && !v74)
        {
          goto LABEL_98;
        }

        v75 = objc_loadWeakRetained((*(a1 + 32) + 120));
        v76 = [v75 _labelMarkerForCustomFeatureAnnotation:v66];

        log = sub_1000177D0();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_96;
        }

        v77 = *(a1 + 32);
        if (!v77)
        {
          v83 = @"<nil>";
          goto LABEL_95;
        }

        v78 = objc_opt_class();
        v112 = NSStringFromClass(v78);
        if (objc_opt_respondsToSelector())
        {
          v79 = [v77 performSelector:"accessibilityIdentifier"];
          v80 = v79;
          if (v79)
          {
            v81 = v79;
            v82 = [v79 isEqualToString:v112];
            v80 = v81;
            if ((v82 & 1) == 0)
            {
              v110 = [NSString stringWithFormat:@"%@<%p, %@>", v112, v77, v81];
              v111 = v81;
              v83 = v110;

              goto LABEL_81;
            }
          }
        }

        v83 = [NSString stringWithFormat:@"%@<%p>", v112, v77];
LABEL_81:

LABEL_95:
        *buf = 138543874;
        *&buf[4] = v83;
        *&buf[12] = 2112;
        *&buf[14] = v76;
        *&buf[22] = 1024;
        LODWORD(v143) = v74;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] Selecting new label marker that matches existing selection %@. isMarkedLocationWithNewTitle: %d", buf, 0x1Cu);

LABEL_96:
        v90 = objc_loadWeakRetained((*(a1 + 32) + 120));
        [v90 _selectLabelMarker:v76 animated:0];

        goto LABEL_97;
      }

      v84 = sub_1000177D0();
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
LABEL_93:

        v76 = objc_loadWeakRetained((*(a1 + 32) + 120));
        [v76 _deselectLabelMarkerAnimated:1];
LABEL_97:

LABEL_98:
        goto LABEL_99;
      }

      v85 = *(a1 + 32);
      if (!v85)
      {
        v89 = @"<nil>";
        goto LABEL_92;
      }

      v86 = objc_opt_class();
      loga = NSStringFromClass(v86);
      if (objc_opt_respondsToSelector())
      {
        v87 = [v85 performSelector:"accessibilityIdentifier"];
        v88 = v87;
        if (v87 && ([v87 isEqualToString:loga] & 1) == 0)
        {
          v89 = [NSString stringWithFormat:@"%@<%p, %@>", loga, v85, v88];

          goto LABEL_89;
        }
      }

      v89 = [NSString stringWithFormat:@"%@<%p>", loga, v85];
LABEL_89:

LABEL_92:
      *buf = 138543362;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "[%{public}@] Deselecting label marker", buf, 0xCu);

      goto LABEL_93;
    }

    v51 = *(*(a1 + 32) + 40);
    v52 = [*(a1 + 80) allObjects];
    [v51 addAnnotations:v52];

    [*(*(a1 + 32) + 48) unionHashTable:*(a1 + 64)];
    [*(*(a1 + 32) + 40) hideScene];
    v53 = sub_1000177D0();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
LABEL_53:

      v60 = dispatch_time(0, 1000000000);
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_100F4BF1C;
      v124[3] = &unk_101661090;
      v124[4] = *(a1 + 32);
      v125 = v32;
      dispatch_after(v60, &_dispatch_main_q, v124);

      goto LABEL_54;
    }

    v54 = objc_loadWeakRetained((a1 + 96));
    if (!v54)
    {
      v59 = @"<nil>";
      goto LABEL_52;
    }

    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    if (objc_opt_respondsToSelector())
    {
      v57 = [v54 performSelector:"accessibilityIdentifier"];
      v58 = v57;
      if (v57 && ([v57 isEqualToString:v56] & 1) == 0)
      {
        v59 = [NSString stringWithFormat:@"%@<%p, %@>", v56, v54, v58];

        goto LABEL_45;
      }
    }

    v59 = [NSString stringWithFormat:@"%@<%p>", v56, v54];
LABEL_45:

LABEL_52:
    *buf = 138543362;
    *&buf[4] = v59;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "[%{public}@] Hiding clustering features scene", buf, 0xCu);

    goto LABEL_53;
  }

  v4 = sub_1000177D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
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
      if (v8 && ([v8 isEqualToString:v7] & 1) == 0)
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_19:
    v20 = *(*(*(a1 + 88) + 8) + 24);
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Counter (%d) updated while updating label markers; aborting early", buf, 0x12u);
  }

LABEL_122:

  _Block_object_dispose(&v134, 8);
}

void sub_100F4BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  objc_destroyWeak(&a51);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_100F4BB60(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2 == atomic_fetch_add_explicit((*(a1 + 32) + 72), 0, memory_order_relaxed))
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v6 = *(a1 + 48);
    v7 = (*(a1 + 32) + 64);

    objc_storeStrong(v7, v6);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

__CFString *sub_100F4BBF0(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = @"none";
  }

  v3 = v2;

  return v2;
}

void sub_100F4BC38(id *a1)
{
  v2 = [a1[4] _preferredDisplayedSearchResultTypeWithItems:a1[5]];
  if (!v2)
  {
    v3 = [*(a1[4] + 5) allAnnotations];
    v4 = [v3 count];
    if (v4 == 1)
    {
      v10 = [v3 firstObject];
      if ([v10 isLabelPOI])
      {
        if (*(a1[4] + 56))
        {
          v2 = 0;
        }

        else
        {
          v2 = 2;
        }
      }

      else if ([v10 isVenueOrBuilding])
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (v4)
    {
LABEL_18:
      v2 = 1;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = a1[5];
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v19 + 1) + 8 * i) wantsDisplayedSearchResultsTypePoints])
            {

              goto LABEL_18;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v2 = 0;
    }
  }

  v11 = sub_1000177D0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_loadWeakRetained(a1 + 6);
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_33;
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

        goto LABEL_31;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_31:

LABEL_33:
    *buf = 138543618;
    v24 = v17;
    v25 = 2048;
    v26 = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Setting map view search results type: %ld", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1[4] + 15);
  [WeakRetained _setDisplayedSearchResultsType:v2];
}

uint64_t sub_100F4BF1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = [*(v2 + 48) allObjects];
  [v3 removeAnnotations:v4];

  [*(*(a1 + 32) + 48) removeAllObjects];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void *sub_100F4BF90(void *result)
{
  v1 = result[4];
  if (*(*(result[5] + 8) + 24) == *(v1 + 72))
  {
    v2 = result;
    v3 = [*(v1 + 88) copy];
    v4 = *(v2[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    result = [*(v2[4] + 88) removeAllObjects];
    *(v2[4] + 76) = 0;
  }

  return result;
}

void sub_100F4C094(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 _createPOIsForItems:v2];
}

uint64_t sub_100F4C158(uint64_t result)
{
  *(*(result + 32) + 76) = 1;
  atomic_fetch_add_explicit((*(result + 32) + 72), 1u, memory_order_relaxed);
  return result;
}

void sub_100F4C480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak((v15 - 72));
  _Unwind_Resume(a1);
}

id sub_100F4C4A8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100F4C4DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100F47F60;
  v26 = sub_100F47F70;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100F47F60;
  v20 = sub_100F47F70;
  v21 = 0;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100F4C70C;
    v11 = &unk_10165DE78;
    v12 = *(a1 + 32);
    v13 = v3;
    v14 = &v22;
    v15 = &v16;
    dispatch_sync(v4, &v8);

    if (!v23[5])
    {
      if (v17[5])
      {
        v5 = [v3 injectSearchResult:{v8, v9, v10, v11}];
        v6 = v23[5];
        v23[5] = v5;
      }
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v23[5]);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void sub_100F4C67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100F4C6A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[76] == 1)
  {
    [v2 _addAfterUpdateBlock:*(*(*(a1 + 40) + 8) + 40)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_100F4C70C(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v19 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v18 + 1) + 8 * v6);
      v8 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:{v7, v18}];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v7;
        v12 = [MKMapItem alloc];
        v13 = [v11 geoMapItem];
        v14 = [v12 initWithGeoMapItem:v13 isPlaceHolderPlace:0];

        v15 = [[SearchResult alloc] initWithMapItem:v14];
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_100F4CB30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100F4CB7C(uint64_t a1)
{
  [*(a1 + 32) _createPOIsForItems:&__NSArray0__struct];
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F4CC5C;
  v3[3] = &unk_10165DE50;
  objc_copyWeak(&v4, &location);
  v3[4] = *(a1 + 40);
  [v2 _addAfterUpdateBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_100F4CC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F4CC5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createPOIsForItems:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_100F4D590(id a1)
{
  v3[0] = &off_1016EA9B8;
  v3[1] = &off_1016EA9D0;
  v4[0] = @"navigationRouteGuidanceDisplayComponentID";
  v4[1] = @"index";
  v3[2] = &off_1016EA9E8;
  v3[3] = &off_1016EAA00;
  v4[2] = @"maneuverDescription";
  v4[3] = @"maneuverType";
  v3[4] = &off_1016EAA18;
  v3[5] = &off_1016EAA30;
  v4[4] = @"afterManeuverRoadName";
  v4[5] = @"distanceBetweenManeuver";
  v3[6] = &off_1016EAA48;
  v3[7] = &off_1016EAA60;
  v4[6] = @"distanceBetweenManeuverDisplayString";
  v4[7] = @"distanceBetweenManeuverDisplayUnits";
  v3[8] = &off_1016EAA78;
  v3[9] = &off_1016EAA90;
  v4[8] = @"drivingSide";
  v4[9] = @"junctionType";
  v3[10] = &off_1016EAAA8;
  v3[11] = &off_1016EAAC0;
  v4[10] = @"junctionElementAngle";
  v4[11] = @"junctionElementExitAngle";
  v3[12] = &off_1016EAAD8;
  v3[13] = &off_1016EAAF0;
  v4[12] = @"linkedLaneGuidanceInfo";
  v4[13] = @"exitInfo";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
  v2 = qword_10195F7A8;
  qword_10195F7A8 = v1;
}

void sub_100F4D778(id a1)
{
  v15[0] = &off_1016EA490;
  v15[1] = &off_1016EA4A8;
  v16[0] = @"NotSet";
  v16[1] = @"km";
  v15[2] = &off_1016EA4C0;
  v15[3] = &off_1016EA4D8;
  v16[2] = @"miles";
  v16[3] = @"m";
  v15[4] = &off_1016EA4F0;
  v15[5] = &off_1016EA508;
  v16[4] = @"yards";
  v16[5] = @"ft";
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  v13[0] = &off_1016EA490;
  v13[1] = &off_1016EA4A8;
  v14[0] = @"NotSet";
  v14[1] = @"Right";
  v13[2] = &off_1016EA4C0;
  v14[2] = @"Left";
  v1 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11[0] = &off_1016EA490;
  v11[1] = &off_1016EA4A8;
  v12[0] = @"NotSet";
  v12[1] = @"Normal";
  v11[2] = &off_1016EA4C0;
  v12[2] = @"Roundabout";
  v2 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9[0] = &off_1016EA490;
  v9[1] = &off_1016EA4A8;
  v10[0] = @"NotSet";
  v10[1] = @"NO_TURN";
  v9[2] = &off_1016EA4C0;
  v9[3] = &off_1016EA4D8;
  v10[2] = @"LEFT_TURN";
  v10[3] = @"RIGHT_TURN";
  v9[4] = &off_1016EA4F0;
  v9[5] = &off_1016EA508;
  v10[4] = @"STRAIGHT_AHEAD";
  v10[5] = @"U_TURN";
  v9[6] = &off_1016EA520;
  v9[7] = &off_1016EA538;
  v10[6] = @"FOLLOW_ROAD";
  v10[7] = @"ENTER_ROUNDABOUT";
  v9[8] = &off_1016EA550;
  v9[9] = &off_1016EA568;
  v10[8] = @"EXIT_ROUNDABOUT";
  v10[9] = @"OFF_RAMP";
  v9[10] = &off_1016EA580;
  v9[11] = &off_1016EA598;
  v10[10] = @"ON_RAMP";
  v10[11] = @"ARRIVE_END_OF_NAVIGATION";
  v9[12] = &off_1016EA5B0;
  v9[13] = &off_1016EA5C8;
  v10[12] = @"START_ROUTE";
  v10[13] = @"ARRIVE_AT_DESTINATION";
  v9[14] = &off_1016EA5E0;
  v9[15] = &off_1016EA5F8;
  v10[14] = @"KEEP_LEFT";
  v10[15] = @"KEEP_RIGHT";
  v9[16] = &off_1016EA610;
  v9[17] = &off_1016EA628;
  v10[16] = @"ENTER_FERRY";
  v10[17] = @"EXIT_FERRY";
  v9[18] = &off_1016EA640;
  v9[19] = &off_1016EA658;
  v10[18] = @"CHANGE_FERRY";
  v10[19] = @"START_ROUTE_WITH_U_TURN";
  v9[20] = &off_1016EA670;
  v9[21] = &off_1016EA688;
  v10[20] = @"U_TURN_AT_ROUNDABOUT";
  v10[21] = @"LEFT_TURN_AT_END";
  v9[22] = &off_1016EA6A0;
  v9[23] = &off_1016EA6B8;
  v10[22] = @"RIGHT_TURN_AT_END";
  v10[23] = @"HIGHWAY_OFF_RAMP_LEFT";
  v9[24] = &off_1016EA6D0;
  v9[25] = &off_1016EA6E8;
  v10[24] = @"HIGHWAY_OFF_RAMP_RIGHT";
  v10[25] = @"ARRIVE_AT_DESTINATION_LEFT";
  v9[26] = &off_1016EA700;
  v9[27] = &off_1016EA718;
  v10[26] = @"ARRIVE_AT_DESTINATION_RIGHT";
  v10[27] = @"U_TURN_WHEN_POSSIBLE";
  v9[28] = &off_1016EA730;
  v9[29] = &off_1016EA748;
  v10[28] = @"ARRIVE_END_OF_DIRECTIONS";
  v10[29] = @"ROUNDABOUT_EXIT_1";
  v9[30] = &off_1016EA760;
  v9[31] = &off_1016EA778;
  v10[30] = @"ROUNDABOUT_EXIT_2";
  v10[31] = @"ROUNDABOUT_EXIT_3";
  v9[32] = &off_1016EA790;
  v9[33] = &off_1016EA7A8;
  v10[32] = @"ROUNDABOUT_EXIT_4";
  v10[33] = @"ROUNDABOUT_EXIT_5";
  v9[34] = &off_1016EA7C0;
  v9[35] = &off_1016EA7D8;
  v10[34] = @"ROUNDABOUT_EXIT_6";
  v10[35] = @"ROUNDABOUT_EXIT_7";
  v9[36] = &off_1016EA7F0;
  v9[37] = &off_1016EA808;
  v10[36] = @"ROUNDABOUT_EXIT_8";
  v10[37] = @"ROUNDABOUT_EXIT_9";
  v9[38] = &off_1016EA820;
  v9[39] = &off_1016EA838;
  v10[38] = @"ROUNDABOUT_EXIT_10";
  v10[39] = @"ROUNDABOUT_EXIT_11";
  v9[40] = &off_1016EA850;
  v9[41] = &off_1016EA868;
  v10[40] = @"ROUNDABOUT_EXIT_12";
  v10[41] = @"ROUNDABOUT_EXIT_13";
  v9[42] = &off_1016EA880;
  v9[43] = &off_1016EA898;
  v10[42] = @"ROUNDABOUT_EXIT_14";
  v10[43] = @"ROUNDABOUT_EXIT_15";
  v9[44] = &off_1016EA8B0;
  v9[45] = &off_1016EA8C8;
  v10[44] = @"ROUNDABOUT_EXIT_16";
  v10[45] = @"ROUNDABOUT_EXIT_17";
  v9[46] = &off_1016EA8E0;
  v9[47] = &off_1016EA8F8;
  v10[46] = @"ROUNDABOUT_EXIT_18";
  v10[47] = @"ROUNDABOUT_EXIT_19";
  v9[48] = &off_1016EA910;
  v9[49] = &off_1016EA928;
  v10[48] = @"SHARP_LEFT_TURN";
  v10[49] = @"SHARP_RIGHT_TURN";
  v9[50] = &off_1016EA940;
  v9[51] = &off_1016EA958;
  v10[50] = @"SLIGHT_LEFT_TURN";
  v10[51] = @"SLIGHT_RIGHT_TURN";
  v9[52] = &off_1016EA970;
  v9[53] = &off_1016EA988;
  v10[52] = @"CHANGE_HIGHWAY";
  v10[53] = @"CHANGE_HIGHWAY_LEFT";
  v9[54] = &off_1016EA9A0;
  v10[54] = @"CHANGE_HIGHWAY_RIGHT";
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:55];
  v7[0] = @"maneuverType";
  v7[1] = @"distanceBetweenManeuverDisplayUnits";
  v8[0] = v3;
  v8[1] = v6;
  v7[2] = @"drivingSide";
  v7[3] = @"junctionType";
  v8[2] = v1;
  v8[3] = v2;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = qword_10195F798;
  qword_10195F798 = v4;
}

void sub_100F4F9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100F4F9D4(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    LODWORD(v4) = 20.0;
    v5 = [v11 addSliderRowWithTitle:@"Masking Texture alpha factor" subtitleStringFormat:@"factor:  %1.1f" min:&stru_10165DFC0 max:&stru_10165E000 get:0.0 set:v4];
    LODWORD(v6) = 1008981770;
    LODWORD(v7) = 0.5;
    v8 = [v11 addSliderRowWithTitle:@"Mask corner radius to shorter edge ratio" subtitleStringFormat:@"ratio:  %1.2f" min:&stru_10165E020 max:&stru_10165E040 get:v6 set:v7];
    LODWORD(v9) = 1041865114;
    v10 = [v11 addSliderRowWithTitle:@"Mask corner radius zoom based bias step" subtitleStringFormat:@"ratio:  %1.2f" min:&stru_10165E060 max:&stru_10165E080 get:0.0 set:v9];
  }
}

void sub_100F4FADC(id a1, float a2)
{
  v3 = +[VKDebugSettings sharedSettingsExt];
  *&v4 = a2;
  [v3 setMaskingOverlayRadiusZoomCorrectionStep:v4];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

float sub_100F4FB68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maskingOverlayRadiusZoomCorrectionStep];
  v3 = v2;

  return v3;
}

void sub_100F4FBB0(id a1, float a2)
{
  v3 = +[VKDebugSettings sharedSettingsExt];
  *&v4 = a2;
  [v3 setMaskingOverlayRadiusEdgeRatio:v4];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

float sub_100F4FC3C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maskingOverlayRadiusEdgeRatio];
  v3 = v2;

  return v3;
}

void sub_100F4FC84(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMaskingOverlayOpacityFactor:v3];
}

float sub_100F4FCDC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maskingOverlayOpacityFactor];
  v3 = v2;

  return v3;
}

uint64_t sub_100F5041C(uint64_t result)
{
  v1 = *(*(result + 32) + 152);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 152), 1, 1, *(result + 40));
  }

  return result;
}

uint64_t sub_100F50614(uint64_t a1)
{
  result = *(*(a1 + 32) + 152);
  if (result)
  {
    return (*(result + 16))(result, 0, 1, *(a1 + 40));
  }

  return result;
}

void sub_100F53A88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F53AA8(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100F53B84;
  v11[3] = &unk_10165E0D0;
  v9 = *(a1 + 32);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  [WeakRetained dismissViewControllerAnimated:1 completion:v11];
}

uint64_t sub_100F53B84(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

void sub_100F53F38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 window];
  v4 = [v5 windowScene];
  [v4 setTitle:v3];
}

void sub_100F54460(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v19 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:v2 options:1 error:&v19];
  v4 = v19;

  v5 = objc_opt_new();
  v6 = [NSString stringWithFormat:@"VectorKit Fault"];
  [v5 setTitle:v6];

  if (v4)
  {
    v7 = [NSString stringWithFormat:@"Failed to serialize payload - %@", v4];
  }

  else
  {
    v7 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  v8 = v7;
  [v5 addNote:v7];

  v9 = +[MapsRadarComponent mapsMapDisplayComponent];
  [v5 setComponent:v9];

  [v5 setClassification:6];
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_13;
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

        goto LABEL_11;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_11:

LABEL_13:
    *buf = 138543362;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for VectorKit crash", buf, 0xCu);
  }

  v17 = +[MapsRadarController sharedInstance];
  v18 = [*(a1 + 40) chromeViewController];
  [v17 launchTTRWithRadar:v5 promptTitle:@"VectorKit has encountered a serious error" fromViewController:v18];
}

void sub_100F547F0(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setTitle:@"geod Crashed"];
  v3 = +[MapsRadarComponent mapsGeoServicesComponent];
  [v2 setComponent:v3];

  [v2 setClassification:2];
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
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
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for geod crash", buf, 0xCu);
  }

  v11 = +[MapsRadarController sharedInstance];
  v12 = [*(a1 + 32) chromeViewController];
  [v11 launchTTRWithRadar:v2 promptTitle:@"the Geo Daemon appears to have crashed" fromViewController:v12];
}

void sub_100F54AD8(id a1)
{
  v1 = objc_alloc_init(MapsSuggestionsDonater);
  v2 = qword_10195F7B8;
  qword_10195F7B8 = v1;

  v3 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
  v4 = qword_10195F7C0;
  qword_10195F7C0 = v3;
}

void sub_100F551E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  _Block_object_dispose((v27 - 160), 8);
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F5525C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7 && WeakRetained)
  {
    v4 = [v7 data];
    v5 = [WeakRetained entryPointsCoordinator];
    [v5 openNotificationData:v4 forType:@"MapsPushNotificationTypeAnnouncement" recordIdentifier:0];

    v6 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    [v6 clearCurrentAnnouncement];
  }
}

uint64_t sub_100F5531C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F55334(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100F554C0;
  v2[3] = &unk_10165E1A8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100F553B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = v10;
    if (WeakRetained)
    {
      v5 = WeakRetained;
      if ([v10 hasFloorOrdinal])
      {
        v6 = [v10 floorOrdinal];
      }

      else
      {
        v6 = 0x7FFFFFFFLL;
      }

      [v10 coordinate];
      v7 = [SearchResult customSearchResultWithCoordinate:v6 floorOrdinal:?];
      [v10 timestamp];
      [v7 setTimestamp:?];
      v8 = +[CustomSearchManager sharedManager];
      [v8 setCustomSearchResult:v7 animated:0 shouldSelectOnMap:0];

      v9 = [v5 searchPinsManager];
      [v9 setDroppedPin:v7 animated:0 shouldSelect:0];

      v3 = v10;
    }
  }
}

void sub_100F554C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (v2 == 1)
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

void sub_100F5613C(id a1)
{
  v1 = +[MKLocationManager sharedLocationManager];
  [v1 isLocationServicesAvailable];
}

void sub_100F56E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F56E8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100005610();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LoadMapsForScene", "", buf, 2u);
    }

    if (*(a1 + 40) == 1)
    {
      v4 = sub_100005610();
      if (os_signpost_enabled(v4))
      {
        *v14 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlatformControllerReplaySessions", "", v14, 2u);
      }

      v5 = [WeakRetained platformController];
      [v5 replaySessions];

      v6 = sub_100005610();
      if (os_signpost_enabled(v6))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlatformControllerReplaySessions", "", v13, 2u);
      }

      v7 = sub_100005610();
      if (os_signpost_enabled(v7))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CarPlayNavigation", "", v12, 2u);
      }

      v8 = +[CarDisplayController sharedInstance];
      v9 = [v8 isAnyCarSceneHostingDrivingNavigation];

      [WeakRetained updateDirectionsListVisibility:v9];
      v10 = sub_100005610();
      if (os_signpost_enabled(v10))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CarPlayNavigation", "", v11, 2u);
      }
    }
  }
}

void sub_100F581F4(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100F58250(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100F582AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _loadCachedWebBundleVersion];
  v5 = sub_100038318();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 version];
    v7 = [*(a1 + 40) version];
    *buf = 138413058;
    v32 = v3;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v4;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "buildInManifest: %@, builtInVersion: %@, cachedVersion: %@, downloadedManifest Version:%@", buf, 0x2Au);
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  v10 = [v8 version];
  LODWORD(v9) = [v9 _isVersion:v10 newerThan:v4];

  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v30 = 0;
  [v11 _updateCachedBundleFromDownloadedBundleDirectoryWithManifest:v12 error:&v30];
  v13 = v30;
  v14 = sub_100038318();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Fail to update cached bundle from downloaded bundle, error: %@", buf, 0xCu);
    }

LABEL_9:
    if (v3)
    {
      v16 = *(a1 + 32);
      v17 = [v3 version];
      LODWORD(v16) = [v16 _isVersion:v17 newerThan:v4];

      if (v16)
      {
        v18 = sub_100038318();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v3 version];
          *buf = 138412290;
          v32 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Updating cached bundle from built-in directory, version: %@", buf, 0xCu);
        }

        v20 = *(a1 + 32);
        v29 = 0;
        [v20 _updateCachedBundleFromBuiltInDirectoryWithManifest:v3 error:&v29];
        v21 = v29;
        v22 = sub_100038318();
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Fail to update cached bundle from built-in directory: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v27 = [v3 version];
            *buf = 138412290;
            v32 = v27;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Successfully update cached bundle from built-in directory, version: %@", buf, 0xCu);
          }

          v28 = *(a1 + 32);
          v23 = [v3 version];
          [v28 _updateCachedWebBundleVersion:v23];
        }
      }
    }

    v26 = sub_100038318();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Finish Updating Web Bundle", buf, 2u);
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = [*(a1 + 40) version];
    *buf = 138412290;
    v32 = v24;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully update cached bundle from downloaded bundle, version: %@", buf, 0xCu);
  }

  v25 = *(a1 + 32);
  v26 = [*(a1 + 40) version];
  [v25 _updateCachedWebBundleVersion:v26];
LABEL_25:
}

void sub_100F59428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F59450(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v7 && (v9 = *(a1 + 48)) != 0)
    {
      (*(v9 + 16))(v9, v7);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v14 = 0;
      [WeakRetained _saveFileData:v6 toDirectory:v10 toFilePath:v11 error:&v14];
      v12 = v14;
      v13 = *(a1 + 48);
      if (v13)
      {
        (*(v13 + 16))(v13, v12);
      }
    }
  }
}

void sub_100F596F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F59730(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 filename];
    v6 = [WeakRetained[1] manifestSignedResourceName];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100F597C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v4)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6 = +[GEOResourceManager sharedManager];
      v7 = [WeakRetained[1] manifestSignedResourceName];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100F598D8;
      v8[3] = &unk_10165E2E0;
      v9 = *(a1 + 32);
      [v6 dataForSignedResourceWithName:v7 fallbackBundle:0 fallbackNameHandler:0 resultHandler:v8];
    }
  }
}

id sub_100F598D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [WebBundleFileHelper parseManifestFileFromData:a2 withCompletion:*(a1 + 32)];
  }
}

void sub_100F599A0(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100F59C8C;
  v26[4] = sub_100F59C9C;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100F59CA4;
  v21[3] = &unk_10165E218;
  v23 = v26;
  v3 = v2;
  v22 = v3;
  v4 = objc_retainBlock(v21);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100F59C8C;
  v19[4] = sub_100F59C9C;
  v20 = 0;
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F59D7C;
  v12[3] = &unk_10165E268;
  v7 = v4;
  v14 = v7;
  objc_copyWeak(&v17, &location);
  v12[4] = *(a1 + 32);
  v15 = v19;
  v16 = v24;
  v8 = v3;
  v13 = v8;
  [v5 _downloadManifestWithForce:v6 completion:v12];
  v9 = *(*(a1 + 32) + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F5A5A8;
  v10[3] = &unk_10165E290;
  objc_copyWeak(&v11, &location);
  v10[4] = *(a1 + 32);
  v10[5] = v26;
  v10[6] = v19;
  v10[7] = v24;
  dispatch_group_notify(v8, v9, v10);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void sub_100F59C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F59C8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F59CA4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = sub_100038318();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Download Web Bundle Error: %@", &v6, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100F59D7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_49;
  }

  v7 = [v5 version];

  if (!v7)
  {
    v17 = sub_100038318();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Manifest version is nil", buf, 2u);
    }

    v18 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-5 userInfo:0];
    (*(*(a1 + 48) + 16))();

    goto LABEL_49;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_48;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = [v6 version];
  v69 = [v9 directoryForNewWebBundleName:v10];

  v11 = sub_100038318();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v6 version];
    *buf = 138412290;
    *v88 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Version Downloading: %@", buf, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v85 = 0;
  v13 = [WeakRetained loadWebBundleManifestWithError:&v85];
  v14 = v85;
  v15 = sub_100038318();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v13 version];
    *buf = 138412290;
    *v88 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Version Installed: %@", buf, 0xCu);
  }

  if (v14)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_47;
  }

  v63 = 0;
  v65 = objc_alloc_init(NSMutableSet);
  v64 = objc_alloc_init(NSMutableSet);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [v6 files];
  v19 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (!v19)
  {
    goto LABEL_34;
  }

  v20 = v19;
  v21 = *v82;
  do
  {
    v22 = 0;
    v66 = v20;
    do
    {
      v23 = v13;
      v24 = v6;
      if (*v82 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v81 + 1) + 8 * v22);
      v26 = [WeakRetained[1] webBundleDirectory];
      v27 = [v25 filePath];
      v28 = [v26 URLByAppendingPathComponent:v27];

      v72 = v28;
      v29 = [WeakRetained _fileHashForFile:v28];
      v71 = v25;
      v30 = [v25 fileHash];
      v31 = [v29 isEqualToString:v30];

      v6 = v24;
      v32 = [v24 version];
      v13 = v23;
      v33 = [v23 version];
      if (![v32 isEqualToString:v33])
      {
        v43 = WeakRetained;

        if (v31)
        {
LABEL_24:
          v44 = sub_100038318();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v45 = v71;
            v46 = [v71 filePath];
            *buf = 138412290;
            *v88 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Queue file to move: %@", buf, 0xCu);

            v47 = v64;
LABEL_31:

            [v47 addObject:v45];
            goto LABEL_32;
          }

          v47 = v64;
        }

        else
        {
LABEL_26:
          v44 = sub_100038318();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v45 = v71;
            v48 = [v71 filePath];
            *buf = 138412290;
            *v88 = v48;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Queue file to download: %@", buf, 0xCu);

            v47 = v65;
            goto LABEL_31;
          }

          v47 = v65;
        }

        v45 = v71;
        goto LABEL_31;
      }

      v34 = [WeakRetained[1] webBundleDirectory];
      v35 = [WeakRetained[1] absoluteCachedWebBundleDirectory];
      v36 = WeakRetained;
      v37 = v31;
      v38 = v21;
      v39 = v23;
      v40 = v36;
      v41 = v6;
      v42 = v35;
      v68 = [v34 isEqual:v35];

      v6 = v41;
      v43 = v40;
      v13 = v39;
      v21 = v38;

      v20 = v66;
      if ((v37 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v68)
      {
        goto LABEL_24;
      }

LABEL_32:

      v22 = v22 + 1;
      WeakRetained = v43;
    }

    while (v20 != v22);
    v20 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  }

  while (v20);
LABEL_34:

  v49 = sub_100038318();
  v50 = v64;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v51 = [v65 count];
    v52 = [v64 count];
    *buf = 67109376;
    *v88 = v51;
    *&v88[4] = 1024;
    *&v88[6] = v52;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Files to download: %d, files to move: %d", buf, 0xEu);
  }

  if ([v64 count] || objc_msgSend(v65, "count"))
  {
    v73 = v6;
    v53 = WeakRetained;
    v54 = [WeakRetained[1] webBundleDirectory];
    v55 = [WebBundleFileHelper copyToDirectory:v69 fromDirectory:v54 files:v64];
    [v65 addObjectsFromArray:v55];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v56 = v65;
    v57 = [v56 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v78;
      do
      {
        for (i = 0; i != v58; i = i + 1)
        {
          if (*v78 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v77 + 1) + 8 * i);
          dispatch_group_enter(*(a1 + 40));
          v62 = [v61 filePath];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100F5A828;
          v74[3] = &unk_10165E240;
          v76 = *(a1 + 48);
          v75 = *(a1 + 40);
          [v53 _downloadWebBundleFileWithPath:v62 inDirectory:v69 withCompletion:v74];
        }

        v58 = [v56 countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v58);
    }

    v6 = v73;
    WeakRetained = v53;
    v50 = v64;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 40));

  v14 = v63;
LABEL_47:

LABEL_48:
LABEL_49:
}

void sub_100F5A5A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      [WeakRetained _downloadCompleteWithNewDirectory:0 withError:?];
      goto LABEL_17;
    }

    v4 = *(*(a1 + 32) + 8);
    v5 = [*(*(*(a1 + 48) + 8) + 40) version];
    v6 = [v4 directoryForNewWebBundleName:v5];

    v7 = [*(*(*(a1 + 48) + 8) + 40) files];
    v21 = 0;
    v8 = [v3 _fileHashesInFiles:v7 areEqualToFilesInDirectory:v6 error:&v21];
    v9 = v21;

    if (v8)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        [v3 _downloadCompleteWithNewDirectory:0 withError:v9];
LABEL_16:

        goto LABEL_17;
      }

      v18 = *(*(*(a1 + 48) + 8) + 40);
      v20 = 0;
      [v3 _saveWebBundleManifestToDevice:v18 error:&v20];
      v13 = v20;
      v15 = v3;
      v16 = v6;
      v17 = v13;
    }

    else
    {
      v10 = sub_100038318();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v6 absoluteURL];
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Hashes didn't match, removing files in directory: %@", buf, 0xCu);
      }

      v12 = +[NSFileManager defaultManager];
      v19 = 0;
      [v12 removeItemAtURL:v6 error:&v19];
      v13 = v19;

      if (v13)
      {
        v14 = sub_100038318();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Fail to remove files, error: %@", buf, 0xCu);
        }
      }

      v15 = v3;
      v16 = 0;
      v17 = v9;
    }

    [v15 _downloadCompleteWithNewDirectory:v16 withError:v17];

    goto LABEL_16;
  }

LABEL_17:
}

void sub_100F5A828(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

id sub_100F5C4B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 legs];
  v6 = [v5 count];

  if (v6 < 2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [v4 legIndexForStepIndex:{objc_msgSend(v3, "stepIndex")}];
  v9 = [v4 legs];
  if (v8 >= [v9 count])
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v10 = [v4 legs];
    v11 = [v10 objectAtIndexedSubscript:v8];

    if (!v11 || ([v4 legs], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "lastObject"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11 == v13) || (v14 = objc_msgSend(v11, "endStepIndex"), v14 != objc_msgSend(v3, "stepIndex")))
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = [v11 destination];
    v7 = objc_opt_new();
    [v7 updateFromGEOComposedWaypoint:v9];
  }

LABEL_11:
LABEL_12:

  return v7;
}

void sub_100F5D7E0(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) objectAtIndexPath:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mapItem];
    v6 = [v5 _geoMapItem];
    v7 = [v6 _hasEVCharger];

    if (v7)
    {
      v8 = [*(a1 + 32) placeSummaryTemplateForSearchResult:v4 indexPath:v12];
      if (v8)
      {
        v9 = *(*(a1 + 32) + 216);
        v10 = [v4 mapItem];
        v11 = [v10 _identifier];
        [v9 setObject:v8 forKeyedSubscript:v11];
      }
    }
  }
}

void sub_100F5EF58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setUnpairedVehicles:*(a1 + 32)];
    WeakRetained = v3;
  }
}

NSString *__cdecl sub_100F5F064(id a1, VGVehicle *a2, unint64_t a3)
{
  v3 = a2;
  v4 = +[NSMutableString string];
  v5 = [(VGVehicle *)v3 pairedAppIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1016631F0;
  }

  [v4 appendString:v7];

  v8 = [(VGVehicle *)v3 displayName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  [v4 appendString:v10];

  v11 = [(VGVehicle *)v3 year];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1016631F0;
  }

  [v4 appendString:v13];

  v14 = [(VGVehicle *)v3 model];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1016631F0;
  }

  [v4 appendString:v16];

  v17 = [(VGVehicle *)v3 manufacturer];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &stru_1016631F0;
  }

  [v4 appendString:v18];

  v19 = [v4 copy];

  return v19;
}

void sub_100F5F2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([*(WeakRetained + 6) count])
    {
      v3 = +[UIApplication sharedMapsDelegate];
      v4 = [v3 appCoordinator];
      v5 = [v4 baseActionCoordinator];

      [v5 presentVehicleOnboardingWithVehicles:v2[6] completion:0];
    }

    else
    {
      v6 = sub_10006250C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "User selected EV routing feature source, but there were no unpaired vehicles.", v7, 2u);
      }
    }
  }
}

void sub_100F5F49C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F5F540;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v2, (a1 + 32));
  if (qword_10195F7C8 != -1)
  {
    dispatch_once(&qword_10195F7C8, block);
  }

  objc_destroyWeak(&v2);
}

void sub_100F5F540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10006250C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User viewed EV suggestion.", v3, 2u);
    }

    [WeakRetained _markCurrentVehicleCombinationAsViewed];
  }
}

void sub_100F5F668(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10006250C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User dismissed EV suggestion.", v3, 2u);
    }

    WeakRetained[24] = 1;
    [WeakRetained _reloadAvailability];
  }
}

void sub_100F5FF84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_100F5FFB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSelectModel];
}

void sub_100F5FFF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didViewModel];
}

void sub_100F60038(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_100F6012C(uint64_t a1)
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

void sub_100F60244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    if (v4 != WeakRetained[25])
    {
      WeakRetained[25] = v4;
      v5 = sub_10006250C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        if (*(v3 + 25))
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
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did update availability of EV routing to %@.", buf, 0xCu);
      }

      v8 = *(v3 + 2);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100F603B0;
      v9[3] = &unk_101661368;
      objc_copyWeak(&v10, (a1 + 32));
      v11 = *(a1 + 40);
      dispatch_async(v8, v9);
      objc_destroyWeak(&v10);
    }
  }
}

void sub_100F603B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    [v3 source:v4 didUpdateAvailability:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_100F60878(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 waypointAtIndex:a3];
  (*(*(a1 + 40) + 16))();
}

void sub_100F60A4C(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_10165E440];
  v2 = qword_10195F7D0;
  qword_10195F7D0 = v1;
}

void sub_100F60AAC(id a1, RelatedSearchSuggestionOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
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

  [(RelatedSearchSuggestionOutlineCell *)v8 setCellModel:v7];
}

void sub_100F61D7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textLabel];
  [v2 setText:v1];
}

id sub_100F628C0()
{
  if (qword_10195F7E8 != -1)
  {
    dispatch_once(&qword_10195F7E8, &stru_10165E460);
  }

  v1 = qword_10195F7E0;

  return v1;
}

void sub_100F62914(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionDailyUsageEntry");
  v2 = qword_10195F7E0;
  qword_10195F7E0 = v1;
}

void sub_100F63CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ForwardGeocodeAction resolveMapItem: %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
    if ([v5 count])
    {
      v9 = [v5 firstObject];

      v8 = v9;
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

BOOL sub_100F655D4(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v7 historyEntry], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "conformsToProtocol:", v4), v8, v9))
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [v10 historyEntry];
    v12 = [v11 geoMapItem];
    v13 = [MKMapItem _itemWithGeoMapItem:v12];

    v14 = [v13 _isMapItemTypeSettlement];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100F662D8(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) updateIdentifier];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    [*(a1 + 40) setImage:v5];
  }
}

void sub_100F66364(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NSThread isMainThread])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100F66438;
    v4[3] = &unk_101661090;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_100F6644C(id a1)
{
  v10.width = 40.0;
  v10.height = 40.0;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  v1 = +[UIColor grayColor];
  [v1 set];

  v2 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 40.0, 40.0];
  [v2 fill];

  v3 = +[UIColor whiteColor];
  [v3 set];

  v8 = [UIImage _mapsCar_systemImageNamed:@"magnifyingglass"];
  [v8 size];
  [v8 drawInRect:{20.0 - v4 * 0.5, 20.0 - v5 * 0.5, v4}];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  v7 = qword_10195F7F0;
  qword_10195F7F0 = v6;

  UIGraphicsEndImageContext();
}

void sub_100F67704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F67720(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsSearchLoading:0];
    if (!a3)
    {
      v7 = [v11 mapItems];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [v11 mapItems];
        v10 = [v9 firstObject];

        [v6 _addSubscriptionForMapItem:v10];
      }
    }
  }
}

void sub_100F685F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F6861C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained searchDataSource];
    v9 = [v8 sectionForSectionIndex:a2];

    v10 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
    v11 = +[UIColor clearColor];
    [v10 setBackgroundColor:v11];

    v12 = [v9 headerText];
    [v10 setHeaderMode:{objc_msgSend(v12, "length") != 0}];

    [v10 setFooterMode:0];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100F6880C;
    v21 = &unk_10165E4C8;
    objc_copyWeak(&v23, (a1 + 32));
    v13 = v9;
    v22 = v13;
    [v10 setItemSeparatorHandler:&v18];
    v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v10 layoutEnvironment:v5, v18, v19, v20, v21];
    v15 = [v14 boundarySupplementaryItems];
    v16 = [v15 firstObject];
    [v16 setPinToVisibleBounds:0];

    objc_destroyWeak(&v23);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_100F6880C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained searchDataSource];
    v10 = [v9 numberOfItemsInSection:*(a1 + 32)] - 1;

    if ([v5 item] == v10)
    {
      [v6 setBottomSeparatorVisibility:2];
    }
  }

  return v6;
}

void sub_100F69B04(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 routePlanningSession:*(a1 + 32) didReceiveUpdates:*(a1 + 40) forRoutesResult:*(a1 + 48)];
}

void sub_100F69E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  _Block_object_dispose(&a22, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_100F69EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F69EC8(uint64_t a1, void *a2)
{
  v3 = sub_100021DB0(a2, &stru_10165E7E0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

RouteCollection *__cdecl sub_100F69F20(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [[RouteCollection alloc] initWithRoutes:v2 currentRouteIndex:0];

  return v3;
}

void sub_100F6A768(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(WeakRetained[18], &state);
    v6 = [(os_activity_t *)v5 isolationQueue];
    label = dispatch_queue_get_label(v6);
    v8 = dispatch_queue_get_label(0);
    if (label == v8)
    {
    }

    else
    {
      if (!label || !v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = strcmp(label, v8) == 0;

      if (!v9)
      {
LABEL_14:
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100F6ACA0;
        block[3] = &unk_101661A90;
        block[4] = v5;
        v23 = *(a1 + 32);
        dispatch_async(&_dispatch_main_q, block);
        v15 = [(os_activity_t *)v5 isolationQueue];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100F6ACF4;
        v21[3] = &unk_101661650;
        v21[4] = v5;
        v21[5] = a2;
        dispatch_sync(v15, v21);

        v16 = *(a1 + 32);
        v19[4] = v5;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100F6AEC4;
        v20[3] = &unk_10165E750;
        v20[4] = v5;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100F6AF94;
        v19[3] = &unk_10165F7B8;
        [v16 withValue:v20 orError:v19];
        v17 = [(os_activity_t *)v5 isolationQueue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100F6B05C;
        v18[3] = &unk_101661B18;
        v18[4] = v5;
        dispatch_sync(v17, v18);

        os_activity_scope_leave(&state);
        goto LABEL_15;
      }
    }

    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(os_activity_t *)v5 isolationQueue];
      v12 = dispatch_queue_get_label(v11);
      *buf = 136316162;
      v26 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]_block_invoke";
      v27 = 2080;
      v28 = "RoutePlanningSession.m";
      v29 = 1024;
      v30 = 827;
      v31 = 2080;
      v32 = "strongSelf.isolationQueue";
      v33 = 2080;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", buf, 0x30u);
    }

    if (!sub_100E03634())
    {
      goto LABEL_14;
    }

    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v26 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_100F6AB58(uint64_t a1, uint64_t a2)
{
  v4 = +[MapsSuggestionsPredictor sharedPredictor];
  v5 = v4;
  v6 = a2 - 1;
  if ((a2 - 1) > 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = dword_101216100[v6];
  }

  [v4 capturePredictedTransportationMode:v7];

  v8 = sub_100798A3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (v6 > 4)
    {
      v11 = @"Undefined";
    }

    else
    {
      v11 = off_10165E8C8[v6];
    }

    v13 = 134349314;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}p] Determined default transport type: %@", &v13, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100F6ACA0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 routePlanningSession:*(a1 + 32) didFinishResolvingWaypointSet:*(a1 + 40)];
}

id sub_100F6ACF4(uint64_t a1)
{
  if (![*(a1 + 32) currentTransportType])
  {
    [*(a1 + 32) setCurrentTransportType:*(a1 + 40) userInitiated:0];
  }

  result = [*(a1 + 32) currentTransportType];
  if (!result)
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[RoutePlanningSession waypointController:didResolveWaypointSet:]_block_invoke_2";
      v10 = 2080;
      v11 = "RoutePlanningSession.m";
      v12 = 1024;
      v13 = 839;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v8, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }

    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] Transport type is undefined; defaulting to driving before fetching routes", &v8, 0xCu);
    }

    return [*(a1 + 32) setCurrentTransportType:1 userInitiated:0];
  }

  return result;
}

void sub_100F6AEC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134349315;
    v7 = v5;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] Waypoints loaded successfully: %{private}@", &v6, 0x16u);
  }

  [*(a1 + 32) _handleReceivedWaypointSetResult];
}

void sub_100F6AF94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134349314;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Waypoint loading failed: %@", &v6, 0x16u);
  }
}

void sub_100F6B05C(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  v3 = [v2 allKeys];

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
        v9 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
        v10 = [v9 objectForKey:v8];

        [*(a1 + 32) _notifyObserversDidUpdateRouteCollectionResult:v10 forTransportType:{objc_msgSend(v8, "integerValue")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_100F6B2C0(uint64_t a1)
{
  v30.opaque[0] = 0;
  v30.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 144), &v30);
  v2 = [*(a1 + 32) resolvedWaypoints];
  v3 = v2 == 0;

  if (v3)
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[RoutePlanningSession _handleReceivedWaypointSetResult]_block_invoke";
      v33 = 2080;
      v34 = "RoutePlanningSession.m";
      v35 = 1024;
      v36 = 784;
      v37 = 2080;
      v38 = "self.resolvedWaypoints != nil";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v4 = [*(a1 + 32) routeLoadingController];
  v5 = v4 == 0;

  if (v5)
  {
    v8 = [RouteLoadingController alloc];
    v9 = [*(a1 + 32) resolvedWaypoints];
    v10 = [*(a1 + 32) configuration];
    v11 = [v10 routeLoadingTaskFactory];
    v12 = [(RouteLoadingController *)v8 initWithWaypointSet:v9 taskFactory:v11];
    [*(a1 + 32) setRouteLoadingController:v12];

    v13 = *(a1 + 32);
    v14 = [v13 routeLoadingController];
    [v14 setDelegate:v13];

    [*(a1 + 32) _updateLoadingControllerForRealtimeUpdates];
  }

  else
  {
    v6 = [*(a1 + 32) resolvedWaypoints];
    v7 = [*(a1 + 32) routeLoadingController];
    [v7 setWaypointSet:v6];
  }

  v15 = [*(a1 + 32) sessionInitiator];
  v16 = [*(a1 + 32) routeLoadingController];
  v17 = [v16 routeLoadingTaskFactory];
  [v17 setInitiator:v15];

  v18 = [*(a1 + 32) configuration];
  LOBYTE(v15) = [v18 areInitialRoutesBeingFetchedExternally];

  if (v15)
  {
    v19 = sub_100798A3C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 134349056;
      v32 = v20;
      v21 = "[%{public}p] Routes are being fetched externally; not fetching routes ourselves";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    }
  }

  else
  {
    v22 = [*(a1 + 32) routeLoadingController];
    v23 = [v22 isActive];

    v19 = sub_100798A3C();
    v24 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v24)
      {
        v25 = *(a1 + 32);
        *buf = 134349056;
        v32 = v25;
        v21 = "[%{public}p] Route loading is already in progress; not requesting again";
        goto LABEL_11;
      }
    }

    else
    {
      if (v24)
      {
        v26 = *(a1 + 32);
        *buf = 134349056;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}p] Start fetching routes now", buf, 0xCu);
      }

      v19 = [*(a1 + 32) routeLoadingController];
      -[NSObject refreshRoutesForTransportType:](v19, "refreshRoutesForTransportType:", [*(a1 + 32) currentTransportType]);
    }
  }

  os_activity_scope_leave(&v30);
}

void sub_100F6BBE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = WeakRetained;
      [v3 _setAutomaticSharingContacts:*(a1 + 40) forShortcutIdentifier:*(a1 + 48)];
      WeakRetained = v4;
    }
  }
}

void sub_100F6BDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F6CF88(uint64_t a1)
{
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 134349056;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}p] Got accurate location; will start resolving waypoints now", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6D0AC;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
}

void sub_100F6D0AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[25] = 0;
    v3 = [WeakRetained waypointController];
    [v3 start];
  }

  else
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "RoutePlanningSession disappeared before we could start resolving waypoints", v4, 2u);
    }
  }
}

void sub_100F6D764(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100F6D77C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained currentRouteCollection];
    v4 = [v3 isEqual:*(a1 + 32)];

    WeakRetained = v5;
    if (v4)
    {
      [v5 _setIsInACustomRouteRegion:*(*(*(a1 + 40) + 8) + 24)];
      WeakRetained = v5;
    }
  }
}

void sub_100F6DB80(uint64_t a1)
{
  v1 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  [v1 removeAllObjects];
}

void sub_100F6E224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  _Block_object_dispose((v31 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_100F6E278(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  v3 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

void sub_100F6E2F0(uint64_t a1)
{
  [*(a1 + 32) _updateIsInACustomRouteRegionForRouteCollection:*(a1 + 40)];
  v2 = [*(a1 + 32) observers];
  [v2 routePlanningSession:*(a1 + 32) didUpdateRouteCollectionResult:*(a1 + 48) forTransportType:*(a1 + 56)];

  v3 = sub_100798A3C();
  v4 = v3;
  v5 = *(a1 + 64);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "SetSelectedRoute", "", v6, 2u);
  }
}

void sub_100F6EC00(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 routePlanningSession:*(a1 + 32) didChangeCurrentTransportType:*(*(a1 + 32) + 88) userInitiated:*(a1 + 40)];
}

void sub_100F6EF18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  [v2 _updateIsInACustomRouteRegionForRouteCollection:v3];

  v4 = [*(a1 + 32) observers];
  [v4 routePlanningSession:*(a1 + 32) didUpdateRouteCollectionResult:*(a1 + 40) forTransportType:*(a1 + 48)];
}

void sub_100F6F2CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 32) resolvedWaypoints];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    [v6 _notifyObserversDidUpdateRouteCollectionResult:v7 forTransportType:v8];
  }
}

void sub_100F6F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100F6F648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100F6F938(uint64_t a1)
{
  v3 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v3 removeObjectForKey:v2];
}

void sub_100F6FAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100F6FC6C(uint64_t a1)
{
  v2 = [*(a1 + 32) isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6FD58;
  block[3] = &unk_10165E540;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_sync(v2, block);
}

void sub_100F6FD04(uint64_t a1, uint64_t a2)
{
  v3 = [Result resultWithError:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100F6FD58(uint64_t a1)
{
  v6 = [*(a1 + 32) transportTypeToRouteCollectionResultsMap];
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100F71C44(uint64_t a1)
{
  v3 = [*(a1 + 32) mapView];
  v2 = [*(a1 + 40) camera];
  [v3 setCamera:v2 animated:1];
}

void sub_100F71DAC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) navigationItem];
  [v2 setLeftBarButtonItem:0];

  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = 0;

  *(*(a1 + 32) + 176) = 0;
}

void sub_100F7292C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) viewCameraSnapshotsButton];
  [v3 center];
  v5 = v4;
  v7 = v6;
  v8 = [*(a1 + 48) viewCameraSnapshotsButton];
  v9 = [v8 superview];
  [v2 convertPoint:v9 fromView:{v5, v7}];
  [*(a1 + 32) setCenter:?];

  CATransform3DMakeScale(&v13, *(a1 + 56), *(a1 + 56), *(a1 + 56));
  CATransform3DRotate(&v14, &v13, -1.57079633, 0.0, 0.0, 1.0);
  v10 = [*(a1 + 32) layer];
  v13 = v14;
  [v10 setTransform:&v13];

  v11 = [*(a1 + 32) layer];
  LODWORD(v12) = *"333?";
  [v11 setOpacity:v12];
}

void sub_100F72A5C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v4 = +[NavigationCameraSnapshotManager sharedInstance];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) tracePath];
  [v4 addCameraSnapshot:v2 toTraceFile:v3];
}

id sub_100F748E8()
{
  if (qword_10195F808 != -1)
  {
    dispatch_once(&qword_10195F808, &stru_10165EB50);
  }

  v1 = qword_10195F800;

  return v1;
}

void sub_100F7493C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionCarPlayConnectionMonitor");
  v2 = qword_10195F800;
  qword_10195F800 = v1;
}

void sub_100F75024(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ResolveMUIDAction resolveMapItem: %@", &v10, 0xCu);
    }
  }

  v8 = [v5 firstObject];
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

id sub_100F75368()
{
  if (qword_10195F818 != -1)
  {
    dispatch_once(&qword_10195F818, &stru_10165EBA8);
  }

  v1 = qword_10195F810;

  return v1;
}

void sub_100F753BC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CustomRoutesTask");
  v2 = qword_10195F810;
  qword_10195F810 = v1;
}

void sub_100F75BA4(id a1)
{
  v1 = objc_alloc_init(MapsImpressionsPlaceCardFloatingDebugViewController);
  v2 = qword_10195F820;
  qword_10195F820 = v1;
}

void sub_100F75C40(id a1)
{
  v1 = objc_alloc_init(MapsImpressionsSearchResultsFloatingDebugViewController);
  v2 = qword_10195F830;
  qword_10195F830 = v1;
}

UIFont *__cdecl sub_100F76660(id a1)
{
  v1 = +[UIFont system15];
  v2 = [UIFont _maps_cappedFont:v1 withMaxPoint:25.0];

  return v2;
}

UIFont *__cdecl sub_100F766C8(id a1)
{
  v1 = +[UIFont system22AdaptiveSemibold];
  v2 = [UIFont _maps_cappedFont:v1 withMaxPoint:31.0];

  return v2;
}

void sub_100F771BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F771F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = sub_10003D8C4();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching disk space from paired device, will hide disk space tip: %{public}@", &v10, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        v10 = 134218240;
        v11 = v9;
        v12 = 2048;
        v13 = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Paired device space needed (%lld), paired device space available (%lld)", &v10, 0x16u);
      }

      if (*(a1 + 40) - a2 >= 1)
      {
        [WeakRetained _showTipWithRequiredDiskSpace:?];
        goto LABEL_11;
      }
    }

    [WeakRetained _hideTip];
  }

LABEL_11:
}

void sub_100F77518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100F77540(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 _maps_openURL:*(a1 + 32) options:&__NSDictionary0__struct completionHandler:0];
}

void sub_100F775A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _hideTip];
    WeakRetained = v2;
  }
}

id sub_100F77F48(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  v3 = [v2 image];
  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) imageView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

id sub_100F78920()
{
  if (qword_10195F858 != -1)
  {
    dispatch_once(&qword_10195F858, &stru_10165ECB0);
  }

  v1 = qword_10195F850;

  return v1;
}

void sub_100F78974(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionTileAvailabilityMonitor");
  v2 = qword_10195F850;
  qword_10195F850 = v1;
}

void sub_100F78E24(uint64_t a1)
{
  v3 = [UIImage systemImageNamed:@"video.slash"];
  v2 = [*(a1 + 32) cameraFeedImageView];
  [v2 setImage:v3];
}

void sub_100F7916C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F79188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateCameraFrame];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 startDebugInfoRefreshTimer];
}

void sub_100F7A074(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F860;
  qword_10195F860 = v1;
}

void sub_100F7B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100F7B288(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) lineSelectionAction];
  v6 = [v5 isActive];

  v7 = v17;
  if (!v6)
  {
    goto LABEL_22;
  }

  if (*(a1 + 64) == 1)
  {
    if (a3)
    {
      goto LABEL_22;
    }

    if (v17)
    {
      v8 = v17;
    }

    else
    {
      v8 = [[IncompleteTransitLineItem alloc] initWithLabelMarker:*(a1 + 40)];
    }

    v16 = v8;
    goto LABEL_20;
  }

  if (!v17)
  {
    v11 = 0;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v9 = [*(a1 + 48) lineItem];
  v10 = [v9 muid];
  v11 = v10 == [v17 muid];

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = *(*(*(a1 + 56) + 8) + 24);
  v13 = [*(a1 + 48) lineItem];
  v14 = v12 == [v13 muid];

LABEL_11:
  v7 = v17;
  if (v11 || v14 || (*(a1 + 65) & 1) == 0)
  {
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = [[IncompleteTransitLineItem alloc] initWithLabelMarker:*(a1 + 40)];
    }

    v16 = v15;
    if (*(a1 + 65) == 1)
    {
      [*(a1 + 48) setLineItem:v15 loading:0];
LABEL_21:

      v7 = v17;
      goto LABEL_22;
    }

LABEL_20:
    [*(a1 + 32) presentLineCardForItem:v16 labelMarker:*(a1 + 40) loading:0 overDisambiguation:*(a1 + 64) preferredLayout:0];
    goto LABEL_21;
  }

LABEL_22:
}

void sub_100F7B54C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 count];
  if (!a3 && v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 firstObject];
    [v6 viewController:0 selectMapItem:v7 address:0 addToHistory:0 source:1];
  }
}

void sub_100F7B6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F7B6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F7B788;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100F7B788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [SearchFieldItem searchFieldItemWithObject:*(a1 + 32)];
    v4 = [v5 mapSelectionManager];
    [v4 clearSelectionAnimated:0];

    [v5 viewController:0 doSearchItem:v3 withUserInfo:0];
    WeakRetained = v5;
  }
}

void sub_100F7BA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F7BAB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F7BBEC;
    v6[3] = &unk_101661340;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = v3;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }

  else
  {
    v4 = sub_100798A3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to construct autocomplete person from handle ID: %@", buf, 0xCu);
    }
  }
}

void sub_100F7BBEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [SearchFieldItem searchFieldItemWithObject:*(a1 + 32)];
    v4 = [v5 mapSelectionManager];
    [v4 clearSelectionAnimated:0];

    [v5 viewController:0 doSearchItem:v3 withUserInfo:0];
    WeakRetained = v5;
  }
}

void sub_100F7BE24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v6 || !v7)
  {
    if (v6)
    {
      v14 = sub_100798A3C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: Identifier refinement ticket failed: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    v8 = [*(a1 + 32) waypointInfo];
    v9 = [v8 type];

    v10 = [PlaceCardItem alloc];
    v11 = [v5 firstObject];
    if (v9 == 2)
    {
      v12 = [*(a1 + 32) waypointInfo];
      v13 = [(PlaceCardItem *)v10 initWithMapItem:v11 chargeStationWaypointInfo:v12];

      v11 = +[MKMapService sharedService];
      [v11 captureUserAction:6098 onTarget:504 eventValue:0];
    }

    else
    {
      v13 = [(PlaceCardItem *)v10 initWithMapItem:v11];
    }

    [*(a1 + 40) presentPlaceCardForItem:v13 addToHistory:0 source:1 saveSelectionState:1];
  }
}

id sub_100F7C790(id a1, VKRouteWaypointInfo *a2)
{
  v2 = a2;
  v3 = [SearchResult alloc];
  v4 = [(VKRouteWaypointInfo *)v2 waypoint];

  v5 = [(SearchResult *)v3 initWithComposedWaypoint:v4];

  return v5;
}

void sub_100F7D4A4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) delete];
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

void sub_100F7E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F7E644(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
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

    [v7 setDisplayName:v8];
    [v4 setTitle:v8];
    [v4 _updateTitleLabel];
  }
}

void sub_100F7E9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [GEOCustomEnvironmentInfo alloc];
    v9 = @"uuid";
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [v4 initWithName:v3 displayName:v3 dictionaryRepresentation:v7];

    [v8 save];
    [*(*(a1 + 32) + 8) addCustomEnvironment:v8];
  }

  else
  {
    NSLog(@"Can't create a config with an empty name");
  }
}

id sub_100F7F4C4(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    result = [v3 state];
    if (result != 2)
    {
      return result;
    }

    v3 = *(a1 + 32);
    v4 = 1;
  }

  return [v3 setState:v4];
}

id sub_100F7FF28(uint64_t a1)
{
  [*(*(a1 + 32) + 40) fractionCompleted];
  v2 = *(*(a1 + 32) + 32);
  *&v3 = v3;
  v4 = *&v3;

  return [v2 setProgress:1 animated:0 completion:v4];
}

void sub_100F81328(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  *(*(a1 + 32) + 25) = 0;
}

void sub_100F823C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F823EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setThirdPartyPhotoSharingPreference:v7];

  v8 = [v6 count];
  if (v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Submission Generic Failure Title [UGC]" value:@"localized string not found" table:0];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Submission Generic Failure Description [UGC]" value:@"localized string not found" table:0];
    v13 = [UIAlertController alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"OK [UGC]" value:@"localized string not found" table:0];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];

    [WeakRetained presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v13 = [WeakRetained presentingViewController];
    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100F829E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
  v5 = [v4 hasDeviceReadServerSettings];

  if (v5 || [v3 count] <= 2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100F82AF4;
    v7[3] = &unk_10165F1A8;
    v8 = *(a1 + 32);
    [v6 fetchThirdPartyPhotoSharingPreferencesWithCompletion:v7];
  }
}

void sub_100F82AF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    [v5 hasOptIn];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100F83130(uint64_t a1)
{
  v2 = [*(a1 + 32) extension];
  [v2 _setEnabled:1 error:0];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [*(a1 + 32) reservationExtensionFlowViewController];
  [WeakRetained presentExtensionFlowController:v3];
}

void sub_100F831BC(uint64_t a1)
{
  v1 = [*(a1 + 32) activeBookingSession];
  [v1 endSessionWithState:2];
}

void sub_100F83484(uint64_t a1)
{
  v2 = MapsSuggestionsResourceDepotForMapsProcess();
  v3 = [v2 oneAppGuardian];
  [v3 unregisterAppTracker:*(a1 + 32)];

  v4 = [*(a1 + 32) activeBookingSession];
  [v4 endSessionWithState:2];
}

void sub_100F83598(uint64_t a1)
{
  [*(a1 + 32) setActiveRestaurantUserBooking:0];
  [*(a1 + 32) setActiveEventDiscoveryCompleted:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) alertControllerForExtensionPermission];
  [WeakRetained presentPermissionsController:v2];
}

void sub_100F836D4(uint64_t a1)
{
  v2 = [*(a1 + 32) userCurrentBookingResponse];
  v3 = [v2 userCurrentBookings];
  v11 = [v3 firstObject];

  v4 = [*(a1 + 40) extension];
  v5 = [v4 _containingAppIdentifer];
  if (isExtensionLocked())
  {
  }

  else
  {
    v6 = [v11 _maps_shouldBeDisplayed];

    if (v6)
    {
      [*(a1 + 40) setActiveRestaurantUserBooking:v11];
      goto LABEL_6;
    }
  }

  [*(a1 + 40) setActiveRestaurantUserBooking:0];
  v7 = [*(a1 + 32) userCurrentBookingUserActivity];
  [v7 setUserInfo:0];

LABEL_6:
  v8 = [*(a1 + 32) userCurrentBookingUserActivity];
  [*(a1 + 40) setActiveRestaurantUserBookingActivity:v8];

  [*(a1 + 40) setActiveEventDiscoveryCompleted:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v10 = [*(a1 + 40) reservationExtensionFlowViewController];
  [WeakRetained presentExtensionFlowController:v10];
}

void sub_100F85430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F85454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadButtons];
    WeakRetained = v2;
  }
}

void sub_100F855E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100F855FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFocused];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_100F85640(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFocused];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_100F86134(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) actionRowView];
  [v2 setAlpha:1.0];
}

id sub_100F86B2C()
{
  if (qword_10195F878 != -1)
  {
    dispatch_once(&qword_10195F878, &stru_10165F410);
  }

  v1 = qword_10195F870;

  return v1;
}

void sub_100F86B80(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarRouteGeniusModeController");
  v2 = qword_10195F870;
  qword_10195F870 = v1;
}

void sub_100F86D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F86D7C(id *a1, int a2)
{
  v4 = sub_100F86B2C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 6);
      *buf = 134349056;
      v15 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] User accepted destination handoff alert", buf, 0xCu);
    }

    v7 = +[MapsExternalDevice sharedInstance];
    v8 = a1[4];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100F86F6C;
    v10[3] = &unk_10165F3C8;
    objc_copyWeak(&v13, a1 + 6);
    v11 = a1[4];
    v12 = a1[5];
    [v7 handoffDestination:v8 completion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    if (v5)
    {
      v9 = objc_loadWeakRetained(a1 + 6);
      *buf = 134349056;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] User cancelled destination handoff alert", buf, 0xCu);
    }

    [a1[5] allowInteraction];
  }
}

void sub_100F86F6C(void **a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained chromeViewController];
    v9 = [v8 isTopContext:v7];

    if (v9)
    {
      v10 = sub_100F86B2C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"NO";
        if (a2)
        {
          v11 = @"YES";
        }

        v12 = v11;
        *buf = 134349570;
        v21 = v7;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] handoffDestination success: %@, error: %@", buf, 0x20u);
      }

      v13 = [v7 chromeViewController];
      v14 = MapsExternalDeviceHandoffResultStringForAnalytics(v5);
      [v13 captureUserAction:9020 onTarget:1006 eventValue:v14];

      if (a2)
      {
        [v7 setState:3];
        v15 = +[CarChromeModeCoordinator sharedInstance];
        [v15 displayMapBrowsing];
      }

      else
      {
        v16 = +[UIApplication sharedMapsDelegate];
        v17 = CarInterruptionUserInfoForDestinationHandoffFailure(a1[4], v5);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100F871A4;
        v18[3] = &unk_10165F3A0;
        v19 = a1[5];
        [v16 interruptApplicationWithKind:3 userInfo:v17 completionHandler:v18];

        v15 = v19;
      }
    }
  }
}

void sub_100F87CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F87CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained suggestionImageFetchIdentifier];
    v7 = [v6 isEqual:*(a1 + 32)];
    v8 = sub_100F86B2C();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v14 = 134349826;
        v15 = v5;
        v16 = 2114;
        v17 = v3;
        v18 = 2114;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage assigned image: %{public}@ (%{public}@) for suggestion: %@", &v14, 0x2Au);
      }

      [v5 setCurrentSuggestionImage:v3];
    }

    else
    {
      if (v9)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = 134350082;
        v15 = v5;
        v16 = 2114;
        v17 = v3;
        v18 = 2114;
        v19 = v6;
        v20 = 2114;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage dropping image: %{public}@ (new: %{public}@, old: %{public}@) for suggestion: %@", &v14, 0x34u);
      }
    }
  }
}

void sub_100F889EC(id a1, CarFocusGuide *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(CarFocusGuide *)v4 owningView];
  [v5 removeLayoutGuide:v4];
}

void sub_100F89DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F89E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _suggestionsCardTapped];
}

void sub_100F8A134(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSuggestion];
  v3 = [*(a1 + 32) suggestionsCard];
  [v3 setCurrentSuggestion:v2];

  v4 = [*(a1 + 32) currentSuggestion];
  v5 = [*(a1 + 32) detailCard];
  [v5 setCurrentSuggestion:v4];

  v6 = *(a1 + 32);
  v7 = [v6 currentSuggestion];
  v20 = [v6 _guidanceETAFromEntry:v7];

  v8 = [*(a1 + 32) suggestionsCard];
  [v8 setCurrentETA:v20];

  v9 = [*(a1 + 32) detailCard];
  [v9 setCurrentETA:v20];

  [*(a1 + 32) _updateHardwareBackButtonBehavior];
  v10 = [*(a1 + 32) chromeViewController];
  v11 = [v10 mapView];
  v12 = [*(a1 + 32) trackingController];
  [v12 setMapView:v11];

  v13 = [[ChromeMapSettings alloc] initWithType:2 userInterfaceIdiom:3];
  v14 = [*(a1 + 32) chromeViewController];
  v15 = [v14 transientMapSettings];
  [*(a1 + 32) setZoomedSettings:v15];

  [(ChromeMapSettings *)v13 zoomLevel];
  v17 = v16;
  v18 = [*(a1 + 32) zoomedSettings];
  [v18 setZoomLevel:v17];

  v19 = [*(a1 + 32) zoomedSettings];
  [v19 setTrackingMode:1];
}

void sub_100F8A320(uint64_t a1)
{
  v5 = [*(a1 + 32) previousTopContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v5 mapWasPanned] ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = [*(a1 + 40) trackingController];
  [v3 setForcedTrackingMode:v2];

  v4 = [*(a1 + 40) trackingController];
  [v4 setUseForcedTrackingMode:1];
}

void sub_100F8A3DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[104])
  {
    v3 = 0;
  }

  else
  {
    v3 = +[CarChromeViewController allowOneHandedZooming];
    v2 = *(a1 + 32);
  }

  v4 = [v2 mapView];
  v5 = [v4 _oneHandedZoomGestureRecognizer];
  [v5 setEnabled:v3];

  v6 = [*(a1 + 32) suggestionsCard];
  [v6 becomeCurrent];

  v7 = *(a1 + 32);
  v9 = [v7 carChromeViewController];
  v8 = [v9 nudgerizer];
  [v8 setDelegate:v7];
}

void sub_100F8A7C8(uint64_t a1)
{
  v2 = sub_100F86B2C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    *buf = 134349314;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] route=%@", buf, 0x16u);
  }

  v5 = [RouteCollection alloc];
  v13 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v7 = [(RouteCollection *)v5 initWithRoutes:v6 currentRouteIndex:0];

  v8 = [(RouteCollection *)v7 currentRoute];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F8A9A4;
  v10[3] = &unk_10165F2B8;
  objc_copyWeak(&v12, (a1 + 40));
  v9 = v7;
  v11 = v9;
  [NavigationSimulationPromptController promptIfNeededForSimulationForRoute:v8 navigationTracePlayback:0 continueWithOptions:v10];

  objc_destroyWeak(&v12);
}

void sub_100F8A9A4(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v8 = sub_100F86B2C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(v12[0]) = 134349056;
        *(v12 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _startNavigation: simulation popup was dismissed.", v12, 0xCu);
      }

      [v7 setState:1];
      v9 = [v7 detailCard];
      [v9 allowInteraction];
    }

    else
    {
      *(a2 + 16) = [WeakRetained navigationType] != 0;
      *(a2 + 33) = [v7 navigationType] == 2;
      v9 = +[CarChromeModeCoordinator sharedInstance];
      v10 = *(a1 + 32);
      v11 = *(a2 + 16);
      v12[0] = *a2;
      v12[1] = v11;
      v12[2] = *(a2 + 32);
      v13 = *(a2 + 48);
      [v9 displayNavigationForRouteCollection:v10 options:v12];
    }
  }
}

id sub_100F8DCEC()
{
  if (qword_10195F888 != -1)
  {
    dispatch_once(&qword_10195F888, &stru_10165F458);
  }

  v1 = qword_10195F880;

  return v1;
}

void sub_100F8DD40(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFContaineeViewController");
  v2 = qword_10195F880;
  qword_10195F880 = v1;
}

id sub_100F8E52C(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F8E68C;
  v5[3] = &unk_101661B18;
  v5[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:1.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F8E6D0;
  v4[3] = &unk_101661B18;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.166666667 animations:0.833333333];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F8E75C;
  v3[3] = &unk_101661B18;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.0 animations:0.666666667];
}

uint64_t sub_100F8E674(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100F8E68C(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100F8E6D0(uint64_t a1)
{
  v2 = [*(a1 + 32) instructionView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) scanningAnimationView];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) titleHeaderView];
  [v4 setAlpha:1.0];
}

void sub_100F8E75C(uint64_t a1)
{
  v1 = [*(a1 + 32) failureView];
  [v1 setAlpha:0.0];
}

id sub_100F8E8C4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F8EA0C;
  v5[3] = &unk_101661B18;
  v5[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:1.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F8EA50;
  v4[3] = &unk_101661B18;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.833333333];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F8EADC;
  v3[3] = &unk_101661B18;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.333333333 animations:0.666666667];
}

void sub_100F8EA0C(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_100F8EA50(uint64_t a1)
{
  v2 = [*(a1 + 32) instructionView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) scanningAnimationView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) titleHeaderView];
  [v4 setAlpha:0.0];
}

void sub_100F8EADC(uint64_t a1)
{
  v1 = [*(a1 + 32) failureView];
  [v1 setAlpha:1.0];
}

uint64_t sub_100F91BF8(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return GEOConfigSetBOOL();
  }
}

uint64_t sub_100F91E10(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = +[MapsOfflineUIHelper sharedHelper];
      v7 = [v6 subscriptionInfos];

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            v13 = [v12 pairedDeviceState];

            if (v13)
            {
              v14 = +[MapsOfflineUIHelper sharedHelper];
              [v14 setSubscriptionInfo:v12 shouldSyncToPairedDevice:0 completionHandler:&stru_10165F688];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }

    GEOConfigSetBOOL();
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_100F92554(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocorrectionType:1];
  [v3 setAutocapitalizationType:1];
  [v3 setClearButtonMode:1];
  [v3 setText:*(a1 + 32)];
}

uint64_t sub_100F925C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100F925DC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) text];
    UInteger = GEOConfigGetUInteger();
    if ([(__CFString *)v5 length]<= UInteger)
    {
      v4 = v5;
    }

    else
    {
      v3 = [(__CFString *)v5 substringWithRange:0, UInteger];

      v4 = v3;
    }

    v6 = v4;
    if (!v4)
    {
      v4 = &stru_1016631F0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
  }
}

void sub_100F92824(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F92920;
  v7[3] = &unk_10165F5F0;
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 40);
  v6 = v3;
  [v4 updateName:v6 forSubscriptionInfo:v8 completion:v7];
}

void sub_100F92920(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10003D9F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error updating subscriptionInfo: %@, newDisplayName: %@, error: %@", &v8, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

void sub_100F92B00(uint64_t a1, void *a2, void *a3)
{
  v34 = a2;
  v5 = a3;
  if (!v5)
  {
    v33 = a1;
    v6 = +[MapsOfflineUIHelper sharedHelper];
    v35 = [v6 alertControllerForAttemptedUpdateAll];

    if (v35)
    {
      v7 = [*(a1 + 32) chromeViewController];
      v8 = v35;
      [v7 _maps_topMostPresentViewController:v35 animated:1 completion:0];

LABEL_37:
      v5 = 0;
      goto LABEL_38;
    }

    if ([v34 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = v34;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = *v38;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = [v14 state];
          if ([v15 loadState] == 1)
          {
            goto LABEL_13;
          }

          v16 = [v14 state];
          if ([v16 loadState] == 2)
          {

LABEL_13:
LABEL_14:
            v17 = [v14 state];
            v18 = [v17 downloadedDataSize];

            v10 += v18;
            goto LABEL_15;
          }

          v19 = [v14 state];
          v20 = [v19 loadState] == 3;

          if (v20)
          {
            goto LABEL_14;
          }

LABEL_15:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v21 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
        v11 = v21;
        if (!v21)
        {
LABEL_20:

          goto LABEL_22;
        }
      }
    }

    v10 = -1;
LABEL_22:
    v22 = +[MapsOfflineUIHelper sharedHelper];
    v23 = [v22 alertControllerForInsufficientDiskSpaceForDownloadSize:v10];

    if (v23)
    {
      v24 = sub_10003D9F4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Displaying insufficient disk space alert for update of size %{bytes}llu", &buf, 0xCu);
      }

      v25 = [*(v33 + 32) chromeViewController];
      [v25 _maps_topMostPresentViewController:v23 animated:1 completion:0];

      goto LABEL_36;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x2020000000;
    v43 = 0;
    v26 = +[GEONetworkObserver sharedNetworkObserver];
    v27 = [v26 isCellConnection];

    if (v27)
    {
      BOOL = GEOConfigGetBOOL();
      if (v10 >= 0)
      {
        v29 = BOOL;
      }

      else
      {
        v29 = 0;
      }

      if (v29 != 1 || v10 >= GEOConfigGetUInteger())
      {
        v31 = +[MapsOfflineUIHelper sharedHelper];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100F92F58;
        v36[3] = &unk_10165F5C8;
        v36[4] = &buf;
        v30 = [v31 alertControllerForCellularUpdateConfirmationForSize:v10 actionHandler:v36];

        v32 = [*(v33 + 32) chromeViewController];
        [v32 _maps_topMostPresentViewController:v30 animated:1 completion:0];

        goto LABEL_35;
      }

      *(*(&buf + 1) + 24) = 1;
    }

    v30 = +[MapsOfflineUIHelper sharedHelper];
    [v30 forceUpdateAllSubscriptionsWithMode:*(*(&buf + 1) + 24)];
LABEL_35:

    _Block_object_dispose(&buf, 8);
LABEL_36:

    v8 = 0;
    goto LABEL_37;
  }

LABEL_38:
}

void sub_100F92F58(uint64_t a1, unsigned int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v3 = +[MapsOfflineUIHelper sharedHelper];
  [v3 forceUpdateAllSubscriptionsWithMode:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100F932C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100F932DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void sub_100F934E8(uint64_t a1, unsigned int a2)
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  [v4 resumeDownloadForSubscriptionInfo:*(a1 + 32) mode:a2];
}

void sub_100F939F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100F93A10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) previousTopContext];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) previousTopContext];
      if ([v4 shouldResetStateAfterResigning])
      {
        v5 = WeakRetained[3];
        WeakRetained[3] = 0;

        v6 = WeakRetained[4];
        WeakRetained[4] = 0;
      }
    }
  }
}

void sub_100F94510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F9452C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained searchResult];
    v4 = [TwoLinesContentViewModelComposer cellModelForSearchResult:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100F94E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F94E54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained sharedTripSummary];
    v4 = [TwoLinesContentViewModelComposer cellModelForSharedTripSummary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100F95548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100F95564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained transitLine];
    v4 = [TwoLinesContentViewModelComposer cellModelForTransitLine:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100F96E14(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) %@", &v5, 0x16u);
  }
}

GEOURLOptions *__cdecl sub_100F96EC8(id a1, RichMapsActivity *a2, unint64_t a3)
{
  v3 = [(RichMapsActivity *)a2 mapsActivity];
  v4 = [v3 displayOptions];

  return v4;
}

void sub_100F970D0(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) _activities %@", &v5, 0x16u);
  }
}

void sub_100F97540(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting recents: %@", &v4, 0xCu);
    }
  }
}

void sub_100F97764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting recent: %@", &v5, 0xCu);
    }
  }
}

void sub_100F97CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F97D14(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100F97D3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F97D54(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  LODWORD(v1) = vcvtpd_s64_f64(*(a1 + 72) - v3 + *(a1 + 80));
  if (v1 > 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [*(a1 + 32) stringByAppendingFormat:@" (%ds)", v1];
    [WeakRetained setTitle:v4];

LABEL_3:
    v5 = WeakRetained;
    goto LABEL_4;
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v5 = objc_loadWeakRetained((a1 + 64));
  if (v5)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        WeakRetained = v5;
        (*(v8 + 16))();
        goto LABEL_3;
      }
    }
  }

LABEL_4:
}

id sub_100F98410()
{
  if (qword_10195F898 != -1)
  {
    dispatch_once(&qword_10195F898, &stru_10165F848);
  }

  v1 = qword_10195F890;

  return v1;
}

void sub_100F98464(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateManager];
  v3 = v2;
  if (v1 > 1)
  {
    [v2 resetStateEnteredThrottleEvent:0];
  }

  else
  {
    [v2 recordStateEnteredThrottleEvent:0];
  }
}

void sub_100F984D8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionTrackingStateMonitor");
  v2 = qword_10195F890;
  qword_10195F890 = v1;
}

id sub_100F99AF8(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setState:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F99B94;
  v5[3] = &unk_101661738;
  v5[4] = v2;
  return [v3 updateSubviewsIfNeededAnimated:1 completion:v5];
}

id sub_100F99B94(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setState:0];
  v2 = *(*(a1 + 32) + 32);

  return [v2 updateSubviewsIfNeededAnimated:1];
}

id sub_100F99D50(uint64_t a1)
{
  v2 = *(a1 + 40);
  [v2 lookAroundViewHeading];
  v4 = v3;
  v5 = [v2 mapView];

  [v5 presentationYaw];
  v7 = (v4 - v6) * 0.0174532925;

  [*(*(a1 + 32) + 32) setHeading:v7];
  [*(*(a1 + 32) + 32) setState:2];
  v8 = *(*(a1 + 32) + 32);

  return [v8 updateSubviewsIfNeededAnimated:1];
}

void sub_100F9A524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F9A550(uint64_t a1, void *a2)
{
  v3 = [a2 stationary];
  v4 = sub_100F9A6B4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = 134349056;
      v11 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Detected device is stationary", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 stateManager];
    [v8 recordStateEnteredThrottleEvent:1];
  }

  else
  {
    if (v5)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = 134349056;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Detected device is not stationary", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 stateManager];
    [v8 resetStateEnteredThrottleEvent:1];
  }
}

id sub_100F9A6B4()
{
  if (qword_10195F8A8 != -1)
  {
    dispatch_once(&qword_10195F8A8, &stru_10165F8D0);
  }

  v1 = qword_10195F8A0;

  return v1;
}

void sub_100F9A708(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionDeviceMotionMonitor");
  v2 = qword_10195F8A0;
  qword_10195F8A0 = v1;
}

id sub_100F9B360()
{
  if (qword_10195F8B8 != -1)
  {
    dispatch_once(&qword_10195F8B8, &stru_10165F8F0);
  }

  v1 = qword_10195F8B0;

  return v1;
}

void sub_100F9B3B4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARRaiseToEnterTeachableMomentContaineeViewController");
  v2 = qword_10195F8B0;
  qword_10195F8B0 = v1;
}

void sub_100F9C5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100F9C5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100F9B360();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 134349056;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Close button tapped; dismissing", &v8, 0xCu);
  }

  [GEOAPPortal captureUserAction:127 target:15 value:0];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v3 sender];

  [v6 handleDismissAction:v7];
}

void sub_100F9CF18(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsSunsetSunriseObserver");
  v2 = qword_10195F8C0;
  qword_10195F8C0 = v1;
}

void sub_100F9DD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100F9DD84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100F9DD9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isBlockingIncident])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_100FA0CDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    [*(v2 + 152) setHidden:0];
    v2 = *(a1 + 32);
    v3 = &OBJC_IVAR___RoutePlanningTimingViewController__constraintsShowingArriveBy;
    v4 = &OBJC_IVAR___RoutePlanningTimingViewController__constraintsHidingArriveBy;
  }

  else
  {
    v3 = &OBJC_IVAR___RoutePlanningTimingViewController__constraintsHidingArriveBy;
    v4 = &OBJC_IVAR___RoutePlanningTimingViewController__constraintsShowingArriveBy;
  }

  [NSLayoutConstraint deactivateConstraints:*(v2 + *v4)];
  v5 = *(*(a1 + 32) + *v3);

  return [NSLayoutConstraint activateConstraints:v5];
}

void *sub_100FA0D8C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 216) & 1) == 0)
  {
    return [*(v1 + 152) setHidden:1];
  }

  return result;
}

void sub_100FA0DB8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

int64_t sub_100FA2498(id a1, NavigationCameraSnapshot *a2, NavigationCameraSnapshot *a3)
{
  v4 = a2;
  v5 = a3;
  [(NavigationCameraSnapshot *)v4 tracePlaybackTimeFraction];
  v7 = v6;
  [(NavigationCameraSnapshot *)v5 tracePlaybackTimeFraction];
  if (v7 >= v8)
  {
    [(NavigationCameraSnapshot *)v4 tracePlaybackTimeFraction];
    v11 = v10;
    [(NavigationCameraSnapshot *)v5 tracePlaybackTimeFraction];
    v9 = v11 != v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_100FA26A8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 count])
  {
    [*(a1 + 32) addObject:v8];
    v6 = *(a1 + 40);
    v7 = [NSArray arrayWithArray:v5];
    [v6 addObject:v7];
  }
}

void sub_100FA2AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _cameraSnapshotComparator];
  v10 = [v6 sortedArrayWithOptions:17 usingComparator:v8];

  v9 = [v10 mutableCopy];
  [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:v7];
}

void sub_100FA2F00(id a1)
{
  v1 = objc_alloc_init(NavigationCameraSnapshotManager);
  v2 = qword_10195F8D8;
  qword_10195F8D8 = v1;
}

void sub_100FA3104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FA311C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FA3134(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100FA3674(void *a1, void *a2, uint64_t a3)
{
  v29 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = &off_1016EE228;
    v6 = 75000.0;
  }

  else
  {
    v5 = &off_1016EE218;
    v6 = 250000.0;
  }

  v7 = [VGVehicleState alloc];
  v26 = [v29 identifier];
  v27 = a1[4];
  v8 = [NSMeasurement alloc];
  v28 = +[NSUnitLength meters];
  v24 = [v8 initWithDoubleValue:v28 unit:v6];
  v9 = [NSMeasurement alloc];
  v25 = +[NSUnitLength meters];
  v10 = [v9 initWithDoubleValue:v25 unit:500000.0];
  v11 = [NSMeasurement alloc];
  v12 = +[NSUnitEnergy kilowattHours];
  v13 = [v11 initWithDoubleValue:v12 unit:0.0];
  v14 = [NSMeasurement alloc];
  [v5 doubleValue];
  v16 = v15 * 100.0;
  v17 = +[NSUnitEnergy kilowattHours];
  v18 = [v14 initWithDoubleValue:v17 unit:v16];
  v19 = [NSMeasurement alloc];
  v20 = +[NSUnitEnergy kilowattHours];
  v21 = [v19 initWithDoubleValue:v20 unit:66.0];
  LOBYTE(v23) = 0;
  v22 = [v7 initWithIdentifier:v26 dateOfUpdate:v27 origin:0 batteryPercentage:v5 currentEVRange:v24 maxEVRange:v10 minBatteryCapacity:v13 currentBatteryCapacity:v18 maxBatteryCapacity:v21 consumptionArguments:a1[5] chargingArguments:a1[6] isCharging:v23 activeConnector:2];

  [v29 _setVehicleState:v22];
LABEL_6:
}

void sub_100FA39A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    if (!v4)
    {
      v5 = [v3 _dummyVehicles];
      v6 = v3[2];
      v3[2] = v5;

      v4 = v3[2];
    }

    v7 = [v4 copy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100FA3AE8;
    v13[3] = &unk_101661090;
    v8 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, v13);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = GEOErrorDomain();
    v12 = [NSError errorWithDomain:v11 code:-8 userInfo:0];
    (*(v10 + 16))(v10, 0, v12);
  }
}

uint64_t sub_100FA3D6C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100FA4110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 identifier];

        if (v11)
        {
          v12 = [v10 identifier];
          [v4 setObject:v10 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v24 = v5;

  v26 = objc_alloc_init(NSMutableArray);
  v25 = objc_alloc_init(NSMutableDictionary);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [v4 objectForKey:v18];
        if (v19)
        {
          v20 = [*(a1 + 40) underlyingStorage];
          v21 = [v20 dataForItemWithIdentifier:v18 error:0];

          if (v21)
          {
            v22 = [objc_alloc(objc_msgSend(objc_opt_class() "recordingClass"))];
            if (v22)
            {
              v23 = v22;
              [v25 setObject:v22 forKey:v18];
              [v26 addObject:v19];
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100FA45B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) storageIdentifier];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  [*(a1 + 32) historyContainerPerformMaintenanceForValidIdentifiers:v11 completion:&stru_10165FAD8];
}

void sub_100FA4844(id a1)
{
  v6 = [MSPMapsPaths pathsAtLocation:0];
  v1 = [MSPHistoryRAPSearchRecordingStorage alloc];
  v2 = [v6 reportAProblemSearchRecordingsPath];
  v3 = [NSURL fileURLWithPath:v2];
  v4 = [(MSPHistoryRAPStorage *)v1 initWithStorageDirectoryURL:v3];
  v5 = qword_10195F8F8;
  qword_10195F8F8 = v4;
}

void sub_100FA4950(id a1)
{
  v6 = [MSPMapsPaths pathsAtLocation:0];
  v1 = [MSPHistoryRAPDirectionsRecordingStorage alloc];
  v2 = [v6 reportAProblemDirectionsRecordingsPath];
  v3 = [NSURL fileURLWithPath:v2];
  v4 = [(MSPHistoryRAPStorage *)v1 initWithStorageDirectoryURL:v3];
  v5 = qword_10195F8E8;
  qword_10195F8E8 = v4;
}

void sub_100FA5518(uint64_t a1)
{
  v69 = +[NSMutableArray array];
  v70 = a1;
  v68 = [*(a1 + 32) connectedCarScreenInfos];
  v2 = [v68 keyEnumerator];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&stru_10165FCD8];

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 connectedScenes];
  v7 = sub_1000282CC(v6, &stru_10165FD18);
  v67 = sub_1006F76DC(v7, &stru_10165FD58);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v66 = *v73;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v73 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v72 + 1) + 8 * i);
        v12 = [v68 objectForKey:v11];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100FA5F70;
        v71[3] = &unk_10165FD80;
        v71[4] = v11;
        v13 = sub_100030774(v67, v71);
        v14 = [v13 screen];
        v15 = objc_opt_class();
        v16 = [v11 identifier];
        v17 = [NSString stringWithFormat:@"%@.screenInfo.%@.txt", v15, v16];

        v18 = [v13 _car_debugDescription];
        v19 = [v14 _car_debugDescription];
        v20 = [NSString stringWithFormat:@"CARScreenInfo:%@\nGEOCarInfo:%@\nUIWindow:%@\n%@\nUIScreen:%@\n%@\n", v11, v12, v13, v18, v14, v19];

        v21 = [MapsRadarTextAttachment attachmentWithFileName:v17 text:v20];
        [v69 addObject:v21];
      }

      v9 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v9);
  }

  v22 = +[NSMutableString string];
  if (GEOConfigGetBOOL())
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v22 appendFormat:@"HybridInstrumentClusterEnabled:%@\n", v23];
  if (GEOConfigGetBOOL())
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterEverywhere:%@\n", v24];
  if (GEOConfigGetBOOL())
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v22 appendFormat:@"HybridInstrumentClusterDynamicScalingEnabled:%@\n", v25];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineScreenPixelWidth:%f\n", v26];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineScreenPixelHeight:%f\n", v27];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineScreenPhysicalWidth:%f\n", v28];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineScreenPhysicalHeight:%f\n", v29];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineManeuverPixelWidth:%f\n", v30];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineManeuverPixelHeight:%f\n", v31];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterDynamicScaleBaselineContentScale:%f\n", v32];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterScreenPhysicalSizeDebugWidthOverride:%f\n", v33];
  GEOConfigGetDouble();
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterScreenPhysicalSizeDebugHeightOverride:%f\n", v34];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterDynamicPointScaleValueOverride:%f\n", v35];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterDynamicPixelScaleValueOverride:%f\n", v36];
  if (GEOConfigGetBOOL())
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  [v22 appendFormat:@"HybridInstrumentClusterGuidanceCardEnabled:%@\n", v37];
  if (GEOConfigGetBOOL())
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterHideSecondaryGuidance:%@\n", v38];
  if (GEOConfigGetBOOL())
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterGuidanceCardVisibleOverviewNarrow:%@\n", v39];
  if (GEOConfigGetBOOL())
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterGuidanceCardVisibleDetailNarrow:%@\n", v40];
  if (GEOConfigGetBOOL())
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterETATrayVisibleOverviewNarrow:%@\n", v41];
  if (GEOConfigGetBOOL())
  {
    v42 = @"YES";
  }

  else
  {
    v42 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterETATrayVisibleDetailNarrow:%@\n", v42];
  if (GEOConfigGetBOOL())
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterGuidanceCardVisibleOverviewWide:%@\n", v43];
  if (GEOConfigGetBOOL())
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterGuidanceCardVisibleDetailWide:%@\n", v44];
  if (GEOConfigGetBOOL())
  {
    v45 = @"YES";
  }

  else
  {
    v45 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterETATrayVisibleOverviewWide:%@\n", v45];
  if (GEOConfigGetBOOL())
  {
    v46 = @"YES";
  }

  else
  {
    v46 = @"NO";
  }

  [v22 appendFormat:@"CarPlayHybridInstrumentClusterETATrayVisibleDetailWide:%@\n", v46];
  if (GEOConfigGetBOOL())
  {
    v47 = @"YES";
  }

  else
  {
    v47 = @"NO";
  }

  [v22 appendFormat:@"HybridInstrumentClusterFlexibleUIEnabled:%@\n", v47];
  [v22 appendFormat:@"HybridInstrumentClusterDynamicPixelScaleValueOverride:%ld\n", GEOConfigGetInteger()];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterFlexibleUIManeuverMapTemplateVisibilityRequirementRatio:%f\n", v48];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterFlexibleUIManeuverMapOtherTemplateVisibilityRequirementRatio:%f\n", v49];
  [v22 appendFormat:@"HybridInstrumentClusterAlignmentStyleOverride:%ld\n", GEOConfigGetInteger()];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterAlignmentStyleManeuverScaledWidthMultiple:%f\n", v50];
  if (GEOConfigGetBOOL())
  {
    v51 = @"YES";
  }

  else
  {
    v51 = @"NO";
  }

  [v22 appendFormat:@"HybridInstrumentClusterCardAlignmentEnabled:%@\n", v51];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterNarrowAlignmentStyleCardMaxWidth:%f\n", v52];
  GEOConfigGetDouble();
  [v22 appendFormat:@"HybridInstrumentClusterFlexibleMapInsetCenteringScaledManeuverWidthMultipleRequirement:%f\n", v53];
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterAlignmentOverride:%ld\n", GEOConfigGetInteger()];
  [v22 appendFormat:@"CarPlayDefaultCenterConsoleCameraStyle:%ld\n", GEOConfigGetInteger()];
  [v22 appendFormat:@"CarPlayDefaultHybridInstrumentClusterCameraStyle:%ld\n", GEOConfigGetInteger()];
  UInteger = GEOConfigGetUInteger();
  if ((UInteger - 1) > 2)
  {
    v55 = @"Unspecified";
  }

  else
  {
    v55 = *(&off_101657748 + UInteger - 1);
  }

  v56 = v55;
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterShowHeadingIndicatorOverride:%@\n", v56];

  v57 = GEOConfigGetUInteger();
  if ((v57 - 1) > 2)
  {
    v58 = @"Unspecified";
  }

  else
  {
    v58 = *(&off_101657748 + v57 - 1);
  }

  v59 = v58;
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterShowSpeedLimitOverride:%@\n", v59];

  v60 = GEOConfigGetUInteger();
  if ((v60 - 1) > 2)
  {
    v61 = @"Unspecified";
  }

  else
  {
    v61 = *(&off_101657748 + v60 - 1);
  }

  v62 = v61;
  [v22 appendFormat:@"CarPlayHybridInstrumentClusterShowETATrayOverride:%@\n", v62];

  v63 = [NSString stringWithFormat:@"%@.hybridICConfigs.txt", objc_opt_class()];
  v64 = [MapsRadarTextAttachment attachmentWithFileName:v63 text:v22];
  [v69 addObject:v64];

  [*(v70 + 40) addAttachments:v69];
  (*(*(v70 + 48) + 16))();
}

id sub_100FA5F70(uint64_t a1, void *a2)
{
  v3 = [a2 screen];
  v4 = [v3 _displayID];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

BOOL sub_100FA5FEC(id a1, UIScene *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

int64_t sub_100FA6038(id a1, CARScreenInfo *a2, CARScreenInfo *a3)
{
  v4 = a3;
  v5 = [(CARScreenInfo *)a2 identifier];
  v6 = +[UIScreen _carScreen];
  v7 = [v6 _displayID];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v10 = [(CARScreenInfo *)v4 identifier];
    v11 = +[UIScreen _carScreen];
    v12 = [v11 _displayID];
    v13 = [v10 isEqualToString:v12];

    v9 = v13;
  }

  return v9;
}

void sub_100FA6898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 40))
    {
      v3 = sub_100006E1C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = WeakRetained[23];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Queued interruption handler fired (key:%@)", &v5, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    [WeakRetained _removeQueuedInterruptionWithKey:*(a1 + 32)];
  }
}

void sub_100FA6BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified interruption was dismissed (key:%@)", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeQueuedInterruptionWithKey:*(a1 + 32) animated:a2];
}

void sub_100FA743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FA7460(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 contexts];
  v4 = [v3 indexOfObjectPassingTest:&stru_10165FC28];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) chromeViewController];
    v6 = [v5 contexts];
    v8 = [v6 objectAtIndexedSubscript:v4];

    v7 = [*(a1 + 32) chromeViewController];
    [v7 popToContext:v8 animated:1 completion:0];
  }
}

void sub_100FA7550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mapsSuggestionsController];
  [v1 hintRefreshOfType:11];
}

BOOL sub_100FA75AC(id a1, ChromeContext *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100FA7ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FA7AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006E1C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "External Device did request repeat current guidance", v3, 2u);
    }

    [WeakRetained _repeatGuidanceForExternalDevice];
  }
}

id sub_100FA86E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 domain];
  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  v8 = [v6 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  if (![v7 length] && !objc_msgSend(v8, "length"))
  {
    if (([v5 isEqualToString:kCLErrorDomain] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", MKLocationErrorDomain))
    {
      v9 = +[MKLocationManager sharedLocationManager];
      v54 = 0;
      v10 = [v9 isLocationServicesPossiblyAvailable:&v54];
      v11 = v54;

      if (v10)
      {
        v12 = +[NSBundle mainBundle];
        v13 = [v12 localizedStringForKey:@"Current Location Not Available" value:@"localized string not found" table:0];

        v14 = +[NSBundle mainBundle];
        [v14 localizedStringForKey:@"Your current location cannot be determined at this time." value:@"localized string not found" table:0];
      }

      else
      {
        v15 = [v11 userInfo];
        v13 = [v15 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        v14 = [v11 userInfo];
        [v14 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
      }
      v16 = ;
      v7 = v13;

      v8 = v16;
    }

    else
    {
      v41 = GEOErrorDomain();
      v42 = [v5 isEqualToString:v41];

      if (v42)
      {
        v43 = +[NSBundle mainBundle];
        v44 = [v43 localizedStringForKey:@"CARPLAY ERROR No search results title" value:@"localized string not found" table:0];

        v45 = +[NSBundle mainBundle];
        v46 = [v45 localizedStringForKey:@"CARPLAY ERROR No search results message" value:@"localized string not found" table:0];

        v8 = v46;
        v7 = v44;
      }

      else
      {
        v47 = sub_100FA8E84();

        v48 = +[NSBundle mainBundle];
        v49 = [v48 localizedStringForKey:@"Route information is not available at this moment." value:@"localized string not found" table:0];

        v8 = v49;
        v7 = v47;
      }
    }
  }

  if (([v5 isEqualToString:kCFErrorDomainCFNetwork] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", NSURLErrorDomain))
  {
    if ([v3 code] == -1009)
    {
      [GEOAPPortal captureUserAction:17071 target:0 value:0];
    }

    if ([v3 code] == -1017)
    {
      v17 = sub_100FA8E84();

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"Route information is not available at this moment." value:@"localized string not found" table:0];

      v8 = v19;
      v7 = v17;
    }
  }

  if (!v3)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v20 = +[GEOPlatform sharedPlatform];
  if (![v20 isInternalInstall])
  {
    v23 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v21 = [v3 domain];
  if (![v21 isEqualToString:@"com.apple.Maps.externaldevice"])
  {
    v23 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v22 = [v3 code];

  if (v22 == 1)
  {
    v23 = [v4 objectForKeyedSubscript:@"CarDisplayHandoffDestination"];
    if (!v23)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v24 = &stru_1016631F0;
    if (v8)
    {
      v24 = v8;
    }

    v25 = [NSString stringWithFormat:@"%@\n\n[Internal] Tap Debug to share payload from iPhone.", v24];

    v26 = [MapsInterruptionAction actionWithTitle:@"Cancel" cancels:1 handler:0];
    v55[0] = v26;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100FA8EEC;
    v52[3] = &unk_101661B18;
    v20 = v23;
    v53 = v20;
    v27 = [MapsInterruptionAction actionWithTitle:@"Debug" cancels:0 handler:v52];
    v55[1] = v27;
    v23 = [NSArray arrayWithObjects:v55 count:2];

    v21 = v53;
    v8 = v25;
    goto LABEL_26;
  }

  v23 = 0;
LABEL_28:
  if (GEOConfigGetBOOL())
  {
    v28 = [v3 userInfo];
    v29 = [v28 objectForKeyedSubscript:MKErrorDirectionsErrorInfoKey];

    v30 = [v29 internalServerErrors];
    v31 = [v30 count];

    if (v31)
    {
      v50 = v5;
      v32 = v4;
      v33 = [v29 internalServerErrors];
      v34 = [v33 firstObject];
      v35 = [NSString stringWithFormat:@"[Internal Only] %@", v34];

      if (v8)
      {
        v36 = [v8 stringByAppendingFormat:@"\n\n%@", v35];

        v8 = v36;
      }

      else
      {
        v8 = v35;
      }

      v4 = v32;
      v5 = v50;
    }
  }

LABEL_36:
  if (v7 | v8)
  {
    v37 = [NSMutableDictionary dictionaryWithCapacity:3];
    v38 = v37;
    if (v7)
    {
      [v37 setObject:v7 forKeyedSubscript:@"kMapsInterruptionTitle"];
    }

    if (v8)
    {
      [v38 setObject:v8 forKeyedSubscript:@"kMapsInterruptionMessage"];
    }

    if (v23)
    {
      [v38 setObject:v23 forKeyedSubscript:@"kMapsInterruptionActions"];
    }

    v39 = [v38 copy];
  }

  else
  {
    v38 = sub_100006E1C();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Asked to create user info for error with no title or message. Bailing.", buf, 2u);
    }

    v39 = 0;
  }

  return v39;
}

id sub_100FA8E84()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"Directions Not Available [CarPlay]" value:@"localized string not found" table:0];

  return v1;
}

void sub_100FA8EEC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FA8F70;
  block[3] = &unk_101661B18;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100FA9DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) screen];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) chromeViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) chromeViewController];
      v7 = [v6 isSuppressed];

      if (!v7)
      {
        v8 = [*(a1 + 40) canReceiveEvents];
        v19 = [*(a1 + 32) chromeViewController];
        [v19 setOwnsFocus:v8];

        return;
      }
    }

    else
    {
    }
  }

  v9 = sub_100006E1C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) screen];
    if (v10)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    v13 = [*(a1 + 32) chromeViewController];
    if (v13)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    v16 = [*(a1 + 32) chromeViewController];
    if ([v16 isSuppressed])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    *buf = 138412802;
    v21 = v12;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will not act on focus deferral change, (screen:%@, chrome:%@ (suppressed? %@)", buf, 0x20u);
  }
}

void sub_100FAB590(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"CarDisplayDidUpdateTraitCollectionNotification" object:0];
}

void sub_100FAC590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FAC5B8(uint64_t a1)
{
  v2 = sub_100006E1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Running deferred screen update operation...", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForCurrentScreen];
}

id sub_100FAD174(uint64_t a1)
{
  v2 = sub_100006E1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating idle timeout assertion %p", &v5, 0xCu);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100FAE194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FAE1B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Reactivating Chrome after %#.1lfs delay", &v6, 0xCu);
    }

    v5 = WeakRetained[4];
    WeakRetained[4] = 0;
  }
}

id sub_100FAEFDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    if ([v3 isCarNavigationCompatible])
    {
      v4 = objc_alloc_init(CarNavigationModeController);
      v10 = v4;
      v5 = &v10;
    }

    else
    {
      v4 = objc_opt_new();
      v9 = v4;
      v5 = &v9;
    }
  }

  else
  {
    v4 = objc_opt_new();
    v8 = v4;
    v5 = &v8;
  }

  v6 = [NSArray arrayWithObjects:v5 count:1, v8, v9, v10];

  return v6;
}

void sub_100FAF6F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [WeakRetained carSessionStatus];
      v6 = [v5 currentSession];
      v8 = 138412546;
      v9 = v4;
      v10 = 2048;
      v11[0] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "carSession didDisconnect: %@, currentSession: %p", &v8, 0x16u);
    }

    [WeakRetained _tearDownClusterSuggestionController];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "CarDisplayController.m";
      v10 = 1026;
      LODWORD(v11[0]) = 441;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[CarDisplayController sessionDidDisconnect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100FAF894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[192] = 0;
    [WeakRetained _sendMapsSuggestionsSignals];
    [v2 _tearDownMapsSuggestionsController];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "CarDisplayController.m";
      v6 = 1026;
      v7 = 447;
      v8 = 2082;
      v9 = "[CarDisplayController sessionDidDisconnect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100FAFADC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [WeakRetained carSessionStatus];
      v6 = [v5 currentSession];
      v8 = 138412546;
      v9 = v4;
      v10 = 2048;
      v11[0] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "carSession didConnect: %@, currentSession: %p", &v8, 0x16u);
    }

    [WeakRetained _setupClusterSuggestionControllerIfNeeded];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "CarDisplayController.m";
      v10 = 1026;
      LODWORD(v11[0]) = 425;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[CarDisplayController sessionDidConnect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100FAFC7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[192] = 1;
    [WeakRetained _sendMapsSuggestionsSignals];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "CarDisplayController.m";
      v6 = 1026;
      v7 = 431;
      v8 = 2082;
      v9 = "[CarDisplayController sessionDidConnect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100FAFE40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 49) = *(a1 + 40);
    *(WeakRetained + 192) = 0;
    [WeakRetained _sendMapsSuggestionsSignals];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "CarDisplayController.m";
      v7 = 1026;
      v8 = 412;
      v9 = 2082;
      v10 = "[CarDisplayController updateMapsSuggestionsSignalForMapType:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100FB0514(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_10195F930 = [v1 BOOLForKey:@"StarkLaunchPerformanceDebug"];

  v2 = sub_100006E1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (byte_10195F930)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = v3;
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Debug launch performance: %@", &v9, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 doubleForKey:@"StarkLaunchPerformanceDelayDebug"];
  v7 = v6;

  if (v7 > 0.0)
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = qword_10193CE90;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Launch delay set to %lf seconds", &v9, 0xCu);
    }

    qword_10193CE90 = *&v7;
  }
}

id sub_100FB09A8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100FB0DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:NSURLErrorDomain];

  if (v8)
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received url error for low fuel, error: %{public}@", buf, 0xCu);
    }

    v10 = +[UIApplication sharedMapsDelegate];
    v11 = sub_100FA86E4(v6, 0);
    [v10 interruptApplicationWithKind:3 userInfo:v11 completionHandler:0];

    goto LABEL_16;
  }

  if ([v5 count])
  {
    v12 = [v5 objectAtIndexedSubscript:0];
    v13 = [v12 category];

    if (v13)
    {
      v14 = [v13 styleAttributes];
      v15 = [v14 poiCategory];
      if ([v15 isEqual:GEOPOICategoryEVCharger])
      {
      }

      else
      {
        v16 = [v13 styleAttributes];
        v17 = [v16 poiCategory];
        v18 = [v17 isEqual:GEOPOICategoryGasStation];

        if (v18)
        {
          goto LABEL_13;
        }

        v14 = sub_100006E1C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received %{public}@ as the first category for low fuel", buf, 0xCu);
        }
      }

LABEL_13:
      v19 = sub_100006E1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v5 count];
        v21 = [v13 displayString];
        *buf = 134218242;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "categories.count=%lu category=%@", buf, 0x16u);
      }

      v22 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100FB11A8;
      v24[3] = &unk_10165FDF0;
      v25 = v13;
      v26 = v22;
      v27 = *(a1 + 40);
      v10 = v13;
      v23 = [v26 searchForCategory:v10 source:6 completion:v24];

      goto LABEL_16;
    }
  }

  v10 = sub_100006E1C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received no search categories for low fuel, error: %{public}@", buf, 0xCu);
  }

LABEL_16:
}

void sub_100FB11A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SearchResult carSearchResultFromDestination:*(*(&v19 + 1) + 8 * v9), v19];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = sub_100006E1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v4 count];
    *buf = 134217984;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "searchResults.count=%lu", buf, 0xCu);
  }

  v13 = [[SearchSession alloc] initWithOrigin:1 options:2];
  [(SearchSession *)v13 setShouldBroadcast:0];
  v14 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v14 setSearchCategory:*(a1 + 32)];
  v15 = [SearchInfo searchInfoWithResults:v4];
  v16 = [*(a1 + 32) displayString];
  [v15 setSearchText:v16];

  [v15 setSelectedIndex:0];
  v17 = [*(a1 + 40) traits];
  [v15 setSearchAlongRoute:{objc_msgSend(v17, "navigating")}];

  [(SearchSession *)v13 registerObserver:*(a1 + 48)];
  [(SearchSession *)v13 restoreSearchForItem:v14 withResults:v15];
  if (![v4 count])
  {
    v18 = +[CarChromeModeCoordinator sharedInstance];
    [v18 displaySearchSession:v13];
  }
}

id CarInterruptionUserInfoForDestinationHandoffFailure(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v9 = @"CarDisplayHandoffDestination";
    v10 = v3;
    v5 = a2;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = sub_100FA86E4(v5, v6);
  }

  else
  {
    v6 = a2;
    v7 = sub_100FA86E4(v6, 0);
  }

  return v7;
}

id sub_100FB1B44(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:2];
  v3 = [NSNumber numberWithInteger:a1];
  [v2 setObject:v3 forKeyedSubscript:@"kMapsInterruptionTransportType"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Show Driving Directions [CarPlay]" value:@"localized string not found" table:0];
  v6 = [MapsInterruptionAction actionWithTitle:v5 cancels:0 handler:&stru_10165FE60];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  [v2 setObject:v7 forKeyedSubscript:@"kMapsInterruptionActions"];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Show driving directions title [CarPlay]" value:@"localized string not found" table:0];

  if ((a1 - 2) >= 4)
  {
    [v2 setObject:v9 forKeyedSubscript:@"kMapsInterruptionTitle"];
  }

  else
  {
    v10 = off_10165FEA8[a1 - 2];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:v10 value:@"localized string not found" table:0];

    [v2 setObject:v9 forKeyedSubscript:@"kMapsInterruptionTitle"];
    if (v12)
    {
      [v2 setObject:v12 forKeyedSubscript:@"kMapsInterruptionMessage"];
    }
  }

  return v2;
}

void sub_100FB1D74(id a1)
{
  v1 = +[CarDisplayController sharedInstance];
  v2 = [v1 platformController];
  v3 = [v2 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

    [v6 safelySetCurrentTransportType:1];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FB1EF4;
    block[3] = &unk_101661B18;
    v11 = v9;
    v6 = v9;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_11;
  }

LABEL_12:
}

void sub_100FB1EF4(uint64_t a1)
{
  v2 = +[CarChromeModeCoordinator sharedInstance];
  v3 = [*(a1 + 32) destination];
  v5 = @"skipEndNavigationPrompt";
  v6 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 displayRoutePlanningForDestination:v3 userInfo:v4];
}

id sub_100FB1FC8(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v7[0] = @"kMapsInterruptionSharedTripSenderName";
    v7[1] = @"kMapsInterruptionSharedTripSenderHandle";
    v8[0] = a1;
    v8[1] = a2;
    v4 = a2;
    v5 = a1;
    v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  return v2;
}

id sub_100FB2098()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"Stepping Route Advisory in CarPlay [CarPlay]" value:@"localized string not found" table:0];

  return v1;
}

id sub_100FB2100(uint64_t a1)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      return sub_100FB1B44(5);
    }

    return sub_100FB1B44(0);
  }

  if ((a1 - 1) >= 2)
  {
    if (a1 == 4)
    {
      return sub_100FB1B44(3);
    }

    return sub_100FB1B44(0);
  }

  return sub_100FB1B44(a1);
}

void sub_100FB2644(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) updateIdentifier];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    [*(*(a1 + 40) + 8) setImage:v5];
  }
}

void sub_100FB26DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NSThread isMainThread])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100FB27B0;
    v4[3] = &unk_101661090;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

id sub_100FB2D54()
{
  if (qword_10195F940 != -1)
  {
    dispatch_once(&qword_10195F940, &stru_10165FF40);
  }

  v1 = qword_10195F938;

  return v1;
}

void sub_100FB2DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 dataSourceRequiresReload:v3];

    WeakRetained = v3;
  }
}

void sub_100FB2E08(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RideBookingOutlineController");
  v2 = qword_10195F938;
  qword_10195F938 = v1;
}

void sub_100FB2F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 dataSourceRequiresReload:v3];

    WeakRetained = v3;
  }
}

id sub_100FB417C()
{
  if (qword_10195F950 != -1)
  {
    dispatch_once(&qword_10195F950, &stru_10165FF88);
  }

  v1 = qword_10195F948;

  return v1;
}

void sub_100FB41D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavIdleTimeoutTimer");
  v2 = qword_10195F948;
  qword_10195F948 = v1;
}

void sub_100FB44F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimer];
}

void sub_100FB48F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100FB4914(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvent:v3];
}

uint64_t sub_100FB525C(uint64_t a1)
{
  v2 = sub_10000B170();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(*(a1 + 32) + 24));
    v5 = 136446210;
    v6 = label;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ON QUEUE %{public}s:", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100FB5610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FB5634(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FB564C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100FB569C(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v18 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = sub_10000B170();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = v7;
          if (v9)
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_12;
            }

            v12 = v2;
            v13 = [v9 performSelector:"accessibilityIdentifier"];
            v14 = v13;
            if (v13 && ![v13 isEqualToString:v11])
            {
              v15 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v14];

              v2 = v12;
              v5 = v18;
            }

            else
            {

              v2 = v12;
              v5 = v18;
LABEL_12:
              v15 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
            }
          }

          else
          {
            v15 = @"<nil>";
          }

          v16 = *(a1 + 32);
          *buf = 138543618;
          v24 = v15;
          v25 = 2114;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NOTIFYING %{public}@ DID REMOVE %{public}@", buf, 0x16u);
        }

        [v7 decrementForToken:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v17 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v4 = v17;
    }

    while (v17);
  }
}

void sub_100FB5AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100FB5AFC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100FB5B4C(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v18 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = sub_10000B170();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = v7;
          if (v9)
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_12;
            }

            v12 = v2;
            v13 = [v9 performSelector:"accessibilityIdentifier"];
            v14 = v13;
            if (v13 && ![v13 isEqualToString:v11])
            {
              v15 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v14];

              v2 = v12;
              v5 = v18;
            }

            else
            {

              v2 = v12;
              v5 = v18;
LABEL_12:
              v15 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
            }
          }

          else
          {
            v15 = @"<nil>";
          }

          v16 = *(a1 + 32);
          *buf = 138543618;
          v24 = v15;
          v25 = 2114;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NOTIFYING %{public}@ DID ADD %{public}@", buf, 0x16u);
        }

        [v7 incrementForToken:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v17 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v4 = v17;
    }

    while (v17);
  }
}

id sub_100FB5FB4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  if (result)
  {
    result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
    if (result)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 40);

      return [v4 removeObject:v3];
    }
  }

  return result;
}

id sub_100FB6220(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_100FB6364(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allObjects];
  v3 = [v2 sortedArrayUsingComparator:&stru_10165FFC8];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

int64_t sub_100FB63D8(id a1, MapsToken *a2, MapsToken *a3)
{
  v4 = a3;
  [(MapsToken *)a2 createdTimestamp];
  v6 = v5;
  [(MapsToken *)v4 createdTimestamp];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

void sub_100FB6594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100FB65B4(void *a1)
{
  v1 = a1[4];
  if (!*(v1 + 48))
  {
    v7 = sub_10000B170();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = "No tokens stored, nothing to remove.";
      v9 = v7;
      v10 = 2;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  [*(v1 + 56) removeObject:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 48);
  *(v3 + 48) = v4 - 1;
  v5 = *(a1[4] + 48);
  v6 = sub_10000B170();
  v7 = v6;
  if (v4 == v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = v4;
      v8 = "Count %lu is the same, meaning token wasn't removed";
      v9 = v7;
      v10 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1[4] + 8);
    v12 = 138543874;
    v13 = v11;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UPDATE %{public}@: %lu -> %lu", &v12, 0x20u);
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_100FB68C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100FB68E0(uint64_t a1)
{
  v2 = [*(a1 + 32) tokenGroupName];
  if (v2)
  {
    [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4 = *(v3 + 48);
    *(v3 + 48) = v4 + 1;
    v5 = *(*(a1 + 40) + 48);
    v6 = sub_10000B170();
    v7 = v6;
    if (v4 == v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Count %lu is the same, meaning token wasn't added", &v9, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 40) + 8);
        v9 = 138543874;
        v10 = v8;
        v11 = 2048;
        v12 = v4;
        v13 = 2048;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UPDATE %{public}@: %lu -> %lu", &v9, 0x20u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void sub_100FB8508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FB8540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FB89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_100FBB320(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained _labelMarkerForCustomFeatureAnnotation:v3];

    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 _selectLabelMarker:v5 animated:1];
LABEL_6:
    }
  }

  else
  {
    v5 = sub_100035E6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) name];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No annotation for mapItem: %@.", &v7, 0xCu);
      goto LABEL_6;
    }
  }
}

void sub_100FBBBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FBBBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100798874();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error unlocking the device; will not proceed with RAP flow: %@", &buf, 0xCu);
    }

    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100FBBEC0;
    v26 = sub_100FBBED0;
    v27 = [(objc_class *)WeakRetained[10].isa rapAppStateForCurrentNavigation];
    v6 = objc_loadWeakRetained(&v4[4].isa);
    v7 = [v6 mapsSceneDelegate];
    v8 = [v7 rapPresenter];

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    isa = v4[10].isa;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100FBBED8;
    v20[3] = &unk_101660158;
    p_buf = &buf;
    v11 = v9;
    v21 = v11;
    [(objc_class *)isa getLatestRAPAppStateWithCompletion:v20];
    dispatch_group_enter(v11);
    v12 = objc_loadWeakRetained(&v4[4].isa);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100FBBFD0;
    v18[3] = &unk_101661B18;
    v13 = v11;
    v19 = v13;
    [v12 endNavigationWithCompletion:v18];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FBBFD8;
    block[3] = &unk_101661600;
    v16 = v8;
    v17 = &buf;
    v14 = v8;
    dispatch_group_notify(v13, &_dispatch_main_q, block);

    _Block_object_dispose(&buf, 8);
LABEL_6:
  }
}

uint64_t sub_100FBBEC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FBBED8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = sub_100798874();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "RAPNavigationTracker failed to provide most recent route info. Will use latest data instead. Error: %@", &v9, 0xCu);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100FBBFD8(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = sub_100798874();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User pressed thumbs down and navigation ended -> will present RAP", v5, 2u);
    }

    [*(a1 + 32) presentReportAProblemForRouteWithAppState:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "User pressed thumbs down, but there was no underlying report to present.", buf, 2u);
    }
  }
}

void sub_100FBC384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FBC3AC(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 pressedEndWithSender:v1];
}

void sub_100FBC400(uint64_t a1)
{
  [GEOAPPortal captureUserAction:140 target:505 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissTray];
}

void sub_100FBC7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FBC7E8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100035E6C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v5 = WeakRetained;
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

    *buf = 138543618;
    v30 = v10;
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User exited VLF Crowdsourcing permission card with answer: %d", buf, 0x12u);

LABEL_9:
    v11 = [WeakRetained containerViewController];
    v12 = [v11 chromeViewController];
    v13 = [v12 userLocationView];
    v14 = [v13 vlfMode];

    v15 = sub_100035E6C();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (!v16)
      {
LABEL_17:

        [WeakRetained showVLF];
        goto LABEL_26;
      }

      v17 = WeakRetained;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [v17 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

          goto LABEL_16;
        }
      }

      v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_16:

      *buf = 138543362;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] VLF is still eligible to be shown; showing now", buf, 0xCu);

      goto LABEL_17;
    }

    if (!v16)
    {
LABEL_25:

      goto LABEL_26;
    }

    v23 = WeakRetained;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_24;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_24:

    *buf = 138543362;
    v30 = v28;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] VLF is no longer eligible to be shown", buf, 0xCu);

    goto LABEL_25;
  }

LABEL_26:
}

void sub_100FBD6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FBD710(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100035E6C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v5 = WeakRetained;
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

    *buf = 138543618;
    v27 = v10;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User exited VLF Crowdsourcing permission card with answer: %d", buf, 0x12u);

LABEL_9:
    v11 = [WeakRetained canEnterPedestrianAR];
    v12 = sub_100035E6C();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (!v13)
      {
LABEL_17:

        [WeakRetained enterPedestrianAR];
        goto LABEL_26;
      }

      v14 = WeakRetained;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      if (objc_opt_respondsToSelector())
      {
        v17 = [v14 performSelector:"accessibilityIdentifier"];
        v18 = v17;
        if (v17 && ![v17 isEqualToString:v16])
        {
          v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

          goto LABEL_16;
        }
      }

      v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_16:

      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Still eligible to enter Pedestrian AR; will enter now", buf, 0xCu);

      goto LABEL_17;
    }

    if (!v13)
    {
LABEL_25:

      goto LABEL_26;
    }

    v20 = WeakRetained;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_24;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_24:

    *buf = 138543362;
    v27 = v25;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] No longer eligible to enter Pedestrian AR", buf, 0xCu);

    goto LABEL_25;
  }

LABEL_26:
}

void sub_100FBE178(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 navigationTransportType];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_7:

    goto LABEL_9;
  }

  if (v3 == 3)
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_13:
    v9 = IsEnabled_Maps182;

    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v3 == 6)
  {
    goto LABEL_7;
  }

LABEL_8:
  IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

  if (IsEnabled_DrivingMultiWaypointRoutes)
  {
LABEL_14:
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Present SAR aware Search Home", buf, 2u);
    }

    v11 = [NavCategoryListViewController alloc];
    v12 = *(a1 + 32);
    v13 = [v12 searchHomeViewController];
    v14 = [(NavCategoryListViewController *)v11 initWithDelegate:v12 usingSearchHome:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *(v15 + 16) = v14;

    [*(a1 + 32) setSearchingAlongTheRoute:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100FBE43C;
    v19[3] = &unk_101661738;
    v19[4] = v17;
    [(NavCategoryListViewController *)WeakRetained presentController:v18 animated:1 completion:v19];
    goto LABEL_17;
  }

LABEL_9:
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Present SAR category list", buf, 2u);
  }

  WeakRetained = [[NavCategoryListViewController alloc] initWithDelegate:*(a1 + 32) categories:*(a1 + 40)];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 120));
  [v8 presentController:WeakRetained];

LABEL_17:
}

void sub_100FBE39C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = v2;
    v7 = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FBE42C;
    block[3] = &unk_101661760;
    v5 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_100FBE43C(uint64_t a1)
{
  [*(*(a1 + 32) + 112) searchBarBecomeFirstResponder];
  v2 = *(*(a1 + 32) + 112);

  return [v2 cleanSearch];
}

void sub_100FBE9B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  [WeakRetained removeControllerFromStack:*(*(a1 + 32) + 16)];
}

void sub_100FBEE60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v2 = [*(a1 + 32) navigationTrayContaineeViewController];
  [WeakRetained presentController:v2 animated:*(a1 + 40) useDefaultContaineeLayout:*(a1 + 41)];
}

void sub_100FBF084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100FBF0A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mapSelectionManager];
  v2 = [v1 mapView];
  [v2 _deselectLabelMarkerAnimated:1];
}

void sub_100FBFE64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100FBFE94(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _selectedVolumeLevelHasChanged:a2];
    WeakRetained = v4;
  }
}

void sub_100FBFEE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained containerViewController];
    v3 = [v2 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    WeakRetained = v6;
    if (isKindOfClass)
    {
      v5 = [v6 containerViewController];
      [v5 popLastViewControllerAnimated:1];

      WeakRetained = v6;
    }
  }
}

void *sub_100FC02E4(void *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [_TtC4Maps29MapsSharedTripAnalyticsHelper sendSuccessAnalyticFor:result[4]];
  }

  return result;
}

void sub_100FC04BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FC04D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5[3] = v2;
    v5[4] = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FC0574;
    block[3] = &unk_101661B98;
    objc_copyWeak(v5, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v5);
  }
}

void sub_100FC0574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openShareETAController];
}

void sub_100FC08B4(uint64_t a1)
{
  v1 = [*(a1 + 32) containerViewController];
  [v1 _internal_ensurePresentationsMatchContaineeStackAllowingFault:0 allowingAnimations:0 skipUnlock:1];
}

void sub_100FC1280(uint64_t a1)
{
  v2 = sub_100799D40();
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
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] displayRoutePlanningForDestination: %@", buf, 0x16u);
  }

  v10 = +[CarChromeModeCoordinator sharedInstance];
  [v10 displayRoutePlanningForDestination:*(a1 + 40)];
}

void sub_100FC1918(id a1)
{
  v11[0] = NSFontAttributeName;
  v1 = [UIFont boldSystemFontOfSize:20.0];
  v12[0] = v1;
  v11[1] = NSForegroundColorAttributeName;
  v2 = +[UIColor labelColor];
  v12[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v4 = qword_10195F968;
  qword_10195F968 = v3;

  v9[0] = NSFontAttributeName;
  v5 = [UIFont systemFontOfSize:13.0];
  v9[1] = NSForegroundColorAttributeName;
  v10[0] = v5;
  v6 = +[UIColor labelColor];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = qword_10195F970;
  qword_10195F970 = v7;
}

void sub_100FC2B48(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) window];
    v5 = [*(*(a1 + 32) + 8) visibleCells];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100FC2CD0;
    v9[3] = &unk_1016601C8;
    v9[4] = *(a1 + 32);
    v6 = [v5 sortedArrayUsingComparator:v9];

    [v4 _maps_safeSetFocusableViews:v6];
    v7 = sub_100799D40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      *buf = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView setFocusableViews %ld", buf, 0xCu);
    }
  }
}

id sub_100FC2CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = [v5 indexPathForCell:a2];
  v8 = [*(*(a1 + 32) + 8) indexPathForCell:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void sub_100FC370C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "RefineMapItemAction resolveMapItem: %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
    if ([v5 count])
    {
      v9 = [v5 firstObject];

      v8 = v9;
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void sub_100FC46D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100FC46FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained primaryTextColor];

  return v2;
}

void sub_100FC7D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100FC7D54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isServerProvidedWaypoint] & 1) == 0)
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
    if (v5 < [*(a1 + 32) count])
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
      ++*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_5;
    }

    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[RoutePlanningSession(WaypointsOrRequests) enumerateRequestsOrWaypointsUsingBlock:]_block_invoke";
      v11 = 2080;
      v12 = "RoutePlanningSession+WaypointsOrRequests.m";
      v13 = 1024;
      v14 = 40;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
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

  v4 = 0;
LABEL_5:
  (*(*(a1 + 40) + 16))();
}

void sub_100FC7F3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 waypointAtIndex:a3];
  (*(*(a1 + 40) + 16))();
}

void sub_100FC8344(uint64_t a1)
{
  v1 = (*(a1 + 40) ^ 1u);
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:v1];
}

void sub_100FC8AD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100FC8AF4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained updateMapEdgeInsets];
    v6 = [v8 chromeViewController];
    [v6 setNeedsUpdateMapInsets];

    v5 = v8;
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, a2);
      v5 = v8;
    }
  }
}

void sub_100FC92D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FC92FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _currentAlertDidFinish];
}

void sub_100FC9A58(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_1016602C0];
  v2 = qword_10195F980;
  qword_10195F980 = v1;
}

void sub_100FC9AB8(id a1, SearchResultOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
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

  [(SearchResultOutlineCell *)v8 setCellModel:v7];
}

void sub_100FCAE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FCAED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FCAEE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 historyEntry];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FCB014;
  v12[3] = &unk_1016602E8;
  v14 = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v13 = v5;
  v15 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FCB0E4;
  v8[3] = &unk_101660310;
  v10 = *(a1 + 32);
  v9 = v5;
  v11 = v6;
  v7 = v5;
  [v4 ifSearch:v12 ifRoute:0 ifPlaceDisplay:v8 ifTransitLineItem:0];
}

void sub_100FCB014(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 query];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 locationDisplayString];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [[_TtC4Maps30HistoryEntryRecentsItemWrapper alloc] initWithTitle:*(*(a1[5] + 8) + 40) subtitle:*(*(a1[6] + 8) + 40) historyItem:a1[4]];
  [*(*(a1[7] + 8) + 40) addObject:v10];
}

void sub_100FCB0E4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 geoMapItem];
  v5 = [v4 name];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 geoMapItem];

  v18 = [v8 addressObject];

  v9 = [v18 cityDisplayNameWithFallback:0];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (![*(*(a1[6] + 8) + 40) length] || objc_msgSend(*(*(a1[5] + 8) + 40), "length") && objc_msgSend(*(*(a1[6] + 8) + 40), "isEqualToString:", *(*(a1[5] + 8) + 40)))
  {
    v12 = [v18 address];
    v13 = [v12 structuredAddress];
    v14 = [v13 country];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = [[_TtC4Maps30HistoryEntryRecentsItemWrapper alloc] initWithTitle:*(*(a1[5] + 8) + 40) subtitle:*(*(a1[6] + 8) + 40) historyItem:a1[4]];
  [*(*(a1[7] + 8) + 40) addObject:v17];
}

id sub_100FCB520()
{
  if (qword_10195F998 != -1)
  {
    dispatch_once(&qword_10195F998, &stru_101660358);
  }

  v1 = qword_10195F990;

  return v1;
}

void sub_100FCB574(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionOfflineMonitor");
  v2 = qword_10195F990;
  qword_10195F990 = v1;
}

void sub_100FCC58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FCC5B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _shareAtIndexPath:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100FCC6E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100FCC700(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[2](v4, 1);
    [WeakRetained _shareAtIndexPath:*(a1 + 32)];
  }
}

void sub_100FCC8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FCC8D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _deleteAtIndexPath:*(a1 + 32) completion:&stru_1016603F0];
    WeakRetained = v3;
  }
}

void sub_100FCCA18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100FCCA34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RDS _deleteAction", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteAtIndexPath:*(a1 + 32) completion:v3];
}

void sub_100FCCFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FCD0B0;
  v4[3] = &unk_1016610B8;
  v5 = *(a1 + 56);
  [v2 deleteCollection:v4];
  [GEOAPPortal captureUserAction:2009 target:0 value:0];
  v3 = [*(a1 + 32) handlerType];
  if (v3 == 4)
  {
    [*(a1 + 40) _captureCuratedCuratedCollectionAction:2088 indexPath:*(a1 + 48)];
  }

  else if (!v3)
  {
    [GEOAPPortal captureUserAction:2081 target:251 value:0];
  }
}

uint64_t sub_100FCD080(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100FCD0B0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

id sub_100FCD9E0()
{
  if (qword_10195F9A8 != -1)
  {
    dispatch_once(&qword_10195F9A8, &stru_1016604B0);
  }

  v1 = qword_10195F9A0;

  return v1;
}

void sub_100FCDA34(uint64_t a1)
{
  v3 = [*(a1 + 40) selectedVehicle];
  v2 = [v3 currentVehicleState];
  [*(a1 + 32) setCurrentVehicleState:v2];
}

void sub_100FCDA9C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarRouteGeniusVehicleBatteryMonitor");
  v2 = qword_10195F9A0;
  qword_10195F9A0 = v1;
}

void sub_100FCDC00(uint64_t a1)
{
  v3 = [*(a1 + 40) route];
  v2 = [v3 routeAttributes];
  [*(a1 + 32) setCurrentRouteAttributes:v2];
}

void sub_100FCE020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_100FCD9E0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40) * 100.0;
      v5 = *(a1 + 48) * 100.0;
      v6 = *(a1 + 56) * 100.0;
      v8 = 134218496;
      v9 = v4;
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_checkBattery: batteryPercentage changed from: %.2lf (RG) to: %.2lf (VG), which is more than threshold: %.2lf", &v8, 0x20u);
    }

    v7 = [WeakRetained delegate];
    [v7 vehicleBatteryChangedSignificantly];
  }
}

void sub_100FCE25C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[8])
    {
      v4 = +[VGVirtualGarageService sharedService];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100FCE39C;
      v6[3] = &unk_101660468;
      v6[4] = v3;
      objc_copyWeak(&v7, (a1 + 32));
      [v4 virtualGarageGetGarageWithReply:v6];

      objc_destroyWeak(&v7);
    }

    else
    {
      [WeakRetained setCurrentRouteAttributes:0];
      [v3 setCurrentVehicleState:0];
      v5 = sub_100FCD9E0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_updateState:, monitor is not active, clearing state", buf, 2u);
      }
    }
  }
}

void sub_100FCE39C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 24);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100FCE4F0;
    v9[3] = &unk_101661340;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = v5;
    dispatch_async(v7, v9);

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = sub_100FCD9E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_updateState:, failed to fetch garage with error: %@", buf, 0xCu);
    }
  }
}

void sub_100FCE4F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained routeGeniusService];
    v5 = [v4 suggestion];
    v6 = [v5 route];
    v7 = [v6 routeAttributes];
    [v3 setCurrentRouteAttributes:v7];

    v8 = [*(a1 + 32) selectedVehicle];
    v9 = [v8 currentVehicleState];
    [v3 setCurrentVehicleState:v9];

    v10 = sub_100FCD9E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v3 currentVehicleState];
      v12 = [v3 currentRouteAttributes];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_updateState:, monitor is active, currentVehicleState: %@, currentRouteAttributes: %@", &v13, 0x16u);
    }
  }
}

BOOL sub_100FCEA98(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100FCEC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
    if ((_UISolariumEnabled() & 1) == 0 && a3)
    {
      v6 = a3 + 1;
      v7 = [*(*(a1 + 32) + 16) arrangedSubviews];
      v8 = [v7 count];

      if (a3 + 1 >= v8)
      {
        v5 = 1;
      }

      else
      {
        v9 = [*(*(a1 + 32) + 16) arrangedSubviews];
        v10 = [v9 objectAtIndexedSubscript:a3 - 1];

        v11 = [*(*(a1 + 32) + 16) arrangedSubviews];
        v12 = [v11 objectAtIndexedSubscript:v6];

        if ([v10 isHidden])
        {
          v5 = 1;
        }

        else
        {
          v5 = [v12 isHidden];
        }
      }
    }

    [v13 setHidden:v5];
  }
}

void sub_100FCF14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FCF170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _checkItemsForBackgroundFlag];
    WeakRetained = v2;
  }
}

void sub_100FD0188(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) filterView];
  [v2 setAlpha:v1];
}

void sub_100FD1DD4(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) contentView];
  [v3 layoutIfNeeded];
}

id sub_100FD21E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) dataSource];
  [v3 setSubcategoriesType:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) dataSource];
  [v5 setSubcategories:v4];

  [*(a1 + 32) updateFilterBar];
  v6 = *(a1 + 32);

  return [v6 updateHeaderImageView];
}

void sub_100FD2364(uint64_t a1)
{
  [*(a1 + 32) setDidFinishAutoCompleteSearchRequest:1];
  v2 = [*(a1 + 32) dataSource];
  [v2 setSearchResults:*(a1 + 40) labelContext:*(a1 + 48)];

  [*(a1 + 32) didUpdateResults];
  [*(a1 + 32) notifyVenuesManagerAndSwitchToBestFloor:*(a1 + 56)];
  [*(a1 + 32) setShowsLoading:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VenueBrowseDidDisplayCategoryResults" object:*(a1 + 32)];
}

id sub_100FD24E0(uint64_t a1)
{
  [*(a1 + 32) setDidFinishAutoCompleteSearchRequest:1];
  v2 = *(a1 + 32);

  return [v2 setShowsLoading:0];
}

id sub_100FD2598(uint64_t a1)
{
  [*(a1 + 32) setDidFinishAutoCompleteSearchRequest:1];
  v2 = *(a1 + 32);

  return [v2 setShowsLoading:0];
}

void sub_100FD2734(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) dataSource];
  [v3 setMapItem:v2];

  [*(a1 + 32) updateFilterBar];
  [*(a1 + 32) performInitialSearchIfNecessary];
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) dataSource];
    v5 = [v4 searchCategory];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = [v6 dataSource];
      v8 = [v10 searchCategory];
      v9 = [v6 _headerLabelTextFromMapItem:v7 searchCategory:v8];
      [*(a1 + 32) setHeaderTitle:v9];
    }
  }
}

id sub_100FD37CC()
{
  if (qword_10195F9C8 != -1)
  {
    dispatch_once(&qword_10195F9C8, &stru_1016605D0);
  }

  v1 = qword_10195F9C0;

  return v1;
}

void sub_100FD3820(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionUsageTracker");
  v2 = qword_10195F9C0;
  qword_10195F9C0 = v1;
}

void sub_100FD4864(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F9B0;
  qword_10195F9B0 = v1;
}

void sub_100FD4C84(uint64_t a1)
{
  [*(a1 + 32) setTaskState:2];
  v2 = [*(a1 + 32) ticket];
  [v2 cancel];
}

id sub_100FD4E58(uint64_t a1)
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

void sub_100FD4EC8(uint64_t a1)
{
  v2 = [MNDirectionsRequestDetails alloc];
  v3 = [*(a1 + 32) tracePath];
  v4 = [v2 initWithTracePath:v3];

  v5 = objc_alloc_init(GEODirectionsRequestFeedback);
  [v5 setPurpose:4];
  [v5 setSource:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  [v5 setRequestingAppId:v7];

  [v4 setDirectionsRequestFeedback:v5];
  v8 = +[MNNavigationService sharedService];
  [v8 openForClient:*(a1 + 32)];
  v9 = [v8 ticketForDirectionsRequest:v4];
  [*(a1 + 32) setTicket:v9];

  objc_initWeak(&location, *(a1 + 32));
  v10 = [*(a1 + 32) ticket];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FD50BC;
  v12[3] = &unk_101660620;
  objc_copyWeak(&v15, &location);
  v11 = v8;
  v13 = v11;
  v14 = *(a1 + 40);
  [v10 submitWithHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void sub_100FD5098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FD50BC(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] closeForClient:WeakRetained];
    if (v8)
    {
      v11 = [v8 _mapkit_errorWithDirectionsError:v9];
      v12 = [Result resultWithError:v11];
    }

    else
    {
      v12 = [Result resultWithValue:v7];
    }

    v13 = [WeakRetained isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FD5228;
    block[3] = &unk_1016605F8;
    block[4] = WeakRetained;
    v16 = v12;
    v17 = a1[5];
    v14 = v12;
    dispatch_async(v13, block);
  }
}

void sub_100FD5228(uint64_t a1)
{
  [*(a1 + 32) setResultOnIsolationQueue:*(a1 + 40)];
  [*(a1 + 32) setTaskState:2];
  v2 = dispatch_get_global_queue(21, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100FD52E8;
  v3[3] = &unk_101661090;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  dispatch_async(v2, v3);
}

void sub_100FD52E8(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 result];
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ – invoking completion handler with result %@", &v10, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) resultOnIsolationQueue];
  v7 = [*(a1 + 32) ticket];
  v8 = [v7 directionsResponse];
  v9 = [v8 advisoriesInfo];
  (*(v5 + 16))(v5, v6, v9);
}

void sub_100FD5550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FD5568(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FD5580(uint64_t a1)
{
  v2 = [*(a1 + 32) resultOnIsolationQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100FD56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100FD56BC(uint64_t a1)
{
  result = [*(a1 + 32) taskState];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

void sub_100FD6408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FD6430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v5 = [v13 filterMenu];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 resultFilters];
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 selectedFilterIndexPath];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 apiController];
    v12 = [v11 publisherViewIdentifiers];
    [v5 configureForPublisherWithRoutingDelegate:v6 withPublishersResultFilters:v7 withSelectedFilterIndex:v9 selectedFilterResultsCount:{objc_msgSend(v12, "count")}];
  }
}

void sub_100FD66E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FD670C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v5 = [v13 filterMenu];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 resultFilters];
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 selectedFilterIndexPath];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 apiController];
    v12 = [v11 publisherViewIdentifiers];
    [v5 configureForPublisherWithRoutingDelegate:v6 withPublishersResultFilters:v7 withSelectedFilterIndex:v9 selectedFilterResultsCount:{objc_msgSend(v12, "count")}];
  }
}

void sub_100FD6CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained apiController];
    v3 = [v2 currentState];

    WeakRetained = v5;
    if (v3 == 1)
    {
      v4 = [v5 logicController];
      [v4 clearSnapshotData];

      WeakRetained = v5;
    }
  }
}

void sub_100FD6FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100FD6FD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained logicController];
  [v3 displayCollections];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

id sub_100FD806C()
{
  if (qword_10195F9D8 != -1)
  {
    dispatch_once(&qword_10195F9D8, &stru_101660698);
  }

  v1 = qword_10195F9D0;

  return v1;
}

void sub_100FD80C0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchSessionManager");
  v2 = qword_10195F9D0;
  qword_10195F9D0 = v1;
}

void sub_100FD9ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FD9EF4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 != MKMapRectNull.origin.x || a3 != MKMapRectNull.origin.y) && WeakRetained)
  {
    v17 = WeakRetained;
    v10 = objc_alloc_init(GEOPDViewportInfo);
    v11 = [[GEOMapRegion alloc] initWithMapRect:{a2, a3, a4, a5}];
    [v10 setMapRegion:v11];

    v12 = [v17 coordinator];
    v13 = [v12 searchPinsManager];
    v14 = [v13 mapView];
    v15 = [v14 mapType];

    v16 = 1;
    if (v15 <= 2)
    {
      switch(v15)
      {
        case 0:
LABEL_17:
          [v10 setMapType:v16];
          [v17 setLastSearchSessionViewport:v10];

          WeakRetained = v17;
          goto LABEL_18;
        case 1:
          goto LABEL_15;
        case 2:
LABEL_11:
          v16 = 3;
          goto LABEL_17;
      }
    }

    else
    {
      if (v15 <= 101)
      {
        if (v15 != 3)
        {
          if (v15 != 4)
          {
            goto LABEL_16;
          }

          goto LABEL_11;
        }

LABEL_15:
        v16 = 2;
        goto LABEL_17;
      }

      if (v15 == 102)
      {
        goto LABEL_17;
      }

      if (v15 == 104)
      {
        v16 = 4;
        goto LABEL_17;
      }
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_100FDAE90(id a1)
{
  v3[0] = &off_1016EACD0;
  v3[1] = &off_1016EACE8;
  v4[0] = @"index";
  v4[1] = @"status";
  v3[2] = &off_1016EAD00;
  v3[3] = &off_1016EAD18;
  v4[2] = @"angle";
  v4[3] = @"angleHighlight";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_10195F9F8;
  qword_10195F9F8 = v1;
}

void sub_100FDAFA8(id a1)
{
  v6[0] = &off_1016EAC70;
  v6[1] = &off_1016EAC88;
  v7[0] = @"NotSet";
  v7[1] = @"NotGood";
  v6[2] = &off_1016EACA0;
  v6[3] = &off_1016EACB8;
  v7[2] = @"Good";
  v7[3] = @"Preferred";
  v1 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = @"status";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10195F9E8;
  qword_10195F9E8 = v2;
}

void sub_100FDB228(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (*(a1 + 40) != 1)
  {
    goto LABEL_6;
  }

  if ([v5 isPreferredLaneForManeuver])
  {
    v6 = 1;
    goto LABEL_7;
  }

  v5 = v8;
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = [v5 isLaneForManeuver];
  }

LABEL_7:
  v7 = [[CarClusterUpdateLaneGuidanceLaneInfo alloc] initWithComposedRouteLaneInfo:v8 atIndex:a3 highlightFirstAngle:v6];
  [*(a1 + 32) addObject:v7];
}

void sub_100FDB9DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100FDBA00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FDBBB4;
  v13[3] = &unk_101660970;
  objc_copyWeak(&v16, (a1 + 48));
  v17 = *(a1 + 56);
  v8 = v5;
  v14 = v8;
  v15 = *(a1 + 40);
  v9 = objc_retainBlock(v13);
  if (sub_100741CA8())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FDBC0C;
    v10[3] = &unk_101660998;
    v11 = *(a1 + 40);
    v12 = v9;
    [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v10];
  }

  else
  {
    (v9[2])(v9);
  }

  objc_destroyWeak(&v16);
}

void sub_100FDBBB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentPlaceEnrichmentRAPWithTarget:*(a1 + 56) withAppState:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

uint64_t sub_100FDBC0C(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2)
  {
    v2 = 40;
  }

  return (*(*(a1 + v2) + 16))();
}

void sub_100FDBE84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100FDBEA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FDC058;
  v12[3] = &unk_101660D10;
  objc_copyWeak(&v16, (a1 + 48));
  v17 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = v5;
  v14 = v7;
  v15 = *(a1 + 40);
  v8 = objc_retainBlock(v12);
  if (sub_100741CA8())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100FDC0B4;
    v9[3] = &unk_101660998;
    v10 = *(a1 + 40);
    v11 = v8;
    [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v9];
  }

  else
  {
    (v8[2])(v8);
  }

  objc_destroyWeak(&v16);
}

void sub_100FDC058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentAddToMapsFromSearchEntryPoint:*(a1 + 64) result:*(a1 + 32) withAppState:*(a1 + 40) completion:*(a1 + 48)];
    WeakRetained = v3;
  }
}

uint64_t sub_100FDC0B4(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2)
  {
    v2 = 40;
  }

  return (*(*(a1 + v2) + 16))();
}

void sub_100FDC324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained presentViewController:*(a1 + 40) animated:*(a1 + 48)];
}

void sub_100FDC514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FDC530(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v43 = v6;
    v8 = [RAPReport alloc];
    v9 = [WeakRetained submissionManager];
    v10 = [(RAPReport *)v8 initWithContext:v5 submitter:v9];

    v11 = [(RAPReport *)v10 combinedUserPath];
    [v11 addNativePath:40];

    v12 = [[RAPCuratedCollectionQuestion alloc] initWithReport:v10 parentQuestion:0];
    [(RAPReport *)v10 setInitialQuestion:v12];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100FDCA78;
    v53[3] = &unk_101660C70;
    objc_copyWeak(v57, a1 + 6);
    v13 = v10;
    v54 = v13;
    v14 = v12;
    v55 = v14;
    v56 = a1[5];
    v15 = objc_retainBlock(v53);
    v16 = objc_alloc_init(UIAlertController);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Report an issue with a [Curated Collections RAP]" value:@"localized string not found" table:0];
    [v16 setTitle:v18];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Guide [Curated Collection RAP]" value:@"localized string not found" table:0];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100FDCB88;
    v51[3] = &unk_101660728;
    v42 = v15;
    v52 = v42;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v51];
    [v16 addAction:v21];

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Individual Place [RAP Curated Collections]" value:@"localized string not found" table:0];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100FDCBDC;
    v46[3] = &unk_101660C98;
    v24 = v14;
    v47 = v24;
    objc_copyWeak(&v50, a1 + 6);
    v25 = v13;
    v48 = v25;
    v49 = a1[5];
    v26 = [UIAlertAction actionWithTitle:v23 style:0 handler:v46];
    [v16 addAction:v26];

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"Cancel [RAP Curated Collections]" value:@"localized string not found" table:0];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100FDCD48;
    v44[3] = &unk_101660728;
    v45 = a1[5];
    v29 = [UIAlertAction actionWithTitle:v28 style:1 handler:v44];
    [v16 addAction:v29];

    v30 = a1[4];
    v31 = [v16 popoverPresentationController];
    [v31 setSourceView:v30];

    [a1[4] bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [v16 popoverPresentationController];
    [v40 setSourceRect:{v33, v35, v37, v39}];

    v41 = [v16 popoverPresentationController];
    [v41 setPermittedArrowDirections:15];

    [WeakRetained presentViewController:v16 animated:1];
    objc_destroyWeak(&v50);

    objc_destroyWeak(v57);
    v6 = v43;
  }
}

void sub_100FDCA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 56));
  objc_destroyWeak(&a37);
  _Unwind_Resume(a1);
}

void sub_100FDCA78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [RAPReportComposerViewController alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100FDCDCC;
    v11 = &unk_101660B78;
    objc_copyWeak(&v13, (a1 + 56));
    v12 = *(a1 + 48);
    v6 = [(RAPReportComposerViewController *)v3 initWithReport:v4 curatedCollectionQuestion:v5 completion:&v8];
    v7 = WeakRetained[1];
    WeakRetained[1] = v6;

    [WeakRetained _presentReportComposerWithCompletion:{*(a1 + 48), v8, v9, v10, v11}];
    objc_destroyWeak(&v13);
  }
}

uint64_t sub_100FDCB88(uint64_t a1)
{
  [GEOAPPortal captureUserAction:232 target:259 value:0];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100FDCBDC(uint64_t a1, void *a2)
{
  v3 = a2;
  [GEOAPPortal captureUserAction:221 target:259 value:0];
  [*(a1 + 32) setSelectedQuestionType:3];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [RAPCuratedCollectionPOISelectionViewController alloc];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100FDCD60;
    v14 = &unk_101660B78;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    v8 = [(RAPCuratedCollectionPOISelectionViewController *)v5 initWithReport:v6 parentQuestion:v7 completion:&v11];
    v9 = [UINavigationController alloc];
    v10 = [v9 initWithRootViewController:{v8, v11, v12, v13, v14}];
    [v10 setModalPresentationStyle:2];
    [WeakRetained presentViewController:v10 animated:1];

    objc_destroyWeak(&v16);
  }
}

uint64_t sub_100FDCD48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100FDCD60(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dismissSender:v5 withGesture:0 completion:*(a1 + 32)];
  }
}

void sub_100FDCDCC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dismissReportComposerWithSender:v5 completion:*(a1 + 32)];
  }
}

void sub_100FDD0C4(void *a1, int a2)
{
  if (a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100FDD16C;
    v4[3] = &unk_101660BE0;
    v2 = a1[4];
    v3 = a1[6];
    v4[4] = a1[5];
    v5 = v3;
    [v2 submitWithPrivacyRequestHandler:&stru_101660BB8 willStartSubmitting:v4 didFinishSubmitting:&stru_101660C20];
  }
}

uint64_t sub_100FDD16C(uint64_t a1)
{
  [*(a1 + 32) _presentLightweightFeedbackAcknowledgmentScreen];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100FDD2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FDD310(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dismissReportComposerWithSender:v5 completion:*(a1 + 32)];
  }
}

void sub_100FDD4C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [RAPReport alloc];
  v8 = [*(a1 + 32) submissionManager];
  v9 = [(RAPReport *)v7 initWithContext:v5 submitter:v8];

  v10 = [[RAPPlacecardImageryController alloc] initWithReport:v9 layoutManager:*(a1 + 40)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = v10;

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = [*(*(a1 + 32) + 16) alertController];
    v15 = [v14 popoverPresentationController];
    (*(v13 + 16))(v13, v15);
  }

  objc_initWeak(&location, *(a1 + 32));
  v16 = *(*(a1 + 32) + 16);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100FDD6D0;
  v18[3] = &unk_101660B28;
  objc_copyWeak(&v20, &location);
  v19 = *(a1 + 56);
  [v16 setCompletionHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100FDD75C;
  v17[3] = &unk_101661B18;
  v17[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v17);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void sub_100FDD6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FDD6D0(uint64_t a1, int a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained && a2)
  {
    [WeakRetained _presentPlacecardImageryCommentViewControllerWithReport:v10 question:v7 completion:*(a1 + 32)];
  }
}

void sub_100FDD75C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[2] alertController];
  [v1 presentViewController:v2 animated:1];
}

void sub_100FDD8D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RAPReport alloc];
  v5 = [*(a1 + 32) submissionManager];
  v7 = [(RAPReport *)v4 initWithContext:v3 submitter:v5];

  v6 = [[RAPPlacecardImageryQuestion alloc] initWithReport:v7 parentQuestion:0 supportedIssueItems:&__NSArray0__struct];
  -[RAPPlacecardImageryQuestion setIssueType:](v6, "setIssueType:", [*(a1 + 40) type]);
  [(RAPReport *)v7 setInitialQuestion:v6];
  [*(a1 + 32) _presentPlacecardImageryCommentViewControllerWithReport:v7 question:v6 completion:*(a1 + 48)];
}

void sub_100FDDAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RAPReport alloc];
  v5 = [*(a1 + 32) submissionManager];
  v6 = [(RAPReport *)v4 initWithContext:v3 submitter:v5];

  v7 = [[RAPLookAroundQuestion alloc] initWithReport:v6 parentQuestion:0];
  [(RAPReport *)v6 setInitialQuestion:v7];
  v8 = [RAPReportComposerViewController alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100FDDC00;
  v16 = &unk_101660948;
  v9 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v9;
  v10 = [(RAPReportComposerViewController *)v8 initWithReport:v6 lookAroundQuestion:v7 completion:&v13];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  *(v11 + 8) = v10;

  [*(a1 + 32) _presentReportComposerWithCompletion:{*(a1 + 40), v13, v14, v15, v16, v17}];
}

void sub_100FDFB4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_100FDFB80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 32) = 0;
    v6 = [v3 _context];
    v7 = [v6 directionsHistory];
    v8 = [v7 firstObject];
    v9 = [v8 recording];

    if (v9)
    {
      v10 = [v3 combinedUserPath];
      [v10 addNativePath:*(a1 + 40)];

      v11 = [[RAPDirectionsReportContaineeViewController alloc] initWithReport:v3 directionsReportContext:0];
      if (*(a1 + 44) == 1)
      {
        v12 = objc_loadWeakRetained(v5 + 3);
        [v12 presentFromContainerViewController:v11 animated:1];
      }

      else
      {
        [v5 presentViewController:v11 animated:1];
      }
    }

    else
    {
      v13 = sub_100798874();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Can't present single route flow because the latest route doesn't have a route recording.", v14, 2u);
      }
    }
  }
}

void sub_100FDFCEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      *(WeakRetained + 32) = 0;
      v9 = sub_100798874();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create report with error: %@. Will abort RAP.", &v10, 0xCu);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_100FDFEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FDFF10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_100798874();
      if (os_log_type_enabled(&v9->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, &v9->super.super.super.super.super.super, OS_LOG_TYPE_ERROR, "Failed to create report with error: %@. Will abort RAP.", &v10, 0xCu);
      }
    }

    else
    {
      v8 = [v5 combinedUserPath];
      [v8 addNativePath:*(a1 + 40)];

      v9 = [[RAPDirectionsReportContaineeViewController alloc] initWithReport:v5 directionsReportContext:1];
      [WeakRetained presentViewController:v9 animated:1];
    }
  }
}

void sub_100FE011C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100798874();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "_createInitialNavigationRapStateWithCompletion failed to create app state with error: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    v9 = [RAPReport alloc];
    v10 = [*(a1 + 32) submissionManager];
    v11 = [(RAPReport *)v9 initWithContext:v5 submitter:v10];

    if (MapsFeature_IsEnabled_RAPCommunityID())
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        (*(v12 + 16))(v12, v11, 0);
      }
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100FE02FC;
      v13[3] = &unk_101660C48;
      v16 = *(a1 + 40);
      v14 = v11;
      v15 = 0;
      [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v13];
    }
  }
}

void sub_100FE02FC(void *a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, a1[4], a1[5]);
    }
  }

  else
  {
    v8 = sub_100798874();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "User dismissed privacy check.", v11, 2u);
    }

    v9 = [NSError GEOErrorWithCode:-2 reason:@"The user dismissed the privacy check."];
    v10 = a1[6];
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v9);
    }
  }
}

void sub_100FE0538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FE0554(id *a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = [RAPReport alloc];
    v5 = [WeakRetained submissionManager];
    v6 = [(RAPReport *)v4 initWithContext:v12 submitter:v5];

    v7 = [(RAPReport *)v6 combinedUserPath];
    [v7 addNativePath:{objc_msgSend(a1[4], "entryPoint")}];

    v8 = [RAPSelfLoadedPlace alloc];
    v9 = [a1[5] selectedMapItem];
    v10 = [(RAPSelfLoadedPlace *)v8 initWithMapItem:v9];

    v11 = [[RAPWebBundleQuestion alloc] initWithReport:v6 place:v10 questionType:12];
    [(RAPReport *)v6 setInitialQuestion:v11];
    [WeakRetained _presentWebBundleWithReport:v6 completion:0];
  }
}

void sub_100FE0A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FE0A60(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [[RAPSelfLoadedPlace alloc] initWithMapItem:*(a1 + 32)];
    [v13 setReportedPlace:v4];

    v5 = [RAPReport alloc];
    v6 = [WeakRetained submissionManager];
    v7 = [(RAPReport *)v5 initWithContext:v13 submitter:v6];

    v8 = [(RAPReport *)v7 combinedUserPath];
    [v8 addNativePath:*(a1 + 56)];

    v9 = [RAPWebBundleQuestion alloc];
    v10 = [(RAPReport *)v7 _context];
    v11 = [v10 reportedPlace];
    v12 = [(RAPWebBundleQuestion *)v9 initWithReport:v7 place:v11 questionType:12];

    [(RAPReport *)v7 setInitialQuestion:v12];
    [WeakRetained _presentWebBundleWithReport:v7 withOutcomeCompletion:*(a1 + 40)];
  }
}

void sub_100FE0D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FE0D8C(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 12)
    {
      [WeakRetained _presentChooseAPlaceWithAppState:v11 entryPoint:*(a1 + 64)];
    }

    else
    {
      v5 = [RAPReport alloc];
      v6 = [v4 submissionManager];
      v7 = [(RAPReport *)v5 initWithContext:v11 submitter:v6];

      v8 = [(RAPReport *)v7 combinedUserPath];
      [v8 addNativePath:*(a1 + 64)];

      v9 = [[RAPSelfLoadedPlace alloc] initWithMapItem:*(a1 + 32)];
      v10 = [[RAPWebBundleQuestion alloc] initWithReport:v7 place:v9 questionType:*(a1 + 56)];
      [(RAPReport *)v7 setInitialQuestion:v10];
      [v4 _presentWebBundleWithReport:v7 withOutcomeCompletion:*(a1 + 40)];
    }
  }
}

void sub_100FE106C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100FE1090(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100FE10A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FE125C;
  v13[3] = &unk_101660970;
  objc_copyWeak(&v16, (a1 + 48));
  v17 = *(a1 + 56);
  v8 = v5;
  v14 = v8;
  v15 = *(a1 + 40);
  v9 = objc_retainBlock(v13);
  if (sub_100741CA8())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FE12B4;
    v10[3] = &unk_101660998;
    v11 = *(a1 + 40);
    v12 = v9;
    [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v10];
  }

  else
  {
    (v9[2])(v9);
  }

  objc_destroyWeak(&v16);
}

void sub_100FE125C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentAddAPlaceViewControllerFromEntryPoint:*(a1 + 56) withAppState:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

uint64_t sub_100FE12B4(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2)
  {
    v2 = 40;
  }

  return (*(*(a1 + v2) + 16))();
}

void sub_100FE1608(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6 = a2;
  v4 = [v3 view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:1];

  [*(a1 + 32) _presentReportComposerWithAppState:v6 completion:*(a1 + 40)];
}

void sub_100FE1784(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v17);
  }

  v7 = [RAPReport alloc];
  v8 = [*(a1 + 32) submissionManager];
  v9 = [(RAPReport *)v7 initWithContext:v17 submitter:v8];

  v10 = [(RAPReport *)v9 combinedUserPath];
  [v10 addNativePath:201];

  v11 = *(a1 + 48) - 1;
  if (v11 > 3)
  {
    v12 = 12;
  }

  else
  {
    v12 = qword_101216258[v11];
  }

  v13 = [RAPWebBundleQuestion alloc];
  v14 = [(RAPReport *)v9 _context];
  v15 = [v14 reportedPlace];
  v16 = [(RAPWebBundleQuestion *)v13 initWithReport:v9 place:v15 poiCorrectionType:2 questionType:v12];

  [(RAPReport *)v9 setInitialQuestion:v16];
  [*(a1 + 32) _presentWebBundleWithReport:v9 completion:0];
}

void sub_100FE19E4(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v17);
  }

  v7 = [RAPReport alloc];
  v8 = [*(a1 + 32) submissionManager];
  v9 = [(RAPReport *)v7 initWithContext:v17 submitter:v8];

  v10 = [(RAPReport *)v9 combinedUserPath];
  [v10 addNativePath:201];

  v11 = *(a1 + 48) - 2;
  if (v11 > 2)
  {
    v12 = 12;
  }

  else
  {
    v12 = qword_101216240[v11];
  }

  v13 = [RAPWebBundleQuestion alloc];
  v14 = [(RAPReport *)v9 _context];
  v15 = [v14 reportedPlace];
  v16 = [(RAPWebBundleQuestion *)v13 initWithReport:v9 place:v15 poiCorrectionType:2 questionType:v12];

  [(RAPReport *)v9 setInitialQuestion:v16];
  [*(a1 + 32) _presentWebBundleWithReport:v9 completion:0];
}

void sub_100FE1CA4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = [*(*(a1 + 32) + 8) view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:1];

  [*(a1 + 32) _presentReportComposerWithAppState:v6 completion:*(a1 + 48)];
}

void sub_100FE1E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FE1E94(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v13);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [RAPReport alloc];
    v9 = [WeakRetained submissionManager];
    v10 = [(RAPReport *)v8 initWithContext:v13 submitter:v9];

    v11 = [(RAPReport *)v10 combinedUserPath];
    [v11 addNativePath:201];

    v12 = [[RAPWebBundleQuestion alloc] initWithReport:v10 questionType:27];
    [(RAPReport *)v10 setInitialQuestion:v12];
    [WeakRetained _presentWebBundleWithReport:v10 completion:*(a1 + 40)];
  }
}

void sub_100FE2098(id a1, BOOL a2, int64_t a3)
{
  if (a2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100FE21DC;
    v12 = sub_100FE21EC;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FE21F4;
    v7[3] = &unk_1016608A8;
    v7[4] = &v8;
    v3 = [[PushNotificationPrompt alloc] initWithReason:2 authorizationStatus:a3 completion:v7];
    v4 = v9[5];
    v9[5] = v3;

    v5 = +[UIApplication sharedMapsDelegate];
    v6 = [v5 chromeViewController];
    [v6 _maps_topMostPresentViewController:v9[5] animated:1 completion:0];

    _Block_object_dispose(&v8, 8);
  }
}

void sub_100FE21C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100FE21DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100FE21F4(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100FE240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FE2430(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100FE2530;
      v13[3] = &unk_101660818;
      v16 = a3;
      v13[4] = WeakRetained;
      v15 = v10;
      v11 = v7;
      v14 = v11;
      v17 = a4;
      v12 = objc_retainBlock(v13);
      [v9 _dismissSender:v11 withGesture:a4 completion:v12];
    }
  }
}

uint64_t sub_100FE2530(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _presentPushNotificationPromptIfNecessary];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100FE2660(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100FE27B8(uint64_t a1)
{
  if (sub_100741FD4())
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = [WeakRetained topMostPresentedViewController];
  if (sub_10000FA08(v4) == 5)
  {
    IsEnabled_RAPCommunityID = MapsFeature_IsEnabled_RAPCommunityID();

    if ((IsEnabled_RAPCommunityID & 1) == 0)
    {
LABEL_2:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100FE28E8;
      v7[3] = &unk_1016607C8;
      v2 = *(a1 + 40);
      v7[4] = *(a1 + 32);
      v8 = v2;
      [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v7];

      return;
    }
  }

  else
  {
  }

  v6 = *(a1 + 32);

  [v6 representReportAProblemIfCurrentlyOngoingAnimated:1];
}

void sub_100FE28E8(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v8 = v6;
    [*(a1 + 32) representReportAProblemIfCurrentlyOngoingAnimated:1];
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v6;
    (*(v7 + 16))();
  }

  v6 = v8;
LABEL_6:
}

uint64_t sub_100FE2BB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100FE2D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_100FE2ED0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v42 = a3;
  v6 = [*(a1 + 32) window];
  [v6 setUserInteractionEnabled:1];

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v8 = [RAPReport alloc];
  v9 = [*(a1 + 40) submissionManager];
  v10 = [(RAPReport *)v8 initWithContext:v5 submitter:v9];

  v11 = [(RAPReport *)v10 combinedUserPath];
  [v11 addNativePath:*(a1 + 72)];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v12 = [*(a1 + 48) placeCardItem];
  v13 = [v12 placeItem];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100FE3494;
  v43[3] = &unk_101660778;
  v14 = v5;
  v44 = v14;
  v15 = v13;
  v45 = v15;
  v46 = &v47;
  v16 = objc_retainBlock(v43);
  v17 = [v14 reportedPlace];
  v18 = [v17 mapItem];
  v19 = [v18 _geoMapItem];
  v20 = [v19 _RAPFlowType] - 1;
  if (v20 > 6)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_101216208[v20];
  }

  v48[3] = v21;

  v22 = v48[3];
  v23 = sub_100799520();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v22)
  {
    if (v24)
    {
      v25 = [v14 reportedPlace];
      v26 = [v25 mapItem];
      v27 = [v26 _geoMapItem];
      [v27 _RAPFlowType];
      v28 = _PDRAPFlowTypeForMapItemRAPFlowType();
      if (v28 >= 8)
      {
        v29 = [NSString stringWithFormat:@"(unknown: %i)", v28];
      }

      else
      {
        v29 = *(&off_101660D30 + v28);
      }

      *buf = 138412290;
      v52 = v29;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Places response contains RAP flow type %@", buf, 0xCu);
    }

    v30 = [v14 reportedPlace];
    v31 = [v30 mapItem];
    v32 = [v31 _maps_isHomeWorkOrSchool];

    if (v32)
    {
      v33 = sub_100799520();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Overriding RAP flow type in places response since reported place is HWS", buf, 2u);
      }

      v34 = 10;
LABEL_29:

      v48[3] = v34;
      goto LABEL_30;
    }

    if (MapsFeature_IsEnabled_MapsWally() && [v15 representsPerson] && (objc_msgSend(v15, "options") & 8) == 0)
    {
      v33 = sub_100799520();
      v34 = 1;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v34 = 1;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Overriding RAP flow type in places response since reported place represents a Waldo person", buf, 2u);
      }

      goto LABEL_29;
    }

    if (([v15 options] & 8) != 0 || (objc_msgSend(v15, "options") & 4) != 0)
    {
      v33 = sub_100799520();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Overriding RAP flow type in places response since reported place is a personalized place card", buf, 2u);
      }

      v34 = 11;
      goto LABEL_29;
    }
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No RAP flow type in places response. Falling back to client logic", buf, 2u);
    }

    (v16[2])(v16);
  }

LABEL_30:
  v35 = v48[3];
  if (v35 <= 0x19 && ((1 << v35) & 0x3001200) != 0)
  {
    v36 = [RAPWebBundleQuestion alloc];
    v37 = [(RAPReport *)v10 _context];
    v38 = [v37 reportedPlace];
    v39 = [(RAPWebBundleQuestion *)v36 initWithReport:v10 place:v38 poiCorrectionType:2 questionType:v48[3]];
  }

  else
  {
    v41 = [RAPWebBundleQuestion alloc];
    v37 = [(RAPReport *)v10 _context];
    v38 = [v37 reportedPlace];
    v39 = [(RAPWebBundleQuestion *)v41 initWithReport:v10 place:v38 questionType:v48[3]];
  }

  v40 = v39;

  [(RAPReport *)v10 setInitialQuestion:v40];
  [*(a1 + 40) _presentWebBundleWithReport:v10 completion:*(a1 + 64)];

  _Block_object_dispose(&v47, 8);
}

void sub_100FE3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100FE3494(uint64_t a1)
{
  v2 = [*(a1 + 32) reportedPlace];
  v3 = [v2 mapItem];
  v4 = [v3 _hasTransit];

  if (v4)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = 26;
LABEL_12:
    *(v5 + 24) = v6;
    return;
  }

  if (MapsFeature_IsEnabled_MapsWally() && [*(a1 + 40) representsPerson] && (objc_msgSend(*(a1 + 40), "options") & 8) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    goto LABEL_28;
  }

  v7 = [*(a1 + 32) reportedPlace];
  v8 = [v7 mapItem];
  if ([v8 _maps_isLargeAreaPlace])
  {

LABEL_10:
    v5 = *(*(a1 + 48) + 8);
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) reportedPlace];
  v10 = [v9 mapItem];
  v11 = [v10 _isMapItemTypeSettlement];

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = [*(a1 + 32) reportedPlace];
  v13 = [v12 mapItem];
  if (([v13 _hasMUID] & 1) == 0)
  {

LABEL_21:
    v23 = [*(a1 + 32) reportedPlace];
    v24 = [v23 mapItem];
    v25 = [v24 _maps_isHomeWorkOrSchool];

    if (v25)
    {
      v5 = *(*(a1 + 48) + 8);
      v6 = 10;
      goto LABEL_12;
    }

    v26 = ([*(a1 + 40) options] & 8) == 0 && (objc_msgSend(*(a1 + 40), "options") & 4) == 0;
    v27 = [*(a1 + 40) mapItem];
    v28 = [v27 _isMapItemTypeAddress];

    v5 = *(*(a1 + 48) + 8);
    if (v28 && v26)
    {
LABEL_28:
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 11;
    goto LABEL_12;
  }

  v14 = [*(a1 + 32) reportedPlace];
  v15 = [v14 mapItem];
  v16 = [v15 _isMapItemTypeAddress];

  if (v16)
  {
    goto LABEL_21;
  }

  *(*(*(a1 + 48) + 8) + 24) = 12;
  v17 = [*(a1 + 32) reportedPlace];
  v18 = [v17 mapItem];
  v32 = [v18 _trailHead];

  if (v32)
  {
    v19 = [v32 displayType];
    if (v19)
    {
      v20 = v19 == 1;
      v21 = v32;
      if (!v20)
      {
        goto LABEL_33;
      }

      v22 = 25;
    }

    else
    {
      v22 = 24;
      v21 = v32;
    }

    goto LABEL_32;
  }

  v29 = [*(a1 + 32) reportedPlace];
  v30 = [v29 mapItem];
  v31 = [v30 _maps_isEVChargingStation];

  v21 = 0;
  if (v31)
  {
    v22 = 9;
LABEL_32:
    *(*(*(a1 + 48) + 8) + 24) = v22;
  }

LABEL_33:
}

void sub_100FE38FC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) window];
  [v3 setUserInteractionEnabled:1];

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v13);
  }

  v5 = [RAPReport alloc];
  v6 = [*(a1 + 40) submissionManager];
  v7 = [(RAPReport *)v5 initWithContext:v13 submitter:v6];

  v8 = [(RAPReport *)v7 combinedUserPath];
  [v8 addNativePath:*(a1 + 64)];

  v9 = [RAPWebBundleQuestion alloc];
  v10 = [(RAPReport *)v7 _context];
  v11 = [v10 reportedPlace];
  v12 = [(RAPWebBundleQuestion *)v9 initWithReport:v7 place:v11 questionType:2];

  [(RAPReport *)v7 setInitialQuestion:v12];
  [*(a1 + 40) _presentWebBundleWithReport:v7 completion:*(a1 + 56)];
}

uint64_t sub_100FE3CB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

unint64_t sub_100FE8C54(unint64_t result)
{
  if (result <= 4)
  {
    return *(&off_101661C88 + result);
  }

  return result;
}

uint64_t sub_100FE9114(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v4 = [v3 unsignedIntegerValue];
  }

  v5 = sub_100799444();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_100FE8C54(v4);
    LODWORD(v20) = 138412290;
    *(&v20 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "promptOutcome=%@", &v20, 0xCu);
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v16 + 16);
      v19 = *(v17 + 48);
      v20 = *(v17 + 32);
      v21 = v19;
      v22 = *(v17 + 64);
      v23 = *(v17 + 80);
      return v18(v16, &v20, 1, v7, v8, v9, v10);
    }

    if (v4 != 1 || *(a1 + 56) != 3 && *(a1 + 64) != 1)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(*(*(a1 + 48) + 8) + 40) = 2;
    goto LABEL_17;
  }

  switch(v4)
  {
    case 2:
LABEL_11:
      *(*(*(a1 + 48) + 8) + 32) = 1;
      break;
    case 3:
      goto LABEL_16;
    case 4:
      *(*(*(a1 + 48) + 8) + 40) = 2;
      goto LABEL_11;
  }

LABEL_17:
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v11 + 16);
  v14 = *(v12 + 48);
  v20 = *(v12 + 32);
  v21 = v14;
  v22 = *(v12 + 64);
  v23 = *(v12 + 80);
  return v13(v11, &v20, 0, v7, v8, v9, v10);
}

void sub_100FE9DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

id sub_100FE9DEC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

void sub_100FE9F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FE9FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEA9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEAA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEAAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEAB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEAC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

void sub_100FEACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005C8464(va);
  _Unwind_Resume(a1);
}

MapsAppTest *__cdecl sub_100FEDB44(id a1, NSString *a2, MapsAppTesting *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([(NSString *)v6 rangeOfString:@"switch"])
  {
    if ([(NSString *)v6 rangeOfString:@"capture"])
    {
      if ([(NSString *)v6 rangeOfString:@"tileData"])
      {
        if ([(NSString *)v6 rangeOfString:@"flyovertour"])
        {
          if ([(NSString *)v6 rangeOfString:@"flyover"])
          {
            if ([(NSString *)v6 rangeOfString:@"drivingRoute"])
            {
              if ([(NSString *)v6 rangeOfString:@"route"])
              {
                if ([(NSString *)v6 rangeOfString:@"vlf"])
                {
                  if ([(NSString *)v6 rangeOfString:@"PedestrianAR"])
                  {
                    v9 = 0;
                    goto LABEL_23;
                  }

                  v10 = off_1015F62D8;
                }

                else
                {
                  v10 = off_1015F6498;
                }
              }

              else
              {
                v11 = [(NSString *)v6 containsString:@"-transit"];
                v10 = off_1015F6428;
                if (v11)
                {
                  v10 = off_1015F6490;
                }
              }
            }

            else
            {
              v10 = off_1015F6330;
            }
          }

          else
          {
            v10 = off_1015F6350;
          }
        }

        else
        {
          v10 = off_1015F6358;
        }
      }

      else
      {
        v10 = off_1015F6480;
      }
    }

    else
    {
      v10 = off_1015F62F0;
    }
  }

  else
  {
    v10 = off_1015F6470;
  }

  v9 = [objc_alloc(*v10) initWithApplication:v7 testName:v6 options:v8];
LABEL_23:

  return v9;
}

void sub_100FEE0C0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195FA00;
  qword_10195FA00 = v1;

  v3 = qword_10195FA00;

  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss"];
}

void sub_100FEE4E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FEE66C;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100FEE594(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _touchMapsSuggestionsEngine];
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FEE64C;
  v5[3] = &unk_1016610E0;
  v6 = *(a1 + 32);
  v7 = v2;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_100FEE64C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_100FEE66C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

void sub_100FEE788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FEE7A4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3 && [WeakRetained moveToPreferredIndexInFavorites])
    {
      v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      v7 = [v6 shortcuts];

      [a1[4] moveToPreferredIndexWith:v7 completion:&stru_101661040];
    }

    if (v5[4])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v5[9] isShortcutForSetup] ^ 1;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100FEE8E0;
    v9[3] = &unk_101661068;
    v12 = a1[5];
    v10 = v3;
    v11 = v5;
    v13 = v8;
    dispatch_async(&_dispatch_main_q, v9);
  }
}

void sub_100FEE8E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32) == 0);
  }

  v3 = [*(a1 + 40) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 40) completionHandler];
    v4[2]();
  }

  if (*(a1 + 56) == 1)
  {
    v5 = objc_opt_class();

    [v5 captureCreateFavoriteAction];
  }
}

void sub_100FEECC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(a1);
}

void sub_100FEED1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _saveFavorite:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100FEED6C(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained moveToPreferredIndexInFavorites];

    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 48));
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = [v7 shortcut];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100FEEF18;
      v15[3] = &unk_1016619A8;
      objc_copyWeak(&v16, (a1 + 40));
      [v6 moveShortcutToFront:v8 handler:v15];

      objc_destroyWeak(&v16);
    }

    else
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 _touchMapsSuggestionsEngine];
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FEEF58;
  v10[3] = &unk_101661390;
  v11 = *(a1 + 32);
  v13 = v2;
  objc_copyWeak(&v12, (a1 + 40));
  v14 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v10);
  objc_destroyWeak(&v12);
}

void sub_100FEEF18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _touchMapsSuggestionsEngine];
}

void sub_100FEEF58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained completionHandler];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 completionHandler];
    v6[2]();
  }

  if (*(a1 + 49) == 1)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [objc_opt_class() captureCreateFavoriteAction];
  }
}

void sub_100FEFBE4(uint64_t a1)
{
  v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v2 = [v6 shortcuts];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
}

void sub_100FEFC58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100FEFD14;
    v6[3] = &unk_101661A90;
    v7 = *(a1 + 32);
    v8 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_100FEFD14(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void sub_100FEFF64(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FF00B0;
    v10[3] = &unk_101661170;
    v10[4] = &v11;
    [(NSArray *)v4 enumerateObjectsUsingBlock:v10];
    v6 = v12[3];
    if (v6 >= 0xF)
    {
      v7 = 15;
    }

    else
    {
      v7 = 10;
    }

    if (v6 >= 0xA)
    {
      v8 = v7;
    }

    else
    {
      v8 = 5;
    }

    if (v6 <= 4)
    {
      v6 = v6;
    }

    else
    {
      v6 = v8;
    }

    v9 = [NSString stringWithFormat:@"%d", v6];
    [GEOAPPortal captureUserAction:2052 target:0 value:v9];

    _Block_object_dispose(&v11, 8);
  }
}

void sub_100FF0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100FF00B0(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 6 || result == 1)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

id sub_100FF05BC(char a1)
{
  v2 = +[UIColor systemGreenColor];
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    v4 = [v2 colorWithAlphaComponent:0.200000003];

    v3 = v4;
  }

  return v3;
}

void sub_100FF0844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _provideAbandonmentFeedback];
}

void sub_100FF0B70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _provideFeedbackForContact:*(a1 + 32)];
}

id sub_100FF12E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contact];
  v5 = [v4 identifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

id sub_100FF1350(id a1, MSPSharedTripContact *a2, unint64_t a3)
{
  v3 = [(MSPSharedTripContact *)a2 contact];
  v4 = [v3 identifier];

  return v4;
}

void sub_100FF1560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _refreshFreshSuggestions:*(a1 + 32)];
}

void sub_100FF1A38(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195FA10;
  qword_10195FA10 = v1;
}

void sub_100FF1B04(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FF1BB4;
  v4[3] = &unk_101661260;
  v5 = *(a1 + 32);
  v3 = [a2 addCheckmarkRowsGroupForConfigKey:NavigationConfig_TracePlaybackDefaultSpeedMultiplier[0] content:NavigationConfig_TracePlaybackDefaultSpeedMultiplier[1] get:v4 set:&stru_1016612A0 change:{0, 0}];
}

void sub_100FF1BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [NSString stringWithFormat:@"%@x", v9];
        v11 = [v3 addRowWithTitle:v10 value:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

id sub_100FF1CFC(id a1)
{
  GEOConfigGetDouble();
  if (v1 <= 0.0)
  {
    v2 = &off_1016EADD8;
  }

  else
  {
    v2 = [NSNumber numberWithDouble:?];
  }

  return v2;
}

void sub_100FF2C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FF2CA0(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained contact];

    if (v5 == v6)
    {
      [v4[3] setImage:v7];
      [v4[3] setContentMode:2];
    }
  }
}

void sub_100FF4638(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = [a2 firstObject];
    v5 = *(a1 + 40);
    v6 = [Flyover alloc];
    v7 = [*(a1 + 32) userMessage];
    v8 = [(Flyover *)v6 initWithAnnouncement:v7 mapItem:v9 animationID:*(a1 + 48)];
    (*(v5 + 16))(v5, v8);
  }
}

void sub_100FF49E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FF4A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] handleManualTipDismissForMarket:WeakRetained[4] tipType:3 sinkType:4];
    v2 = v3;
  }
}

void sub_100FF4B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[48] = 0;
  }
}

void sub_100FF4C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[48] == 1)
    {
      v4 = sub_10006250C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "strongSelf->_isUpdatingAvailability == YES. Returning.", buf, 2u);
      }
    }

    else
    {
      WeakRetained[48] = 1;
      v5 = [WeakRetained routeCollection];
      v4 = [v5 currentRoute];

      if (v4 && [v4 transportType]== 1)
      {
        v6 = sub_10003D020();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking transit pay availability", buf, 2u);
        }

        v7 = [v4 routeInitializerData];
        v23 = [v7 directionsResponse];

        v8 = [v23 transitPaymentMethodSuggestions];
        v9 = [v3 _suggestionsFromPBSuggestions:v8];

        v10 = [v4 transitPaymentMethods];
        v11 = [v9 firstObject];
        v3[4] = [v11 marketMUID];

        v12 = sub_10003D020();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v4 origin];
          v14 = [v13 name];
          v15 = [v4 destination];
          v16 = [v15 name];
          *buf = 138412546;
          *v27 = v14;
          *&v27[8] = 2112;
          v28 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Route is between {%@} and {%@}", buf, 0x16u);
        }

        if (v3[5])
        {
          if ([v9 count] && objc_msgSend(v10, "count"))
          {
            v17 = v3[5];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_100FF50F4;
            v24[3] = &unk_1016614C8;
            v24[4] = *(a1 + 32);
            objc_copyWeak(&v25, (a1 + 40));
            [v17 fetchTransitMessageForRoute:v4 paymentMethods:v10 suggestions:v9 completion:v24];
            objc_destroyWeak(&v25);
          }

          else
          {
            v19 = sub_10003D020();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v9 count];
              v21 = [v10 count];
              *buf = 134218240;
              *v27 = v20;
              *&v27[8] = 2048;
              v28 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Either Suggestions are absent (%lu) or paymentMethods are absent (%lu). Not going to show the Tip.", buf, 0x16u);
            }

            [v3 _tearDown];
          }
        }

        else
        {
          v22 = sub_10003D020();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "_passManager is nil. This should never happen", buf, 2u);
          }

          [v3 _tearDown];
        }
      }

      else
      {
        v18 = sub_10006250C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v27 = v4 == 0;
          *&v27[4] = 1024;
          *&v27[6] = [v4 transportType]!= 1;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Not pinging TransitPassManager because either currentRoute==nil (%d) OR the mode is NOT transit (%d)", buf, 0xEu);
        }

        [v3 _tearDown];
      }
    }
  }
}

void sub_100FF50F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FF51D8;
  block[3] = &unk_101661480;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void sub_100FF51D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[48] = 0;
    v4 = [WeakRetained routeCollection];
    v5 = [v4 currentRoute];
    v6 = *(a1 + 32);

    if (v5 == v6)
    {
      if (*(a1 + 40))
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100FF5338;
        v8[3] = &unk_101661340;
        objc_copyWeak(&v10, (a1 + 48));
        v9 = *(a1 + 40);
        dispatch_async(&_dispatch_main_q, v8);

        objc_destroyWeak(&v10);
      }

      else
      {
        v7 = sub_10003D020();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Got callback into RoutePlanning from TransitPassManager and modelData is nil.", buf, 2u);
        }

        [v3 _tearDown];
      }
    }

    else
    {
      [v3 _updateAvailability];
    }
  }
}

void sub_100FF5338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v4 = WeakRetained[3];
  if (!v4)
  {
    v12 = sub_10003D020();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Route Planning - the metadata store was never created. This should never happen.", &v13, 2u);
    }

    goto LABEL_13;
  }

  v5 = [v4 shouldDisplayTipInMarket:WeakRetained[4] tipType:objc_msgSend(*(a1 + 32) sinkType:{"suggestionType"), 4}];
  v6 = sub_10003D020();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User has either dismissed the tip recently or has seen the tip more than the set threshold in Route Planning", &v13, 2u);
    }

LABEL_13:
    [v3 _tearDown];
    goto LABEL_14;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) title];
    v9 = [*(a1 + 32) subtitle];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TipKit displayed in RoutePlanning with\nTitle: %@\nSubtitle: %@\n", &v13, 0x16u);
  }

  v10 = [*(a1 + 32) analyticsValue];
  [GEOAPPortal captureUserAction:307 target:303 value:v10];

  [v3[3] handleTipDisplayForMarket:v3[4] tipType:objc_msgSend(*(a1 + 32) sinkType:{"suggestionType"), 4}];
  v11 = [v3 _modelFromData:*(a1 + 32)];
  [v3 setModel:v11];

LABEL_14:
}

void sub_100FF599C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100FF59C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_27;
  }

  v3 = sub_10003D020();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Action Button Tapped in RoutePlanning", &v20, 2u);
  }

  v4 = [*(a1 + 32) suggestionType];
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_27;
      }

      v9 = [*(a1 + 32) paymentMethods];
      if ([v9 count])
      {
        v10 = [*(a1 + 32) topUpPassUniqueID];

        if (v10)
        {
          [WeakRetained[11] markActionExecuted:1];
          v7 = [WeakRetained transitPayActionDelegate];
          v8 = [*(a1 + 32) topUpPassUniqueID];
          [v7 presentWalletTopUpViewControllerWithTransitIdentifier:v8 callbackDelegate:WeakRetained];
          goto LABEL_14;
        }
      }

      else
      {
      }

      v11 = sub_10003D020();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LOWORD(v20) = 0;
      v17 = "Cannot present top-up because we have incomplete data. Did you use the correct TransitPayModelData initializer?";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v17, &v20, 2u);
      goto LABEL_26;
    }

LABEL_15:
    if ([*(a1 + 32) canPresentEducationScreen])
    {
      v12 = [WeakRetained transitPayActionDelegate];
      v13 = [*(a1 + 32) educationScreenAssetURLs];
      v14 = [*(a1 + 32) educationScreenTitle];
      v15 = [*(a1 + 32) educationScreenText];
      [v12 presentEducationScreenWithAssetURLs:v13 titleText:v14 bodyText:v15];

      v16 = [*(a1 + 32) analyticsValue];
      [GEOAPPortal captureUserAction:308 target:303 value:v16];

      [WeakRetained[3] handleManualTipDismissForMarket:*(*(a1 + 40) + 32) tipType:objc_msgSend(*(a1 + 32) sinkType:{"suggestionType"), 4}];
      [WeakRetained _tearDown];
      goto LABEL_27;
    }

    v11 = sub_10003D020();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(v20) = 0;
    v17 = "Cannot present education screen because canPresentEducationScreen returned NO";
    goto LABEL_25;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v5 = [*(a1 + 32) paymentMethods];
    v6 = [v5 count];

    if (v6)
    {
      [WeakRetained[11] markActionExecuted:1];
      v7 = [WeakRetained transitPayActionDelegate];
      v8 = [*(a1 + 32) paymentMethods];
      [v7 presentWalletDCIViewControllerWithTransitSystems:v8 callbackDelegate:WeakRetained];
LABEL_14:

      v11 = [*(a1 + 32) analyticsValue];
      [GEOAPPortal captureUserAction:308 target:303 value:v11];
LABEL_26:

      goto LABEL_27;
    }

    v18 = sub_10003D020();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = [*(a1 + 32) paymentMethods];
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Cannot present DCI flow because modelData.paymentMethods is empty: %@", &v20, 0xCu);
    }
  }

LABEL_27:
}

void sub_100FF5D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_10003D020();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TipKit dismissed in RoutePlanning", buf, 2u);
    }

    v4 = [*(a1 + 32) analyticsValue];
    [GEOAPPortal captureUserAction:306 target:303 value:v4];

    [WeakRetained[3] handleManualTipDismissForMarket:WeakRetained[4] tipType:objc_msgSend(*(a1 + 32) sinkType:{"suggestionType"), 4}];
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithUnsignedLongLong:WeakRetained[4]];
    [v5 setObject:v6 forKey:@"TransitPayTipDismissedInRoutePlanningNotificationMarketMUIDKey"];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FF5F64;
    block[3] = &unk_101661B18;
    v9 = v5;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, block);
    [WeakRetained _tearDown];
  }
}

void sub_100FF5EFC(id a1)
{
  v1 = sub_10003D020();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "FeatureDiscoveryView handler called, purposely doing nothing", v2, 2u);
  }
}

void sub_100FF5F64(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  v2 = [*(a1 + 32) copy];
  [v3 postNotificationName:@"TransitPayTipDismissedInRoutePlanningNotification" object:0 userInfo:v2];
}

void sub_100FF6114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] isTouristHere];
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Route Planning - isTourist: %@", buf, 0xCu);
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
    v17[2] = sub_100FF6394;
    v17[3] = &unk_101661408;
    objc_copyWeak(&v20, (a1 + 64));
    v19 = *(a1 + 56);
    v18 = *(a1 + 32);
    [v11 userHasPaymentCardWithHandler:v17];
    v12 = v3[1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FF6454;
    v14[3] = &unk_101661430;
    v13 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    dispatch_group_notify(v13, v12, v14);

    objc_destroyWeak(&v20);
  }
}

void sub_100FF6394(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FF647C;
    block[3] = &unk_1016613E0;
    v11 = a2;
    v8 = *(a1 + 32);
    v7 = v8;
    v10 = v8;
    dispatch_async(v6, block);
  }
}

void sub_100FF647C(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Route Planning: userHasPaymentCard: %@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100FF671C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FF6740(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FF6818;
    block[3] = &unk_101661390;
    v12 = a2;
    v10 = *(a1 + 32);
    objc_copyWeak(&v11, (a1 + 40));
    v13 = a3;
    dispatch_async(v8, block);
    objc_destroyWeak(&v11);
  }
}

void sub_100FF6818(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100FF693C;
    v5[3] = &unk_101661368;
    objc_copyWeak(&v6, (a1 + 40));
    v7 = *(a1 + 49);
    dispatch_async(&_dispatch_main_q, v5);
    (*(*(a1 + 32) + 16))(*(a1 + 32), 1, v2, v3);
    objc_destroyWeak(&v6);
  }

  else
  {
    v4 = sub_10003D020();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Route Planning - User is not eligible for Transit + Pay with no payment card in Wallet", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100FF693C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[TransitPayFeatureDiscoveryMetadataStore alloc] initWithTouristStatus:*(a1 + 40)];
    v4 = v5[3];
    v5[3] = v3;

    WeakRetained = v5;
  }
}

void sub_100FF6B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FF6B78(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100FF6C0C;
    v6[3] = &unk_101661AE0;
    v7 = a2;
    v6[4] = v4;
    dispatch_async(v5, v6);
  }
}

id sub_100FF6C0C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_10003D020();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Route Planning - User is eligible for Transit + Pay in Route Planning", v6, 2u);
    }

    return [*(a1 + 32) _updateAvailability];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Route Planning - User is not eligible for Transit + Pay", buf, 2u);
    }

    return [*(a1 + 32) _tearDown];
  }
}

void sub_100FF6D98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = (WeakRetained + 88);
    if (v4 != v3[11])
    {
      v7 = v3;
      objc_storeStrong(v5, v4);
      v6 = [v7 delegate];
      [v6 source:v7 didUpdateAvailability:*(a1 + 32) != 0];

      v3 = v7;
    }
  }
}

uint64_t sub_100FF82B0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v67[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67[0] & 0x7F) << v5;
        if ((v67[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 21)
      {
        break;
      }

      if (v13 <= 30)
      {
        switch(v13)
        {
          case 0x16:
            *(a1 + 116) |= 0x10u;
            v67[0] = 0;
            v51 = [a2 position] + 8;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v58 = v67[0];
            v59 = 40;
            goto LABEL_128;
          case 0x17:
            *(a1 + 116) |= 0x40u;
            v67[0] = 0;
            v54 = [a2 position] + 8;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v58 = v67[0];
            v59 = 56;
            goto LABEL_128;
          case 0x1E:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 116) |= 0x100u;
            while (1)
            {
              LOBYTE(v67[0]) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v67[0] & 0x7F) << v18;
              if ((v67[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_114:
            v56 = 88;
            goto LABEL_115;
        }

LABEL_97:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_129;
      }

      if (v13 <= 39)
      {
        if (v13 == 31)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 116) |= 1u;
          while (1)
          {
            LOBYTE(v67[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v67[0] & 0x7F) << v30;
            if ((v67[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_102:
          *(a1 + 8) = v36;
          goto LABEL_129;
        }

        if (v13 == 32)
        {
          v16 = PBReaderReadString();
          v17 = 64;
LABEL_93:
          v53 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_129;
        }

        goto LABEL_97;
      }

      if (v13 == 40)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 116) |= 0x80u;
        while (1)
        {
          LOBYTE(v67[0]) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v67[0] & 0x7F) << v39;
          if ((v67[0] & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v41;
        }

LABEL_106:
        v56 = 72;
        goto LABEL_115;
      }

      if (v13 != 41)
      {
        goto LABEL_97;
      }

      v27 = objc_alloc_init(SyncedBookmarkRepr);
      [a1 addPlaces:v27];
      v67[0] = 0;
      v67[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100FF82B0(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_129:
      v65 = [a2 position];
      if (v65 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 9)
    {
      switch(v13)
      {
        case 1:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          while (1)
          {
            LOBYTE(v67[0]) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v67[0] & 0x7F) << v45;
            if ((v67[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v47;
          }

LABEL_110:
          v56 = 112;
LABEL_115:
          *(a1 + v56) = v24;
          goto LABEL_129;
        case 2:
          v16 = PBReaderReadString();
          v17 = 104;
          goto LABEL_93;
        case 4:
          v16 = PBReaderReadString();
          v17 = 96;
          goto LABEL_93;
      }
    }

    else if (v13 > 19)
    {
      if (v13 == 20)
      {
        *(a1 + 116) |= 8u;
        v67[0] = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v58 = v67[0];
        v59 = 32;
        goto LABEL_128;
      }

      if (v13 == 21)
      {
        *(a1 + 116) |= 0x20u;
        v67[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v63 = [a2 data];
          [v63 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v58 = v67[0];
        v59 = 48;
        goto LABEL_128;
      }
    }

    else
    {
      if (v13 == 10)
      {
        *(a1 + 116) |= 2u;
        v67[0] = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v58 = v67[0];
        v59 = 16;
        goto LABEL_128;
      }

      if (v13 == 11)
      {
        *(a1 + 116) |= 4u;
        v67[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v62 = [a2 data];
          [v62 getBytes:v67 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v58 = v67[0];
        v59 = 24;
LABEL_128:
        *(a1 + v59) = v58;
        goto LABEL_129;
      }
    }

    goto LABEL_97;
  }

  return [a2 hasError] ^ 1;
}

id sub_100FFAA84(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1112);

  return [v3 setAlpha:v2];
}

id sub_100FFAAE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFAB60;
  v4[3] = &unk_101661738;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [UIView _maps_animateForAndromeda:v1 animations:v2 completion:v4];
}

void sub_100FFAD2C(uint64_t a1)
{
  v2 = [*(a1 + 32) nextTopContext];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) topContext];
  }

  v5 = v4;

  if ([*(a1 + 32) isRunningNavigationDisplay] && (objc_msgSend(*(a1 + 32), "navigationDisplay"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isCameraPanning"), v6, v7))
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 wantsRecenterButtonDuringNavigation];
      v9 = 1;
    }

    else
    {
      v9 = 1;
      v8 = 1;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = [v5 forceRecenterButtonVisible];
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = sub_10000B11C();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_34;
  }

  v27 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_19;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_19:

    goto LABEL_21;
  }

  v16 = @"<nil>";
LABEL_21:

  v17 = v16;
  v18 = v5;
  if (!v18)
  {
    v23 = @"<nil>";
    goto LABEL_29;
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

LABEL_29:
  v24 = @"NO";
  if (v8)
  {
    v24 = @"YES";
  }

  v25 = "forced by context";
  *buf = 138544130;
  v29 = v17;
  v30 = 2114;
  v31 = v23;
  if (v27)
  {
    v25 = "nav camera panning";
  }

  v32 = 2114;
  v33 = v24;
  v34 = 2082;
  v35 = v25;
  v26 = v24;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] showRecenterButton for context: %{public}@: %{public}@, reason: %{public}s", buf, 0x2Au);

LABEL_34:
  [*(*(a1 + 32) + 1136) setHidden:v8 ^ 1 animated:*(a1 + 40)];
}

void sub_100FFB3B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1120] == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = [*(a1 + 32) contexts];
    v4 = [v3 lastObject];
  }

  else
  {
    v5 = [v2 contexts];
    v6 = [v5 reverseObjectEnumerator];
    v4 = sub_100030774(v6, &stru_1016615B0);

    if ([*(a1 + 32) isInactive])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 wantsDefaultDimmingOverlayForStaleMapEffect];
  }

  else
  {
    v7 = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_40;
  }

  v8 = *(*(a1 + 32) + 1104);
  if (v8)
  {
    if (v7 == [v8 applyDimmingEffect])
    {
      goto LABEL_40;
    }

    v8 = *(*(a1 + 32) + 1104);
  }

  [v8 removeFromSuperview];
  v9 = [StaleMapEffectView alloc];
  v10 = [*(a1 + 32) mapView];
  v11 = [(StaleMapEffectView *)v9 initWithMapView:v10 applyDimmingEffect:v7];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1104);
  *(v12 + 1104) = v11;

  [*(*(a1 + 32) + 1104) setAlpha:0.0];
  v14 = [*(a1 + 32) mapView];
  v15 = [v14 superview];

  v16 = sub_10000B11C();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (!v15)
  {
    if (!v17)
    {
LABEL_35:

      v30 = [*(a1 + 32) view];
      [v30 insertSubview:*(*(a1 + 32) + 1104) atIndex:0];
      goto LABEL_36;
    }

    v24 = *(a1 + 32);
    if (!v24)
    {
      v29 = @"<nil>";
      goto LABEL_34;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_29;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_29:

LABEL_34:
    *buf = 138543362;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Inserting stale map effective at the root of the view hierarchy", buf, 0xCu);

    goto LABEL_35;
  }

  if (v17)
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      v23 = @"<nil>";
      goto LABEL_31;
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

        goto LABEL_21;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_21:

LABEL_31:
    *buf = 138543362;
    v39 = v23;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Inserting stale map effective above the map", buf, 0xCu);
  }

  v30 = [*(a1 + 32) view];
  v31 = *(a1 + 32);
  v32 = v31[138];
  v33 = [v31 mapView];
  [v30 insertSubview:v32 aboveSubview:v33];

LABEL_36:
  v34 = *(*(a1 + 32) + 1112);
  if (v34)
  {
    [v34 removeFromSuperview];
    v35 = *(a1 + 32);
    v36 = *(v35 + 1112);
    *(v35 + 1112) = 0;
  }

  if ((v7 & 1) == 0)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100FFBD6C;
    v37[3] = &unk_1016615D8;
    v37[4] = *(a1 + 32);
    [v4 insertDimmingOverlayForStaleMapEffectWithBlock:v37];
  }

LABEL_40:
}

void sub_100FFB8D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) superview];

  if (v2)
  {
    v3 = 0.0;
    if (*(*(*(a1 + 40) + 8) + 24) == 1 && (v4 = [*(a1 + 32) isInactive], v3 = 1.0, !v4))
    {
      v5 = [*(a1 + 32) traitCollection];
      v6 = [v5 isLuminanceReduced];
      v7 = 0.0;
      if (v6)
      {
        v7 = 1.0;
      }

      [*(*(a1 + 32) + 1104) setAlpha:v7];
    }

    else
    {
      [*(*(a1 + 32) + 1104) setAlpha:v3];
    }

    [*(*(a1 + 32) + 1104) alpha];
    [*(*(a1 + 32) + 1112) setAlpha:?];
  }

  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_18;
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

        goto LABEL_16;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_16:

LABEL_18:
    v15 = *(*(a1 + 32) + 1104);
    v16 = v14;
    [v15 alpha];
    v18 = v17;
    v19 = *(*(a1 + 32) + 1104);

    *buf = 138543874;
    v21 = v14;
    v22 = 2048;
    v23 = v18;
    v24 = 1024;
    v25 = v19 != 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Animating stale map effect to alpha: %f, hasSuperview: %d", buf, 0x1Cu);
  }
}

void sub_100FFBB58(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 1104) superview];

    if (v2)
    {
      v3 = sub_10000B11C();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        [*(*(a1 + 32) + 1104) removeFromSuperview];
        v10 = *(a1 + 32);
        v11 = *(v10 + 1104);
        *(v10 + 1104) = 0;

        [*(*(a1 + 32) + 1112) removeFromSuperview];
        v12 = *(a1 + 32);
        v13 = *(v12 + 1112);
        *(v12 + 1112) = 0;

        v14 = *(a1 + 32);
        v15 = *(v14 + 1128);
        *(v14 + 1128) = 0;

        return;
      }

      v4 = *(a1 + 32);
      if (!v4)
      {
        v9 = @"<nil>";
        goto LABEL_12;
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

          goto LABEL_10;
        }
      }

      v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_10:

LABEL_12:
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Removing stale map effect from the view hierarchy", buf, 0xCu);

      goto LABEL_13;
    }
  }
}

id sub_100FFBD6C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1112);
  v4 = a2;
  [v3 removeFromSuperview];
  v5 = [StaleMapEffectView dimmingOverlayForView:v4];

  [v5 setAlpha:0.0];
  objc_storeStrong((*(a1 + 32) + 1112), v5);

  return v5;
}

BOOL sub_100FFBE00(id a1, IOSChromeContext *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(IOSChromeContext *)v4 requiresStaleMapEffect];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100FFC004(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) _containerViewControllerWithContext:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFC0EC;
  v4[3] = &unk_101661548;
  objc_copyWeak(&v5, &location);
  [v2 registerResizingObserver:v3 withBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100FFC0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FFC0EC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOverlayVisibilityWithCurrentContainerStyle:a2 progress:a4];
}

void sub_100FFC224(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 previousTopContext];
  v3 = [v2 _containerViewControllerWithContext:v4];
  [v3 registerResizingObserver:*(a1 + 32) withBlock:0];
}

id sub_100FFD288(uint64_t a1)
{
  [*(a1 + 32) _updateChildViewLayouts];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);

  return [v3 updateMapEdgeInsets];
}

void sub_100FFDB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100FFDB40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showJunctionViewIfNeeded];
}

void sub_100FFE004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateSecondaryAlpha];
    [v2 updateJunctionViewAlpha];
    [v2 _updateNavSignCorners];
    WeakRetained = v2;
  }
}

void sub_100FFE3AC(uint64_t a1)
{
  [*(a1 + 32) updateSecondaryAlpha];
  [*(a1 + 32) updateJunctionViewAlpha];
  [*(a1 + 32) _updateNavSignCorners];
  [*(a1 + 32) updateStatusBarColor];
  [*(a1 + 32) updateLaneGuidanceBackgroundColor];
  [*(a1 + 32) updateSignContainerConstraints];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_100FFE42C(id a1)
{
  v3 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_10195FA20;
  qword_10195FA20 = v1;
}

void sub_100FFE7F4(uint64_t a1)
{
  [*(a1 + 32) _updateContaineeHiddenIfNeeded];
  [*(a1 + 32) _updateControlsHiddenAnimated:1];
  v2 = *(a1 + 32);
  if (*(v2 + 708))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 635);
  }

  [*(v2 + 488) setHidden:v3];
  v4 = [*(a1 + 32) iosBasedChromeViewController];
  [v4 setNeedsUpdateComponent:@"statusBarStyle" animated:1];

  v5 = [*(a1 + 32) iosBasedChromeViewController];
  [v5 setNeedsUpdateComponent:@"StaleMapEffect" animated:1];

  v6 = [*(a1 + 32) iosBasedChromeViewController];
  [v6 updateComponentsIfNeeded];
}

void sub_100FFFBD0(uint64_t a1)
{
  v2 = [*(a1 + 32) navSignViewController];
  v3 = [v2 isExpanded];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _usedPortraitTopSpace];
    [*(*(a1 + 32) + 496) setConstant:-v4];
  }

  v5 = [*(a1 + 32) indicatorsViewController];
  v6 = [v5 view];
  [v6 setAlpha:0.0];

  [*(*(a1 + 32) + 488) setAlpha:0.0];
  [*(*(a1 + 32) + 680) setAlpha:0.0];
  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

void sub_101000964(uint64_t a1)
{
  [*(a1 + 32) _updateRecenterButtonLayout];
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_10100179C(uint64_t a1)
{
  v1 = [*(a1 + 32) navSignViewController];
  [v1 clearPartialExpansionAnimated:0];
}

void sub_101001980(uint64_t a1)
{
  v2 = [*(a1 + 32) resumeRouteBanner];
  [v2 showIfNeeded];

  [*(a1 + 32) _updateChildViewLayouts];
  [*(a1 + 32) updateSignContainerConstraints];
  [*(a1 + 32) _updateContaineeHiddenIfNeeded];
  [*(a1 + 32) junctionViewAlpha];
  v4 = v3;
  v5 = [*(a1 + 32) junctionViewController];
  v6 = [v5 view];
  [v6 setAlpha:v4];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

id sub_101001A48(uint64_t a1)
{
  [*(a1 + 32) junctionViewAlpha];
  v3 = v2;
  v4 = [*(a1 + 32) junctionViewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];

  v6 = *(a1 + 32);

  return [v6 _updateNavSignCorners];
}

void sub_101001BC4(uint64_t a1)
{
  [*(a1 + 32) _updateChildViewLayouts];
  [*(a1 + 32) updateSignContainerConstraints];
  [*(a1 + 32) _updateContaineeHiddenIfNeeded];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_101002358(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 navSignViewController];
    if ([v4 isExpanded])
    {
      sub_100A5FE68();
    }

    else
    {
      sub_100A5FDCC();
    }
    v5 = ;
    v6 = [*(a1 + 32) chromeViewController];
    [v6 setStatusBarAdditionalColor:v5];
  }

  else
  {
    [v3 updateStatusBarColor];
  }

  v7 = [*(a1 + 32) chromeContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 containerLuminanceDidChange];
}

id sub_101002920(uint64_t a1)
{
  [*(a1 + 32) _updateChildViewLayouts];
  v2 = [*(a1 + 32) view];
  v3 = [v2 superview];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);

  return [v4 _updateSignContainerConstraints];
}

void sub_101002CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_101002CDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPedestrianARFeatureIntroTeachableMomentCardIfNecessary];
}

void sub_101002D1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary];
}

void sub_1010034E8(uint64_t a1)
{
  [*(a1 + 32) _pinSignAndIndicators];
  [*(a1 + 32) updateSignContainerConstraints];
  [*(a1 + 32) _navigationChromeVisibilityChanged];
  [*(a1 + 32) _updateChildViewLayouts];
  v3 = [*(a1 + 32) view];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

void sub_101004E70(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  [*(a1 + 32) updateMapEdgeInsets];
  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void sub_101004FE0(uint64_t a1)
{
  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  [*(a1 + 32) updateMapEdgeInsets];
  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void sub_101007A38(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_10195FA30;
  qword_10195FA30 = v1;
}

void sub_1010085C8(uint64_t a1)
{
  v1 = [*(a1 + 32) detailsButton];
  [v1 setTransform:&v2];
}

void sub_10100AF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10100AF74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _didTapPrimaryActionButton:v4];
}

void sub_10100B1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10100B1CC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = 0;
    goto LABEL_29;
  }

  v5 = sub_10000FA08(WeakRetained);
  v6 = [v4 isSelectionBackgroundVisible];
  if ([v4 isHighlighted])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isFocused];
  }

  v9 = [v4 traitCollection];
  v10 = [v9 activeAppearance];

  v8 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  v11 = sub_10000FA08(v4);
  v12 = 10.0;
  if (v11 != 5)
  {
    v12 = 16.0;
  }

  [v8 setBackgroundInsets:{0.0, v12, 0.0, v12}];
  v13 = sub_10000FA08(v4);
  v14 = 13.0;
  if (v13 == 5)
  {
    v14 = 5.0;
  }

  [v8 setCornerRadius:v14];
  if (v5 != 5)
  {
    if (v6)
    {
      +[UIColor quaternarySystemFillColor];
    }

    else
    {
      +[UIColor secondarySystemGroupedBackgroundColor];
    }
    v15 = ;
    goto LABEL_26;
  }

  if (v6)
  {
    if (v10 == 1)
    {
      if (([v4 hasSelectedStep] | v7))
      {
        v17 = 10;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 3;
    }

    goto LABEL_28;
  }

  if (v10 == 1)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v15 = +[UIColor clearColor];
LABEL_26:
    v18 = v15;
    [v8 setBackgroundColorMode:0];
    [v8 setBackgroundColor:v18];

    goto LABEL_29;
  }

  v17 = 4;
LABEL_28:
  [v8 setBackgroundColorMode:v17];
LABEL_29:

  return v8;
}

void sub_10100C734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10100C754(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonReplica];
  v3 = [v2 layer];
  [v3 setOpacity:0.0];

  v5 = [*(a1 + 32) arrowContainerView];
  v4 = [v5 layer];
  [v4 setOpacity:0.0];
}

void sub_10100C7EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained buttonReplica];
  [v3 removeFromSuperview];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 arrowContainerView];
  [v4 removeFromSuperview];
}

id sub_10100CA18()
{
  if (qword_10195FA48 != -1)
  {
    dispatch_once(&qword_10195FA48, &stru_1016619E8);
  }

  v1 = qword_10195FA40;

  return v1;
}

void sub_10100CA6C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARFeatureIntroTeachableMomentContaineeViewController");
  v2 = qword_10195FA40;
  qword_10195FA40 = v1;
}

void sub_1010127E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UITraitCollection _currentTraitCollection];
  [UITraitCollection _setCurrentTraitCollection:*(*(a1 + 32) + 48)];
  v5 = [v3 CGContext];
  if ([*(*(a1 + 32) + 48) userInterfaceIdiom] != 5)
  {
    v6 = +[UIColor secondarySystemBackgroundColor];
    v7 = +[UIColor systemBackgroundColor];
    [v6 setFill];
    CGContextFillRect(v5, *(a1 + 40));
    [v7 setFill];
    CGContextFillRect(v5, *(a1 + 72));
  }

  if (*(*(a1 + 32) + 8))
  {
    CGContextSaveGState(v5);
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, 1.0, -1.0);
    v8 = -*(a1 + 128);
    v10 = v12;
    CGAffineTransformTranslate(&transform, &v10, 0.0, v8);
    v12 = transform;
    CGContextConcatCTM(v5, &transform);
    CGContextDrawImage(v5, *(a1 + 104), [*(*(a1 + 32) + 8) CGImage]);
    CGContextRestoreGState(v5);
  }

  CGContextSaveGState(v5);
  CGContextTranslateCTM(v5, 0.0, *(a1 + 128));
  v9 = [*(*(a1 + 32) + 24) layer];
  [v9 renderInContext:{objc_msgSend(v3, "CGContext")}];

  CGContextRestoreGState(v5);
  [UITraitCollection _setCurrentTraitCollection:v4];
}

id sub_101012C84(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_101012CF8;
  v3[3] = &unk_101661A68;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 startWithCompletionHandler:v3];
}

void sub_101012CF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101012DC4;
  block[3] = &unk_101661A40;
  v9 = a3;
  v10 = v5;
  v11 = *(a1 + 32);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void *sub_101012DC4(void *result)
{
  if (!result[4])
  {
    v2 = result[5];
    if (v2)
    {
      v3 = result[6];
      v4 = [v2 image];
      [v3 updateWithSnapshot:v4];

      return kdebug_trace();
    }
  }

  return result;
}

void sub_101013808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 traitsForRouteSearchViewController:v4];

  v6 = +[MKMapService sharedService];
  v7 = [v6 ticketForSearchFieldOfflinePlaceholderWithTraits:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_101013930;
  v8[3] = &unk_101661B70;
  objc_copyWeak(&v9, (a1 + 32));
  [v7 submitWithHandler:v8 networkActivity:0];
  objc_destroyWeak(&v9);
}

void sub_101013930(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5)
    {
      WeakRetained[168] = a2 & 1;
    }

    v8 = sub_100798A3C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (v7[168])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The Offline Maps search capability status - %@ And offline search capability api status : %@", &v11, 0x16u);
    }

    if (v7[169] == 1 && v7[168] == 1)
    {
      v7[169] = 0;
    }

    [v7 _addSubViewsWithTextSearchSupport:v7[168]];
    [v7 _selectFieldAtIndex:*(v7 + 22) beginEditing:1];
  }
}

void sub_101013F60(uint64_t a1, uint64_t a2)
{
  v5 = [SearchFieldItem searchFieldItemsForRouteHistoryEntry:a2];
  v3 = [*(a1 + 32) fieldsViewController];
  [v3 setItems:v5];

  v4 = [*(a1 + 32) fieldsViewController];
  [v4 endEditingFields];

  [*(a1 + 32) _requestRoute];
}

void sub_101017EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_101017EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewLayout];
}

uint64_t sub_101019474(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [*(a1 + 32) objectForKey:v6];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  v15 = v14;

  v16 = [v11 imageToDisplayWithScreenScale:0 nightMode:*(a1 + 40)];

  [v16 size];
  v18 = v17;

  v19 = [v15 imageToDisplayWithScreenScale:0 nightMode:*(a1 + 40)];

  [v19 size];
  v21 = v20;

  v22 = -1;
  if (v18 >= v21)
  {
    v22 = 1;
  }

  if (v18 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

uint64_t sub_1010198D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_101019D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_101019D6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_101019D84(uint64_t a1, void *a2)
{
  v14 = a2;
  if (![*(*(*(a1 + 40) + 8) + 40) length])
  {
    v3 = [v14 query];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = [v14 locationDisplayString];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[RAP] Cell_subtitle_for_a_previous_search_with_results" value:@"localized string not found" table:0];

    v11 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [*(a1 + 32) searchResultsCount], *(*(*(a1 + 48) + 8) + 40));
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_101019EB4(uint64_t a1, void *a2)
{
  v6 = [a2 geoMapItem];
  v3 = [v6 name];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t NavigationCell.init(model:tapHandler:)()
{
  return NavigationCell.init(model:tapHandler:)();
}

{
  return NavigationCell.init(model:tapHandler:)();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter()
{
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

{
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

{
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.ratingAndPeopleString()()
{
  v0 = WatchPlaceRatingRowViewModel.ratingAndPeopleString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.subscript.setter()
{
  return EnvironmentValues.subscript.setter();
}

{
  return EnvironmentValues.subscript.setter();
}

uint64_t UIHostingConfiguration.margins(_:_:)()
{
  return UIHostingConfiguration.margins(_:_:)();
}

{
  return UIHostingConfiguration.margins(_:_:)();
}

uint64_t List.init(selection:content:)()
{
  return List.init(selection:content:)();
}

{
  return List.init(selection:content:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

uint64_t ForEach<>.init(_:id:content:)()
{
  return ForEach<>.init(_:id:content:)();
}

{
  return ForEach<>.init(_:id:content:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t UITraitCollection.subscript.getter()
{
  return UITraitCollection.subscript.getter();
}

{
  return UITraitCollection.subscript.getter();
}

{
  return UITraitCollection.subscript.getter();
}

uint64_t OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)()
{
  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

{
  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}