id sub_100858D18(uint64_t a1, void *a2)
{
  v3 = [a2 iOSBundleIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100858D84(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [v5 timeIntervalSinceNow];
  v7 = v6;
  GEOConfigGetDouble();
  if (v7 >= -v8)
  {
    [*(a1 + 32) setObject:v5 forKey:v9];
  }
}

void sub_10085A6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10085A6F0(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained updateIdentifier];
    if (![v5 isEqual:*(a1 + 32)])
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = [v4 collectionItem];

    if (v7 && v6)
    {
      v5 = [v4 publisherLogoImageView];
      [v5 setImage:v7];
      goto LABEL_6;
    }
  }

LABEL_7:
}

void sub_10085A7AC(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if ((a5 & 1) == 0)
  {
    v22 = sub_1007982D8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [*(a1 + 32) collectionItem];
      v24 = [v23 collectionTitle];
      v25 = [v24 string];
      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Cancelled image download for collection: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v12 = [WeakRetained updateIdentifier];
  if (([v12 isEqual:*(a1 + 40)] & 1) == 0)
  {

    goto LABEL_16;
  }

  v13 = [*(a1 + 32) collectionItem];

  if (!v13)
  {
LABEL_16:
    v26 = sub_1007982D8();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Cell doesn't exist OR identifier mistach", buf, 2u);
    }

    goto LABEL_19;
  }

  v14 = sub_1007982D8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v11 collectionItem];
    v16 = [v15 collectionTitle];
    v17 = [v16 string];
    *buf = 138412290;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[⌛]Received image for : %@", buf, 0xCu);
  }

  if (v9 && !a3)
  {
    v18 = sub_1007982D8();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (a4)
    {
      v20 = 0.0;
      if (v19)
      {
        *buf = 0;
        v21 = "Received cached image. Displaying without animation.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v21, buf, 2u);
      }
    }

    else
    {
      v20 = 0.100000001;
      if (v19)
      {
        *buf = 0;
        v21 = "Received non-cached image. Displaying with animation.";
        goto LABEL_22;
      }
    }

    v27 = [v11 collectionImageView];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10085AB48;
    v30[3] = &unk_101661A90;
    v30[4] = v11;
    v31 = v9;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10085AB98;
    v28[3] = &unk_101661570;
    v28[4] = v11;
    v29 = *(a1 + 48);
    [UIView transitionWithView:v27 duration:5242882 options:v30 animations:v28 completion:v20];
  }

LABEL_19:
}

void sub_10085AB48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) collectionImageView];
  [v2 setImage:v1];
}

void sub_10085AB98(uint64_t a1)
{
  v2 = sub_1007982D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) collectionItem];
    v4 = [v3 collectionTitle];
    v5 = [v4 string];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[⌛]Finished showing image for : %@ in %f", &v8, 0x16u);
  }
}

id sub_10085C1BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

uint64_t sub_10085C754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = [LSApplicationProxy applicationProxyForIdentifier:v3];
    v8 = v7;
    if (v7 && (v9 = *(a1 + 40)) != 0)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10085CA90;
      v12[3] = &unk_10162BE58;
      v13 = v7;
      v6 = [v9 indexOfObjectPassingTest:v12];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = [NSNumber numberWithUnsignedInteger:v6];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v3];
  }

  return v6;
}

uint64_t sub_10085C89C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 application];
  v8 = [v7 identifier];

  v9 = [v6 application];
  v10 = [v9 identifier];

  if (v8 && v10)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = [v12 compare:v11];
    }

    else
    {
      if (v11)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if (!(v11 | v12))
      {
        v15 = (*(*(a1 + 40) + 16))();
        v16 = (*(*(a1 + 40) + 16))();
        if (v15 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v15 == 0x7FFFFFFFFFFFFFFFLL;
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = 1;
          }

          else
          {
            v14 = -1;
          }

          if (v17 && v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = [v5 application];
            v18 = [v22 name];
            v19 = [v6 application];
            v20 = [v19 name];
            v14 = [v18 compare:v20];
          }
        }

        else if (v15 >= v16)
        {
          v14 = v15 > v16;
        }

        else
        {
          v14 = -1;
        }
      }
    }
  }

  else if (v8)
  {
    v14 = -1;
  }

  else
  {
    v14 = v10 != 0;
  }

  return v14;
}

id sub_10085CA90(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) itemID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_10085CEAC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10195DA10;
  qword_10195DA10 = v1;
}

void sub_10085D870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10085D894(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 object];
    v5 = [WeakRetained _shouldIgnoreScene:v4];

    if ((v5 & 1) == 0)
    {
      [WeakRetained _asyncUpdateForApplicationState:1];
    }
  }
}

void sub_10085D928(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 object];
    v5 = [WeakRetained _shouldIgnoreScene:v4];

    if ((v5 & 1) == 0)
    {
      [WeakRetained _syncUpdateForApplicationState:{+[UIApplication _maps_isAnySceneForegroundForRole:](UIApplication, "_maps_isAnySceneForegroundForRole:", UIWindowSceneSessionRoleApplication)}];
    }
  }
}

void sub_10085DD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_10085DD6C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  if (result == 1)
  {
    v5 = 32;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v5 = 40;
  }

  *(*(*(a1 + v5) + 8) + 24) = 1;
  return result;
}

void sub_10085DE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10085DE90(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntegerValue];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10085E16C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _idleTimerReasonPermittedInBackground:{objc_msgSend(v3, "unsignedIntegerValue")}] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }
}

void sub_10085E56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10085E584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10085E59C(uint64_t a1)
{
  v2 = [*(a1 + 32) _summaryString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10085E7C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setDesiredIdleTimerState:*(a1 + 40) forReason:*(a1 + 48)];
}

void sub_10085EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10085EA1C(uint64_t a1)
{
  result = [UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10085EE48(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 presentedViewController];

  if (!v3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 40) + 8);

    [v5 removeObjectForKey:v4];
  }
}

void sub_10085F64C(id a1)
{
  v1 = objc_alloc_init(MapsInternalAlertPresentationController);
  v2 = qword_10195DA20;
  qword_10195DA20 = v1;
}

BOOL sub_10085FACC(id a1, SearchFieldItem *a2, unint64_t a3, BOOL *a4)
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

void sub_10085FC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10085FC7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 searchResult];
  v6 = [v5 isDynamicCurrentLocation];

  if (v6)
  {
    [*(a1 + 32) addIndex:a3];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_10085FFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10085FFD8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 waypoint];
  v8 = [v7 isValid];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_100861124(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DA30;
  qword_10195DA30 = v1;

  v3 = qword_10195DA30;

  [v3 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
}

id sub_100861178(id a1, MapsRadarKeyword *a2, unint64_t a3)
{
  v3 = [(MapsRadarKeyword *)a2 number];

  return [NSNumber numberWithUnsignedInteger:v3];
}

id sub_1008611BC(id a1, MapsRadarImageAttachment *a2, unint64_t a3)
{
  v3 = [(MapsRadarImageAttachment *)a2 temporaryFileURL];
  v4 = [v3 path];

  return v4;
}

void sub_100862668(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 superview];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) cardPresentationController];
  [v4 updateHeightForCurrentLayout];
}

void sub_100862904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100862928(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_100862F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100862FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSharingFooterWithIdentity:v3];
}

void sub_100863BBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v21 = a1;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    v4 = [v3[2] rideOptionStatusMap];
    v5 = [v4 allValues];
    [v3[1] setNumberOfInstalledExtensions:{objc_msgSend(v5, "count")}];

    v6 = +[RidesharingAppPreferenceManager mostRecentSelectedAppIdentifers];
    v7 = [v6 mutableCopy];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v3[2] rideOptionStatusMap];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          [v3 _updateAnalyticsWithRideOptionStatus:v15];
          v16 = [v15 application];
          v17 = [v16 enabled];

          if (v17)
          {
            ++v12;
            v18 = [v15 application];
            v19 = [v18 identifier];
            [v7 removeObject:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    [RidesharingAppPreferenceManager removeRecordedAppSelectionForAppIdentifiers:v7];
    [v3[1] setNumberOfEnabledExtensions:v12];
    v20 = objc_loadWeakRetained(v3 + 3);
    [v20 rideOptionStateDidChange:*(v21 + 32)];
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "RideBookingRideOptionStateObserverProxy.m";
      v29 = 1026;
      v30 = 69;
      v31 = 2082;
      v32 = "[RideBookingRideOptionStateObserverProxy rideOptionStateDidChange:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v20;
  }
}

uint64_t sub_100864374(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isPureElectricVehicle] || (objc_msgSend(v3, "preferredChargingNetworks"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if (([*(a1 + 32) _shouldShowForVehicle:v3] & 1) == 0)
  {
    v7 = sub_100063F04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 displayName];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "will not offer preferred networks onboarding for %@, because it was shown many times already.", &v10, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

void sub_100864848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[PreferredNetworksFeatureDiscoverySource _didSelectModelWithVehicle:]_block_invoke";
      v11 = 2080;
      v12 = "PreferredNetworksFeatureDiscoverySource.m";
      v13 = 1024;
      v14 = 220;
      v15 = 2080;
      v16 = "vehicle";
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

    if (*(a1 + 32))
    {
LABEL_3:
      v3 = +[UIApplication sharedMapsDelegate];
      v4 = [v3 appCoordinator];
      v5 = [v4 baseActionCoordinator];

      [v5 presentPreferredNetworksOnboardingForVehicle:*(a1 + 32)];
    }

    else
    {
      v5 = sub_100063F04();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "User selected preferred networks source, but there were no candidate vehicle.", &v9, 2u);
      }
    }
  }
}

void sub_100864B48(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100864C00;
  v2[3] = &unk_101661340;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  if (qword_10195DA40 != -1)
  {
    dispatch_once(&qword_10195DA40, v2);
  }

  objc_destroyWeak(&v4);
}

void sub_100864C00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[PreferredNetworksFeatureDiscoverySource _didViewModelWithVehicle:]_block_invoke_2";
      v10 = 2080;
      v11 = "PreferredNetworksFeatureDiscoverySource.m";
      v12 = 1024;
      v13 = 202;
      v14 = 2080;
      v15 = "vehicle";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v8, 0x26u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
LABEL_3:
      v3 = sub_100063F04();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User viewed preferred networks onboarding suggestion.", &v8, 2u);
      }

      [WeakRetained _markVehicleAsViewed:*(a1 + 32)];
    }

    else
    {
      v7 = sub_100063F04();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "User selected preferred networks source, but there were no candidate vehicle.", &v8, 2u);
      }
    }
  }
}

void sub_100864EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100063F04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User dismissed preferred networks suggestion.", v3, 2u);
    }

    WeakRetained[32] = 1;
    [WeakRetained _reloadAvailability];
  }
}

uint64_t sub_10086503C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100865054(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10086554C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 160));
  _Unwind_Resume(a1);
}

void sub_100865588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSelectModelWithVehicle:*(a1 + 32)];
}

void sub_1008655D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didViewModelWithVehicle:*(a1 + 32)];
}

void sub_100865628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_1008680CC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8.size.height = a5;
  v8.size.width = a4;
  v8.origin.y = a3;
  v8.origin.x = a2;
  *(*(*(a1 + 40) + 8) + 32) = MKMapRectUnion(*(*(*(a1 + 40) + 8) + 32), v8);
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_100868134(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8.size.height = a5;
  v8.size.width = a4;
  v8.origin.y = a3;
  v8.origin.x = a2;
  *(*(*(a1 + 40) + 8) + 32) = MKMapRectUnion(*(*(*(a1 + 40) + 8) + 32), v8);
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_10086999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008699C8(uint64_t a1, int a2)
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

void sub_10086A714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10086A730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v8;
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setNeedsToBePersisted:0];
      [v6 setStagedImage:0];
      v7 = v6[11];
      v6[11] = 0;
    }

    v3 = v8;
  }
}

uint64_t sub_10086A9A8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10086AEB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v23 = WeakRetained;
    v24 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v30;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          v8 = v5;
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          [*(a1 + 40) removePlace:v9];
          v10 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
          v34 = *(a1 + 40);
          v11 = [NSArray arrayWithObjects:&v34 count:1];
          v28 = v5;
          [v10 saveWithObjects:v11 error:&v28];
          v5 = v28;

          if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
          {
            v12 = [v9 fetchCollections];
            v13 = [v12 count];

            if (!v13)
            {
              [v24 addObject:v9];
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v14 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v27 = v5;
    [v14 deleteWithObjects:v24 error:&v27];
    v15 = v27;

    v16 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v33 = *(a1 + 40);
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    v26 = v15;
    [v16 saveWithObjects:v17 error:&v26];
    v18 = v26;

    v19 = objc_loadWeakRetained((a1 + 56));
    [v19 endModification];

    v20 = objc_loadWeakRetained((a1 + 56));
    v21 = [v20 collectionOperation];
    [v21 touchCollection:*(a1 + 40)];

    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))(v22, v18);
    }

    WeakRetained = v23;
  }
}

void sub_10086B45C(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = *(v1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v29;
      v7 = &GEOMapsAuthEnvironmentKey_ptr;
      v26 = v3;
      v27 = *v29;
      v25 = WeakRetained;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [MKMapItem _itemWithGeoMapItem:v9];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v10 = v9;
          }

          v11 = v10;
          if (v10)
          {
            v12 = [objc_opt_class() existingCollectionItemForMapItem:v10 error:*(v1 + 40)];
            if (v12)
            {
              [*(v1 + 48) addPlace:v12];
            }

            else
            {
              v13 = [[MSCollectionPlaceItem alloc] initWithCollection:*(v1 + 48)];
              v14 = v1;
              v15 = v7[219];
              [v11 _geoMapItem];
              v17 = v16 = v7;
              v18 = [v15 mapItemStorageForGEOMapItem:v17];
              [v13 setMapItemStorage:v18];

              v7 = v16;
              v19 = [v11 name];
              [v13 setCustomName:v19];

              v1 = v14;
              [*(v14 + 56) addObject:v13];

              WeakRetained = v25;
              v3 = v26;
              v6 = v27;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v5);
    }

    [*(v1 + 56) addObject:*(v1 + 48)];
    v20 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v20 saveWithObjects:*(v1 + 56) error:0];

    v21 = [*(v1 + 32) count];
    [WeakRetained endModification];
    if (v21)
    {
      [WeakRetained rebuildContent];
      v22 = [WeakRetained collectionOperation];
      [v22 touchCollection:*(v1 + 48)];

      v23 = *(v1 + 64);
      if (v23)
      {
        (*(v23 + 16))(v23, 0);
      }
    }

    else if (*(v1 + 64))
    {
      v24 = [NSError GEOErrorWithCode:0 reason:@"No object to add"];
      (*(*(v1 + 64) + 16))();
    }
  }
}

void sub_10086B868(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000BDA4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "update collection error %@", &v4, 0xCu);
  }
}

void sub_10086B998(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000BDA4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "update collection for title change error %@", &v4, 0xCu);
  }
}

uint64_t sub_10086CE24(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return GEOConfigGetBOOL();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10086CE48(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    return GEOConfigSetBOOL();
  }

  return result;
}

void sub_10086CE6C(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = a3;
  v4 = +[UIColor systemGrayColor];
  v12 = [ImageIconWithBackgroundConfiguration offlineIconConfigurationWithBackgroundColor:v4];

  v5 = [UIImageSymbolConfiguration configurationWithWeight:4];
  v6 = [UIImage systemImageNamed:@"icloud.slash.fill" withConfiguration:v5];

  v7 = [v6 _maps_imageIconWithBackgroundConfiguration:v12];
  [(UIListContentConfiguration *)v3 setImage:v7];

  [(UIListContentConfiguration *)v3 setImageToTextPadding:10.0];
  v8 = +[UIColor secondaryLabelColor];
  v9 = [(UIListContentConfiguration *)v3 secondaryTextProperties];
  [v9 setColor:v8];

  [(UIListContentConfiguration *)v3 setTextToSecondaryTextVerticalPadding:2.0];
  [(UIListContentConfiguration *)v3 directionalLayoutMargins];
  v11 = v10;
  [(UIListContentConfiguration *)v3 directionalLayoutMargins];
  [(UIListContentConfiguration *)v3 setDirectionalLayoutMargins:10.0, v11, 10.0];
}

void sub_10086D3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10086D428(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return GEOConfigGetBOOL();
  }

  else
  {
    return 0;
  }
}

void sub_10086D44C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained offlineDelegate];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10086D6B4;
      v7[3] = &unk_10165FC50;
      objc_copyWeak(&v8, (a1 + 40));
      v7[4] = v5;
      [v6 didSetSyncToWatch:a2 completionHandler:v7];

      objc_destroyWeak(&v8);
    }
  }
}

