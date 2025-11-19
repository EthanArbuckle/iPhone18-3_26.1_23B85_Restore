void sub_10066B8D4(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) keys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10066BAFC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  v2 = *(a1 + 32);

  return [v2 _updateItemVisibility];
}

RouteStartEndItem *__cdecl sub_10066BB5C(id a1, SearchResult *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[RouteStartEndItem alloc] initWithSearchResult:v3 routeFeatureType:2];

  return v4;
}

void sub_10066BD84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 48);
  v9 = a2;
  v6 = [v5 count];
  v7 = [*(a1 + 32) visibilityMask];
  v8 = 2;
  if (v6 == (a3 + 1))
  {
    v8 = 4;
  }

  [v9 setShouldBeHiddenFromMap:(v7 & v8) == 0];
}

void sub_10066BF10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
}

void sub_10066C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10066C0D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = a2;
  v6 = [v22 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation];
  v7 = v22;
  if (v6)
  {
    v8 = [v22 searchResult];
    v9 = v8;
    v10 = *(*(*(a1 + 32) + 8) + 24);
    if (!v10)
    {
      v11 = [v8 mapItem];
      v12 = [v11 _venueInfo];
      v13 = [v12 venueIdentifier];
      v14 = [v13 _hasVenueID];

      if (v14)
      {
        v15 = [v9 mapItem];
        v16 = [v15 _venueInfo];
        v17 = [v16 venueIdentifier];
        *(*(*(a1 + 32) + 8) + 24) = [v17 venueID];

LABEL_8:
        v7 = v22;
        goto LABEL_9;
      }

      v10 = *(*(*(a1 + 32) + 8) + 24);
    }

    v18 = [v9 mapItem];
    v19 = [v18 _venueInfo];
    v20 = [v19 venueIdentifier];
    v21 = [v20 venueID];

    if (v10 != v21)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void sub_10066C84C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195CDF0;
  qword_10195CDF0 = v1;
}

id sub_10066F914(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 presentNewToastIfNecessary];
}

void sub_10066FEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10066FED8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10066FFB8;
    block[3] = &unk_101661A40;
    block[4] = WeakRetained;
    v12 = v7;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

id sub_10066FFB8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    (*(v3 + 16))(v2[3], *(a1 + 48), *(a1 + 40));
    v2 = *(a1 + 32);
  }

  return [v2 _completeOperation];
}

void sub_1006703D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1006704F0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Rebroadcasting waypoint", buf, 2u);
    }

    v3 = [WeakRetained resolvedWaypointSetResult];

    if (!v3)
    {
      v4 = sub_1006704F0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Tried to rebroadcast waypoints but we don't have any", v7, 2u);
      }
    }

    v5 = [WeakRetained delegate];
    v6 = [WeakRetained resolvedWaypointSetResult];
    [v5 waypointController:WeakRetained didResolveWaypointSet:v6];
  }
}

id sub_1006704F0()
{
  if (qword_10195CE18 != -1)
  {
    dispatch_once(&qword_10195CE18, &stru_101625548);
  }

  v1 = qword_10195CE10;

  return v1;
}

void sub_100670544(id a1)
{
  v1 = os_log_create("com.apple.Maps", "WaypointController");
  v2 = qword_10195CE10;
  qword_10195CE10 = v1;
}

void sub_1006707AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v3 = sub_1006704F0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v4 = "WaypointController was deallocated before we could kick off dynamic origin refreshing; will not refresh dynamic origin";
      v5 = &v9;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([WeakRetained isRunning])
  {
    v3 = sub_1006704F0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v4 = "Waypoint resolution is currently already in flight; will not refresh dynamic origin";
      v5 = &v8;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v6 = [v2 resolvedWaypointSetResult];

  if (!v6)
  {
    v3 = sub_1006704F0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v4 = "Waypoint resolution has not begun yet; will not refresh dynamic origin";
      v5 = &v7;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [v2 _refreshDynamicOrigin];
LABEL_13:
}

void sub_1006709D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006709F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100670A08(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) receivedResults];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [*(a1 + 32) receivedResults];
        v10 = [v9 objectForKey:v8];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100670BB8;
        v12[3] = &unk_101625508;
        v11 = *(a1 + 40);
        v12[4] = v8;
        v12[5] = v11;
        [v10 withValue:v12 orError:&stru_101625528];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_100670BB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v5 = [v2 request];
  [v3 setObject:v4 forKeyedSubscript:v5];
}

void sub_10067140C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 receivedResults];
  v6 = [v5 objectForKey:v4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100671548;
  v10[3] = &unk_1016254B8;
  v11 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100671554;
  v7[3] = &unk_10165D300;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v6 withValue:v10 orError:v7];
}

void sub_100671554(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = +[NSNull null];
  [v3 addObject:v4];

  [*(a1 + 40) addObject:v5];
}

void sub_100671898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006718C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained isolationQueue];
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006719B0;
    block[3] = &unk_10163B4E8;
    v11 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 40);
    v10 = WeakRetained;
    dispatch_async(v5, block);
  }
}

id sub_1006719B0(uint64_t a1)
{
  v2 = sub_1006704F0();
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 32);
    v15 = 138543362;
    v16 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "FetchGEOComposedWaypoint", "%{public}@", &v15, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = sub_1006704F0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 48) identifier];
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Waypoint (%{public}@) resolving succeeded", &v15, 0xCu);
    }

    v10 = [*(a1 + 56) receivedResults];
    [v10 setObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 48) identifier];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Waypoint (%{public}@) resolving returned a nil result; defaulting to a generic error.", &v15, 0xCu);
    }

    v10 = [*(a1 + 56) receivedResults];
    v12 = [NSError errorWithDomain:@"WaypointRequestErrorDomain" code:0 userInfo:0];
    v13 = [Result resultWithError:v12];
    [v10 setObject:v13 forKey:*(a1 + 48)];
  }

  return [*(a1 + 56) _processTaskFinished:*(a1 + 48)];
}

void sub_100671C98(uint64_t a1)
{
  v2 = sub_1006704F0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Refreshing waypoints", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopOnIsolationQueue];
  v4 = [WeakRetained receivedResults];
  [v4 removeAllObjects];

  [WeakRetained _startOnIsolationQueue];
}

void sub_100672084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopOnIsolationQueue];
}

void sub_1006725F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&location);
  os_activity_scope_leave((v15 - 48));
  _Unwind_Resume(a1);
}

void sub_100672618(uint64_t a1)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v5);
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setActivity:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _startOnIsolationQueue];

  os_activity_scope_leave(&v5);
}

void sub_10067450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100674524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10067453C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 iOSBundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

BOOL sub_100674DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = sub_100006E1C();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v4 = 0;
      goto LABEL_14;
    }

    v6 = *(a1 + 32);
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_12;
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

        goto LABEL_10;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] CarAlternateRouteItemContainingView: focusItemsInRect got focusItem that is not CarAlternateRouteFocusItem.", buf, 0xCu);

    goto LABEL_13;
  }

  [v3 frame];
  v4 = CGRectIntersectsRect(v15, *(a1 + 40));
LABEL_14:

  return v4;
}

id sub_1006753EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 routeInfo];
  v5 = [v4 route];
  v6 = [v3 isEqual:v5];

  return v6;
}

void sub_100675458(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarRouteSelectionController");
  v2 = qword_10195CE20;
  qword_10195CE20 = v1;
}

uint64_t sub_100676234(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentRoute];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

NSValue *sub_100676290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _frameForRoute:a2 offset:a3];

  return [NSValue valueWithCGRect:?];
}

CarAlternateRouteFocusItem *sub_1006762CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [[CarAlternateRouteFocusItem alloc] initWithRoute:v6 containingView:*(*(a1 + 40) + 24) frame:v9 delegate:v11, v13, v15];

  return v16;
}

int64_t sub_100676388(id a1, CarAlternateRouteFocusItem *a2, CarAlternateRouteFocusItem *a3)
{
  v4 = a3;
  v5 = [(CarAlternateRouteFocusItem *)a2 route];
  [v5 _maps_boundingMapRect];
  v7 = v6;

  v8 = [(CarAlternateRouteFocusItem *)v4 route];

  [v8 _maps_boundingMapRect];
  v10 = v9;

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

id sub_100676910(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

id sub_100678B44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

id sub_100678BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

void sub_100679124(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100679140(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1] = 0;
    v4 = WeakRetained;
    [WeakRetained setState:1 withReason:5];
    v4[16] = 0;
    [v4 _noteGuidanceStateChanged];
    [v4 _pushGuidanceStateIfChangedWithVibration:a2];
    WeakRetained = v4;
  }
}

void sub_1006791B8(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10067924C;
  v3[3] = &unk_1016610E0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1006793E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100679400(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1] = *(a1 + 40);
    v5 = WeakRetained;
    [WeakRetained _noteGuidanceStateChanged];
    [v5 _pushGuidanceStateIfChangedWithVibration:a2];
    WeakRetained = v5;
  }
}

void sub_100679A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100679A90(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100679B28;
  v3[3] = &unk_101661368;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_100679B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteGuidanceStateChanged];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _pushGuidanceStateIfChangedWithVibration:*(a1 + 40)];
}

void sub_10067B53C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100E9E6E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MAPS IPC Sent request: %@ error: %@", &v6, 0x16u);
  }
}

void sub_10067B724(uint64_t a1)
{
  v3 = [*(a1 + 32) _currentGuidanceStateMessageWithGuidanceCausedVibration:*(a1 + 40)];
  [*(*(a1 + 32) + 112) receivedGuidanceState:v3];
  v2 = [*(a1 + 32) backgroundNavigationDelegate];
  [v2 updateWithGuidance:v3];

  [*(a1 + 32) _sendWeakLocationNotificationIfNeededWithGuidanceState:v3];
}

void sub_10067BD38(uint64_t a1)
{
  v2 = [*(a1 + 32) externalGuidanceSource];

  if (v2)
  {
    v3 = [*(a1 + 40) requestedVolume];
    if (v3)
    {
      v16 = v3;
      v4 = [*(a1 + 32) externalGuidanceSource];
      [v4 setVoiceGuidanceEnabled:{objc_msgSend(v16, "isEqualToString:", @"Off Volume"}];

      v5 = *(*(a1 + 32) + 156);
      v6 = v16;
      if (qword_10195CE48 != -1)
      {
        dispatch_once(&qword_10195CE48, &stru_101625848);
      }

      v7 = qword_10195CE40;
      if (v5 == 2)
      {
        v8 = MNHeadphonesAreInUse();
        v9 = @"VoiceVolumeForWalkingWithoutHeadphonesContext";
        if (v8)
        {
          v9 = @"VoiceVolumeForWalkingWithHeadphonesContext";
        }

        v10 = v9;
      }

      else
      {
        v10 = @"VoiceVolumeForDrivingContext";
      }

      v11 = [v6 isEqualToString:@"Off Volume"];
      if ((v11 & 1) == 0)
      {
        v12 = [v7 path];
        _CFPreferencesSetAppValueWithContainer();
      }

      if (qword_10195CE48 != -1)
      {
        dispatch_once(&qword_10195CE48, &stru_101625848);
      }

      v13 = qword_10195CE40;
      [NSNumber numberWithBool:v11];
      v14 = [v13 path];
      _CFPreferencesSetAppValueWithContainer();

      v15 = [v13 path];

      _CFPreferencesSynchronizeWithContainer();
      GSSendAppPreferencesChanged();
      GSSendAppPreferencesChanged();

      v3 = v16;
    }
  }
}

void sub_10067C0F4(uint64_t a1)
{
  v2 = [*(a1 + 32) externalGuidanceSource];
  [v2 setVoiceGuidanceEnabled:{objc_msgSend(*(a1 + 40), "muteNavigation") ^ 1}];
}

void sub_10067C2AC(uint64_t a1)
{
  [*(a1 + 32) setStartNavigationDelayedReply:*(a1 + 48)];
  [*(a1 + 32) _startWaitingToSendResponse];
  v2 = [*(a1 + 32) backgroundNavigationDelegate];
  [v2 startPreparedBackgroundNavigationWithMessage:*(a1 + 40)];
}

void sub_10067C46C(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [CLInUseAssertion newAssertionForBundleIdentifier:v3 withReason:@"Maps is starting navigation in response to a Siri/Watch request"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  [*(a1 + 32) setLoadDirectionsDelayedReply:*(a1 + 48)];
  [*(a1 + 32) _startWaitingToSendResponse];
  v7 = +[UIApplication _maps_keyMapsSceneDelegate];
  if (v7)
  {

LABEL_4:
    v8 = sub_100E9E6E8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC There is a key and/or application scene, continuing with the request", buf, 2u);
    }

    v9 = [*(a1 + 32) backgroundNavigationDelegate];
    [v9 prepareBackgroundNavigationWithMessage:*(a1 + 40)];

    return;
  }

  if (+[UIApplication _maps_numberOfApplicationScenes])
  {
    goto LABEL_4;
  }

  v10 = sub_100E9E6E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MAPS IPC There isn't a key nor application scene, delaying request", v11, 2u);
  }

  [*(a1 + 32) _startWaitingToHandleMessage:*(a1 + 40)];
}

void sub_10067C70C(uint64_t a1)
{
  v2 = [*(a1 + 32) externalGuidanceSource];

  if (v2)
  {
    v3 = [*(a1 + 32) externalGuidanceSource];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10067C824;
    v6[3] = &unk_10165F438;
    v7 = *(a1 + 40);
    [v3 repeatCurrentGuidance:v6];
  }

  else
  {
    v5 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCNavigationActionReply *)v5 setSuccess:0];
    [(IPCNavigationActionReply *)v5 setNavigationActionError:1];
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }
  }
}

void sub_10067C824(uint64_t a1, uint64_t a2)
{
  v6 = objc_alloc_init(IPCNavigationActionReply);
  [(IPCNavigationActionReply *)v6 setSuccess:a2];
  if ((a2 & 1) == 0)
  {
    [(IPCNavigationActionReply *)v6 setNavigationActionError:2];
  }

  v4 = *(a1 + 32);
  v5 = v6;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
    v5 = v6;
  }
}

void sub_10067C9D0(uint64_t a1)
{
  v2 = [*(a1 + 32) externalGuidanceSource];

  if (v2)
  {
    v3 = [*(a1 + 32) externalGuidanceSource];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10067CAD0;
    v5[3] = &unk_10165F438;
    v6 = *(a1 + 40);
    [v3 repeatCurrentTrafficAlert:v5];
  }

  else
  {
    v4 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCNavigationActionReply *)v4 setSuccess:0];
    [(IPCNavigationActionReply *)v4 setNavigationActionError:1];
  }
}

void sub_10067CAD0(uint64_t a1, uint64_t a2)
{
  v6 = objc_alloc_init(IPCNavigationActionReply);
  [(IPCNavigationActionReply *)v6 setSuccess:a2];
  if ((a2 & 1) == 0)
  {
    [(IPCNavigationActionReply *)v6 setNavigationActionError:2];
  }

  v4 = *(a1 + 32);
  v5 = v6;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
    v5 = v6;
  }
}

void sub_10067CC28(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067CCD8;
  block[3] = &unk_1016605F8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10067CCD8(uint64_t a1)
{
  *(*(a1 + 32) + 33) = 1;
  [*(a1 + 32) setNotificationSettings:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10067CE7C(id *a1)
{
  v2 = [a1[4] _currentGuidanceStateMessageWithGuidanceCausedVibration:0];
  if ([a1[5] includeRoute])
  {
    v3 = [a1[4] externalGuidanceSource];
    v4 = [v3 routeRepresentator];
    v5 = [v4 legacyRouteRepresentation];
    [v2 setLegacyRouteData:v5];

    v6 = [a1[4] externalGuidanceSource];
    v7 = [v6 routeRepresentator];
    v8 = [v7 originalWaypointRouteRepresentation];
    [v2 setOriginalWaypointRouteData:v8];

    v9 = [a1[4] externalGuidanceSource];
    v10 = [v9 etaFilterData];
    [v2 setEtaFilterData:v10];

    v11 = [a1[4] externalGuidanceSource];
    v12 = [v11 incidentsOnRouteData];
    [v2 setIncidentsOnRouteData:v12];

    v13 = [a1[4] externalGuidanceSource];
    v14 = [v13 incidentsOnRouteOffsets];
    [v2 setIncidentsOnRouteOffsets:v14];
  }

  v15 = [a1[4] virtualGarageSource];

  if (v15)
  {
    v16 = [a1[4] virtualGarageSource];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10067D0A4;
    v18[3] = &unk_1016257C0;
    v19 = v2;
    v20 = a1[6];
    [v16 getEvChargingMetadata:v18];
  }

  else
  {
    v17 = a1[6];
    if (v17)
    {
      v17[2](v17, v2);
    }
  }
}

void sub_10067D0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setEvChargingMetadata:v3];
    v4 = sub_100E9E6E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 debugDescription];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MAPS IPC Attached EV info in the response: %@", &v7, 0xCu);
    }
  }

  else
  {
    v4 = sub_100E9E6E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MAPS IPC No EV info could be found.", &v7, 2u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32));
  }
}

