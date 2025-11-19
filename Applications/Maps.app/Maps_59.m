id sub_100A71798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained walkPreferences];
  v3 = [v2 avoidStairs];

  return v3;
}

void sub_100A717E8(uint64_t a1, uint64_t a2)
{
  v4 = [WalkPreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained walkPreferences];
  v7 = [v6 avoidHills];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 walkPreferences];
  v10 = [v9 avoidBusyRoads];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(WalkPreferences *)v4 initWithAvoidHills:v7 avoidBusyRoads:v10 avoidStairs:a2 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setWalkPreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 5037;
  }

  else
  {
    v15 = 5038;
  }

  v16 = +[MKMapService sharedService];
  v17 = objc_loadWeakRetained((a1 + 32));
  [v16 captureUserAction:v15 onTarget:objc_msgSend(v17 eventValue:{"analyticsTarget"), @"WALKING"}];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _sendBiomeDiscoverabilitySignals];
}

void sub_100A71AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100A71ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A71CE4;
  v14[3] = &unk_1016334B8;
  objc_copyWeak(&v15, (a1 + 48));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A71D34;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 48));
  v5 = [v3 addSwitchRowWithTitle:v4 get:v14 set:v12];
  v6 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A71F20;
  v10[3] = &unk_1016334B8;
  objc_copyWeak(&v11, (a1 + 48));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A71F70;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = [v3 addSwitchRowWithTitle:v6 get:v10 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100A71CB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_100A71CE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained drivePreferences];
  v3 = [v2 avoidTolls];

  return v3;
}

void sub_100A71D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000207C4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v20[0] = 67109120;
    v20[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting 'Avoid Tolls' to %d", v20, 8u);
  }

  v5 = [DrivePreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained drivePreferences];
  v8 = [v7 avoidHighways];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 drivePreferences];
  v11 = [v10 ignoreLiveTraffic];
  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [(DrivePreferences *)v5 initWithAvoidTolls:a2 avoidHighways:v8 ignoreLiveTraffic:v11 defaults:v12];
  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setDrivePreferences:v13];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _updateHasUnsavedChanges];

  if (a2)
  {
    v16 = 5017;
  }

  else
  {
    v16 = 5018;
  }

  v17 = +[MKMapService sharedService];
  v18 = objc_loadWeakRetained((a1 + 32));
  [v17 captureUserAction:v16 onTarget:objc_msgSend(v18 eventValue:{"analyticsTarget"), 0}];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 _sendBiomeDiscoverabilitySignals];
}

id sub_100A71F20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained drivePreferences];
  v3 = [v2 avoidHighways];

  return v3;
}

void sub_100A71F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000207C4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v20[0] = 67109120;
    v20[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting 'Avoid Highways' to %d", v20, 8u);
  }

  v5 = [DrivePreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained drivePreferences];
  v8 = [v7 avoidTolls];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 drivePreferences];
  v11 = [v10 ignoreLiveTraffic];
  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [(DrivePreferences *)v5 initWithAvoidTolls:v8 avoidHighways:a2 ignoreLiveTraffic:v11 defaults:v12];
  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setDrivePreferences:v13];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _updateHasUnsavedChanges];

  if (a2)
  {
    v16 = 5019;
  }

  else
  {
    v16 = 5020;
  }

  v17 = +[MKMapService sharedService];
  v18 = objc_loadWeakRetained((a1 + 32));
  [v17 captureUserAction:v16 onTarget:objc_msgSend(v18 eventValue:{"analyticsTarget"), 0}];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 _sendBiomeDiscoverabilitySignals];
}

id sub_100A746AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _analyticsTarget];

  return [v1 presentReportAProblemForRouteFromEntryPoint:v2];
}

void sub_100A75CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100A75CD4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _analyticsTargetForTransportType:a2];

  return v4;
}

void sub_100A761AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100A761DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100A7621C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"E-Bike" value:@"localized string not found" table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A763D4;
  v14[3] = &unk_1016334B8;
  objc_copyWeak(&v15, (a1 + 32));
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100A76424;
  v12 = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:v5 get:v14 set:&v9];

  v7 = [NSBundle mainBundle:v9];
  v8 = [v7 localizedStringForKey:@"[Route Planning value:Cycling] E-bike toggle footer" table:{@"localized string not found", 0}];
  [v3 setFooter:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100A763B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_100A763D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cyclePreferences];
  v3 = [v2 ebike];

  return v3;
}

void sub_100A76424(uint64_t a1, uint64_t a2)
{
  v4 = [CyclePreferences alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained cyclePreferences];
  v7 = [v6 avoidHills];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 cyclePreferences];
  v10 = [v9 avoidBusyRoads];
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(CyclePreferences *)v4 initWithAvoidHills:v7 avoidBusyRoads:v10 ebike:a2 defaults:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setCyclePreferences:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 _updateHasUnsavedChanges];

  if (a2)
  {
    v15 = 2173;
  }

  else
  {
    v15 = 2185;
  }

  v17 = +[MKMapService sharedService];
  v16 = objc_loadWeakRetained((a1 + 32));
  [v17 captureUserAction:v15 onTarget:objc_msgSend(v16 eventValue:{"analyticsTarget"), @"BICYCLE"}];
}

void sub_100A76CF4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E380;
  qword_10195E380 = v1;
}

void sub_100A77864(uint64_t a1)
{
  v27 = [objc_opt_class() _topFilterLayerBackgroundColor];
  v2 = kCAFilterPlusD;
  v3 = kCAFilterColorBurnBlendMode;
  [*(*(a1 + 32) + 16) setHidden:0];
  v4 = [*(a1 + 32) appearance];
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_19;
        }

        v6 = 0.396078438;
        v7 = 0.400000006;
        goto LABEL_13;
      }

      v12 = kCAFilterPlusL;

      v11 = [UIColor colorWithWhite:1.0 alpha:0.0599999987];

      v13 = kCAFilterOverlayBlendMode;
      v5 = [UIColor colorWithWhite:1.0 alpha:0.25];
      v2 = v12;
      v3 = v13;
      goto LABEL_18;
    }

    v6 = 0.396078438;
    v7 = 0.800000012;
LABEL_13:
    v5 = [UIColor colorWithRed:v6 green:v6 blue:v6 alpha:v7];
    goto LABEL_19;
  }

  if (v4 == 3)
  {
    v6 = 0.156862751;
    v7 = 1.0;
    goto LABEL_13;
  }

  if (v4 == 4)
  {
    v14 = kCAFilterOverlayBlendMode;

    v5 = [UIColor colorWithRed:0.0392156877 green:0.0392156877 blue:0.470588237 alpha:0.0500000007];
    v3 = v14;
    goto LABEL_19;
  }

  if (v4 != 5)
  {
    goto LABEL_19;
  }

  [*(*(a1 + 32) + 16) setHidden:1];
  v8 = [*(a1 + 32) traitCollection];
  v9 = [v8 userInterfaceStyle];

  v10 = kCAFilterOverlayBlendMode;
  if (v9 == 2)
  {
    v11 = [UIColor colorWithWhite:0.0 alpha:0.0500000007];

    +[UIColor clearColor];
  }

  else
  {
    v11 = [UIColor colorWithRed:0.0 green:0.0274509806 blue:0.0980392173 alpha:0.0500000007];

    [UIColor colorWithRed:0.0 green:0.0274509806 blue:0.0980392173 alpha:0.720000029];
  }
  v5 = ;
  v3 = v10;
LABEL_18:
  v27 = v11;
LABEL_19:
  v15 = [*(*(a1 + 32) + 16) layer];
  [v15 setCompositingFilter:v3];

  v16 = [*(*(a1 + 32) + 8) layer];
  [v16 setCompositingFilter:v2];

  v17 = [*(a1 + 32) roundedCornersStyle];
  v18 = *(a1 + 32);
  if (v17 == 2)
  {
    [v18 setClipsToBounds:0];
    v19 = +[UIColor clearColor];
    [*(*(a1 + 32) + 16) setBackgroundColor:v19];

    v20 = [*(a1 + 32) _roundedCornersResizableImageWithColor:v5];
    [*(*(a1 + 32) + 16) setImage:v20];

    [*(*(a1 + 32) + 8) setBackgroundColor:0];
    v21 = [*(a1 + 32) _roundedCornersResizableImageWithColor:v27];
    [*(*(a1 + 32) + 8) setImage:v21];
  }

  else
  {
    [v18[2] setImage:0];
    [*(*(a1 + 32) + 16) setBackgroundColor:v5];
    [*(*(a1 + 32) + 8) setImage:0];
    [*(*(a1 + 32) + 8) setBackgroundColor:v27];
    v22 = [*(a1 + 32) roundedCornersStyle];
    v23 = [*(a1 + 32) layer];
    v24 = v23;
    if (v22 == 1)
    {
      [v23 setCornerRadius:5.0];

      v25 = *(a1 + 32);
      v26 = 1;
    }

    else
    {
      [v23 setCornerRadius:0.0];

      v25 = *(a1 + 32);
      v26 = 0;
    }

    [v25 setClipsToBounds:v26];
  }
}

void sub_100A78724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A78750(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mergeCollections:v6 error:v5];
}

BOOL sub_100A78898(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) resolvedGEOPlaceCollectionForMapsSyncHistoryCuratedCollection:a2];
  v3 = v2 == 0;

  return v3;
}

void sub_100A78A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100A78A30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100A79484(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v28[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_46;
        }

        if (v13 != 3)
        {
          goto LABEL_30;
        }

        v14 = objc_alloc_init(GEOMapItemStorage);
        v15 = 40;
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v28[0] & 0x7F) << v18;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_50;
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

LABEL_50:
            *(a1 + 32) = v24;
            goto LABEL_51;
          }

          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 24;
LABEL_46:
            v25 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_51;
          }

LABEL_30:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_51;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(GEOStorageCompletion);
          v15 = 8;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_30;
          }

          v14 = objc_alloc_init(GEOLatLng);
          v15 = 16;
        }
      }

      objc_storeStrong((a1 + v15), v14);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || ![v14 readFrom:a2])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100A7A5A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (![a3 unsignedIntegerValue])
  {
    [*(a1 + 32) removeObject:v5];
  }
}

id sub_100A7B6C4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 72);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 32) _captureAnalyticsForRemovedNetwork:{*(*(&v8 + 1) + 8 * v7), v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    return [*(*(a1 + 32) + 72) removeAllObjects];
  }

  return result;
}

BOOL sub_100A7B914(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 globalBrandID];
  v7 = [*(a1 + 32) globalBrandID];
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

VehicleLabelCell *__cdecl sub_100A7DADC(id a1, VGChargingNetwork *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(VGChargingNetwork *)v3 name];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [(VGChargingNetwork *)v3 name];
    [v5 setAccessibilityIdentifier:v6];

    v7 = [(VGChargingNetwork *)v3 name];
    v8 = [v5 label];
    [v8 setText:v7];

    [v5 setAccessoryType:0];
  }

  else
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create a cell for network: %@", &v11, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

int64_t sub_100A7DF40(id a1, VGChargingNetwork *a2, VGChargingNetwork *a3)
{
  v4 = a3;
  v5 = [(VGChargingNetwork *)a2 name];
  v6 = [(VGChargingNetwork *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100A7E79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A7E7EC(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[3] setCenterCoordinate:{a2, a3}];
    [v6 _didChangeCenterCoordinate:v6[3] fromEditLocationMapView:{a2, a3}];
    [v6[3] updateAnnotationTitleWithCenterCoordinate:{a2, a3}];
    [v6[9] dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v6;
  }
}

void sub_100A7E8A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[9] dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

void *sub_100A7FAE0(void *result)
{
  v1 = result[4];
  if (!*(v1 + 40))
  {
    v2 = result;
    [*(v1 + 16) setText:{@"Apple Connect Authentication taking unexpectedly long, Cancel?"}];
    *(v2[4] + 40) = 1;
    v3 = *(v2[4] + 32);

    return [v3 setEnabled:1];
  }

  return result;
}

id sub_100A7FC94(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setHidden:*(a1 + 48)];
  v2 = 1;
  [*(*(a1 + 32) + 24) setEnabled:(*(a1 + 48) & 1) == 0];
  v3 = *(a1 + 32);
  if (*(v3 + 40) != 1)
  {
    v2 = *(a1 + 48) ^ 1;
  }

  [*(v3 + 32) setEnabled:v2 & 1];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 16);

  return [v5 setText:v4];
}

id sub_100A7FDE4(uint64_t a1)
{
  result = [*(a1 + 32) _doAppleConnectAuthentication];
  *(*(a1 + 32) + 48) = 1;
  return result;
}

void sub_100A81290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A812AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didTapContent:WeakRetained[12]];
    WeakRetained = v2;
  }
}

void sub_100A81658(id a1)
{
  v3 = +[NSCharacterSet decimalDigitCharacterSet];
  v1 = [v3 invertedSet];
  v2 = qword_10195E398;
  qword_10195E398 = v1;
}

void sub_100A826E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A82700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[12] becomeFirstResponder];
    WeakRetained = v2;
  }
}

void sub_100A82B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) datePicker];
  [v1 _fieldDidChangeValue:v2];
}

void sub_100A83404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A83420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showDatePicker];
}

void sub_100A8360C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100A83628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 16);
    v6 = WeakRetained;
    if (!v3 || (v4 = objc_loadWeakRetained(WeakRetained + 12), v4, v3 == v4))
    {
      v5 = [NSProgress progressWithTotalUnitCount:1];
      objc_storeWeak(v6 + 12, v5);
      [v6 setObservingProgress:v5];
    }

    else
    {
      v5 = 0;
    }

    [v5 becomeCurrentWithPendingUnitCount:1];
    (*(*(a1 + 32) + 16))();
    [v5 resignCurrent];

    WeakRetained = v6;
  }
}

void sub_100A837C0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 128) isCancelled])
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(*(a1 + 32) + 128) isFinished];
  }

  [*(*(a1 + 32) + 128) fractionCompleted];
  v4 = v3;
  v6 = [*(a1 + 32) _progressView];
  [*(a1 + 32) _setProgressViewHidden:v2];
  if ((v2 & 1) == 0)
  {
    v5 = v4;
    [v6 setProgress:1 animated:0 completion:v5];
  }
}

void sub_100A84794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A847D0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 12, a2);
    [*(a1 + 32) setNeedsUpdateConfiguration];
  }
}

void sub_100A84A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A84A8C(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained cellContentConfiguration];
    v6 = [v4 title];
    [v5 setText:v6];

    v7 = [v4[12] selectedElements];
    v8 = [v7 firstObject];
    v9 = [v8 title];
    [v5 setSecondaryText:v9];

    v10 = [v4 configureCollectionViewCellBlock];
    (v10)[2](v10, v14, v5);

    [v14 setContentConfiguration:v5];
    v11 = [v14 contentView];
    [v11 setAccessibilityIdentifier:@"TextLabel"];

    v12 = [v4 title];
    v13 = [v14 contentView];
    [v13 setAccessibilityLabel:v12];
  }
}

void sub_100A84D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100A84D6C(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained cellContentConfiguration];
    v6 = [v4 title];
    [v5 setText:v6];

    v7 = [v4[12] selectedElements];
    v8 = [v7 firstObject];
    v9 = [v8 title];
    [v5 setSecondaryText:v9];

    v10 = [v4 configureBlock];
    (v10)[2](v10, v14, v5);

    [v14 setContentConfiguration:v5];
    v11 = [v14 contentView];
    [v11 setAccessibilityIdentifier:@"TextLabel"];

    v12 = [v4 title];
    v13 = [v14 contentView];
    [v13 setAccessibilityLabel:v12];
  }
}

double -[TransitDirectionsBlockTransferStepView _blockTransferImageOffsetFromPrimaryLabelBaseline](TransitDirectionsBlockTransferStepView *self, SEL a2)
{
  v2 = [(_MKUILabel *)self->_primaryLabel font];
  [v2 capHeight];
  v4 = v3 * 0.5;

  return v4;
}

void sub_100A89B88(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3 + 1 < [*(a1 + 32) count])
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A89C54;
    block[3] = &unk_10165E668;
    v9 = v4;
    v6 = *(a1 + 32);
    v5 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100A89D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100A89D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_100A8AB5C;
  v90[3] = &unk_101658DA0;
  objc_copyWeak(v92, (a1 + 40));
  v91 = *(a1 + 32);
  v4 = [v3 addNavigationRowWithTitle:@"Console" viewControllerContent:v90];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100A8AC34;
  v88[3] = &unk_101658F18;
  v89 = *(a1 + 32);
  v5 = [v3 addNavigationRowWithTitle:@"Tiles" viewControllerContent:v88];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_100A8ACD0;
  v86[3] = &unk_101658C70;
  objc_copyWeak(&v87, (a1 + 40));
  v6 = [v3 addNavigationRowWithTitle:@"Renderer" viewControllerContent:v86];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_100A8AD94;
  v84[3] = &unk_101658C70;
  objc_copyWeak(&v85, (a1 + 40));
  v7 = [v3 addNavigationRowWithTitle:@"Camera" viewControllerContent:v84];
  v8 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v9 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v10 = [v3 addNavigationRowWithTitle:@"Animation" viewControllerContent:&stru_101633AC0];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100A8B08C;
  v82[3] = &unk_101658C70;
  objc_copyWeak(&v83, (a1 + 40));
  v11 = [v3 addNavigationRowWithTitle:@"Map Types" viewControllerContent:v82];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_100A8B248;
  v80[3] = &unk_101658C70;
  objc_copyWeak(&v81, (a1 + 40));
  v12 = [v3 addNavigationRowWithTitle:@"Styles" viewControllerContent:v80];
  v13 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100A8B30C;
  v78[3] = &unk_101658C70;
  objc_copyWeak(&v79, (a1 + 40));
  v14 = [v3 addNavigationRowWithTitle:@"Performance" viewControllerContent:v78];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100A8B3F4;
  v76[3] = &unk_101661B98;
  objc_copyWeak(&v77, (a1 + 40));
  v15 = [v3 addButtonRowWithTitle:@"Share View as URL" action:v76];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100A8B5EC;
  v74[3] = &unk_101658C70;
  objc_copyWeak(&v75, (a1 + 40));
  v16 = [v3 addNavigationRowWithTitle:@"Debug Display Settings" viewControllerContent:v74];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100A8B774;
  v72[3] = &unk_101658C70;
  objc_copyWeak(&v73, (a1 + 40));
  v17 = [v3 addNavigationRowWithTitle:@"Logics" viewControllerContent:v72];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100A8B838;
  v69[3] = &unk_101658DA0;
  objc_copyWeak(&v71, (a1 + 40));
  v70 = *(a1 + 32);
  v18 = [v3 addNavigationRowWithTitle:@"Labels" viewControllerContent:v69];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100A8BB60;
  v67[3] = &unk_101658C70;
  objc_copyWeak(&v68, (a1 + 40));
  v19 = [v3 addNavigationRowWithTitle:@"Transit" viewControllerContent:v67];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100A8BC24;
  v65[3] = &unk_101658C70;
  objc_copyWeak(&v66, (a1 + 40));
  v20 = [v3 addNavigationRowWithTitle:@"AR Walking" viewControllerContent:v65];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100A8BFF4;
  v62[3] = &unk_101658DA0;
  objc_copyWeak(&v64, (a1 + 40));
  v63 = *(a1 + 32);
  v21 = [v3 addNavigationRowWithTitle:@"Navigation" viewControllerContent:v62];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100A8C37C;
  v60[3] = &unk_101658C70;
  objc_copyWeak(&v61, (a1 + 40));
  v22 = [v3 addNavigationRowWithTitle:@"Traffic" viewControllerContent:v60];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100A8C440;
  v57[3] = &unk_101658DA0;
  objc_copyWeak(&v59, (a1 + 40));
  v58 = *(a1 + 32);
  v23 = [v3 addNavigationRowWithTitle:@"Buildings" viewControllerContent:v57];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100A8C518;
  v54[3] = &unk_101658DA0;
  objc_copyWeak(&v56, (a1 + 40));
  v55 = *(a1 + 32);
  v24 = [v3 addNavigationRowWithTitle:@"Altitude" viewControllerContent:v54];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100A8C614;
  v52[3] = &unk_101658C70;
  objc_copyWeak(&v53, (a1 + 40));
  v25 = [v3 addNavigationRowWithTitle:@"Map Inspector" viewControllerContent:v52];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100A8C6D8;
  v50[3] = &unk_101658C70;
  objc_copyWeak(&v51, (a1 + 40));
  v26 = [v3 addNavigationRowWithTitle:@"Flyover Tours" viewControllerContent:v50];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100A8C79C;
  v48[3] = &unk_101658C70;
  objc_copyWeak(&v49, (a1 + 40));
  v27 = [v3 addNavigationRowWithTitle:@"Flyover AR" viewControllerContent:v48];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100A8C860;
  v46[3] = &unk_101658C70;
  objc_copyWeak(&v47, (a1 + 40));
  v28 = [v3 addNavigationRowWithTitle:@"Lighting" viewControllerContent:v46];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100A8C9B4;
  v44[3] = &unk_101658C70;
  objc_copyWeak(&v45, (a1 + 40));
  v29 = [v3 addNavigationRowWithTitle:@"Flyover Unification" viewControllerContent:v44];
  v30 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v31 = +[GEOResourceManifestManager modernManager];
  v32 = [v31 isMuninEnabled];

  if (v32)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100A8CBD0;
    v41[3] = &unk_101658DA0;
    objc_copyWeak(&v43, (a1 + 40));
    v42 = *(a1 + 32);
    v33 = [v3 addNavigationRowWithTitle:@"Munin" viewControllerContent:v41];

    objc_destroyWeak(&v43);
  }

  if (+[VKMapView _elevatedGroundIsAvailable])
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100A8CEFC;
    v38[3] = &unk_101658DA0;
    objc_copyWeak(&v40, (a1 + 40));
    v39 = *(a1 + 32);
    v34 = [v3 addNavigationRowWithTitle:@"DaVinci" viewControllerContent:v38];

    objc_destroyWeak(&v40);
  }

  if (MapsFeature_IsEnabled_HikingiOS())
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100A8DEA8;
    v36[3] = &unk_101658C70;
    objc_copyWeak(&v37, (a1 + 40));
    v35 = [v3 addNavigationRowWithTitle:@"Hiking iOS" viewControllerContent:v36];
    objc_destroyWeak(&v37);
  }

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v51);
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v59);
  objc_destroyWeak(&v61);

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);

  objc_destroyWeak(v92);
}

void sub_100A8A988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x288]);
  objc_destroyWeak(&STACK[0x2B0]);
  objc_destroyWeak(&STACK[0x2D8]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x350]);
  objc_destroyWeak(&STACK[0x378]);
  objc_destroyWeak(&STACK[0x3A0]);
  objc_destroyWeak((v73 - 200));
  objc_destroyWeak((v73 - 112));
  _Unwind_Resume(a1);
}