void sub_10086D53C(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v13 = a3;
  v3 = +[UIColor blackColor];
  v4 = [ImageIconWithBackgroundConfiguration offlineIconConfigurationWithBackgroundColor:v3];

  v5 = [UIImageSymbolConfiguration configurationWithWeight:4];
  v6 = [UIImage systemImageNamed:@"applewatch" withConfiguration:v5];

  v7 = [v6 _maps_imageIconWithBackgroundConfiguration:v4];
  [(UIListContentConfiguration *)v13 setImage:v7];

  [(UIListContentConfiguration *)v13 setImageToTextPadding:10.0];
  v8 = +[UIColor secondaryLabelColor];
  v9 = [(UIListContentConfiguration *)v13 secondaryTextProperties];
  [v9 setColor:v8];

  [(UIListContentConfiguration *)v13 setTextToSecondaryTextVerticalPadding:2.0];
  v10 = [(UIListContentConfiguration *)v13 secondaryText];

  if (v10)
  {
    [(UIListContentConfiguration *)v13 directionalLayoutMargins];
    v12 = v11;
    [(UIListContentConfiguration *)v13 directionalLayoutMargins];
    [(UIListContentConfiguration *)v13 setDirectionalLayoutMargins:10.0, v12, 10.0];
  }
}

void sub_10086D6B4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v6 = [*(a1 + 32) diffableDataSource];
    v7 = [v6 snapshot];

    v10 = v5;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 reconfigureItemsWithIdentifiers:v8];

    v9 = [*(a1 + 32) diffableDataSource];
    [v9 applySnapshot:v7 animatingDifferences:0];
  }
}

void sub_10086D930(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = a3;
  v4 = +[UIColor systemOrangeColor];
  v12 = [ImageIconWithBackgroundConfiguration offlineIconConfigurationWithBackgroundColor:v4];

  v5 = [UIImageSymbolConfiguration configurationWithWeight:4];
  v6 = [UIImage systemImageNamed:@"internaldrive.fill" withConfiguration:v5];

  v7 = [v6 _maps_imageIconWithBackgroundConfiguration:v12];
  [(UIListContentConfiguration *)v3 setImage:v7];

  [(UIListContentConfiguration *)v3 setImageToTextPadding:10.0];
  v8 = +[UIColor secondaryLabelColor];
  v9 = [(UIListContentConfiguration *)v3 secondaryTextProperties];
  [v9 setColor:v8];

  [(UIListContentConfiguration *)v3 setTextToSecondaryTextVerticalPadding:2.0];
  [(UIListContentConfiguration *)v3 directionalLayoutMargins];
  v11 = v10;
  [(UIListContentConfiguration *)v3 directionalLayoutMargins];
  [(UIListContentConfiguration *)v3 setDirectionalLayoutMargins:10.0, v11, 10.0];
}

void sub_10086DF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10086DF3C(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return GEOConfigGetBOOL();
  }

  else
  {
    return 0;
  }
}

void sub_10086DF60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained offlineDelegate];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10086E1C8;
      v7[3] = &unk_10165FC50;
      objc_copyWeak(&v8, (a1 + 40));
      v7[4] = v5;
      [v6 didSetAutomaticUpdatesEnabled:a2 completionHandler:v7];

      objc_destroyWeak(&v8);
    }
  }
}

void sub_10086E050(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v13 = a3;
  v3 = +[UIColor systemGreenColor];
  v4 = [ImageIconWithBackgroundConfiguration offlineIconConfigurationWithBackgroundColor:v3];

  v5 = [UIImageSymbolConfiguration configurationWithWeight:5];
  v6 = [UIImage systemImageNamed:@"arrow.triangle.2.circlepath" withConfiguration:v5];

  v7 = [v6 _maps_imageIconWithBackgroundConfiguration:v4];
  [(UIListContentConfiguration *)v13 setImage:v7];

  [(UIListContentConfiguration *)v13 setImageToTextPadding:10.0];
  v8 = +[UIColor secondaryLabelColor];
  v9 = [(UIListContentConfiguration *)v13 secondaryTextProperties];
  [v9 setColor:v8];

  [(UIListContentConfiguration *)v13 setTextToSecondaryTextVerticalPadding:2.0];
  v10 = [(UIListContentConfiguration *)v13 secondaryText];

  if (v10)
  {
    [(UIListContentConfiguration *)v13 directionalLayoutMargins];
    v12 = v11;
    [(UIListContentConfiguration *)v13 directionalLayoutMargins];
    [(UIListContentConfiguration *)v13 setDirectionalLayoutMargins:10.0, v12, 10.0];
  }
}

void sub_10086E1C8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v6 = [*(a1 + 32) diffableDataSource];
    v7 = [v6 snapshot];

    v10 = v5;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 reconfigureItemsWithIdentifiers:v8];

    v9 = [*(a1 + 32) diffableDataSource];
    [v9 applySnapshot:v7 animatingDifferences:0];
  }
}

void sub_10086E61C(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = a3;
  v4 = +[UIColor systemBlueColor];
  v8 = [ImageIconWithBackgroundConfiguration offlineIconConfigurationWithBackgroundColor:v4];

  v5 = [UIImageSymbolConfiguration configurationWithWeight:4];
  v6 = [UIImage systemImageNamed:@"arrow.down" withConfiguration:v5];

  v7 = [v6 _maps_imageIconWithBackgroundConfiguration:v8];
  [(UIListContentConfiguration *)v3 setImage:v7];

  [(UIListContentConfiguration *)v3 setImageToTextPadding:10.0];
}

void sub_10086ED64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10086ED88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained offlineDelegate];
    [v2 didSelectDownloadNewMap];

    [GEOAPPortal captureUserAction:381 target:86 value:0];
    WeakRetained = v3;
  }
}

void sub_10086EFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10086F00C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained offlineDelegate];
    [v2 didSelectExpiredMaps];

    WeakRetained = v3;
  }
}

void sub_10086F068(id a1, UICollectionViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = a3;
  v5 = +[UIColor secondaryLabelColor];
  v4 = [(UIListContentConfiguration *)v3 secondaryTextProperties];

  [v4 setColor:v5];
}

void sub_10086FCE8(uint64_t a1)
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  [v2 pauseDownloadForSubscriptionInfo:*(a1 + 32)];
}

void sub_10086FD40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained offlineDelegate];
    [v3 didSelectResumeSubscriptionInfo:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_10086FDA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) row]);
    v4 = [v3 stringValue];
    [GEOAPPortal captureUserAction:381 target:90 value:v4];

    v5 = [v6 offlineDelegate];
    [v5 didSelectSuggestion:*(a1 + 40)];

    WeakRetained = v6;
  }
}

BOOL sub_10086FE68(void *a1)
{
  v1 = a1;
  if (GEOSupportsOfflineMaps())
  {
    v2 = [v1 regulatoryRegionID];
    v3 = [v2 unsignedIntValue];
    v4 = +[GEOResourceManifestManager modernManager];
    v5 = [v4 activeTileGroup];
    v6 = [v5 offlineMetadata];
    v7 = v3 == [v6 regulatoryRegionId];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10086FF14(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) itemTapped:*(a1 + 40)];
}

void sub_1008709C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008709F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = sub_10003D9F4();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching disk space from paired device: %{public}@", &v11, 0xCu);
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v11 = 134218240;
      v12 = v9;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Paired device space needed (%lld), paired device space available (%lld)", &v11, 0x16u);
    }

    v10 = *(a1 + 40) - a2;
    if (v10 >= 1)
    {
      v8 = [WeakRetained offlineDelegate];
      [v8 showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:v10];
LABEL_9:
    }
  }
}

void sub_100870D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100870DC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 && v6)
    {
      v8 = sub_10003D9F4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching expired subscriptions: %@", buf, 0xCu);
      }
    }

    v20 = v6;
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (sub_10086FE68(v16))
          {
            v17 = v9;
          }

          else
          {
            v17 = v10;
          }

          [v17 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v18 = [v9 arrayByAddingObjectsFromArray:v10];
    v19 = WeakRetained[17];
    WeakRetained[17] = v18;

    [WeakRetained _updateContentAnimated:*(a1 + 40)];
    v6 = v20;
  }
}

void sub_10087109C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1008710C0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = sub_10003D9F4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching last updated date: %@", &v10, 0xCu);
      }
    }

    objc_storeStrong(WeakRetained + 16, a2);
    [WeakRetained _updateUpdateAllModels];
    [WeakRetained _updateContentAnimated:*(a1 + 40)];
  }
}

BOOL sub_100871938(id a1, OfflineMapsSuggestionModelData *a2)
{
  v2 = a2;
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [(OfflineMapsSuggestionModelData *)v2 mapRegion];

  GEOConfigGetDouble();
  LOBYTE(v2) = [v3 isRegionDownloaded:v4 requireFullyDownloaded:0 coverageRequirement:?];

  return v2 ^ 1;
}

void sub_100871FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 176));
  _Unwind_Resume(a1);
}

void sub_100872054(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained diffableDataSource];
    v7 = [v6 snapshot];

    v19 = *(a1 + 32);
    v8 = [NSArray arrayWithObjects:&v19 count:1];
    [v7 deleteItemsWithIdentifiers:v8];

    v9 = [v5 diffableDataSource];
    [v9 applySnapshot:v7 animatingDifferences:1];

    v10 = [v5 subscriptionManager];
    v11 = [*(a1 + 32) subscription];
    v12 = [v11 identifier];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100872614;
    v16 = &unk_10163AED0;
    v17 = *(a1 + 32);
    v18 = v3;
    [v10 removeSubscriptionWithIdentifier:v12 callbackQueue:&_dispatch_main_q completionHandler:&v13];

    [GEOAPPortal captureUserAction:383 target:88 value:0, v13, v14, v15, v16];
  }
}

void sub_100872228(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained offlineDelegate];
    [v5 didSelectRenameSubscriptionInfo:*(a1 + 32) completionHandler:&stru_10162C1E8];

    [GEOAPPortal captureUserAction:385 target:88 value:0];
    v6[2](v6, 1);
  }
}

void sub_1008722D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained diffableDataSource];
    v7 = [v6 snapshot];

    v18 = *(a1 + 32);
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    [v7 deleteItemsWithIdentifiers:v8];

    v9 = [v5 diffableDataSource];
    [v9 applySnapshot:v7 animatingDifferences:1];

    v10 = [v5 subscriptionManager];
    v11 = [*(a1 + 32) identifier];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100872510;
    v15 = &unk_10163AED0;
    v16 = *(a1 + 32);
    v17 = v3;
    [v10 removeSubscriptionWithIdentifier:v11 callbackQueue:&_dispatch_main_q completionHandler:&v12];

    [GEOAPPortal captureUserAction:384 target:88 value:0, v12, v13, v14, v15];
  }
}

void sub_100872494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 dataSource:*(a1 + 32) itemTapped:*(a1 + 40)];

    [GEOAPPortal captureUserAction:398 target:85 value:0];
    WeakRetained = v4;
  }
}

void sub_100872510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10003D9F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error removing subscription: %@, error: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1008725F4(id a1, BOOL a2)
{
  if (a2)
  {
    [GEOAPPortal captureUserAction:378 target:88 value:0];
  }
}

void sub_100872614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10003D9F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error removing subscriptionInfo: %@, error: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100872DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100872E1C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setSubscriptionInfos:v5];
    v4[120] = 1;
    [v4 _updateUpdateAllModels];
    [v4 _updateContentAnimated:0];
  }
}

void sub_100872EA4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setSuggestedRegions:v5];
    [v4 _updateContentAnimated:0];
  }
}

void sub_100872F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAutoUpdateRowSubtitle];
    [v2 _updateContentAnimated:0];
    WeakRetained = v2;
  }
}

void sub_10087378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008737B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained dataSource];

    WeakRetained = v4;
    if (!v2)
    {
      v3 = [v4 apiController];
      [v3 fetchCitySelectorView:&stru_10162C4C8];

      WeakRetained = v4;
    }
  }
}

void sub_10087395C(uint64_t a1)
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

id sub_100873E68(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sections];
  v5 = [v4 objectAtIndex:a2];

  v6 = [v5 layoutForSectionUsingTraitsEnvironment:*(a1 + 32) usingWidth:*(a1 + 40)];

  return v6;
}

void sub_100874914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 apiController];
  v6 = [v5 isWorldwideSection:v4];

  v7 = [CitySelectorSection alloc];
  v8 = [*(a1 + 32) collectionView];
  [v8 frame];
  v10 = v9;
  v11 = [*(a1 + 32) collectionView];
  v14 = [(CitySelectorSection *)v7 initWithSectionKind:v6 usingMaxWidth:v11 usingTraitEnvironment:v10];

  v12 = [*(a1 + 32) apiController];
  v13 = [v12 titleForSection:v4];

  [(CitySelectorSection *)v14 setSectionTitle:v13];
  [*(a1 + 40) addObject:v14];
}

id sub_100874B8C()
{
  if (qword_10195DA60 != -1)
  {
    dispatch_once(&qword_10195DA60, &stru_10162C4E8);
  }

  v1 = qword_10195DA58;

  return v1;
}

void sub_100874BE0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CitySelectorViewController");
  v2 = qword_10195DA58;
  qword_10195DA58 = v1;
}

void sub_10087503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained onTransitionFromState:a2 toState:a3];
  }
}

id sub_1008752EC(uint64_t a1)
{
  switch(a1)
  {
    case 5:
      v1 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      goto LABEL_7;
    case 3:
      v1 = +[GEOFeatureStyleAttributes workStyleAttributes];
      goto LABEL_7;
    case 2:
      v1 = +[GEOFeatureStyleAttributes homeStyleAttributes];
LABEL_7:
      v2 = v1;
      goto LABEL_9;
  }

  v2 = 0;
LABEL_9:
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v4 = [MKIconManager imageForStyle:v2 size:3 forScale:0 format:?];

  return v4;
}

void sub_100875918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100875934(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100875A04;
  v6[3] = &unk_10162C510;
  v4 = *(a1 + 48);
  v7 = v3;
  v9[1] = v4;
  v5 = v3;
  objc_copyWeak(v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(v9);
}

void sub_100875A04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100875C40;
  v24[3] = &unk_101656690;
  v24[4] = *(a1 + 56);
  v3 = [NSPredicate predicateWithBlock:v24];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v19 = a1;
    v6 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [RAPPersonalPlaceSelectionQuestion alloc];
          v14 = [WeakRetained report];
          v15 = [(RAPPersonalPlaceSelectionQuestion *)v13 initWithReport:v14 parentQuestion:WeakRetained shortcut:v12];

          [v6 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];
    v17 = *(WeakRetained + 7);
    *(WeakRetained + 7) = v16;

    *(WeakRetained + 112) = 0;
    v18 = *(v19 + 40);
    if (v18)
    {
      (*(v18 + 16))();
    }
  }
}

uint64_t sub_100877054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrangedSubviews];
  v9 = [v8 indexOfObject:v7];

  v10 = [*(*(a1 + 32) + 8) arrangedSubviews];
  v11 = [v10 indexOfObject:v6];

  if (v9 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v9 > v11)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

BOOL sub_100877658(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1 != 0;

  return v2;
}

GEOComposedRouteAdvisory *__cdecl sub_100877698(id a1, TransitDirectionsStepView *a2)
{
  v2 = [(TransitDirectionsStepView *)a2 transitListItem];
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

  if (v4)
  {
    v5 = [v4 incidentMessage];
    v6 = [v5 advisory];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10087773C()
{
  if (qword_10195DA70 != -1)
  {
    dispatch_once(&qword_10195DA70, &stru_10162C628);
  }

  v1 = qword_10195DA68;

  return v1;
}

void sub_100877790(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitListView");
  v2 = qword_10195DA68;
  qword_10195DA68 = v1;
}

void sub_1008793DC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 stepView];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100879534;
  v12 = v11[3] = &unk_101661B18;
  v4 = v12;
  [UIView performWithoutAnimation:v11];
  v5 = *(*(a1 + 32) + 16);
  v6 = [v3 indexPath];
  [v5 setObject:v4 forKey:v6];

  v7 = *(*(a1 + 32) + 24);
  v8 = [v4 reuseIdentifier];
  [v7 setObject:v4 forKey:v8];

  v9 = *(*(a1 + 32) + 32);
  v10 = [v3 indexPath];

  [v9 setObject:v10 forKey:v4];
}

void sub_100879920(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  [*(a1 + 32) _requestSeparatorForStepView:v4 atIndexPath:v5];
}

void sub_10087B704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10087B720(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a3 || ![v5 count])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_10087B860;
      v13 = &unk_10162C780;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      [v5 enumerateObjectsUsingBlock:&v10];
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = [*(a1 + 40) copy];
        v9 = [*(a1 + 32) copy];
        (*(v7 + 16))(v7, v8, v9);
      }
    }
  }
}