void sub_10067D304(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v7 = +[UIApplication sharedMapsDelegate];
  [v7 dismissCurrentInterruptionOfKind:7];
  v2 = objc_alloc_init(IPCNavigationActionReply);
  v3 = +[MNNavigationService sharedService];
  [v3 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  if (IsNavigating)
  {
    v5 = [*(a1 + 32) backgroundNavigationDelegate];
    [v5 endBackgroundNavigation];

    [(IPCNavigationActionReply *)v2 setSuccess:1];
  }

  else
  {
    [(IPCNavigationActionReply *)v2 setSuccess:0];
    [(IPCNavigationActionReply *)v2 setNavigationActionError:1];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v2);
  }
}

uint64_t sub_10067D51C(uint64_t a1)
{
  v2 = +[UIApplication sharedMapsDelegate];
  [v2 dismissCurrentInterruptionOfKind:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10067D6F4(uint64_t a1)
{
  v14 = objc_alloc_init(IPCNavigationActionReply);
  v2 = [*(a1 + 32) externalGuidanceSource];

  if (v2)
  {
    if (*(*(a1 + 32) + 24))
    {
      v3 = +[UIApplication sharedMapsDelegate];
      v4 = [v3 appCoordinator];
      v5 = [v4 navModeController];
      v6 = [v5 navActionCoordinator];
      v7 = [v6 trafficIncidentAlertCoordinator];

      [v7 dismissAlertViewForTrafficIncidentAlert:*(*(a1 + 32) + 24) acceptedNewRoute:{objc_msgSend(*(a1 + 40), "shouldReroute")}];
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      [(IPCNavigationActionReply *)v14 setSuccess:1];
      goto LABEL_7;
    }

    [(IPCNavigationActionReply *)v14 setSuccess:0];
    v10 = v14;
    v11 = 3;
  }

  else
  {
    [(IPCNavigationActionReply *)v14 setSuccess:0];
    v10 = v14;
    v11 = 1;
  }

  [(IPCNavigationActionReply *)v10 setNavigationActionError:v11];
LABEL_7:
  v12 = *(a1 + 48);
  v13 = v14;
  if (v12)
  {
    (*(v12 + 16))(v12, v14);
    v13 = v14;
  }
}

void sub_10067DAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10067DB08(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAPS IPC mapspushd connection invalidated.", &v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained[13];

    if (v4 == v5)
    {
      v6 = WeakRetained[13];
      WeakRetained[13] = 0;
    }

    else
    {
      v6 = sub_100E9E6E8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = WeakRetained[13];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Not releasing connection as it has already changed from: %@ to: %@", &v9, 0x16u);
      }
    }
  }
}

void sub_10067DC54(id a1)
{
  v1 = sub_100E9E6E8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "MAPS IPC Companion daemon connection interrupted.", v2, 2u);
  }
}

void sub_10067DF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10067DF70(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAPS IPC Companion daemon connection invalidated.", &v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained[12];

    if (v4 == v5)
    {
      v6 = WeakRetained[12];
      WeakRetained[12] = 0;
    }

    else
    {
      v6 = sub_100E9E6E8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = WeakRetained[12];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Not releasing connection as it has already changed from: %@ to: %@", &v9, 0x16u);
      }
    }
  }
}

void sub_10067E0BC(id a1)
{
  v1 = sub_100E9E6E8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "MAPS IPC Companion daemon connection interrupted.", v2, 2u);
  }
}

void sub_10067E3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10067E3D8(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAPS IPC Siri plugin connection invalidated.", &v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained[11];

    if (v4 == v5)
    {
      v6 = WeakRetained[11];
      WeakRetained[11] = 0;
    }

    else
    {
      v6 = sub_100E9E6E8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = WeakRetained[11];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Not releasing connection as it has already changed from: %@ to: %@", &v9, 0x16u);
      }
    }
  }
}

void sub_10067E524(id a1)
{
  v1 = sub_100E9E6E8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "MAPS IPC Siri plugin connection interrupted.", v2, 2u);
  }
}

id sub_10067E80C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  if ([v4 sceneType] == 6 || +[UIApplication _maps_shouldIgnoreActivationStateForScene:](UIApplication, "_maps_shouldIgnoreActivationStateForScene:", v3) || (objc_msgSend(*(a1 + 32), "_isSceneOccluded:", v3) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) _isSceneForeground:v3];
  }

  return v5;
}

id sub_10067EDB0()
{
  if (qword_10195CE58 != -1)
  {
    dispatch_once(&qword_10195CE58, &stru_101625950);
  }

  v1 = qword_10195CE50;

  return v1;
}

void sub_10067EE04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "HistoryDirectionsItemSavingTask");
  v2 = qword_10195CE50;
  qword_10195CE50 = v1;
}

void sub_10067F4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = +[MNNavigationService sharedService];
    v6 = [v5 stepIndex];

    v7 = [*(a1 + 32) legIndexForStepIndex:v6];
    v8 = [*(a1 + 32) legs];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v13 = sub_10067EDB0();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = [*(a1 + 32) steps];
      v20 = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = [v14 count];
      v16 = "Got currentLegIndex: %lu, currentStepIndex: %lu, number of steps: %lu";
      v17 = v13;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 32;
    }

    else
    {
      v10 = *(a1 + 48);
      if (v10 == 4 || v10 == 2)
      {
        ++v7;
        v11 = sub_10067EDB0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v20 = 134217984;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Advanced currentLegIndex to %lu due to the arrival state", &v20, 0xCu);
        }
      }

      v12 = [*(a1 + 40) _routeProgressWaypointIndexForCurrentLegIndex:v7 inRoute:*(a1 + 32)];
      [v4 setRouteProgressWaypointIndex:v12];
      [*(a1 + 40) _updateEVInfoForHistoryEntry:v4];
      v13 = sub_10067EDB0();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v14 = [*(a1 + 32) legs];
      v15 = [v14 count];
      v20 = 134218240;
      v21 = v12;
      v22 = 2048;
      v23 = v15;
      v16 = "Updating MPR history entry waypoint index for new route: %lu (%lu legs)";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 22;
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v16, &v20, v19);

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10067F9B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10067EDB0();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "Failed to commit MPR history entry update with error: %{public}@";
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
    v5 = "Successfully committed MPR history entry";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_10067FA98(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10067EDB0();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "Failed to commit SPR/EV history entry update with error: %{public}@";
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
    v5 = "Successfully committed SPR/EV history entry";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 2;
    goto LABEL_6;
  }
}

BOOL sub_10067FE68(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 1;
  if (a2 <= 0xA)
  {
    if (((1 << a2) & 0x503) != 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_4;
    }

    if (a2 == 2 && ([v3 isResumingMultipointRoute] & 1) == 0)
    {
      v7 = [v4 route];
      v8 = [v7 isMultipointRoute];

      if (!v8)
      {
        goto LABEL_3;
      }

      if ([v4 targetLegIndex] || (objc_msgSend(v4, "arrivalInfo"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "arrivalState") - 1, v9, v10 < 6))
      {
        v5 = 1;
      }

      else
      {
        UInteger = GEOConfigGetUInteger();
        v5 = [v4 stepIndex] >= UInteger;
      }
    }
  }

LABEL_4:

  return v5;
}

void sub_100680114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) _currentRouteHandleStorage];
    v8 = [v6 routeRequestStorage];
    [v8 setResumeRouteHandleStorage:v7];

    v9 = [*(a1 + 32) _updateEVInfoForHistoryEntry:v6];
    v10 = *(a1 + 48) + 1;
    v11 = [*(a1 + 40) route];
    v12 = [v11 legs];
    v13 = [v12 count];

    if (v10 == v13)
    {
      v14 = sub_10067EDB0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v22 = 67109120;
        LODWORD(v23) = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "navigationServiceDidArrive: skip recording resume waypoint index, we're end of route, didUpdateEVInfo: %d", &v22, 8u);
      }
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) route];
      v17 = [v15 _routeProgressWaypointIndexForCurrentLegIndex:v10 inRoute:v16];

      v18 = sub_10067EDB0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 48);
        v20 = [*(a1 + 40) route];
        v21 = [v20 legs];
        v22 = 134218496;
        v23 = v19;
        v24 = 2048;
        v25 = v17;
        v26 = 2048;
        v27 = [v21 count];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "navigationServiceDidArrive: at end of leg %lu, recording resume waypoint index: %lu (%lu legs)", &v22, 0x20u);
      }

      [v6 setRouteProgressWaypointIndex:v17];
    }
  }
}

void sub_100680768(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = a3;
    v8 = [v5 route];
    LOWORD(v4) = [v6 _routeProgressWaypointIndexForCurrentLegIndex:v4 inRoute:v8];

    [v7 setRouteProgressWaypointIndex:v4];
    v9 = [*(a1 + 32) _currentRouteHandleStorage];
    v10 = [v7 routeRequestStorage];
    [v10 setResumeRouteHandleStorage:v9];

    [*(a1 + 32) _updateEVInfoForHistoryEntry:v7];
    v11 = sub_10067EDB0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) route];
      v14 = [v13 legs];
      v15 = [v14 count];
      v16 = [*(a1 + 40) resumeRouteHandle];
      v17 = 134218498;
      v18 = v12;
      v19 = 2048;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "navigationServiceDidResume: recording resume waypoint index: %lu (%lu legs), resumeHandle: %@", &v17, 0x20u);
    }
  }
}

void sub_100680A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10067EDB0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) resumeRouteHandle];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "navigationService:didUpdateResumeRouteHandle Did update resumeRouteHandle: %@ error: %@", &v6, 0x16u);
  }
}

void sub_100680DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100680E88;
  v3[3] = &unk_101661B18;
  v4 = *(a1 + 48);
  [v1 _interruptAndSaveHistoryEntry:v2 completion:v3];
}

void sub_100680E88(uint64_t a1)
{
  v2 = sub_10067EDB0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished saving directions item on app termination.", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100681290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006812B4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100681358;
  v2[3] = &unk_101660648;
  v3 = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v4);
}

void sub_100681358(uint64_t a1)
{
  v2 = sub_10067EDB0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "un-pause completed", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[33] = 0;
  }
}

void sub_100681594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006815B8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10068165C;
  v2[3] = &unk_101660648;
  v3 = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v4);
}

void sub_10068165C(uint64_t a1)
{
  v2 = sub_10067EDB0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Route paused, running completion handler and trying to start route genius", v6, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[33] = 1;
    [WeakRetained _launchRouteGeniusIfNeeded];
  }
}

void sub_100681B30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10067EDB0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "_preserveAutosharingContacts: Error saving archived sharing state: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100682914(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavSignListViewController");
  v2 = qword_10195CE60;
  qword_10195CE60 = v1;
}

void sub_100683790(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 indexPathsForVisibleItems];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) collectionView];
        v10 = [v9 cellForItemAtIndexPath:v8];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([*(a1 + 32) isLaneGuidanceActive])
          {
            v12 = [v8 item];
            v13 = v12 == [*(a1 + 32) activeStepIndex];
          }

          else
          {
            v13 = 0;
          }

          [v11 setHideManeuverArrow:v13];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [*(a1 + 32) view];
  v15 = [v14 superview];
  [v15 layoutIfNeeded];
}

void sub_100683ABC(uint64_t a1)
{
  [*(a1 + 32) _updateSelectionBackgrounds];
  [*(a1 + 32) updateHeightConstraints];
  [*(a1 + 32) _applyCornerMask];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4 = [*(a1 + 32) view];
  v3 = [v4 superview];
  [v3 layoutIfNeeded];
}

uint64_t sub_100683B48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[160];
  v4 = [v2 collectionView];
  [v4 setScrollEnabled:v3];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100683D64(uint64_t a1)
{
  [*(a1 + 32) _collapsedSignHeight];
  v3 = v2;
  [*(*(a1 + 32) + 128) setConstant:?];
  [*(a1 + 32) layoutProgress];
  if (fabs(v4) <= 2.22044605e-16)
  {
    [*(*(a1 + 32) + 112) setConstant:v3];
    v5 = [*(a1 + 32) footerView];
    [v5 minimumHeight];
    v7 = v6 + v3;
    v8 = [*(a1 + 32) signDelegate];
    [v8 setSignListHeight:v7];
  }

  [*(a1 + 32) scrollToIndexPath:*(a1 + 40) animated:0];
  [*(a1 + 32) _updateCurrentManeuverBackground];
  [*(*(a1 + 32) + 264) setActiveStepIndex:{objc_msgSend(*(a1 + 32), "activeStepIndex")}];
  v10 = [*(a1 + 32) view];
  v9 = [v10 superview];
  [v9 layoutIfNeeded];
}

void sub_100683E94(uint64_t a1)
{
  [*(a1 + 32) _cleanupStepCountdowns];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MapsPPTGuidanceDidUpdateNotifcation" object:0];
}

id sub_1006855EC(uint64_t a1)
{
  [*(a1 + 32) setShowsHairline:{objc_msgSend(*(a1 + 40), "_showsHairlineForItemIndex:", *(a1 + 56))}];
  [*(a1 + 48) setItem:*(a1 + 32)];
  if ([*(a1 + 40) isLaneGuidanceActive])
  {
    v2 = *(a1 + 56);
    v3 = v2 == [*(a1 + 40) activeStepIndex];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 48) setHideManeuverArrow:v3];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) _stateForItemIndex:*(a1 + 56)];
  [*(a1 + 40) layoutProgress];
  [v4 setState:v5 layoutProgress:?];
  [*(a1 + 48) setDelegate:*(a1 + 40)];
  v6 = *(a1 + 48);

  return [v6 layoutIfNeeded];
}

void sub_100685BA4(uint64_t a1, uint64_t a2)
{
  v3 = [NSIndexPath indexPathForItem:a2 inSection:0];
  [*(a1 + 32) addObject:v3];
}

void sub_10068626C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _displayIndexPath];
  [v2 scrollToIndexPath:v3 animated:*(a1 + 40)];
}

id sub_100686708(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) footerView];
  [v3 setShouldShowEndButton:v2];

  v4 = *(a1 + 32);

  return [v4 updateHeightConstraints];
}

void sub_100687428(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) isExpanded];
    v4 = sub_100A5FDCC();
    [*(*v2 + 10) setNonBlurredColor:v4];

    if (!v3)
    {
      return;
    }

    v5 = sub_100A5FE68();
    [*(*v2 + 29) setOverlayColor:v5];

    v6 = sub_100A5FDCC();
    v7 = [v6 colorWithAlphaComponent:0.0];
    v19[0] = v7;
    v8 = sub_100A5FDCC();
    v9 = [v8 colorWithAlphaComponent:0.25];
    v19[1] = v9;
    v10 = sub_100A5FDCC();
    v19[2] = v10;
    v11 = v19;
  }

  else
  {
    v12 = sub_100A5FD30();
    v13 = *(a1 + 32);
    v2 = (a1 + 32);
    [*(v13 + 80) setNonBlurredColor:v12];

    v14 = sub_1000808D8();
    [*v2 layoutProgress];
    v16 = [v14 colorWithAlphaComponent:v15 * 0.239999995];
    [*(*v2 + 29) setOverlayColor:v16];

    v6 = sub_100A5FD30();
    v7 = [v6 colorWithAlphaComponent:0.0];
    v18[0] = v7;
    v8 = sub_100A5FD30();
    v9 = [v8 colorWithAlphaComponent:0.25];
    v18[1] = v9;
    v10 = sub_100A5FD30();
    v18[2] = v10;
    v11 = v18;
  }

  v17 = [NSArray arrayWithObjects:v11 count:3];
  [*(*v2 + 13) setColors:v17];
}

id sub_100687774(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector("collapsedHeight");
  [v2 willChangeValueForKey:v3];

  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  v6 = [*(a1 + 32) collectionView];
  [v6 layoutIfNeeded];

  [*(a1 + 32) _updateActiveStepIndexAnimated:0];
  [*(a1 + 32) _updateLayoutProgressWithDuration:0 completion:0.0];
  v7 = *(a1 + 32);
  v8 = NSStringFromSelector("collapsedHeight");
  [v7 didChangeValueForKey:v8];

  v9 = *(a1 + 32);

  return [v9 _updateCollectionViewBottomInset];
}