void sub_100A8AB5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA74DC;
  v5[3] = &unk_101658D78;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Console" content:v5];

  objc_destroyWeak(&v7);
}

void sub_100A8AC34(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AA6F9C;
  v4[3] = &unk_1016612C8;
  v5 = *(a1 + 32);
  v3 = [a2 addSectionWithTitle:@"Tiles" content:v4];
}

void sub_100A8ACD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA64AC;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Renderer" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8AD94(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100AA3A98;
  v19[3] = &unk_10165E0A8;
  objc_copyWeak(&v20, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Standard Camera" content:v19];
  v5 = [v3 addSectionWithTitle:@"Nav Camera" content:&stru_1016336C0];
  v6 = [v3 addSectionWithTitle:@"Nav Camera Debug Page" content:&stru_1016337E0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA3D84;
  v17[3] = &unk_10165E0A8;
  objc_copyWeak(&v18, (a1 + 32));
  v7 = [v3 addSectionWithTitle:@"Camera Mode" content:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AA3EAC;
  v15[3] = &unk_10165E0A8;
  objc_copyWeak(&v16, (a1 + 32));
  v8 = [v3 addSectionWithTitle:@"Navigation Destination" content:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AA3FD4;
  v13[3] = &unk_10165E0A8;
  objc_copyWeak(&v14, (a1 + 32));
  v9 = [v3 addSectionWithTitle:@"WGS84 Debug Control" content:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100AA4154;
  v11[3] = &unk_10165E0A8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = [v3 addSectionWithTitle:@"Camera Collision Debug Control" content:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
}

void sub_100A8B034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8B08C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100AA2B9C;
  v11[3] = &unk_10165E0A8;
  objc_copyWeak(&v12, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Map Types" content:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AA2CC4;
  v9[3] = &unk_10165E0A8;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = [v3 addSectionWithTitle:@"Map Modes" content:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA2DEC;
  v7[3] = &unk_10165E0A8;
  objc_copyWeak(&v8, (a1 + 32));
  v6 = [v3 addSectionWithTitle:@"Current Emphasis" content:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100A8B214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8B248(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA2568;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Styles" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8B30C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100AA249C;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Performance" content:v6];
  v5 = [v3 addSectionWithTitle:@"Performance Test" content:&stru_101633C48];
  objc_destroyWeak(&v7);
}

void sub_100A8B3F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v23 = [v5 firstObject];

  v6 = [v23 _mapLayer];
  v7 = [v23 camera];
  [v6 centerCoordinate];
  v9 = v8;
  [v6 centerCoordinate];
  v11 = v10;
  [v7 altitude];
  v13 = v12;
  [v6 pitch];
  v15 = v14;
  [v6 yaw];
  v17 = [GEOMapURLBuilder URLForCameraAt:v9 altitude:v11 rotation:v13 tilt:v15 roll:v16, 0.0];
  v18 = [v17 absoluteString];
  v19 = +[UIPasteboard generalPasteboard];
  [v19 setString:v18];

  v20 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"View encoded URL copied to clipboard" preferredStyle:1];
  v21 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101633C68];
  [v20 addAction:v21];
  v22 = objc_loadWeakRetained((a1 + 32));
  [v22 presentViewController:v20 animated:1 completion:0];
}

void sub_100A8B5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Features Controller" content:&stru_101633C88];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AA1EEC;
  v13[3] = &unk_10165E0A8;
  objc_copyWeak(&v14, (a1 + 32));
  v5 = [v3 addSectionWithTitle:@"Paint" content:v13];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100AA2230;
  v11 = &unk_10165E0A8;
  objc_copyWeak(&v12, (a1 + 32));
  v6 = [v3 addSectionWithTitle:@"UTL" content:&v8];
  v7 = [v3 addSectionWithTitle:@"Floating debug view" content:{&stru_101633CA8, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void sub_100A8B74C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8B774(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA1BE8;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Console" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8B838(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A9EB28;
  v20[3] = &unk_101658D78;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Label Highlighting" content:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A9EFD8;
  v18[3] = &unk_10165E0A8;
  objc_copyWeak(&v19, (a1 + 40));
  v5 = [v3 addSectionWithTitle:@"Labels" content:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A9F418;
  v16[3] = &unk_10165E0A8;
  objc_copyWeak(&v17, (a1 + 40));
  v6 = [v3 addSectionWithTitle:@"Labels - Display" content:v16];
  v7 = [v3 addSectionWithTitle:@"Nav Labels" content:&stru_101633E08];
  v8 = [v3 addSectionWithTitle:@"Traffic Feature Nav Labels" content:&stru_101633FE8];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A9F8C4;
  v13[3] = &unk_101658D78;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v9 = [v3 addSectionWithTitle:@"Texture Atlas" content:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A9FB14;
  v11[3] = &unk_10165E0A8;
  objc_copyWeak(&v12, (a1 + 40));
  v10 = [v3 addSectionWithTitle:@"Label Animations" content:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
}

void sub_100A8BB08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100A8BB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A9E994;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Transit" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8BC24(uint64_t a1, void *a2)
{
  v3 = a2;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A9B6FC;
  v28[3] = &unk_10165E0A8;
  objc_copyWeak(&v29, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Labeling" content:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A9B8BC;
  v26[3] = &unk_10165E0A8;
  objc_copyWeak(&v27, (a1 + 32));
  v5 = [v3 addSectionWithTitle:@"Scenes" content:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A9B9E4;
  v24[3] = &unk_10165E0A8;
  objc_copyWeak(&v25, (a1 + 32));
  v6 = [v3 addSectionWithTitle:@"Modes" content:v24];
  v7 = [v3 addSectionWithTitle:@"ForceLayoutType" content:&stru_101634308];
  v8 = [v3 addSectionWithTitle:@"DebugScene" content:&stru_101634388];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A9BBFC;
  v22[3] = &unk_10165E0A8;
  objc_copyWeak(&v23, (a1 + 32));
  v9 = [v3 addSectionWithTitle:@"AR" content:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A9BD60;
  v20[3] = &unk_10165E0A8;
  objc_copyWeak(&v21, (a1 + 32));
  v10 = [v3 addSectionWithTitle:@"Avoidance" content:v20];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100A9BE04;
  v18 = &unk_10165E0A8;
  objc_copyWeak(&v19, (a1 + 32));
  v11 = [v3 addSectionWithTitle:@"Camera" content:&v15];
  v12 = [v3 addSectionWithTitle:@"Label Styling" content:{&stru_101634548, v15, v16, v17, v18}];
  v13 = [v3 addSectionWithTitle:@"Debug Animation Settings" content:&stru_101634768];
  v14 = [v3 addSectionWithTitle:@"Debug Minimap" content:&stru_101634AC8];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
}

void sub_100A8BF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8BFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Frame Rate" content:&stru_101634BE8];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100A9A4D4;
  v27[3] = &unk_10165E0A8;
  objc_copyWeak(&v28, (a1 + 40));
  v5 = [v3 addSectionWithTitle:@"Puck" content:v27];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A9A578;
  v24[3] = &unk_101658D78;
  objc_copyWeak(&v26, (a1 + 40));
  v25 = *(a1 + 32);
  v6 = [v3 addSectionWithTitle:@"Route" content:v24];
  if (+[VKMapView _elevatedGroundIsEnabled])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100A9A854;
    v21[3] = &unk_101658D78;
    objc_copyWeak(&v23, (a1 + 40));
    v22 = *(a1 + 32);
    v7 = [v3 addSectionWithTitle:@"DaVinci Route" content:v21];

    objc_destroyWeak(&v23);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100A9AC78;
  v19[3] = &unk_1016612C8;
  v20 = *(a1 + 32);
  v8 = [v3 addSectionWithTitle:@"Route Debug Points" content:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100A9ACB0;
  v17[3] = &unk_10165E0A8;
  objc_copyWeak(&v18, (a1 + 40));
  v9 = [v3 addSectionWithTitle:@"ETA Labels" content:v17];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100A9AE24;
  v15 = &unk_1016612C8;
  v16 = *(a1 + 32);
  v10 = [v3 addSectionWithTitle:@"ETA Label Debug Score" content:&v12];
  v11 = [v3 addSectionWithTitle:@"ETA Label Orientation Filter" content:{&stru_101634D10, v12, v13, v14, v15}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
}

void sub_100A8C334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8C37C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A9A314;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Traffic" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8C440(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A99F2C;
  v5[3] = &unk_101658D78;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Buildings" content:v5];

  objc_destroyWeak(&v7);
}

void sub_100A8C518(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100A9976C;
  v9 = &unk_101658D78;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Altitude" content:&v6];
  v5 = [v3 addSectionWithTitle:@"Hybrid Unavailability Simulation" content:{&stru_101634E90, v6, v7, v8, v9}];

  objc_destroyWeak(&v11);
}

void sub_100A8C614(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A99640;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Map Inspector" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8C6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A98F4C;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Run Flyover Tour" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8C79C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A98C50;
  v5[3] = &unk_10165E0A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"AR" content:v5];
  objc_destroyWeak(&v6);
}

void sub_100A8C860(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A972C8;
  v8[3] = &unk_10165E0A8;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = [v3 addSectionWithTitle:@"Lighting" content:v8];
  if (MapsFeature_IsEnabled_Maps68())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A97618;
    v6[3] = &unk_10165E0A8;
    objc_copyWeak(&v7, (a1 + 32));
    v5 = [v3 addSectionWithTitle:@"SPR At Scale" content:v6];
    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&v9);
}

void sub_100A8C98C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8C9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Flyover Unification Overrides" content:&stru_101635250];
  v5 = [v3 addSectionWithTitle:@"Elevation Logic" content:&stru_1016352B0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A960E8;
  v14[3] = &unk_10165E0A8;
  objc_copyWeak(&v15, (a1 + 32));
  v6 = [v3 addSectionWithTitle:@"Tours" content:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A963F4;
  v12[3] = &unk_10165E0A8;
  objc_copyWeak(&v13, (a1 + 32));
  v7 = [v3 addSectionWithTitle:@"Octiles" content:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A96570;
  v10[3] = &unk_10165E0A8;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = [v3 addSectionWithTitle:@"Flyover Grid" content:v10];
  v9 = [v3 addSectionWithTitle:@"Flyover Debug" content:&stru_101635550];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100A8CB98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8CBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A93F70;
  v20[3] = &unk_101658D78;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:@"Munin" content:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A94694;
  v18[3] = &unk_1016612C8;
  v19 = *(a1 + 32);
  v5 = [v3 addSectionWithTitle:@"Munin FOV" content:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A94934;
  v16[3] = &unk_10165E0A8;
  objc_copyWeak(&v17, (a1 + 40));
  v6 = [v3 addSectionWithTitle:@"Tap replay" content:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A94AF0;
  v14[3] = &unk_1016612C8;
  v15 = *(a1 + 32);
  v7 = [v3 addSectionWithTitle:@"Availability override" content:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A94B28;
  v12[3] = &unk_10165E0A8;
  objc_copyWeak(&v13, (a1 + 40));
  v8 = [v3 addSectionWithTitle:@"Bump Animation Parameters" content:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A94BE8;
  v10[3] = &unk_10165E0A8;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = [v3 addSectionWithTitle:@"Road Labels" content:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v22);
}

void sub_100A8CEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100A8CEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = sub_100A8EEC0;
  v116 = sub_100A8EED0;
  v117 = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x3032000000;
  v110[3] = sub_100A8EEC0;
  v110[4] = sub_100A8EED0;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_100A8EEC0;
  v108 = sub_100A8EED0;
  v109 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = sub_100A8EEC0;
  v102 = sub_100A8EED0;
  v103 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_100A8EEC0;
  v96 = sub_100A8EED0;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_100A8EEC0;
  v90 = sub_100A8EED0;
  v91 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = sub_100A8EEC0;
  v84[4] = sub_100A8EED0;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_100A8EEC0;
  v82 = sub_100A8EED0;
  v83 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_100A8EEC0;
  v76[4] = sub_100A8EED0;
  v77 = 0;
  objc_initWeak(&location, v3);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100A8EED8;
  v72[3] = &unk_101639930;
  objc_copyWeak(&v73, (a1 + 40));
  objc_copyWeak(&v74, &location);
  v4 = [v3 addSectionWithTitle:@"Features" content:v72];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100A8F268;
  v70[3] = &unk_10165E0A8;
  objc_copyWeak(&v71, (a1 + 40));
  v5 = [v3 addSectionWithTitle:@"DaVinci" content:v70];
  v6 = v113[5];
  v113[5] = v5;

  [v113[5] setVisible:{+[VKMapView _elevatedGroundIsEnabled](VKMapView, "_elevatedGroundIsEnabled")}];
  v7 = [v3 addSectionWithTitle:@"Shadow Map Resolution" content:&stru_101635BB0];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100A8F900;
  v68[3] = &unk_101636098;
  v68[4] = v76;
  objc_copyWeak(&v69, (a1 + 40));
  v8 = [v3 addSectionWithTitle:@"Advanced Lighting" content:v68];
  v9 = v105[5];
  v105[5] = v8;

  [v105[5] setVisible:MapsFeature_IsEnabled_ShelbyvilleAdvancedLighting()];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100A8FF70;
  v66[3] = &unk_10165E0A8;
  objc_copyWeak(&v67, (a1 + 40));
  v10 = [v3 addSectionWithTitle:@"Debug Style Raster Attribute" content:v66];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100A900D0;
  v64[3] = &unk_10165E0A8;
  objc_copyWeak(&v65, (a1 + 40));
  v11 = [v3 addSectionWithTitle:@"Planar Texture Mapping Tuning" content:v64];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100A901EC;
  v62[3] = &unk_10165E0A8;
  objc_copyWeak(&v63, (a1 + 40));
  v12 = [v3 addSectionWithTitle:@"Color Correction Tuning" content:v62];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100A904D0;
  v59[3] = &unk_101658D78;
  objc_copyWeak(&v61, (a1 + 40));
  v60 = *(a1 + 32);
  v13 = [v3 addSectionWithTitle:@"Normal generation edge smoothing" content:v59];
  v14 = v99[5];
  v99[5] = v13;

  [v99[5] setVisible:{+[VKMapView _elevatedGroundIsEnabled](VKMapView, "_elevatedGroundIsEnabled")}];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100A90830;
  v56[3] = &unk_101658D78;
  objc_copyWeak(&v58, (a1 + 40));
  v57 = *(a1 + 32);
  v15 = [v3 addSectionWithTitle:@"Elevation Scaling" content:v56];
  v16 = v93[5];
  v93[5] = v15;

  [v93[5] setVisible:{+[VKMapView _elevatedGroundIsEnabled](VKMapView, "_elevatedGroundIsEnabled")}];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100A90B24;
  v54[3] = &unk_10165E0A8;
  objc_copyWeak(&v55, (a1 + 40));
  v17 = [v3 addSectionWithTitle:@"Pitch Flattening" content:v54];
  v18 = v87[5];
  v87[5] = v17;

  [v87[5] setVisible:{+[VKMapView _elevatedGroundIsEnabled](VKMapView, "_elevatedGroundIsEnabled")}];
  v19 = [v3 addSectionWithTitle:@"Globe Atmosphere" content:&stru_101636420];
  v20 = v79[5];
  v79[5] = v19;

  v21 = v79[5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v23 = [WeakRetained valueForKeyInAllMapLayers:@"enableGlobe"];
  [v21 setVisible:{objc_msgSend(v23, "BOOLValue")}];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100A90C90;
  v51[3] = &unk_101639930;
  objc_copyWeak(&v52, (a1 + 40));
  objc_copyWeak(&v53, &location);
  v40 = [v3 addSectionWithTitle:@"Globe Camera" content:v51];
  [v40 setVisible:{+[VKMapView _globeIsEnabled](VKMapView, "_globeIsEnabled")}];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100A90F0C;
  v49[3] = &unk_10165E0A8;
  objc_copyWeak(&v50, (a1 + 40));
  v24 = [v3 addSectionWithTitle:@"Draping" content:v49];
  [v24 setVisible:{+[VKMapView _elevatedGroundIsEnabled](VKMapView, "_elevatedGroundIsEnabled")}];
  v25 = objc_loadWeakRetained((a1 + 40));
  v26 = v25;
  if (v25)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = *(v25 + 13);
    v28 = [v27 countByEnumeratingWithState:&v45 objects:v118 count:16];
    if (v28)
    {
      v29 = *v46;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v27);
          }

          MapsFeature_RemoveBlockListener();
        }

        v28 = [v27 countByEnumeratingWithState:&v45 objects:v118 count:16];
      }

      while (v28);
    }

    v31 = v26[13];
    v32 = &_dispatch_main_q;
    v43[1] = _NSConcreteStackBlock;
    v43[2] = 3221225472;
    v43[3] = sub_100A910F8;
    v43[4] = &unk_101636608;
    v43[5] = &v112;
    v43[6] = &v98;
    v43[7] = &v92;
    v43[8] = &v86;
    v43[9] = v84;
    objc_copyWeak(&v44, &location);
    v33 = MapsFeature_AddBlockListener();
    [v31 addObject:v33];

    v34 = v26[13];
    v42[1] = _NSConcreteStackBlock;
    v42[2] = 3221225472;
    v42[3] = sub_100A911AC;
    v42[4] = &unk_101636630;
    v42[5] = &v78;
    v42[6] = v76;
    objc_copyWeak(v43, &location);
    v35 = MapsFeature_AddBlockListener();
    [v34 addObject:v35];

    v36 = v26[13];
    v41[1] = _NSConcreteStackBlock;
    v41[2] = 3221225472;
    v41[3] = sub_100A91224;
    v41[4] = &unk_101636658;
    v41[5] = &v104;
    objc_copyWeak(v42, &location);
    v37 = MapsFeature_AddBlockListener();
    [v36 addObject:v37];

    v38 = v26[13];
    objc_copyWeak(v41, &location);
    v39 = MapsFeature_AddBlockListener();
    [v38 addObject:v39];

    objc_destroyWeak(v41);
    objc_destroyWeak(v42);
    objc_destroyWeak(v43);
    objc_destroyWeak(&v44);
  }

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&v55);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(v110, 8);

  _Block_object_dispose(&v112, 8);
}

void sub_100A8DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak(&a51);
  objc_destroyWeak((v68 + 40));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2B0]);
  objc_destroyWeak(&STACK[0x2D8]);
  objc_destroyWeak(&STACK[0x308]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x310]);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x438], 8);
  _Block_object_dispose(&STACK[0x468], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Unwind_Resume(a1);
}

void sub_100A8DEA8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v4 = [v3 addSectionWithTitle:@"Rendering Features (Requires Relaunch)" content:&stru_101636678];
  v5 = [v3 addSectionWithTitle:@"UI Features" content:&stru_101636798];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A8E218;
  v20[3] = &unk_10165E0A8;
  objc_copyWeak(&v21, (a1 + 32));
  v6 = [v3 addSectionWithTitle:@"Hillshade Debug Setting" content:v20];
  v7 = [v3 addSectionWithTitle:@"Engineering Settings" content:&stru_101636878];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[13];
    v11 = &_dispatch_main_q;
    v18[1] = _NSConcreteStackBlock;
    v18[2] = 3221225472;
    v18[3] = sub_100A8E3C8;
    v18[4] = &unk_101636A60;
    v18[5] = v9;
    objc_copyWeak(&v19, &location);
    v12 = _GEOConfigAddBlockListenerForKey();
    [v10 addObject:v12];

    v13 = v9[13];
    v17[1] = _NSConcreteStackBlock;
    v17[2] = 3221225472;
    v17[3] = sub_100A8E4D8;
    v17[4] = &unk_101636A60;
    v17[5] = v9;
    objc_copyWeak(v18, &location);
    v14 = _GEOConfigAddBlockListenerForKey();
    [v13 addObject:v14];

    v15 = v9[13];
    objc_copyWeak(v17, &location);
    v16 = _GEOConfigAddBlockListenerForKey();
    [v15 addObject:{v16, _NSConcreteStackBlock, 3221225472, sub_100A8E5E8, &unk_101636A60, v9}];

    objc_destroyWeak(v17);
    objc_destroyWeak(v18);
    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void sub_100A8E1C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100A8E218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Use Debug Setting For Hillshade" get:&stru_1016367F8 set:&stru_101636818];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100A8EABC;
  v15[3] = &unk_101633620;
  objc_copyWeak(&v16, (a1 + 32));
  LODWORD(v5) = 1.0;
  v6 = [v3 addSliderRowWithTitle:@"Hillshade Opacity" subtitleStringFormat:@"%.1f" min:&stru_101636838 max:v15 get:0.0 set:v5];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100A8EB34;
  v13 = &unk_101633620;
  objc_copyWeak(&v14, (a1 + 32));
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 18.0;
  v9 = [v3 addSliderRowWithTitle:@"Hillshade Blend Mode" subtitleStringFormat:@"%.1f" min:&stru_101636858 max:&v10 get:v7 set:v8];
  [v3 setFooter:{@" Normal = 0, Multiply = 1, Screen = 2, Overlay = 3, Darken = 4, Lighten = 5, ColorDodge = 6, ColorBur = 7, Difference = 8, Exclusion = 9, HardLight = 10, SoftLight = 11, Hue = 12, Saturation = 13, Color = 14, Luminosity = 15, LinearBurn = 16, LinearDodge = 17, Desaturate = 18", v10, v11, v12, v13}];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
}

void sub_100A8E3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8E3C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 104);
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

        MapsFeature_RemoveBlockListener();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rebuildSections];
}

void sub_100A8E4D8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 104);
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

        MapsFeature_RemoveBlockListener();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rebuildSections];
}

void sub_100A8E5E8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 104);
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

        MapsFeature_RemoveBlockListener();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rebuildSections];
}