void sub_10087B860(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [[MKMapItem alloc] initWithGeoMapItem:v3 isPlaceHolderPlace:0];
  v4 = [v3 _muid];

  v5 = [NSString stringWithFormat:@"%llu", v4];
  v6 = objc_alloc_init(RAPWebBundleImageContext);
  v7 = [v17 _styleAttributes];
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v9 = [MKIconManager imageForStyle:v7 size:3 forScale:0 format:?];
  v10 = UIImagePNGRepresentation(v9);
  [(RAPWebBundleImageContext *)v6 setImage:v10];

  [(RAPWebBundleImageContext *)v6 setIdentifier:v5];
  [*(a1 + 32) addObject:v6];
  v11 = objc_alloc_init(RAPWebBundlePlaceSummaryContext);
  [(RAPWebBundlePlaceSummaryContext *)v11 setIdentifier:v5];
  v12 = [v17 name];
  [(RAPWebBundlePlaceSummaryContext *)v11 setTitle:v12];

  v13 = [v17 _addressFormattedAsShortenedAddress];
  [(RAPWebBundlePlaceSummaryContext *)v11 setSubtitle:v13];

  v14 = [[RAPPlaceCorrectableAddress alloc] _initWithMapItem:v17];
  v15 = [v14 freeformAddress];
  v16 = [v15 value];
  [(RAPWebBundlePlaceSummaryContext *)v11 setAddress:v16];

  [(RAPWebBundlePlaceSummaryContext *)v11 setImageContext:v6];
  [*(a1 + 40) addObject:v11];
}

void sub_10087C2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10087C3E8;
  v8[3] = &unk_10162C758;
  v11 = v6;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v8];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40), *(a1 + 32));
  }
}

void sub_10087C3E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 artwork];
  image = [UIImage _mapkit_transitArtworkImageWithDataSource:v4 size:6 scale:*(a1 + 48)];

  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v3 muid]);
  v6 = objc_alloc_init(RAPWebBundleImageContext);
  v7 = UIImagePNGRepresentation(image);
  [(RAPWebBundleImageContext *)v6 setImage:v7];

  [(RAPWebBundleImageContext *)v6 setIdentifier:v5];
  [*(a1 + 32) addObject:v6];
  v8 = objc_alloc_init(RAPWebBundleTransitLineContext);
  v9 = [v3 name];

  [(RAPWebBundleTransitLineContext *)v8 setName:v9];
  [(RAPWebBundleTransitLineContext *)v8 setIdentifier:v5];
  [(RAPWebBundleTransitLineContext *)v8 setImageContext:v6];
  [*(a1 + 40) addObject:v8];
}

void sub_10087D2B8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10087D344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10087D35C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = objc_alloc_init(RAPWebBundleTransitSystemContext);
    v8 = [*(a1 + 32) systemName];
    [(RAPWebBundleTransitSystemContext *)v7 setSystem:v8];

    [(RAPWebBundleTransitSystemContext *)v7 setLines:v5];
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v6];
    v10 = v7;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [*(a1 + 40) setTransitInfos:v9];

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  }
}

RAPWebBundleHoursContext *sub_10087D480(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = objc_alloc_init(RAPWebBundleHoursContext);
  [(RAPWebBundleHoursContext *)v5 setDays:*(a1 + 32)];
  v6 = [NSNumber numberWithUnsignedInt:v4];
  [(RAPWebBundleHoursContext *)v5 setTo:v6];

  v7 = [NSNumber numberWithUnsignedInt:a2];
  [(RAPWebBundleHoursContext *)v5 setFrom:v7];

  return v5;
}

void sub_10087D530(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = objc_alloc_init(RAPWebBundleTransitSystemContext);
    v8 = [*(a1 + 32) reportedPlace];
    v9 = [v8 mapItem];
    v10 = [v9 name];
    [(RAPWebBundleTransitSystemContext *)v7 setSystem:v10];

    [(RAPWebBundleTransitSystemContext *)v7 setLines:v5];
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v6];
    v12 = v7;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [*(a1 + 40) setTransitInfos:v11];

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10087D684(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) setContainsPlaces:v6];
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v5];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10087D720(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) setContainedInPlaces:v6];
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v5];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10087D7BC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = [*(*(a1[5] + 8) + 40) context];
    (*(v1 + 16))(v1, v3, *(*(a1[6] + 8) + 40));
  }
}

void sub_10087F178(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10087F258;
  v10[3] = &unk_10164E210;
  v11 = a4;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10087F258(uint64_t a1)
{
  if (*(a1 + 32))
  {
    NSLog(@"Error fetching categories: %@", *(a1 + 32));
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v26 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v26];
    v5 = v26;
    v6 = v5;
    if (v4)
    {
      v21 = v5;
      v7 = [v4 objectForKeyedSubscript:@"com.apple.GEO"];

      v20 = v7;
      v8 = [v7 objectForKeyedSubscript:@"BusinessLocalizedCategories"];
      v9 = [*(a1 + 56) adjustedPreferredLanguages];
      v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"titles"];
            v17 = [*(a1 + 56) preferredTranslationInTitles:v16 givenPreferredLanguagesList:v9];
            if (v17)
            {
              [v10 addObject:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v18 = *(a1 + 48);
      v19 = [v10 copy];
      (*(v18 + 16))(v18, v19);

      v6 = v21;
    }

    else
    {
      NSLog(@"Error unpacking categories plist: %@", v5);
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10087F910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_10087F96C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[104] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained startedSubTest:@"transitRouteUpdate:route"];
    WeakRetained = v2;
  }
}

void sub_10087F9C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[104] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained finishedSubTest:@"transitRouteUpdate:route"];
    WeakRetained = v2;
  }
}

void sub_10087FA24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[104] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained startedSubTest:@"transitRouteUpdate:sign"];
    WeakRetained = v2;
  }
}

void sub_10087FA80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 104) & 1) == 0)
  {
    v3 = WeakRetained;
    [*(WeakRetained + 12) invalidate];
    v2 = v3[12];
    v3[12] = 0;

    [v3 finishedSubTest:@"transitRouteUpdate:sign"];
    [v3 _handleSuperDoAfterSubTestForShowingSign];
    WeakRetained = v3;
  }
}

void sub_10087FB14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSuperDoAfterSubTestForShowingSign];
}

void sub_10087FB54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained testCoordinator];
  [v1 pptTestResumeRealtimeTransitUpdates];
}

void sub_10087FC64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performRTTest];
}

void sub_1008800A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1008800D4()
{
  if (qword_10195DA80 != -1)
  {
    dispatch_once(&qword_10195DA80, &stru_10162C930);
  }

  v1 = qword_10195DA78;

  return v1;
}

void sub_100880128(uint64_t a1, int a2)
{
  v4 = sub_1008800D4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PlaceCard dropped pin inside of hiking region: %d.", v9, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [WeakRetained _hikingToken];

    if (v7)
    {
      return;
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    v8 = [*(a1 + 32) acquireHikingMapToken];
    [v6 _setHikingToken:v8];
  }

  else
  {
    [WeakRetained _setHikingToken:0];
  }
}

void sub_10088023C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ActionCoordinatorPlaceCardVC");
  v2 = qword_10195DA78;
  qword_10195DA78 = v1;
}

id sub_10088095C(uint64_t a1)
{
  [*(a1 + 32) viewControllerPresentSearchEndEditingAnimated:0];
  [*(a1 + 32) viewControllerClosed:0 animated:0];
  v2 = [*(a1 + 32) searchPinsManager];
  [v2 clearSearchPins];

  v3 = [*(a1 + 32) searchPinsManager];
  [v3 clearDirectionsPins];

  v4 = *(a1 + 32);

  return [v4 clearMapSelection];
}

void sub_100880E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100880E88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapSelectionManager];
    [v3 selectSearchResult:*(a1 + 32) animated:1];

    WeakRetained = v4;
  }
}

uint64_t sub_100880EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100880F40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100881754(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_100881864(uint64_t a1)
{
  if (+[TUCallCapabilities supportsTelephonyCalls])
  {
    v2 = objc_alloc_init(TUCallProviderManager);
    v3 = [TUDialRequest alloc];
    v4 = [v2 defaultProvider];
    v5 = [v3 initWithProvider:v4];

    v6 = [[TUHandle alloc] initWithType:2 value:*(a1 + 32)];
    [v5 setHandle:v6];
    [v5 setShowUIPrompt:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1008819AC;
    v8[3] = &unk_101661090;
    v9 = v5;
    v10 = *(a1 + 40);
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_1008819AC(uint64_t a1)
{
  v2 = [*(a1 + 32) isValid];
  v3 = *(a1 + 40);
  if (v2)
  {
    v6 = [*(a1 + 32) URL];
    (*(v3 + 16))(v3, 1, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0, 0);
  }
}

void sub_100881D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100881FD4(uint64_t a1, void *a2, void *a3)
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

void sub_100882BEC(id a1)
{
  v1 = qword_10195DA88;
  qword_10195DA88 = &off_1016EE470;
}

id sub_10088333C()
{
  if (qword_10195DAA0 != -1)
  {
    dispatch_once(&qword_10195DAA0, &stru_10162C970);
  }

  v1 = qword_10195DA98;

  return v1;
}

void sub_100883390(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsProgressBackgroundFillButton");
  v2 = qword_10195DA98;
  qword_10195DA98 = v1;
}

id sub_100884130()
{
  if (qword_10195DAB0 != -1)
  {
    dispatch_once(&qword_10195DAB0, &stru_10162C990);
  }

  v1 = qword_10195DAA8;

  return v1;
}

void sub_100884184(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsCircularProgressButton");
  v2 = qword_10195DAA8;
  qword_10195DAA8 = v1;
}

id sub_100884324(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  [*(*(a1 + 32) + 64) setUpOpacityForFadeInAnimation:a2];
  v3 = [*(a1 + 32) _backgroundView];
  [v3 setAlpha:0.0];

  v4 = *&CGAffineTransformIdentity.c;
  *&v7.a = *&CGAffineTransformIdentity.a;
  *&v7.c = v4;
  *&v7.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v8, &v7, 0.866, 0.866);
  v5 = *(a1 + 32);
  v7 = v8;
  return [v5 setTransform:&v7];
}

id sub_1008843CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100884448;
  v4[3] = &unk_101661B18;
  v4[4] = v1;
  return [v2 startProgressAnimationWithCompletion:v4];
}

void sub_100886AD8(uint64_t a1)
{
  v3 = [*(a1 + 40) selectedVehicle];
  v2 = [v3 currentVehicleState];
  [*(a1 + 32) setCurrentVehicleState:v2];
}

void sub_100886BEC(uint64_t a1)
{
  v2 = sub_100024D88();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) observedRoute];
    v4 = [v3 serverIdentifier];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v35 = 134218496;
    v36 = v4;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    *v40 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Route %lu did update step: %lu, segment: %lu", &v35, 0x20u);
  }

  v7 = *(a1 + 32);
  if (v7[8] == 1)
  {
    v8 = [v7 observedRoute];
    v9 = [v8 isEVRoute];

    if (v9)
    {
      v10 = *(a1 + 48) - 1;
      v11 = [*(a1 + 40) route];
      v12 = [v11 stepsCount];

      if (v10 < v12)
      {
        v13 = [*(*(a1 + 32) + 56) lastObject];
        if (!v13)
        {
          v28 = sub_10006D178();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v35 = 136315906;
            v36 = "[NavigationEVBadTripFeedbackCollector navigationService:didUpdateStepIndex:segmentIndex:]_block_invoke";
            v37 = 2080;
            v38 = "NavigationEVBadTripFeedbackCollector.m";
            v39 = 1024;
            *v40 = 304;
            *&v40[4] = 2080;
            *&v40[6] = "routeInfo";
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v35, 0x26u);
          }

          if (sub_100E03634())
          {
            v29 = sub_10006D178();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = +[NSThread callStackSymbols];
              v35 = 138412290;
              v36 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", &v35, 0xCu);
            }
          }

          v31 = sub_100024D88();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v35) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "routeInfo should exist by the time we get a stepIndex update.", &v35, 2u);
          }

          v32 = [EVBadTripRouteInfo alloc];
          v33 = [*(a1 + 32) observedRoute];
          v34 = [*(a1 + 32) currentVehicleState];
          v13 = [(EVBadTripRouteInfo *)v32 initWithRoute:v33 currentVehicleState:v34];

          [*(*(a1 + 32) + 56) addObject:v13];
        }

        v14 = *(*(a1 + 32) + 64);
        v15 = [NSNumber numberWithUnsignedInteger:v10];
        v16 = [v14 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [*(a1 + 40) route];
          v18 = [v17 stepAtIndex:v10];

          v19 = [v18 evInfo];
          v20 = [*(a1 + 32) currentVehicleState];
          v21 = [v20 currentBatteryCharge];

          v22 = sub_100024D88();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v16 remainingBatteryCharge];
            v24 = [v19 remainingBatteryCharge];
            v35 = 134218752;
            v36 = v10;
            v37 = 2048;
            v38 = v23;
            v39 = 2048;
            *v40 = v24;
            *&v40[8] = 2048;
            *&v40[10] = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Will save state for step: %lu, expected charge: %lu, charge from last reroute: %lu, real charge: %lu", &v35, 0x2Au);
          }

          [(EVBadTripRouteInfo *)v13 setLastTraversedStep:v18];
          v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 remainingBatteryCharge]);
          [(EVBadTripRouteInfo *)v13 setExpectedArrivalBatteryCharge:v25];

          [(EVBadTripRouteInfo *)v13 setRealArrivalBatteryCharge:v21];
        }

        else
        {
          v18 = sub_100024D88();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v26 = *(a1 + 56);
            v27 = [*(a1 + 32) stepIDToExpectedEVInfos];
            v35 = 134218498;
            v36 = v10;
            v37 = 2048;
            v38 = v26;
            v39 = 2112;
            *v40 = v27;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Did not find ev info for step: %lu, segment: %lu, in dictionary: %@", &v35, 0x20u);
          }
        }
      }
    }
  }
}

id sub_100887174(uint64_t a1)
{
  v2 = sub_100024D88();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Did reroute", v4, 2u);
  }

  return [*(a1 + 32) setObservedRoute:*(a1 + 40)];
}

id sub_100887F80(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [NSString stringWithFormat:@"This class expects that bad trip state will be checked while recording is in process"];
      v7 = 136316162;
      v8 = "[NavigationEVBadTripFeedbackCollector isBadTrip]_block_invoke";
      v9 = 2080;
      v10 = "NavigationEVBadTripFeedbackCollector.m";
      v11 = 1024;
      v12 = 167;
      v13 = 2080;
      v14 = "_isRecording";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v7, 0x30u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  result = [*(a1 + 32) _checkForBadTrip];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10088819C(uint64_t a1)
{
  v2 = sub_100024D88();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will reset and stop recording", v4, 2u);
  }

  result = [*(a1 + 32) _reset];
  *(*(a1 + 32) + 8) = 0;
  return result;
}

void sub_10088828C(uint64_t a1)
{
  v2 = sub_100024D88();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will reset and start recording", buf, 2u);
  }

  [*(a1 + 32) _reset];
  v3 = [*(*(a1 + 32) + 16) route];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    *(*(a1 + 32) + 8) = 1;
    v5 = [*(*(a1 + 32) + 16) route];
    [*(a1 + 32) setObservedRoute:v5];
  }

  else
  {
    v6 = sub_100024D88();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "We are not navigating on an EV route, will stop recording", v7, 2u);
    }

    *(*(a1 + 32) + 8) = 0;
  }
}

void sub_100889060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100889084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapAutomaticSharingButton];
}

NSString *__cdecl sub_100889878(id a1, NSURL *a2, unint64_t a3)
{
  v3 = [(NSURL *)a2 relativePath];
  v4 = [v3 lastPathComponent];

  return v4;
}

int64_t sub_1008898C8(id a1, NSURL *a2, NSURL *a3)
{
  v15 = NSURLContentModificationDateKey;
  v4 = a3;
  v5 = a2;
  v6 = [NSArray arrayWithObjects:&v15 count:1];
  v7 = [(NSURL *)v5 resourceValuesForKeys:v6 error:0];

  v8 = [v7 objectForKeyedSubscript:NSURLContentModificationDateKey];
  v14 = NSURLContentModificationDateKey;
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  v10 = [(NSURL *)v4 resourceValuesForKeys:v9 error:0];

  v11 = [v10 objectForKeyedSubscript:NSURLContentModificationDateKey];
  v12 = [v11 compare:v8];

  return v12;
}

void sub_10088A308(id a1)
{
  if (!qword_10195DAC8)
  {
    v1 = objc_alloc_init(TraceManager);
    v2 = qword_10195DAC8;
    qword_10195DAC8 = v1;
  }
}