void sub_100687BE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100687C00(uint64_t a1)
{
  [*(a1 + 32) updateHeightConstraints];
  v3 = [*(a1 + 32) view];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

void sub_100687C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] removeFromSuperview];
    WeakRetained = v2;
  }
}

void sub_100687FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100688014(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideVIOLabel:1];
}

void sub_100689488(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_1006894D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained signDelegate];
    [v2 pressedEndNavigationWithSender:v3];

    WeakRetained = v3;
  }
}

void sub_100689DB8(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 filterType] == 1)
  {
    v3 = [v7 conceptFilter];

    if (v3)
    {
      v4 = [CollectionsFilterViewModel alloc];
      v5 = [v7 conceptFilter];
      v6 = [(CollectionsFilterViewModel *)v4 initWithGuidesHomeConceptFilter:v5 isDarkMode:*(a1 + 40)];

      [*(a1 + 32) addObject:v6];
    }
  }
}

void sub_10068A044(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 filterType];
  if (v3 == 1)
  {
    v10 = [v13 addressFilter];

    v5 = v13;
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = [CollectionsFilterViewModel alloc];
    v8 = [v13 addressFilter];
    v9 = [(CollectionsFilterViewModel *)v11 initWithAddressFilter:v8 isDarkMode:*(a1 + 40)];
    goto LABEL_8;
  }

  v4 = v3 == 2;
  v5 = v13;
  if (v4)
  {
    v6 = [v13 keywordFilter];

    v5 = v13;
    if (v6)
    {
      v7 = [CollectionsFilterViewModel alloc];
      v8 = [v13 keywordFilter];
      v9 = [(CollectionsFilterViewModel *)v7 initWithKeywordFilter:v8 isDarkMode:*(a1 + 40)];
LABEL_8:
      v12 = v9;

      [*(a1 + 32) addObject:v12];
      v5 = v13;
    }
  }

LABEL_9:
}

void sub_10068A314(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 filterType];
  if (v3 == 1)
  {
    v10 = [v13 addressFilter];

    v5 = v13;
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = [CollectionsFilterViewModel alloc];
    v8 = [v13 addressFilter];
    v9 = [(CollectionsFilterViewModel *)v11 initWithAllCollectionsAddressFilter:v8 isDarkMode:*(a1 + 40)];
    goto LABEL_8;
  }

  v4 = v3 == 2;
  v5 = v13;
  if (v4)
  {
    v6 = [v13 keywordFilter];

    v5 = v13;
    if (v6)
    {
      v7 = [CollectionsFilterViewModel alloc];
      v8 = [v13 keywordFilter];
      v9 = [(CollectionsFilterViewModel *)v7 initWithAllCollectionsKeywordFilter:v8 isDarkMode:*(a1 + 40)];
LABEL_8:
      v12 = v9;

      [*(a1 + 32) addObject:v12];
      v5 = v13;
    }
  }

LABEL_9:
}

void sub_10068AA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10068AA48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = +[CollectionsFilterCell reuseIdentifier];
    v9 = [v5 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

    v10 = [WeakRetained filterAtIndexPath:v6];
    [v9 configureWithModel:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10068B408()
{
  if (qword_10195CE78 != -1)
  {
    dispatch_once(&qword_10195CE78, &stru_101625BD8);
  }

  v1 = qword_10195CE70;

  return v1;
}

void sub_10068B45C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionUsageMonitor");
  v2 = qword_10195CE70;
  qword_10195CE70 = v1;
}

void sub_10068B938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10068B958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateState];
}

void sub_10068B998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateState];
}

id sub_10068C35C(uint64_t a1)
{
  v2 = sub_1000410AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = NSStringFromSelector(v4);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ %@: Accepted Nearby Transit tip", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }

  return [*(a1 + 32) setAddedFavorite:1];
}

uint64_t sub_10068C46C(uint64_t a1)
{
  v2 = sub_1000410AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = NSStringFromSelector(v4);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ %@: Displayed Nearby Transit tip", &v9, 0x16u);
  }

  if (([*(a1 + 32) hasRecordedSession] & 1) == 0)
  {
    v7 = [*(a1 + 32) dataStore];
    [v7 incrementSessionsShown];

    [*(a1 + 32) setRecordedSession:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10068C5A0(uint64_t a1)
{
  v2 = sub_1000410AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = NSStringFromSelector(v4);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ %@: Dismissed Nearby Transit tip", &v8, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10068E924()
{
  if (qword_10195CE88 != -1)
  {
    dispatch_once(&qword_10195CE88, &stru_101625BF8);
  }

  v1 = qword_10195CE80;

  return v1;
}

void sub_10068E978(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavdRouteCollectionUpdateProvider");
  v2 = qword_10195CE80;
  qword_10195CE80 = v1;
}

void sub_100690310(uint64_t a1, void *a2)
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

void sub_100690574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100690590(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 3);
    [v5 garagePersister:v4 wantsToUpdateVehicles:v6];
  }
}

void sub_100690AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_100690AE0(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100690BE4;
    v7[3] = &unk_10165E728;
    v8 = v3;
    v9 = a1[4];
    v10 = v5;
    objc_copyWeak(&v11, a1 + 5);
    dispatch_async(v6, v7);
    objc_destroyWeak(&v11);
  }
}

void sub_100690BE4(uint64_t a1)
{
  v65 = [*(a1 + 32) firstObject];
  if (!v65)
  {
    v1 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 40);
      *buf = 138412290;
      v79 = v2;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Didn't find vehicle: %@ in sync storage. Will create a new one.", buf, 0xCu);
    }

    v65 = objc_alloc_init(MSVehicle);
  }

  v3 = [*(a1 + 48) identifier];
  v4 = [v3 copy];
  [v66 setVehicleIdentifier:v4];

  v5 = [*(a1 + 48) iapIdentifier];
  v6 = [v5 copy];
  [v66 setIapIdentifier:v6];

  v7 = [*(a1 + 48) siriIntentsIdentifier];
  v8 = [v7 copy];
  [v66 setSiriIntentsIdentifier:v8];

  v9 = [*(a1 + 48) creationDate];
  [v66 setDateOfVehicleIngestion:v9];

  v10 = [*(a1 + 48) lastStateUpdateDate];
  [v66 setLastStateUpdateDate:v10];

  v11 = [*(a1 + 48) displayName];
  v12 = [v11 copy];
  [v66 setDisplayName:v12];

  v13 = [*(a1 + 48) year];
  if ([v13 integerValue])
  {
    v14 = [*(a1 + 48) year];
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue]);
    [v66 setYear:v15];
  }

  else
  {
    [v66 setYear:0];
  }

  v16 = [*(a1 + 48) manufacturer];
  v17 = [v16 copy];
  [v66 setManufacturer:v17];

  v18 = [*(a1 + 48) model];
  v19 = [v18 copy];
  [v66 setModel:v19];

  v20 = [*(a1 + 48) colorHex];
  v21 = [v20 copy];
  [v66 setColorHex:v21];

  v22 = [*(a1 + 48) licensePlate];
  v23 = [v22 copy];
  [v66 setLicensePlate:v23];

  v24 = [*(a1 + 48) lprVehicleType];
  v25 = [v24 copy];
  [v66 setLprVehicleType:v25];

  v26 = [*(a1 + 48) lprPowerType];
  v27 = [v26 copy];
  [v66 setLprPowerType:v27];

  v28 = [*(a1 + 48) headUnitBluetoothIdentifier];
  v29 = [v28 copy];
  [v66 setHeadUnitBluetoothIdentifier:v29];

  v30 = [*(a1 + 48) headUnitIdentifier];
  v31 = [v30 copy];
  [v66 setHeadUnitMacAddress:v31];

  v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) supportedConnectors]);
  [v66 setSupportedConnectors:v32];

  v33 = [*(a1 + 48) powerByConnector];

  if (v33)
  {
    v34 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [*(a1 + 48) powerByConnector];
    v35 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v35)
    {
      v36 = *v74;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v74 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v73 + 1) + 8 * i);
          v39 = [*(a1 + 48) powerByConnector];
          v40 = [v39 objectForKeyedSubscript:v38];

          v41 = +[NSUnitPower watts];
          v42 = [v40 measurementByConvertingToUnit:v41];
          [v42 doubleValue];
          v43 = [NSNumber numberWithDouble:?];
          [v34 setObject:v43 forKeyedSubscript:v38];
        }

        v35 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v35);
    }

    v72 = 0;
    v33 = [NSKeyedArchiver archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v72];
    v44 = v72;
    if (v44 || !v33)
    {
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = [*(a1 + 48) powerByConnector];
        *buf = 138412546;
        v79 = v46;
        v80 = 2112;
        v81 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to persist poweByConnector dictionary: %@, error: %@.", buf, 0x16u);
      }
    }
  }

  [v66 setPowerByConnector:v33];
  v47 = [*(a1 + 48) preferredChargingNetworks];

  if (v47)
  {
    v48 = objc_alloc_init(VGChargingNetworksStorage);
    v49 = [*(a1 + 48) preferredChargingNetworks];
    v50 = [v49 allObjects];
    v51 = [v50 _geo_map:&stru_101625C38];

    v52 = [v51 mutableCopy];
    [v48 setNetworks:v52];

    [v48 setUsesPreferredNetworksForRouting:{objc_msgSend(*(a1 + 48), "usesPreferredNetworksForRouting")}];
    v47 = [v48 data];
  }

  [v66 setPreferredChargingNetworks:v47];
  v53 = [*(a1 + 48) currentVehicleState];
  if (v53)
  {
    v54 = [*(a1 + 48) isPureElectricVehicle];

    if (v54)
    {
      v55 = [*(a1 + 48) currentVehicleState];
      v56 = [v55 _storage];

      v57 = [*(a1 + 48) pairedAppInstallDeviceIdentifier];
      v58 = [v57 copy];
      [v56 setPairedAppInstallDeviceIdentifier:v58];

      v59 = [*(a1 + 48) pairedAppInstallSessionIdentifier];
      v60 = [v59 copy];
      [v56 setPairedAppInstallSessionIdentifier:v60];

      v53 = [v56 data];
    }

    else
    {
      v53 = 0;
    }
  }

  [v66 setCurrentVehicleState:v53];
  v61 = [*(a1 + 48) pairedAppIdentifier];
  v62 = [v61 copy];
  [v66 setPairedAppIdentifier:v62];

  v63 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v77 = v66;
  v64 = [NSArray arrayWithObjects:&v77 count:1];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1006914C4;
  v69[3] = &unk_10165D288;
  objc_copyWeak(&v71, (a1 + 56));
  v70 = *(a1 + 48);
  [v63 saveWithObjects:v64 completionHandler:v69];

  objc_destroyWeak(&v71);
}

void sub_1006914C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10069158C;
    v7[3] = &unk_101661A90;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void sub_10069158C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v7 = "Failed to persist vehicle: %@ error: %@";
      v8 = v4;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    v12 = 138412290;
    v13 = v11;
    v7 = "Successfully saved vehicle %@ as MSVehicle.";
    v8 = v4;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_100691A90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addOrEditVehicle:*(a1 + 32)];
}

void sub_100691C28(uint64_t a1)
{
  v2 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v6 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100691D2C;
  v4[3] = &unk_10165F7B8;
  v5 = *(a1 + 32);
  [v2 deleteWithObjects:v3 completionHandler:v4];
}

void sub_100691D2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Failed to delete vehicle: %@ error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) identifier];
    v11 = 138412290;
    v12 = v6;
    v7 = "Successfully removed vehicle %@.";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_100691FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v9 = v2;
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"vehicleIdentifier == %@" argumentArray:v3];

  v5 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v4 sortDescriptors:0 range:0];
  v6 = objc_alloc_init(MSVehicleRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100692158;
  v7[3] = &unk_10165F290;
  objc_copyWeak(&v8, (a1 + 40));
  [v6 fetchWithOptions:v5 completionHandler:v7];

  objc_destroyWeak(&v8);
}

void sub_100692158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = GEOFindOrCreateLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to load load sync vehicle: %@", &v9, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [v5 firstObject];
    [WeakRetained _removeSyncVehicle:v8];
  }
}

void sub_1006923D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addOrEditVehicle:*(a1 + 32)];
}

void sub_100692500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100692524(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100692660;
    block[3] = &unk_10165DEA0;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v11 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = GEOErrorDomain();
    v9 = [NSError errorWithDomain:v8 code:-8 userInfo:0];
    (*(v7 + 16))(v7, 0, v9);
  }
}

void sub_100692660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _processUpdatedSyncVehicles:*(a1 + 32)];
    v4 = [v3 copy];
    v5 = v8[2];
    v8[2] = v4;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = GEOErrorDomain();
    v7 = [NSError errorWithDomain:v3 code:-8 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

id sub_100693224(uint64_t a1)
{
  [*(*(a1 + 32) + 80) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 88) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 96) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_100693574(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006935F8;
  v3[3] = &unk_101661B18;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  return [UIView animateWithDuration:v3 animations:v1 completion:0.3];
}

id sub_100694804()
{
  if (qword_10195CE98 != -1)
  {
    dispatch_once(&qword_10195CE98, &stru_101625CC0);
  }

  v1 = qword_10195CE90;

  return v1;
}

void sub_100694858(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionCarPlayConnectionMonitor");
  v2 = qword_10195CE90;
  qword_10195CE90 = v1;
}

void sub_1006950CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100695100(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained sections];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006953EC;
  v7[3] = &unk_10162C4A8;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

id sub_1006951D4()
{
  if (qword_10195CEA8 != -1)
  {
    dispatch_once(&qword_10195CEA8, &stru_101625D68);
  }

  v1 = qword_10195CEA0;

  return v1;
}

void sub_100695228(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setGuideLocations:0];
      (*(*(a1 + 32) + 16))();
      v9 = sub_1006951D4();
      v10 = v9;
      v11 = *(a1 + 48);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchingCitySelectorViewBatch", "", buf, 2u);
      }
    }

    else
    {
      v12 = sub_1006951D4();
      v13 = v12;
      v14 = *(a1 + 48);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "FetchingCitySelectorViewBatch", "", v15, 2u);
      }

      [v8 setGuideLocations:v5];
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1006953A8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CitySelectorAPIController");
  v2 = qword_10195CEA0;
  qword_10195CEA0 = v1;
}

void sub_1006953EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 pdGuideLocationEntries];
  v7 = [*(a1 + 32) geoMapItemIdentifier];
  v9 = [v6 objectForKey:v7];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
    *a4 = 1;
  }
}

void sub_1006956CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1006956F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_1006951D4();
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "FetchingCitySelectorView", "", v15, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a3 && v5 && ([v5 sections], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
    {
      [WeakRetained setResult:v5];
      v13 = [v5 sections];
      [WeakRetained setSections:v13];

      v14 = [WeakRetained stateHandler];
      (v14)[2](v14, [WeakRetained state], 2);

      [WeakRetained setState:2];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = [WeakRetained stateHandler];
      (v10)[2](v10, [WeakRetained state], 3);

      [WeakRetained setState:3];
    }
  }
}

id sub_100699AB4(uint64_t a1)
{
  [*(a1 + 32) _updatePageIndicatorVisibility];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateSignHeightConstraintsFrom:v3 to:v4 progress:v5];
}

void sub_100699AF8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 steppingPageViewControllerDidChangeSignHeight:*(a1 + 32)];
}

uint64_t sub_100699B4C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [*(a1 + 32) view];
    [v4 layoutIfNeeded];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_10069B74C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 contentDownloader];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = [*(a1 + 40) copy];
    [v10 setVenueContents:v9];

    [*(a1 + 48) _notifyObservers];
    *a4 = 1;
  }
}

id sub_1006A17B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 revisionIdentifiers];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) routeIdentifiers];
    v7 = [v8 objectAtIndexedSubscript:v6];
  }

  return v7;
}

void sub_1006A1F88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100798A3C();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1 == 1)
  {
    if (v3)
    {
      v7 = 0;
      v4 = "Configured to prefer disk route storage";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    v6 = 0;
    v4 = "Configured not to attempt disk route storage";
    v5 = &v6;
    goto LABEL_6;
  }
}