void sub_100A8E6F8(id a1, MapsDebugTableSection *a2)
{
  v17 = a2;
  v2 = [(MapsDebugTableSection *)v17 addSwitchRowWithTitle:@"Do Contour Line Depth Bias" get:&stru_101636898 set:&stru_1016368B8];
  if (GEOConfigGetBOOL())
  {
    LODWORD(v3) = -943501440;
    LODWORD(v4) = -2.0;
    v5 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Contour Line Depth Bias" subtitleStringFormat:@"%.1f" min:&stru_1016368D8 max:&stru_1016368F8 get:v3 set:v4];
    LODWORD(v6) = -1010302976;
    LODWORD(v7) = -2.0;
    v8 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Contour Line Depth Slope Scale" subtitleStringFormat:@"%.1f" min:&stru_101636918 max:&stru_101636938 get:v6 set:v7];
  }

  LODWORD(v4) = 1117782016;
  LODWORD(v3) = -1.0;
  v9 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Pitch Fade Contour Line (degrees)" subtitleStringFormat:@"%.1f" min:&stru_101636958 max:&stru_101636978 get:v3 set:v4];
  LODWORD(v10) = 1.0;
  v11 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Contour Line Alpha When Pitched" subtitleStringFormat:@"%.1f" min:&stru_101636998 max:&stru_1016369B8 get:0.0 set:v10];
  LODWORD(v12) = -1.0;
  v13 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Trail/Junction Elevation Offset" subtitleStringFormat:@"%.01f" min:&stru_1016369D8 max:&stru_1016369F8 get:v12 set:0.0];
  LODWORD(v14) = 1118437376;
  LODWORD(v15) = -1.0;
  v16 = [(MapsDebugTableSection *)v17 addSliderRowWithTitle:@"Pitch to Disable DaVinci Animation" subtitleStringFormat:@"%.1f" min:&stru_101636A18 max:&stru_101636A38 get:v15 set:v14];
}

void sub_100A8E908(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setTrailJunctionElevationOffset:v3];
}

float sub_100A8E960(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 trailJunctionElevationOffset];
  v3 = v2;

  return v3;
}

void sub_100A8EABC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setHillshadeOpacity:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A8EB34(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setHillshadeBlendMode:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

float sub_100A8EBAC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 hillshadeBlendMode];
  v3 = v2;

  return v3;
}

float sub_100A8EBF4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 hillshadeOpacity];
  v3 = v2;

  return v3;
}

void sub_100A8EC3C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableDebugSettingForHillShade:v2];
}

BOOL sub_100A8EC94(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableDebugSettingForHillShade];

  return v2;
}

void sub_100A8ED34(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Override Hiking Features" get:&stru_101636698 set:&stru_1016366B8];
  if (GEOConfigGetBOOL())
  {
    v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show Hillshade" get:&stru_1016366D8 set:&stru_1016366F8];
    v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show Hiking" get:&stru_101636718 set:&stru_101636738];
    if (GEOConfigGetBOOL())
    {
      v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show Topographic Features" get:&stru_101636758 set:&stru_101636778];
    }
  }
}

uint64_t sub_100A8EEC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100A8EED8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[VKMapView _elevatedGroundIsAvailable])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100A93B50;
    v22[3] = &unk_101639D38;
    objc_copyWeak(&v23, (a1 + 32));
    objc_copyWeak(&v24, (a1 + 40));
    v4 = [v3 addSwitchRowWithTitle:@"Terrain" get:&stru_101635A10 set:v22];
    if (MapsFeature_IsEnabled())
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100A93CEC;
      v20[3] = &unk_1016334B8;
      objc_copyWeak(&v21, (a1 + 32));
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100A93D98;
      v18[3] = &unk_1016619A8;
      objc_copyWeak(&v19, (a1 + 32));
      v5 = [v3 addSwitchRowWithTitle:@"Metros" get:v20 set:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
  }

  if (MapsFeature_IsAvailable_ShelbyvilleGlobe())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Globe" selector:"enableGlobe" key:{MapsFeaturesConfig_ShelbyvilleGlobe[0], MapsFeaturesConfig_ShelbyvilleGlobe[1]}];
  }

  if (MapsFeature_IsAvailable_ShelbyvilleRoundedBuildings())
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Rounded Buildings" selector:"enableRoundedBuildings" key:{MapsFeaturesConfig_ShelbyvilleRoundedBuildings[0], MapsFeaturesConfig_ShelbyvilleRoundedBuildings[1]}];
  }

  if (MapsFeature_IsAvailable_ShelbyvilleColorizedBuildings())
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Colorized Buildings" selector:"enableColorizedBuildings" key:{MapsFeaturesConfig_ShelbyvilleColorizedBuildings[0], MapsFeaturesConfig_ShelbyvilleColorizedBuildings[1]}];
  }

  if (MapsFeature_IsAvailable_ShelbyvilleBuildingHeights())
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Building Heights" selector:"enableBuildingHeights" key:{MapsFeaturesConfig_ShelbyvilleBuildingHeights[0], MapsFeaturesConfig_ShelbyvilleBuildingHeights[1]}];
  }

  if (MapsFeature_IsAvailable_ShelbyvilleAdvancedLighting())
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Advanced Lighting" selector:"enableAdvancedLighting" key:{MapsFeaturesConfig_ShelbyvilleAdvancedLighting[0], MapsFeaturesConfig_ShelbyvilleAdvancedLighting[1]}];
  }

  if (MapsFeature_IsAvailable_ShelbyvilleAdvancedWater())
  {
    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Advanced Water" selector:"enableAdvancedWater" key:{MapsFeaturesConfig_ShelbyvilleAdvancedWater[0], MapsFeaturesConfig_ShelbyvilleAdvancedWater[1]}];
  }
}

void sub_100A8F230(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8F268(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Entity Highlighting (Top down only (still unreliably))" forVectorKitDebugKey:@"daVinciEntityDebugHighlighting"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Force 3D" forVectorKitDebugKey:@"daVinciForceElevatedGround"];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Hide Buildings on Camera Collision" forVectorKitDebugKey:@"hideBuildingsOnCollision"];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Hide Assets (Landmarks/Trees etc.) on Camera Collision" forVectorKitDebugKey:@"hideAssetsOnCollision"];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Show Geometry Stats" forVectorKitDebugKey:@"drawDaVinciHUD"];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Enable Wireframe" forVectorKitDebugKey:@"daVinciWireframeEnabled"];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Paint Decal bounds" forVectorKitDebugKey:@"paintDaVinciDecalBounds"];

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 addAllMapsSwitchRowToSection:v3 title:@"Paint Mesh bounds" forVectorKitDebugKey:@"paintDaVinciMeshBounds"];

  v20 = objc_loadWeakRetained((a1 + 32));
  v21 = [v20 addAllMapsSwitchRowToSection:v3 title:@"Paint Building Mesh bounds" forVectorKitDebugKey:@"paintDaVinciBuildingMeshBounds"];

  v22 = objc_loadWeakRetained((a1 + 32));
  v23 = [v22 addAllMapsSwitchRowToSection:v3 title:@"Paint Meta Tiles" forVectorKitDebugKey:@"paintDaVinciMetaTiles"];

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100A935FC;
  v65[3] = &unk_101633620;
  objc_copyWeak(&v66, (a1 + 32));
  LODWORD(v24) = 1.0;
  v25 = [v3 addSliderRowWithTitle:@"Meta tile opacity" subtitleStringFormat:@"%.1f" min:&stru_101635A30 max:v65 get:0.0 set:v24];
  v26 = objc_loadWeakRetained((a1 + 32));
  v27 = [v26 addAllMapsSwitchRowToSection:v3 title:@"Enable Tile Clipping" forVectorKitDebugKey:@"enableTileClipping"];

  v28 = objc_loadWeakRetained((a1 + 32));
  v29 = [v28 addAllMapsSwitchRowToSection:v3 title:@"Enable Tile Clipping (Fallback) Debugging" forVectorKitDebugKey:@"enableTileClippingDebug"];

  v30 = objc_loadWeakRetained((a1 + 32));
  v31 = [v30 addAllMapsSwitchRowToSection:v3 title:@"Render line geometry" forVectorKitDebugKey:@"daVinciRenderLineGeometry"];

  v32 = objc_loadWeakRetained((a1 + 32));
  v33 = [v32 addAllMapsSwitchRowToSection:v3 title:@"Render overlay polygons" key:@"renderOverlayPolygons"];

  v34 = objc_loadWeakRetained((a1 + 32));
  v35 = [v34 addAllMapsSwitchRowToSection:v3 title:@"Show Center Line Roads" forVectorKitDebugKey:@"daVinciShowCenterLineRoads"];

  v36 = objc_loadWeakRetained((a1 + 32));
  v37 = [v36 addAllMapsSwitchRowToSection:v3 title:@"Enable Ribbon Antialiasing" forVectorKitDebugKey:@"daVinciEnableRibbonAntialiasing"];

  v38 = objc_loadWeakRetained((a1 + 32));
  v39 = [v38 addAllMapsSwitchRowToSection:v3 title:@"Paint DaVinci Tiles" forVectorKitDebugKey:@"paintDaVinciTiles"];

  v40 = objc_loadWeakRetained((a1 + 32));
  v41 = [v40 addAllMapsSwitchRowToSection:v3 title:@"Paint DaVinci Building Tiles" forVectorKitDebugKey:@"paintDaVinciBuildingTiles"];

  v42 = objc_loadWeakRetained((a1 + 32));
  v43 = [v42 addAllMapsSwitchRowToSection:v3 title:@"Paint Draped Polygons" forVectorKitDebugKey:@"paintDrapedPolygons"];

  v44 = objc_loadWeakRetained((a1 + 32));
  v45 = [v44 addAllMapsSwitchRowToSection:v3 title:@"Paint Tile Boundary Verts" forVectorKitDebugKey:@"paintDaVinciTileBoundaryVerts"];

  v46 = objc_loadWeakRetained((a1 + 32));
  v47 = [v46 addAllMapsSwitchRowToSection:v3 title:@"Paint Elevation Raster" forVectorKitDebugKey:@"paintDaVinciElevationRaster"];

  v48 = objc_loadWeakRetained((a1 + 32));
  v49 = [v48 addAllMapsSwitchRowToSection:v3 title:@"Show Missing Materials" forVectorKitDebugKey:@"daVinciShowMissingMaterials"];

  v50 = [v3 addSwitchRowWithTitle:@"Paint LOD Levels" get:&stru_101635A50 set:&stru_101635A70];
  v51 = [v3 addSwitchRowWithTitle:@"Enable Sideloading ASTC texture from DevResources" get:&stru_101635A90 set:&stru_101635AB0];
  v52 = [v3 addSwitchRowWithTitle:@"Enable Sideloading Asset/Material from DevResources" get:&stru_101635AD0 set:&stru_101635AF0];
  v53 = [v3 addSwitchRowWithTitle:@"Enable Injected Assets from DevResources" get:&stru_101635B10 set:&stru_101635B30];
  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_100A93674;
  v63 = &unk_101633620;
  objc_copyWeak(&v64, (a1 + 32));
  LODWORD(v54) = 2.0;
  LODWORD(v55) = 20.0;
  v56 = [v3 addSliderRowWithTitle:@"Globe Spline Maximum Z" subtitleStringFormat:@"%2.1f " min:&stru_101635B50 max:&v60 get:v54 set:v55];
  v57 = [v3 addSwitchRowWithTitle:@"Enable Globe Scaling Correction" get:&stru_101635B70 set:{&stru_101635B90, v60, v61, v62, v63}];
  v58 = objc_loadWeakRetained((a1 + 32));
  v59 = [v58 addAllMapsSwitchRowToSection:v3 title:@"Show Stacking Venues" forVectorKitDebugKey:@"daVinciShowStackingVenues"];

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
}

void sub_100A8F8D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_100A8F900(uint64_t a1, void *a2)
{
  v67 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v67 title:@"Enable Globe Lighting" forVectorKitDebugKey:@"daVinciGlobeLighting"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 32) + 8) + 40) setVisible:{+[VKMapView _globeIsEnabled](VKMapView, "_globeIsEnabled")}];
  v7 = [v67 addSwitchRowWithTitle:@"Disable Shadows" get:&stru_101635C30 set:&stru_101635C50];
  LODWORD(v8) = 1.0;
  v9 = [v67 addSliderRowWithTitle:@"Shadow Intensity" subtitleStringFormat:@"Intensity:  %1.2f" min:&stru_101635C70 max:&stru_101635C90 get:0.0 set:v8];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 addAllMapsSwitchRowToSection:v67 title:@"Use PBR Shader" forVectorKitDebugKey:@"daVinciEnablePBR"];

  v12 = [v67 addSwitchRowWithTitle:@"Base Colors Only" get:&stru_101635CB0 set:&stru_101635CD0];
  v13 = [v67 addSwitchRowWithTitle:@"Lighting Only" get:&stru_101635CF0 set:&stru_101635D10];
  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 addAllMapsSwitchRowToSection:v67 title:@"Show Overexposure" forVectorKitDebugKey:@"daVinciLightingDebugShowOverexposure"];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 addAllMapsSwitchRowToSection:v67 title:@"Show Normals" forVectorKitDebugKey:@"daVinciLightingDebugShowNormals"];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 addAllMapsSwitchRowToSection:v67 title:@"Show Lighting Debug Sphere" forVectorKitDebugKey:@"daVinciLightingDebugShowLitSphere"];

  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 addAllMapsSwitchRowToSection:v67 title:@"Show UVs" forVectorKitDebugKey:@"daVinciRenderingDebugShowUVs"];

  v22 = objc_loadWeakRetained((a1 + 40));
  v23 = [v22 addAllMapsSwitchRowToSection:v67 title:@"Enable Ground Ambient Occlusion" forVectorKitDebugKey:@"daVinciGroundAmbientOcclusionEnabled"];

  v24 = objc_loadWeakRetained((a1 + 40));
  v25 = [v24 addAllMapsSwitchRowToSection:v67 title:@"Occlusion map only" forVectorKitDebugKey:@"daVinciSSAOOcclusionOnly"];

  v26 = [v67 addSwitchRowWithTitle:@"SSAO Override On" get:&stru_101635D30 set:&stru_101635D50];
  LODWORD(v27) = 5.0;
  LODWORD(v28) = 1008981770;
  v29 = [v67 addSliderRowWithTitle:@"SSAO Override Intensity" subtitleStringFormat:@"Overall Intensity Scale:  %1.2f" min:&stru_101635D70 max:&stru_101635D90 get:v28 set:v27];
  LODWORD(v30) = 5.0;
  LODWORD(v31) = 1008981770;
  v32 = [v67 addSliderRowWithTitle:@"SSAO Override Radius" subtitleStringFormat:@"Radius Scale:  %1.2f" min:&stru_101635DB0 max:&stru_101635DD0 get:v31 set:v30];
  LODWORD(v33) = 1.0;
  v34 = [v67 addSliderRowWithTitle:@"SSAO Max Intensity" subtitleStringFormat:@"Maximum Intensity:  %1.2f" min:&stru_101635DF0 max:&stru_101635E10 get:0.0 set:v33];
  LODWORD(v35) = 981668463;
  LODWORD(v36) = 1036831949;
  v37 = [v67 addSliderRowWithTitle:@"SSAO Max Distance" subtitleStringFormat:@"Maximum Distance:  %1.2f" min:&stru_101635E30 max:&stru_101635E50 get:v35 set:v36];
  LODWORD(v38) = 1140460749;
  LODWORD(v39) = 1.0;
  v40 = [v67 addSliderRowWithTitle:@"SSAO Falloff Scale" subtitleStringFormat:@"Falloff Scale:  %1.2f" min:&stru_101635E70 max:&stru_101635E90 get:v39 set:v38];
  v41 = [v67 addSwitchRowWithTitle:@"Show SSAO Demo Button" get:&stru_101635EB0 set:&stru_101635ED0];
  v42 = objc_loadWeakRetained((a1 + 40));
  v43 = [v42 addAllMapsSwitchRowToSection:v67 title:@"Enable SSAO High Sample Count" forVectorKitDebugKey:@"daVinciSSAOHighSampleCountEnabled"];

  v44 = objc_loadWeakRetained((a1 + 40));
  v45 = [v44 addAllMapsSwitchRowToSection:v67 title:@"Enable SSAO Blur" forVectorKitDebugKey:@"daVinciSSAOEnableBlur"];

  v46 = objc_loadWeakRetained((a1 + 40));
  v47 = [v46 addAllMapsSwitchRowToSection:v67 title:@"Enable SSAO Depth Aware Blur" forVectorKitDebugKey:@"daVinciSSAODepthAwareBlurEnabled"];

  v48 = [v67 addTextFieldRowWithTitle:@"SSAO Blur Size" placeholderText:@"1" inputType:1 get:&stru_101635EF0 set:&stru_101635F10];
  LODWORD(v49) = 10.0;
  LODWORD(v50) = 981668463;
  v51 = [v67 addSliderRowWithTitle:@"SSAO Depth Threshold" subtitleStringFormat:@"Depth Threshold:  %1.2f" min:&stru_101635F30 max:&stru_101635F50 get:v50 set:v49];
  LODWORD(v52) = 10.0;
  LODWORD(v53) = 1036831949;
  v54 = [v67 addSliderRowWithTitle:@"SSAO Blurriness" subtitleStringFormat:@"Blurriness:  %1.2f" min:&stru_101635F70 max:&stru_101635F90 get:v53 set:v52];
  LODWORD(v55) = 10.0;
  LODWORD(v56) = 1008981770;
  v57 = [v67 addSliderRowWithTitle:@"SSAO Depth Blurriness" subtitleStringFormat:@"Blurriness:  %1.2f" min:&stru_101635FB0 max:&stru_101635FD0 get:v56 set:v55];
  v58 = objc_loadWeakRetained((a1 + 40));
  v59 = [v58 addAllMapsSwitchRowToSection:v67 title:@"Enable SSAO Depth Aware Upsample" forVectorKitDebugKey:@"daVinciSSAODepthAwareUpsampleEnabled"];

  LODWORD(v60) = 1092721050;
  LODWORD(v61) = 981668463;
  v62 = [v67 addSliderRowWithTitle:@"SSAO Upsample Depth Threshold" subtitleStringFormat:@"Upsample Depth Threshold:  %1.2f" min:&stru_101635FF0 max:&stru_101636010 get:v61 set:v60];
  LODWORD(v63) = 1028443341;
  LODWORD(v64) = 2.0;
  v65 = [v67 addSliderRowWithTitle:@"Occlusion Texture Scale" subtitleStringFormat:@"Scale:  %1.3f" min:&stru_101636030 max:&stru_101636050 get:v63 set:v64];
  v66 = [v67 addButtonRowWithTitle:@"Reset SSAO values" action:&stru_101636070];
}

void sub_100A8FF70(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A92B00;
  v11[3] = &unk_101633C28;
  objc_copyWeak(&v12, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_1016360B8 get:&stru_1016360D8 set:v11];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Enable Aridity Ground Tinting" forVectorKitDebugKey:@"daVinciAridityGroundTintingEnabled"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v3 title:@"Enable Temperature Ground Tinting" forVectorKitDebugKey:@"daVinciTemperatureGroundTintingEnabled"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v3 title:@"Enable Material Rasters" forVectorKitDebugKey:@"daVinciMaterialRastersEnabled"];

  objc_destroyWeak(&v12);
}

void sub_100A900D0(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v13 title:@"Override Planar Mapping Parameters" forVectorKitDebugKey:@"daVinciPlanarOverride"];

  LODWORD(v5) = 1.0;
  v6 = [v13 addSliderRowWithTitle:@"Pixels Per Meter" subtitleStringFormat:@"%1.2f" min:&stru_1016360F8 max:&stru_101636118 get:v5 set:8589936700.0];
  LODWORD(v7) = 1036831949;
  LODWORD(v8) = 5.0;
  v9 = [v13 addSliderRowWithTitle:@"Tiling" subtitleStringFormat:@"%1.2f" min:&stru_101636138 max:&stru_101636158 get:v7 set:v8];
  LODWORD(v10) = -20.0;
  LODWORD(v11) = 20.0;
  v12 = [v13 addSliderRowWithTitle:@"Offset" subtitleStringFormat:@"%1.2f" min:&stru_101636178 max:&stru_101636198 get:v10 set:v11];
}

void sub_100A901EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Override Color Correction Parameters" forVectorKitDebugKey:@"daVinciColorCorrectionOverride"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 delegate];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v7 allVisibleMapViewsForDebugController:v8];
  v10 = [v9 firstObject];
  v11 = [v10 _mapLayer];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100A92680;
  v30[3] = &unk_101657398;
  v12 = v11;
  v31 = v12;
  LODWORD(v13) = 1.0;
  v14 = [v3 addSliderRowWithTitle:@"Saturation Range Min" subtitleStringFormat:@"%1.2f" min:&stru_1016361B8 max:v30 get:0.0 set:v13];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A926E0;
  v28[3] = &unk_101657398;
  v15 = v12;
  v29 = v15;
  LODWORD(v16) = 1.0;
  v17 = [v3 addSliderRowWithTitle:@"Saturation Range Max" subtitleStringFormat:@"%1.2f" min:&stru_1016361D8 max:v28 get:0.0 set:v16];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A92740;
  v26[3] = &unk_101657398;
  v18 = v15;
  v27 = v18;
  LODWORD(v19) = 1.0;
  v20 = [v3 addSliderRowWithTitle:@"Brightness Range Min" subtitleStringFormat:@"%1.2f" min:&stru_1016361F8 max:v26 get:0.0 set:v19];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A927A0;
  v24[3] = &unk_101657398;
  v25 = v18;
  v21 = v18;
  LODWORD(v22) = 1.0;
  v23 = [v3 addSliderRowWithTitle:@"Brightness Range Max" subtitleStringFormat:@"%1.2f" min:&stru_101636218 max:v24 get:0.0 set:v22];
}

void sub_100A904D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100A92208;
  v23[3] = &unk_101633620;
  objc_copyWeak(&v24, (a1 + 40));
  LODWORD(v4) = 1127474790;
  v5 = [v3 addSliderRowWithTitle:@"Min Z Angle" subtitleStringFormat:@"%3.1f degrees" min:&stru_101636238 max:v23 get:0.0 set:v4];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100A922E8;
  v21[3] = &unk_101658E28;
  v22 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A92330;
  v18[3] = &unk_101636260;
  v19 = *(a1 + 32);
  objc_copyWeak(&v20, (a1 + 40));
  v6 = [v3 addTextFieldRowWithTitle:@"Min Z" placeholderText:@"Z" inputType:1 get:v21 set:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A923FC;
  v16[3] = &unk_101633620;
  objc_copyWeak(&v17, (a1 + 40));
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1127474790;
  v9 = [v3 addSliderRowWithTitle:@"Max Z Angle" subtitleStringFormat:@"%3.1f degrees" min:&stru_101636280 max:v16 get:v7 set:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A924DC;
  v14[3] = &unk_101658E28;
  v15 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A92524;
  v11[3] = &unk_101636260;
  v12 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 40));
  v10 = [v3 addTextFieldRowWithTitle:@"Max Z" placeholderText:@"Z" inputType:1 get:v14 set:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v24);
}