id sub_10088A4A4(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_10088A5E8;
    v12 = sub_10088A5F8;
    v13 = 0;
    v5 = [v3 subviews];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10088A600;
    v7[3] = &unk_10162CAA0;
    v7[4] = &v8;
    v7[5] = a2;
    [v5 enumerateObjectsUsingBlock:v7];

    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

void sub_10088A5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10088A5E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10088A600(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_10088A4A4(a2, *(a1 + 40));
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_10088A6E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v4 = *(*(a1 + 32) + 56);
  v5 = [v4 countByEnumeratingWithState:&v134 objects:v146 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_77;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v135;
  do
  {
    v9 = 0;
    do
    {
      if (*v135 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v134 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v7)
        {
          v12 = [v10 integerValue];
          if (v12 >= 1)
          {
            v13 = v12;
            if ([v7 isEqualToString:@"WaitContinuously"])
            {
              v14 = [*(a1 + 32) view];
              do
              {
                --v13;
                [v14 setDebugLayoutContinuously:1];
                [*(a1 + 32) center];
                [v3 hoverAtLocation:? withDuration:?];
              }

              while (v13);
              goto LABEL_18;
            }

            if ([v7 isEqualToString:@"Wait"])
            {
              v14 = [*(a1 + 32) view];
              do
              {
                --v13;
                [v14 setDebugLayoutContinuously:0];
                [*(a1 + 32) center];
                [v3 hoverAtLocation:? withDuration:?];
              }

              while (v13);
LABEL_18:

LABEL_19:
              v11 = 0;
              goto LABEL_20;
            }

            if ([v7 isEqualToString:@"Tap"])
            {
              do
              {
                --v13;
                v15 = [*(a1 + 32) view];
                [v15 edgeInsets];
                v17 = v16;
                v19 = v18;
                v21 = v20;
                v23 = v22;

                [*(a1 + 32) center];
                v25 = v24 + ((v19 + v23) * 0.5);
                [*(a1 + 32) center];
                [v3 tap:{v25, v26 - ((v17 + v21) * 0.5)}];
                [*(a1 + 32) center];
                [v3 hoverAtLocation:? withDuration:?];
                v11 = 0;
              }

              while (v13);
              goto LABEL_20;
            }

            if ([v7 isEqualToString:@"TapLookAroundPreview"])
            {
              v27 = [*(a1 + 32) view];
              [v27 bounds];
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v35 = v34;

              v36 = v35 / v33;
              v37 = [*(a1 + 32) view];
              [v37 edgeInsets];
              v39 = v38;
              v41 = v40;

              v42 = v31 + v35;
              if (v36 <= 2.0)
              {
                v43 = v29 + 60.0 + v39;
                v44 = v42 + -60.0;
              }

              else
              {
                v43 = v29 + 60.0;
                v44 = v42 + -60.0 - v41;
              }
            }

            else
            {
              if (![v7 isEqualToString:@"TapLookAroundDone"])
              {
                if ([v7 isEqualToString:@"DoubleTap"])
                {
                  do
                  {
                    --v13;
                    [*(a1 + 32) center];
                    [v3 doubleTap:?];
                    [*(a1 + 32) center];
                    [v3 hoverAtLocation:? withDuration:?];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"PanLeft"])
                {
                  [*(a1 + 32) center];
                  v52 = *(a1 + 32);
                  v54 = v53 - v52[4];
                  [v52 center];
                  v56 = v55;
                  [*(a1 + 32) center];
                  v58 = v57;
                  [*(a1 + 32) center];
                  v60 = v59;
                  do
                  {
                    --v13;
                    [v3 dragWithStartPoint:v54 endPoint:v56 duration:{v58, v60, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"PanRight"])
                {
                  [*(a1 + 32) center];
                  v62 = v61;
                  [*(a1 + 32) center];
                  v64 = v63;
                  [*(a1 + 32) center];
                  v65 = *(a1 + 32);
                  v67 = v66 - v65[4];
                  [v65 center];
                  v69 = v68;
                  do
                  {
                    --v13;
                    [v3 dragWithStartPoint:v62 endPoint:v64 duration:{v67, v69, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"PanUp"])
                {
                  [*(a1 + 32) center];
                  v71 = v70;
                  [*(a1 + 32) center];
                  v72 = *(a1 + 32);
                  v74 = v73 - v72[4];
                  [v72 center];
                  v76 = v75;
                  [*(a1 + 32) center];
                  v78 = v77;
                  do
                  {
                    --v13;
                    [v3 dragWithStartPoint:v71 endPoint:v74 duration:{v76, v78, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"PanDown"])
                {
                  [*(a1 + 32) center];
                  v80 = v79;
                  [*(a1 + 32) center];
                  v82 = v81;
                  [*(a1 + 32) center];
                  v84 = v83;
                  [*(a1 + 32) center];
                  v86 = v85 - *(*(a1 + 32) + 32);
                  do
                  {
                    --v13;
                    [v3 dragWithStartPoint:v80 endPoint:v82 duration:{v84, v86, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"ZoomIn"])
                {
                  [*(a1 + 32) center];
                  v88 = v87;
                  [*(a1 + 32) center];
                  v90 = v89 + -10.0;
                  [*(a1 + 32) center];
                  v92 = v91;
                  [*(a1 + 32) center];
                  v94 = v93 + 10.0;
                  do
                  {
                    --v13;
                    [v3 pinchOpenWithStartPoint:v88 endPoint:v90 duration:{v92, v94, 3.0}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"ZoomOut"])
                {
                  [*(a1 + 32) center];
                  v96 = v95;
                  [*(a1 + 32) center];
                  v98 = v97 + -10.0;
                  [*(a1 + 32) center];
                  v100 = v99;
                  [*(a1 + 32) center];
                  v102 = v101 + 10.0;
                  do
                  {
                    --v13;
                    [v3 pinchCloseWithStartPoint:v96 endPoint:v98 duration:{v100, v102, 3.0}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else if ([v7 isEqualToString:@"CirclePan"])
                {
                  do
                  {
                    --v13;
                    [v3 rotate:1 withRadius:*(*(a1 + 32) + 72) rotation:*(*(a1 + 32) + 80) duration:32.0 touchCount:{6.28318, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

                else
                {
                  if (![v7 isEqualToString:@"Rotate"])
                  {
                    if ([v7 isEqualToString:@"PitchDown"])
                    {
                      [*(a1 + 32) center];
                      v104 = v103 + -65.0;
                      [*(a1 + 32) center];
                      v142 = v104;
                      v143 = v105;
                      [*(a1 + 32) center];
                      v107 = v106 + 65.0;
                      [*(a1 + 32) center];
                      v144 = v107;
                      v145 = v108;
                      [*(a1 + 32) center];
                      v110 = v109 + -65.0;
                      [*(a1 + 32) center];
                      v111 = *(a1 + 32);
                      v113 = v112 - v111[4];
                      v138 = v110;
                      v139 = v113;
                      [v111 center];
                      v115 = v114 + 65.0;
                      [*(a1 + 32) center];
                      v117 = v116 - *(*(a1 + 32) + 32);
                      v140 = v115;
                      v141 = v117;
                      do
                      {
                        --v13;
                        [v3 touchDownAtPoints:&v142 touchCount:2];
                        [v3 moveToPoints:&v138 touchCount:2 duration:*(*(a1 + 32) + 64)];
                        [v3 liftUpAtAllActivePoints];
                        [v3 hoverAtLocation:v138 withDuration:{v139, *(*(a1 + 32) + 64)}];
                      }

                      while (v13);
                    }

                    else if ([v7 isEqualToString:@"PitchUp"])
                    {
                      [*(a1 + 32) center];
                      v119 = v118 + -65.0;
                      [*(a1 + 32) center];
                      v142 = v119;
                      v143 = v120;
                      [*(a1 + 32) center];
                      v122 = v121 + 65.0;
                      [*(a1 + 32) center];
                      v144 = v122;
                      v145 = v123;
                      [*(a1 + 32) center];
                      v125 = v124 + -65.0;
                      [*(a1 + 32) center];
                      v126 = *(a1 + 32);
                      v128 = v126[4] + v127;
                      v138 = v125;
                      v139 = v128;
                      [v126 center];
                      v130 = v129 + 65.0;
                      [*(a1 + 32) center];
                      v132 = *(*(a1 + 32) + 32) + v131;
                      v140 = v130;
                      v141 = v132;
                      do
                      {
                        --v13;
                        [v3 touchDownAtPoints:&v142 touchCount:2];
                        [v3 moveToPoints:&v138 touchCount:2 duration:*(*(a1 + 32) + 64)];
                        [v3 liftUpAtAllActivePoints];
                        [v3 hoverAtLocation:v138 withDuration:{v139, *(*(a1 + 32) + 64)}];
                      }

                      while (v13);
                    }

                    goto LABEL_19;
                  }

                  do
                  {
                    --v13;
                    [v3 rotate:2 withRadius:*(*(a1 + 32) + 72) rotation:*(*(a1 + 32) + 80) duration:32.0 touchCount:{6.28318, *(*(a1 + 32) + 64)}];
                    v11 = 0;
                  }

                  while (v13);
                }

LABEL_20:

                v7 = v11;
                goto LABEL_21;
              }

              v45 = [*(a1 + 32) view];
              [v45 bounds];
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v43 = v51 + -50.0 + v47;
              v44 = v49 + 50.0;
            }

            [v3 tap:{v43, v44}];
            [v3 hoverAtLocation:v43 withDuration:{v44, *(*(a1 + 32) + 64)}];
            goto LABEL_19;
          }
        }
      }

LABEL_21:
      v9 = v9 + 1;
    }

    while (v9 != v6);
    v133 = [v4 countByEnumeratingWithState:&v134 objects:v146 count:16];
    v6 = v133;
  }

  while (v133);
LABEL_77:
}

void sub_10088B468(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 lookAroundView];

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10088B550;
  v7[3] = &unk_101660380;
  v7[4] = v5;
  v8 = v4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v4;
  [v5 onLookAroundView:v6 didBecomeAdequatelyDrawnCallback:v7];
}

void sub_10088B550(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10088B624;
  v7[3] = &unk_101660380;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 onLookAroundView:v2 didCompletionPostTransitionAnimation:v7];
}

void sub_10088B624(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10088B6E4;
  v5[3] = &unk_1016605F8;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 56);
  [v3 expandLookAroundToFullscreen:1 withLookAroundView:v6 mapItem:v4 completionBlock:v5];
}

void sub_10088B6E4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10088B798;
  v4[3] = &unk_1016605F8;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 onLookAroundView:v5 didCompletionPostTransitionAnimation:v4];
}

void sub_10088B798(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"lookAroundEnter"];
  v3 = [*(a1 + 40) lookAroundView];
  [*(a1 + 32) setupForVKTestWithMapView:v3];
  [v3 enableTestStatistics];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void sub_10088B94C(uint64_t a1)
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
  v5[2] = sub_10088BA2C;
  v5[3] = &unk_101661760;
  v6 = *(a1 + 48);
  [v3 onLookAroundView:v4 didCompletionPostTransitionAnimation:v5];
}

uint64_t sub_10088BA2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10088BAF4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10088BC94(uint64_t a1)
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

id sub_10088BFA8(uint64_t a1)
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

void sub_10088C2D8(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = v2;
  v4 = *(a1 + 32);
  if (*(v4 + 88))
  {
    if (*(v4 + 65))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10088C460;
      v8[3] = &unk_101661A90;
      v8[4] = v4;
      v9 = v2;
      [v4 enterLookAroundForTest:v8];
      v5 = v9;
    }

    else
    {
      v6 = [MapsRPTParameters alloc];
      v7 = [*(a1 + 32) testName];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10088C458;
      v10[3] = &unk_101661B18;
      v11 = *(a1 + 32);
      v5 = [(MapsRPTParameters *)v6 initWithTestName:v7 view:v3 completionHandler:v10 testActions:*(v11 + 88) actionDuration:*(v11 + 96)];

      [RPTTestRunner runTestWithParameters:v5];
    }
  }
}

void sub_10088C460(uint64_t a1)
{
  v2 = [MapsRPTParameters alloc];
  v3 = [*(a1 + 32) testName];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10088C540;
  v6[3] = &unk_101661B18;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v5 = [(MapsRPTParameters *)v2 initWithTestName:v3 view:v4 completionHandler:v6 testActions:*(v7 + 88) actionDuration:*(v7 + 96)];

  [RPTTestRunner runTestWithParameters:v5];
}

void sub_10088C6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10088C6DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initialLoadComplete];
}

void sub_10088CC00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a2 globalBrandID]);
  [v2 addObject:v3];
}

id sub_10088CC6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedLongLongValue];

  return [v2 addPreferredBrand:v3];
}

id sub_10088D638(id a1, GEOComposedTransitRouteStep *a2, unint64_t a3)
{
  v3 = [(GEOComposedTransitRouteStep *)a2 routeDetailsPrimaryArtwork];
  v4 = [v3 firstObject];

  return v4;
}

id sub_10088E298()
{
  if (qword_10195DAE0 != -1)
  {
    dispatch_once(&qword_10195DAE0, &stru_10162CC90);
  }

  v1 = qword_10195DAD8;

  return v1;
}

void sub_10088E2EC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TransitListBuilder");
  v2 = qword_10195DAD8;
  qword_10195DAD8 = v1;
}

GEOComposedString *__cdecl sub_10088EB40(id a1, GEOFormattedString *a2)
{
  v2 = a2;
  v3 = [[GEOComposedString alloc] initWithGeoFormattedString:v2];

  return v3;
}

id -[TransitDirectionsStepsListDataProvider _blockTransferItemFromStep:withBoardItem:](TransitDirectionsStepsListDataProvider *self, SEL a2, id a3, id a4)
{
  forGuidance = self->_forGuidance;
  v5 = a3;
  v6 = [MNTransitStepInstruction instructionForStep:v5 context:[TransitDirectionsListItem defaultInstructionContextForItemType:12 forGuidance:forGuidance]];
  v7 = [v5 routeDetailsPrimaryArtwork];
  v8 = [v7 firstObject];

  v9 = [[TransitDirectionsListArtworkItem alloc] initWithArtwork:v8 instructions:0];
  [(TransitDirectionsListItem *)v9 setType:12];
  [(TransitDirectionsListArtworkItem *)v9 setSelectedSize:5];
  [(TransitDirectionsListArtworkItem *)v9 setAdaptiveShieldSize:0];
  v10 = [v6 tertiaryInstructionStrings];
  [(TransitDirectionsListItem *)v9 setMajorFormattedStrings:v10];

  v13 = v5;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  [(TransitDirectionsListItem *)v9 setComposedRouteSteps:v11];

  return v9;
}

BOOL sub_100890904(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 maneuver] == 9)
  {
    v4 = [v3 startingStop];
    if ([v4 hasMuid])
    {
      v5 = [v3 endingStop];
      if ([v5 hasMuid])
      {
        v6 = [v3 startingStop];
        v7 = [v6 muid];
        v8 = [v3 endingStop];
        v9 = v7 != [v8 muid];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10088E298();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "- creating block transfer step", buf, 2u);
    }

    v11 = [*(a1 + 32) _blockTransferItemFromStep:v3 withBoardItem:*(a1 + 40)];
    [v11 setParentItem:*(a1 + 40)];
    [*(a1 + 32) _appendItem:v11 toArray:*(a1 + 48)];
    v12 = *(a1 + 32);
    v13 = [v11 toLineColor];
    v14 = [v11 alternateToLineColor];
    v15 = [v12 _fareAndOperatingHoursItemForBlockTransferStep:v3 lineColor:v13 alternateLineColor:v14 parentItem:*(a1 + 40)];

    if (v15)
    {
      v16 = sub_10088E298();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "- adding fare/operating hours item for block transfer", v18, 2u);
      }

      [*(a1 + 32) _appendItem:v15 toArray:*(a1 + 48)];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100891D28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v7];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    [v5 subItemsWithForceExpand:1];
  }

  else
  {
    [v5 subItems];
  }
  v8 = ;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100892158;
  v9[3] = &unk_10162CB80;
  v11 = *(a1 + 40);
  v12 = a3;
  v10 = *(a1 + 32);
  [v8 enumerateObjectsUsingBlock:v9];

  objc_autoreleasePoolPop(v6);
}

NSString *__cdecl sub_100891E68(id a1, TransitDirectionsListItem *a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = [NSMutableArray alloc];
  v8 = [(TransitDirectionsListItem *)v6 composedRouteSteps];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(TransitDirectionsListItem *)v6 composedRouteSteps];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(&v29 + 1) + 8 * i) stepIndex]);
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v16 = [v9 componentsJoinedByString:{@", "}];
  v17 = [NSString stringWithFormat:@"[%@]", v16];

  v18 = [NSNumber numberWithUnsignedInteger:a4];
  v19 = [v18 stringValue];

  if (a3)
  {
    v20 = [NSString stringWithFormat:@"%lu.%@", a3, v19];

    v19 = v20;
  }

  v21 = [(TransitDirectionsListItem *)v6 matchingRouteStepIndex];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = @"-";
  }

  else
  {
    v23 = [NSNumber numberWithUnsignedInteger:v21];
    v22 = [v23 stringValue];
  }

  v24 = [(TransitDirectionsListItem *)v6 type];
  if (v24 >= 0x12)
  {
    v25 = [NSString stringWithFormat:@"Unknown (%ld)", v24];
  }

  else
  {
    v25 = off_10162CCB0[v24];
  }

  v26 = [(TransitDirectionsListItem *)v6 composedRouteSteps];
  v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ | %@ (matchingStepIndex: %@, steps: %@, count: %lu)", v19, v25, v22, v17, [v26 count]);

  return v27;
}