void sub_1006A2414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"transitRouteUpdate"];
  if (v6)
  {
    v7 = [*(a1 + 32) routeWithID:v5];
    v8 = [v7 revisionIdentifier];
    v10 = v6;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 applyUpdatesToTransitRoute:v9];

    [v7 setRevisionIdentifier:v8];
  }
}

GEOComposedRoute *__cdecl sub_1006A250C(id a1, NSUUID *a2, unint64_t a3)
{
  v3 = MNGetRouteFromSubpathWithID();

  return v3;
}

NSUUID *__cdecl sub_1006A28EC(id a1, GEOCompanionRouteDetails *a2, unint64_t a3)
{
  v3 = [(GEOCompanionRouteDetails *)a2 revisionID];
  v4 = [NSUUID _maps_UUIDWithData:v3];

  return v4;
}

void sub_1006A2B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A2B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1006A2B64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueRouteID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1006A32F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006A3318(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 routeID];
  v8 = [v7 isEqualToData:*(a1 + 32)];

  if (v8)
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1006A3834(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
    [v5 setUniqueRouteID:v7];
  }

  v8 = [v5 uniqueRouteID];
  v9 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v8];
  if (!v9)
  {
    v11 = @"canNavigate";
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_opt_class() _canRunNavigationForRoute:v5]);
    v12 = v10;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  [*(a1 + 48) setObject:v9 forKeyedSubscript:v8];
}

void sub_1006A4514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006A4538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissAlertIfNeeded:*(a1 + 32) withResponse:*(a1 + 40)];
}

id sub_1006A4E14(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  [v2 unregisterObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) cameraStyleManager];
  [v3 unregisterObserver:*(a1 + 32)];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(a1 + 32)];

  v5 = *(a1 + 32);

  return [v5 _cancelAlertDismissTimer];
}

void sub_1006A4F80(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  [v2 registerObserver:*(a1 + 32)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_trafficAlertVisibilityChanged:" name:@"CarTrafficAlertDidChangeVisibility" object:0];
}

void sub_1006A500C(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 mapView];
  [v3 _setApplicationState:2];

  v4 = [*(a1 + 32) chromeViewController];
  v5 = [v4 mapView];
  [v5 _setDisplayedSearchResultsType:0];

  v6 = [*(a1 + 32) chromeViewController];
  v7 = [v6 userLocationView];
  v8 = 1;
  [v7 setMode:1 animated:1];

  v11 = +[MNNavigationService sharedService];
  v9 = [v11 route];
  [*(a1 + 32) setCurrentRoute:v9];

  if ([v11 navigationState] != 6)
  {
    v8 = [v11 navigationState] == 7;
  }

  [*(a1 + 32) setHasArrived:v8];
  v10 = [v11 displayEtaInfo];

  if (v10)
  {
    [*(a1 + 32) _updateDisplayETA];
  }

  [*(a1 + 32) refreshCameraTypeAnimated:*(a1 + 40)];
}

void sub_1006A53CC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarMapWidgetNavigationModeController");
  v2 = qword_10195CED8;
  qword_10195CED8 = v1;
}

void sub_1006A7518(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User tapped EV stations button in dynamic island banner", buf, 2u);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006A75F0;
  v3[3] = &unk_10165F7B8;
  v4 = *(a1 + 32);
  [UIApplication _maps_unlockApplicationWithCompletion:v3];
}

void sub_1006A75F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100035E6C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error unlocking Maps for EV stations: %@", &v6, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Maps successfully launched; posting notification now", &v6, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"ManeuverBannerViewEVStationsNotification" object:*(a1 + 32)];
  }
}

void sub_1006A770C(id a1, UIAction *a2)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User tapped find my button in dynamic island banner", buf, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  v4 = [v3 destination];
  v5 = [v4 findMyHandleID];

  v6 = [NSString stringWithFormat:@"findmy://friend/%@", v5];
  v7 = [NSURL URLWithString:v6];

  v8 = +[UIApplication sharedApplication];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A787C;
  v10[3] = &unk_101661738;
  v11 = v7;
  v9 = v7;
  [v8 _maps_openURL:v9 options:0 completionHandler:v10];
}

void sub_1006A787C(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = +[MNNavigationService sharedService];
    [v5 stopNavigationWithReason:2];
  }

  else
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error when trying to open find my URL: %@", buf, 0xCu);
    }
  }
}

void sub_1006A7980(id a1, UIAction *a2)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User tapped walking button in dynamic island banner", buf, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  v4 = [v3 alternateWalkingRoute];

  if (v4)
  {
    v5 = +[MNNavigationService sharedService];
    [v5 changeTransportType:2 route:v4];
  }

  else
  {
    v5 = sub_100035E6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No remaining walking route found. Cannot transition to walking transport type.", v6, 2u);
    }
  }
}

void sub_1006A7A80(id a1, UIAction *a2)
{
  v2 = +[MNNavigationService sharedService];
  [v2 advanceToNextLeg];
}

void sub_1006A7AC8(id a1, UIAction *a2)
{
  v2 = +[MNNavigationService sharedService];
  [v2 stopNavigationWithReason:3];
}

void sub_1006A7B14(id a1, UIAction *a2)
{
  v2 = +[MNNavigationService sharedService];
  [v2 stopNavigationWithReason:2];
}

void sub_1006A7E2C(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A7EC0;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1006A860C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1006A8628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contextMenuForSnapshot:*(a1 + 32)];

  return v3;
}

void sub_1006A9060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1006A9078(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _snapshotByFilteringDeletionsFromSnapshot:v4];

  if (v5 != v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5;
}

id sub_1006A9AE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 sectionController:*(a1 + 32) nodeSnapshotAtIndexPath:v4];

  v7 = [v6 identifierPath];
  v8 = [*(a1 + 32) sectionIdentifierPath];
  LODWORD(v5) = [v7 hasPrefix:v8];

  if (v5)
  {
    v9 = [v6 identifierPath];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1006AAD54(void *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  if (qword_10195CF00 != -1)
  {
    dispatch_once(&qword_10195CF00, &stru_1016261F8);
  }

  v10 = v9;
  *&red[0] = v10;
  red[1] = a2;
  red[2] = a3;
  red[3] = a4;
  red[4] = a5;
  v23 = xmmword_101212860;
  v11 = [NSValue valueWithBytes:red objCType:"{?=@dddd{CGPoint=dd}}"];

  v12 = [qword_10195CEF8 objectForKeyedSubscript:v11];
  if (!v12)
  {
    v13 = ceil(a3);
    v14 = a2 + a2 + v13 * 2.0;
    v15 = v10;
    v16 = [UIBezierPath bezierPathWithRoundedRect:v13 cornerRadius:v13, a2 + a2, a2 + a2, a2];
    v28.width = v14;
    v28.height = v14;
    UIGraphicsBeginImageContextWithOptions(v28, 0, a5);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextTranslateCTM(CurrentContext, 0.0, 3.0);
    CGContextSaveGState(CurrentContext);
    red[0] = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v24 = 0.0;
    [v15 getRed:red green:&v26 blue:&v25 alpha:&v24];

    v24 = a4;
    SRGB = CGColorCreateSRGB(red[0], v26, v25, a4);
    v29.width = 0.0;
    v29.height = v14 + 3.0;
    CGContextSetShadowWithColor(CurrentContext, v29, a3, SRGB);
    CGColorRelease(SRGB);
    CGContextTranslateCTM(CurrentContext, 0.0, -(v14 + 3.0));
    [v16 fill];
    CGContextRestoreGState(CurrentContext);
    CGContextRestoreGState(CurrentContext);
    CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
    v19 = +[UIColor systemBlackColor];
    [v19 set];

    [v16 fill];
    v20 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v12 = [v20 resizableImageWithCapInsets:{v13 + a2 + 1.5, v13 + a2, v13 + a2 + 1.5, v13 + a2}];

    if (v12)
    {
      [qword_10195CEF8 setObject:v12 forKeyedSubscript:v11];
    }
  }

  return v12;
}

void sub_1006AB010(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10195CEF8;
  qword_10195CEF8 = v1;
}

id sub_1006AB420(uint64_t a1)
{
  [*(a1 + 32) _updateContent];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_1006AB8C8(id a1)
{
  v1 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:38.0];
  v2 = qword_10195CEF0;
  qword_10195CEF0 = v1;
}

void sub_1006AB990(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  if (v5 == a3)
  {
    v7 = +[UIColor systemBlackColor];
    [v6 setTintColor:v7];

    [*(*(a1 + 32) + 56) setActive:0];
    v8 = [*(*(a1 + 32) + 48) centerXAnchor];
    v9 = [v6 centerXAnchor];

    v10 = [v8 constraintEqualToAnchor:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = v10;

    v13 = *(*(a1 + 32) + 56);

    [v13 setActive:1];
  }

  else
  {
    v14 = +[UIColor secondaryLabelColor];
    [v6 setTintColor:v14];
  }
}

void sub_1006AC778(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *(a1 + 32);
  v5 = a2;
  v17 = [v5 topAnchor];
  v6 = [*(*(a1 + 40) + 32) topAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v18[0] = v7;
  v8 = [v5 bottomAnchor];
  v9 = [*(*(a1 + 40) + 32) bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[1] = v10;
  v11 = [v5 centerXAnchor];

  v12 = [*(*(a1 + 40) + 40) objectAtIndexedSubscript:a3];
  v13 = [v12 centerXAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v18[2] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:3];
  [v16 addObjectsFromArray:v15];
}

void sub_1006AE1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006AE214(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _presentAlertForError:v5];
    }

    else
    {
      [WeakRetained closeAction:WeakRetained];
      [GEOAPPortal captureUserAction:41 target:77 value:0];
    }
  }
}

void sub_1006AF698(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];
}

void sub_1006AF708(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:1.0];
}

void sub_1006AFC40(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = a2;
  [v2 addObject:v3];
  [v3 setHidden:1];
}

void sub_1006B2E18(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1006B2E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDismissAction:*(a1 + 32)];
}

void sub_1006B2E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDismissAction:*(a1 + 32)];
}

ExtensionsActionView *__cdecl sub_1006B3D78(id a1, ExtensionsAction *a2, unint64_t a3)
{
  v3 = a2;
  v4 = objc_alloc_init(ExtensionsActionView);
  v5 = [(ExtensionsAction *)v3 title];
  [(ExtensionsActionView *)v4 setButtonTitle:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006B3E58;
  v8[3] = &unk_101661B18;
  v9 = v3;
  v6 = v3;
  [(ExtensionsActionView *)v4 setDidTapButton:v8];

  return v4;
}

void sub_1006B567C(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v9 = v7;
    v8 = [*(a1 + 32) containsObject:v7];
    v7 = v9;
    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) addObject:v9];
      v7 = v9;
    }
  }
}

void sub_1006B61F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1006B6214()
{
  if (qword_10195CF10 != -1)
  {
    dispatch_once(&qword_10195CF10, &stru_1016262F0);
  }

  v1 = qword_10195CF08;

  return v1;
}

void sub_1006B6268(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006B6318;
  v4[3] = &unk_10162BD20;
  objc_copyWeak(v6, (a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[1] = *(a1 + 56);
  v4[4] = v2;
  v5 = v3;
  dispatch_sync(&_dispatch_main_q, v4);

  objc_destroyWeak(v6);
}

void sub_1006B6318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] filteredResultsWithBackfill:*(a1 + 56)];
    v5 = [[AutocompleteItemSource alloc] initWithAutocompleteItems:v4];
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SearchBarSearchManager - collected results", buf, 2u);
    }

    v7 = sub_1006B6214();
    v8 = v7;
    v9 = *(*(a1 + 32) + 32);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v11[0] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollectingClientResults", "", v11, 2u);
    }

    v10 = [v3 delegate];
    [v10 receivedSearchResults:v5 forContext:*(a1 + 40)];
  }
}

void sub_1006B6460(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchBarSearchManager");
  v2 = qword_10195CF08;
  qword_10195CF08 = v1;
}

id sub_1006B66F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _integerValueForDefaultsKey:@"AutocompleteSearchMapsSyncLimitKey" networkDefaultsKey:{771, &unk_1016453F0}];
  if (v2 < 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
  }

  [*(*(a1 + 32) + 24) addResultSet:*(a1 + 40) withMaxCount:v3];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) name];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Completed operation: %@", &v7, 0xCu);
  }

  return [*(a1 + 48) setDelegate:0];
}

void sub_1006B68C0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"SearchDidFinishFetchingFindMyHandlesOrAddressBookAddresses" object:0];

  v3 = *(a1 + 32);
  if (v3 && [v3 count])
  {
    [*(*(a1 + 40) + 24) addResultSet:*(a1 + 32) withMaxCount:0x7FFFFFFFFFFFFFFFLL];
    [*(a1 + 48) setDelegate:0];
  }

  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) name];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Completed operation: %@", &v6, 0xCu);
  }
}

id sub_1006B6A94(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"SearchDidFinishFetchingFindMyHandlesOrAddressBookAddresses" object:0];

  v3 = *(a1 + 32);
  if (v3 && [v3 count])
  {
    v4 = [*(a1 + 40) _integerValueForDefaultsKey:@"AddressBookSearchLimitKey" networkDefaultsKey:{140, &unk_10163D7D8}];
    if (v4 < 0)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v4;
    }

    [*(*(a1 + 40) + 24) addResultSet:*(a1 + 32) withMaxCount:v5];
  }

  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 48) name];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Completed operation: %@", &v9, 0xCu);
  }

  return [*(a1 + 48) setDelegate:0];
}

id sub_1006B6CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _integerValueForDefaultsKey:@"RecentsSearchLimitKey" networkDefaultsKey:{142, &unk_10163D848}];
  if (v2 < 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
  }

  [*(*(a1 + 32) + 24) addResultSet:*(a1 + 40) withMaxCount:v3];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) name];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Completed operation: %@", &v7, 0xCu);
  }

  return [*(a1 + 48) setDelegate:0];
}

id sub_1006B6E7C(uint64_t a1)
{
  v2 = [*(a1 + 32) _integerValueForDefaultsKey:@"HistorySearchLimitKey" networkDefaultsKey:{144, &unk_10163D8B8}];
  if (v2 < 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
  }

  [*(*(a1 + 32) + 24) addResultSet:*(a1 + 40) withMaxCount:v3];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) name];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Completed operation: %@", &v7, 0xCu);
  }

  return [*(a1 + 48) setDelegate:0];
}

void sub_1006B7C24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006B7C48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v15 = a1;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [MSPTransitStorageLine alloc];
          v12 = [v10 transitLineStorage];
          v13 = [v11 initWithData:v12];

          v14 = [WeakRetained[49] muid];
          if (v14 == [v13 muid])
          {
            (*(*(v15 + 32) + 16))();

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(v15 + 32) + 16))();
  }

LABEL_12:
}

void sub_1006B7E5C(id a1, MSCollectionTransitItem *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v10 = v2;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = 0;
    [v3 deleteWithObjects:v4 error:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = sub_100798DBC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error when attempting to unpin a transit line: %@", buf, 0xCu);
      }
    }
  }
}

void sub_1006B80B8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100798DBC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error when attempting to pin a transit line: %@", &v4, 0xCu);
    }
  }
}

void sub_1006B8218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1006B8234(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006B82EC;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1006B82EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setPinnedTransitLine:*(a1 + 32) != 0];
    WeakRetained = v3;
  }
}

void sub_1006B9668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1006B9680(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedIntegerValue];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_1006BA720(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[57];
  v4 = [v3 selectedDepartureSequence];
  [v2 departureDataProvider:v3 selectedDepartureSequence:v4 withIndex:*(a1 + 40)];
}

id sub_1006BAD3C(uint64_t a1)
{
  [*(a1 + 32) selectDeparture];
  v2 = *(a1 + 32);

  return [v2 _updateDeparturesHeaderTitles];
}

void sub_1006BB0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006BB0E4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 unsignedIntegerValue];
  v8 = a1[6];
  if (v7 == v8)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }

  if (v7 > v8)
  {
    v9 = a1[4];
    v10 = [NSNumber numberWithUnsignedInteger:?];
    v12 = v10;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v9 insertSectionsWithIdentifiers:v11 beforeSectionWithIdentifier:v6];

    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1006BBFB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1006BBFE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BC0D4;
  v9[3] = &unk_1016263B8;
  objc_copyWeak(&v12, (a1 + 32));
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v12);
}