void sub_100A907EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A90830(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Show Debugging" forVectorKitDebugKey:@"drawDaVinciElevationScalingDebug"];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Enable Elevation Scaling Override" forVectorKitDebugKey:@"daVinciOverrideElevationScaling"];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Scale Normals Only" forVectorKitDebugKey:@"daVinciElevationScalingNormalsOnly"];

  [v3 setFooter:@"These parameters provide a simple ramp to override the per-zoom level control available in groundSettings.json (in DevResources)"];
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1112014848;
  v12 = [v3 addSliderRowWithTitle:@"Min Z Factor" subtitleStringFormat:@"%3.1f" min:&stru_1016362A0 max:&stru_1016362C0 get:v10 set:v11];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A91FB0;
  v24[3] = &unk_101658E28;
  v25 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A91FF8;
  v22[3] = &unk_10165EF00;
  v23 = *(a1 + 32);
  v13 = [v3 addTextFieldRowWithTitle:@"Min Z" placeholderText:@"Z" inputType:1 get:v24 set:v22];
  LODWORD(v14) = 1.0;
  LODWORD(v15) = 1112014848;
  v16 = [v3 addSliderRowWithTitle:@"Max Z Factor" subtitleStringFormat:@"%3.1f" min:&stru_1016362E0 max:&stru_101636300 get:v14 set:v15];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A9203C;
  v20[3] = &unk_101658E28;
  v21 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A92084;
  v18[3] = &unk_10165EF00;
  v19 = *(a1 + 32);
  v17 = [v3 addTextFieldRowWithTitle:@"Max Z" placeholderText:@"Z" inputType:1 get:v20 set:v18];
}

void sub_100A90B24(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v17 title:@"Enable Pitch Flattening" forVectorKitDebugKey:@"daVinciPitchScaleEnabled"];

  [v17 setFooter:@"Flatten buildings and terrain between certain zooms when the user is looking straight down."];
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 20.0;
  v7 = [v17 addSliderRowWithTitle:@"Min Zoom" subtitleStringFormat:@"Zoom: %1.2f" min:&stru_101636320 max:&stru_101636340 get:v5 set:v6];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 20.0;
  v10 = [v17 addSliderRowWithTitle:@"Max Zoom" subtitleStringFormat:@"Zoom: %1.2f" min:&stru_101636360 max:&stru_101636380 get:v8 set:v9];
  LODWORD(v11) = 1008981770;
  LODWORD(v12) = 1.0;
  v13 = [v17 addSliderRowWithTitle:@"Max Zoom Height Fraction" subtitleStringFormat:@"Fraction: %1.2f" min:&stru_1016363A0 max:&stru_1016363C0 get:v11 set:v12];
  LODWORD(v14) = 1114636288;
  LODWORD(v15) = 1.0;
  v16 = [v17 addSliderRowWithTitle:@"Full Height Return Angle" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_1016363E0 max:&stru_101636400 get:v15 set:v14];
}

void sub_100A90C90(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100A91514;
  v14[3] = &unk_101639D38;
  objc_copyWeak(&v15, (a1 + 32));
  objc_copyWeak(&v16, (a1 + 40));
  v4 = [v3 addSwitchRowWithTitle:@"New Camera Controller" get:&stru_101636540 set:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A91604;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Force Mercator Zoom" get:&stru_101636560 set:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A916DC;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:@"Latitude Bias Tile Selection" get:&stru_101636580 set:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A917B4;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = [v3 addSwitchRowWithTitle:@"Constant Z Globe Tile Selection" get:&stru_1016365A0 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void sub_100A90EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A90F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100A912E4;
  v17[3] = &unk_1016619A8;
  objc_copyWeak(&v18, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Use CollisionMesh" get:&stru_1016365C0 set:v17];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100A913BC;
  v15 = &unk_1016619A8;
  objc_copyWeak(&v16, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Draw Collision Mesh" get:&stru_1016365E0 set:&v12];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Enable Fill Wireframe" forVectorKitDebugKey:{@"daVinciTintBandFillWireframeEnabled", v12, v13, v14, v15}];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Enable Stroke Wireframe" forVectorKitDebugKey:@"daVinciTintBandStrokeWireframeEnabled"];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Enable Stroke Distance Debug" forVectorKitDebugKey:@"daVinciTintBandStrokeDistanceDebugEnabled"];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
}

void sub_100A910D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A910F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(*(*(a1 + 32) + 8) + 40) setVisible:a4];
  [*(*(*(a1 + 40) + 8) + 40) setVisible:a4];
  [*(*(*(a1 + 48) + 8) + 40) setVisible:a4];
  [*(*(*(a1 + 56) + 8) + 40) setVisible:a4];
  [*(*(*(a1 + 64) + 8) + 40) setVisible:a4];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained rebuildSections];
}

void sub_100A911AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(*(*(a1 + 32) + 8) + 40) setVisible:a4];
  [*(*(*(a1 + 40) + 8) + 40) setVisible:a4];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained rebuildSections];
}

void sub_100A91224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(*(*(a1 + 32) + 8) + 40) setVisible:a4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rebuildSections];
}

void sub_100A91284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(*(*(a1 + 32) + 8) + 40) setVisible:a4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rebuildSections];
}

id sub_100A912E4(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciUseCollisionMesh:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];

  return +[MapsMapDisplayDebugController completelyFlushTiles];
}

id sub_100A913BC(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciDrawCollisionMesh:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];

  return +[MapsMapDisplayDebugController completelyFlushTiles];
}

BOOL sub_100A91494(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciDrawCollisionMesh];

  return v2;
}

BOOL sub_100A914D4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciUseCollisionMesh];

  return v2;
}

void sub_100A91514(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciCameraController:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v11 = [v9 _mapLayer];

  [v11 forceResolveCameraController];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 rebuildSections];
}

void sub_100A91604(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciCameraControllerForceMercatorZoom:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

id sub_100A916DC(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciBiasLatitudeGlobeTileSelection:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];

  return +[MapsMapDisplayDebugController completelyFlushTiles];
}

id sub_100A917B4(uint64_t a1, int a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDaVinciPitchedGlobeTileSelection:a2 ^ 1u];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];

  return +[MapsMapDisplayDebugController completelyFlushTiles];
}

BOOL sub_100A9188C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciPitchedGlobeTileSelection];

  return v2 ^ 1;
}

BOOL sub_100A918CC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciBiasLatitudeGlobeTileSelection];

  return v2;
}

BOOL sub_100A9190C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciCameraControllerForceMercatorZoom];

  return v2;
}

BOOL sub_100A9194C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciCameraController];

  return v2;
}

void sub_100A9198C(id a1, MapsDebugTableSection *a2)
{
  v11 = a2;
  LODWORD(v2) = 1203982336;
  LODWORD(v3) = 1217559552;
  v4 = [(MapsDebugTableSection *)v11 addSliderRowWithTitle:@"Atmosphere Height" subtitleStringFormat:@"%6.7f " min:&stru_101636440 max:&stru_101636460 get:v2 set:v3];
  LODWORD(v5) = 1.0;
  v6 = [(MapsDebugTableSection *)v11 addSliderRowWithTitle:@"Color Ramp Midpoint" subtitleStringFormat:@"%1.2f " min:&stru_101636480 max:&stru_1016364A0 get:0.0 set:v5];
  LODWORD(v7) = 10.0;
  v8 = [(MapsDebugTableSection *)v11 addSliderRowWithTitle:@"Horizon Glow Sharpness" subtitleStringFormat:@"%2.2f " min:&stru_1016364C0 max:&stru_1016364E0 get:0.0 set:v7];
  LODWORD(v9) = 2.0;
  v10 = [(MapsDebugTableSection *)v11 addSliderRowWithTitle:@"Horizon Glow Strength" subtitleStringFormat:@"%1.2f " min:&stru_101636500 max:&stru_101636520 get:0.0 set:v9];
}

void sub_100A91AB0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciHorizonGlowStrength:v3];
}

float sub_100A91B08(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciHorizonGlowStrength];
  v3 = v2;

  return v3;
}

void sub_100A91B50(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciHorizonGlowSharpness:v3];
}

float sub_100A91BA8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciHorizonGlowSharpness];
  v3 = v2;

  return v3;
}

void sub_100A91BF0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciAtmosphereColorMidpoint:v3];
}

float sub_100A91C48(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciAtmosphereColorMidpoint];
  v3 = v2;

  return v3;
}

void sub_100A91C90(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciAtmosphereMaxHeight:v3];
}

float sub_100A91CE8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciAtmosphereMaxHeight];
  v3 = v2;

  return v3;
}

void sub_100A91D30(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setBuildingPOIPitchScaleFullHeightAngle:v3];
}

float sub_100A91D88(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 buildingPOIPitchScaleFullHeightAngle];
  v3 = v2;

  return v3;
}

void sub_100A91DD0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setBuildingPOIPitchScaleMaxZoomFactor:v3];
}

float sub_100A91E28(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 buildingPOIPitchScaleMaxZoomFactor];
  v3 = v2;

  return v3;
}

void sub_100A91E70(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setBuildingPOIPitchScaleMaxZoom:v3];
}

float sub_100A91EC8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 buildingPOIPitchScaleMaxZoom];
  v3 = v2;

  return v3;
}

void sub_100A91F10(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setBuildingPOIPitchScaleMinZoom:v3];
}

float sub_100A91F68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 buildingPOIPitchScaleMinZoom];
  v3 = v2;

  return v3;
}

id sub_100A91FF8(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 32);

  return [v4 setDaVinciElevationScalingMinZ:v3];
}

id sub_100A92084(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 32);

  return [v4 setDaVinciElevationScalingMaxZ:v3];
}

void sub_100A920C8(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciElevationScalingMaxZFactor:v3];
}

float sub_100A92120(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciElevationScalingMaxZFactor];
  v3 = v2;

  return v3;
}

void sub_100A92168(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciElevationScalingMinZFactor:v3];
}

float sub_100A921C0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciElevationScalingMinZFactor];
  v3 = v2;

  return v3;
}

void sub_100A92208(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciSmoothEdgeMinZAngle:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 clearScene];
}

void sub_100A92330(uint64_t a1, void *a2)
{
  [*(a1 + 32) setDaVinciSmoothEdgeMinZ:{objc_msgSend(a2, "intValue")}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  [v7 clearScene];
}

void sub_100A923FC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciSmoothEdgeMaxZAngle:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 clearScene];
}

void sub_100A92524(uint64_t a1, void *a2)
{
  [*(a1 + 32) setDaVinciSmoothEdgeMaxZ:{objc_msgSend(a2, "intValue")}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  [v7 clearScene];
}

float sub_100A925F0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSmoothEdgeMaxZAngle];
  v3 = v2;

  return v3;
}

float sub_100A92638(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSmoothEdgeMinZAngle];
  v3 = v2;

  return v3;
}

id sub_100A92680(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciSaturationRangeMinOverride:v5];

  v6 = *(a1 + 32);

  return [v6 setNeedsLayout];
}

id sub_100A926E0(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciSaturationRangeMaxOverride:v5];

  v6 = *(a1 + 32);

  return [v6 setNeedsLayout];
}

id sub_100A92740(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciBrightnessRangeMinOverride:v5];

  v6 = *(a1 + 32);

  return [v6 setNeedsLayout];
}

id sub_100A927A0(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciBrightnessRangeMaxOverride:v5];

  v6 = *(a1 + 32);

  return [v6 setNeedsLayout];
}

float sub_100A92800(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciBrightnessRangeMaxOverride];
  v3 = v2;

  return v3;
}

float sub_100A92848(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciBrightnessRangeMinOverride];
  v3 = v2;

  return v3;
}

float sub_100A92890(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSaturationRangeMaxOverride];
  v3 = v2;

  return v3;
}

float sub_100A928D8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSaturationRangeMinOverride];
  v3 = v2;

  return v3;
}

void sub_100A92920(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciPlanarOffsetOverride:v3];
}

float sub_100A92978(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciPlanarOffsetOverride];
  v3 = v2;

  return v3;
}

void sub_100A929C0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciPlanarTilingOverride:v3];
}

float sub_100A92A18(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciPlanarTilingOverride];
  v3 = v2;

  return v3;
}

void sub_100A92A60(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciPlanarPixelPerMeterOverride:v3];
}

float sub_100A92AB8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciPlanarPixelPerMeterOverride];
  v3 = v2;

  return v3;
}

void sub_100A92B00(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  if (v3 == 1)
  {
    v4 = 153;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    v5 = 154;
  }

  else
  {
    v5 = v4;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];

  v7 = +[VKDebugSettings sharedSettingsExt];
  [v7 setDaVinciDebugRasterStyleAttribute:v5];
}

id sub_100A92B8C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciDebugRasterStyleAttribute];

  v3 = &off_1016E8390;
  if (v2 == 153)
  {
    v3 = &off_1016E83A8;
  }

  if (v2 == 154)
  {
    return &off_1016E83C0;
  }

  else
  {
    return v3;
  }
}

void sub_100A92BF0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"None" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Temperature" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Precipitation" value:&off_1016E83C0];
}

void sub_100A92C90(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciSSAOTextureScale:v3];
}

float sub_100A92CE8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSSAOTextureScale];
  v3 = v2;

  return v3;
}

void sub_100A92D30(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciSSAOUpsampleDepthThreshold:v3];
}

float sub_100A92D88(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSSAOUpsampleDepthThreshold];
  v3 = v2;

  return v3;
}

void sub_100A92DD0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciSSAODepthBlurriness:v3];
}

float sub_100A92E28(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSSAODepthBlurriness];
  v3 = v2;

  return v3;
}

void sub_100A92E70(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciSSAOBlurriness:v3];
}

float sub_100A92EC8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSSAOBlurriness];
  v3 = v2;

  return v3;
}

void sub_100A92F10(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciSSAODepthThreshold:v3];
}

float sub_100A92F68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciSSAODepthThreshold];
  v3 = v2;

  return v3;
}

void sub_100A92FB0(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 intValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDaVinciSSAOBlurSize:v2];
}

NSString *__cdecl sub_100A93010(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v1 daVinciSSAOBlurSize]);

  return v2;
}

void sub_100A930AC(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setSsaoFalloffScale:v3];
}

float sub_100A93104(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 ssaoFalloffScale];
  v3 = v2;

  return v3;
}

void sub_100A9314C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setSsaoMaxDistance:v3];
}

float sub_100A931A4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 ssaoMaxDistance];
  v3 = v2;

  return v3;
}

void sub_100A93228(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setSsaoOverrideRadius:v3];
}

float sub_100A93280(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 ssaoOverrideRadius];
  v3 = v2;

  return v3;
}

void sub_100A93370(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDaVinciShadowIntensity:v3];
}

float sub_100A933C8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciShadowIntensity];
  v3 = v2;

  return v3;
}

void sub_100A93470(id a1, id a2)
{
  v2 = [a2 integerValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setShadowMapResolution:v2];
}

id sub_100A934D0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 shadowMapResolution]);

  return v2;
}

void sub_100A93538(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"No override" value:0];
  v3 = [NSNumber numberWithInteger:1024];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"1k" value:v3];

  v5 = [NSNumber numberWithInteger:2048];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"2k" value:v5];
}

void sub_100A935FC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciMetaTileOpacity:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A93674(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDaVinciGlobeSplinedMaxZoom:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A936EC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDaVinciGlobeScalingCorrection:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A93770(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciGlobeScalingCorrection];

  return v2;
}

float sub_100A937B0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciGlobeSplinedMaxZoom];
  v3 = v2;

  return v3;
}

void sub_100A937F8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableInjectedAssets:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A9387C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableInjectedAssets];

  return v2;
}

void sub_100A938BC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDaVinciResourceOverrideEnabled:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A93940(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciResourceOverrideEnabled];

  return v2;
}

void sub_100A93980(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDaVinciASTCTextureSideLoadEnabled:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A93A04(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciASTCTextureSideLoadEnabled];

  return v2;
}

void sub_100A93A44(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDaVinciTintLODLevels:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A93AC8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 daVinciTintLODLevels];

  return v2;
}

float sub_100A93B08(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 daVinciMetaTileOpacity];
  v3 = v2;

  return v3;
}

void sub_100A93B50(uint64_t a1)
{
  v2 = MapsFeature_SetEnabled();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v4 allVisibleMapViewsForDebugController:v5];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 _mapLayer];
        [v12 setTerrainMode:v2];

        v13 = [v11 _mapLayer];
        [v13 setNeedsLayout];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 rebuildSections];
}

BOOL sub_100A93CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];

  v8 = [v7 terrainMode] == 1;
  return v8;
}

void sub_100A93D98(uint64_t a1, int a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 _mapLayer];
        v14 = v13;
        if (a2)
        {
          [v13 setTerrainMode:1];

          v15 = +[NSUserDefaults standardUserDefaults];
          [v15 setBool:1 forKey:@"__internal_MapsDebugEnableTerrainMetros"];
        }

        else
        {
          [v13 setTerrainMode:2];

          v15 = +[NSUserDefaults standardUserDefaults];
          [v15 removeObjectForKey:@"__internal_MapsDebugEnableTerrainMetros"];
        }

        v16 = [v12 _mapLayer];
        [v16 setNeedsLayout];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

void sub_100A93F70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Ignore places metadata" forVectorKitDebugKey:@"muninIgnorePlacesMetadata"];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Munin Debug Layer" forVectorKitDebugKey:@"muninDebugLayer"];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Graph Connections" forVectorKitDebugKey:@"muninGraphConnections"];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Transition info" forVectorKitDebugKey:@"muninShowRigTransitionInfo"];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"LOD info" forVectorKitDebugKey:@"muninShowLODInfo"];

  v14 = [v3 addSwitchRowWithTitle:@"Parallax override" get:&stru_1016355B0 set:&stru_1016355D0];
  LODWORD(v15) = -2.5;
  LODWORD(v16) = 2.5;
  v17 = [v3 addSliderRowWithTitle:@"Parallax backward offset" subtitleStringFormat:@"Distance: %1.2f" min:&stru_1016355F0 max:&stru_101635610 get:v15 set:v16];
  LODWORD(v18) = 10.0;
  LODWORD(v19) = 30.0;
  v20 = [v3 addSliderRowWithTitle:@"Parallax spring speed" subtitleStringFormat:@"Force: %1.2f" min:&stru_101635630 max:&stru_101635650 get:v18 set:v19];
  LODWORD(v21) = 0.25;
  LODWORD(v22) = 1.0;
  v23 = [v3 addSliderRowWithTitle:@"Parallax spring damper" subtitleStringFormat:@"Damping: %1.2f" min:&stru_101635670 max:&stru_101635690 get:v21 set:v22];
  LODWORD(v24) = 2.0;
  v25 = [v3 addSliderRowWithTitle:@"Parallax spring scale" subtitleStringFormat:@"Scale: %1.2f" min:&stru_1016356B0 max:&stru_1016356D0 get:0.0 set:v24];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100A95A5C;
  v58[3] = &unk_101651FD0;
  v59 = *(a1 + 32);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100A95A64;
  v56[3] = &unk_101661738;
  v57 = *(a1 + 32);
  v26 = [v3 addSwitchRowWithTitle:@"Slow motion transitions" get:v58 set:v56];
  LODWORD(v27) = 4.0;
  v28 = [v3 addSliderRowWithTitle:@"Min resolution (transition)" subtitleStringFormat:@"Scale: %1.2f" min:&stru_1016356F0 max:&stru_101635710 get:0.0 set:v27];
  LODWORD(v29) = 4.0;
  v30 = [v3 addSliderRowWithTitle:@"Max resolution (transition)" subtitleStringFormat:@"Scale: %1.2f" min:&stru_101635730 max:&stru_101635750 get:0.0 set:v29];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100A95A70;
  v54[3] = &unk_101658E28;
  v55 = *(a1 + 32);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100A95AB8;
  v52[3] = &unk_10165EF00;
  v53 = *(a1 + 32);
  v31 = [v3 addTextFieldRowWithTitle:@"Intermediate point step" placeholderText:@"1" inputType:1 get:v54 set:v52];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100A95AF8;
  v50[3] = &unk_101651FD0;
  v51 = *(a1 + 32);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100A95B00;
  v48[3] = &unk_101661738;
  v49 = *(a1 + 32);
  v32 = [v3 addSwitchRowWithTitle:@"LOD override" get:v50 set:v48];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100A95B0C;
  v46[3] = &unk_101658E28;
  v47 = *(a1 + 32);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100A95B54;
  v44[3] = &unk_10165EF00;
  v45 = *(a1 + 32);
  v33 = [v3 addTextFieldRowWithTitle:@"LOD override value" placeholderText:@"2" inputType:1 get:v46 set:v44];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100A95BC4;
  v42[3] = &unk_101651FD0;
  v43 = *(a1 + 32);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100A95BCC;
  v40[3] = &unk_101661738;
  v41 = *(a1 + 32);
  v34 = [v3 addSwitchRowWithTitle:@"Intermediate LOD override" get:v42 set:v40];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100A95BD8;
  v38[3] = &unk_101658E28;
  v39 = *(a1 + 32);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100A95C20;
  v36[3] = &unk_10165EF00;
  v37 = *(a1 + 32);
  v35 = [v3 addTextFieldRowWithTitle:@"Intermediate LOD override value" placeholderText:@"4" inputType:1 get:v38 set:v36];
}

void sub_100A94694(uint64_t a1, void *a2)
{
  v3 = a2;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100A955E8;
  v29[3] = &unk_101651FD0;
  v30 = *(a1 + 32);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100A955F0;
  v27 = &unk_101661738;
  v28 = *(a1 + 32);
  v4 = [v3 addSwitchRowWithTitle:@"FOV override" get:v29 set:&v24];
  LODWORD(v5) = 1112014848;
  LODWORD(v6) = 1124859904;
  v7 = [v3 addSliderRowWithTitle:@"Default FOV (portrait)" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_101635770 max:&stru_101635790 get:v5 set:v6, v24, v25, v26, v27];
  LODWORD(v8) = 1116471296;
  LODWORD(v9) = 1124859904;
  v10 = [v3 addSliderRowWithTitle:@"Max FOV (portrait)" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_1016357B0 max:&stru_1016357D0 get:v8 set:v9];
  LODWORD(v11) = 1112014848;
  LODWORD(v12) = 1124859904;
  v13 = [v3 addSliderRowWithTitle:@"Default FOV (landscape)" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_1016357F0 max:&stru_101635810 get:v11 set:v12];
  LODWORD(v14) = 1116471296;
  LODWORD(v15) = 1124859904;
  v16 = [v3 addSliderRowWithTitle:@"Max FOV (landscape)" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_101635830 max:&stru_101635850 get:v14 set:v15];
  LODWORD(v17) = 1.0;
  LODWORD(v18) = 30.0;
  v19 = [v3 addSliderRowWithTitle:@"Min FOV (all)" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_101635870 max:&stru_101635890 get:v17 set:v18];
  LODWORD(v20) = 1109393408;
  v21 = [v3 addSliderRowWithTitle:@"Min FOV rubber zoom" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_1016358B0 max:&stru_1016358D0 get:0.0 set:v20];
  LODWORD(v22) = 1109393408;
  v23 = [v3 addSliderRowWithTitle:@"Max FOV rubber zoom" subtitleStringFormat:@"Degrees: %1.2f" min:&stru_1016358F0 max:&stru_101635910 get:0.0 set:v22];
}