void sub_100892158(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

id sub_100892E68(uint64_t a1)
{
  [*(a1 + 32) drawViewHierarchyInRect:1 afterScreenUpdates:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [result drawViewHierarchyInRect:1 afterScreenUpdates:{0.0, 0.0, v3, v4}];
  }

  return result;
}

void sub_1008930F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    y = CGPointZero.y;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(a1 + 40) _generateUIImageFromView:*(*(&v11 + 1) + 8 * v9) withWatermark:*(a1 + 48) size:{*(a1 + 72), *(a1 + 80), v11}];
        [v3 beginPage];
        [v10 drawAtPoint:{CGPointZero.x, y}];

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

id sub_100893640(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"dismissVLFUI"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

void sub_10089371C(uint64_t a1, void *a2)
{
  v5 = [a2 object];
  v3 = [v5 wasLastLocalizationSuccessful];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 finishedSubTest:@"runVLF"];
    [*(a1 + 32) _dismissVLFUI];
  }

  else
  {
    [v4 failedTestWithReason:@"VLF localization failed"];
  }
}

id sub_100893910(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"showVLFUI"];
  v2 = *(a1 + 32);

  return [v2 _runVLF];
}

void sub_100893F20(id a1)
{
  v1 = +[NSFileManager _maps_globalCachesURL];
  v2 = [v1 URLByAppendingPathComponent:@"ARTraces"];
  v5 = [v2 path];

  v3 = [v5 stringByAppendingPathComponent:@"ppt_recording.mov"];
  v4 = qword_10195DAE8;
  qword_10195DAE8 = v3;
}

void sub_100895008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didDismiss];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v5 = +[NSNotificationCenter defaultCenter];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v5 postNotificationName:@"MacPopoverPresentationControllerDidDismissPopover" object:v4];
}

id sub_100895D34()
{
  if (qword_10195DB40 != -1)
  {
    dispatch_once(&qword_10195DB40, &stru_10162CEB0);
  }

  v1 = qword_10195DB38;

  return v1;
}

void sub_100895D88(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsExternalDeviceState");
  v2 = qword_10195DB38;
  qword_10195DB38 = v1;
}

void sub_10089621C(id a1)
{
  v1 = qword_10195DB18;
  qword_10195DB18 = &off_1016ED010;
}

id sub_100896688()
{
  if (qword_10195DB50 != -1)
  {
    dispatch_once(&qword_10195DB50, &stru_10162CED0);
  }

  v1 = qword_10195DB48;

  return v1;
}

void sub_1008966DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsExternalDevice");
  v2 = qword_10195DB48;
  qword_10195DB48 = v1;
}

void sub_100896A94(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100896B44;
  v4[3] = &unk_101661A90;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_100896B44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 route];
  [v2 navigationService:v3 didReroute:v4 rerouteReason:0];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [v5 navigationState];

  return [v6 navigationService:v5 didChangeNavigationState:v7];
}

void sub_100896FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  if (IOHIDEventGetType() == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    v7 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 12 && v6 == 670 && !v7)
    {
      [v8 _handleIOHIDEvent:a4];
    }
  }
}

void sub_100897428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MapsExternalDeviceRepeatNavigationInstructionNotification" object:WeakRetained userInfo:0];
}

void sub_100897AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, char a32)
{
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100897B5C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100898030;
    block[3] = &unk_101661678;
    v9 = v6;
    v10 = a2;
    v8 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_100897C1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100897C34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EAAccessoryDestinationStatusIdentifierKey];

  v6 = sub_100896688();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v19 = 134349314;
    v20 = WeakRetained;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got destination status notification with identifier: %@", &v19, 0x16u);
  }

  if (v5 && [v5 isEqualToString:*(a1 + 32)])
  {
    [*(*(*(a1 + 56) + 8) + 40) invalidate];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:*(*(*(a1 + 64) + 8) + 40)];

    v9 = [v3 userInfo];
    v10 = [v9 objectForKeyedSubscript:EAAccessoryDestinationStatusDidSucceedKey];
    v11 = [v10 BOOLValue];

    v12 = sub_100896688();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_loadWeakRetained((a1 + 72));
      v14 = *(a1 + 32);
      v15 = [NSNumber numberWithBool:v11];
      v16 = [v3 userInfo];
      v17 = [v16 objectForKeyedSubscript:EAAccessoryDestinationStatusParametersUsedKey];
      v19 = 134349826;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Destination sharing status notification (destination:%@, status:%@, used:%@)", &v19, 0x2Au);
    }

    if (v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = [objc_opt_class() _destinationHandoffErrorWithReason:3];
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100897EDC(uint64_t a1)
{
  v2 = sub_100896688();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = *(a1 + 32);
    v5 = [NSNumber numberWithDouble:*(a1 + 72)];
    v9 = 134349570;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%{public}p] Forcibly removing destination sharing notification observer, took too long (destination:%@, timeout:%@s)", &v9, 0x20u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(*(*(a1 + 56) + 8) + 40)];

  v7 = *(a1 + 48);
  v8 = [objc_opt_class() _destinationHandoffErrorWithReason:4];
  (*(v7 + 16))(v7, 0, v8);
}

void sub_100898344(uint64_t a1)
{
  if (*(a1 + 32) == 2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v2 = +[_TtC4Maps22CarPlayMetadataUpdater mapsExternalNavigationOwnershipUpdatedNotification];
    [v3 postNotificationName:v2 object:0 userInfo:0];
  }
}

void sub_1008994E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100899508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkScreenOwnershipIfNeeded:v3];
}

void sub_100899FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100899FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 object];
  if ([v4 isCarScene])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = sub_100896688();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134349314;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] notified a CarPlay scene will enter foreground: %@", &v7, 0x16u);
    }

    [WeakRetained _updateStateForRecievedNotification:v3];
  }
}

id sub_10089A200(uint64_t a1)
{
  result = [*(a1 + 32) _isCarPlaySessionActive];
  if ((result & 1) == 0)
  {
    v3 = sub_100896688();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 134349056;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] CarPlay session did disconnect, disconnecting AV device", &v5, 0xCu);
    }

    return [*(a1 + 32) setExternalDevice:0];
  }

  return result;
}

void sub_10089A3E0(uint64_t a1)
{
  if ([*(a1 + 32) _isCarPlaySessionActive])
  {
    v2 = sub_100896688();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 134349056;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] CarPlay session did connect, connecting AV device", &v6, 0xCu);
    }

    v4 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
    v5 = [v4 carPlayExternalDevice];
    [*(a1 + 32) setExternalDevice:v5];
  }
}

void sub_10089A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@:%@", a2, a3];
  [v3 addObject:v4];
}

uint64_t sub_10089AE74(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10089AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a5);
  }

  return result;
}

const __CFString *MapsExternalDeviceHandoffResultStringForAnalytics(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:@"com.apple.Maps.externaldevice"];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if ([v2 code] == 1)
  {
    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"__handoff_error_key"];

    if (v6 && (v7 = [v6 integerValue], v7 <= 4))
    {
      v8 = off_10162CEF0[v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_7:
    v8 = @"success";
  }

LABEL_11:

  return v8;
}

void sub_10089B9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_10089BA14(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 setupWithModel:v7 cellStyle:{objc_msgSend(WeakRetained, "cellStyle")}];

      v6 = [WeakRetained tableView];
      [v6 reloadData];
    }
  }
}

void sub_10089BF94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:MKErrorGEOErrorKey];
    v5 = [v4 intValue];

    if (v5 == -4)
    {
      v6 = [*(a1 + 32) userInfo];
      v7 = [v6 objectForKeyedSubscript:MKErrorGEOErrorUserInfoKey];

      v8 = [v7 objectForKeyedSubscript:GEOErrorThrottlingTimeUntilResetKey];
      [v8 doubleValue];
      v10 = v9;

      [CarQuickRouteRefreshOperation engageFullThrottleForInterval:v10];
      [*(a1 + 40) _Car_queueUpdateETA];
    }
  }

  v11 = [*(*(a1 + 48) + 8) allKeysForObject:*(a1 + 40)];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      [v13 travelTime];
      if (v14 >= 0.0)
      {
        v15 = [*(a1 + 48) itemAtIndexPath:v12];
        [*(*(a1 + 48) + 16) setObject:*(a1 + 56) forKey:v15];
      }
    }

    v16 = [*(*(a1 + 48) + 56) cellForRowAtIndexPath:v12];
    if (!v16)
    {
      goto LABEL_19;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_15;
    }

    [*(a1 + 56) travelTime];
    if (v17 < 0.0)
    {
      v18 = sub_100006E1C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 56);
        v23 = 138412802;
        v24 = v19;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CarSearchItemCell: Error : %@ for cell : %@ with ETA : %@", &v23, 0x20u);
      }

      [v16 updateUIForError];
      goto LABEL_19;
    }

    if (!*(a1 + 32))
    {
LABEL_15:
      if (!*(a1 + 56))
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    v21 = sub_100006E1C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 56);
      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CarSearchItemCell: Setting ETA for %@ : %@", &v23, 0x16u);
    }

    [*(a1 + 48) _applyRouteETA:*(a1 + 56) toCell:v16 animated:*(a1 + 64)];
    goto LABEL_19;
  }

LABEL_20:
}

id sub_10089CB84(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  [*(a1 + 32) setUserIsActiveStateChangeQueued:0];
  v2 = *(a1 + 32);

  return [v2 continueQuickRouteETAs];
}

int64_t sub_10089D1FC(id a1, RideBookingCurrencyAmount *a2, RideBookingCurrencyAmount *a3)
{
  v4 = a3;
  v5 = [(RideBookingCurrencyAmount *)a2 amount];
  v6 = [(RideBookingCurrencyAmount *)v4 amount];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10089DA10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) amount];
  v5 = [v4 formattedStringIncludeSymbol:0];
  if (v5)
  {
    [v3 setPlaceholder:v5];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"ridesharing.feedback.tip.customTip.placeholderAmount" value:@"localized string not found" table:0];
    [v3 setPlaceholder:v7];
  }

  [v3 setKeyboardType:8];
  [v3 setLeftViewMode:3];
  v8 = objc_alloc_init(UILabel);
  v9 = [NSAttributedString alloc];
  v10 = *(a1 + 40);
  v18 = NSForegroundColorAttributeName;
  v11 = +[UIColor lightGrayColor];
  v19 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v13 = [v9 initWithString:v10 attributes:v12];
  [v8 setAttributedText:v13];

  [v8 sizeToFit];
  v14 = [UIView alloc];
  [v8 frame];
  v16 = v15 + 5.0;
  [v8 frame];
  v17 = [v14 initWithFrame:{0.0, 0.0, v16}];
  [v17 addSubview:v8];
  [v3 setLeftView:v17];
}

void sub_10089DC20(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 lastObject];
  v10 = [v3 text];

  if (![v10 length])
  {
    v4 = [*(a1 + 32) textFields];
    v5 = [v4 lastObject];
    v6 = [v5 placeholder];

    v10 = v6;
  }

  v7 = [RideBookingCurrencyAmount alloc];
  v8 = [NSDecimalNumber decimalNumberWithString:v10];
  v9 = [(RideBookingCurrencyAmount *)v7 initWithAmount:v8 currencyCode:*(a1 + 48)];
  [*(a1 + 40) setAmount:v9];

  [*(a1 + 56) _selectedOption:*(a1 + 40) fromOptions:*(a1 + 64)];
}

void sub_10089E9F0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DBB8;
  qword_10195DBB8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DBB8 setLocale:v3];
}

void sub_10089EAF0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DBA8;
  qword_10195DBA8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DBA8 setLocale:v3];
}

void sub_10089EBF0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DB98;
  qword_10195DB98 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DB98 setLocale:v3];
}

void sub_10089ECF0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DB88;
  qword_10195DB88 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DB88 setLocale:v3];
}

void sub_10089EDF0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DB78;
  qword_10195DB78 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DB78 setLocale:v3];
}

void sub_10089EF04(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DB68;
  qword_10195DB68 = v1;

  [qword_10195DB68 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DB68 setLocale:v3];
}

void sub_10089F000(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DB58;
  qword_10195DB58 = v1;

  [qword_10195DB58 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DB58 setLocale:v3];
}

void sub_10089F0E4(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10195DBD8;
  qword_10195DBD8 = v1;

  [qword_10195DBD8 setUnitsStyle:3];
  [qword_10195DBD8 setAllowedUnits:112];
  [qword_10195DBD8 setMaximumUnitCount:2];
  v3 = qword_10195DBD8;

  [v3 setCollapsesLargestUnit:1];
}

void sub_10089F1BC(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10195DBC8;
  qword_10195DBC8 = v1;

  [qword_10195DBC8 setUnitsStyle:2];
  [qword_10195DBC8 setAllowedUnits:112];
  [qword_10195DBC8 setMaximumUnitCount:2];
  v3 = qword_10195DBC8;

  [v3 setCollapsesLargestUnit:1];
}

void sub_10089F4D4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFTileObserver");
  v2 = qword_10195DBE8;
  qword_10195DBE8 = v1;
}

void sub_10089FE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10089FE98(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = sub_100052314();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 134349314;
        v14 = WeakRetained;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Got error when trying to determine VLF tile availability: %@", &v13, 0x16u);
      }

      [WeakRetained setAreTilesAvailable:0];
      v9 = +[NSDate date];
      [WeakRetained setLastErrorDate:v9];
    }

    else
    {
      v10 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (a2)
      {
        if (v10)
        {
          v13 = 134349056;
          v14 = WeakRetained;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] VLF tiles are available", &v13, 0xCu);
        }

        v11 = WeakRetained;
        v12 = 1;
      }

      else
      {
        if (v10)
        {
          v13 = 134349056;
          v14 = WeakRetained;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] VLF tiles are not available", &v13, 0xCu);
        }

        v11 = WeakRetained;
        v12 = 0;
      }

      [v11 setAreTilesAvailable:v12];
      [WeakRetained setPreviouslyCheckedCoordinate:{*(a1 + 40), *(a1 + 48)}];
    }

    [WeakRetained setAvailabilityCheckInFlight:0];
  }
}

void sub_1008A0F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1008A0F84(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008A10AC;
    block[3] = &unk_10164CF68;
    objc_copyWeak(&v15, a1 + 6);
    v11 = a1[4];
    v12 = v5;
    v13 = v6;
    v14 = a1[5];
    dispatch_async(v9, block);

    objc_destroyWeak(&v15);
  }
}

void sub_1008A10AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleResponseForTicket:*(a1 + 32) mapItems:*(a1 + 40) error:*(a1 + 48) completion:*(a1 + 56)];
}

id sub_1008A1450()
{
  if (qword_10195DC00 != -1)
  {
    dispatch_once(&qword_10195DC00, &stru_10162D158);
  }

  v1 = qword_10195DBF8;

  return v1;
}

void sub_1008A14A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsVideoPlayerView");
  v2 = qword_10195DBF8;
  qword_10195DBF8 = v1;
}

id sub_1008A42B4()
{
  if (qword_10195DC10 != -1)
  {
    dispatch_once(&qword_10195DC10, &stru_10162D178);
  }

  v1 = qword_10195DC08;

  return v1;
}

void sub_1008A4308(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ARSessionDebugLogger");
  v2 = qword_10195DC08;
  qword_10195DC08 = v1;
}

void sub_1008A5828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008A5844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didStopDownload];
    WeakRetained = v2;
  }
}

void sub_1008A6AF0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1008A6B3C(uint64_t a1)
{
  [GEOAPPortal captureUserAction:486 target:112 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained actionDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 subscriptionInfo];
  [v2 offlineMapDetailsActionSectionControllerDidSelectDownloadNowOnPairedDevice:v4];
}

void sub_1008A6BE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained actionDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 subscriptionInfo];
  [v2 offlineMapDetailsActionSectionControllerDidSelectRemoveFromPairedDevice:v4];
}

void sub_1008A6C6C(uint64_t a1)
{
  [GEOAPPortal captureUserAction:484 target:112 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained actionDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 subscriptionInfo];
  [v2 offlineMapDetailsActionSectionControllerDidSelectAddToPairedDevice:v4];
}

id sub_1008A7988(uint64_t a1)
{
  v2 = sub_100014EFC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Thermal pressure updated", v4, 2u);
  }

  return [*(a1 + 32) setCurrentLightLevel:{objc_msgSend(*(a1 + 32), "_computedLightLevel")}];
}

void sub_1008A9838(id a1)
{
  v1 = objc_alloc_init(UserProfileLinkOfflineMapsProvider);
  v2 = qword_10195DC38;
  qword_10195DC38 = v1;
}