void sub_1006BC0D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = sub_100798DBC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [*(a1 + 32) description];
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v8 = *(a1 + 72);
        v24 = 138413058;
        v25 = v5;
        v26 = 2048;
        v27 = v6;
        v28 = 2048;
        v29 = v7;
        v30 = 2048;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error %@ for stationId %llu lineId %llu tripId %llu", &v24, 0x2Au);
      }

      if ([v3 isNetworkError:*(a1 + 32)])
      {
        v9 = 4;
      }

      else
      {
        v9 = 3;
      }

      [v3 updateStopsSectionForNetworkState:v9];
    }

    else
    {
      v10 = *(a1 + 72);
      if (v10 == [WeakRetained selectedTripIdentifier])
      {
        v11 = [*(a1 + 40) _transitInfo];
        v12 = [v11 transitTripStops];
        if ([v12 count])
        {
          [v3 updateStopsSectionForNetworkState:1];
          [v3[26] buildTransitTripStopItemsWithTransitStops:v12 boardingStopDepartureDate:v3[21] maintainingCollapsedState:0];
          if ([v3 isViewLoaded])
          {
            [v3 _rebuildStopsSection];
            [v3 _updateStopsSectionHeader];
            [v3 updateCollectionViewOffset];
          }
        }

        else
        {
          v14 = sub_100798DBC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 56);
            v16 = *(a1 + 64);
            v17 = *(a1 + 72);
            v24 = 134218496;
            v25 = v15;
            v26 = 2048;
            v27 = v16;
            v28 = 2048;
            v29 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No stops found departing station muid %llu w/ lineId %llu tripId %llu", &v24, 0x20u);
          }

          [v3 updateStopsSectionForNetworkState:3];
        }

        v18 = [*(a1 + 40) _transitInfo];
        v19 = [v18 incidents];
        [v3 setIncidents:v19];

        v20 = [v11 composedRoute];

        if (!v20)
        {
          v21 = sub_100798DBC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v3 selectedTripIdentifier];
            v24 = 134217984;
            v25 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No trip route provided for the requested trip id %llu", &v24, 0xCu);
          }
        }

        v23 = [v11 composedRoute];
        [v3 setSelectedTripRoute:v23];

        [v3 selectDeparture];
      }

      else
      {
        v11 = sub_100798DBC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 72);
          v24 = 134218240;
          v25 = v13;
          v26 = 2048;
          v27 = [v3 selectedTripIdentifier];
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Received the stops response for tripIdentifier %llu, but the currently selected tripIdentifier is %llu", &v24, 0x16u);
        }
      }
    }
  }
}

void sub_1006BC8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006BC8CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BC9B4;
  v9[3] = &unk_1016263B8;
  objc_copyWeak(&v12, (a1 + 32));
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v12);
}

void sub_1006BC9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  if (*(a1 + 32))
  {
    v3 = sub_100798DBC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) description];
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      v23 = 138413058;
      v24 = v4;
      v25 = 2048;
      v26 = v5;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error %@ for stationId %llu lineId %llu tripId %llu", &v23, 0x2Au);
    }

    v8 = [WeakRetained isNetworkError:*(a1 + 32)];
    if (![*(a1 + 40) count])
    {
      v9 = [WeakRetained departureDataProvider];
      v10 = [v9 departures];
      v11 = [v10 count];

      if (!v11)
      {
        if (v8)
        {
          v22 = 4;
        }

        else
        {
          v22 = 3;
        }

        [WeakRetained updateDeparturesSectionForNetworkState:v22];
        goto LABEL_19;
      }
    }

    if (v8)
    {
      [WeakRetained updateStopsSectionForNetworkState:4];
      goto LABEL_19;
    }
  }

  v12 = [*(a1 + 40) firstObject];
  [WeakRetained processUpdatedDepartureSequencesFromMapItem:v12];
  v13 = [v12 _transitInfo];
  v14 = [v13 transitTripStops];
  if ([v14 count])
  {
    [WeakRetained updateStopsSectionForNetworkState:1];
  }

  else
  {
    v15 = sub_100798DBC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v23 = 134218496;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No stops found departing station muid %llu w/ lineId %llu tripId %llu", &v23, 0x20u);
    }

    [WeakRetained updateStopsSectionForNetworkState:3];
    [WeakRetained selectDeparture];
  }

  v19 = [v13 composedRoute];

  if (!v19)
  {
    v20 = sub_100798DBC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [WeakRetained selectedTripIdentifier];
      v23 = 134217984;
      v24 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No trip route provided for the requested trip id %llu", &v23, 0xCu);
    }
  }

  [WeakRetained setBoardingStationMapItem:v12];

LABEL_19:
}

void sub_1006BD7DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 identifier];
  v7 = [v6 muid];
  v8 = *(*(a1 + 32) + 256);

  if (v7 == v8)
  {
    [*(a1 + 32) setSelectedTransitLine:v11];
    v9 = [*(a1 + 32) headerTitleView];
    v10 = [v11 artwork];
    [v9 setArtwork:v10];

    *a4 = 1;
  }
}

void sub_1006BD8AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if ([v16 stationIdentifier] == *(*(a1 + 32) + 248))
  {
    *a4 = 1;
    *(*(a1 + 32) + 240) = a3;
    v7 = [GEOLocation alloc];
    v8 = [v16 location];
    [v8 lat];
    v10 = v9;
    v11 = [v16 location];
    [v11 lng];
    v13 = [v7 initWithLatitude:v10 longitude:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 224);
    *(v14 + 224) = v13;
  }
}

void sub_1006BE318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006BE33C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100798DBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 description];
      v9 = [*(a1 + 32) muid];
      *buf = 138412546;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error %@ when attempting to refine transit line muid %lld", buf, 0x16u);
    }
  }

  if ([v5 count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006BE4BC;
    v10[3] = &unk_101661340;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v5;
    dispatch_async(&_dispatch_main_q, v10);

    objc_destroyWeak(&v12);
  }
}

void sub_1006BE4BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) firstObject];
    v4 = *(v6 + 40);
    *(v6 + 40) = v3;

    v5 = [*(v6 + 27) snapshot];
    [*(v6 + 27) applySnapshot:v5 animatingDifferences:0];

    WeakRetained = v6;
  }
}

void sub_1006BF47C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[57];
  v3 = [v2 departures];
  [v1 departureDataProvider:v2 updatedDepartures:v3];
}

void sub_1006BF5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1006BF5F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _sectionTypeForSectionIndex:a2];
  v8 = [WeakRetained traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 5)
  {
    if (v7 == 3)
    {
      v29 = [NSCollectionLayoutDimension estimatedDimension:104.0];
      v30 = [NSCollectionLayoutDimension estimatedDimension:54.0];
      v45 = [NSCollectionLayoutSize sizeWithWidthDimension:v29 heightDimension:v30];

      v31 = [NSCollectionLayoutItem itemWithLayoutSize:v45];
      v32 = [NSCollectionLayoutSpacing fixedSpacing:5.0];
      v33 = [NSCollectionLayoutSpacing fixedSpacing:5.0];
      v34 = [NSCollectionLayoutEdgeSpacing spacingForLeading:v32 top:0 trailing:v33 bottom:0];
      [v31 setEdgeSpacing:v34];

      v35 = [NSCollectionLayoutDimension estimatedDimension:104.0];
      v36 = [NSCollectionLayoutDimension estimatedDimension:54.0];
      v37 = [NSCollectionLayoutSize sizeWithWidthDimension:v35 heightDimension:v36];

      v49 = v31;
      v38 = [NSArray arrayWithObjects:&v49 count:1];
      v39 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v37 subitems:v38];

      v19 = [NSCollectionLayoutSection sectionWithGroup:v39];
      [v19 setOrthogonalScrollingBehavior:1];
      [v19 setContentInsets:{8.0, 16.0, 0.0, 16.0}];
      [v19 setInterGroupSpacing:7.0];
      v40 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v41 = [NSCollectionLayoutDimension estimatedDimension:54.0];
      v42 = [NSCollectionLayoutSize sizeWithWidthDimension:v40 heightDimension:v41];

      v43 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v42 elementKind:UICollectionElementKindSectionHeader alignment:1];
      [v43 setPinToVisibleBounds:0];
      v48 = v43;
      v44 = [NSArray arrayWithObjects:&v48 count:1];
      [v19 setBoundarySupplementaryItems:v44];

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1006BFC6C;
      v46[3] = &unk_101626340;
      objc_copyWeak(&v47, (a1 + 32));
      [v19 setVisibleItemsInvalidationHandler:v46];
      objc_destroyWeak(&v47);

      goto LABEL_23;
    }

    if (!v7)
    {
      v10 = [NSCollectionLayoutDimension estimatedDimension:104.0];
      v11 = [NSCollectionLayoutDimension estimatedDimension:54.0];
      v12 = [NSCollectionLayoutSize sizeWithWidthDimension:v10 heightDimension:v11];

      v13 = [NSCollectionLayoutItem itemWithLayoutSize:v12];
      v14 = [NSCollectionLayoutDimension estimatedDimension:104.0];
      v15 = [NSCollectionLayoutDimension estimatedDimension:54.0];
      v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];

      v50 = v13;
      v17 = [NSArray arrayWithObjects:&v50 count:1];
      v18 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v16 subitems:v17];

      v19 = [NSCollectionLayoutSection sectionWithGroup:v18];
      [v19 setInterGroupSpacing:7.0];
      [v19 setOrthogonalScrollingBehavior:1];
      [v19 setContentInsets:{2.0, 16.0, 0.0, 16.0}];

      goto LABEL_23;
    }
  }

  v20 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2 * (v7 != 8)];
  v21 = v20;
  v23 = v7 == 1 || v7 == 7;
  [v20 setShowsSeparators:v23];
  v24 = (v7 | 4) != 4 && v7 != 8;
  [v21 setHeaderMode:v24];
  v25 = +[UIColor clearColor];
  [v21 setBackgroundColor:v25];

  [v21 setHeaderTopPadding:8.0];
  v19 = [NSCollectionLayoutSection sectionWithListConfiguration:v21 layoutEnvironment:v5];
  v26 = sub_10000FA08(WeakRetained);
  v27 = v7 != 4;
  if (v26 != 5)
  {
    v27 = 1;
  }

  if (v27)
  {
    if (v26 != 5)
    {
      [v19 setContentInsets:{8.0, 16.0, 0.0, 16.0}];
    }

    if (v7 == 7)
    {
      [v19 setInterGroupSpacing:8.0];
    }
  }

  else
  {
    [v19 setContentInsets:{8.0, 16.0, 0.0, 16.0}];
  }

LABEL_23:

  return v19;
}

void sub_1006BFC6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDeparturesHeaderTitles];
    WeakRetained = v2;
  }
}

BOOL sub_1006C0950(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scheduledDepartureDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 liveDepartureDate];
  }

  v7 = v6;

  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8 <= 86400.0;

  return v9;
}

id sub_1006C1254(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(objc_opt_class()) initWithResolvedThirdPartyLink:v3 mediaType:*(a1 + 40)];

  return v4;
}

void sub_1006C1A30(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10195CF18;
  qword_10195CF18 = v1;

  [qword_10195CF18 setZeroFormattingBehavior:14];
  [qword_10195CF18 setAllowedUnits:64];
  [qword_10195CF18 setMaximumUnitCount:1];
  v3 = qword_10195CF18;

  [v3 setUnitsStyle:1];
}

id sub_1006C23AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (*(v2 + 74) == 1)
  {
    [v3 setHidden:0];
    [*(*(a1 + 32) + 48) setHidden:0];
    v4 = *(*(a1 + 32) + 48);

    return [v4 setProgress:0.0];
  }

  else
  {
    [v3 setHidden:1];
    v6 = *(*(a1 + 32) + 48);

    return [v6 setHidden:1];
  }
}

id sub_1006C30F8()
{
  if (qword_10195CF30 != -1)
  {
    dispatch_once(&qword_10195CF30, &stru_101626750);
  }

  v1 = qword_10195CF28;

  return v1;
}

void sub_1006C314C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationStateMonitoringTask");
  v2 = qword_10195CF28;
  qword_10195CF28 = v1;
}

id sub_1006C3228(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"NavigationForceModernMapMitigation"])
  {
    v2 = *(a1 + 40);

    return [v2 _checkModernMapMitigation];
  }

  else if ([*(a1 + 32) isEqualToString:@"NavigationSuppressAllAnimations"])
  {
    v4 = *(a1 + 40);

    return [v4 _checkAnimationsMitigation];
  }

  else if ([*(a1 + 32) isEqualToString:@"NavigationSuppressETAUpdates"])
  {
    v5 = *(a1 + 40);

    return [v5 _checkETAUpdatesMitigation];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"NavigationThermalMitigationForceMapInactive"];
    if (result)
    {
      v6 = *(a1 + 40);

      return [v6 _checkMapViewMitigation];
    }
  }

  return result;
}

void sub_1006C5098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location)
{
  _Block_object_dispose((v58 - 208), 8);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006C50F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    if (v3)
    {
      LOBYTE(v3) = WeakRetained[4] != 0;
    }

    if ((*(a1 + 40) & 1) == 0 && (v3 & 1) == 0)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained iosBasedChromeViewController];
      [v4 updateHikingMapConfiguration];

      WeakRetained = v5;
    }
  }
}

void sub_1006C5170(uint64_t a1, int a2)
{
  v4 = sub_1006C30F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = 134349825;
    v9 = WeakRetained;
    v10 = 2049;
    v11 = v6;
    v12 = 2049;
    v13 = v7;
    v14 = 1025;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Got result for location %{private}f, %{private}f: %{private}d", &v8, 0x26u);
  }

  *(*(*(a1 + 40) + 8) + 24) |= a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1006C5270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v4 = sub_1006C30F8();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3 == 1)
    {
      if (v5)
      {
        v9 = 134349056;
        v10 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Found at least one hiking waypoint", &v9, 0xCu);
      }

      v6 = *(a1 + 32);
      v4 = [WeakRetained chromeViewController];
      v7 = [v4 acquireHikingMapToken];
      if (v6)
      {
        v8 = WeakRetained[3];
        WeakRetained[3] = v7;
      }

      else
      {
        v8 = WeakRetained[4];
        WeakRetained[4] = v7;
      }
    }

    else if (v5)
    {
      v9 = 134349056;
      v10 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Found no hiking waypoints", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1006C5584(uint64_t a1)
{
  v2 = sub_1006C30F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Calling %lu navigation completion blocks", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1006C57D4(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [*(a1 + 32) chromeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) chromeViewController];
    v7 = +[MKMapService sharedService];
    v8 = [v6 currentUITargetForAnalytics];
    v9 = MapsExternalDeviceHandoffResultStringForAnalytics(v12);
    [v7 captureUserAction:9020 onTarget:v8 eventValue:v9];
  }

  if (v12)
  {
    v10 = +[UIApplication sharedMapsDelegate];
    v11 = CarInterruptionUserInfoForDestinationHandoffFailure(*(a1 + 40), v12);
    [v10 interruptApplicationWithKind:3 userInfo:v11 completionHandler:0];
  }
}

void sub_1006C5E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006C5E58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
  v2 = [WeakRetained currentRoutePlanningSessionConfiguration];
  *&v27 = [v2 shouldRestoreToLowGuidance];

  v3 = [WeakRetained observedRoutePlanningSession];
  LOBYTE(v28) = [v3 sessionInitiator] == 8;

  v4 = sub_1006C30F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Navigation auto launch timer fired", buf, 2u);
  }

  v5 = [WeakRetained observedRoutePlanningSession];
  v6 = [v5 currentRouteCollection];

  v7 = [WeakRetained currentRoutePlanningSessionConfiguration];
  if (![v7 shouldStartShortestRoute])
  {
    goto LABEL_7;
  }

  v8 = [WeakRetained currentRoutePlanningSessionConfiguration];
  v9 = [v8 shouldStartFastestRoute];

  if ((v9 & 1) == 0)
  {
    [v6 routeCollectionByChangingCurrentRouteIndex:{objc_msgSend(v6, "shortestRouteIndex")}];
    v6 = v7 = v6;
LABEL_7:
  }

  v10 = [WeakRetained currentRoutePlanningSessionConfiguration];
  v11 = [v10 shouldStartFastestRoute];

  if (v11)
  {
    v12 = [v6 routeCollectionByChangingCurrentRouteIndex:{objc_msgSend(v6, "fastestRouteIndex")}];

    v6 = v12;
  }

  v13 = [v6 currentRoute];
  v14 = [v13 source] & 0xFFFFFFFFFFFFFFFELL;

  if (v14 == 2)
  {
    v29 = 1;
  }

  if ([v6 count])
  {
    v15 = [WeakRetained chromeViewController];
    v16 = [v15 currentTraits];
    v17 = [WeakRetained observedRoutePlanningSession];
    v18 = [v17 sessionInitiator];
    v19 = [WeakRetained observedRoutePlanningSession];
    v20 = [v19 configuration];
    v21 = [v20 isResumingMultipointRoute];
    *buf = v26;
    *&buf[16] = v27;
    v31 = v28;
    v32 = v29;
    [WeakRetained beginNavigationWithRouteCollection:v6 navigationDetailsOptions:buf mapServiceTraits:v16 sessionInitiator:v18 isResumingMultipointRoute:v21];
  }

  else
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NavigationStateMonitoringTask startNavigationAutoLaunchTimer]_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = "NavigationStateMonitoringTask.m";
      *&buf[22] = 1024;
      *&buf[24] = 347;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v15 = sub_1006C30F8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Tried to start navigation from auto launch timer without a route", buf, 2u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C62A8;
  block[3] = &unk_101661B18;
  block[4] = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);