void sub_100A94934(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A94EDC;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Replay tap" action:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A9503C;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Copy last tap" action:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A95194;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, (a1 + 32));
  v6 = [v3 addButtonRowWithTitle:@"Paste tap" action:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100A94ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A94B28(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 addButtonRowWithTitle:@"Force Bump Next Tap" action:&stru_1016359B0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v8 title:@"Force All Bump" forVectorKitDebugKey:@"forceBumpAll"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 addAllMapsSwitchRowToSection:v8 title:@"Slow Motion Bump" forVectorKitDebugKey:@"slowMotionBump"];
}

void sub_100A94BE8(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v16 title:@"Enable RoadNetwork Minimap" forVectorKitDebugKey:@"enableMuninRoadNetworkMiniMap"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v16 title:@"Show Roadwidths on Minimap" forVectorKitDebugKey:@"enableMuninMiniMapRoadWidths"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v16 title:@"Color ComposedEdges on Minimap" forVectorKitDebugKey:@"enableMuninMiniMapComposedEdgeRoadColoring"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v16 title:@"Show Collection Points on Minimap" forVectorKitDebugKey:@"enableMuninMiniMapCollectionPoints"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v16 title:@"Show Road Z Data on Minimap" forVectorKitDebugKey:@"enableMuninMiniMapRoadZData"];

  LODWORD(v13) = 1120403456;
  LODWORD(v14) = 1148846080;
  v15 = [v16 addSliderRowWithTitle:@"RoadNetwork MiniMap Area (Meters)" subtitleStringFormat:@"Scale: %1.2f" min:&stru_1016359D0 max:&stru_1016359F0 get:v13 set:v14];
}

void sub_100A94D5C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninRoadNetworkMiniMapAreaInMeters:v3];
}

float sub_100A94DB4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninRoadNetworkMiniMapAreaInMeters];
  v3 = v2;

  return v3;
}

void sub_100A94DFC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 setForceBumpNextTap:1];
}

void sub_100A94E48(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Default" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Always" value:&off_1016E8318];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Never" value:&off_1016E8300];
}

void sub_100A94EDC(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:@"Replay Tap" message:@"Setup Munin view to replay tap. Enter Munin preferredStyle:tap once to move into position and then again to replay tap.", 1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A9546C;
  v6[3] = &unk_101658AF0;
  objc_copyWeak(&v7, (a1 + 32));
  v3 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v6];
  v4 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&stru_101635930];
  [v2 addAction:v3];
  [v2 addAction:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v2 animated:1 completion:0];

  objc_destroyWeak(&v7);
}

void sub_100A9503C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v2 = +[VKDebugSettings sharedSettingsExt];
  v3 = v2;
  if (v2)
  {
    [v2 muninTapState];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v4 = [[NSString alloc] initWithFormat:@"{tap_state: {x: %f, y: %f, latitude: %f, longitude: %f, yaw: %f, pitch: %f } }", *&v9, *(&v9 + 1), *(&v9 + 1), v10, *(&v10 + 2), *(&v10 + 3)];
  v5 = +[UIPasteboard generalPasteboard];
  [v5 setString:v4];

  v6 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Tap copied to clipboard" preferredStyle:1];
  v7 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101635950];
  [v6 addAction:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v6 animated:1 completion:0];
}

void sub_100A95194(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  v3 = [v2 string];

  if (!v3)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v4 = [v3 dataUsingEncoding:4];
  v37 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:1 error:&v37];
  v6 = v37;

  if (!v5)
  {
LABEL_14:
    v14 = @"Unable to parse tap state from clipboard.";
    goto LABEL_15;
  }

  v31 = a1;
  v7 = [v5 valueForKeyPath:@"tap_state.x"];
  v8 = [v5 valueForKeyPath:@"tap_state.y"];
  v9 = [v5 valueForKeyPath:@"tap_state.latitude"];
  v10 = [v5 valueForKeyPath:@"tap_state.longitude"];
  v11 = [v5 valueForKeyPath:@"tap_state.yaw"];
  v12 = [v5 valueForKeyPath:@"tap_state.pitch"];
  v13 = v12;
  v14 = @"Unable to parse tap state from clipboard.";
  if (v7)
  {
    if (v8)
    {
      if (v9)
      {
        if (v10)
        {
          if (v11)
          {
            if (v12)
            {
              [v7 floatValue];
              v16 = v15;
              [v8 floatValue];
              v18 = v17;
              [v9 doubleValue];
              v20 = v19;
              [v10 doubleValue];
              v22 = v21;
              [v11 floatValue];
              v24 = v23;
              [v13 floatValue];
              if (v20 != 0.0 && v22 != 0.0)
              {
                v26 = v25;
                v27 = +[VKDebugSettings sharedSettingsExt];
                v32[0] = v16;
                v32[1] = v18;
                v33 = v20;
                v34 = v22;
                v35 = v24;
                v36 = v26;
                [v27 setMuninTapState:v32];

                v14 = @"Tap pasted from clipboard. Use 'Replay tap' to play.";
              }
            }
          }
        }
      }
    }
  }

  a1 = v31;
LABEL_15:
  v28 = [UIAlertController alertControllerWithTitle:@"Alert" message:v14 preferredStyle:1];
  v29 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101635970];
  [v28 addAction:v29];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v28 animated:1 completion:0];
}

void sub_100A9546C(uint64_t a1)
{
  v2 = +[VKDebugSettings sharedSettingsExt];
  [v2 setMuninReplayLastTap:1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  v4 = +[VKDebugSettings sharedSettingsExt];
  v5 = v4;
  if (v4)
  {
    [v4 muninTapState];
  }

  v6 = +[VKDebugSettings sharedSettingsExt];
  v7 = v6;
  if (v6)
  {
    [v6 muninTapState];
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 delegate];
  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v9 allVisibleMapViewsForDebugController:v10];
  v12 = [v11 firstObject];

  [v12 frame];
  MKCoordinateRegionMakeWithZoomLevel();
  MKMapRectForCoordinateRegion();
  [v12 setVisibleMapRect:?];
}

void sub_100A955FC(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMaxFovSpring:v3];
}

float sub_100A95654(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maxFovSpring];
  v3 = v2;

  return v3;
}

void sub_100A9569C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMinFovSpring:v3];
}

float sub_100A956F4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 minFovSpring];
  v3 = v2;

  return v3;
}

void sub_100A9573C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMinFov:v3];
}

float sub_100A95794(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 minFov];
  v3 = v2;

  return v3;
}

void sub_100A957DC(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMaxFovLandscape:v3];
}

float sub_100A95834(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maxFovLandscape];
  v3 = v2;

  return v3;
}

void sub_100A9587C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDefaultFovLandscape:v3];
}

float sub_100A958D4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 defaultFovLandscape];
  v3 = v2;

  return v3;
}

void sub_100A9591C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMaxFovPortrait:v3];
}

float sub_100A95974(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 maxFovPortrait];
  v3 = v2;

  return v3;
}

void sub_100A959BC(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setDefaultFovPortrait:v3];
}

float sub_100A95A14(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 defaultFovPortrait];
  v3 = v2;

  return v3;
}

id sub_100A95AB8(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 32);

  return [v4 setMuninIntermediatePointStep:v3];
}

void sub_100A95B54(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 intValue] <= 7)
  {
    v3 = [v4 intValue];
  }

  else
  {
    v3 = 7;
  }

  [*(a1 + 32) setLodOverride:v3];
}

void sub_100A95C20(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 intValue] <= 7)
  {
    v3 = [v4 intValue];
  }

  else
  {
    v3 = 7;
  }

  [*(a1 + 32) setIntermediateLodOverride:v3];
}

void sub_100A95C90(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninTransitionMaxResolution:v3];
}

float sub_100A95CE8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninTransitionMaxResolution];
  v3 = v2;

  return v3;
}

void sub_100A95D30(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninTransitionMinResolution:v3];
}

float sub_100A95D88(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninTransitionMinResolution];
  v3 = v2;

  return v3;
}

void sub_100A95DD0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninParallaxScale:v3];
}

float sub_100A95E28(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninParallaxScale];
  v3 = v2;

  return v3;
}

void sub_100A95E70(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninParallaxDamper:v3];
}

float sub_100A95EC8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninParallaxDamper];
  v3 = v2;

  return v3;
}

void sub_100A95F10(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninParallaxSpring:v3];
}

float sub_100A95F68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninParallaxSpring];
  v3 = v2;

  return v3;
}

void sub_100A95FB0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setMuninCameraPanOffset:v3];
}

float sub_100A96008(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 muninCameraPanOffset];
  v3 = v2;

  return v3;
}

void sub_100A96050(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setMuninOverrideParallax:v2];
}

BOOL sub_100A960A8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 muninOverrideParallax];

  return v2;
}

void sub_100A960E8(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(v4) = 5.0;
  v5 = [v3 addSliderRowWithTitle:@"Animation Speed" subtitleStringFormat:@"delta time: %1.2f" min:&stru_101635310 max:&stru_101635330 get:0.0 set:v4];
  v6 = [v3 addSwitchRowWithTitle:@"Apply elevation correction" get:&stru_101635350 set:&stru_101635370];
  v7 = [v3 addEmptySectionBannerRowWithTitle:@"Interesting View"];
  v8 = [v3 addSwitchRowWithTitle:@"View Slows Tours" get:&stru_101635390 set:&stru_1016353B0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A96BE0;
  v22[3] = &unk_101633620;
  objc_copyWeak(&v23, (a1 + 32));
  LODWORD(v9) = 2.0;
  v10 = [v3 addSliderRowWithTitle:@"Slowdown Speed" subtitleStringFormat:@"interesting view slow tours by: %1.2fx" min:&stru_1016353D0 max:v22 get:0.0 set:v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A96C58;
  v20[3] = &unk_101633620;
  objc_copyWeak(&v21, (a1 + 32));
  LODWORD(v11) = 2.0;
  v12 = [v3 addSliderRowWithTitle:@"Recovery Speed" subtitleStringFormat:@"regular views recover speed by: %1.2fx" min:&stru_1016353F0 max:v20 get:0.0 set:v11];
  v13 = [v3 addEmptySectionBannerRowWithTitle:@"Preload"];
  v14 = [v3 addSwitchRowWithTitle:@"Preload Slows Tours" get:&stru_101635410 set:&stru_101635430];
  v15 = [v3 addSwitchRowWithTitle:@"Show Preload Position" get:&stru_101635450 set:&stru_101635470];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A96CD0;
  v18[3] = &unk_101633620;
  objc_copyWeak(&v19, (a1 + 32));
  LODWORD(v16) = 2.0;
  v17 = [v3 addSliderRowWithTitle:@"Preload Head Time" subtitleStringFormat:@"%1.2f seconds" min:&stru_101635490 max:v18 get:0.0 set:v16];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
}

void sub_100A963BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A963F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A96A60;
  v10[3] = &unk_101633620;
  objc_copyWeak(&v11, (a1 + 32));
  LODWORD(v4) = 2.0;
  v5 = [v3 addSliderRowWithTitle:@"Octile LOD constant" subtitleStringFormat:@"%1.3f" min:&stru_1016354B0 max:v10 get:0.0 set:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A96AD8;
  v8[3] = &unk_101633620;
  objc_copyWeak(&v9, (a1 + 32));
  LODWORD(v6) = 1120403456;
  v7 = [v3 addSliderRowWithTitle:@"Octile LOD max refinement distance" subtitleStringFormat:@"%1.3f" min:&stru_1016354D0 max:v8 get:0.0 set:v6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
}

void sub_100A9654C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A96570(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A96830;
  v13[3] = &unk_1016619A8;
  objc_copyWeak(&v14, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Force Skip Tile Rendering" get:&stru_1016354F0 set:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A968A8;
  v11[3] = &unk_101633620;
  objc_copyWeak(&v12, (a1 + 32));
  LODWORD(v5) = -1.0;
  LODWORD(v6) = 1.0;
  v7 = [v3 addSliderRowWithTitle:@"Grid NDC Bias" subtitleStringFormat:@"%1.2f" min:&stru_101635510 max:v11 get:v5 set:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A96920;
  v9[3] = &unk_1016619A8;
  objc_copyWeak(&v10, (a1 + 32));
  v8 = [v3 addSwitchRowWithTitle:@"Drape Grid" get:&stru_101635530 set:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void sub_100A96728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A96798(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setPaintFlyoverTiles:v2];
}

BOOL sub_100A967F0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 paintFlyoverTiles];

  return v2;
}

void sub_100A96830(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setFlyoverSkipTileRendering:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A968A8(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setFlyoverGridNDCBias:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A96920(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setFlyoverDrapeGrid:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

BOOL sub_100A96998(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 flyoverDrapeGrid];

  return v2;
}

float sub_100A969D8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 flyoverGridNDCBias];
  v3 = v2;

  return v3;
}

BOOL sub_100A96A20(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 flyoverSkipTileRendering];

  return v2;
}

void sub_100A96A60(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setFlyoverOctileLODConstant:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A96AD8(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setFlyoverOctileLODMaxRefineDistance:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

float sub_100A96B50(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 flyoverOctileLODMaxRefineDistance];
  v3 = v2;

  return v3;
}

float sub_100A96B98(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 flyoverOctileLODConstant];
  v3 = v2;

  return v3;
}

void sub_100A96BE0(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setToursInterestingViewSpeed:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A96C58(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setToursViewRecoverySpeed:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A96CD0(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setToursPreloadHeadTime:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

float sub_100A96D48(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 toursPreloadHeadTime];
  v3 = v2;

  return v3;
}

void sub_100A96D90(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setTourUsePreloadPosition:v2];
}

BOOL sub_100A96DE8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 tourUsePreloadPosition];

  return v2;
}

void sub_100A96E28(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setToursPreloadSlowsSpeed:v2];
}

BOOL sub_100A96E80(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 toursPreloadSlowsSpeed];

  return v2;
}

float sub_100A96EC0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 toursViewRecoverySpeed];
  v3 = v2;

  return v3;
}

float sub_100A96F08(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 toursInterestingViewSpeed];
  v3 = v2;

  return v3;
}

void sub_100A96F50(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setToursModulateSpeed:v2];
}

BOOL sub_100A96FA8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 toursModulateSpeed];

  return v2;
}

void sub_100A96FE8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setToursCorrectElevation:v2];
}

BOOL sub_100A97040(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 toursCorrectElevation];

  return v2;
}

void sub_100A97080(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setToursAnimationSpeed:v3];
}

float sub_100A970D8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 toursAnimationSpeed];
  v3 = v2;

  return v3;
}

void sub_100A9715C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setCorrectBumpiness:v2];
}

BOOL sub_100A971B4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 correctBumpiness];

  return v2;
}

void sub_100A97230(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setForceFlyoverUnificationMode:v2];
}

BOOL sub_100A97288(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 forceFlyoverUnificationMode];

  return v2;
}

void sub_100A972C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A97B44;
  v28[3] = &unk_101658F18;
  v10 = v9;
  v29 = v10;
  v11 = [v3 addNavigationRowWithTitle:@"Ambient Light Config" viewControllerContent:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A97BE0;
  v26[3] = &unk_101658F18;
  v12 = v10;
  v27 = v12;
  v13 = [v3 addNavigationRowWithTitle:@"Primary Light Config" viewControllerContent:v26];
  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Enable Ambient Light" forVectorKitDebugKey:@"lightingEnableAmbient"];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Enable Light Primary" forVectorKitDebugKey:@"lightingEnableLight1"];

  v18 = [v3 addEmptySectionBannerRowWithTitle:&stru_1016631F0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A97C7C;
  v24[3] = &unk_1016619A8;
  objc_copyWeak(&v25, (a1 + 32));
  v19 = [v3 addSwitchRowWithTitle:@"Accelerate Time" get:&stru_101635150 set:v24];
  v20 = [v3 addTextFieldRowWithTitle:@"Fixed Hour" placeholderText:@"(Blank for no fixed time)" inputType:0 get:&stru_101635170 set:&stru_101635190];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A97D60;
  v22[3] = &unk_1016619A8;
  objc_copyWeak(&v23, (a1 + 32));
  v21 = [v3 addSwitchRowWithTitle:@"Fixed Hour Local to Camera Target" get:&stru_1016351B0 set:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
}

void sub_100A975F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A97618(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Show Debug SPR At Scale Lighting" get:&stru_1016351D0 set:&stru_1016351F0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A977A8;
  v11[3] = &unk_1016619A8;
  objc_copyWeak(&v12, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Enable Sharpness Override" get:&stru_101635210 set:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A9788C;
  v9[3] = &unk_101633620;
  objc_copyWeak(&v10, (a1 + 32));
  LODWORD(v6) = 1036831949;
  LODWORD(v7) = 1.0;
  v8 = [v3 addSliderRowWithTitle:@"Override Sharpness Bias" subtitleStringFormat:@"%1.3f" min:&stru_101635230 max:v9 get:v6 set:v7];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100A97784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A977A8(uint64_t a1)
{
  GEOConfigSetBOOL();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  [v7 clearScene];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _setAllMapLayersNeedLayout];
}

void sub_100A9788C(uint64_t a1)
{
  GEOConfigSetDouble();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  [v7 clearScene];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _setAllMapLayersNeedLayout];
}

void sub_100A979A8(id a1, BOOL a2)
{
  v2 = a2;
  GEOConfigSetBOOL();
  GEOConfigSetBOOL();
  GEOConfigSetBOOL();
  if (v2)
  {
    GEOConfigSetDouble();
    GEOConfigSetDouble();
    GEOConfigSetDouble();
    GEOConfigSetDouble();
    GEOConfigSetDouble();
    GEOConfigSetDouble();
    GEOConfigSetDouble();

    GEOConfigSetDouble();
  }
}

BOOL sub_100A97AE8(id a1)
{
  BOOL = GEOConfigGetBOOL();
  v2 = GEOConfigGetBOOL();
  return v2 & BOOL & GEOConfigGetBOOL();
}

void sub_100A97B44(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A988DC;
  v4[3] = &unk_1016612C8;
  v5 = *(a1 + 32);
  v3 = [a2 addSectionWithTitle:@"Ambient light Config" content:v4];
}

void sub_100A97BE0(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A9833C;
  v4[3] = &unk_1016612C8;
  v5 = *(a1 + 32);
  v3 = [a2 addSectionWithTitle:@"Primary Light Config" content:v4];
}

void sub_100A97C7C(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  v5 = [NSNumber numberWithBool:a2];
  [v4 setValue:v5 forKey:@"lightingAccelerateTime"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [NSNumber numberWithBool:a2];
  [WeakRetained setValue:v7 forKeyInAllMapLayers:@"debugLayoutContinuously"];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _setAllMapLayersNeedLayout];
}

void sub_100A97D60(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  v5 = [NSNumber numberWithBool:a2];
  [v4 setValue:v5 forKey:@"lightingCameraLocalTime"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

BOOL sub_100A97E00(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 valueForKey:@"lightingCameraLocalTime"];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_100A97E60(id a1, NSString *a2)
{
  v27 = a2;
  if (![(NSString *)v27 length])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:0 forKey:@"__LightingStopTime"];
    goto LABEL_34;
  }

  v4 = [(NSString *)v27 componentsSeparatedByString:@":"];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 intValue];
    if ((v6 & 0x80000000) != 0 || ([v4 objectAtIndexedSubscript:0], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "intValue") <= 24))
    {
      v12 = [v4 objectAtIndexedSubscript:0];
      if (([v12 intValue] & 0x80000000) != 0)
      {
        v7 = 0;
      }

      else
      {
        v13 = [v4 objectAtIndexedSubscript:0];
        v7 = [v13 intValue];
      }

      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 24;
    }

LABEL_17:
    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 setBool:1 forKey:@"__LightingStopTime"];

    v15 = +[NSUserDefaults standardUserDefaults];
    [v15 setInteger:v7 forKey:@"__LightingStopTimeHour"];

    v16 = +[NSUserDefaults standardUserDefaults];
    v11 = v16;
    v17 = 0;
LABEL_32:
    [v16 setInteger:v17 forKey:@"__LightingStopTimeMinute"];
    goto LABEL_33;
  }

  if ([v4 count] >= 2)
  {
    v8 = [v4 objectAtIndexedSubscript:0];
    v9 = [v8 intValue];
    if ((v9 & 0x80000000) != 0 || ([v4 objectAtIndexedSubscript:0], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "intValue") <= 24))
    {
      v18 = [v4 objectAtIndexedSubscript:0];
      if (([v18 intValue] & 0x80000000) != 0)
      {
        v10 = 0;
      }

      else
      {
        v19 = [v4 objectAtIndexedSubscript:0];
        v10 = [v19 intValue];
      }

      if ((v9 & 0x80000000) != 0)
      {
LABEL_23:

        v20 = [v4 objectAtIndexedSubscript:1];
        v21 = [v20 intValue];
        if ((v21 & 0x80000000) != 0 || ([v4 objectAtIndexedSubscript:1], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "intValue") <= 60))
        {
          v23 = [v4 objectAtIndexedSubscript:1];
          if (([v23 intValue] & 0x80000000) != 0)
          {
            v22 = 0;
          }

          else
          {
            v24 = [v4 objectAtIndexedSubscript:1];
            v22 = [v24 intValue];
          }

          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v22 = 60;
        }

LABEL_31:
        v25 = +[NSUserDefaults standardUserDefaults];
        [v25 setBool:1 forKey:@"__LightingStopTime"];

        v26 = +[NSUserDefaults standardUserDefaults];
        [v26 setInteger:v10 forKey:@"__LightingStopTimeHour"];

        v16 = +[NSUserDefaults standardUserDefaults];
        v11 = v16;
        v17 = v22;
        goto LABEL_32;
      }
    }

    else
    {
      v10 = 24;
    }

    goto LABEL_23;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setBool:0 forKey:@"__LightingStopTime"];
LABEL_33:

LABEL_34:
}

NSString *__cdecl sub_100A981F8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  if ([v1 BOOLForKey:@"__LightingStopTime"])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 integerForKey:@"__LightingStopTimeHour"];
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u:%u", v3, [v4 integerForKey:@"__LightingStopTimeMinute"]);
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  return v5;
}