id sub_1008AAA10(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) view];
  [v3 setAlpha:v2];

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 40);

  return [v8 setFrame:{v4, v5, v6, v7}];
}

id sub_1008AAA74(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAlpha:1.0];
  v2 = [*(a1 + 40) contentView];
  [v2 setAlpha:1.0];

  [*(a1 + 48) removeFromSuperview];
  v3 = *(a1 + 56);

  return [v3 completeTransition:1];
}

void sub_1008AB694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _consumeUpdatedGarage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1008AF884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008AF8A8(uint64_t a1, void *a2, void *a3)
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
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "VehicleListVC - failed to get virtual garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1008AFA00;
      v10[3] = &unk_101661A90;
      v11 = WeakRetained;
      v12 = v5;
      dispatch_async(&_dispatch_main_q, v10);

      v9 = v11;
    }
  }
}

void sub_1008B0534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 unpinSelectedTransitLine];

    WeakRetained = v3;
  }
}

void sub_1008B0590(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 pinSelectedTransitLine];

    WeakRetained = v3;
  }
}

void sub_1008B05EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 viewLineOnMap];

    WeakRetained = v3;
  }
}

void sub_1008B0648(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 showDirectionsToSelectedTransitStop];

    WeakRetained = v3;
  }
}

void sub_1008B06A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 showLineInfo];

    WeakRetained = v3;
  }
}

void sub_1008B0F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008B0FAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openContact];
}

void sub_1008B1498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008B14B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeContact:*(a1 + 32) fromSection:{objc_msgSend(*(a1 + 40), "section")}];
}

void sub_1008B18D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1008B18F4(id *a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1008B19B0;
  v3[3] = &unk_10164D610;
  v7 = a2;
  objc_copyWeak(&v6, a1 + 6);
  v4 = a1[4];
  v5 = a1[5];
  dispatch_async(&_dispatch_main_q, v3);

  objc_destroyWeak(&v6);
}

void sub_1008B19B0(uint64_t a1)
{
  v2 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v2 == 1)
  {
    [WeakRetained _updateWithType:{objc_msgSend(*(a1 + 32), "type")}];
  }

  else
  {
    v3 = [WeakRetained actionsTableView];
    [v3 deselectRowAtIndexPath:*(a1 + 40) animated:1];
  }
}

void sub_1008B2B90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1008B2BBC(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sessionController];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 shortcut];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008B2D08;
  v8[3] = &unk_101661368;
  v10 = a2;
  objc_copyWeak(&v9, (a1 + 32));
  [v5 createOrUpdateMeCardWithFavorite:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void sub_1008B2CC0(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _close];
  }
}

void sub_1008B2D08(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008B2DA8;
    block[3] = &unk_101661B98;
    objc_copyWeak(v4, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v4);
  }
}

void sub_1008B2DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close];
}

void sub_1008B38E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1008B3914(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _openContact];
    WeakRetained = v2;
  }
}

void sub_1008B3958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _refineAction];
    WeakRetained = v2;
  }
}

void sub_1008B399C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _removeAction];
    WeakRetained = v2;
  }
}

void sub_1008B3D18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(*(a1 + 32) + 312) shortcut];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save shortcut: %@", &v5, 0xCu);
    }
  }
}

void sub_1008B54D0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 updatedLaneGuidanceHeight:*(a1 + 40)];

  v3 = [*(a1 + 32) laneGuidanceInfo];
  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) laneGuidanceView];
  [v5 setAlpha:v4];

  v7 = [*(a1 + 32) view];
  v6 = [v7 superview];
  [v6 layoutIfNeeded];
}

void sub_1008B57B4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) layoutProgress];
    if (v2 > 0.0)
    {
      sub_100A5FE68();
    }

    else
    {
      sub_100A5FDCC();
    }
    v5 = ;
    [*(*(a1 + 32) + 48) setOverlayColor:v5];
  }

  else
  {
    v5 = sub_1000808D8();
    [*(a1 + 32) layoutProgress];
    v4 = [v5 colorWithAlphaComponent:v3 * 0.239999995];
    [*(*(a1 + 32) + 48) setOverlayColor:v4];
  }
}

void sub_1008B6580(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [*(a1 + 32) allValues];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [WeakRetained _updateAnalyticsWithRideStatus:*(*(&v9 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    v8 = objc_loadWeakRetained(WeakRetained + 1);
    [v8 rideStatusMapDidChange:*(a1 + 32)];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "RideBookingRideStatusObserverProxy.m";
      v16 = 1026;
      v17 = 95;
      v18 = 2082;
      v19 = "[RideBookingRideStatusObserverProxy rideStatusMapDidChange:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008B6928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008B6954(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1008B6A30;
  v5[3] = &unk_101660C70;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v9);
}

void sub_1008B6A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateAnalyticsWithRideStatus:*(a1 + 32) cancelError:*(a1 + 40) handling:1];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingRideStatusObserverProxy.m";
      v7 = 1026;
      v8 = 82;
      v9 = 2082;
      v10 = "[RideBookingRideStatusObserverProxy cancelRideWithRideStatus:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_1008B6D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008B6D60(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008B6E88;
  v14[3] = &unk_10164CFB8;
  objc_copyWeak(&v20, a1 + 6);
  v15 = a1[4];
  v16 = v9;
  v10 = a1[5];
  v18 = v8;
  v19 = v10;
  v17 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, v14);

  objc_destroyWeak(&v20);
}

void sub_1008B6E88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateAnalyticsWithRideStatus:*(a1 + 32) cancelError:*(a1 + 40) handling:0];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingRideStatusObserverProxy.m";
      v7 = 1026;
      v8 = 68;
      v9 = 2082;
      v10 = "[RideBookingRideStatusObserverProxy checkIfCanCancelRideWithRideStatus:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_1008B71C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008B71EC(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1008B72C8;
  v5[3] = &unk_101660C70;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v9);
}

void sub_1008B72C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateAnalyticsWithRideStatus:*(a1 + 32) feedbackError:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingRideStatusObserverProxy.m";
      v7 = 1026;
      v8 = 54;
      v9 = 2082;
      v10 = "[RideBookingRideStatusObserverProxy sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

id *sub_1008B7590(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] setOverrideUserInterfaceStyle:2];
  }

  return result;
}

void sub_1008B76B0(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 isInNavigatingState];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 setHidden:1];
  }
}

void sub_1008B84C0(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1008B8570;
  v4[3] = &unk_101661090;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_1008B8570(uint64_t a1)
{
  if ([*(a1 + 32) authorizationStatus])
  {
    [GEOAPPortal captureUserAction:319 target:29 value:0];
    v2 = [NSURL URLWithString:UIApplicationOpenNotificationSettingsURLString];
    v3 = +[UIApplication sharedApplication];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1008B8788;
    v5[3] = &unk_10165F438;
    v6 = *(a1 + 40);
    [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:v5];
  }

  else
  {
    [GEOAPPortal captureUserAction:320 target:29 value:0];
    v4 = +[UNUserNotificationCenter currentNotificationCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1008B8704;
    v7[3] = &unk_1016382C0;
    v8 = *(a1 + 40);
    [v4 requestAuthorizationWithOptions:14 completionHandler:v7];

    v2 = v8;
  }
}

void sub_1008B8704(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008B8798;
  block[3] = &unk_101661760;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1008B8854(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1008B8900;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_1008B8900(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) authorizationStatus] == 0;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

id sub_1008B9228()
{
  if (qword_10195DC58 != -1)
  {
    dispatch_once(&qword_10195DC58, &stru_10162D510);
  }

  v1 = qword_10195DC50;

  return v1;
}

void sub_1008B927C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsAppDelegate");
  v2 = qword_10195DC50;
  qword_10195DC50 = v1;
}

void sub_1008B9AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
  if ([*(a1 + 40) originIsWatch])
  {
    v6 = +[CarDisplayController sharedInstance];
    v7 = [v6 isCurrentlyConnectedToAnyCarScene];

    if ((v7 & 1) == 0)
    {
      *(&v13 + 1) = 0;
    }
  }

  v8 = *(a1 + 48);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [v8 startNavigationWithRouteCollection:v3 navigationDetailsOptions:v9];
}

void sub_1008B9B88(uint64_t a1)
{
  v2 = sub_1008B9228();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Starting navigation with recreated navigable route", v7, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [RouteCollection alloc];
  v8 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(RouteCollection *)v4 initWithRoutes:v5 currentRouteIndex:0];
  (*(v3 + 16))(v3, v6);
}

id sub_1008B9C90(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueRouteID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1008B9CD4(id a1, NSError *a2, GEODirectionsError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1008B9228();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to convert provided persistent data to navigable route: %@ %@", &v8, 0x16u);
  }

  v7 = +[IPCServer sharedServer];
  [v7 navigationStateDidChangeTo:2 reason:@"Unable to create navigable route from provided persistent data"];
}

void sub_1008BA294(id *a1)
{
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:MNErrorInterruptionDatesKey];

  GEOConfigGetDouble();
  v5 = v4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  v8 = v6;
  if (!v7)
  {
    goto LABEL_28;
  }

  v9 = v7;
  v10 = *v42;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v42 != v10)
      {
        objc_enumerationMutation(v6);
      }

      [*(*(&v41 + 1) + 8 * i) timeIntervalSinceNow];
      if (v5 > -v12)
      {

        v8 = [NSMutableString stringWithString:@"navd crashed while navigating:\n"];
        v13 = objc_alloc_init(NSDateFormatter);
        [v13 setDateFormat:@"YYYY-MM-dd HH:mm:ssZ"];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v38;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v38 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [v13 stringFromDate:*(*(&v37 + 1) + 8 * j)];
              [v8 appendFormat:@"• %@\n", v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v16);
        }

        v20 = objc_opt_new();
        v21 = [a1[5] hardwareModel];
        v22 = [a1[6] buildVersion];
        v23 = [NSString stringWithFormat:@"navd interruptions detected (%@/%@)", v21, v22];
        [v20 setTitle:v23];

        [v20 addNote:v8];
        [v20 setClassification:2];
        [v20 setReproducibility:5];
        v24 = +[MapsRadarComponent mapsNavFrameworkComponent];
        [v20 setComponent:v24];

        v25 = sub_100035E6C();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v26 = a1[5];
        if (!v26)
        {
          v31 = @"<nil>";
          goto LABEL_26;
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

            goto LABEL_24;
          }
        }

        v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_24:

LABEL_26:
        *buf = 138543362;
        v46 = v31;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for nav service failure", buf, 0xCu);

LABEL_27:
        v32 = +[MapsRadarController sharedInstance];
        v33 = [a1[4] userInfo];
        v34 = [v33 objectForKey:MNErrorInternalDescriptionKey];
        v35 = [v34 lowercaseString];
        v36 = [a1[5] chromeViewController];
        [v32 launchTTRWithRadar:v20 promptTitle:v35 fromViewController:v36];

        goto LABEL_28;
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v8 = v6;
LABEL_28:
}

id sub_1008BAD7C(uint64_t a1)
{
  v2 = sub_1008B9228();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) explanation];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Removing priority assertion %@", &v5, 0xCu);
  }

  return [*(a1 + 32) invalidate];
}

void sub_1008BB090(id a1, RBSAssertion *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1008B9228();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Assertion: %@ will invalidate. Error: %@", &v7, 0x16u);
  }
}

void sub_1008BB760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1008BB7B0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isCurrentlyConnectedToAnyCarScene];

  [WeakRetained setDesiredIdleTimerState:a2 & (v4 ^ 1) forReason:2];
}

void sub_1008BB834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSecureAppAssertion];
}

void sub_1008BB874(id a1)
{
  if (![UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay])
  {
    v1 = sub_100799E70();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Undimming the screen", v2, 2u);
    }

    SBSUndimScreen();
  }
}

void sub_1008BB958(id a1)
{
  if (![UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay])
  {
    v1 = sub_100799E70();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Undimming the screen (Transit)", v2, 2u);
    }

    SBSUndimScreen();
  }
}

void sub_1008BBBE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [(NSError *)v2 code];
    v5 = GEOFindOrCreateLog();
    v6 = v5;
    if (v4 == 5)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        v7 = "Invalidated secure app assertion for Maps navigation";
        v8 = v6;
        v9 = OS_LOG_TYPE_INFO;
        v10 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      v7 = "Failed to acquire secure app assertion for Maps navigation: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_7;
    }
  }
}

void sub_1008BC5EC(uint64_t a1)
{
  v1 = [*(a1 + 32) idleTimerController];
  [v1 setDesiredIdleTimerState:0 forReason:1];
}

void sub_1008BC89C(id a1)
{
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Navigation status bar assertion invalidated", v2, 2u);
  }
}

void sub_1008BC918(id a1, BOOL a2)
{
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "Acquired navigation status bar assertion";
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
    v5 = "Failed acquire to navigation status bar assertion";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void sub_1008BCC68(uint64_t a1)
{
  v2 = sub_1008B9228();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "executing cleanupAfterCarPlayDisconnected()", v4, 2u);
  }

  [*(a1 + 32) _updateSecureAppAssertion];
  v3 = [*(a1 + 32) appCoordinator];
  [v3 hideFullscreenDirectionsList];
}

void sub_1008BCCF4(uint64_t a1)
{
  v2 = sub_1008B9228();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Main app scene is not connected; opening main app scene first", buf, 2u);
  }

  v3 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008BCDE0;
  block[3] = &unk_101661760;
  v5 = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

uint64_t sub_1008BCDE0(uint64_t a1)
{
  v2 = sub_1008B9228();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Main app scene timer fired; executing cleanupAfterCarPlayDisconnected()", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1008BD508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008BD528(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained;
    [WeakRetained[7] loadVisitsWithCompletionHandler:&stru_10162D360];
    WeakRetained = v4;
  }
}

void sub_1008BD590(id a1, BOOL a2, NSError *a3)
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

void sub_1008BD660(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished Loading visits. Status %@", &v6, 0xCu);
  }
}

void sub_1008BF384(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1008BF3A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createSubmissionManagerIfNeeded];
}

uint64_t sub_1008BF52C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1008BF544(uint64_t a1, int a2)
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

void sub_1008C13B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 168));
  objc_destroyWeak((v1 - 160));
  _Unwind_Resume(a1);
}

void sub_1008C13F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798E54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User selected to pair accessory (%@) to vehicle: %@", &v7, 0x16u);
  }

  [VehicleDisambiguator pairAccessory:*(a1 + 32) withVehicle:v3];
  v6 = +[VGVirtualGarageService sharedService];
  [v6 virtualGarageSelectVehicle:v3];
}

void sub_1008C14EC(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Marking vehicle combination as viewed: %@", &v3, 0xCu);
  }

  sub_100F359AC(v1);
}