LABEL_23:
}

void sub_1006C64B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006C64D8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_1006C30F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquired auto launch timer assertion? %d", v6, 8u);
    }

    if ((a2 & 1) == 0)
    {
      [WeakRetained[10] invalidate];
      v5 = WeakRetained[10];
      WeakRetained[10] = 0;
    }
  }
}

void sub_1006C9090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1006C90B4(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [*(a1 + 32) allRatingCategories];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v9 = [*(a1 + 32) allRatingCategories];
    v10 = [v9 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v10 currentState] == 2;

    v11 = [*(a1 + 32) allRatingCategories];
    v12 = [v11 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    v13 = [v12 geoCategoryRating];
    v14 = [v13 value];
    v15 = [v14 categoryName];
    *a2 = [v15 stringValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v6 < v8;
}

BOOL sub_1006C91F4(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [*(a1 + 32) allRatingCategories];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v9 = [*(a1 + 32) allRatingCategories];
    v10 = [v9 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v10 currentState] == 2;

    v11 = [*(a1 + 32) allRatingCategories];
    v12 = [v11 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    v13 = [v12 geoCategoryRating];
    v14 = [v13 value];
    v15 = [v14 categoryName];
    *a2 = [v15 stringValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v6 < v8;
}

void sub_1006C9584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006C95A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 inlinePOIEnrichmentController:v4 requestsPresentationOfPhotosWithCoordinator:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_1006C994C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id sub_1006C9974()
{
  if (qword_10195CF40 != -1)
  {
    dispatch_once(&qword_10195CF40, &stru_101626790);
  }

  v1 = qword_10195CF38;

  return v1;
}

void sub_1006C99C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[4] ratingsForm];
    v8 = [v6[4] photosForm];
    [v6 captureAnalyticsForRatingsForm:v7 photosForm:v8];

    if (v4)
    {
      v9 = sub_1006C9974();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error with submission %@", &v10, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1006C9AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[4] ratingsForm];
    v8 = [v6[4] photosForm];
    [v6 captureAnalyticsForRatingsForm:v7 photosForm:v8];

    if (v4)
    {
      v9 = sub_1006C9974();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error with submission %@", &v10, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1006C9C08(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCInlinePOIEnrichmentController");
  v2 = qword_10195CF38;
  qword_10195CF38 = v1;
}

void sub_1006C9C5C(id a1)
{
  v1 = sub_1006C9974();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Finished background submission", v2, 2u);
  }
}

void sub_1006CAB28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1006CAB50(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setAlpha:1.0];
    [*(a1 + 32) removeFromSuperview];
    [*(a1 + 40) removeFromParentViewController];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didDismiss];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_1006CB204(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1006CB69C(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] displaySearchResultsWithCategory: %@", buf, 0x16u);
  }

  v10 = +[CarChromeModeCoordinator sharedInstance];
  [v10 displaySearchResultsWithCategory:*(a1 + 40)];
}

void sub_1006CBADC(id *a1, void *a2)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006CBC94;
  v13[3] = &unk_101626878;
  v3 = a2;
  v14 = v3;
  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[5];
  v7 = a1[7];
  *&v8 = v5;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v6;
  v15 = v9;
  v16 = v8;
  v17 = a1[8];
  v18 = a1[9];
  v10 = objc_retainBlock(v13);
  if (sub_100741FD4())
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006CBDF4;
    v11[3] = &unk_1016268A0;
    v12 = v10;
    [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v11];
  }

  else
  {
    (v10[2])(v10);
  }
}

void sub_1006CBC94(uint64_t a1)
{
  v2 = [RAPReport alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) submissionManager];
  v5 = [(RAPReport *)v2 initWithContext:v3 submitter:v4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006CBE0C;
  v10[3] = &unk_101626850;
  v13 = *(a1 + 56);
  v11 = *(a1 + 48);
  v6 = v5;
  v12 = v6;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v7 = objc_retainBlock(v10);
  if (*(a1 + 80))
  {
    v8 = [*(a1 + 48) rapViewControllerWithReport:v6 completion:v7];
    if (v8)
    {
      v9 = v8;
      (*(*(a1 + 80) + 16))();
    }
  }
}

uint64_t sub_1006CBDF4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1006CBE0C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v7 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006CBF90;
    v12[3] = &unk_101626800;
    v15 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006CBFB0;
    v8[3] = &unk_101626828;
    v11 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v7 submitWithPrivacyRequestHandler:&stru_1016267D8 willStartSubmitting:v12 didFinishSubmitting:v8];
  }

  else if (!a3)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 32));
    }
  }
}

uint64_t sub_1006CBF90(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t sub_1006CBFB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a3);
  }

  return result;
}

void sub_1006CC674(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10195CF58;
  qword_10195CF58 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195CF58 setLocale:v3];

  v4 = qword_10195CF58;

  [v4 setNumberStyle:2];
}

void sub_1006CC8A0(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10195CF48;
  qword_10195CF48 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195CF48 setLocale:v3];

  [qword_10195CF48 setNumberStyle:2];
  [qword_10195CF48 setMinimumFractionDigits:0];
  v4 = qword_10195CF48;

  [v4 setCurrencyCode:@"CNY"];
}

void sub_1006CE2EC(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if ([*(a1 + 32) canDisplayMenuItemForQuestionCategory:v3])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) menuItemWithFollowUpQuestionCategory:v3];
    [v4 addObjectIfNotNil:v5];
  }
}

UIFont *__cdecl sub_1006CF294(id a1)
{
  v1 = +[UIFont system15];
  v2 = [UIFont _maps_cappedFont:v1 withMaxPoint:30.0];

  return v2;
}

id sub_1006CFFD8()
{
  if (qword_10195CF70 != -1)
  {
    dispatch_once(&qword_10195CF70, &stru_101626948);
  }

  v1 = qword_10195CF68;

  return v1;
}

void sub_1006D002C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningAnimationManager");
  v2 = qword_10195CF68;
  qword_10195CF68 = v1;
}

uint64_t sub_1006D117C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1006D1194(uint64_t a1)
{
  v5 = [*(a1 + 32) items];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1006D1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006D1348(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

void sub_1006D1AA8(uint64_t a1)
{
  v5 = [*(a1 + 32) items];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1006D1B0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 coordinate];
  GEOCalculateDistance();
  v6 = v5;
  [v4 coordinate];

  GEOCalculateDistance();
  v8 = v7;
  v9 = [NSNumber numberWithDouble:v6];
  v10 = [NSNumber numberWithDouble:v8];
  v11 = [v9 compare:v10];

  return v11;
}

void sub_1006D1CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUpdatingCoalesced:0];
  [WeakRetained _updateFraming];
}

void sub_1006D1F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006D1F80(void *a1)
{
  if (a1[4])
  {
    if ([*(a1[5] + 64) isEqualToArray:?])
    {
      return;
    }

    v2 = a1[4];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 copy];
  v4 = a1[5];
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_1006D24AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006D24D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _cancelDismiss];
    [*(a1 + 32) startCountdownForHandle:*(a1 + 40)];
    v3 = [v4 chromeViewController];
    [v3 captureUserAction:9025];

    WeakRetained = v4;
  }
}

void sub_1006D2A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006D2A98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleContactSearchResults:v5 query:v6];
}

void sub_1006D2D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006D2D34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[CarChromeModeCoordinator sharedInstance];
    [v2 popFromContext:v3];

    WeakRetained = v3;
  }
}

id sub_1006D3374(uint64_t a1)
{
  v2 = +[MSPSharedTripService sharedInstance];
  [v2 removeSendingObserver:*(a1 + 32)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"MapsExternalDeviceUpdated" object:0];

  [*(a1 + 32) _commitPendingShares];
  v4 = *(a1 + 32);

  return [v4 _cancelDismiss];
}

void *sub_1006D346C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    return [*(v1 + 8) abandon];
  }

  return result;
}

void sub_1006D34F4(uint64_t a1)
{
  [*(a1 + 32) _refreshSharingIdentity];
  v2 = +[MSPSharedTripService sharedInstance];
  [v2 addSendingObserver:*(a1 + 32)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_externalDeviceUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
}

void sub_1006D36FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006D3720(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D37D8;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1006D37D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateSharingFooterWithIdentity:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1006D3930(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = sub_1000946AC();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    v10 = *(a1 + 56);
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_14;
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

        goto LABEL_9;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

LABEL_14:
    *buf = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@] CarPlay failed to fetch requiresUserConfirmation flag: %@", buf, 0x16u);

    goto LABEL_15;
  }

  if (a2)
  {
    v16 = [*(a1 + 32) name];
    v17 = [*(a1 + 32) handle];
    v18 = sub_100FB1FC8(v16, v17);

    v19 = *(a1 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1006D3BDC;
    v24[3] = &unk_1016269B8;
    v25 = v18;
    v23 = *(a1 + 48);
    v20 = v23;
    v26 = v23;
    v21 = v18;
    v22 = [v19 presentInterruptionOfKind:14 userInfo:v21 completionHandler:v24];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_16:
}

void sub_1006D3BDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderHandle"];
    v4 = +[MSPSharedTripService sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006D3CBC;
    v7[3] = &unk_10162BD48;
    v6 = *(a1 + 40);
    v5 = v6;
    v8 = v6;
    [v4 reportUserConfirmationOfSharingIdentity:v3 completion:v7];
  }
}

void sub_1006D3CBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000946AC();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      goto LABEL_14;
    }

    v5 = *(a1 + 40);
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

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_12:
    *buf = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}@] CarPlay failed to report requiresUserConfirmation: %@", buf, 0x16u);

    goto LABEL_13;
  }

  (*(*(a1 + 32) + 16))();
LABEL_14:
}

id sub_1006D43E0(int a1)
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:56.0];
  if (a1)
  {
    v3 = @"bolt.car.fill";
  }

  else
  {
    v3 = @"car.fill";
  }

  v4 = [UIImage systemImageNamed:v3 withConfiguration:v2];
  v5 = [v4 imageWithoutBaseline];

  return v5;
}

id sub_1006D447C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  for (i = 1; i != 13; ++i)
  {
    v7 = [NSString stringWithFormat:@"VehicleColor%lu", i];
    v8 = [UIColor colorNamed:v7 inBundle:v3 compatibleWithTraitCollection:v4];
    [v5 addObject:v8];
  }

  return v5;
}

void sub_1006D4790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [RideBookingRideStatus statusWithApplication:WeakRetained error:9];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 rideStatusDidChange:v3];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "RideBookingApplication.m";
      v8 = 1026;
      v9 = 1033;
      v10 = 2082;
      v11 = "[RideBookingApplication didChangeProtectionStatusForBundleId:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

int64_t sub_1006D4FD4(id a1, INRideOption *a2, INRideOption *a3)
{
  v4 = a3;
  v5 = [(INRideOption *)a2 priceRange];
  v6 = [v5 minimumPrice];
  v7 = [(INRideOption *)v4 priceRange];

  v8 = [v7 minimumPrice];
  v9 = [v6 compare:v8] == 1;

  return v9;
}

RideBookingPassengersChoice *sub_1006D5A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 partySizeRange];
  [v3 partySizeRange];
  v6 = [[RideBookingPassengersChoice alloc] initWithNumberOfPassengers:&v4[v5]];
  [(RideBookingPassengersChoice *)v6 setIntentsPartySizeOption:v3];

  [(RideBookingPassengersChoice *)v6 setIntentsPriceRange:*(a1 + 32)];

  return v6;
}

void sub_1006D5BC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32) && (v3 = [LSApplicationRecord alloc], [WeakRetained identifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "initWithBundleIdentifier:allowPlaceholder:error:", v4, 0, 0), v4, v5))
    {
      v6 = +[MKSystemController sharedInstance];
      v7 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1006D5DDC;
      v9[3] = &unk_10164D910;
      v10 = v7;
      [v6 openUserActivity:v10 withApplicationRecord:v5 requireOptionKeyPromptUnlockDevice:0 completionHandler:v9];
    }

    else
    {
      v5 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = [WeakRetained identifier];
      [v5 openApplicationWithBundleID:v8];
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "RideBookingApplication.m";
      v13 = 1026;
      v14 = 649;
      v15 = 2082;
      v16 = "[RideBookingApplication openWithActivity:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D5DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v6 = [[NSString alloc] initWithFormat:@"Error opening acivity: %@", *(a1 + 32)];
      *buf = 136315394;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }
}

void sub_1006D62E4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "cancelRide_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cancelRide_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D65CC;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v21, a1 + 6);
    v17 = v6;
    v20 = a1[5];
    v18 = v12;
    v19 = a1[4];
    v14 = v12;
    dispatch_async(v13, block);

    objc_destroyWeak(&v21);
  }

  else
  {
    v15 = v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 600;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication cancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D65CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [[NSString alloc] initWithFormat:@"%@ had an error handling CancelRide: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v16 = v4;
        v17 = 2112;
        v18[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [WeakRetained uniqueName];
        *buf = 138412546;
        v16 = v8;
        v17 = 2080;
        v18[0] = "cancelRide_handleIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cancelRide_handleIntentWithCompletionHandler", "", buf, 2u);
      }

      v10 = *(a1 + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1006D6948;
      v11[3] = &unk_101626C48;
      objc_copyWeak(&v14, (a1 + 64));
      v13 = *(a1 + 56);
      v12 = *(a1 + 48);
      [v10 handleIntentWithCompletionHandler:v11];

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingApplication.m";
      v17 = 1026;
      LODWORD(v18[0]) = 607;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingApplication cancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D6948(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v21 = v10;
      v22 = 2080;
      v23[0] = "cancelRide_handleIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cancelRide_handleIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D6C08;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v19, a1 + 6);
    v15 = v6;
    v18 = a1[5];
    v16 = v5;
    v17 = a1[4];
    dispatch_async(v12, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RideBookingApplication.m";
      v22 = 1026;
      LODWORD(v23[0]) = 616;
      WORD2(v23[0]) = 2082;
      *(v23 + 6) = "[RideBookingApplication cancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D6C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "RideBookingApplication.m";
      v21 = 1026;
      LODWORD(v22[0]) = 620;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[RideBookingApplication cancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  if (*(a1 + 32))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v5 = [NSString alloc];
      v6 = WeakRetained[6];
      v7 = [*(a1 + 32) underlyingError];
      v8 = [v5 initWithFormat:@"%@ had an error handling CancelRide: %@", v6, v7];
      *buf = 136315394;
      v20 = v4;
      v21 = 2112;
      v22[0] = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }

    v9 = *(a1 + 56);
    v10 = [*(a1 + 32) underlyingError];
    (*(v9 + 16))(v9, v10);
LABEL_9:

    goto LABEL_10;
  }

  v11 = *(a1 + 40);
  if (v11 && [v11 code] == 2)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v14 = [[NSString alloc] initWithFormat:@"%@ successfully handled CancelRide", WeakRetained[6]];
      *buf = 136315394;
      v20 = v13;
      v21 = 2112;
      v22[0] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) reset];
  }

  else
  {
    v15 = [NSError GEOErrorWithCode:-11 reason:@"Extension response for INCancelRideIntent invalid"];
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v18 = [[NSString alloc] initWithFormat:@"%@ had an error handling CancelRide: %@", WeakRetained[6], v15];
      *buf = 136315394;
      v20 = v17;
      v21 = 2112;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_10:
}

void sub_1006D6FD8(id a1, INImage *a2, id a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D708C;
  v6[3] = &unk_101626D18;
  v7 = a2;
  v8 = a3;
  v4 = v7;
  v5 = v8;
  [(INImage *)v4 _retrieveImageDataWithReply:v6];
}