BOOL sub_100A982DC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 valueForKey:@"lightingAccelerateTime"];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_100A9833C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Override Color" get:&stru_101635030 set:&stru_101635050];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A98658;
  v24[3] = &unk_101657398;
  v25 = *(a1 + 32);
  LODWORD(v5) = 1132396544;
  v6 = [v3 addSliderRowWithTitle:@"Red" subtitleStringFormat:@"Red Component:  %1.2f" min:&stru_101635070 max:v24 get:0.0 set:v5];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A986A4;
  v22[3] = &unk_101657398;
  v23 = *(a1 + 32);
  LODWORD(v7) = 1132396544;
  v8 = [v3 addSliderRowWithTitle:@"Green" subtitleStringFormat:@"Green Component:  %1.2f" min:&stru_101635090 max:v22 get:0.0 set:v7];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A986F0;
  v20[3] = &unk_101657398;
  v21 = *(a1 + 32);
  LODWORD(v9) = 1132396544;
  v10 = [v3 addSliderRowWithTitle:@"Blue" subtitleStringFormat:@"Blue Component:  %1.2f" min:&stru_1016350B0 max:v20 get:0.0 set:v9];
  v11 = [v3 addSwitchRowWithTitle:@"Override Direction" get:&stru_1016350D0 set:&stru_1016350F0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A9873C;
  v18[3] = &unk_101657398;
  v19 = *(a1 + 32);
  LODWORD(v12) = 1135869952;
  v13 = [v3 addSliderRowWithTitle:@"Azimuth" subtitleStringFormat:@"Azimuth Degrees:  %1.2f" min:&stru_101635110 max:v18 get:0.0 set:v12];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A98784;
  v16[3] = &unk_101657398;
  v17 = *(a1 + 32);
  LODWORD(v14) = 1135869952;
  v15 = [v3 addSliderRowWithTitle:@"Altitude" subtitleStringFormat:@"Altitude Degrees:  %1.2f" min:&stru_101635130 max:v16 get:0.0 set:v14];
}

id sub_100A98658(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A986A4(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A986F0(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A9873C(uint64_t a1)
{
  GEOConfigSetDouble();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A98784(uint64_t a1)
{
  GEOConfigSetDouble();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_100A988DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Override" get:&stru_101634F90 set:&stru_101634FB0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100A98AD0;
  v15[3] = &unk_101657398;
  v16 = *(a1 + 32);
  LODWORD(v5) = 1132396544;
  v6 = [v3 addSliderRowWithTitle:@"Red" subtitleStringFormat:@"Red Component:  %1.2f" min:&stru_101634FD0 max:v15 get:0.0 set:v5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A98B1C;
  v13[3] = &unk_101657398;
  v14 = *(a1 + 32);
  LODWORD(v7) = 1132396544;
  v8 = [v3 addSliderRowWithTitle:@"Green" subtitleStringFormat:@"Green Component:  %1.2f" min:&stru_101634FF0 max:v13 get:0.0 set:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A98B68;
  v11[3] = &unk_101657398;
  v12 = *(a1 + 32);
  LODWORD(v9) = 1132396544;
  v10 = [v3 addSliderRowWithTitle:@"Blue" subtitleStringFormat:@"Blue Component:  %1.2f" min:&stru_101635010 max:v11 get:0.0 set:v9];
}

id sub_100A98AD0(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A98B1C(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_100A98B68(uint64_t a1)
{
  GEOConfigSetInteger();
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_100A98C50(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v18 title:@"Debug Console" forVectorKitDebugKey:@"enableARDebugConsole"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v18 title:@"Render At Native Rate" forVectorKitDebugKey:@"arRenderAtNativeRate"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v18 title:@"Omni Tile Loader" forVectorKitDebugKey:@"enableAROmniTileLoader"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v18 title:@"Enable Overrides" forVectorKitDebugKey:@"arOverrideDefaults"];

  v11 = +[VKDebugSettings sharedSettingsExt];
  v12 = [v11 valueForKey:@"arOverrideDefaults"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    LODWORD(v14) = -3.0;
    v15 = [v18 addSliderRowWithTitle:@"Virtual Plane Height" subtitleStringFormat:@"%1.2f meters" min:&stru_101634F10 max:&stru_101634F30 get:v14 set:0.0];
    LODWORD(v16) = 1140457472;
    v17 = [v18 addSliderRowWithTitle:@"Default Altitude" subtitleStringFormat:@"%1.2f meters" min:&stru_101634F50 max:&stru_101634F70 get:0.0 set:v16];
  }
}

void sub_100A98E0C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDefaultHeight:v3];
}

float sub_100A98E64(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDefaultHeight];
  v3 = v2;

  return v3;
}

void sub_100A98EAC(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArVirtualPlaneHeight:v3];
}

float sub_100A98F04(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arVirtualPlaneHeight];
  v3 = v2;

  return v3;
}

void sub_100A98F4C(uint64_t a1, void *a2)
{
  v33 = a2;
  v32 = +[GEOAltitudeManifest sharedManager];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];

  obj = [v32 availableRegions];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v30 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v30)
  {
    v29 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v29)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v31 = v7;
        v9 = *(*(&v45 + 1) + 8 * v7);
        v10 = [v32 nameForRegion:{objc_msgSend(v9, "unsignedIntValue")}];
        if (v10)
        {
          v11 = [v32 tourIdsForRegion:{objc_msgSend(v9, "unsignedIntValue")}];
          v12 = [v32 tripIdsForRegion:{objc_msgSend(v9, "unsignedIntValue")}];
          if ([v11 count])
          {
            v13 = 0;
            v14 = 1;
            do
            {
              v15 = [v11 objectAtIndexedSubscript:v13];
              v16 = [v12 objectAtIndexedSubscript:v13];
              v17 = [NSString stringWithFormat:@"%@ (region: %@) [%@]", v10, v9, v16];
              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v42[2] = sub_100A99408;
              v42[3] = &unk_101661A90;
              v43 = v6;
              v44 = v15;
              v18 = v15;
              v19 = [v33 addButtonRowWithTitle:v17 action:v42];

              v13 = v14++;
            }

            while ([v11 count] > v13);
          }
        }

        v7 = v31 + 1;
      }

      while ((v31 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v30);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100A9944C;
  v38[3] = &unk_101661480;
  v20 = obj;
  v39 = v20;
  v21 = v32;
  v40 = v21;
  objc_copyWeak(&v41, (a1 + 32));
  v22 = [v33 addButtonRowWithTitle:@"Run all tours" action:v38];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100A99630;
  v36[3] = &unk_101661B18;
  v23 = v6;
  v37 = v23;
  v24 = [v33 addButtonRowWithTitle:@"Pause Tour" action:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100A99638;
  v34[3] = &unk_101661B18;
  v25 = v23;
  v35 = v25;
  v26 = [v33 addButtonRowWithTitle:@"Resume Tour" action:v34];

  objc_destroyWeak(&v41);
}

id sub_100A99408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) unsignedLongLongValue];

  return [v1 _startFlyoverTourAnimation:v2 duration:0 completion:0.0];
}

void sub_100A9944C(id *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [a1[5] nameForRegion:{objc_msgSend(v8, "unsignedIntValue", v15)}];
        if (v9)
        {
          v10 = [a1[5] tourIdsForRegion:{objc_msgSend(v8, "unsignedIntValue")}];
          [v2 addObjectsFromArray:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = objc_alloc_init(NSMutableArray);
  while ([v2 count])
  {
    v12 = arc4random_uniform([v2 count]);
    v13 = [v2 objectAtIndexedSubscript:v12];
    [v11 addObject:v13];

    [v2 removeObjectAtIndex:v12];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained runNextTourIndex:0 withTours:v11];
}

void sub_100A99640(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateMapInspector:v5];

  v4 = [v5 addSwitchRowWithTitle:@"Set Map Inspector to Activate on Launch" get:&stru_101634ED0 set:&stru_101634EF0];
}

void sub_100A996C4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"ActivateMapInspectorOnLaunch"];
}

BOOL sub_100A99724(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"ActivateMapInspectorOnLaunch"];

  return v2;
}

void sub_100A9976C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Pause Loading" forVectorKitDebugKey:@"altitudePauseLoading"];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Freeze View Node" forVectorKitDebugKey:@"altitudeFreezeViewNode"];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Enable JPEG texture paging" forVectorKitDebugKey:@"altitudeTexturePaging"];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Show Tile Bounds" forVectorKitDebugKey:@"altitudeShowTileBounds"];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Mipmap Satellite Textures" forVectorKitDebugKey:@"altitudeMipmapSatellite"];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Mipmap Flyover Textures" forVectorKitDebugKey:@"altitudeMipmapFlyover"];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Mipmap ObjectTree Textures" forVectorKitDebugKey:@"altitudeMipmapObjectTree"];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 addAllMapsSwitchRowToSection:v3 title:@"Show Night Light" forVectorKitDebugKey:@"altitudeShowNightLight"];

  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 addAllMapsSwitchRowToSection:v3 title:@"Print Rendered Tile Stats" forVectorKitDebugKey:@"altitudePrintRenderedTilesStat"];

  v22 = objc_loadWeakRetained((a1 + 40));
  v23 = [v22 addAllMapsSwitchRowToSection:v3 title:@"Disable C3M texture loading" forVectorKitDebugKey:@"altitudeDisableC3mTextureLoading"];

  v24 = objc_loadWeakRetained((a1 + 40));
  v25 = [v24 addAllMapsSwitchRowToSection:v3 title:@"Show trigger bounds" forVectorKitDebugKey:@"altitudeShowTriggerBounds"];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100A99EDC;
  v58[3] = &unk_101634C70;
  v59 = *(a1 + 32);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100A99EE4;
  v56[3] = &unk_101657398;
  v57 = *(a1 + 32);
  LODWORD(v26) = 1036831949;
  LODWORD(v27) = 3.0;
  v28 = [v3 addSliderRowWithTitle:@"LOD Scale" subtitleStringFormat:@"scale:  %1.1f" min:v58 max:v56 get:v26 set:v27];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100A99EEC;
  v54[3] = &unk_101634C70;
  v55 = *(a1 + 32);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100A99EF4;
  v52[3] = &unk_101657398;
  v53 = *(a1 + 32);
  LODWORD(v29) = 1.0;
  v30 = [v3 addSliderRowWithTitle:@"Tile quality threshold" subtitleStringFormat:@"scale:  %1.1f" min:v54 max:v52 get:0.0 set:v29];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100A99EFC;
  v50[3] = &unk_101634C70;
  v51 = *(a1 + 32);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100A99F04;
  v48[3] = &unk_101657398;
  v49 = *(a1 + 32);
  LODWORD(v31) = 2.0;
  v32 = [v3 addSliderRowWithTitle:@"Hide mesh time" subtitleStringFormat:@"time:  %1.1f" min:v50 max:v48 get:0.0 set:v31];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100A99F0C;
  v46[3] = &unk_101634C70;
  v47 = *(a1 + 32);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100A99F14;
  v44[3] = &unk_101657398;
  v45 = *(a1 + 32);
  LODWORD(v33) = 20.0;
  v34 = [v3 addSliderRowWithTitle:@"Fade speed" subtitleStringFormat:@"time:  %1.1f" min:v46 max:v44 get:0.0 set:v33];
  v35 = objc_loadWeakRetained((a1 + 40));
  v36 = [v35 addAllMapsSwitchRowToSection:v3 title:@"Enable tour speedup" forVectorKitDebugKey:@"altitudeTourSpeedup"];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100A99F1C;
  v42[3] = &unk_101634C70;
  v43 = *(a1 + 32);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100A99F24;
  v40[3] = &unk_101657398;
  v41 = *(a1 + 32);
  LODWORD(v37) = -5.0;
  LODWORD(v38) = 10.0;
  v39 = [v3 addSliderRowWithTitle:@"Flyover tour speedup" subtitleStringFormat:@"factor:  %1.1f" min:v42 max:v40 get:v37 set:v38];
}

void sub_100A99DD4(id a1, MapsDebugTableSection *a2)
{
  v2 = GeoServicesConfig_HybridUnavailableSimulationType[0];
  v3 = GeoServicesConfig_HybridUnavailableSimulationType[1];
  v5 = a2;
  v4 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupForConfigKey:v2 content:v3, &stru_101634EB0];
  [(MapsDebugTableSection *)v5 setFooter:@"Restart Maps after changing this setting."];
}

void sub_100A99E4C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"N/A" value:0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Unavailable in China" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Unavailable outside of China" value:&off_1016E83C0];
}

void sub_100A99F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A9A0D4;
  v11[3] = &unk_1016619A8;
  objc_copyWeak(&v12, (a1 + 40));
  v4 = [v3 addSwitchRowWithTitle:@"Disable Compressed Buildings" get:&stru_101634E70 set:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A9A26C;
  v9[3] = &unk_101634C70;
  v10 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A9A274;
  v7[3] = &unk_101657398;
  v8 = *(a1 + 32);
  LODWORD(v5) = 3.0;
  v6 = [v3 addSliderRowWithTitle:@"Building Rounding Radius" subtitleStringFormat:@"%1.1f" min:v9 max:v7 get:0.0 set:v5];

  objc_destroyWeak(&v12);
}

void sub_100A9A0D4(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setCompressedBuildingsDisabled:a2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) _mapLayer];
        [v13 setCompressedBuildingsEnabled:a2 ^ 1];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

void sub_100A9A274(uint64_t a1)
{
  [*(a1 + 32) setDaVinciBuildingRoundingRadius:?];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100A9A2D4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 compressedBuildingsDisabled];

  return v2;
}

void sub_100A9A314(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v10 title:@"Load Fast Traffic" forVectorKitDebugKey:@"loadGreenTraffic"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v10 title:@"Show Traffic Offset" forVectorKitDebugKey:@"showTrafficOffset"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v10 title:@"Static Feed" forVectorKitDebugKey:@"useStaticTrafficFeed"];

  v9 = [v10 addSwitchRowWithTitle:@"Show Traffic Casing" get:&stru_101634E30 set:&stru_101634E50];
}

void sub_100A9A410(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:VKShouldFlushTileCachesNotification object:0];

  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setShowTrafficCasing:v2];
}

BOOL sub_100A9A494(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 showTrafficCasing];

  return v2;
}

void sub_100A9A4D4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v7 title:@"Enable 3D Puck" forVectorKitDebugKey:@"enable3DPuck"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v7 title:@"Snap Puck to Routeline" forVectorKitDebugKey:@"enablePuckRouteLineSnapping"];
}

void sub_100A9A578(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Disable Route Line Matching" forVectorKitDebugKey:@"dontMatchRouteLine"];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Highlight Route Line Snapping Status" forVectorKitDebugKey:@"highlightRouteLineSnappingStatus"];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Disable Route Snapping Verification" forVectorKitDebugKey:@"dontVerifyRouteToTransitSnapping"];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Show Maneuver Points" forVectorKitDebugKey:@"showManeuverPoints"];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A9B4C4;
  v26[3] = &unk_101633620;
  objc_copyWeak(&v27, (a1 + 40));
  LODWORD(v12) = 3.0;
  LODWORD(v13) = 18.0;
  LODWORD(v14) = 12.0;
  v15 = [v3 addSliderRowWithTitle:@"Route Arrow Min Zoom" subtitleStringFormat:@"zoom: %1.1f" min:@"RouteArrowMinZoom" max:v26 defaultsKey:v12 sliderValueIfUnset:v13 changeHandler:v14];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A9B504;
  v24[3] = &unk_101634C70;
  v25 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A9B524;
  v22[3] = &unk_101657398;
  v23 = *(a1 + 32);
  LODWORD(v16) = 3.0;
  v17 = [v3 addSliderRowWithTitle:@"Additional Continuous Multi-Section Overlap" subtitleStringFormat:@"scale:  %1.1f" min:v24 max:v22 get:0.0 set:v16];
  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 addAllMapsSwitchRowToSection:v3 title:@"Disable Continuous Mulit-Section Routes" forVectorKitDebugKey:@"disableContinuousMultiSectionRoutes"];

  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 addAllMapsSwitchRowToSection:v3 title:@"Highlight Underground Route Geometry" forVectorKitDebugKey:@"highlightUndergroundRouteGeometry"];

  objc_destroyWeak(&v27);
}

void sub_100A9A854(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Show Routeline Animation" forVectorKitDebugKey:@"showRoutelineAnimation"];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Enable DaVinci Style Route" forVectorKitDebugKey:@"enableDaVinciStyleRoute"];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Enable Dynamic Route Width" forVectorKitDebugKey:@"enableDynamicRouteWidth"];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Show Route Static Width" forVectorKitDebugKey:@"showStaticRouteWidth"];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100A9B484;
  v34[3] = &unk_101634C70;
  v35 = *(a1 + 32);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100A9B48C;
  v32[3] = &unk_101657398;
  v33 = *(a1 + 32);
  LODWORD(v12) = 1128792064;
  v13 = [v3 addSliderRowWithTitle:@"DaVinci Route Traffic Transition Distance (in meters)" subtitleStringFormat:@"scale:  %1.1f" min:v34 max:v32 get:0.0 set:v12];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100A9B494;
  v30[3] = &unk_101634C70;
  v31 = *(a1 + 32);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A9B49C;
  v28[3] = &unk_101657398;
  v29 = *(a1 + 32);
  LODWORD(v14) = 10.0;
  v15 = [v3 addSliderRowWithTitle:@"DaVinci Route Width Start Transition Distance (in meters)" subtitleStringFormat:@"scale:  %1.1f" min:v30 max:v28 get:0.0 set:v14];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A9B4A4;
  v26[3] = &unk_101634C70;
  v27 = *(a1 + 32);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A9B4AC;
  v24[3] = &unk_101657398;
  v25 = *(a1 + 32);
  LODWORD(v16) = 10.0;
  v17 = [v3 addSliderRowWithTitle:@"DaVinci Route Width End Transition Distance (in meters)" subtitleStringFormat:@"scale:  %1.1f" min:v26 max:v24 get:0.0 set:v16];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100A9B4B4;
  v22[3] = &unk_101634C70;
  v23 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100A9B4BC;
  v20[3] = &unk_101657398;
  v21 = *(a1 + 32);
  LODWORD(v18) = 5.0;
  v19 = [v3 addSliderRowWithTitle:@"DaVinci Route Windshield Animation Time (in seconds)" subtitleStringFormat:@"second:  %1.1f" min:v22 max:v20 get:0.0 set:v18];
}

void sub_100A9ACB0(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v15 title:@"Enable Debugging" forVectorKitDebugKey:@"enableEtaLabelDebugging"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v15 title:@"Enable Searched Label Rects" forVectorKitDebugKey:@"enableEtaLabelRectDebugging"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v15 title:@"Enable Share Section Debugging" forVectorKitDebugKey:@"enableRouteShareSectionDebugging"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v15 title:@"Enable Route Intersection Testing" forVectorKitDebugKey:@"enableRouteIntersectionTesting"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v15 title:@"avoid Screen Edges" forVectorKitDebugKey:@"etaLabelsAvoidScreenEdges"];

  v13 = [v15 addButtonRowWithTitle:@"force placement" action:&stru_101634CB0];
  v14 = [v15 addButtonRowWithTitle:@"trace debug log" action:&stru_101634CD0];
}

void sub_100A9AE5C(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Up Left" get:&stru_101634D30 set:&stru_101634D50];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Up Right" get:&stru_101634D70 set:&stru_101634D90];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Down Left" get:&stru_101634DB0 set:&stru_101634DD0];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Down Right" get:&stru_101634DF0 set:&stru_101634E10];
}

void sub_100A9AF30(id a1, BOOL a2)
{
  v2 = a2;
  v6 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v6 etaLabelDebugOrientationMask] & 0xFFFFFFF7;
  if (v2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setEtaLabelDebugOrientationMask:v3 | v4];
}

BOOL sub_100A9AFB8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = ([v1 etaLabelDebugOrientationMask] >> 3) & 1;

  return v2;
}

void sub_100A9AFF8(id a1, BOOL a2)
{
  v2 = a2;
  v6 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v6 etaLabelDebugOrientationMask] & 0xFFFFFFFB;
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setEtaLabelDebugOrientationMask:v3 | v4];
}

BOOL sub_100A9B080(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = ([v1 etaLabelDebugOrientationMask] >> 2) & 1;

  return v2;
}

void sub_100A9B0C0(id a1, BOOL a2)
{
  v2 = a2;
  v6 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v6 etaLabelDebugOrientationMask] & 0xFFFFFFFD;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setEtaLabelDebugOrientationMask:v3 | v4];
}

BOOL sub_100A9B148(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = ([v1 etaLabelDebugOrientationMask] >> 1) & 1;

  return v2;
}

void sub_100A9B188(id a1, BOOL a2)
{
  v2 = a2;
  v5 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v5 etaLabelDebugOrientationMask] & 0xFFFFFFFE;
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setEtaLabelDebugOrientationMask:v3 | v2];
}

BOOL sub_100A9B204(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 etaLabelDebugOrientationMask];

  return v2 & 1;
}

void sub_100A9B244(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v9 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"None" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Other Label Overlap" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Route Overlap" value:&off_1016E8318];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Other Route Nearest Distance" value:&off_1016E8330];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Artistic Balancing" value:&off_1016E8348];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Clipped Area" value:&off_1016E8510];
  v8 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Avoidance Area Overlap" value:&off_1016E8360];
}

void sub_100A9B358(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 setTraceEtaDebugLog:1];
}

void sub_100A9B3A4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 setForceEtaLabelPlacement:1];
}

void sub_100A9B3F0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Hidden" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Continuous Multi-Section" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Elevation" value:&off_1016E8318];
}

void sub_100A9B4C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A9B56C(id a1, id a2)
{
  v2 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v2 integerValue];

  [v4 setNavDisplayRate:v3];
}

id sub_100A9B5E0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 navDisplayRate]);

  return v2;
}

void sub_100A9B648(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Default" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Native" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"30 fps" value:&off_1016E8318];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"60 fps" value:&off_1016E8330];
}

void sub_100A9B6FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Show debug labeling state" forVectorKitDebugKey:@"arLabelingStateOverlay"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Show debug miniMap" forVectorKitDebugKey:@"arDebugMiniMap"];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100A9E824;
  v15[3] = &unk_1016619A8;
  objc_copyWeak(&v16, (a1 + 32));
  v8 = [v3 addSwitchRowWithTitle:@"Force Occluded Styling (delayed)" get:&stru_1016342A8 set:v15];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v3 title:@"Force labels view oriented" forVectorKitDebugKey:@"arForceLabelsViewOriented"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v3 title:@"Always show one Continue" forVectorKitDebugKey:@"arAlwaysShowOneContinueLabel"];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 addAllMapsSwitchRowToSection:v3 title:@"Enable Environment Map (requires AR session restart)" forVectorKitDebugKey:@"arEnableEnvironmentMap"];

  objc_destroyWeak(&v16);
}