void sub_1008C15B0(id *a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008C2BDC;
  block[3] = &unk_10162D698;
  objc_copyWeak(&v10, a1 + 7);
  v8 = a1[5];
  v6 = v3;
  v7 = a1[4];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_1008C16A4(id *a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008C210C;
  block[3] = &unk_10162D698;
  objc_copyWeak(&v10, a1 + 7);
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_1008C1794(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v12 = [v5 vehicles];
    v13 = [v12 count];

    if (!v13)
    {
      v7 = sub_100798E54();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v8 = "Garage doesn't have any vehicles to pair, aborting.";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 2;
      goto LABEL_4;
    }

    if ([VehicleDisambiguator isAccessory:*(a1 + 32) alreadyPairedWithVehicleInGarage:v5])
    {
      v7 = sub_100798E54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v83 = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "The current accessory (%@) is already paired with a vehicle in the garage.", buf, 0xCu);
      }

      goto LABEL_78;
    }

    v15 = *(a1 + 40);
    v16 = [v5 vehicles];
    v7 = (*(v15 + 16))(v15, v16);

    LOBYTE(v15) = sub_100F3567C(v7);
    v17 = sub_100798E54();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v18)
      {
        v19 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v83 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "There are vehicles to pair, will try to find a match for accessory: %@.", buf, 0xCu);
      }

      v20 = *(a1 + 32);
      v21 = [v5 vehicles];
      v17 = [VehicleDisambiguator findPossibleMatchesForAccessory:v20 inVehicles:v21];

      if (![v17 count])
      {
        v23 = sub_100798E54();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Disambiguator didn't find any vehicles to pair with, aborting.", buf, 2u);
        }

        goto LABEL_76;
      }

      if ([v17 count]== 1)
      {
        v22 = [v17 allKeys];
        v23 = [v22 firstObject];

        v24 = [v17 objectForKeyedSubscript:v23];
        [v24 floatValue];
        v26 = v25;

        v27 = sub_100798E54();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
        if (v26 == 1.0)
        {
          if (v28)
          {
            *buf = 138412290;
            v83 = v23;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Found a perfect match in vehicle: %@., will pair it with accessory.", buf, 0xCu);
          }

          v29 = 48;
        }

        else
        {
          if (v28)
          {
            v65 = [*(a1 + 32) identifier];
            *buf = 138412546;
            v83 = v23;
            v84 = 2112;
            v85 = v65;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Disambiguator found a probable match in single vehicle: %@. Will present popup to pair with accessory: %@.", buf, 0x16u);
          }

          v29 = 56;
        }

        v66 = *(a1 + v29);
        goto LABEL_75;
      }

      v23 = [v17 keysSortedByValueUsingComparator:&stru_10162D6E0];
      v47 = sub_100798E54();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = v23;
        v49 = v48;
        if (v48)
        {
          if ([v48 count])
          {
            v69 = v47;
            v70 = v23;
            v72 = a1;
            v74 = v17;
            v76 = v7;
            v77 = v5;
            v50 = [NSMutableArray arrayWithCapacity:[v49 count]];
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v68 = v49;
            v51 = v49;
            v52 = [v51 countByEnumeratingWithState:&v78 objects:buf count:16];
            if (!v52)
            {
              goto LABEL_63;
            }

            v53 = v52;
            v54 = *v79;
            while (1)
            {
              v55 = 0;
              do
              {
                if (*v79 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v78 + 1) + 8 * v55);
                if (v56)
                {
                  v57 = objc_opt_class();
                  v58 = NSStringFromClass(v57);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v59 = [v56 performSelector:"accessibilityIdentifier"];
                  v60 = v59;
                  if (v59 && ![v59 isEqualToString:v58])
                  {
                    v61 = [NSString stringWithFormat:@"%@<%p, %@>", v58, v56, v60];
                  }

                  else
                  {

LABEL_56:
                    v61 = [NSString stringWithFormat:@"%@<%p>", v58, v56];
                  }

                  goto LABEL_59;
                }

                v61 = @"<nil>";
LABEL_59:

                [v50 addObject:v61];
                v55 = v55 + 1;
              }

              while (v53 != v55);
              v62 = [v51 countByEnumeratingWithState:&v78 objects:buf count:16];
              v53 = v62;
              if (!v62)
              {
LABEL_63:

                v63 = [v51 componentsJoinedByString:@", "];
                v64 = [NSString stringWithFormat:@"<%p> [%@]", v51, v63];

                v5 = v77;
                v17 = v74;
                v7 = v76;
                v23 = v70;
                a1 = v72;
                v49 = v68;
                v47 = v69;
                goto LABEL_73;
              }
            }
          }

          v64 = [NSString stringWithFormat:@"<%p> (empty)", v49];
        }

        else
        {
          v64 = @"<nil>";
        }

LABEL_73:

        v67 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v83 = v64;
        v84 = 2112;
        v85 = v67;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Disambiguator found multiple possible vehicles to pair: %@. Will present user with options to pair with accessory: %@.", buf, 0x16u);
      }

      v66 = *(a1 + 64);
LABEL_75:
      (*(v66 + 16))(v66, v23);
LABEL_76:

      goto LABEL_77;
    }

    if (v18)
    {
      v30 = [v5 vehicles];
      v31 = v30;
      if (v30)
      {
        if ([v30 count])
        {
          v73 = v17;
          v75 = v7;
          v32 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v71 = v31;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v78 objects:buf count:16];
          if (!v34)
          {
            goto LABEL_40;
          }

          v35 = v34;
          v36 = *v79;
          while (1)
          {
            v37 = 0;
            do
            {
              if (*v79 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v78 + 1) + 8 * v37);
              if (v38)
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_33;
                }

                v41 = [v38 performSelector:"accessibilityIdentifier"];
                v42 = v41;
                if (v41 && ![v41 isEqualToString:v40])
                {
                  v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];
                }

                else
                {

LABEL_33:
                  v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
                }

                goto LABEL_36;
              }

              v43 = @"<nil>";
LABEL_36:

              [v32 addObject:v43];
              v37 = v37 + 1;
            }

            while (v35 != v37);
            v44 = [v33 countByEnumeratingWithState:&v78 objects:buf count:16];
            v35 = v44;
            if (!v44)
            {
LABEL_40:

              v45 = [v33 componentsJoinedByString:{@", "}];
              v46 = [NSString stringWithFormat:@"<%p> [%@]", v33, v45];

              v6 = 0;
              v17 = v73;
              v7 = v75;
              v31 = v71;
              goto LABEL_70;
            }
          }
        }

        v46 = [NSString stringWithFormat:@"<%p> (empty)", v31];
      }

      else
      {
        v46 = @"<nil>";
      }

LABEL_70:

      *buf = 138412290;
      v83 = v46;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Won't present disambiguation for vehicles: %@, because it was already presented many times.", buf, 0xCu);
    }

LABEL_77:

    goto LABEL_78;
  }

  v7 = sub_100798E54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v83 = v6;
    v8 = "Failed to get info about vehicles in the garage, aborting. error: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
  }

LABEL_78:
}

void sub_1008C210C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = +[CarDisplayController sharedInstance];
    v4 = a1[5];
    v5 = a1[4];
    v6 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    if (v4)
    {
      v23 = v3;
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Dismiss [CarPlay value:Disambiguation]" table:{@"localized string not found", 0}];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100ECF100;
      v31[3] = &unk_101661B18;
      v9 = v5;
      v32 = v9;
      v10 = [MapsInterruptionAction actionWithTitle:v8 cancels:1 handler:v31];

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Continue [CarPlay value:Disambiguation]" table:{@"localized string not found", 0}];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100ECF1A8;
      v29[3] = &unk_101661B18;
      v30 = v9;
      v13 = [MapsInterruptionAction actionWithTitle:v12 cancels:0 handler:v29];

      v34[0] = @"kMapsInterruptionTitle";
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"Use CarPlay with Your Vehicles in Maps title [CarPlay]" value:@"localized string not found" table:0];
      v35[0] = v15;
      v34[1] = @"kMapsInterruptionMessage";
      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"Use CarPlay with Your Vehicles in Maps subtitle [CarPlay]" value:@"localized string not found" table:0];
      v35[1] = v17;
      v34[2] = @"kMapsInterruptionActions";
      v33[0] = v10;
      v33[1] = v13;
      v22 = v5;
      v18 = v10;
      v19 = [NSArray arrayWithObjects:v33 count:2];
      v35[2] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

      v3 = v23;
      v6 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;

      v5 = v22;
    }

    else
    {
      v20 = 0;
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = *(v6 + 180);
    v24[2] = sub_1008C24DC;
    v24[3] = &unk_10162D670;
    v27 = a1[6];
    v25 = a1[5];
    v28 = a1[7];
    v26 = WeakRetained;
    v21 = [v3 presentInterruptionOfKind:20 userInfo:v20 completionHandler:v24];
  }
}

void sub_1008C24DC(uint64_t a1, uint64_t a2)
{
  if (a2 == -1 || ((*(*(a1 + 48) + 16))(), a2))
  {
    v4 = sub_100798E54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User chose to pick from multiple vehicles. Will show options.", buf, 2u);
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[VirtualGarage] My Vehicles" value:@"localized string not found" table:0];
    v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

    v27 = v7;
    [v7 setModalPresentationStyle:5];
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count] + 1);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = a1;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 displayName];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_1008C2998;
          v37[3] = &unk_10165F668;
          v37[4] = v13;
          v38 = *(a1 + 56);
          v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v37];

          [v8 addObject:v15];
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v10);
    }

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Dismiss [CarPlay]" value:@"localized string not found" table:0];
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:&stru_10162D628];

    [v8 addObject:v18];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v27 addAction:*(*(&v33 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v21);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1008C2A50;
    v30[3] = &unk_101661A90;
    v31 = *(v29 + 40);
    v24 = v27;
    v32 = v24;
    v25 = objc_retainBlock(v30);
    v26 = [*(v29 + 40) presentedViewController];

    if (v26)
    {
      [*(v29 + 40) dismissViewControllerAnimated:1 completion:v25];
    }

    else
    {
      (v25[2])(v25);
    }
  }

  else
  {
    v24 = sub_100798E54();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "User dismissed multiple vehicle disambiguation popup.", buf, 2u);
    }
  }
}

uint64_t sub_1008C2998(uint64_t a1)
{
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User selected to pair the CarPlay accessory with vehicle: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1008C2A50(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1008C2AF4;
  v2[3] = &unk_101661A90;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1008C2B0C(id a1)
{
  v1 = sub_100798E54();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Presented vehicle picker to user to select a vehicle to pair with.", v2, 2u);
  }
}

void sub_1008C2B74(id a1, UIAlertAction *a2)
{
  v2 = sub_100798E54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User dismissed vehicle picker.", v3, 2u);
  }
}

void sub_1008C2BDC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Yes (Pair) [CarPlay]" value:@"localized string not found" table:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1008C3054;
    v33[3] = &unk_101661090;
    v35 = a1[6];
    v34 = a1[4];
    v5 = [MapsInterruptionAction actionWithTitle:v4 cancels:0 handler:v33];

    v6 = +[CarDisplayController sharedInstance];
    v7 = a1[4];
    v8 = a1[5];
    v9 = v7;
    if (v9)
    {
      v27 = v6;
      v25 = v5;
      +[NSBundle mainBundle];
      v10 = v28 = v5;
      [v10 localizedStringForKey:@"No (Pair) [CarPlay]" value:@"localized string not found" table:0];
      v11 = v29 = WeakRetained;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100ECF04C;
      v36[3] = &unk_101661A90;
      v37 = v8;
      v12 = v9;
      v38 = v12;
      v13 = [MapsInterruptionAction actionWithTitle:v11 cancels:1 handler:v36];

      v14 = +[NSBundle mainBundle];
      v24 = [v14 localizedStringForKey:@"VG disambiguation title [CarPlay]" value:@"localized string not found" table:0];

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"VG disambiguation subtitle [CarPlay]" value:@"localized string not found" table:0];

      v40[0] = @"kMapsInterruptionTitle";
      v17 = [v12 displayName];
      v18 = [NSString stringWithFormat:v24, v17];
      v41[0] = v18;
      v40[1] = @"kMapsInterruptionMessage";
      v26 = v8;
      v19 = [v12 displayName];
      v20 = [NSString stringWithFormat:v16, v19];
      v41[1] = v20;
      v40[2] = @"kMapsInterruptionActions";
      v39[0] = v13;
      v39[1] = v25;
      v21 = [NSArray arrayWithObjects:v39 count:2];
      v41[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];

      v8 = v26;
      v5 = v28;

      WeakRetained = v29;
      v6 = v27;
    }

    else
    {
      v22 = 0;
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1008C3068;
    v30[3] = &unk_10162D5E0;
    v32 = a1[7];
    v31 = a1[4];
    v23 = [v6 presentInterruptionOfKind:19 userInfo:v22 completionHandler:v30];
  }
}

void sub_1008C3068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100798E54();
  v5 = v4;
  switch(a2)
  {
    case 1:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
      }

      v9 = *(a1 + 40);
      v12 = *(a1 + 32);
      v10 = &v12;
      goto LABEL_12;
    case 0:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
      }

      v9 = *(a1 + 40);
      v13 = *(a1 + 32);
      v10 = &v13;
LABEL_12:
      v5 = [NSArray arrayWithObjects:v10 count:1];
      (*(v9 + 16))(v9, v5);
      break;
    case -1:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        v6 = "Popup was dismissed.";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v7, v8, v6, v11, 2u);
      }

      break;
    default:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        v6 = "Received an unsupported button index.";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }

      break;
  }
}

NSString *__cdecl sub_1008C3214(id a1, NSArray *a2)
{
  v2 = a2;
  if ([(NSArray *)v2 count])
  {
    v3 = sub_100021DB0(v2, &stru_10162D598);
    v4 = [v3 sortedArrayUsingComparator:&stru_10162D5B8];
    v5 = [v4 componentsJoinedByString:@"_"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

NSString *__cdecl sub_1008C32B8(id a1, VGVehicle *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[NSMutableString alloc] initWithString:@"_disambiguation_"];
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

void sub_1008C3B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1008C3B30(uint64_t a1, _DWORD *a2, int *a3, void *a4, _DWORD *a5)
{
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = [*(a1 + 32) count];
  if (v10 < v11)
  {
    v12 = [*(a1 + 32) objects];
    v13 = [v12 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

    v14 = [v13 searchSection];
    v15 = [v14 sectionType];

    if (v15 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v17 = [v13 mapItem];
    *a2 = *(*(*(a1 + 40) + 8) + 24);
    *a3 = v16;
    *a4 = [v17 _muid];
    v18 = [v17 place];
    *a5 = [v18 localSearchProviderID];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v10 < v11;
}

uint64_t sub_1008C3C5C(uint64_t a1, void *a2, _DWORD *a3, void *a4, unsigned int *a5, void *a6)
{
  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12 >= [*(a1 + 32) count])
  {
    return 0;
  }

  v13 = *(*(*(a1 + 48) + 8) + 24);
  if (v13 >= [*(a1 + 40) count])
  {
    return 0;
  }

  v14 = [*(a1 + 32) objects];
  v15 = [v14 objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];

  v16 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
  v17 = [v15 mapItem];
  *a2 = [v17 _muid];

  *a3 = [v16 trailingEntityType];
  *a4 = 0;
  v18 = [v16 hyperlinkType];
  *a5 = v18;
  if (v18)
  {
    v19 = [v16 hyperlinkString];
  }

  else
  {
    v19 = 0;
  }

  *a6 = v19;
  ++*(*(*(a1 + 48) + 8) + 24);

  return 1;
}

MapsAppTest *__cdecl sub_1008C45F0(id a1, NSString *a2, MapsAppTesting *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([(NSString *)v6 hasPrefix:@"LaunchMapsWith"])
  {
    v9 = off_1015F62E0;
LABEL_79:
    v12 = [objc_alloc(*v9) initWithApplication:v7 testName:v6 options:v8];
    goto LABEL_80;
  }

  if ([(NSString *)v6 isEqualToString:@"RotatingMaps"])
  {
    v9 = off_1015F62E8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"TimeToPresentPlaceCard"])
  {
    v9 = off_1015F63A8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"PresentAndDismissPlaceCard"])
  {
    v9 = off_1015F63A0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"RealtimeTransitPlaceCard"])
  {
    v9 = off_1015F64A8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollProactiveTray"])
  {
    v9 = off_1015F63C0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ResizingProactiveTray"])
  {
    v9 = off_1015F63F0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"RotatingProactiveTray"])
  {
    v9 = off_1015F6410;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollRecents"])
  {
    v9 = off_1015F6430;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"ScrollDirectionsDetails"])
  {
    v9 = off_1015F6448;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"ResizingDirectionsPreview"])
  {
    v9 = off_1015F63F8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"RotatingDirectionsPreview"])
  {
    v9 = off_1015F6418;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"RotatingDirectionsDetails"])
  {
    v9 = off_1015F6420;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"PresentDirectionsDetails"])
  {
    v9 = off_1015F63B8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"ScrollPlacecard"])
  {
    v9 = off_1015F6440;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"ResizingPlacecard"])
  {
    v9 = off_1015F63E8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"ScrollSearchResults"])
  {
    v9 = off_1015F6438;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"RetainedSearch"])
  {
    v9 = off_1015F6400;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"generateETAPin"])
  {
    v9 = off_1015F6348;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"generateETA"])
  {
    v9 = off_1015F6340;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"guidanceStepping"])
  {
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:@"mapType"];
    v11 = [v10 isEqualToString:@"transit"];

    v9 = off_1015F6360;
    if (v11)
    {
      v9 = off_1015F6488;
    }

    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"guidance"])
  {
    v9 = off_1015F6360;
    goto LABEL_79;
  }

  if ([(NSString *)v6 rangeOfString:@"pounce"]== 0)
  {
    v9 = off_1015F63B0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"RAPcontrollerLaunch"])
  {
    v9 = off_1015F63C8;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"RAPPOI"])
  {
    v9 = off_1015F63D0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"Venues"])
  {
    v9 = off_1015F64A0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"dropPin"])
  {
    v9 = off_1015F6338;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"tapPOI"])
  {
    v9 = off_1015F6478;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollCollections"])
  {
    v9 = off_1015F6308;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"scrollCollectionNatural"])
  {
    v9 = off_1015F6310;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollCuratedCollectionsList"])
  {
    v9 = off_1015F6320;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollCuratedCollectionsDetail"])
  {
    v9 = off_1015F6318;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ScrollCuratedCollectionsPublisher"])
  {
    v9 = off_1015F6328;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"guidesHomeScroll"])
  {
    v9 = off_1015F6368;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"citySelectorScroll"])
  {
    v9 = off_1015F6300;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"ResizeWindow"])
  {
    v9 = off_1015F63E0;
    goto LABEL_79;
  }

  if ([(NSString *)v6 isEqualToString:@"MultitaskResizeWindow"])
  {
    v9 = off_1015F6380;
    goto LABEL_79;
  }

  if ([(NSString *)v6 hasPrefix:@"longNavigation"])
  {
    v9 = off_1015F6730;
    goto LABEL_79;
  }

  v12 = 0;