void sub_1006D708C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v9 = [[NSString alloc] initWithFormat:@"Unable to retrieve image data = %@", v6];
      *buf = 136315394;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = +[RideBookingAccessProxy imageCache];
    v12 = [v5 _imageData];
    v13 = [*(a1 + 32) _identifier];
    [v11 cacheINImageData:v12 withKey:v13];

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
}

void sub_1006D7634(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "checkIfCanCancelRide_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "checkIfCanCancelRide_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D791C;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v21, a1 + 6);
    v17 = v6;
    v20 = a1[5];
    v18 = v12;
    v19 = a1[4];
    v14 = v12;
    dispatch_async(v13, block);

    objc_destroyWeak(&v21);
  }

  else
  {
    v15 = v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 531;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication checkIfCanCancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D791C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [[NSString alloc] initWithFormat:@"%@ had an error confirming CancelRide: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v16 = v4;
        v17 = 2112;
        v18[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [WeakRetained uniqueName];
        *buf = 138412546;
        v16 = v8;
        v17 = 2080;
        v18[0] = "checkIfCanCancelRide_confirmIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "checkIfCanCancelRide_confirmIntentWithCompletionHandler", "", buf, 2u);
      }

      v10 = *(a1 + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1006D7CA0;
      v11[3] = &unk_101626C48;
      objc_copyWeak(&v14, (a1 + 64));
      v13 = *(a1 + 56);
      v12 = *(a1 + 48);
      [v10 confirmIntentWithCompletionHandler:v11];

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingApplication.m";
      v17 = 1026;
      LODWORD(v18[0]) = 538;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingApplication checkIfCanCancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D7CA0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v21 = v10;
      v22 = 2080;
      v23[0] = "checkIfCanCancelRide_confirmIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "checkIfCanCancelRide_confirmIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D7F60;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v19, a1 + 6);
    v15 = v6;
    v18 = a1[5];
    v16 = v5;
    v17 = a1[4];
    dispatch_async(v12, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RideBookingApplication.m";
      v22 = 1026;
      LODWORD(v23[0]) = 547;
      WORD2(v23[0]) = 2082;
      *(v23 + 6) = "[RideBookingApplication checkIfCanCancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D7F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [NSString alloc];
        v6 = WeakRetained[6];
        v7 = [*(a1 + 32) underlyingError];
        v8 = [v5 initWithFormat:@"%@ had an error confirming CancelRide: %@", v6, v7];
        *buf = 136315394;
        v27 = v4;
        v28 = 2112;
        v29[0] = v8;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      v9 = *(a1 + 56);
      v10 = [*(a1 + 32) underlyingError];
      (*(v9 + 16))(v9, 0, 0, v10);
    }

    else
    {
      v11 = [*(a1 + 40) code] != 2 && objc_msgSend(*(a1 + 40), "code") != 1;
      if (!*(a1 + 40) || v11)
      {
        v10 = [NSError GEOErrorWithCode:-11 reason:@"Extension response for INCancelRideIntent invalid"];
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v25 = [[NSString alloc] initWithFormat:@"%@ had an error confirming CancelRide: %@", WeakRetained[6], v10];
          *buf = 136315394;
          v27 = v24;
          v28 = 2112;
          v29[0] = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
        }

        (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0, v10);
      }

      else
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v14 = [[NSString alloc] initWithFormat:@"%@ successfully confirmed CancelRide", WeakRetained[6]];
          *buf = 136315394;
          v27 = v13;
          v28 = 2112;
          v29[0] = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v10 = [*(a1 + 40) cancellationFee];

        if (v10)
        {
          v15 = [RideBookingCurrencyAmount alloc];
          v16 = [*(a1 + 40) cancellationFee];
          v17 = [v16 amount];
          v18 = [*(a1 + 40) cancellationFee];
          v19 = [v18 currencyCode];
          v10 = [(RideBookingCurrencyAmount *)v15 initWithAmount:v17 currencyCode:v19];
        }

        v20 = [*(a1 + 40) cancellationFeeThreshold];

        if (v20)
        {
          v21 = +[NSCalendar autoupdatingCurrentCalendar];
          v22 = [*(a1 + 40) cancellationFeeThreshold];
          v20 = [v21 dateFromComponents:v22];
        }

        (*(*(a1 + 56) + 16))();
        [*(a1 + 48) reset];
      }
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "RideBookingApplication.m";
      v28 = 1026;
      LODWORD(v29[0]) = 551;
      WORD2(v29[0]) = 2082;
      *(v29 + 6) = "[RideBookingApplication checkIfCanCancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D88EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "sendFeedbackForRide_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "sendFeedbackForRide_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006D8BBC;
    v17[3] = &unk_101660C70;
    objc_copyWeak(&v21, (a1 + 40));
    v18 = v6;
    v14 = *(a1 + 32);
    v19 = v12;
    v20 = v14;
    v15 = v12;
    dispatch_async(v13, v17);

    objc_destroyWeak(&v21);
  }

  else
  {
    v16 = v8;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 480;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D8BBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [[NSString alloc] initWithFormat:@"%@ had an error handling SendRideFeeback: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v15 = v4;
        v16 = 2112;
        v17[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [WeakRetained uniqueName];
        *buf = 138412546;
        v15 = v8;
        v16 = 2080;
        v17[0] = "sendFeedbackForRide_handleIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "sendFeedbackForRide_handleIntentWithCompletionHandler", "", buf, 2u);
      }

      v10 = *(a1 + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1006D8F24;
      v11[3] = &unk_101626C20;
      objc_copyWeak(&v13, (a1 + 56));
      v12 = *(a1 + 48);
      [v10 handleIntentWithCompletionHandler:v11];

      objc_destroyWeak(&v13);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "RideBookingApplication.m";
      v16 = 1026;
      LODWORD(v17[0]) = 487;
      WORD2(v17[0]) = 2082;
      *(v17 + 6) = "[RideBookingApplication sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D8F24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v20 = v10;
      v21 = 2080;
      v22[0] = "sendFeedbackForRide_handleIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "sendFeedbackForRide_handleIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006D91D0;
    v14[3] = &unk_101660C70;
    objc_copyWeak(&v18, (a1 + 40));
    v15 = v6;
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v12, v14);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "RideBookingApplication.m";
      v21 = 1026;
      LODWORD(v22[0]) = 496;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[RideBookingApplication sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D91D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32) || [*(a1 + 40) code] == 3 || !objc_msgSend(*(a1 + 40), "code"))
    {
      v6 = [NSError GEOErrorWithCode:-13 reason:@"Unable to send ride feedback"];
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v9 = [NSString alloc];
        v10 = *(a1 + 32);
        if (!v10)
        {
          v10 = v6;
        }

        v11 = [v9 initWithFormat:@"%@ had an error handling SendRideFeeback: %@", WeakRetained[6], v10];
        *buf = 136315394;
        v14 = v8;
        v15 = 2112;
        v16[0] = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [[NSString alloc] initWithFormat:@"%@ successfully handled SendRideFeeback", WeakRetained[6]];
        *buf = 136315394;
        v14 = v4;
        v15 = 2112;
        v16[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "RideBookingApplication.m";
      v15 = 1026;
      LODWORD(v16[0]) = 500;
      WORD2(v16[0]) = 2082;
      *(v16 + 6) = "[RideBookingApplication sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006D9580(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
      v5 = [NSString alloc];
      v6 = [WeakRetained identifier];
      v7 = [v5 initWithFormat:@"%@ received GetRideStatus live update: %@", v6, a1[4]];
      *buf = 136315394;
      v15 = v4;
      v16 = 2112;
      v17[0] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v8 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [WeakRetained _statusWithGetRideStatusIntentResponse:v10];
    v12 = [a1[4] userActivity];
    [v11 setUserActivity:v12];

    v13 = [WeakRetained delegate];
    [v13 rideStatusDidChange:v11];

    if (([v11 isActiveRide]& 1) == 0)
    {
      [a1[5] stopUpdates];
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "RideBookingApplication.m";
      v16 = 1026;
      LODWORD(v17[0]) = 447;
      WORD2(v17[0]) = 2082;
      *(v17 + 6) = "[RideBookingApplication intentResponseDidUpdate:withSerializedCacheItems:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v10 = v11;
  }
}

void sub_1006D9B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006D9B34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v13 = 138412546;
      v14 = v10;
      v15 = 2080;
      v16[0] = "stopGetRideStatusUpdates_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v13, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "stopGetRideStatusUpdates_resumeWithCompletionHandler", "", &v13, 2u);
    }

    [v5 stopSendingUpdates];
    [WeakRetained[2] reset];
  }

  else
  {
    v12 = v8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "RideBookingApplication.m";
      v15 = 1026;
      LODWORD(v16[0]) = 434;
      WORD2(v16[0]) = 2082;
      *(v16 + 6) = "[RideBookingApplication stopUpdates]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v13, 0x1Cu);
    }
  }
}

void sub_1006DA060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006DA084(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v13 = 138412546;
      v14 = v10;
      v15 = 2080;
      v16[0] = "startGetRideStatusUpdates_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v13, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "startGetRideStatusUpdates_resumeWithCompletionHandler", "", &v13, 2u);
    }

    v12 = v5;
    [v12 setImageProcessingHandler:&stru_101626CF0];
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 startSendingUpdatesToObserver:WeakRetained];
  }

  else
  {
    v12 = v8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "RideBookingApplication.m";
      v15 = 1026;
      LODWORD(v16[0]) = 410;
      WORD2(v16[0]) = 2082;
      *(v16 + 6) = "[RideBookingApplication startUpdates]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v13, 0x1Cu);
    }
  }
}

void sub_1006DA66C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "getRideStatusWithCompletion_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getRideStatusWithCompletion_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006DA930;
    v17[3] = &unk_101660C70;
    objc_copyWeak(&v21, (a1 + 40));
    v18 = v6;
    v14 = *(a1 + 32);
    v19 = v12;
    v20 = v14;
    v15 = v12;
    dispatch_async(v13, v17);

    objc_destroyWeak(&v21);
  }

  else
  {
    v16 = v8;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 351;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication getRideStatusWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DA930(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRideStatus statusWithApplication:WeakRetained error:2];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [[NSString alloc] initWithFormat:@"%@ had an error handling GetRideStatus: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v16 = v5;
        v17 = 2112;
        v18[0] = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [WeakRetained uniqueName];
        *buf = 138412546;
        v16 = v9;
        v17 = 2080;
        v18[0] = "getRideStatusWithCompletion_handleIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getRideStatusWithCompletion_handleIntentWithCompletionHandler", "", buf, 2u);
      }

      v11 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1006DACBC;
      v12[3] = &unk_101626BD0;
      objc_copyWeak(&v14, (a1 + 56));
      v13 = *(a1 + 48);
      [v11 handleIntentWithCompletionHandler:v12];

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingApplication.m";
      v17 = 1026;
      LODWORD(v18[0]) = 357;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingApplication getRideStatusWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DACBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v20 = v10;
      v21 = 2080;
      v22[0] = "getRideStatusWithCompletion_handleIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getRideStatusWithCompletion_handleIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006DAF68;
    v14[3] = &unk_101660C70;
    objc_copyWeak(&v18, (a1 + 40));
    v15 = v6;
    v17 = *(a1 + 32);
    v16 = v5;
    dispatch_async(v12, v14);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "RideBookingApplication.m";
      v21 = 1026;
      LODWORD(v22[0]) = 368;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[RideBookingApplication getRideStatusWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DAF68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRideStatus statusWithApplication:WeakRetained error:2];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [NSString alloc];
        v7 = WeakRetained[6];
        v8 = [*(a1 + 32) underlyingError];
        v9 = [v6 initWithFormat:@"%@ had an error handling GetRideStatus: %@", v7, v8];
        *buf = 136315394;
        v22 = v5;
        v23 = 2112;
        v24[0] = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v13 = [[NSString alloc] initWithFormat:@"%@ successfully handled GetRideStatus: %@", WeakRetained[6], *(a1 + 40)];
        *buf = 136315394;
        v22 = v12;
        v23 = 2112;
        v24[0] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v3 = [WeakRetained _statusWithGetRideStatusIntentResponse:*(a1 + 40)];
      v14 = [*(a1 + 40) userActivity];
      [v3 setUserActivity:v14];

      if ([v3 isActiveRide])
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v17 = [NSString alloc];
          v18 = [WeakRetained identifier];
          v19 = [v17 initWithFormat:@"Requesting extensionProxy to startSendingUpdates for the getRideStatus request for identifier %@", v18];
          *buf = 136315394;
          v22 = v16;
          v23 = 2112;
          v24[0] = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        [WeakRetained startUpdates];
      }
    }

    v20 = *(a1 + 48);
    v10 = [*(a1 + 32) underlyingError];
    (*(v20 + 16))(v20, v3, v10);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "RideBookingApplication.m";
      v23 = 1026;
      LODWORD(v24[0]) = 371;
      WORD2(v24[0]) = 2082;
      *(v24 + 6) = "[RideBookingApplication getRideStatusWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v10;
  }
}

void sub_1006DB7F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "getRideStatus_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getRideStatus_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006DBAB8;
    v17[3] = &unk_101660C70;
    objc_copyWeak(&v21, (a1 + 40));
    v18 = v6;
    v14 = *(a1 + 32);
    v19 = v12;
    v20 = v14;
    v15 = v12;
    dispatch_async(v13, v17);

    objc_destroyWeak(&v21);
  }

  else
  {
    v16 = v8;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 296;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DBAB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRideStatus statusWithApplication:WeakRetained error:2];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [[NSString alloc] initWithFormat:@"%@ had an error handling RequestRide: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v16 = v5;
        v17 = 2112;
        v18[0] = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [WeakRetained uniqueName];
        *buf = 138412546;
        v16 = v9;
        v17 = 2080;
        v18[0] = "getRideStatus_handleIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getRideStatus_handleIntentWithCompletionHandler", "", buf, 2u);
      }

      v11 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1006DBE44;
      v12[3] = &unk_101626B80;
      objc_copyWeak(&v14, (a1 + 56));
      v13 = *(a1 + 48);
      [v11 handleIntentWithCompletionHandler:v12];

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingApplication.m";
      v17 = 1026;
      LODWORD(v18[0]) = 302;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DBE44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v20 = v10;
      v21 = 2080;
      v22[0] = "getRideStatus_handleIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getRideStatus_handleIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006DC0F0;
    v14[3] = &unk_101660C70;
    objc_copyWeak(&v18, (a1 + 40));
    v15 = v6;
    v17 = *(a1 + 32);
    v16 = v5;
    dispatch_async(v12, v14);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "RideBookingApplication.m";
      v21 = 1026;
      LODWORD(v22[0]) = 313;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DC0F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRideStatus statusWithApplication:WeakRetained error:2];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [NSString alloc];
        v7 = WeakRetained[6];
        v8 = [*(a1 + 32) underlyingError];
        v9 = [v6 initWithFormat:@"%@ had an error handling RequestRide: %@", v7, v8];
        *buf = 136315394;
        v22 = v5;
        v23 = 2112;
        v24[0] = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v13 = [[NSString alloc] initWithFormat:@"%@ successfully handled RequestRide: %@", WeakRetained[6], *(a1 + 40)];
        *buf = 136315394;
        v22 = v12;
        v23 = 2112;
        v24[0] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v3 = [WeakRetained _statusWithRequestRideStatusIntentResponse:*(a1 + 40)];
      v14 = [*(a1 + 40) userActivity];
      [v3 setUserActivity:v14];

      if ([v3 isActiveRide])
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
          v17 = [NSString alloc];
          v18 = [WeakRetained identifier];
          v19 = [v17 initWithFormat:@"Requesting extensionProxy to startSendingUpdates for the getRideStatusWithPickupLocation request for identifier %@", v18];
          *buf = 136315394;
          v22 = v16;
          v23 = 2112;
          v24[0] = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        [WeakRetained startUpdates];
      }
    }

    v20 = *(a1 + 48);
    v10 = [*(a1 + 32) underlyingError];
    (*(v20 + 16))(v20, v3, v10);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "RideBookingApplication.m";
      v23 = 1026;
      LODWORD(v24[0]) = 317;
      WORD2(v24[0]) = 2082;
      *(v24 + 6) = "[RideBookingApplication getRideStatusWithPickupLocation:dropOffLocation:rideOption:partySize:paymentMethod:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v10;
  }
}