void sub_100A9B8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A9E56C;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A9E63C;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_1016342C8 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100A9B9C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A9B9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100A9E258;
  v17[3] = &unk_101653F10;
  objc_copyWeak(&v18, (a1 + 32));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100A9E328;
  v15[3] = &unk_10165D828;
  objc_copyWeak(&v16, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_1016342E8 get:v17 set:v15];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A9E47C;
  v13[3] = &unk_101661B18;
  v11 = v10;
  v14 = v11;
  v12 = [v3 addButtonRowWithTitle:@"Toggle AR (Debug)" action:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
}

void sub_100A9BBDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A9BBFC(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v15 title:@"Enable AR Camera Feed" forVectorKitDebugKey:@"arEnableCameraFeed"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v15 title:@"Enable routeline debug meshes" forVectorKitDebugKey:@"arEnableRouteLineDebugMeshes"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v15 title:@"Lock in localizing" forVectorKitDebugKey:@"arDebugLockLocalizingState"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v15 title:@"Show Mesh Feature Bounds" forVectorKitDebugKey:@"arDebugDrawMeshFeatureBounds"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v15 title:@"Show Label Feature Bounds" forVectorKitDebugKey:@"arDebugDrawLabelFeatureBounds"];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 addAllMapsSwitchRowToSection:v15 title:@"Enable Arrival Animation" forVectorKitDebugKey:@"arIsArrivalAnimationEnabled"];
}

void sub_100A9BD60(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v7 title:@"Show AR avoidance objects" forVectorKitDebugKey:@"arRenderAvoidanceObjects"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v7 title:@"Show AR avoidance intersection" forVectorKitDebugKey:@"arRenderAvoidanceObjectsIntersection"];
}

void sub_100A9BE04(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v8 title:@"Debug Overlay" forVectorKitDebugKey:@"enableARCameraDebugOverlay"];

  LODWORD(v5) = -1035468800;
  LODWORD(v6) = 1112014848;
  v7 = [v8 addSliderRowWithTitle:@"Camera View Elevation Offset" subtitleStringFormat:@"%1.2f meters" min:&stru_101634508 max:&stru_101634528 get:v5 set:v6];
}

void sub_100A9BEB8(id a1, MapsDebugTableSection *a2)
{
  v13 = a2;
  LODWORD(v2) = 1112014848;
  LODWORD(v3) = 1140457472;
  v4 = [(MapsDebugTableSection *)v13 addSliderRowWithTitle:@"Map Rect Size" subtitleStringFormat:@"%1.1f meters" min:&stru_101634AE8 max:&stru_101634B08 get:v2 set:v3];
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1036831949;
  v7 = [(MapsDebugTableSection *)v13 addSliderRowWithTitle:@"Screen Rect Size" subtitleStringFormat:@"%0.2f percent" min:&stru_101634B28 max:&stru_101634B48 get:v6 set:v5];
  LODWORD(v8) = 1063675494;
  v9 = [(MapsDebugTableSection *)v13 addSliderRowWithTitle:@"Screen Rect xOffset" subtitleStringFormat:@"%0.2f percent" min:&stru_101634B68 max:&stru_101634B88 get:0.0 set:v8];
  LODWORD(v10) = 1036831949;
  LODWORD(v11) = 1063675494;
  v12 = [(MapsDebugTableSection *)v13 addSliderRowWithTitle:@"Screen Rect yOffset" subtitleStringFormat:@"%0.2f percent" min:&stru_101634BA8 max:&stru_101634BC8 get:v10 set:v11];
}

void sub_100A9BFF0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugMiniMapScreenRectYOffset:v3];
}

float sub_100A9C048(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugMiniMapScreenRectYOffset];
  v3 = v2;

  return v3;
}

void sub_100A9C090(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugMiniMapScreenRectXOffset:v3];
}

float sub_100A9C0E8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugMiniMapScreenRectXOffset];
  v3 = v2;

  return v3;
}

void sub_100A9C130(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugMiniMapScreenRectSize:v3];
}

float sub_100A9C188(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugMiniMapScreenRectSize];
  v3 = v2;

  return v3;
}

void sub_100A9C1D0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugMiniMapMapRectSize:v3];
}

float sub_100A9C228(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugMiniMapMapRectSize];
  v3 = v2;

  return v3;
}

void sub_100A9C270(id a1, MapsDebugTableSection *a2)
{
  v15 = a2;
  v2 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Jump] - Offset" placeholderText:@"2" inputType:3 get:&stru_101634788 set:&stru_1016347A8];
  v3 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Jump] - Duration" placeholderText:@"1.25" inputType:3 get:&stru_1016347C8 set:&stru_1016347E8];
  v4 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Jump] - Start" placeholderText:@"0" inputType:3 get:&stru_101634808 set:&stru_101634828];
  v5 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Fall] - Offset" placeholderText:@"0" inputType:3 get:&stru_101634848 set:&stru_101634868];
  v6 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Fall] - Duration" placeholderText:@"1" inputType:3 get:&stru_101634888 set:&stru_1016348A8];
  v7 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Fall] - Start" placeholderText:@"1.25" inputType:3 get:&stru_1016348C8 set:&stru_1016348E8];
  v8 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Rotate] - Offset" placeholderText:@"2" inputType:3 get:&stru_101634908 set:&stru_101634928];
  v9 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Rotate] - Duration" placeholderText:@"2" inputType:3 get:&stru_101634948 set:&stru_101634968];
  v10 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Rotate] - Start" placeholderText:@"0.15" inputType:3 get:&stru_101634988 set:&stru_1016349A8];
  v11 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Pulse] - Offset" placeholderText:@"0.8" inputType:3 get:&stru_1016349C8 set:&stru_1016349E8];
  v12 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Pulse] - Duration" placeholderText:@"0.5" inputType:3 get:&stru_101634A08 set:&stru_101634A28];
  v13 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Pulse] - Start" placeholderText:@"2" inputType:3 get:&stru_101634A48 set:&stru_101634A68];
  v14 = [(MapsDebugTableSection *)v15 addTextFieldRowWithTitle:@"[Pulse] - Repeats" placeholderText:@"4" inputType:3 get:&stru_101634A88 set:&stru_101634AA8];
}

void sub_100A9C550(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArPulseNumberOfRepeats:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arPulseNumberOfRepeats];
  [v7 setFloat:@"VKARAnimationPOIPulseRepeats" forKey:?];
}

NSString *__cdecl sub_100A9C5F8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arPulseNumberOfRepeats];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9C674(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArPulseStart:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arPulseStart];
  [v7 setFloat:@"VKARAnimationPOIPulseStart" forKey:?];
}

NSString *__cdecl sub_100A9C71C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arPulseStart];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9C798(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArPulseDuration:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arPulseDuration];
  [v7 setFloat:@"VKARAnimationPOIPulseDuration" forKey:?];
}

NSString *__cdecl sub_100A9C840(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arPulseDuration];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9C8BC(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArPulseOffset:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arPulseOffset];
  [v7 setFloat:@"VKARAnimationPOIPulseOffset" forKey:?];
}

NSString *__cdecl sub_100A9C964(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arPulseOffset];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9C9E0(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArRotateStart:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arRotateStart];
  [v7 setFloat:@"VKARAnimationPOIRotateStart" forKey:?];
}

NSString *__cdecl sub_100A9CA88(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arRotateStart];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9CB04(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArRotateDuration:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arRotateDuration];
  [v7 setFloat:@"VKARAnimationPOIRotateDuration" forKey:?];
}

NSString *__cdecl sub_100A9CBAC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arRotateDuration];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9CC28(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArRotateOffset:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arRotateOffset];
  [v7 setFloat:@"VKARAnimationPOIRotateOffset" forKey:?];
}

NSString *__cdecl sub_100A9CCD0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arRotateOffset];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9CD4C(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArFallStart:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arFallStart];
  [v7 setFloat:@"VKARAnimationPOIFallStart" forKey:?];
}

NSString *__cdecl sub_100A9CDF4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arFallStart];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9CE70(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArFallDuration:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arFallDuration];
  [v7 setFloat:@"VKARAnimationPOIFallDuration" forKey:?];
}

NSString *__cdecl sub_100A9CF18(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arFallDuration];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9CF94(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArFallOffset:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arFallOffset];
  [v7 setFloat:@"VKARAnimationPOIFallOffset" forKey:?];
}

NSString *__cdecl sub_100A9D03C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arFallOffset];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9D0B8(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArJumpStart:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arJumpStart];
  [v7 setFloat:@"VKARAnimationPOIJumpStart" forKey:?];
}

NSString *__cdecl sub_100A9D160(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arJumpStart];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9D1DC(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArJumpDuration:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arJumpDuration];
  [v7 setFloat:@"VKARAnimationPOIJumpDuration" forKey:?];
}

NSString *__cdecl sub_100A9D284(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arJumpDuration];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9D300(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = v3;
  [v4 setArJumpOffset:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 arJumpOffset];
  [v7 setFloat:@"VKARAnimationPOIJumpOffset" forKey:?];
}

NSString *__cdecl sub_100A9D3A8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arJumpOffset];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9D424(id a1, MapsDebugTableSection *a2)
{
  v19 = a2;
  LODWORD(v2) = 1125515264;
  v3 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"Min Clip Distance" subtitleStringFormat:@"%1.2f meters" min:&stru_101634568 max:&stru_101634588 get:0.0 set:v2];
  LODWORD(v4) = 1125515264;
  v5 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"Max Clip Distance" subtitleStringFormat:@"%1.2f meters" min:&stru_1016345A8 max:&stru_1016345C8 get:0.0 set:v4];
  LODWORD(v6) = 25.0;
  v7 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"Feature Elevation Offset" subtitleStringFormat:@"%1.1f meters" min:&stru_1016345E8 max:&stru_101634608 get:0.0 set:v6];
  v8 = [(MapsDebugTableSection *)v19 addTextFieldRowWithTitle:@"Feature Elevation Offset" placeholderText:@"meters" inputType:3 get:&stru_101634628 set:&stru_101634648];
  LODWORD(v9) = 1036831949;
  LODWORD(v10) = 8.0;
  v11 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"Base Scaling Factor" subtitleStringFormat:@"%1.2f" min:&stru_101634668 max:&stru_101634688 get:v9 set:v10];
  LODWORD(v12) = 0.5;
  LODWORD(v13) = 4.0;
  v14 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"POI Scale" subtitleStringFormat:@"%1.2f" min:&stru_1016346A8 max:&stru_1016346C8 get:v12 set:v13];
  LODWORD(v15) = 1.0;
  v16 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"POI Env Intensity" subtitleStringFormat:@"%1.2f" min:&stru_1016346E8 max:&stru_101634708 get:0.0 set:v15];
  LODWORD(v17) = 1.0;
  v18 = [(MapsDebugTableSection *)v19 addSliderRowWithTitle:@"POI Light Intensity" subtitleStringFormat:@"%1.2f" min:&stru_101634728 max:&stru_101634748 get:0.0 set:v17];
}

void sub_100A9D628(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugStylingPOILightIntensity:v3];
}

float sub_100A9D680(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugStylingPOILightIntensity];
  v3 = v2;

  return v3;
}

void sub_100A9D6C8(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugStylingPOIEnvMapIntensity:v3];
}

float sub_100A9D720(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugStylingPOIEnvMapIntensity];
  v3 = v2;

  return v3;
}

void sub_100A9D768(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugStylingPOIIconScaleFactor:v3];
}

float sub_100A9D7C0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugStylingPOIIconScaleFactor];
  v3 = v2;

  return v3;
}

void sub_100A9D808(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugStylingBaseScalingFactor:v3];
}

float sub_100A9D860(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugStylingBaseScalingFactor];
  v3 = v2;

  return v3;
}

void sub_100A9D8A8(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v5 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v4) = v3;
  [v5 setArManeuverDebugElevationOffset:v4];
}

NSString *__cdecl sub_100A9D908(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arManeuverDebugElevationOffset];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9D984(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArManeuverDebugElevationOffset:v3];
}

float sub_100A9D9DC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arManeuverDebugElevationOffset];
  v3 = v2;

  return v3;
}

void sub_100A9DA9C(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArCameraElevationOffset:v3];
}

float sub_100A9DAF4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arCameraElevationOffset];
  v3 = v2;

  return v3;
}

void sub_100A9DB3C(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addCheckmarkRowsGroupWithContent:&stru_1016343A8 get:&stru_1016343C8 set:&stru_1016343E8];
  LODWORD(v3) = 1135869952;
  v4 = [(MapsDebugTableSection *)v8 addSliderRowWithTitle:@"Feature Heading" subtitleStringFormat:@"%1.0f degrees" min:&stru_101634408 max:&stru_101634428 get:0.0 set:v3];
  v5 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Feature Distance" placeholderText:@"meters" inputType:3 get:&stru_101634448 set:&stru_101634468];
  v6 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"Feature Text" placeholderText:@"meters" inputType:0 get:&stru_101634488 set:&stru_1016344A8];
  v7 = [(MapsDebugTableSection *)v8 addTextFieldRowWithTitle:@"poi-type" placeholderText:@"209" inputType:1 get:&stru_1016344C8 set:&stru_1016344E8];
}

void sub_100A9DC78(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 integerValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setArDebugScenePoiType:v2];
}

NSString *__cdecl sub_100A9DCD8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v1 arDebugScenePoiType]);

  return v2;
}

void sub_100A9DD50(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setArDebugSceneFeatureText:v2];
}

NSString *__cdecl sub_100A9DDB4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 arDebugSceneFeatureText];

  return v2;
}

void sub_100A9DE08(id a1, NSString *a2)
{
  [(NSString *)a2 floatValue];
  v3 = v2;
  v5 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v4) = v3;
  [v5 setArDebugSceneFeatureDistance:v4];
}

NSString *__cdecl sub_100A9DE68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugSceneFeatureDistance];
  v3 = [NSString stringWithFormat:@"%f", v2];

  return v3;
}

void sub_100A9DEE4(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setArDebugSceneFeatureHeading:v3];
}

float sub_100A9DF3C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 arDebugSceneFeatureHeading];
  v3 = v2;

  return v3;
}

void sub_100A9DF84(id a1, id a2)
{
  v2 = [a2 unsignedIntegerValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setArDebugSceneFeatureType:v2];
}

id sub_100A9DFE4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v1 arDebugSceneFeatureType]);

  return v2;
}

void sub_100A9E04C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v4 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Maneuver" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v4 addRowWithTitle:@"Arrival" value:&off_1016E83A8];
}

void sub_100A9E0FC(id a1, id a2)
{
  v2 = [a2 unsignedIntegerValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setArDebugSceneForcedLayoutType:v2];
}

id sub_100A9E15C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v1 arDebugSceneForcedLayoutType]);

  return v2;
}

void sub_100A9E1C4(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"FaceAligned" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"FacePerpendicular" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"None" value:&off_1016E83C0];
}

id sub_100A9E258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];

  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 arMode]);

  return v8;
}

void sub_100A9E328(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) _mapLayer];
        [v12 setARMode:v3];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

id sub_100A9E47C(uint64_t a1)
{
  v2 = [*(a1 + 32) mapType];
  if (v2 == 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = 9;
  }

  v4 = 4 * (v2 != 9);
  [*(a1 + 32) setMapType:v3];
  v5 = *(a1 + 32);

  return [v5 setDesiredMapMode:v4];
}

void sub_100A9E4D8(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"GeoTracking" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"DebugRouteLocked" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"DebugVIO" value:&off_1016E83C0];
}

id sub_100A9E56C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];

  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 arSceneType]);

  return v8;
}

void sub_100A9E63C(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) _mapLayer];
        [v12 setARSceneType:v3];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

void sub_100A9E790(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"AppProvided" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"DebugRoute" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"DebugCustom" value:&off_1016E83C0];
}

void sub_100A9E824(uint64_t a1, char a2)
{
  v4 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A9E91C;
  v5[3] = &unk_101661368;
  v7 = a2;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_after(v4, &_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
}

BOOL sub_100A9E8DC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 arForceOccludedStyling];

  return v2;
}

void sub_100A9E91C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setArForceOccludedStyling:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100A9E994(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v17 title:@"Transit Highlighting" forVectorKitDebugKey:@"transitHighlighting"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v17 title:@"Show Transit Counts" forVectorKitDebugKey:@"paintTransitCounts"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v17 title:@"Disable Transit Line Drawing" forVectorKitDebugKey:@"disableTransitLineDrawing"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v17 title:@"Disable Transit Line Merging" forVectorKitDebugKey:@"disableTransitLineMerging"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v17 title:@"  Disable Transit Line Group Merging" forVectorKitDebugKey:@"disableTransitLineGroupMerging"];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 addAllMapsSwitchRowToSection:v17 title:@"Dump Transit Tile Contents" forVectorKitDebugKey:@"dumpTransitTileContents"];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 addAllMapsSwitchRowToSection:v17 title:@"Disable Intra-Link Line Crossings" forVectorKitDebugKey:@"disableIntraLinkTransitLineCrossings"];
}

void sub_100A9EB28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MIController sharedController];
  v5 = [v4 isActive];

  if (v5)
  {
    [v3 setFooter:@"Label Highlighting is being controlled by MapInspector. Please use an external tool to control this value or disable MapInspector (MapDisplay -> MapInspector -> Activate Map Inspector)"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Label Highlighting" forVectorKitDebugKey:@"labelHighlighting"];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Lock Highlighting" forVectorKitDebugKey:@"lockLabelHighlighting"];

    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Show Client Style Attrs" forVectorKitDebugKey:@"showClientStyleAttributes"];

    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Show Flex Zones" forVectorKitDebugKey:@"showFlexZoneRanges"];

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Show Label Counts" forVectorKitDebugKey:@"paintLabelCounts"];

    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Show GRL Debug Info" forVectorKitDebugKey:@"showGRLDebugInfo"];

    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 addAllMapsSwitchRowToSection:v3 title:@"Disable Overlay Text Console" forVectorKitDebugKey:@"disableOverlayTextConsole"];

    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 addAllMapsSwitchRowToSection:v3 title:@"Highlight Transit Features Only" forVectorKitDebugKey:@"labelHighlightingTransitFeaturesOnly"];

    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 addAllMapsSwitchRowToSection:v3 title:@"Verbose Logging" forVectorKitDebugKey:@"labelHighlightingVerboseLoggingEnabled"];

    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 addAllMapsSwitchRowToSection:v3 title:@"Paint Road Features" forVectorKitDebugKey:@"paintLabelRoadFeatures"];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100AA1A50;
    v39[3] = &unk_101658E28;
    v40 = *(a1 + 32);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100AA1A98;
    v37[3] = &unk_10165EF00;
    v38 = *(a1 + 32);
    v26 = [v3 addTextFieldRowWithTitle:@"Selected Labeler Output" placeholderText:@"Index" inputType:1 get:v39 set:v37];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100AA1AD8;
    v35[3] = &unk_101658E28;
    v36 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100AA1B20;
    v33[3] = &unk_10165EF00;
    v34 = *(a1 + 32);
    v27 = [v3 addTextFieldRowWithTitle:@"Overlay Horizontal Offset" placeholderText:@"Offset" inputType:1 get:v35 set:v33];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100AA1B60;
    v31[3] = &unk_101658E28;
    v32 = *(a1 + 32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100AA1BA8;
    v29[3] = &unk_10165EF00;
    v30 = *(a1 + 32);
    v28 = [v3 addTextFieldRowWithTitle:@"Overlay Vertical Offset" placeholderText:@"Offset" inputType:1 get:v31 set:v29];
  }
}

void sub_100A9EFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Disable Occlusion" forVectorKitDebugKey:@"labelOcclusionDisabled"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Disable Facing Cull" forVectorKitDebugKey:@"labelFacingCullDisabled"];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Disable Deduping" forVectorKitDebugKey:@"labelDedupingDisabled"];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Disable Collision" forVectorKitDebugKey:@"labelCollisionDisabled"];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Collide Continuously" forVectorKitDebugKey:@"labelCollideContinuously"];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 addAllMapsSwitchRowToSection:v3 title:@"Paint Collision Lines" forVectorKitDebugKey:@"paintLabelCollisionLines"];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 addAllMapsSwitchRowToSection:v3 title:@"Transit-Line Collision" forVectorKitDebugKey:@"labelTransitLineCollisionEnabled"];

  v18 = objc_loadWeakRetained((a1 + 32));
  v39 = [v18 addAllMapsSwitchRowToSection:v3 title:@"Flip Alternate Positions" forVectorKitDebugKey:@"labelFlipAlternatePositionsEnable"];

  [v39 setSubtitle:@"Needs Cache Flush"];
  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 addAllMapsSwitchRowToSection:v3 title:@"Label-Tile Decode" forVectorKitDebugKey:@"labelTileDecodeEnabled"];

  [v20 setSubtitle:@"Needs Cache Flush"];
  v21 = objc_loadWeakRetained((a1 + 32));
  v22 = [v21 addAllMapsSwitchRowToSection:v3 title:@"Allow Default Style" forVectorKitDebugKey:@"labelAllowDefaultStyle"];

  [v22 setSubtitle:@"Needs Cache Flush"];
  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = [v23 addAllMapsSwitchRowToSection:v3 title:@"Use Default Style" forVectorKitDebugKey:@"labelUseDefaultStyle"];

  [v24 setSubtitle:@"Needs Cache Flush"];
  v25 = objc_loadWeakRetained((a1 + 32));
  v26 = [v25 addAllMapsSwitchRowToSection:v3 title:@"Allow Default Icon" forVectorKitDebugKey:@"labelAllowDefaultIcon"];

  [v26 setSubtitle:@"Needs Cache Flush"];
  v27 = objc_loadWeakRetained((a1 + 32));
  v28 = [v27 addAllMapsSwitchRowToSection:v3 title:@"Update MapTiles During Continuous Layout" forVectorKitDebugKey:@"labelUpdateMapTilesContinuously"];

  v29 = objc_loadWeakRetained((a1 + 32));
  v30 = [v29 addAllMapsSwitchRowToSection:v3 title:@"Background Layout Disabled" forVectorKitDebugKey:@"disableBackgroundLabelLayout"];

  v31 = objc_loadWeakRetained((a1 + 32));
  v32 = [v31 addAllMapsSwitchRowToSection:v3 title:@"Auto Road Text Offsetting" forVectorKitDebugKey:@"labelAutoOffsetRoadText"];

  v33 = objc_loadWeakRetained((a1 + 32));
  v34 = [v33 addAllMapsSwitchRowToSection:v3 title:@"Disable Client Style Overrides" forVectorKitDebugKey:@"labelStyleOverridesDisabled"];

  [v34 setSubtitle:@"Needs Maps Restart"];
  v35 = objc_loadWeakRetained((a1 + 32));
  v36 = [v35 addAllMapsSwitchRowToSection:v3 title:@"Debug Hover Layers" forVectorKitDebugKey:@"labelDebugHoverLayers"];

  v37 = objc_loadWeakRetained((a1 + 32));
  v38 = [v37 addAllMapsSwitchRowToSection:v3 title:@"Disable POI Updates" forVectorKitDebugKey:@"labelPOIUpdatesDisabled"];

  [v38 setSubtitle:@"Needs Cache Flush"];
}