LABEL_80:

  return v12;
}

void sub_1008C5AB0(uint64_t a1)
{
  v3 = +[UIApplication sharedMapsDelegate];
  v2 = +[UIApplication sharedApplication];
  [v3 application:v2 runTest:*(a1 + 32) options:*(a1 + 40)];
}

NSArray *__cdecl sub_1008C7BA8(id a1, NSArray *a2)
{
  v2 = +[MapsMenuBuilder preferencesMenuCommand];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

BOOL sub_1008C9398(id a1, RAPUserDirectionRequest *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(RAPUserDirectionRequest *)v4 recording];
  v6 = v5;
  if (!v5)
  {
    v9 = sub_100798874();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "RAPRouteListViewController will need to skip request: %@ because it doesn't have a recording.", &v16, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = [v5 directionsRequests];
  v8 = [v7 firstObject];
  v9 = [v8 routeAttributes];

  v10 = [v9 mainTransportType]- 1;
  if (v10 <= 5 && ((0x39u >> v10) & 1) != 0)
  {
    v11 = qword_101213710[v10];
    v12 = sub_100798874();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(&off_10162D8B8 + v11);
      v16 = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "RAPRouteListViewController will skip request: %@ due to unsupported transport type: %@", &v16, 0x16u);
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

void sub_1008C9828(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateVehicleSelectionIfNeeded];
    WeakRetained = v2;
  }
}

void sub_1008C99A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateVehicleSelectionIfNeeded];
    WeakRetained = v2;
  }
}

void sub_1008CA114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100022C48();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) selectedVehicle];
      v5 = [v4 combinedDisplayName];
      v6 = [*(a1 + 32) vehicles];
      v10 = 138412546;
      v11 = v5;
      v12 = 2048;
      v13 = [v6 count];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AutomaticVehicleSelectionTask: _updateGarage. selectedVehicle: %@, vehicleCount: %lu", &v10, 0x16u);
    }

    v7 = WeakRetained + 2;
    v8 = *(a1 + 32);
    if (WeakRetained[2])
    {
      objc_storeStrong(v7, v8);
    }

    else
    {
      objc_storeStrong(v7, v8);
      if (v8)
      {
        v9 = sub_100022C48();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "AutomaticVehicleSelectionTask: _updateGarage. Received first garage update -> will update vehicle selection", &v10, 2u);
        }

        [WeakRetained _updateVehicleSelectionIfNeeded];
      }
    }
  }
}

void sub_1008CA478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008CA4A0(uint64_t a1, void *a2, void *a3)
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
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "AutomaticVehicleSelectionTask: failed to fetch garage with error: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _updateGarage:v5];
    }
  }
}

id sub_1008CAD3C()
{
  if (qword_10195DC78 != -1)
  {
    dispatch_once(&qword_10195DC78, &stru_10162D900);
  }

  v1 = qword_10195DC70;

  return v1;
}

void sub_1008CAD90(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VisualLocalizationTrace");
  v2 = qword_10195DC70;
  qword_10195DC70 = v1;
}

void sub_1008CB398(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = +[NSTimeZone localTimeZone];
  v4 = [NSISO8601DateFormatter stringFromDate:v2 timeZone:v3 formatOptions:371];

  v5 = NSTemporaryDirectory();
  v6 = [NSURL fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:v4];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = +[NSFileManager defaultManager];
  v11 = *(*(a1 + 32) + 32);
  v49 = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v49];
  v13 = v49;

  v14 = sub_1008CAD3C();
  v15 = v14;
  if (!v12)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      v38 = *(a1 + 32);
      v39 = *(v38 + 32);
      *(v38 + 32) = 0;

      v40 = *(a1 + 32);
      v41 = *(v40 + 40);
      *(v40 + 40) = 0;

      v42 = *(a1 + 32);
      v43 = *(v42 + 48);
      *(v42 + 48) = 0;

      v44 = *(a1 + 32);
      v45 = *(v44 + 56);
      *(v44 + 56) = 0;

      v23 = v13;
      goto LABEL_17;
    }

    *buf = 138543362;
    v51 = v13;
    v37 = "Failed to create trace directory: %{public}@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(*(a1 + 32) + 32);
    *buf = 138543362;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Created temporary trace directory: %{public}@", buf, 0xCu);
  }

  v17 = [*(*(a1 + 32) + 32) URLByAppendingPathComponent:@"images"];
  v18 = *(a1 + 32);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = +[NSFileManager defaultManager];
  v21 = *(*(a1 + 32) + 40);
  v48 = v13;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v48];
  v23 = v48;

  if ((v22 & 1) == 0)
  {
    v15 = sub_1008CAD3C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v51 = v23;
      v36 = "Failed to create images directory: %{public}@";
      goto LABEL_14;
    }

LABEL_15:
    v13 = v23;
    goto LABEL_16;
  }

  v24 = [*(*(a1 + 32) + 32) URLByAppendingPathComponent:@"parameters"];
  v25 = *(a1 + 32);
  v26 = *(v25 + 48);
  *(v25 + 48) = v24;

  v27 = +[NSFileManager defaultManager];
  v28 = *(*(a1 + 32) + 48);
  v47 = v23;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v47];
  v13 = v47;

  if ((v29 & 1) == 0)
  {
    v15 = sub_1008CAD3C();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138543362;
    v51 = v13;
    v37 = "Failed to create parameters directory: %{public}@";
    goto LABEL_11;
  }

  v30 = [*(*(a1 + 32) + 32) URLByAppendingPathComponent:@"results"];
  v31 = *(a1 + 32);
  v32 = *(v31 + 56);
  *(v31 + 56) = v30;

  v33 = +[NSFileManager defaultManager];
  v34 = *(*(a1 + 32) + 56);
  v46 = v13;
  v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v46];
  v23 = v46;

  if ((v35 & 1) == 0)
  {
    v15 = sub_1008CAD3C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v51 = v23;
      v36 = "Failed to create results directory: %{public}@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_17:
}

void sub_1008CB860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008CB8D4;
  block[3] = &unk_101661B18;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1008CBA30(id a1)
{
  v1 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/VisualLocalization/Traces" isDirectory:1];
  v2 = qword_10195DC68;
  qword_10195DC68 = v1;
}

void sub_1008CC370(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

id *sub_1008CC398(id *result)
{
  v1 = result;
  ++*(result[4] + 13);
  if (*(result + 64) == 1)
  {
    result = [result[5] setHidden:0];
  }

  if (*(v1 + 65) == 1)
  {
    result = [v1[6] setHidden:0];
  }

  if (*(v1 + 66) == 1)
  {
    v2 = v1[7];

    return [v2 setHidden:0];
  }

  return result;
}

void sub_1008CC430(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setAlpha:v2];
  if (*(a1 + 57))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(a1 + 40) setAlpha:v3];
  [*(a1 + 48) _viewAlpha];
  v5 = v4;
  v6 = [*(a1 + 48) view];
  [v6 setAlpha:v5];
}

void sub_1008CC4C8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 13);
    v5 = v4 == 1;
    v6 = v4 < 1;
    v7 = v4 - 1;
    if (!v6)
    {
      *(WeakRetained + 13) = v7;
      v8 = WeakRetained;
      if (v5)
      {
        if ((*(WeakRetained + 25) & 1) == 0)
        {
          [a1[4] setHidden:1];
          v3 = v8;
        }

        if ((v3[26] & 1) == 0)
        {
          [a1[5] setHidden:1];
          v3 = v8;
        }

        if (([v3 _viewShown] & 1) == 0)
        {
          [a1[6] setHidden:1];
        }

        v3 = v8;
      }

      [MapsAnalyticStateProvider updateButtonsInformationAQI:v3[25] weather:v3[26]];
      v3 = v8;
    }
  }
}

void sub_1008CC730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = WeakRetained;
    if (WeakRetained[13] < 1)
    {
      [WeakRetained _updateVisibilityAnimated:v3];
    }

    else
    {
      [WeakRetained _requestVisibilityUpdateAnimated:v3];
    }

    WeakRetained = v4;
  }
}

void sub_1008CCD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008CCDB4(uint64_t a1)
{
  [GEOAPPortal captureUserAction:15002 target:640 value:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openWeatherPunchOutURL];
}

void sub_1008CD0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1008CD0BC(uint64_t a1)
{
  v2 = [WUWeatherPlatterViewController alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained location];
  v5 = [v2 initWithLocation:v4];

  return v5;
}

void sub_1008CFE30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1008CFE6C(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v18 && WeakRetained)
  {
    v4 = [WeakRetained publisherLogoImageView];
    [v4 setImage:v18];

    v5 = [WeakRetained publisherLogoImageView];
    v6 = [v5 widthAnchor];
    v7 = [WeakRetained publisherLogoImageView];
    v8 = [v7 heightAnchor];
    v9 = [WeakRetained publisherLogoImageView];
    v10 = [v9 image];
    [v10 size];
    v12 = v11;
    v13 = [WeakRetained publisherLogoImageView];
    v14 = [v13 image];
    [v14 size];
    v16 = [v6 constraintEqualToAnchor:v8 multiplier:v12 / v15];
    [WeakRetained setLogoWidthConstraint:v16];

    v17 = [WeakRetained logoWidthConstraint];
    [v17 setActive:1];
  }
}

void sub_1008CFFF0(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a5)
  {
    v11 = sub_1007982D8();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (WeakRetained)
    {
      if (v12)
      {
        v13 = [WeakRetained viewModel];
        v14 = [v13 collectionTitle];
        v15 = [v14 string];
        *buf = 138412290;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[⌛]Received header image for : %@", buf, 0xCu);
      }

      if (v9 && !a3)
      {
        v16 = sub_1007982D8();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (a4)
        {
          v18 = 0.0;
          if (v17)
          {
            *buf = 0;
            v19 = "Received cached header image. Displaying without animation.";
LABEL_18:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v19, buf, 2u);
          }
        }

        else
        {
          v18 = 0.100000001;
          if (v17)
          {
            *buf = 0;
            v19 = "Received non-cached header image. Displaying with animation.";
            goto LABEL_18;
          }
        }

        v24 = [WeakRetained collectionImageView];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1008D033C;
        v27[3] = &unk_101661A90;
        v27[4] = WeakRetained;
        v28 = v9;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1008D038C;
        v25[3] = &unk_101661570;
        v25[4] = WeakRetained;
        v26 = *(a1 + 32);
        [UIView transitionWithView:v24 duration:5242882 options:v27 animations:v25 completion:v18];
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Header doesn't exists.", buf, 2u);
      }
    }
  }

  else
  {
    v20 = sub_1007982D8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [WeakRetained viewModel];
      v22 = [v21 collectionTitle];
      v23 = [v22 string];
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Cancelled image download for collection: %@", buf, 0xCu);
    }
  }
}

void sub_1008D033C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) collectionImageView];
  [v2 setImage:v1];
}

void sub_1008D038C(uint64_t a1)
{
  v2 = sub_1007982D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) viewModel];
    v4 = [v3 collectionTitle];
    v5 = [v4 string];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[⌛]Finished showing header image for : %@ in %f", &v8, 0x16u);
  }
}

id sub_1008D0BB0(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40) > 0.05)
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 160) setAlpha:v1];
}

void sub_1008D1838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008D1860(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008D1B3C;
  block[3] = &unk_101661480;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1008D192C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [Result resultWithError:v9];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1008D1AB0;
      v16[3] = &unk_101657E40;
      v13 = *(a1 + 32);
      v17 = *(a1 + 40);
      [UGCNearbyPhotosAvailibility numberOfPhotosTakenForMapItem:v13 lastVisitedDate:v12 completion:v16];

      goto LABEL_9;
    }

    v11 = [NSError errorWithDomain:@"HomePhotoLookupDataProviderErrorDomain" code:2 userInfo:0];
    v14 = *(a1 + 40);
    v15 = [Result resultWithError:v11];
    (*(v14 + 16))(v14, v15);
  }

LABEL_9:
}

void sub_1008D1AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSNumber numberWithInt:a2 != 0];
  v3 = [Result resultWithValue:v4];
  (*(v2 + 16))(v2, v3);
}

void sub_1008D1B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setResult:*(a1 + 32) forEntry:*(a1 + 40)];
}

void sub_1008D1B8C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(*(a1 + 32) + 16) containsObject:v7] & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 24) valueForKey:v7];

    if (!v6)
    {
      [*(a1 + 32) _startLookupForEntry:v5];
    }
  }
}

id sub_1008D1E68(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  v4 = 1;
  if (!result)
  {
    v4 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void sub_1008D2CDC(uint64_t a1)
{
  v3 = [*(a1 + 32) cardPresentationController];
  [v3 cardHeight];
  *(*(a1 + 32) + 152) = v2;
}

void sub_1008D2E6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v2 = [WeakRetained loadingView];
    if (!v2)
    {
      v3 = [v13 apiController];
      v4 = [v3 currentState];

      WeakRetained = v13;
      if (v4 != 1)
      {
        goto LABEL_6;
      }

      v5 = [LoadingModeView alloc];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
      v8 = [(LoadingModeView *)v5 initWithTitle:v7];
      [v13 setLoadingView:v8];

      v9 = [v13 loadingView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [v13 contentView];
      v11 = [v13 loadingView];
      [v10 addSubview:v11];

      v2 = [v13 loadingView];
      v12 = [v13 titleHeaderView];
      [v13 activateConstraintsForViewPinnedBelowHeader:v2 headerView:v12];
    }

    WeakRetained = v13;
  }

LABEL_6:
}

void sub_1008D36A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1008D36CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained dataSource];
  v8 = [v7 sectionAtIndex:a2];

  v9 = [v8 sectionTitle];

  if (!v8 || ([v8 configuration], v33, !v34))
  {
    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 dataSource];
    v13 = [v18 featuredGuideViewModel];

    v19 = objc_loadWeakRetained((a1 + 32));
    v20 = *(a1 + 40);
    v21 = [v13 collectionLongTitle];
    if (v21)
    {
      v16 = [v8 layoutSectionForFeaturedGuideUsingTraitsEnvironment:v19 usingWidth:v21 featuredGuideTitle:v20];
    }

    else
    {
      v22 = [v13 collectionTitle];
      v16 = [v8 layoutSectionForFeaturedGuideUsingTraitsEnvironment:v19 usingWidth:v22 featuredGuideTitle:v20];
    }

    goto LABEL_10;
  }

  [v8 configuration];

  if (v32 == 1)
  {
    v10 = v9 != 0;
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 dataSource];
    v13 = [v12 filterViewModels];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v8 layoutForFilterSectionUsingViewModels:v13 traitsEnvironment:v14 width:v10 shouldAddSupplementaryHeaderView:*(a1 + 40)];
LABEL_5:
    v16 = v15;

    goto LABEL_10;
  }

  [v8 configuration];

  if (v30 == 4)
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v24 = [v13 dataSource];
    v16 = [v8 layoutForCollectionsListSectionUsingLayoutEnvironment:v5 shouldAddSupplementaryHeaderView:v9 != 0 objectsCount:{objc_msgSend(v24, "guidesListCountAtIndex:", a2)}];
  }

  else
  {
    [v8 configuration];

    v25 = objc_loadWeakRetained((a1 + 32));
    v13 = v25;
    if (v28 == 5)
    {
      v26 = v9 != 0;
      v14 = [v25 dataSource];
      v15 = [v8 layoutForPublishersListSectionUsingLayoutEnvironment:v5 shouldAddSupplementaryHeaderView:v26 objectsCount:{objc_msgSend(v14, "publishersListCountAtIndex:", a2)}];
      goto LABEL_5;
    }

    v16 = [v8 layoutForSectionUsingTraitsEnvironment:v25 usingWidth:v9 != 0 shouldAddSupplementaryHeaderView:*(a1 + 40)];
  }

LABEL_10:

  return v16;
}

void sub_1008D3D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008D3D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 setAlpha:1.0];
}

id sub_1008D6784(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = +[UIFont system28Bold];
  [v3 setObject:v4 forKeyedSubscript:NSFontAttributeName];

  v5 = [*(a1 + 32) apiController];
  if ([v5 isCuratedGuidesHome])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v6 = ;
  [v3 setObject:v6 forKeyedSubscript:NSForegroundColorAttributeName];

  v7 = [v3 copy];

  return v7;
}

id sub_1008D6B88()
{
  if (qword_10195DC88 != -1)
  {
    dispatch_once(&qword_10195DC88, &stru_10162DB50);
  }

  v1 = qword_10195DC80;

  return v1;
}

void sub_1008D6BDC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "GuidesHomeViewController");
  v2 = qword_10195DC80;
  qword_10195DC80 = v1;
}

void sub_1008D6EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1008D6F04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 citySelectionView];
  [v4 setAlpha:0.0];
}

void sub_1008D6F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained apiController];
  [v1 fetchGuidesHomeViewFilteredBy:0 onCompletion:&stru_10162DB08];
}