void sub_1006DC974(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v30 = v10;
      v31 = 2080;
      v32[0] = "requestRideStatus_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestRideStatus_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1006DCCB0;
    v22[3] = &unk_101626B08;
    objc_copyWeak(&v28, a1 + 9);
    v23 = v6;
    v27 = a1[8];
    v24 = v12;
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[6];
    v17 = a1[7];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v25 = v19;
    v26 = v18;
    v20 = v12;
    dispatch_async(v13, v22);

    objc_destroyWeak(&v28);
  }

  else
  {
    v21 = v8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "RideBookingApplication.m";
      v31 = 1026;
      LODWORD(v32[0]) = 218;
      WORD2(v32[0]) = 2082;
      *(v32 + 6) = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DCCB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRequestRideStatus statusWithApplication:WeakRetained error:1];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [[NSString alloc] initWithFormat:@"%@ had an error confirming RequestRide: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v24 = v5;
        v25 = 2112;
        v26[0] = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      (*(*(a1 + 80) + 16))();
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [WeakRetained uniqueName];
        *buf = 138412546;
        v24 = v9;
        v25 = 2080;
        v26[0] = "requestRideStatus_confirmIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestRideStatus_confirmIntentWithCompletionHandler", "", buf, 2u);
      }

      v11 = *(a1 + 40);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1006DD0A8;
      v18[3] = &unk_101626B30;
      objc_copyWeak(&v22, (a1 + 88));
      v21 = *(a1 + 80);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *&v16 = v14;
      *(&v16 + 1) = v15;
      *&v17 = v12;
      *(&v17 + 1) = v13;
      v19 = v17;
      v20 = v16;
      [v11 confirmIntentWithCompletionHandler:v18];

      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "RideBookingApplication.m";
      v25 = 1026;
      LODWORD(v26[0]) = 225;
      WORD2(v26[0]) = 2082;
      *(v26 + 6) = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DD0A8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v28 = v10;
      v29 = 2080;
      v30[0] = "requestRideStatus_confirmIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestRideStatus_confirmIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006DD3BC;
    v20[3] = &unk_101626B08;
    objc_copyWeak(&v26, a1 + 9);
    v21 = v6;
    v25 = a1[8];
    v22 = v5;
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v16 = a1[7];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v23 = v18;
    v24 = v17;
    dispatch_async(v12, v20);

    objc_destroyWeak(&v26);
  }

  else
  {
    v19 = v8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "RideBookingApplication.m";
      v29 = 1026;
      LODWORD(v30[0]) = 236;
      WORD2(v30[0]) = 2082;
      *(v30 + 6) = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DD3BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = [RideBookingRequestRideStatus statusWithApplication:WeakRetained error:1];
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v6 = [NSString alloc];
        v7 = WeakRetained[6];
        v8 = [*(a1 + 32) underlyingError];
        v9 = [v6 initWithFormat:@"%@ had an error confirming RequestRide: %@", v7, v8];
        *buf = 136315394;
        v30 = v5;
        v31 = 2112;
        v32[0] = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      v10 = *(a1 + 80);
      v11 = [*(a1 + 32) underlyingError];
      (*(v10 + 16))(v10, v3, v11);
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v14 = [[NSString alloc] initWithFormat:@"%@ successfully confirmed RequestRide: %@", WeakRetained[6], *(a1 + 40)];
        *buf = 136315394;
        v30 = v13;
        v31 = 2112;
        v32[0] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v15 = [*(a1 + 40) rideStatus];
      v3 = [v15 pickupLocation];

      v16 = [v3 location];
      v17 = v16;
      if (v16 && ([v16 coordinate], latitude = v33.latitude, longitude = v33.longitude, CLLocationCoordinate2DIsValid(v33)) && fabs(latitude) > 2.22044605e-16)
      {

        if (fabs(longitude) > 2.22044605e-16)
        {
          v20 = [v3 location];
          v21 = [*(a1 + 48) location];
          [v20 distanceFromLocation:v21];
          v23 = v22;
          GEOConfigGetDouble();
          v25 = v24;

          if (v23 >= v25)
          {
            [*(a1 + 56) setPickupLocation:v3];
          }
        }
      }

      else
      {
      }

      v11 = [WeakRetained _statusWithRideOption:*(a1 + 64) requestRideIntent:*(a1 + 56) requestRideEtaResponse:*(a1 + 40)];
      v26 = [*(a1 + 40) userActivity];
      [v11 setUserActivity:v26];

      v27 = *(a1 + 80);
      v28 = [*(a1 + 32) underlyingError];
      (*(v27 + 16))(v27, v11, v28);

      [*(a1 + 72) reset];
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "RideBookingApplication.m";
      v31 = 1026;
      LODWORD(v32[0]) = 240;
      WORD2(v32[0]) = 2082;
      *(v32 + 6) = "[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v11;
  }
}

void sub_1006DDCA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [RideBookingRideOptionStatus statusWithApplication:WeakRetained error:12];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingApplication.m";
      v7 = 1026;
      v8 = 143;
      v9 = 2082;
      v10 = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_1006DDDEC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v23 = v10;
      v24 = 2080;
      v25[0] = "listRideOptions_resumeWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "listRideOptions_resumeWithCompletionHandler", "", buf, 2u);
    }

    v12 = v5;
    [v12 setShouldResetRequestAfterHandle:0];
    [v12 setImageProcessingHandler:&stru_101626CF0];
    v13 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006DE0D4;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v21, a1 + 6);
    v17 = v6;
    v20 = a1[5];
    v18 = v12;
    v19 = a1[4];
    v14 = v12;
    dispatch_async(v13, block);

    objc_destroyWeak(&v21);
  }

  else
  {
    v15 = v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingApplication.m";
      v24 = 1026;
      LODWORD(v25[0]) = 154;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DE0D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v5 = [[NSString alloc] initWithFormat:@"%@ had an error handling ListRideOptions: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v17 = v4;
        v18 = 2112;
        v19[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      v6 = [RideBookingRideOptionStatus statusWithApplication:WeakRetained error:1];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [WeakRetained uniqueName];
        *buf = 138412546;
        v17 = v9;
        v18 = 2080;
        v19[0] = "listRideOptions_handleIntentWithCompletionHandler";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "listRideOptions_handleIntentWithCompletionHandler", "", buf, 2u);
      }

      v11 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1006DE474;
      v12[3] = &unk_101626AB8;
      objc_copyWeak(&v15, (a1 + 64));
      v14 = *(a1 + 56);
      v13 = *(a1 + 48);
      [v11 handleIntentWithCompletionHandler:v12];

      objc_destroyWeak(&v15);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "RideBookingApplication.m";
      v18 = 1026;
      LODWORD(v19[0]) = 161;
      WORD2(v19[0]) = 2082;
      *(v19 + 6) = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DE474(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      *buf = 138412546;
      v21 = v10;
      v22 = 2080;
      v23[0] = "listRideOptions_handleIntentWithCompletionHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "listRideOptions_handleIntentWithCompletionHandler", "", buf, 2u);
    }

    v12 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006DE734;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v19, a1 + 6);
    v15 = v6;
    v18 = a1[5];
    v16 = v5;
    v17 = a1[4];
    dispatch_async(v12, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = v8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RideBookingApplication.m";
      v22 = 1026;
      LODWORD(v23[0]) = 172;
      WORD2(v23[0]) = 2082;
      *(v23 + 6) = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1006DE734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = GEOFindOrCreateLog();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v7 = [[NSString alloc] initWithFormat:@"%@ had an error handling ListRideOptions: %@", WeakRetained[6], *(a1 + 32)];
        *buf = 136315394;
        v16 = v6;
        v17 = 2112;
        v18[0] = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      v8 = [RideBookingRideOptionStatus statusWithApplication:WeakRetained error:1];
      v9 = *(a1 + 56);
      v10 = [*(a1 + 32) underlyingError];
      (*(v9 + 16))(v9, v8, v10);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingApplication/RideBookingApplication.m");
        v12 = [[NSString alloc] initWithFormat:@"%@ successfully handled ListRideOptions: %@", WeakRetained[6], *(a1 + 40)];
        *buf = 136315394;
        v16 = v11;
        v17 = 2112;
        v18[0] = v12;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v8 = [WeakRetained _statusWithListRideOptionsResponse:*(a1 + 40)];
      v13 = *(a1 + 56);
      v14 = [*(a1 + 32) underlyingError];
      (*(v13 + 16))(v13, v8, v14);

      [*(a1 + 48) reset];
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingApplication.m";
      v17 = 1026;
      LODWORD(v18[0]) = 176;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingApplication getRideOptionStatusWithPickupLocation:dropOffLocation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf4 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

NSString *__cdecl sub_1006DEF00(id a1, GEOComposedRouteAnchorPoint *a2)
{
  v2 = a2;
  [(GEOComposedRouteAnchorPoint *)v2 locationCoordinate];
  v4 = v3;
  [(GEOComposedRouteAnchorPoint *)v2 locationCoordinate];
  v6 = v5;

  return [NSString stringWithFormat:@"%f, %f", v4, v6];
}

id sub_1006DF608(uint64_t a1, char a2)
{
  v3 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v4 = +[NSBundle mainBundle];
      if (a2)
      {
        v5 = @"[Route Creation] Remove Anchor";
      }

      else
      {
        v5 = @"[Route Creation] Add Anchor";
      }
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_22;
      }

      v4 = +[NSBundle mainBundle];
      if (a2)
      {
        v5 = @"[Route Creation] Redo Anchor";
      }

      else
      {
        v5 = @"[Route Creation] Undo Delete Anchor";
      }
    }

    goto LABEL_20;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v4 = +[NSBundle mainBundle];
      if (a2)
      {
        v5 = @"[Route Creation] Out-and-Back";
      }

      else
      {
        v5 = @"[Route Creation] Undo Out-and-Back";
      }
    }

    else
    {
      if (a1 != 5)
      {
        goto LABEL_22;
      }

      v4 = +[NSBundle mainBundle];
      if (a2)
      {
        v5 = @"[Route Creation] Close Loop";
      }

      else
      {
        v5 = @"[Route Creation] Undo Close Loop";
      }
    }

LABEL_20:
    v6 = v4;
    goto LABEL_21;
  }

  v6 = +[NSBundle mainBundle];
  v4 = v6;
  v5 = @"[Route Creation] Reverse Anchors";
LABEL_21:
  v3 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

LABEL_22:

  return v3;
}

void sub_1006DF8B0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_1006E0020(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) saveMapItem:v3];
}

BOOL sub_1006E152C(id a1, UIButton *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(UIButton *)v3 isEnabled])
  {
    v4 = [(UIButton *)v3 isHidden]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void sub_1006E28AC(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v1 = [v3 window];
  v2 = [v1 rootViewController];
  sub_100D5440C(v2);
}

int64_t sub_1006E6728(void *a1)
{
  v1 = a1;
  v2 = [v1 activePhotoList];
  v3 = [v2 count];
  v4 = [v1 addedPhotosWithMetadata];
  v5 = [v4 count];
  v6 = [v1 maximumNumberOfPhotos];
  v7 = [v1 maximumNumberOfPhotosPerSubmission];

  if (v7 <= v5 || v3 >= v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 - v5;
  }

  return v9;
}

void sub_1006E78C8(uint64_t a1)
{
  v1 = [*(a1 + 32) logicController];
  [v1 displayFilters];
}

id sub_1006E7FF0()
{
  if (qword_10195CF88 != -1)
  {
    dispatch_once(&qword_10195CF88, &stru_101626DE0);
  }

  v1 = qword_10195CF80;

  return v1;
}

void sub_1006E8044(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitNavigationTray");
  v2 = qword_10195CF80;
  qword_10195CF80 = v1;
}

void sub_1006E8354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_1006E8378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _rectOfRowToKeepVisible];
    MinY = CGRectGetMinY(v5);
  }

  else
  {
    MinY = 0.0;
  }

  return MinY;
}

id sub_1006E84D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 0.300000012;
  }

  else
  {
    v5 = 1.0;
  }

  if (v2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v3 setOverrideUserInterfaceStyle:v4];
  [*(*(a1 + 32) + 152) setAlpha:v5];
  v7 = *(*(a1 + 32) + 208);

  return [v7 setAlpha:v6];
}

void sub_1006E8D14(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

void sub_1006EA6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006EA6D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    isKindOfClass = objc_opt_isKindOfClass();
    WeakRetained = v4;
    if (isKindOfClass)
    {
      v3 = +[MKLocationManager sharedLocationManager];
      v4[24] = [v3 isAuthorizationNotDetermined];

      [v4 updateIndicatorType];
      WeakRetained = v4;
    }
  }
}

id sub_1006EB6C4()
{
  if (qword_10195CF98 != -1)
  {
    dispatch_once(&qword_10195CF98, &stru_101626E60);
  }

  v1 = qword_10195CF90;

  return v1;
}

void sub_1006EB718(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SharedTripListContaineeViewController");
  v2 = qword_10195CF90;
  qword_10195CF90 = v1;
}

void sub_1006EBF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1006EBF54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = sub_1006EB6C4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [v7 groupIdentifier];
    v17 = 134349314;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Creating cell for shared trip: %@", &v17, 0x16u);
  }

  v13 = +[TwoLinesTableViewCell identifier];
  v14 = [v9 dequeueReusableCellWithIdentifier:v13 forIndexPath:v8];

  v15 = [TwoLinesContentViewModelComposer cellModelForSharedTrip:v7];
  [v14 setViewModel:v15];

  return v14;
}

void sub_1006EC0D0(uint64_t a1)
{
  v2 = sub_1006EB6C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 134349056;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Reloading tableview", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = [v4 cardPresentationController];
    [v6 updateHeightForCurrentLayout];
  }
}

void sub_1006ECFEC(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v6 = [a2 isComplete];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = *(a1[4] + 56);
    a1 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v3 = [v8 stringByTrimmingCharactersInSet:a1];
    v7 = [v3 length] != 0;
  }

  v9 = [v11 navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v7];

  if ((v6 & 1) == 0)
  {
  }
}

void sub_1006F0388(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 log];
  sub_1006F03E4(v1, 1);
}

id sub_1006F03E4(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = "DROP TABLE reviewedplace";
  }

  else
  {
    v5 = 0;
  }

  if ([v3 createTable:"CREATE TABLE IF NOT EXISTS reviewedplace(   muid INT NOT NULL withDrop:{recommendstate INT NOT NULL, photosadded INT NOT NULL, UNIQUE(muid)   );", v5}] && objc_msgSend(v4, "prepareStatement:forKey:", "INSERT OR REPLACE INTO reviewedplace    (muid, recommendstate, photosadded)    VALUES (@muid, @recommendstate, @photosadded);", @"SetReviewedPlace") && objc_msgSend(v4, "prepareStatement:forKey:", "SELECT muid, recommendstate, photosadded    FROM reviewedplace    WHERE muid = @muid    LIMIT 1;", @"FindReviewedPlace") && objc_msgSend(v4, "prepareStatement:forKey:", "DELETE FROM reviewedplace    WHERE muid = @muid    LIMIT 1;", @"RemoveReviewedPlace"))
  {
    v6 = [v4 prepareStatement:"DROP TABLE reviewedplace;" forKey:@"DropReviewedPlaceEntries"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1006F0570(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) muid];
  v4 = [*(a1 + 40) recommendState];
  v5 = [*(a1 + 40) numberOfPhotosAdded];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1006F07F8;
  v26 = sub_1006F0808;
  v27 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1006F0810;
  v29 = &unk_101626FD8;
  v6 = v2;
  v31 = &v22;
  v32 = v3;
  v30 = v6;
  v33 = v4;
  v34 = v5;
  v7 = [v6 executeStatement:@"SetReviewedPlace" statementBlock:buf];
  v8 = v23[5];
  if (v8)
  {
    v9 = v8;
  }

  _Block_object_dispose(&v22, 8);
  v10 = v8;
  v11 = v7 & (v8 == 0);
  v12 = sub_100799818();
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v14 = [*(a1 + 40) muid];
    v15 = [*(a1 + 40) recommendState];
    v16 = [*(a1 + 40) numberOfPhotosAdded];
    *buf = 134218496;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    v29 = v16;
    v17 = "We added a new reviewed place with muid %llu with recommend state %lu, and number of photos added %lu";
    v18 = v13;
    v19 = OS_LOG_TYPE_INFO;
    v20 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    *&buf[4] = v10;
    v17 = "Failed to add reviewed place with error %@";
    v18 = v13;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 12;
  }

  _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
LABEL_9:

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, v10);
  }
}