void sub_100A9F418(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Hide Line Features" forVectorKitDebugKey:@"labelHideLineFeatures"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Hide Point Features" forVectorKitDebugKey:@"labelHidePointFeatures"];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 addAllMapsSwitchRowToSection:v3 title:@"Hide Physical Features" forVectorKitDebugKey:@"labelHidePhysicalFeatures"];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 addAllMapsSwitchRowToSection:v3 title:@"Hide Directional Arrows" forVectorKitDebugKey:@"hideDirectionalArrows"];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 addAllMapsSwitchRowToSection:v3 title:@"Allow Textless POIs" forVectorKitDebugKey:@"textlessPOIsEnabled"];

  [v13 setSubtitle:@"Needs cache flush"];
  LODWORD(v14) = 14.0;
  LODWORD(v15) = 25.0;
  v16 = [v3 addSliderRowWithTitle:@"Textless POIs Min Zoom (Flush cache after changing)" subtitleStringFormat:@"Min Zoom: %1.2f" min:&stru_101633D08 max:&stru_101633D28 get:v14 set:v15];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100AA1238;
  v35[3] = &unk_1016619A8;
  objc_copyWeak(v36, (a1 + 32));
  v17 = [v3 addSwitchRowWithTitle:@"Enable SDF Glyphs" get:&stru_101633D48 set:v35];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100AA1310;
  v33[3] = &unk_1016619A8;
  objc_copyWeak(&v34, (a1 + 32));
  v18 = [v3 addSwitchRowWithTitle:@"Enable SDF Glyph Super Sampling" get:&stru_101633D68 set:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100AA13E8;
  v31[3] = &unk_1016619A8;
  objc_copyWeak(&v32, (a1 + 32));
  v19 = [v3 addSwitchRowWithTitle:@"Override SDF Glyph Super Sample Kernel Size" get:&stru_101633D88 set:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100AA14C0;
  v29[3] = &unk_1016619A8;
  objc_copyWeak(&v30, (a1 + 32));
  v20 = [v3 addSwitchRowWithTitle:@"Override SDF Glyph Upscaling" get:&stru_101633DA8 set:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100AA1598;
  v27[3] = &unk_101633620;
  objc_copyWeak(&v28, (a1 + 32));
  LODWORD(v21) = 1.0;
  LODWORD(v22) = 8.0;
  v23 = [v3 addSliderRowWithTitle:@"SDF Glyph Shader Upscale Factor" subtitleStringFormat:@"%1.2f" min:&stru_101633DC8 max:v27 get:v21 set:v22];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100AA16A8;
  v25[3] = &unk_1016619A8;
  objc_copyWeak(&v26, (a1 + 32));
  v24 = [v3 addSwitchRowWithTitle:@"Enable RTEVChargerInfo" get:&stru_101633DE8 set:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(v36);
}

void sub_100A9F860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100A9F8C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Disable Texture Atlas for Icons" forVectorKitDebugKey:@"disableIconTextureAtlas"];

  [v5 setSubtitle:@"Needs Maps Restart"];
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 addAllMapsSwitchRowToSection:v3 title:@"Texture Atlas Debug Display" forVectorKitDebugKey:@"displayTextureAtlas"];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100AA0A00;
  v16[3] = &unk_101658E28;
  v17 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AA0A48;
  v14[3] = &unk_10165EF00;
  v15 = *(a1 + 32);
  v8 = [v3 addTextFieldRowWithTitle:@"Selected Atlas" placeholderText:@"Index" inputType:1 get:v16 set:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100AA0A88;
  v12[3] = &unk_101658E28;
  v13 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100AA0AD0;
  v10[3] = &unk_10165EF00;
  v11 = *(a1 + 32);
  v9 = [v3 addTextFieldRowWithTitle:@"Displayed Page Index" placeholderText:@"Index" inputType:1 get:v12 set:v10];
}

void sub_100A9FB14(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v6 title:@"Enable Ring Animation" forVectorKitDebugKey:@"labelRingAnimationEnabled"];

  v5 = [v6 addNavigationRowWithTitle:@"Label Animation Tuning" viewControllerContent:&stru_101634088];
}

void sub_100A9FBA8(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Settings" content:&stru_1016340A8];
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Element" content:&stru_101634148];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100A9FE64;
  v21[3] = &unk_10165A0D0;
  v22 = &stru_1016341E8;
  v5 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Hide - Alpha" content:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100A9FEE8;
  v19[3] = &unk_10165A0D0;
  v20 = &stru_1016341E8;
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Hide - Scale" content:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100A9FF6C;
  v17[3] = &unk_10165A0D0;
  v18 = &stru_1016341E8;
  v7 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Hide - Translate" content:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100A9FFF0;
  v15[3] = &unk_10165A0D0;
  v16 = &stru_1016341E8;
  v8 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Show - Alpha" content:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AA0074;
  v13[3] = &unk_10165A0D0;
  v14 = &stru_1016341E8;
  v9 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Show - Scale" content:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100AA00F8;
  v11[3] = &unk_10165A0D0;
  v12 = &stru_1016341E8;
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Show - Translate" content:v11];
}

void sub_100A9FE64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 hideLabelAnimationParams]);
}

void sub_100A9FEE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 hideLabelAnimationParams] + 24);
}

void sub_100A9FF6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 hideLabelAnimationParams] + 48);
}

void sub_100A9FFF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 showLabelAnimationParams]);
}

void sub_100AA0074(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 showLabelAnimationParams] + 24);
}

void sub_100AA00F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[VKDebugSettings sharedSettingsExt];
  (*(v2 + 16))(v2, v3, [v4 showLabelAnimationParams] + 48);
}

void sub_100AA017C(id a1, MapsDebugTableSection *a2, VKDebugLabelAnimationItemParameters *a3)
{
  v4 = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100AA0450;
  v20[3] = &unk_101634208;
  v20[4] = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100AA045C;
  v19[3] = &unk_101634228;
  v19[4] = a3;
  LODWORD(v5) = -3.0;
  LODWORD(v6) = 3.0;
  v7 = [(MapsDebugTableSection *)v4 addSliderRowWithTitle:@"Start Delay" subtitleStringFormat:@"%1.2f" min:v20 max:v19 get:v5 set:v6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100AA0468;
  v18[3] = &unk_101634208;
  v18[4] = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA0474;
  v17[3] = &unk_101634228;
  v17[4] = a3;
  LODWORD(v8) = 3.0;
  v9 = [(MapsDebugTableSection *)v4 addSliderRowWithTitle:@"Delay" subtitleStringFormat:@"%1.2f" min:v18 max:v17 get:0.0 set:v8];
  v15[4] = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100AA0480;
  v16[3] = &unk_101634208;
  v16[4] = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AA048C;
  v15[3] = &unk_101634228;
  LODWORD(v10) = 3.0;
  v11 = [(MapsDebugTableSection *)v4 addSliderRowWithTitle:@"Duration" subtitleStringFormat:@"%1.2f" min:v16 max:v15 get:0.0 set:v10];
  v13[4] = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AA0498;
  v14[3] = &unk_101634268;
  v14[4] = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AA04B0;
  v13[3] = &unk_101634288;
  v12 = [(MapsDebugTableSection *)v4 addCheckmarkRowsGroupWithContent:&stru_101634248 get:v14 set:v13];
}

id sub_100AA04B0(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(a1 + 32) + 16) = result;
  return result;
}

void sub_100AA04E0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v15 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"None" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"Zero" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"One" value:&off_1016E83C0];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"Linear" value:&off_1016E83D8];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"QuadIn" value:&off_1016E83F0];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"QuadOut" value:&off_1016E8420];
  v8 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"QuadInOut" value:&off_1016E8378];
  v9 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"CubicIn" value:&off_1016E8408];
  v10 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"CubicOut" value:&off_1016E84B0];
  v11 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"CubicInOut" value:&off_1016E84C8];
  v12 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"BounceOut" value:&off_1016E8438];
  v13 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"BackIn" value:&off_1016E84E0];
  v14 = [(MapsDebugCheckmarkRowsGroup *)v15 addRowWithTitle:@"BackOut" value:&off_1016E84F8];
}

void sub_100AA06F0(id a1, id a2)
{
  v2 = [a2 unsignedIntegerValue];
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setLabelAnimationTuningElement:v2];
}

id sub_100AA0750(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1 labelAnimationTuningElement]);

  return v2;
}

void sub_100AA07B8(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Icon" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Text" value:&off_1016E83A8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Annotation" value:&off_1016E83C0];
}

void sub_100AA084C(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable" get:&stru_1016340C8 set:&stru_1016340E8];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Modify Foward Animation" get:&stru_101634108 set:&stru_101634128];
}

void sub_100AA08D0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setTuneForwardLabelAnimation:v2];
}

BOOL sub_100AA0928(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 tuneForwardLabelAnimation];

  return v2;
}

void sub_100AA0968(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableLabelAnimationTuning:v2];
}

BOOL sub_100AA09C0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableLabelAnimationTuning];

  return v2;
}

id sub_100AA0A48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 setTextureAtlasIndex:v3];
}

id sub_100AA0AD0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 setTextureAtlasPageIndex:v3];
}

void sub_100AA0B10(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable Overlay" get:&stru_101634008 set:&stru_101634028];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Disable Route Annotation Limit" get:&stru_101634048 set:&stru_101634068];
}

void sub_100AA0B94(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDisableRouteAnnotationLimit:v2];
}

BOOL sub_100AA0BEC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 disableRouteAnnotationLimit];

  return v2;
}

void sub_100AA0C2C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableTrafficFeatureLabelDebugging:v2];
}

BOOL sub_100AA0C84(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableTrafficFeatureLabelDebugging];

  return v2;
}

void sub_100AA0CC4(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Show Nav State" get:&stru_101633E28 set:&stru_101633E48];
  v3 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Show RouteLine Labeling State" get:&stru_101633E68 set:&stru_101633E88];
  v4 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Show Roadsign Labeling Overlay" get:&stru_101633EA8 set:&stru_101633EC8];
  v5 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Show Route POI Text Avoidance Line" get:&stru_101633EE8 set:&stru_101633F08];
  v6 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enable RoadSign Orientation Debugging" get:&stru_101633F28 set:&stru_101633F48];
  v7 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Disable RoadSign Limit" get:&stru_101633F68 set:&stru_101633F88];
  v8 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enable Roadsign Artwork Debugging" get:&stru_101633FA8 set:&stru_101633FC8];
}

void sub_100AA0E10(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableRoadSignArtworkDebugging:v2];
}

BOOL sub_100AA0E68(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableRoadSignArtworkDebugging];

  return v2;
}

void sub_100AA0EA8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDisableRoadSignLimit:v2];
}

BOOL sub_100AA0F00(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 disableRoadSignLimit];

  return v2;
}

void sub_100AA0F40(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableNavRoadSignOrientationDebugging:v2];
}

BOOL sub_100AA0F98(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableNavRoadSignOrientationDebugging];

  return v2;
}

void sub_100AA0FD8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setShowNavLabelRouteAvoidanceOverlay:v2];
}

BOOL sub_100AA1030(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 showNavLabelRouteAvoidanceOverlay];

  return v2;
}

void sub_100AA1070(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setShowNavLabelOverlay:v2];
}

BOOL sub_100AA10C8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 showNavLabelOverlay];

  return v2;
}

void sub_100AA1108(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableRouteLineLabelingDebugging:v2];
}

BOOL sub_100AA1160(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableRouteLineLabelingDebugging];

  return v2;
}

void sub_100AA11A0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setShowLabelsNavState:v2];
}

BOOL sub_100AA11F8(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 showLabelsNavState];

  return v2;
}

void sub_100AA1238(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setShouldUseSDFGlyphs:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA1310(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setShouldUseSDFSuperSampling:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA13E8(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setShouldOverrideSuperSampleKernelSize:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA14C0(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setShouldOverrideUpscaleFactor:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA1598(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 sdfGlyphShaderUpscaleFactor];
  v6 = v5;

  if (v6 != a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained delegate];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v8 allVisibleMapViewsForDebugController:v9];
    v11 = [v10 firstObject];
    v12 = [v11 _mapLayer];
    [v12 setNeedsLayout];
  }

  v14 = +[VKDebugSettings sharedSettingsExt];
  *&v13 = a2;
  [v14 setSdfGlyphShaderUpscaleFactor:v13];
}

void sub_100AA16A8(uint64_t a1, uint64_t a2)
{
  GEOConfigSetSyncBOOL();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    if (a2)
    {
      v11 = &off_1016ED370;
    }

    else
    {
      v11 = 0;
    }

    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 _mapLayer];
        [v14 setShowsLiveEVData:a2];

        v15 = [v13 _mapLayer];
        [v15 setSupportedEVConnectorTypes:v11];

        v16 = [v13 _mapLayer];
        [v16 setNeedsLayout];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

float sub_100AA1868(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 sdfGlyphShaderUpscaleFactor];
  v3 = v2;

  return v3;
}

BOOL sub_100AA18B0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 shouldOverrideUpscaleFactor];

  return v2;
}

BOOL sub_100AA18F0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 shouldOverrideSuperSampleKernelSize];

  return v2;
}

BOOL sub_100AA1930(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 shouldUseSDFSuperSampling];

  return v2;
}

BOOL sub_100AA1970(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 shouldUseSDFGlyphs];

  return v2;
}

void sub_100AA19B0(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setTextlessPOIsMinZoom:v3];
}

float sub_100AA1A08(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 textlessPOIsMinZoom];
  v3 = v2;

  return v3;
}

id sub_100AA1A98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 setLabelerOutputIndex:v3];
}

id sub_100AA1B20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 setDebugOverlayOffsetX:v3];
}

id sub_100AA1BA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 setDebugOverlayOffsetY:v3];
}

void sub_100AA1BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];

  [v9 activeLogics];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 name];
        v18[4] = v14;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100AA1E2C;
        v19[3] = &unk_101651FD0;
        v19[4] = v14;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100AA1E80;
        v18[3] = &unk_101661738;
        v16 = [v3 addSwitchRowWithTitle:v15 get:v19 set:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

id sub_100AA1E2C(uint64_t a1)
{
  v2 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v2 isLogicConsoleEnabled:{objc_msgSend(*(a1 + 32), "identifier")}];

  return v3;
}

void sub_100AA1E80(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setLogicConsole:objc_msgSend(*(a1 + 32) enabled:{"identifier"), a2}];
}

void sub_100AA1EEC(uint64_t a1, void *a2)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v35 title:@"Road Tile Boundaries" forVectorKitDebugKey:@"paintRoadBoundaries"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v35 title:@"POI Tiles" forVectorKitDebugKey:@"paintPoiTiles"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v35 title:@"Point Tiles" forVectorKitDebugKey:@"paintPointTiles"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v35 title:@"Road Tiles" forVectorKitDebugKey:@"paintRoadTiles"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v35 title:@"Polygon Tiles" forVectorKitDebugKey:@"paintPolygonTiles"];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 addAllMapsSwitchRowToSection:v35 title:@"Topographic Tiles" forVectorKitDebugKey:@"paintTopographicTiles"];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 addAllMapsSwitchRowToSection:v35 title:@"Landcover Tiles" forVectorKitDebugKey:@"paintLandcoverTiles"];

  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v17 addAllMapsSwitchRowToSection:v35 title:@"Venues Tiles" forVectorKitDebugKey:@"paintVenues"];

  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 addAllMapsSwitchRowToSection:v35 title:@"Vertices" forVectorKitDebugKey:@"paintVertices"];

  v21 = objc_loadWeakRetained((a1 + 32));
  v22 = [v21 addAllMapsSwitchRowToSection:v35 title:@"Junctions" forVectorKitDebugKey:@"paintJunctions"];

  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = [v23 addAllMapsSwitchRowToSection:v35 title:@"Coastlines" forVectorKitDebugKey:@"paintCoastlines"];

  v25 = objc_loadWeakRetained((a1 + 32));
  v26 = [v25 addAllMapsSwitchRowToSection:v35 title:@"Buildings" forVectorKitDebugKey:@"paintBuildings"];

  v27 = objc_loadWeakRetained((a1 + 32));
  v28 = [v27 addAllMapsSwitchRowToSection:v35 title:@"Transit" forVectorKitDebugKey:@"drawDebugTransit"];

  v29 = objc_loadWeakRetained((a1 + 32));
  v30 = [v29 addAllMapsSwitchRowToSection:v35 title:@"Paint Map Tiles" forVectorKitDebugKey:@"paintMapTiles"];

  v31 = objc_loadWeakRetained((a1 + 32));
  v32 = [v31 addAllMapsSwitchRowToSection:v35 title:@"Paint Selected Map Tiles" forVectorKitDebugKey:@"paintSelectedMapTiles"];

  v33 = objc_loadWeakRetained((a1 + 32));
  v34 = [v33 addAllMapsSwitchRowToSection:v35 title:@"Download Reason" forVectorKitDebugKey:@"paintLoadReason"];
}

void sub_100AA2230(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v13 title:@"KeysInView" forVectorKitDebugKey:@"paintKeysInView"];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 addAllMapsSwitchRowToSection:v13 title:@"S2KeysInView" forVectorKitDebugKey:@"paintS2KeysInView"];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 addAllMapsSwitchRowToSection:v13 title:@"RoadTileData" forVectorKitDebugKey:@"paintRoadTileData"];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 addAllMapsSwitchRowToSection:v13 title:@"PolygonLayerData" forVectorKitDebugKey:@"paintPolygonLayerData"];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 addAllMapsSwitchRowToSection:v13 title:@"StandardLabelMapData" forVectorKitDebugKey:@"paintStandardLabelMapData"];
}

void sub_100AA23A0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VectorKitFloatingDebugViewController sharedInstance];
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

BOOL sub_100AA2400(id a1)
{
  v1 = +[VectorKitFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100AA2440(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100AA249C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained addAllMapsSwitchRowToSection:v5 title:@"Layout Continuously" key:@"debugLayoutContinuously"];
}

void sub_100AA2510(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100AA2568(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AA26DC;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Perform Day/Night Cycle" action:v9];
  v5 = [v3 addReadOnlyRowWithTitle:@"DO NOT USE these options for testing" value:@"They do not completely configure the style"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA2868;
  v7[3] = &unk_101633C28;
  objc_copyWeak(&v8, (a1 + 32));
  v6 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633BE0 get:&stru_101633C00 set:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

void sub_100AA26B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA26DC(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2810000000;
  v21 = &unk_1014C0133;
  v22 = 0;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2810000000;
  v15 = &unk_1014C0133;
  v16 = 1;
  v17 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mapDisplayStyleInAllLayers];

  if (!v3)
  {
    v4 = v19;
    v5 = *(v19 + 18);
    v6 = *(v19 + 8);
    v7 = v13;
    v8 = *(v13 + 18);
    *(v19 + 8) = *(v13 + 8);
    *(v4 + 18) = v8;
    *(v7 + 8) = v6;
    *(v7 + 18) = v5;
  }

  v9 = dispatch_time(0, 1500000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100AA2A58;
  v10[3] = &unk_101637678;
  objc_copyWeak(v11, (a1 + 32));
  v10[4] = &v18;
  v10[5] = &v12;
  dispatch_after(v9, &_dispatch_main_q, v10);
  objc_destroyWeak(v11);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_100AA2844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_100AA2868(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setMapDisplayStyleOverride:v3];

  v5 = +[VKDebugSettings sharedSettingsExt];
  v6 = [v5 displayStyleOverride];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained enableMapDisplayStyleOverrideForAllLayers:*v6 | (*(v6 + 2) << 32)];
  }

  else
  {
    [WeakRetained disableMapDisplayStyleOverrideForAllLayers];
  }
}

id sub_100AA291C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 mapDisplayStyleOverride]);

  return v2;
}

void sub_100AA2984(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"None" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Day" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Night" value:&off_1016E8318];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Transit" value:&off_1016E8330];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"TransitRoute" value:&off_1016E8348];
}

void sub_100AA2A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setMapDisplayStyleForAllLayers:*(*(*(a1 + 32) + 8) + 32) | (*(*(*(a1 + 32) + 8) + 36) << 32)];

  v3 = dispatch_time(0, 5000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AA2B3C;
  v4[3] = &unk_10165DE50;
  objc_copyWeak(&v5, (a1 + 48));
  v4[4] = *(a1 + 40);
  dispatch_after(v3, &_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
}

void sub_100AA2B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMapDisplayStyleForAllLayers:*(*(*(a1 + 32) + 8) + 32) | (*(*(*(a1 + 32) + 8) + 36) << 32)];
}

void sub_100AA2B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA34D8;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA35AC;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633B80 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100AA2CA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA2CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA31E4;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA32B8;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633BA0 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100AA2DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA2DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA2F14;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA2FE8;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633BC0 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100AA2EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_100AA2F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v7 emphasis]);

  return v8;
}

void sub_100AA2FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [v3 integerValue];
        v14 = [v12 _mapLayer];
        [v14 setEmphasis:v13 animated:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_100AA3150(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Muted" value:&off_1016E8450];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Standard" value:&off_1016E8468];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Explore" value:&off_1016E8480];
}

id sub_100AA31E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 currentMapMode]);

  return v8;
}

void sub_100AA32B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) _mapLayer];
        [v12 setDesiredMapMode:{objc_msgSend(v3, "integerValue")}];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

void sub_100AA3418(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Standard" value:&off_1016E8390];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Navigation" value:&off_1016E83A8];
  v4 = +[GEOResourceManifestManager modernManager];
  v5 = [v4 isMuninEnabled];

  if (v5)
  {
    v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Munin PIP" value:&off_1016E83D8];
  }
}

id sub_100AA34D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 mapType]);

  return v8;
}

void sub_100AA35AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [v3 integerValue];
        v14 = [v12 _mapLayer];
        [v14 setMapType:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_100AA3710(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v14 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Grid" value:&off_1016E8378];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Vector" value:&off_1016E8390];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Satellite" value:&off_1016E83A8];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Hybrid" value:&off_1016E83C0];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Globe" value:&off_1016E83D8];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Globe Hybrid" value:&off_1016E83F0];
  v8 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Standard Grid" value:&off_1016E8378];
  v9 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Satellite Grid" value:&off_1016E8408];
  v10 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Navigation" value:&off_1016E8420];
  v11 = +[GEOResourceManifestManager modernManager];
  v12 = [v11 isMuninEnabled];

  if (v12)
  {
    v13 = [(MapsDebugCheckmarkRowsGroup *)v14 addRowWithTitle:@"Munin" value:&off_1016E8438];
  }
}