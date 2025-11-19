void sub_100B1BA74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contentView];
  v5 = [v4 subviews];
  v6 = [v5 count];

  if (!v6)
  {
    [v3 setAccessoryType:0];
    [v3 setSelectionStyle:0];
    v7 = [*(a1 + 32) mapAttributionButton];
    [v7 setAccessibilityIdentifier:@"MapAttributionButton"];
    v8 = [v3 contentView];
    [v8 addSubview:v7];

    v40 = [v7 leadingAnchor];
    v41 = [v3 contentView];
    v39 = [v41 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:16.0];
    v42[0] = v38;
    v36 = [v7 trailingAnchor];
    v37 = [v3 contentView];
    v35 = [v37 trailingAnchor];
    v34 = [v36 constraintLessThanOrEqualToAnchor:v35 constant:-16.0];
    v42[1] = v34;
    v32 = [v7 centerYAnchor];
    v33 = [v3 contentView];
    v31 = [v33 centerYAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v42[2] = v30;
    v28 = [v7 topAnchor];
    v29 = [v3 contentView];
    v27 = [v29 topAnchor];
    v26 = [v28 constraintGreaterThanOrEqualToAnchor:v27];
    v42[3] = v26;
    v25 = [v7 bottomAnchor];
    v9 = [v3 contentView];
    v10 = [v9 bottomAnchor];
    v11 = [v25 constraintLessThanOrEqualToAnchor:v10];
    v42[4] = v11;
    v12 = [v3 contentView];
    v13 = [v12 heightAnchor];
    LODWORD(v14) = 1112276992;
    v15 = [v13 constraintEqualToConstant:0.0 priority:v14];
    v42[5] = v15;
    [NSArray arrayWithObjects:v42 count:6];
    v17 = v16 = a1;
    [NSLayoutConstraint activateConstraints:v17];

    a1 = v16;
  }

  v18 = [v3 contentView];
  v19 = [v18 subviews];
  v20 = [v19 firstObject];

  v21 = [*(a1 + 32) settingsController];
  v22 = [v21 mapAttribution];
  v23 = [v22 string];
  v24 = [v23 mutableCopy];
  [v20 setAttributedTitle:v24 forState:0];
}

void sub_100B1CD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 8, *(a1 + 32));
    [v3 _reloadMyVehiclesVisibility];
    WeakRetained = v3;
  }
}

void sub_100B1CE40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    [v3 _reloadMyVehiclesVisibility];
    WeakRetained = v3;
  }
}

void sub_100B1D40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B1D428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _environmnentNotification];
}

void sub_100B1D978(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100B1D9B0(uint64_t a1, void *a2, void *a3)
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
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch garage with error: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _consumeUpdatedVirtualGarage:v5];
    }
  }
}

void sub_100B1DAA4(uint64_t a1, void *a2, void *a3)
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
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch unpaired vehicles with error: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _consumeUpdatedUnpairedVehicles:v5];
    }
  }
}

void sub_100B1DD24(uint64_t a1)
{
  v2 = [*(a1 + 32) pedestrianARViewController];
  v3 = [v2 mapView];
  v4 = [v3 detailedDescription];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  v8 = [MapsRadarTextAttachment attachmentWithFileName:@"PedestrianARVKMapViewDiagnostics.txt" text:v6];

  v7 = [MapsRadarKeyword keywordWithName:@"MAPS377" number:1281664];
  [*(a1 + 40) addAttachment:v8];
  [*(a1 + 40) addKeyword:v7];
  (*(*(a1 + 48) + 16))();
}

id sub_100B1DF5C()
{
  if (qword_10195E6E0 != -1)
  {
    dispatch_once(&qword_10195E6E0, &stru_101638500);
  }

  v1 = qword_10195E6D8;

  return v1;
}

void sub_100B1DFB0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARContext");
  v2 = qword_10195E6D8;
  qword_10195E6D8 = v1;
}

void sub_100B1FACC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 32);
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

        [*(*(&v6 + 1) + 8 * v5) updateFromParkedCar];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_100B21030(uint64_t a1)
{
  v2 = [*(a1 + 32) canUpdateTrayLayout];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 collapsedTrayLayout];
    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B210F4;
    v7[3] = &unk_101661B18;
    v7[4] = v5;
    return [v5 updateTrayLayout:v4 withSubtestName:@"NavigationMinimizeTray" animated:1 completion:v7];
  }

  else
  {

    return [v3 failedTest];
  }
}

void sub_100B21398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B213B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishedSubTest:*(a1 + 32)];

  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v11 = 134218240;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _steppingSignDidChange - Fully drawn.  swipeCount: %ld, currentStepIndex: %ld", &v11, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = (a1 + 40);
  if (v6 == v7)
  {
    v9 = objc_loadWeakRetained(v8);
    [v9 _doAfterSubTestForShowingSign];
  }

  else
  {
    v10 = objc_loadWeakRetained(v8);
    v9 = v10;
    if (v6 <= v7)
    {
      [v10 failedTest];
    }

    else
    {
      [v10 _gotoNextStepAfterDelay:2.0];
    }
  }
}

void sub_100B21694(uint64_t a1)
{
  v2 = [*(a1 + 32) _subTestNameForGoingToGuidanceStep:*(a1 + 48) + 1 forSwipeCount:{objc_msgSend(*(a1 + 32), "swipeCount")}];
  [*(a1 + 32) startedSubTest:v2];
  [*(a1 + 40) pptTestMoveToNextStep];
}

id sub_100B217F4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"guidanceMakeTurn"];
  v2 = *(a1 + 32);

  return [v2 _doAfterSubTestForShowingSign];
}

void sub_100B219CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100B219E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained[10] isValid])
    {
      [v3[10] invalidate];
      v2 = v3[10];
      v3[10] = 0;
    }

    [v3 willUpdateNavigationSign];
    WeakRetained = v3;
  }
}

id sub_100B21B8C(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"guidanceStartToFirstStepShown"];
  v2 = *(a1 + 32);

  return [v2 _guidanceOrSteppingDidShowFirstSign];
}

id sub_100B21D78(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"guidanceEnd"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_100B21DBC(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"guidanceEnd"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_100B21E00(uint64_t a1)
{
  [*(a1 + 32) startedTest];
  v2 = *(a1 + 32);

  return [v2 tapOnSearchBar];
}

void sub_100B2242C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateAnalyticsWithRequestRideStatus:*(a1 + 32)];
    v4 = objc_loadWeakRetained(v3 + 2);
    [v4 requestRideStatusDidChange:*(a1 + 32)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "RideBookingRequestRideOptionProxy.m";
      v8 = 1026;
      v9 = 84;
      v10 = 2082;
      v11 = "[RideBookingRequestRideOptionProxy requestRideStatusDidChange:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_100B2270C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B22738(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B22804;
  block[3] = &unk_10165DEA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_100B22804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateAnalyticsWithRideStatus:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingRequestRideOptionProxy.m";
      v7 = 1026;
      v8 = 71;
      v9 = 2082;
      v10 = "[RideBookingRequestRideOptionProxy requestRideWithCompletion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100B22C70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 registerClass:objc_opt_class() forCellWithReuseIdentifier:v3];
}

void sub_100B22D94(id a1)
{
  v1 = objc_opt_class();
  v28 = NSStringFromClass(v1);
  v27 = [v28 stringByAppendingString:@".Origin"];
  v29[0] = v27;
  v30[0] = objc_opt_class();
  v2 = objc_opt_class();
  v26 = NSStringFromClass(v2);
  v25 = [v26 stringByAppendingString:@".Destination"];
  v29[1] = v25;
  v30[1] = objc_opt_class();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v29[2] = v4;
  v30[2] = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v29[3] = v6;
  v30[3] = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v29[4] = v8;
  v30[4] = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v29[5] = v10;
  v30[5] = objc_opt_class();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v29[6] = v12;
  v30[6] = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v29[7] = v14;
  v30[7] = objc_opt_class();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v29[8] = v16;
  v30[8] = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v29[9] = v18;
  v30[9] = objc_opt_class();
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v29[10] = v20;
  v30[10] = objc_opt_class();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v29[11] = v22;
  v30[11] = objc_opt_class();
  v23 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:12];
  v24 = qword_10195E6F8;
  qword_10195E6F8 = v23;
}

void sub_100B233F8(id a1)
{
  v1 = objc_opt_class();
  v26 = NSStringFromClass(v1);
  v25 = [v26 stringByAppendingString:@".Origin"];
  v27[0] = v25;
  v28[0] = objc_opt_class();
  v2 = objc_opt_class();
  v24 = NSStringFromClass(v2);
  v23 = [v24 stringByAppendingString:@".Destination"];
  v27[1] = v23;
  v28[1] = objc_opt_class();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v27[2] = v4;
  v28[2] = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v27[3] = v6;
  v28[3] = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v27[4] = v8;
  v28[4] = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v27[5] = v10;
  v28[5] = objc_opt_class();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v27[6] = v12;
  v28[6] = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v27[7] = v14;
  v28[7] = objc_opt_class();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v27[8] = v16;
  v28[8] = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v27[9] = v18;
  v28[9] = objc_opt_class();
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v27[10] = v20;
  v28[10] = objc_opt_class();
  v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:11];
  v22 = qword_10195E6E8;
  qword_10195E6E8 = v21;
}

void sub_100B23FEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 showNetworkActivityIndicator:0];
  if (v7)
  {
    v22[0] = NSLocalizedDescriptionKey;
    v22[1] = NSUnderlyingErrorKey;
    v23[0] = @"Error requesting app metadata.";
    v23[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v9 = [NSError storePlatformErrorWithUserInfo:v8];

    v10 = [*(a1 + 32) delegate];
    [v10 routingAppSuggestionProvider:*(a1 + 32) didFailToSuggestStoreApps:v9];
  }

  else
  {
    v11 = [v5 count];
    sub_100DA10F8(@"Received store platform response with %lu apps", v12, v13, v14, v15, v16, v17, v18, v11);
    v19 = [*(a1 + 32) sortedAppsWithIds:*(a1 + 40) appStoreApps:v5];
    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = v19;

    *(*(a1 + 32) + 16) = 1;
    [*(a1 + 32) _suggestFilteredStoreAppsIfReady];
    v9 = 0;
  }
}

_BYTE *sub_100B24484(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setAllRoutingApps:a3];
  v7 = [*(a1 + 32) delegate];
  [v7 routingAppSuggestionProvider:*(a1 + 32) didSuggestInstalledApps:v6];

  *(*(a1 + 32) + 17) = 1;
  result = *(a1 + 32);
  if ((result[19] & 1) == 0)
  {

    return [result _suggestFilteredStoreAppsIfReady];
  }

  return result;
}

id sub_100B251D0()
{
  if (qword_10195E710 != -1)
  {
    dispatch_once(&qword_10195E710, &stru_101638630);
  }

  v1 = qword_10195E708;

  return v1;
}

void sub_100B25224(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningInstructionView");
  v2 = qword_10195E708;
  qword_10195E708 = v1;
}

void sub_100B26F70(id *a1)
{
  v8 = [a1[4] entryPointsCoordinator];
  v2 = [a1[5] URL];
  v3 = [a1[6] session];
  v4 = [a1[5] options];
  v5 = [a1[7] coordinateSpace];
  [v5 bounds];
  [v8 openURL:v2 session:v3 sceneOptions:v4 mkOptions:0 windowSize:{v6, v7}];
}

void sub_100B272B8(uint64_t a1)
{
  v7 = [*(a1 + 32) entryPointsCoordinator];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) session];
  v4 = [*(a1 + 56) coordinateSpace];
  [v4 bounds];
  [v7 continueUserActivity:v2 session:v3 windowSize:{v5, v6}];
}

void sub_100B28DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[IFImage alloc] initWithCGImage:objc_msgSend(v3 scale:{"CGImage"), *(a1 + 40)}];
    v5 = [ISIcon alloc];
    v11 = v4;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v5 initWithImages:v6];

    v8 = [[ISImageDescriptor alloc] initWithSize:*(a1 + 48) scale:{*(a1 + 56), *(a1 + 40)}];
    [v8 setShape:0];
    v9 = [v7 prepareImageForDescriptor:v8];
    v10 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v9 CGImage]);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100B29400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B29424(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    if (v5 == *(a1 + 32) || [v5 isEqual:?])
    {
      [v4[5] setImage:v6];
    }
  }
}

id sub_100B29D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B29DFC;
  v5[3] = &unk_1016387E0;
  v5[4] = v3;
  return [v3 displayCategoryResultsWithMapItem:a2 searchCategory:a3 completion:v5];
}

void sub_100B29DFC(uint64_t a1, void *a2)
{
  v3 = [a2 dataSource];
  v4 = [v3 content];
  v5 = [v4 objects];
  v6 = [v5 firstObject];

  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B29ED0;
  v8[3] = &unk_1016387B8;
  v8[4] = v7;
  [v7 selectSearchResult:v6 completion:v8];
}

void sub_100B29ED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B29F70;
  v6[3] = &unk_101661A90;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 updateTrayLayout:2 animated:1 completion:v6];
}

void sub_100B29F70(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) view];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_12;
    }

    [*(a1 + 40) performScrollTestOnScrollView:v9];
  }

  else
  {
LABEL_9:

LABEL_12:
    [*(a1 + 40) failedTest];
  }
}

id sub_100B2A138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B2A1B0;
  v5[3] = &unk_1016387E0;
  v5[4] = v3;
  return [v3 displayCategoryResultsWithMapItem:a2 searchCategory:a3 completion:v5];
}

void sub_100B2A1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 10000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B2A274;
  v6[3] = &unk_101661A90;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, v6);
}

void sub_100B2A274(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B2A394;
  v7[3] = &unk_101661A90;
  v2 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v2;
  v3 = objc_retainBlock(v7);
  if ([*(a1 + 32) canUpdateTrayLayout])
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100B2A3F8;
    v5[3] = &unk_101661760;
    v6 = v3;
    [v4 updateTrayLayout:2 animated:1 completion:v5];
  }

  else
  {
    (v3[2])(v3);
  }
}

void sub_100B2A394(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) dataSource];
  v2 = [v3 tableView];
  [v1 performScrollTestOnScrollView:v2];
}

void sub_100B2A4DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 finishedSubTest:@"DisplayCategories"];
  [*(a1 + 32) startedSubTest:@"DisplayCategoryResults"];
  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B2A5A8;
  v9[3] = &unk_1016387E0;
  v9[4] = v8;
  [v8 displayCategoryResultsWithMapItem:v7 searchCategory:v6 completion:v9];
}

void sub_100B2A5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) finishedSubTest:@"DisplayCategoryResults"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B2A778;
  v15[3] = &unk_101661A90;
  v4 = v3;
  v5 = *(a1 + 32);
  v16 = v4;
  v17 = v5;
  v6 = objc_retainBlock(v15);
  v7 = [v4 dataSource];
  v8 = [v7 subcategories];
  if ([v8 count] <= 1)
  {

    goto LABEL_5;
  }

  v9 = [v4 dataSource];
  v10 = [v9 subcategories];
  v11 = [v10 objectAtIndexedSubscript:1];

  if (!v11)
  {
LABEL_5:
    (v6[2])(v6);
    goto LABEL_6;
  }

  [*(a1 + 32) startedSubTest:@"SelectSubCategory"];
  v12 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B2A85C;
  v13[3] = &unk_101661090;
  v13[4] = v12;
  v14 = v6;
  [v12 selectSubCategory:v11 venueCategoryViewController:v4 completion:v13];

LABEL_6:
}

void sub_100B2A778(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 content];
  v4 = [v3 objects];
  v5 = [v4 firstObject];

  [*(a1 + 40) startedSubTest:@"SelectSearchResult"];
  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B2A8A8;
  v7[3] = &unk_1016387B8;
  v7[4] = v6;
  [v6 selectSearchResult:v5 completion:v7];
}

uint64_t sub_100B2A85C(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SelectSubCategory"];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_100B2A8A8(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SelectSearchResult"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

uint64_t sub_100B2AA40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100B2AB44(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v3;
    (*(v4 + 16))();
  }

  else
  {
    v5 = 0;
    [*(a1 + 32) failedTest];
  }

  v3 = v5;
LABEL_6:
}

void sub_100B2ADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B2AE00(uint64_t a1)
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

void sub_100B2AF58(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v3;
    (*(v4 + 16))();
  }

  else
  {
    v5 = 0;
    [*(a1 + 32) failedTest];
  }

  v3 = v5;
LABEL_6:
}

void sub_100B2B170(id *a1, void *a2, uint64_t a3)
{
  v5 = [a2 firstObject];
  v6 = v5;
  if (a3 || !v5)
  {
    [a1[4] failedTest];
  }

  else
  {
    v7 = WillStartDisplayBrowseCategories;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B2B368;
    v15[3] = &unk_10164FAC0;
    v16 = a1[5];
    [PPTNotificationCenter addOnceObserverForName:v7 object:0 usingBlock:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100B2B380;
    v14[3] = &unk_101650D20;
    v14[4] = a1[4];
    [PPTNotificationCenter addOnceObserverForName:DidFailDisplayBrowseCategories object:0 usingBlock:v14];
    v8 = DidDisplayBrowseCategories;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B2B388;
    v11[3] = &unk_101638720;
    v11[4] = a1[4];
    v13 = a1[6];
    v9 = v6;
    v12 = v9;
    [PPTNotificationCenter addOnceObserverForName:v8 object:0 usingBlock:v11];
    v10 = [a1[4] testCoordinator];
    [v10 pptTestPresentPlacecardWithMapItem:v9];
  }
}

uint64_t sub_100B2B368(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100B2B388(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v3;
    (*(v4 + 16))(v4, *(a1 + 40));
  }

  else
  {
    v5 = 0;
    [*(a1 + 32) failedTest];
  }

  v3 = v5;
LABEL_6:
}

void sub_100B2B570(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  v3 = [v2 objectForKeyedSubscript:@"testName"];

  if ([v3 isEqualToString:@"VenuesBrowse"])
  {
    [*(a1 + 32) runBrowseTest];
  }

  else if ([v3 isEqualToString:@"VenuesScrollCategoryResults"])
  {
    [*(a1 + 32) runScrollCategoryResultsTest];
  }

  else if ([v3 isEqualToString:@"VenuesScrollSearchResultPlacecard"])
  {
    [*(a1 + 32) runScrollSearchResultPlacecardTest];
  }
}

void sub_100B2BFB4(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];
  v3 = qword_10195E758;
  qword_10195E758 = v2;

  if (qword_10195E758)
  {
    v4 = [qword_10195E758 URLByAppendingPathComponent:@"Maps"];
    v5 = qword_10195E758;
    qword_10195E758 = v4;

    v6 = +[NSFileManager defaultManager];
    v7 = [qword_10195E758 path];
    v8 = [v6 fileExistsAtPath:v7];

    if ((v8 & 1) == 0)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 createDirectoryAtURL:qword_10195E758 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }
}

void sub_100B2C358(id a1)
{
  v1 = os_log_create("com.apple.Maps", "BrowseManager");
  v2 = qword_10195E748;
  qword_10195E748 = v1;
}

void sub_100B2C820(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  if (*(a1 + 40))
  {
    [*(a1 + 32) setNeedsRefresh:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = [BrowseCategory alloc];
          v12 = [(BrowseCategory *)v11 initWithCategory:v10, v13];
          [v4 addObject:v12];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  [v3 setCategories:{v4, v13}];
}

void sub_100B2D148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B2D16C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cachedCategories];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100B2D1CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(*(*(a1 + 48) + 8) + 24) == *(*(a1 + 32) + 8))
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, 0, v7);
      }
    }

    else
    {
      v9 = sub_10008C23C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "The resposne for browse categories: %@", &v15, 0xCu);
      }

      v10 = [*(a1 + 32) contentCache];
      [v10 setGeoCategories:v5];

      v11 = [*(a1 + 32) contentCache];
      [v11 writeCategories];

      [*(a1 + 32) getBatchNearby];
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = [*(a1 + 32) cachedCategories];
        (*(v12 + 16))(v12, v13, 0);
      }
    }

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 postNotificationName:@"BrowseManagerDidUpdateCategories" object:*(a1 + 32)];
  }
}

id sub_100B2D4FC(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 prepareImagesForCacheKey:v3 traits:v4 completion:0];
}

uint64_t sub_100B2D53C(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100B2D990(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = a3;
    v11 = a2;
    v12 = [v9 sectionHeader];
    v13 = [*(a1 + 32) boundingRegion];
    (*(v8 + 16))(v8, 0, v12, 0, v13, v7);
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    v15 = v14;
    v16 = *(a1 + 40);
    v17 = a3;
    v18 = a2;
    v19 = [v16 contentCache];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100B2DB78;
    v28 = &unk_101638830;
    v29 = v15;
    v30 = *(a1 + 48);
    v20 = v15;
    [v19 updateCacheWithBlock:&v25];

    v21 = *(a1 + 56);
    v22 = [*(a1 + 32) sectionHeader];
    v23 = [*(a1 + 32) searchAutoRedoThreshold];
    v24 = [*(a1 + 32) boundingRegion];
    (*(v21 + 16))(v21, v20, v22, v23, v24, 0);
  }
}

void sub_100B2DB78(uint64_t a1, void *a2)
{
  v3 = [a2 categoryResultsCache];
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

void sub_100B2DD4C(uint64_t a1, void *a2)
{
  v3 = [a2 categoryResultsCache];
  [v3 removeObjectForKey:*(a1 + 32)];
}

id sub_100B2E4CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  while (1)
  {
    LOBYTE(v13) = *(a1 + 50);
    v8 = [MKIconManager imageForStyle:*(a1 + 32) size:a2 forScale:1 format:*(a1 + 48) transparent:*(a1 + 49) transitMode:a3 isCarplay:a4 nightMode:v13];
    v9 = v8;
    if (v8)
    {
      if (*(a1 + 51) != 1 || (v10 = *(a1 + 40), [v8 size], (*(v10 + 16))(v10)))
      {
        v9 = v9;
        v11 = v9;
        goto LABEL_8;
      }
    }

    if (!a2)
    {
      break;
    }

    --a2;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void sub_100B2EABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B2EADC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _createImageForCategory:*(a1 + 32) scale:*(a1 + 40) traits:*(a1 + 80) isCarplay:*(a1 + 81) nightMode:*(a1 + 72)];
    if (v4)
    {
      v5 = [objc_opt_class() sharedImageCache];
      [v5 setObject:v4 forKey:*(a1 + 48)];
    }

    else
    {
      v5 = sub_10008C23C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) name];
        v7 = *(a1 + 48);
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to create image for category %@, key: %@", &v9, 0x16u);
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, v4);
    }
  }
}

void sub_100B2EE00(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_10195E718;
  qword_10195E718 = v1;
}

uint64_t sub_100B2F290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 != 0);
  }

  return result;
}

uint64_t sub_100B2F598(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100B2F8F4(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100B2FB14;
  v14 = sub_100B2FB24;
  v2 = [BrowseManager alloc];
  v3 = [*(a1 + 48) nearbyCacheKeyForTraits:*(a1 + 32)];
  v15 = [(BrowseManager *)v2 initWithCacheKey:v3];

  v4 = [v11[5] cachedCategoriesForTraits:*(a1 + 32)];
  v5 = [v4 count];

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = v11[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B2FB2C;
    v7[3] = &unk_101638908;
    v9 = &v10;
    v8 = *(a1 + 40);
    [v6 getCategoriesWithCompletion:v7];
  }

  _Block_object_dispose(&v10, 8);
}

void sub_100B2FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B2FA7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 56) alreadyHasCategoriesForTraits:*(a1 + 32)], v5);
  }

  else
  {
    [BrowseManager updateMapRegionInTraits:*(a1 + 32) withLocation:a2];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_100B2FB14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B2FB2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v10 = a3;
  v7 = a2;

  v8 = *(a1 + 32);
  v9 = [v7 count];

  (*(v8 + 16))(v8, v9 != 0, v10);
}

void sub_100B2FDF8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E728;
  qword_10195E728 = v1;
}

void sub_100B307D8(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addButtonRowWithTitle:@"Remove All Local Overrides" action:&stru_101638AE8];
  [(MapsDebugTableSection *)v3 setFooter:@"This does not reset any network defaults."];
}

void sub_100B3083C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"AddressBookSearchOrderKey"];
  [v1 removeObjectForKey:@"AddressBookSearchLimitKey"];
  [v1 removeObjectForKey:@"RecentsSeachOrderKey"];
  [v1 removeObjectForKey:@"RecentsSearchLimitKey"];
  [v1 removeObjectForKey:@"HistorySearchOrderKey"];
  [v1 removeObjectForKey:@"HistorySearchLimitKey"];
}

void sub_100B308DC(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Request Interval(Cellular)" placeholderText:@"(seconds)" inputType:0 geoConfigKeyDouble:MapKitConfig_SearchCompleteRequestIntervalCellular[0], MapKitConfig_SearchCompleteRequestIntervalCellular[1]];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Request Interval(Other)" placeholderText:@"(seconds)" inputType:0 geoConfigKeyDouble:MapKitConfig_SearchCompleteRequestInterval[0], MapKitConfig_SearchCompleteRequestInterval[1]];
}

void sub_100B30978(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Order" placeholderText:@"order" inputType:1 defaultsKey:@"HistorySearchOrderKey"];
  v3 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Limit" placeholderText:@"limit" inputType:1 defaultsKey:@"HistorySearchLimitKey"];
}

void sub_100B30A04(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Order" placeholderText:@"order" inputType:1 defaultsKey:@"RecentsSeachOrderKey"];
  v3 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Limit" placeholderText:@"limit" inputType:1 defaultsKey:@"RecentsSearchLimitKey"];
}

void sub_100B30A90(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Order" placeholderText:@"order" inputType:1 defaultsKey:@"AddressBookSearchOrderKey"];
  v3 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Limit" placeholderText:@"limit" inputType:1 defaultsKey:@"AddressBookSearchLimitKey"];
}

void sub_100B310F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005610();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 138412290;
    v15 = v6;
    v9 = "Prompt to unlock failed: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v14) = 0;
    v9 = "Prompt to unlock succeeded";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
LABEL_7:

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v6);
  }
}

uint64_t sub_100B31354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100B314B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      dispatch_async(&_dispatch_main_q, v4);
      v3 = 0;
    }
  }
}

void sub_100B3268C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AppLaunchAddressCorrectionAlert: buttonIndex = %ld", buf, 0xCu);
  }

  if (a2 != -1)
  {
    if ([*(a1 + 32) count] <= a2)
    {
      v6 = 3;
    }

    else
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
      v6 = [v5 unsignedIntegerValue];
    }

    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchAddressCorrectionAlert: outcome = %ld", buf, 0xCu);
    }

    v8 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppGenius.bundle"];
    switch(v6)
    {
      case 3:
        v14 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvemaps"];
        v15 = +[UIApplication sharedMapsDelegate];
        v16 = [v15 chromeViewController];
        v17 = [v16 _maps_mapsSceneDelegate];
        v18 = [v17 topMostPresentedViewController];
        [v14 setPresentingViewController:v18];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100B329F0;
        v19[3] = &unk_101661B18;
        v19[4] = *(a1 + 40);
        [v14 setDismissHandler:v19];
        [v14 present];

        goto LABEL_20;
      case 2:
        v13 = +[NSUserDefaults standardUserDefaults];
        [v13 setBool:1 forKey:@"HasAcknowledgedAddressCorrectionAlert2021"];

        GEOConfigSetInteger();
        if (*(a1 + 48) == 1)
        {
          [CLLocationManager setAuthorizationStatusByType:2 forBundle:v8];
        }

        v10 = +[MKMapService sharedService];
        v11 = v10;
        v12 = 29;
        break;
      case 1:
        v9 = +[NSUserDefaults standardUserDefaults];
        [v9 setBool:1 forKey:@"HasAcknowledgedAddressCorrectionAlert2021"];

        GEOConfigSetInteger();
        if (*(a1 + 48) == 1)
        {
          [CLLocationManager setAuthorizationStatusByType:3 forBundle:v8];
        }

        v10 = +[MKMapService sharedService];
        v11 = v10;
        v12 = 28;
        break;
      default:
LABEL_20:

        return;
    }

    [v10 captureUserAction:v12 onTarget:641 eventValue:0];

    [*(a1 + 40) _alertDidFinishProcessing];
    goto LABEL_20;
  }
}

void sub_100B32BA0(uint64_t a1)
{
  BOOL = GEOConfigGetBOOL();
  v3 = +[MKSystemController sharedInstance];
  if (![v3 isInternalInstall])
  {

LABEL_8:
    if ((BOOL & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  HasValue = _GEOConfigHasValue();

  if (!HasValue)
  {
    goto LABEL_8;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
LABEL_4:
    v5 = *(*(a1 + 32) + 16);

    v5();
    return;
  }

LABEL_9:
  v6 = objc_alloc_init(ACAccountStore);
  v7 = [v6 aa_primaryAppleAccount];
  v8 = v7;
  if (v7 && ![v7 aa_isManagedAppleID])
  {
    v9 = objc_alloc_init(RTRoutineManager);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B32D30;
    v10[3] = &unk_101638B10;
    v11 = *(a1 + 32);
    [v9 fetchRoutineStateWithHandler:v10];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100B3308C(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B33108;
  v2[3] = &unk_101661AE0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_100B33108(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100005610();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchAddressCorrectionAlert: presenting alert", buf, 2u);
    }

    *(*(a1 + 32) + 8) = 1;
    return [*(a1 + 32) _displayAlert];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchAddressCorrectionAlert: no need to be displayed", v6, 2u);
    }

    return [*(a1 + 32) _alertDidFinishProcessing];
  }
}

void sub_100B340C0()
{
  if (!qword_10195E788)
  {
    v0 = [NSBundle bundleWithIdentifier:@"com.apple.MapsSuggestions"];
    v1 = qword_10195E788;
    qword_10195E788 = v0;

    if (!qword_10195E788)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        v3 = 136446978;
        v4 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefines.h";
        v5 = 1024;
        v6 = 341;
        v7 = 2082;
        v8 = "NSBundle * _Nonnull _MapsSuggestionsBundle(const char * _Nonnull)_block_invoke";
        v9 = 2082;
        v10 = "nil == s_bundleWithMapsSuggestionsIdentifier";
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires bundleWithIdentifier:@com.apple.MapsSuggestions", &v3, 0x26u);
      }
    }
  }
}

void sub_100B341E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E778;
  qword_10195E778 = v1;
}

void sub_100B34550(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E768;
  qword_10195E768 = v1;

  [qword_10195E768 setDateStyle:0];
  v3 = qword_10195E768;

  [v3 setTimeStyle:1];
}

void sub_100B36D28(id a1)
{
  v1 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v2 = qword_10195E7A0;
  qword_10195E7A0 = v1;
}

void sub_100B39B9C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 taggedButtonsView];
  [v4 addSubview:v3];
}

void sub_100B3A598(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B3A5C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100B3A788;
    v6[3] = &unk_101661340;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

void sub_100B3A67C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100B3A738;
    v6[3] = &unk_101661340;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

void sub_100B3A738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSuggestions:*(a1 + 32)];
}

void sub_100B3A788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSuggestions:*(a1 + 32)];
}

void sub_100B3BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B3BAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isRemotePass];
  v5 = *(a1 + 32);
  v6 = [v3 uniqueID];
  if (v4)
  {
    v7 = [v5 isExpressModeEnabledForRemotePassUniqueIdentifier:v6];

    if (!v7)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = [v5 isExpressModeEnabledForPassUniqueIdentifier:v6];

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v3 availableActions];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v18 + 1) + 8 * i) type] == 1)
        {

          v8 = 1;
          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = sub_10003D020();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Wallet does not support top up for this pass", v17, 2u);
  }

  v8 = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_17:

  return v8;
}

uint64_t sub_100B3BC8C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 availableActions];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v31 + 1) + 8 * i) type] == 1)
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = sub_10003D020();
  v11 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Wallet does not support top up for this pass", buf, 2u);
  }

LABEL_12:

  v12 = [*(a1 + 32) _balanceIsLessThanRouteCost:*(a1 + 40) forPass:v5];
  v13 = v12;
  if ((v11 & 1) == 0 && (v12 & 1) == 0)
  {
    v14 = sub_10003D020();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v29 = a3;
      v15 = v5;
      v16 = [NSString alloc];
      v17 = [v15 localizedDescription];
      v18 = v17;
      if (v17)
      {
        v19 = 0;
        v20 = v17;
      }

      else
      {
        v21 = [v15 organizationName];
        if (v21)
        {
          v19 = 0;
          v28 = v21;
          v20 = v21;
        }

        else
        {
          v22 = [v15 localizedName];
          v27 = v22;
          v28 = 0;
          if (v22)
          {
            v20 = v22;
          }

          else
          {
            v20 = @"{pass has no description}";
          }

          v19 = 1;
        }
      }

      v23 = [v15 isRemotePass];
      v24 = @"NO";
      if (v23)
      {
        v24 = @"YES";
      }

      v25 = [v16 initWithFormat:@"%@: %@, isRemote: %@", v15, v20, v24];
      if (v19)
      {
      }

      if (!v18)
      {
      }

      *v35 = 138412290;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found pass %@ that has a balance higher than the route cost, suppressing tip", v35, 0xCu);

      a3 = v29;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  return v13 & (v11 ^ 1);
}

void sub_100B3C128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B3C144(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fetchAllAvailablePassesFromWallet];
    v6 = [v5 _userTransitPassesFromLibrary:v3];
    v7 = [v5 _defaultPaymentCardsFromLibrary:v3];
    if (![v6 count] && !objc_msgSend(v7, "count"))
    {
      (*(a1[7] + 2))();
      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Must have transit passes OR a default payment card", buf, 2u);
      }

      goto LABEL_31;
    }

    v8 = [v5 _identifiersForSecurePasses:v6];
    v9 = [v7 copy];
    v10 = [v5 _identifiersForSecurePasses:v9];

    v11 = [v7 copy];
    v12 = [v5 _defaultPaymentCardExpressStatuses:v11];

    if (![a1[5] count] || !objc_msgSend(a1[6], "count"))
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        v18 = [a1[5] count];
        v19 = [a1[6] count];
        *buf = 134218240;
        v31 = v18;
        v32 = 2048;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_ERROR, "Either paymentMethods is empty (%lu) or suggestions is empty (%lu).", buf, 0x16u);
      }

      goto LABEL_30;
    }

    v26 = v12;
    v13 = [[TransitPayModelDataProvider alloc] initWithTransitPaymentMethods:a1[5] suggestions:a1[6] isTourist:v5[24] defaultPaymentCardsIdentifiers:v10 defaultPaymentCardsExpressStatuses:v12 userClosedLoopIdentifiers:v8 availablePasses:*(v5 + 4)];
    if ([v8 count])
    {
      v14 = [v5 transitSystemsForRoute:a1[4] withSupportedPaymentMethods:a1[5]];
      if ([v14 count])
      {
        v25 = v10;
        v15 = [v5 currencyAmountForRoute:a1[4]];
        v16 = [v5 _passForTopUpWithTransitPasses:v6 forRouteTNIs:v14 routeCost:v15];

        if (v16)
        {
          v17 = a1[5];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100B3C624;
          v27[3] = &unk_101638D60;
          v29 = a1[7];
          v28 = a1[4];
          [v5 _transitTopUpMessageForPass:v16 paymentMethods:v17 completion:v27];

          v10 = v25;
LABEL_29:

          v12 = v26;
LABEL_30:

LABEL_31:
          goto LABEL_32;
        }

        v20 = sub_10003D020();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Found no pass to top up", buf, 2u);
        }

        v10 = v25;
      }

      else
      {
        v20 = sub_10003D020();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "There are no supported transit identifiers for this route", buf, 2u);
        }
      }

      (*(a1[7] + 2))();
    }

    v21 = sub_10003D020();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not top up scenario. Checking to show regular tips.", buf, 2u);
    }

    v14 = [(TransitPayModelDataProvider *)v13 modelData];
    v22 = [v14 hasAllNeededText];
    if (v14 && (v22 & 1) != 0)
    {
      v23 = *(a1[7] + 2);
    }

    else
    {
      v24 = sub_10003D020();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Either title, subtitle or actionTitle is missing. Or modelData is nil. Returning nil from TransitPassManager.", buf, 2u);
      }

      v23 = *(a1[7] + 2);
    }

    v23();
    goto LABEL_29;
  }

LABEL_32:
}

void sub_100B3C850(uint64_t a1, void *a2)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = [v6 identifiers];
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            v11 = 0;
            do
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v17 + 1) + 8 * v11);
              if (v12)
              {
                v13 = [v6 localizedDisplayName];

                if (v13)
                {
                  v14 = [v6 localizedDisplayName];
                  [*(*(a1 + 32) + 32) setObject:v14 forKeyedSubscript:v12];
                }
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }

        v5 = v5 + 1;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100B3CE6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 devicePrimaryPaymentApplication];
  [v4 paymentNetworkIdentifier];
  v5 = PKLegacyTransitNetworkIdentifierForCredentialType();

  if (v5)
  {
    v6 = [v3 localizedDescription];

    if (v6)
    {
      v7 = [v3 localizedDescription];
LABEL_6:
      v9 = v7;
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];

      goto LABEL_7;
    }

    v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v5];

    if (v8)
    {
      v7 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v5];
      goto LABEL_6;
    }

    v10 = sub_10003D020();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Pass %@ does not have localizedDescription or localizedDisplayName", &v11, 0xCu);
    }

    [*(a1 + 32) setObject:@"No pass description available" forKeyedSubscript:v5];
  }

LABEL_7:
}

id sub_100B3CFD8(id a1, PKPass *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [NSString alloc];
  v7 = [(PKPass *)v5 localizedDescription];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v11 = [(PKPass *)v5 organizationName];
    v3 = v11;
    if (v11)
    {
      v9 = 0;
      v10 = v11;
    }

    else
    {
      v12 = [(PKPass *)v5 localizedName];
      v4 = v12;
      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = @"{pass has no description}";
      }

      v9 = 1;
    }
  }

  v13 = [(PKPass *)v5 isRemotePass];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = [v6 initWithFormat:@"%@: %@, isRemote: %@", v5, v10, v14];
  if (v9)
  {
  }

  if (!v8)
  {
  }

  return v15;
}

BOOL sub_100B3D780(id a1, PKSecureElementPass *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  if (([(PKSecureElementPass *)v6 isTransitPass]& 1) != 0)
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v7 = [(PKSecureElementPass *)v6 devicePrimaryPaymentApplication];
  v8 = [v7 state];

  if (v8 != 1)
  {
    v10 = sub_10003D020();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v6;
      v12 = [NSString alloc];
      v13 = [(PKSecureElementPass *)v11 localizedDescription];
      v14 = v13;
      if (v13)
      {
        v15 = 0;
        v16 = v13;
      }

      else
      {
        v17 = [(PKSecureElementPass *)v11 organizationName];
        v4 = v17;
        if (v17)
        {
          v15 = 0;
          v16 = v17;
        }

        else
        {
          v18 = [(PKSecureElementPass *)v11 localizedName];
          v5 = v18;
          if (v18)
          {
            v16 = v18;
          }

          else
          {
            v16 = @"{pass has no description}";
          }

          v15 = 1;
        }
      }

      v19 = [(PKSecureElementPass *)v11 isRemotePass];
      v20 = @"NO";
      if (v19)
      {
        v20 = @"YES";
      }

      v21 = [v12 initWithFormat:@"%@: %@, isRemote: %@", v11, v16, v20];
      if (v15)
      {
      }

      if (!v14)
      {
      }

      *buf = 138412290;
      v24 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Filtering a non-active card: %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v9 = 1;
LABEL_22:

  return v9;
}

void sub_100B3DA74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100B3DA90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) devicePrimaryPaymentApplication];
    v4 = [v3 supportedTransitNetworkIdentifiers];
    v5 = [v4 firstObject];

    if (!v5)
    {
      v31 = sub_10003D020();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Pass does not have any transit network identifiers", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_80;
    }

    v6 = [WeakRetained[4] objectForKey:v5];
    if (!v6)
    {
      v7 = sub_10003D020();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "We did not get a localizedDisplayName name for the pass, which is expected if the card is non-DCI. Falling back to localizedDescription", buf, 2u);
      }

      v6 = [*(a1 + 32) localizedDescription];
    }

    v74 = v5;
    v8 = [*(a1 + 32) transitProperties];
    v9 = [v8 displayableBalance];
    v75 = [WeakRetained _messageFromBalance:v9 passName:v6];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v77 objects:v89 count:16];
    v76 = v6;
    if (v11)
    {
      v72 = WeakRetained;
      v12 = *v78;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v78 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v77 + 1) + 8 * i);
          v15 = [*(a1 + 32) devicePrimaryPaymentApplication];
          v16 = [v15 supportedTransitNetworkIdentifiers];
          v17 = [v14 identifier];
          v18 = [v16 containsObject:v17];

          if (v18)
          {
            v11 = v14;
            goto LABEL_17;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_17:
      WeakRetained = v72;
      v6 = v76;
    }

    v19 = sub_10003D020();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [*(a1 + 32) isRemotePass];
      v21 = @"iPhone";
      if (v20)
      {
        v21 = @"Apple Watch";
      }

      *buf = 138412290;
      v82 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Showing tip for the device: %@", buf, 0xCu);
    }

    v22 = [NSString alloc];
    v23 = v11;
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"MAPS_TRANSIT_PAY_OPEN_WALLET_ACTION_RELOAD" value:@"localized string not found" table:0];

    if (v23)
    {
      v26 = [v23 addValueNameType];
      v27 = 0;
      if (v26 > 1)
      {
        switch(v26)
        {
          case 2:
            v28 = +[NSBundle mainBundle];
            v29 = v28;
            v30 = @"MAPS_TRANSIT_PAY_OPEN_WALLET_ACTION_TOP_UP";
            break;
          case 3:
            v28 = +[NSBundle mainBundle];
            v29 = v28;
            v30 = @"MAPS_TRANSIT_PAY_OPEN_WALLET_ACTION_REFILL";
            break;
          case 4:
            v28 = +[NSBundle mainBundle];
            v29 = v28;
            v30 = @"MAPS_TRANSIT_PAY_OPEN_WALLET_ACTION_LOAD";
            break;
          default:
            goto LABEL_39;
        }

        v27 = [v28 localizedStringForKey:v30 value:@"localized string not found" table:0];

LABEL_39:
        v33 = [v22 initWithFormat:v27, v6];

        v34 = [NSString alloc];
        v71 = [*(a1 + 32) isRemotePass];
        v35 = v23;
        v36 = +[NSBundle mainBundle];
        v73 = [v36 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_RELOAD_FOR_IPHONE" value:@"localized string not found" table:0];

        v37 = +[NSBundle mainBundle];
        v38 = [v37 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_RELOAD_FOR_WATCH" value:@"localized string not found" table:0];

        if (v23)
        {
          v39 = [v35 addValueNameType];
          v40 = 0;
          if (v39 > 1)
          {
            v41 = v33;
            if (v39 == 2)
            {
              v52 = +[NSBundle mainBundle];
              v53 = [v52 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_TOP_UP_FOR_IPHONE" value:@"localized string not found" table:0];

              v54 = +[NSBundle mainBundle];
              v55 = [v54 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_TOP_UP_FOR_WATCH" value:@"localized string not found" table:0];

              if (v71)
              {
                v56 = v55;
              }

              else
              {
                v56 = v53;
              }

              v40 = v56;

              v42 = v76;
            }

            else
            {
              v42 = v76;
              if (v39 != 3)
              {
                v43 = v73;
                if (v39 == 4)
                {
                  v44 = +[NSBundle mainBundle];
                  v45 = [v44 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_LOAD_FOR_IPHONE" value:@"localized string not found" table:0];

                  v46 = +[NSBundle mainBundle];
                  v47 = [v46 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_LOAD_FOR_WATCH" value:@"localized string not found" table:0];

                  if (v71)
                  {
                    v48 = v47;
                  }

                  else
                  {
                    v48 = v45;
                  }

                  v40 = v48;

                  v43 = v73;
                }

                goto LABEL_74;
              }

              v57 = +[NSBundle mainBundle];
              v58 = [v57 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_REFILL_FOR_IPHONE" value:@"localized string not found" table:0];

              v59 = +[NSBundle mainBundle];
              v60 = [v59 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_SUBTITLE_REFILL_FOR_WATCH" value:@"localized string not found" table:0];

              if (v71)
              {
                v61 = v60;
              }

              else
              {
                v61 = v58;
              }

              v40 = v61;
            }

            v43 = v73;
LABEL_74:

            v63 = [v34 initWithFormat:v40, v42];
            v64 = [TransitPayModelData alloc];
            v65 = [WeakRetained _exclamationMarkImage];
            v66 = [*(a1 + 32) uniqueID];
            LOBYTE(v70) = [*(a1 + 32) isRemotePass];
            v67 = [(TransitPayModelData *)v64 initWithTitle:v75 subtitle:v63 actionTitle:v41 image:v65 paymentMethod:v35 topUpPassUniqueID:v66 isForRemoteDevice:v70];

            LOBYTE(v65) = [(TransitPayModelData *)v67 hasAllNeededText];
            v68 = sub_10003D020();
            v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
            if (v65)
            {
              if (v69)
              {
                *buf = 138412290;
                v82 = v67;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Calling completion() with modelData: %@", buf, 0xCu);
              }
            }

            else if (v69)
            {
              *buf = 138413058;
              v82 = v74;
              v83 = 2112;
              v84 = v63;
              v85 = 2112;
              v86 = v75;
              v87 = 2112;
              v88 = v41;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Something is nil in the message. Can't show topup. !\nidentifier:%@\nsubtitle:%@\nmessage:%@\nactionTitle:%@", buf, 0x2Au);
            }

            (*(*(a1 + 48) + 16))();
            v5 = v74;
LABEL_80:

            goto LABEL_81;
          }

          v41 = v33;
          if (v39)
          {
            v42 = v76;
            v43 = v73;
            if (v39 == 1)
            {
              if (v71)
              {
                v51 = v38;
              }

              else
              {
                v51 = v73;
              }

              v40 = v51;
            }

            goto LABEL_74;
          }

          v43 = v73;
          if (v71)
          {
            v62 = v38;
          }

          else
          {
            v62 = v73;
          }

          v40 = v62;
        }

        else
        {
          v49 = sub_10003D020();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Could not find an associated payment method for the given pass. This should never happen - using a default reload string", buf, 2u);
          }

          v43 = v73;
          if (v71)
          {
            v50 = v38;
          }

          else
          {
            v50 = v73;
          }

          v40 = v50;
          v41 = v33;
        }

        v42 = v76;
        goto LABEL_74;
      }

      if (v26 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v32 = sub_10003D020();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Could not find an associated payment method for the given pass. This should never happen - using a default reload string", buf, 2u);
      }
    }

    v27 = v25;
    goto LABEL_39;
  }

LABEL_81:
}

void sub_100B3EA14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v6 = WeakRetained;
    if (v3)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
    }

    else
    {
      v4 = objc_alloc_init(PKPassLibrary);
      v5 = v6[2];
      v6[2] = v4;

      (*(*(a1 + 32) + 16))();
    }

    WeakRetained = v6;
  }
}

void sub_100B3EBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B3EBF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _defaultPaymentCardsFromLibrary:v3];
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_100021DB0(v6, &stru_101638E40);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Default Passes: %@", &v11, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v6 firstObject];
    (*(v9 + 16))(v9, v10 != 0);
  }
}

void sub_100B3EF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B3EF80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _passKitLibraryMayHaveChanged];
    WeakRetained = v2;
  }
}

void sub_100B40788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100B407B0(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[EP] ^processAlerts", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayLaunchAlertsIfNecessary];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _configureTips];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _unlockMergeActivities];
}

void sub_100B40858(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[EP] ^processWelcomeAndAlerts", buf, 2u);
  }

  if ([UIApplication _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionTypeCoverSheet])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _unlockMergeActivities];

    return;
  }

  v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
  if ([v4 isCarPlayOnlyContext])
  {
  }

  else
  {
    v5 = [UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication];

    if (v5)
    {
      v6 = [*(a1 + 40) scene];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100B40AB8;
      v7[3] = &unk_101661760;
      v8 = *(a1 + 48);
      [MapsWelcomeScreenViewController presentWelcomeScreenIfNecessaryInScene:v6 completionBlock:v7];

      return;
    }
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100B409D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B409F0(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[EP] ContainerDidPresentContaineeNotification", v6, 2u);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    (*(*(a1 + 32) + 16))();
  }
}

id sub_100B415D8(uint64_t a1)
{
  [MapsAnalyticStateProvider updateLocaleInformation:*(a1 + 32)];

  return +[MapsAnalyticStateProvider updateTouristInformation];
}

void sub_100B41DB4(uint64_t a1)
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

void sub_100B424FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B42520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B425E0;
  v3[3] = &unk_101638E68;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 performTaskWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void sub_100B425E0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B42684;
  v2[3] = &unk_101661340;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_100B42684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[7] containsObject:*(a1 + 32)])
    {
      [v3[7] removeObject:*(a1 + 32)];
      v3[5] = v3[5] + 1;
    }

    dispatch_group_leave(v3[4]);
    v4 = sub_100005610();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[EP] addTask dispatch_group_leave task: %@", &v6, 0xCu);
    }
  }
}

void sub_100B42844(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[EP] will _mergeTasks", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mergeTasks];
}

void sub_100B42C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B42CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B434AC;
  v6[3] = &unk_10163A780;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, &location);
  v4 = [v3 addCheckmarkRowsGroupForConfigKey:NavigationConfig_SimulationType[0] content:NavigationConfig_SimulationType[1] get:&stru_10163A758 set:0 change:{0, v6}];
  v5 = [NavigationSettingsSimulationTypeController _descriptionForSimulationType:*(a1 + 40)];
  [v3 setFooter:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_100B42DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B42DDC(id a1, BOOL a2)
{
  if (!a2 || GEOConfigGetInteger() != -1)
  {

    GEOConfigSetBOOL();
  }
}

NSString *__cdecl sub_100B42E94(id a1, float a2)
{
  if (a2 <= 0.0)
  {
    v4 = @"Default";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%0.1f m/s (%.0f mph)", a2, a2 * 2.23693629, v2];
  }

  return v4;
}

void sub_100B42F0C(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addNavigationRowForViewControllerClass:objc_opt_class()];
  [v2 setTitle:@"Speed multiplier"];
  v3 = [(MapsDebugTableSection *)v4 addSliderRowWithTitle:@"Minimum speed" subtitleStringHandler:&stru_10163A8A8 min:NavigationConfig_SimulationMinimumSpeed[0] max:NavigationConfig_SimulationMinimumSpeed[1] geoConfigKeyDouble:0 changeHandler:0.0, 10.0];
}

void sub_100B4305C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v8 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"0.5x" value:&off_1016EDE28];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"1x" value:&off_1016E8930];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"2x" value:&off_1016E8948];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"3x" value:&off_1016E8960];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"4x" value:&off_1016E8978];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"5x" value:&off_1016E8990];
}

void sub_100B43194(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_SimulationMoveToIntermediateWaypoints[0];
  v3 = NavigationConfig_SimulationMoveToIntermediateWaypoints[1];
  v6 = a2;
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Move to intermediate waypoint" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Duration to wait at waypoint" placeholderText:@"seconds" inputType:1 geoConfigKeyDouble:NavigationConfig_SimulationWaitAtWaypointDuration[0], NavigationConfig_SimulationWaitAtWaypointDuration[1]];
  [(MapsDebugTableSection *)v6 setFooter:@"After reaching the end of a leg, moves to the waypoint location and waits for a specified duration before proceeding to the start of the next leg. 0 to wait forever. Note that simulation will *always* move to EV charging station waypoints, regardless of the Move to intermediate waypoint setting."];
}

void sub_100B4323C(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_SimulationStartWaypoint[0];
  v3 = NavigationConfig_SimulationStartWaypoint[1];
  v6 = a2;
  v4 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Starting waypoint" placeholderText:@"waypoint index" inputType:1 geoConfigKeyInteger:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Distance ahead of waypoint" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:NavigationConfig_SimulationStartDistanceBeforeWaypoint[0], NavigationConfig_SimulationStartDistanceBeforeWaypoint[1]];
  [(MapsDebugTableSection *)v6 setFooter:@"Starts simulation from any waypoint on the route and at any distance before the waypoint."];
}

void sub_100B43328(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"None" value:&off_1016E8798];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Before arrival" value:&off_1016E87B0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"After arrival" value:&off_1016E87C8];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"After arrival value:then return to destination", &off_1016E88E8];
}

void sub_100B433DC(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Simulation_FollowCurrentRouteThenOffRoute_OffRouteAfterThreshold[0];
  v3 = NavigationConfig_Simulation_FollowCurrentRouteThenOffRoute_OffRouteAfterThreshold[1];
  v4 = a2;
  v5 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Go off route after" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:v2, v3];
  [v5 setSubtitle:{@"Follow the route for this distance, then go off route at the next junction."}];

  v6 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Target distance from route" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:NavigationConfig_Simulation_FollowCurrentRouteThenOffRoute_OffRouteDistanceTarget[0], NavigationConfig_Simulation_FollowCurrentRouteThenOffRoute_OffRouteDistanceTarget[1]];

  [v6 setSubtitle:@"Try to go at least this distance away from the route."];
}

void sub_100B434AC(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v13 integerValue];
      v5 = objc_loadWeakRetained((a1 + 40));
      v6 = [v5 displayingViewController];
      v7 = [v6 tableView];

      [UIView setAnimationsEnabled:0];
      [v7 beginUpdates];
      v8 = [v7 footerViewForSection:0];
      v9 = [NavigationSettingsSimulationTypeController _descriptionForSimulationType:v4];
      v10 = [v8 textLabel];
      [v10 setText:v9];

      [v8 sizeToFit];
      [v7 endUpdates];
      [UIView setAnimationsEnabled:1];
      v11 = objc_loadWeakRetained((a1 + 40));
      v12 = [v11 displayingViewController];
      [v12 rebuildSections];

      [WeakRetained reloadData];
    }
  }
}

void sub_100B43624(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Follow Initial Route" value:&off_1016E87B0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Follow Current Route" value:&off_1016E87C8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Follow Alternate Route" value:&off_1016E88E8];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Follow Current Route value:then Off Route", &off_1016E8900];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Old" value:&off_1016E8918];
}

void sub_100B4386C(id a1, AVAsset *a2, AVAudioMix *a3, NSDictionary *a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B43900;
  block[3] = &unk_101661B18;
  v6 = a2;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100B43900(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) URL];
    v2 = [v3 path];
    GEOConfigSetString();
  }

  else
  {

    _GEOConfigRemoveValue();
  }
}

void sub_100B439F0(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Nav Idle Timer Default Timeout" placeholderText:@"15.0" inputType:3 geoConfigKeyDouble:809, &unk_101645C68];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Nav Idle Timer Incident Timeout" placeholderText:@"5.0" inputType:3 geoConfigKeyDouble:810, &unk_101645CA0];
}

void sub_100B43B18(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:NavigationConfig_SimulationEnabled[0], NavigationConfig_SimulationEnabled[1]];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Prompt to Simulate" geoConfigKey:NavigationConfig_SimulationShouldShowPrompt[0], NavigationConfig_SimulationShouldShowPrompt[1]];
  v4 = [(MapsDebugTableSection *)v5 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100B43BB4(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_TraceRecordingEnabled[0];
  v3 = NavigationConfig_TraceRecordingEnabled[1];
  v4 = a2;
  v5 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v6 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Record Route Preview Guidance" geoConfigKey:NavigationConfig_TraceRecordingRoutePreviewGuidanceEnabled[0], NavigationConfig_TraceRecordingRoutePreviewGuidanceEnabled[1]];
  v7 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Show Bookmark Alert" defaultsKey:@"TraceBookmarksAlert"];
  v8 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Copy Traces To CrashReporter" geoConfigKey:NavigationConfig_TraceRecordingCopyToCrashReporter[0], NavigationConfig_TraceRecordingCopyToCrashReporter[1]];
  v11 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Create Symbolic Link to Latest Trace" geoConfigKey:NavigationConfig_TraceRecordingCreateSymbolicLinkToLatestTrace[0], NavigationConfig_TraceRecordingCreateSymbolicLinkToLatestTrace[1]];
  [v11 setSubtitle:{@"If enabled, LatestTrace.navtrace will point to the last recorded navtrace"}];
  v9 = +[MNFilePaths navTracesDirectoryPath];
  v10 = [NSString stringWithFormat:@"Traces are recorded to: %@", v9];
  [(MapsDebugTableSection *)v4 setFooter:v10];
}

void sub_100B43D08(id a1, MapsDebugTableSection *a2)
{
  v13 = a2;
  v2 = [(MapsDebugTableSection *)v13 addNavigationRowForViewControllerClass:objc_opt_class()];
  v3 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Playback Controls" defaultsKey:@"PlaybackControls"];
  v4 = [(MapsDebugTableSection *)v13 addNavigationRowWithTitle:@"Initial Route Source" viewControllerContent:&stru_10163A618];
  v5 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Load reroutes from trace" geoConfigKey:NavigationConfig_TracePlaybackShouldLoadReroutesFromTrace[0], NavigationConfig_TracePlaybackShouldLoadReroutesFromTrace[1]];
  [v5 setSubtitle:@"Requests reroutes from server if disabled"];
  v6 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Load ETA updates from trace" geoConfigKey:NavigationConfig_TracePlaybackShouldLoadETAUpdatesFromTrace[0], NavigationConfig_TracePlaybackShouldLoadETAUpdatesFromTrace[1]];

  [v6 setSubtitle:@"Requests ETA updates from server if disabled (Load initial route from trace setting must be enabled)"];
  v7 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Update current route when jumping" geoConfigKey:NavigationConfig_TracePlaybackShouldUpdateRouteWhenJumping[0], NavigationConfig_TracePlaybackShouldUpdateRouteWhenJumping[1]];

  [v7 setSubtitle:@"Updates the current route from the navtrace when jumping or scrubbing"];
  v8 = [(MapsDebugTableSection *)v13 addNavigationRowWithTitle:@"Navigation Updates" viewControllerContent:&stru_10163A678];
  v9 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Send Analytics" geoConfigKey:NavigationConfig_TracePlaybackShouldSendAnalytics[0], NavigationConfig_TracePlaybackShouldSendAnalytics[1]];

  [v9 setSubtitle:@"For evaluating analytics only; off normally"];
  v10 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Enable waypoint reroutes" geoConfigKey:NavigationConfig_TracePlaybackShouldLoadWaypointReroutesFromTrace[0], NavigationConfig_TracePlaybackShouldLoadWaypointReroutesFromTrace[1]];

  [v10 setSubtitle:@"Replays adding & removing waypoints"];
  v11 = [(MapsDebugTableSection *)v13 addSwitchRowWithTitle:@"Enable network condition simulation" geoConfigKey:NavigationConfig_TracePlaybackShouldSimulateNetworkConditions[0], NavigationConfig_TracePlaybackShouldSimulateNetworkConditions[1]];

  [v11 setSubtitle:{@"Simulates network conditions from the trace, if available"}];
  v12 = [(MapsDebugTableSection *)v13 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100B43F64(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_TracePlayback_NavigationUpdates_ChangeRoute[0];
  v3 = NavigationConfig_TracePlayback_NavigationUpdates_ChangeRoute[1];
  v6 = a2;
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Change Route" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Depart Waypoint" geoConfigKey:NavigationConfig_TracePlayback_NavigationUpdates_DepartWaypoint[0], NavigationConfig_TracePlayback_NavigationUpdates_DepartWaypoint[1]];
  [(MapsDebugTableSection *)v6 setFooter:@"Navigation updates are significant events that occur during navigation. They are typically user triggered, but not always. Playing these updates helps the trace playback reproduce the user's experience as closely as possible when the navigation session was recorded, although individual update types can be disabled for testing purposes."];
}

void sub_100B44068(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Load Route from Trace" value:&off_1016E8798];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Request New Route" value:&off_1016E87B0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Request New Response value:Preserve Route", &off_1016E87C8];
}

void sub_100B441F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B44214(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B442D8;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Simulate Parked Vehicle Event" action:v5];
  objc_destroyWeak(&v6);
}

void sub_100B442D8(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 isInNavigatingState];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10163A5D8];
  }

  else
  {
    WeakRetained = [UIAlertController alertControllerWithTitle:@"Navigation is not running" message:@"Simulating a parked vehicle event requires navigation to be running." preferredStyle:1];
    v4 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [WeakRetained addAction:v4];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 presentViewController:WeakRetained animated:1 completion:0];
  }
}

void sub_100B443E8(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Min reroute distance" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:NavigationConfig_Parking_BackgroundWalkingRouteMinRerouteDistance[0], NavigationConfig_Parking_BackgroundWalkingRouteMinRerouteDistance[1]];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Min time between reroutes" placeholderText:@"seconds" inputType:1 geoConfigKeyDouble:NavigationConfig_Parking_BackgroundWalkingRouteMinTimeBetweenReroutes[0], NavigationConfig_Parking_BackgroundWalkingRouteMinTimeBetweenReroutes[1]];
}

void sub_100B4447C(id a1, MapsDebugTableSection *a2)
{
  v2 = [(MapsDebugTableSection *)a2 addSwitchRowWithTitle:@"Easy parking detection" geoConfigKey:NavigationConfig_Parking_EasyParkingDetection[0], NavigationConfig_Parking_EasyParkingDetection[1]];
  [v2 setSubtitle:{@"If on, requires only Bluetooth or CarPlay disconnect. If off, uses CoreRoutine's parked vehicle API."}];
}

void sub_100B44608(id a1, MapsDebugTableSection *a2)
{
  v23 = a2;
  v2 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable EV Routing *" get:&stru_10163A318 set:&stru_10163A338];
  v3 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable EV Routing Enhancements *" get:&stru_10163A358 set:&stru_10163A378];
  v4 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable VG Suggestions *" get:&stru_10163A398 set:&stru_10163A3B8];
  v5 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable live updates through MapsSync" geoConfigKey:VirtualGarageConfig_EVRoutingUseMapsSyncLiveUpdates[0], VirtualGarageConfig_EVRoutingUseMapsSyncLiveUpdates[1]];
  v6 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Always show vehicle battery percentage" geoConfigKey:491, &unk_101641C60];
  v7 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Always show last state sync date" geoConfigKey:VirtualGarageConfig_EVRoutingForceShowLastSyncDate[0], VirtualGarageConfig_EVRoutingForceShowLastSyncDate[1]];
  v8 = [(MapsDebugTableSection *)v23 addTextFieldRowWithTitle:@"OEM app pull interval *" placeholderText:@"(seconds)" inputType:1 get:&stru_10163A3D8 set:&stru_10163A3F8];
  v9 = [(MapsDebugTableSection *)v23 addTextFieldRowWithTitle:@"Display age of vehicle state if older than *" placeholderText:@"(seconds)" inputType:1 get:&stru_10163A418 set:&stru_10163A438];
  v10 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Force show EV Routing onboarding in RP" geoConfigKey:229, &unk_10163EA20];
  v11 = [(MapsDebugTableSection *)v23 addTextFieldRowWithTitle:@"OEM app intents timeout" placeholderText:@"(seconds)" inputType:1 get:&stru_10163A458 set:&stru_10163A478];
  v12 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable live vehicle state streaming during nav" geoConfigKey:VirtualGarageConfig_EVRoutingStreamUpdatesDuringNav[0], VirtualGarageConfig_EVRoutingStreamUpdatesDuringNav[1]];
  v13 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Allowlisting of Model IDs *" get:&stru_10163A498 set:&stru_10163A4B8];
  v14 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable synchronous vehicle state updates" geoConfigKey:VirtualGarageConfig_EVRoutingSynchronousVehicleStateUpdate[0], VirtualGarageConfig_EVRoutingSynchronousVehicleStateUpdate[1]];
  v15 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable iAP2 onboarding" geoConfigKey:VirtualGarageConfig_EVRoutingEnableIAP2Onboarding[0], VirtualGarageConfig_EVRoutingEnableIAP2Onboarding[1]];
  v16 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Fake CarDisplaySim identifier" geoConfigKey:VirtualGarageConfig_EVRoutingUseCarDisplaySimIdentifier[0], VirtualGarageConfig_EVRoutingUseCarDisplaySimIdentifier[1]];
  v17 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable automatic vehicle (de)selection upon connection to CarPlay (for non-LPR users only)" geoConfigKey:VirtualGarageConfig_EVRoutingEnableAutomaticVehicleDeselection[0], VirtualGarageConfig_EVRoutingEnableAutomaticVehicleDeselection[1]];
  v18 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable automatic vehicle (de)selection also during active navigation *" geoConfigKey:669, &unk_101643F00];
  v19 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable automatic vehicle unpairing *" geoConfigKey:VirtualGarageConfig_EnableAutomaticVehicleUnpairing[0], VirtualGarageConfig_EnableAutomaticVehicleUnpairing[1]];
  v20 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Enable stepping routes" geoConfigKey:VirtualGarageConfig_EVRoutingAllowSteppingRoutes[0], VirtualGarageConfig_EVRoutingAllowSteppingRoutes[1]];
  v21 = [(MapsDebugTableSection *)v23 addButtonRowWithTitle:@"Force reload vehicles" action:&stru_10163A4D8];
  v22 = [(MapsDebugTableSection *)v23 addSwitchRowWithTitle:@"Show dummy garage (UI testing only) *" get:&stru_10163A4F8 set:&stru_10163A518];
  [(MapsDebugTableSection *)v23 setFooter:@"* needs Maps and navd to restart."];
}

void sub_100B44984(id a1, BOOL a2)
{
  GEOConfigSetBOOL();
  system("killall -9 navd");
  exit(0);
}

BOOL sub_100B449B8(id a1)
{
  HasValue = _GEOConfigHasValue();
  if (HasValue)
  {

    LOBYTE(HasValue) = GEOConfigGetBOOL();
  }

  return HasValue;
}

void sub_100B44A04(id a1)
{
  v1 = +[VGVirtualGarageService sharedService];
  [v1 virtualGarageForceFetchAllVehicles];
}

BOOL sub_100B44A74(id a1)
{
  if (!_GEOConfigHasValue())
  {
    return 1;
  }

  return GEOConfigGetBOOL();
}

void sub_100B44AD4(id a1, NSString *a2)
{
  [(NSString *)a2 doubleValue];

  GEOConfigSetDouble();
}

NSString *__cdecl sub_100B44B0C(id a1)
{
  GEOConfigGetDouble();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 stringValue];

  return v2;
}

void sub_100B44B74(id a1, NSString *a2)
{
  [(NSString *)a2 doubleValue];
  GEOConfigSetDouble();
  exit(0);
}

NSString *__cdecl sub_100B44BA0(id a1)
{
  GEOConfigGetDouble();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 stringValue];

  return v2;
}

void sub_100B44C08(id a1, NSString *a2)
{
  [(NSString *)a2 doubleValue];
  GEOConfigSetDouble();
  exit(0);
}

NSString *__cdecl sub_100B44C34(id a1)
{
  GEOConfigGetDouble();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 stringValue];

  return v2;
}

BOOL sub_100B44CC4(id a1)
{
  HasValue = _GEOConfigHasValue();
  if (HasValue)
  {

    LOBYTE(HasValue) = GEOConfigGetBOOL();
  }

  return HasValue;
}

BOOL sub_100B44D48(id a1)
{
  HasValue = _GEOConfigHasValue();
  if (HasValue)
  {

    LOBYTE(HasValue) = GEOConfigGetBOOL();
  }

  return HasValue;
}

BOOL sub_100B44DCC(id a1)
{
  HasValue = _GEOConfigHasValue();
  if (HasValue)
  {

    LOBYTE(HasValue) = GEOConfigGetBOOL();
  }

  return HasValue;
}

void sub_100B44E58(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Far threshold" placeholderText:@"70.0" inputType:3 geoConfigKeyDouble:176, &unk_10163DF68];
  v3 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Horizontal Accuracy Requirement" placeholderText:@"100.0" inputType:3 geoConfigKeyDouble:178, &unk_10163DFD8];
  v4 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Route updating delay" placeholderText:@"0.0" inputType:3 geoConfigKeyDouble:179, &unk_10163E010];
  v5 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enable route updating" geoConfigKey:180, &unk_10163E048];
  v6 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enable ETA updating" geoConfigKey:181, &unk_10163E080];
  v7 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"ETA Update frequency (sec)" placeholderText:@"120.0" inputType:3 geoConfigKeyDouble:182, &unk_10163E0B8];
  v8 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Route updater threshold (sec)" placeholderText:@"15.0" inputType:3 geoConfigKeyDouble:177, &unk_10163DFA0];
}

void sub_100B45398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100B4540C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B4BC94;
  v16[3] = &unk_101661B98;
  objc_copyWeak(&v17, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Disable all TTR imagery" action:v16];
  v5 = [v3 addSwitchRowWithTitle:@"Enable session recording" defaultsKey:@"MapsARSessionRecordingEnabledKey"];
  v6 = [v3 addNavigationRowWithTitle:@"Replay mode" viewControllerContent:&stru_101639888];
  v7 = GEOConfigGetString();
  v8 = [v7 lastPathComponent];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"Recording playback";
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B4BD58;
  v13[3] = &unk_101654190;
  objc_copyWeak(&v14, (a1 + 40));
  objc_copyWeak(&v15, (a1 + 32));
  v11 = [v3 addButtonRowWithTitle:v10 action:v13];

  v12 = [v3 addSwitchRowWithTitle:@"Loop replay forever" defaultsKey:@"MapsARSessionPlaybackLoopKey"];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
}

void sub_100B455EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B45620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Enable" geoConfigKey:{MapsFeaturesConfig_PedestrianAREnabled[0], MapsFeaturesConfig_PedestrianAREnabled[1]}];
  v5 = [v3 addSwitchRowWithTitle:@"Floating debug UI" get:&stru_101639950 set:&stru_101639970];
  v6 = [v3 addSwitchRowWithTitle:@"TTR button" defaultsKey:@"PedestrianARTTRButtonEnabledKey"];
  v7 = [v3 addSwitchRowWithTitle:@"Feature intro TM flag" get:&stru_101639990 set:&stru_1016399B0];
  v8 = [v3 addGEOTextFieldRowWithTitle:@"Feature intro TM delay (sec)" placeholderText:@"3.0" inputType:3 geoConfigKeyDouble:{415, &unk_101640D48}];
  v9 = [v3 addGEOTextFieldRowWithTitle:@"Feature intro TM timeout 1 (sec)" placeholderText:@"2592000.0" inputType:3 geoConfigKeyDouble:{412, &unk_101640CA0}];
  v10 = [v3 addGEOTextFieldRowWithTitle:@"Feature intro TM timeout 2 (sec)" placeholderText:@"5184000.0" inputType:3 geoConfigKeyDouble:{413, &unk_101640CD8}];
  v11 = [v3 addGEOTextFieldRowWithTitle:@"Feature intro TM timeout 3 (sec)" placeholderText:@"7776000.0" inputType:3 geoConfigKeyDouble:{414, &unk_101640D10}];
  v12 = [v3 addSwitchRowWithTitle:@"Raise to enter TM flag" get:&stru_1016399D0 set:&stru_1016399F0];
  v13 = [v3 addGEOTextFieldRowWithTitle:@"Reroute distance threshold (meters)" placeholderText:@"20.0" inputType:3 geoConfigKeyDouble:{419, &unk_101640E28}];
  v14 = [v3 addGEOTextFieldRowWithTitle:@"Reroute accuracy threshold (meters)" placeholderText:@"20.0" inputType:3 geoConfigKeyDouble:{481, &unk_101641AA0}];
  v15 = [v3 addGEOTextFieldRowWithTitle:@"Reroute timeout (seconds)" placeholderText:@"1.0" inputType:3 geoConfigKeyDouble:{480, &unk_101641A68}];
  v16 = [v3 addGEOTextFieldRowWithTitle:@"Active feature timeout (seconds)" placeholderText:@"2.0" inputType:3 geoConfigKeyDouble:{486, &unk_101641B48}];
  v17 = [v3 addGEOTextFieldRowWithTitle:@"Instruction maneuver skip distance (meters)" placeholderText:@"20.0" inputType:3 geoConfigKeyDouble:{423, &unk_101640F08}];
  v18 = [v3 addGEOTextFieldRowWithTitle:@"Instruction maneuver arrived distance (meters)" placeholderText:@"20.0" inputType:3 geoConfigKeyDouble:{422, &unk_101640ED0}];
  v19 = [v3 addSwitchRowWithTitle:@"Inject fake storefront arrival data" defaultsKey:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];
  v20 = [v3 addSwitchRowWithTitle:@"Force show arrival on last step" defaultsKey:@"PedestrianARForceShowArrivalOnLastStepKey"];
  v21 = [v3 addGEOTextFieldRowWithTitle:@"Num of steps from the end to send arrival labels" placeholderText:@"2" inputType:1 geoConfigKeyUInteger:{NavigationConfig_ARGuidanceArrivalLabelMinimumStepIndex[0], NavigationConfig_ARGuidanceArrivalLabelMinimumStepIndex[1]}];
  v22 = [v3 addGEOTextFieldRowWithTitle:@"Coarse arrival step distance threshold" placeholderText:@"30.0" inputType:3 geoConfigKeyDouble:{406, &unk_101640B40}];
  v23 = [v3 addGEOTextFieldRowWithTitle:@"Max distance from closest point on route" placeholderText:@"150.0" inputType:3 geoConfigKeyDouble:{499, &unk_101641D78}];
  v24 = [v3 addGEOTextFieldRowWithTitle:@"Distance to route override" placeholderText:@"-1" inputType:3 geoConfigKeyDouble:{749, &unk_101644F70}];
  v25 = [v3 addSwitchRowWithTitle:@"Show safety UI" defaultsKey:@"PedestrianARSafetyUIKey"];
  v26 = [v3 addGEOTextFieldRowWithTitle:@"Safety UI Warning delay (secs)" placeholderText:@"2.0" inputType:3 geoConfigKeyDouble:{376, &unk_101640560}];
  v27 = [v3 addGEOTextFieldRowWithTitle:@"Safety UI distance check (meters)" placeholderText:@"1.8" inputType:3 geoConfigKeyDouble:{377, &unk_101640598}];
  v28 = [v3 addGEOTextFieldRowWithTitle:@"Safety UI time check (secs)" placeholderText:@"3.0" inputType:3 geoConfigKeyDouble:{378, &unk_1016405D0}];
  v29 = [v3 addGEOTextFieldRowWithTitle:@"Safety UI Count" placeholderText:@"1" inputType:1 geoConfigKeyInteger:{385, &unk_101640758}];
  v30 = [v3 addGEOTextFieldRowWithTitle:@"Safety UI max on screen time (secs)" placeholderText:@"3.0" inputType:3 geoConfigKeyDouble:{379, &unk_101640608}];
  v31 = [v3 addGEOTextFieldRowWithTitle:@"Failure view timeout" placeholderText:@"30.0" inputType:3 geoConfigKeyDouble:{408, &unk_101640BB0}];
  v32 = [v3 addSwitchRowWithTitle:@"Auto focus camera" defaultsKey:@"PedestrianARAutoFocusEnabledKey"];
  LODWORD(v33) = 1.0;
  v34 = [v3 addSliderRowWithTitle:@"Custom camera focus value" subtitleStringFormat:@"Specify a manual camera focus value %.2f" min:@"PedestrianARAutoFocusDistanceKey" max:0 defaultsKey:0.0 sliderValueIfUnset:v33 changeHandler:0.0];
  v35 = [v3 addGEOTextFieldRowWithTitle:@"VL call interval" placeholderText:@"0.5" inputType:3 geoConfigKeyDouble:{366, &unk_101640330}];
  v36 = [v3 addSwitchRowWithTitle:@"Indoor/outdoor debug UI" get:&stru_101639A10 set:&stru_101639A30];
  v37 = [v3 addTextFieldRowWithTitle:@"Debug view interval (indoor/outdoor)" placeholderText:@"1.0" inputType:3 defaultsKey:@"PedestrianARIndoorOutdoorDetectionInterval"];
  v38 = [v3 addSwitchRowWithTitle:@"Enable post-localization VL call interval" geoConfigKey:{417, &unk_101640DB8}];
  v39 = [v3 addGEOTextFieldRowWithTitle:@"Post-localization VL call interval" placeholderText:@"1.0" inputType:3 geoConfigKeyDouble:{418, &unk_101640DF0}];
  v40 = [v3 addSwitchRowWithTitle:@"Enable lower to exit" defaultsKey:@"PedestrianAREnableLowerToExitKey"];
  v41 = [v3 addGEOTextFieldRowWithTitle:@"Device motion update interval" placeholderText:@"0.2" inputType:3 geoConfigKeyDouble:{424, &unk_101640F40}];
  v42 = [v3 addGEOTextFieldRowWithTitle:@"Device motion sample size" placeholderText:@"5" inputType:1 geoConfigKeyUInteger:{492, &unk_101641C98}];
  v43 = [v3 addSwitchRowWithTitle:@"Floating control arrow animation" geoConfigKey:{476, &unk_101641988}];
  v44 = [v3 addSwitchRowWithTitle:@"Force show affordance" defaultsKey:@"PedestrianARForceShowAffordanceKey"];
  v45 = [v3 addSwitchRowWithTitle:@"Enable Lidar" geoConfigKey:{509, &unk_101641F70}];
  v46 = [v3 addSwitchRowWithTitle:@"Show debug map annotations" defaultsKey:@"PedestrianARDebugMapAnnotationsKey"];
  v47 = [v3 addSwitchRowWithTitle:@"Enable compass calibration error alert" geoConfigKey:{520, &unk_1016421D8}];
  v48 = [v3 addSwitchRowWithTitle:@"Has shown compass calibration error" get:&stru_101639A50 set:&stru_101639A70];
  v49 = [v3 addGEOTextFieldRowWithTitle:@"Compass calibration error time interval" placeholderText:@"604800" inputType:3 geoConfigKeyDouble:{519, &unk_1016421A0}];
  v50 = [v3 addSwitchRowWithTitle:@"Indoor/outdoor analytics" geoConfigKey:{526, &unk_1016422F0}];
  v51 = [v3 addGEOTextFieldRowWithTitle:@"Indoor/outdoor max entries" placeholderText:@"3" inputType:1 geoConfigKeyUInteger:{528, &unk_101642360}];
  v52 = [v3 addGEOTextFieldRowWithTitle:@"Indoor/outdoor frame interval" placeholderText:@"0.5" inputType:3 geoConfigKeyDouble:{527, &unk_101642328}];
  v53 = [v3 addNavigationRowWithTitle:@"Session state management" viewControllerContent:&stru_101639A90];
  v54 = [v3 addNavigationRowWithTitle:@"Usage monitor" viewControllerContent:&stru_101639BF0];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100B4A624;
  v59[3] = &unk_101661B98;
  objc_copyWeak(&v60, (a1 + 32));
  v55 = [v3 addButtonRowWithTitle:@"Show feature intro TM" action:v59];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100B4A7CC;
  v57[3] = &unk_101661B98;
  objc_copyWeak(&v58, (a1 + 32));
  v56 = [v3 addButtonRowWithTitle:@"Show raise to enter TM" action:v57];
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
}

void sub_100B45F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B45FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100B48190;
  v34[3] = &unk_1016619A8;
  objc_copyWeak(&v35, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Enable" get:&stru_101639C70 set:v34];
  v5 = [v3 addGEOTextFieldRowWithTitle:@"Frame rate" placeholderText:@"10.0" inputType:3 geoConfigKeyDouble:{274, &unk_10163F3F8}];
  v6 = [v3 addSwitchRowWithTitle:@"Enable Lidar" geoConfigKey:{797, &unk_1016459A8}];
  v7 = [v3 addGEOTextFieldRowWithTitle:@"Experiment config" placeholderText:@"0" inputType:1 geoConfigKeyInteger:{411, &unk_101640C68}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100B4825C;
  v32[3] = &unk_1016619A8;
  objc_copyWeak(&v33, (a1 + 32));
  v8 = [v3 addSwitchRowWithTitle:@"Enable callout banner" get:&stru_101639C90 set:v32];
  v9 = [v3 addSwitchRowWithTitle:@"Keep ARSession running forever" defaultsKey:@"VLFSessionKeepARSessionRunningForeverKey"];
  v10 = [v3 addNavigationRowWithTitle:@"VLF success criteria" viewControllerContent:&stru_101639CD0];
  v11 = [v3 addGEOTextFieldRowWithTitle:@"VL call interval" placeholderText:@"0.0" inputType:3 geoConfigKeyDouble:{304, &unk_10163FA18}];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100B48364;
  v30[3] = &unk_101658C70;
  objc_copyWeak(&v31, (a1 + 32));
  v12 = [v3 addNavigationRowWithTitle:@"Throttle VLF after localization" viewControllerContent:v30];
  v13 = [v3 addSwitchRowWithTitle:@"Reload route after localization" geoConfigKey:{297, &unk_10163F890}];
  v14 = [v3 addGEOTextFieldRowWithTitle:@"UI timeout" placeholderText:@"10.0" inputType:3 geoConfigKeyDouble:{198, &unk_10163E400}];
  v15 = [v3 addGEOTextFieldRowWithTitle:@"Keep scanning delay" placeholderText:@"3.5" inputType:3 geoConfigKeyDouble:{241, &unk_10163ECC0}];
  v16 = [v3 addGEOTextFieldRowWithTitle:@"Camera pitch threshold" placeholderText:@"30" inputType:3 geoConfigKeyDouble:{242, &unk_10163ECF8}];
  v17 = [v3 addSwitchRowWithTitle:@"Slow down scanning animations" defaultsKey:@"VLFSessionScanningAnimationSlowDownKey"];
  v18 = [v3 addSwitchRowWithTitle:@"Show longest text" defaultsKey:@"VLFSessionScanningAnimationShowLongestTextKey"];
  v19 = [v3 addTextFieldRowWithTitle:@"Alternative longest scanning text" placeholderText:&stru_1016631F0 inputType:4 defaultsKey:@"VLFSessionScanningAnimationAlternativeLongestTextKey"];
  v20 = [v3 addSwitchRowWithTitle:@"Enable camera motion monitor" defaultsKey:@"VLFSessionScanningEnableCameraMotionMonitorKey"];
  v21 = [v3 addSwitchRowWithTitle:@"Always show puck" geoConfigKey:{838, &unk_1016461C8}];
  v22 = [v3 addSwitchRowWithTitle:@"Show floating debug view" get:&stru_101639D78 set:&stru_101639D98];
  if (GEOConfigGetBOOL())
  {
    v23 = [v3 addSwitchRowWithTitle:@"VL Trace Recording" geoConfigKey:{199, &unk_10163E438}];
    v24 = [v3 addSwitchRowWithTitle:@"Temporarily recording VL traces" defaultsKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"];
  }

  v25 = [v3 addNavigationRowWithTitle:@"Session state management" viewControllerContent:&stru_101639DB8];
  if (GEOConfigGetBOOL())
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100B48480;
    v28[3] = &unk_101661B98;
    objc_copyWeak(&v29, (a1 + 40));
    v26 = [v3 addButtonRowWithTitle:@"Show VLF UI" action:v28];
    objc_destroyWeak(&v29);
  }

  else
  {
    v27 = [v3 addReadOnlyRowWithTitle:@"Show VLF UI" subtitle:0];
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
}

void sub_100B464E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B46530(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Enabled" geoConfigKey:{MapsFeaturesConfig_VisualLocalizationCrowdsourcingEnabled[0], MapsFeaturesConfig_VisualLocalizationCrowdsourcingEnabled[1]}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B47FF8;
  v13[3] = &unk_1016619A8;
  objc_copyWeak(&v14, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Collect VLF Crowdsourcing data" get:&stru_10163A0F8 set:v13];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100B48110;
  v11 = &unk_101661B98;
  objc_copyWeak(&v12, (a1 + 40));
  v6 = [v3 addButtonRowWithTitle:@"Clear VLF Crowdsourcing flag" action:&v8];
  v7 = [v3 addGEOTextFieldRowWithTitle:@"Permission dialog localization threshold" placeholderText:@"3" inputType:1 geoConfigKeyInteger:{514, &unk_101642088, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void sub_100B466AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B466D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B46810;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Enable" geoConfigKey:151 switchOnStateIfUnset:&unk_10163DA18 changeHandler:{0, v8}];
  v5 = [v3 addSwitchRowWithTitle:@"Enable in route planning" geoConfigKey:{152, &unk_10163DA50}];
  v6 = [v3 addNavigationRowWithTitle:@"Thermal state threshold" viewControllerContent:&stru_10163A158];
  v7 = [v3 addNavigationRowWithTitle:@"Session state management" viewControllerContent:&stru_10163A1F8];
  objc_destroyWeak(&v9);
}

void sub_100B46810(uint64_t a1, int a2)
{
  if (GEOConfigGetBOOL() != a2)
  {
    if (a2)
    {
      v4 = @"MarcoLite Enabled";
    }

    else
    {
      v4 = @"MarcoLite Disabled";
    }

    if (a2)
    {
      v5 = @"Enable CoreLocation Pedestrian Map Matching?";
    }

    else
    {
      v5 = @"Disable CoreLocation Pedestrian Map Matching?";
    }

    v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:1];
    v7 = [UIAlertAction actionWithTitle:@"No" style:1 handler:0];
    [v6 addAction:v7];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B47FE4;
    v10[3] = &unk_10163A138;
    v11 = a2;
    v8 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v10];
    [v6 addAction:v8];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained presentViewController:v6 animated:1 completion:0];
  }
}

void sub_100B46978(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Floating debug view" content:&stru_10163A218];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B46C74;
  v19[3] = &unk_10165E0A8;
  objc_copyWeak(&v20, &location);
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Monitors" content:v19];
  if (GEOConfigGetBOOL())
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100B46FC4;
    v17[3] = &unk_10165E0A8;
    objc_copyWeak(&v18, &location);
    v5 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Daily usage limits" content:v17];
    objc_destroyWeak(&v18);
  }

  v6 = +[UIApplication _maps_keyMapsSceneDelegate];
  v7 = [v6 platformController];

  v8 = [v7 auxiliaryTasksManager];
  v9 = [v8 auxilaryTaskForClass:objc_opt_class()];

  [v9 activeMonitors];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B4728C;
  v10 = v15[3] = &unk_1016612C8;
  v16 = v10;
  v11 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Currently active monitors" content:v15];
  if ([v10 count])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B473E0;
    v13[3] = &unk_1016612C8;
    v14 = v10;
    v12 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Session throttling & disabling" content:v13];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void sub_100B46C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100B46C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Low power mode monitor" geoConfigKey:{164, &unk_10163DCC8}];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B477FC;
  v19[3] = &unk_1016619A8;
  objc_copyWeak(&v20, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Daily usage monitor" get:&stru_10163A278 set:v19];
  v6 = [v3 addSwitchRowWithTitle:@"Device motion monitor" geoConfigKey:{188, &unk_10163E208}];
  v7 = [v3 addSwitchRowWithTitle:@"Tracking state monitor" geoConfigKey:{189, &unk_10163E240}];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B4785C;
  v17[3] = &unk_1016619A8;
  objc_copyWeak(&v18, (a1 + 32));
  v8 = [v3 addSwitchRowWithTitle:@"Sunset/sunrise monitor" get:&stru_10163A298 set:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B478BC;
  v15[3] = &unk_1016619A8;
  objc_copyWeak(&v16, (a1 + 32));
  v9 = [v3 addSwitchRowWithTitle:@"Battery level monitor" get:&stru_10163A2B8 set:v15];
  if (GEOConfigGetBOOL())
  {
    v10 = [v3 addGEOTextFieldRowWithTitle:@"Minimum battery level" placeholderText:@"20" inputType:3 geoConfigKeyDouble:{163, &unk_10163DC90}];
  }

  if (GEOConfigGetBOOL())
  {
    v11 = [v3 addGEOTextFieldRowWithTitle:@"Sunset/sunrise offset" placeholderText:@"600" inputType:3 geoConfigKeyDouble:{186, &unk_10163E198}];
  }

  v12 = [v3 addSwitchRowWithTitle:@"Thermal state monitor" geoConfigKey:{275, &unk_10163F430}];
  v13 = [v3 addGEOTextFieldRowWithTitle:@"Retry time interval" placeholderText:@"180" inputType:3 geoConfigKeyDouble:{159, &unk_10163DBB0}];
  v14 = [v3 addGEOTextFieldRowWithTitle:@"Consecutive event timeout" placeholderText:@"20" inputType:3 geoConfigKeyDouble:{160, &unk_10163DBE8}];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
}

void sub_100B46F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B46FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addGEOTextFieldRowWithTitle:@"Maximum daily usage" placeholderText:@"900" inputType:3 geoConfigKeyDouble:{165, &unk_10163DD00}];
  v5 = +[VIOSessionDailyUsageEntry loadOrCreateEntry];
  [v5 currentUsage];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [v6 stringValue];
  v8 = [v3 addReadOnlyRowWithTitle:@"Today's usage" value:v7];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B47654;
  v19[3] = &unk_101661B98;
  objc_copyWeak(&v20, (a1 + 32));
  v9 = [v3 addButtonRowWithTitle:@"Clear current daily usage" action:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B476AC;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, (a1 + 32));
  v10 = [v3 addButtonRowWithTitle:@"Simulate day change" action:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B47724;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, (a1 + 32));
  v11 = [v3 addButtonRowWithTitle:@"Make entry 1 day old" action:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B477BC;
  v13[3] = &unk_101661B98;
  objc_copyWeak(&v14, (a1 + 32));
  v12 = [v3 addButtonRowWithTitle:@"Refresh this page" action:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
}

void sub_100B47248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B4728C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(a1 + 32);
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

          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v3 addReadOnlyRowWithTitle:v10 subtitle:{0, v13}];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v12 = [v3 addEmptySectionBannerRowWithTitle:@"There are currently no active monitors"];
  }
}

void sub_100B473E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) anyObject];
  v5 = [v4 stateManager];

  if ([v5 isThrottling])
  {
    v6 = [v3 addEmptySectionBannerRowWithTitle:@"The VIO session is currently throttled"];
    [v5 remainingThrottleTime];
    v7 = [NSNumber numberWithDouble:?];
    v8 = [v7 stringValue];
    v9 = [v3 addReadOnlyRowWithTitle:@"Time left:" subtitle:v8];

    if ([v5 throttleEventReason])
    {
      v10 = @"VIOSessionThrottleEventDeviceMotion";
    }

    else
    {
      v10 = @"VIOSessionThrottleEventARTrackingState";
    }

    v11 = [v3 addReadOnlyRowWithTitle:@"Reason:" subtitle:v10];
  }

  else if ([v5 isDisabled])
  {
    v12 = [v3 addEmptySectionBannerRowWithTitle:@"The VIO session is currently disabled"];
    v13 = [v3 addReadOnlyRowWithTitle:@"Reasons:" subtitle:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v5 disableEventReasons];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v23 + 1) + 8 * v18) integerValue] - 1;
          v20 = @"VIOSessionDisableEventLowPowerMode";
          if (v19 <= 9)
          {
            v20 = off_10163A968[v19];
          }

          v21 = [v3 addEmptySectionBannerRowWithTitle:v20];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v22 = [v3 addEmptySectionBannerRowWithTitle:@"The VIO session is currently neither throttled nor disabled"];
  }
}

void sub_100B47654(uint64_t a1)
{
  +[VIOSessionDailyUsageEntry clearEntry];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B476AC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:NSCalendarDayChangedNotification object:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B47724(uint64_t a1)
{
  v4 = +[VIOSessionDailyUsageEntry loadOrCreateEntry];
  v2 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  [v4 updateCreationDate:v2];

  [v4 save];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B477BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B477FC(uint64_t a1)
{
  GEOConfigSetBOOL();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B4785C(uint64_t a1)
{
  GEOConfigSetBOOL();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B478BC(uint64_t a1)
{
  GEOConfigSetBOOL();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B47988(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VIOSessionStateFloatingDebugViewController sharedInstance];
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

BOOL sub_100B479E8(id a1)
{
  v1 = +[VIOSessionStateFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100B47A28(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B47AFC;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Thermal states" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100B47AE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B47AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B47D54;
  v14[3] = &unk_1016619A8;
  objc_copyWeak(&v15, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Nominal" get:&stru_10163A178 set:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B47DCC;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Fair" get:&stru_10163A198 set:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B47E44;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:@"Serious" get:&stru_10163A1B8 set:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B47EBC;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = [v3 addSwitchRowWithTitle:@"Critical" get:&stru_10163A1D8 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100B47D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B47D54(uint64_t a1, int a2)
{
  if (a2)
  {
    GEOConfigSetSyncInteger();
  }

  else
  {
    _GEOConfigRemoveValueSync();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B47DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    GEOConfigSetSyncInteger();
  }

  else
  {
    _GEOConfigRemoveValueSync();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B47E44(uint64_t a1, int a2)
{
  if (a2)
  {
    GEOConfigSetSyncInteger();
  }

  else
  {
    _GEOConfigRemoveValueSync();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B47EBC(uint64_t a1, int a2)
{
  if (a2)
  {
    GEOConfigSetSyncInteger();
  }

  else
  {
    _GEOConfigRemoveValueSync();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B47FF8(uint64_t a1, char a2)
{
  if (a2)
  {
    v7 = [UIAlertController alertControllerWithTitle:@"Enable Crowdsourcing?" message:@"Enabling this will result in various sensor readings and information derived from your camera during Pedestrian AR and Refine Location to be sent to Apple. Actual camera images will NOT be collected." preferredStyle:1];
    v4 = [UIAlertAction actionWithTitle:@"Enable" style:0 handler:&stru_10163A118];
    [v7 addAction:v4];

    v5 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
    [v7 addAction:v5];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained presentViewController:v7 animated:1 completion:0];
  }

  else
  {

    GEOConfigSetBOOL();
  }
}

void sub_100B48110(uint64_t a1)
{
  _GEOConfigRemoveValue();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B48190(uint64_t a1)
{
  GEOConfigSetBOOL();
  v4 = [UIAlertController alertControllerWithTitle:@"Restart Maps" message:@"You will need to restart Maps for this change to take effect" preferredStyle:1];
  v2 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v4 addAction:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v4 animated:1 completion:0];
}

void sub_100B4825C(uint64_t a1)
{
  GEOConfigSetBOOL();
  v5 = [UIAlertController alertControllerWithTitle:@"Clear usage counts?" message:@"Would you like to also clear all of your VLF usage counts? This will make VLF behave as if you've never seen the feature before." preferredStyle:1];
  v2 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101639CB0];
  [v5 addAction:v2];

  v3 = [UIAlertAction actionWithTitle:@"No style:thanks" handler:1, 0];
  [v5 addAction:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v5 animated:1 completion:0];
}

void sub_100B48364(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B49DD4;
  v6[3] = &unk_101639930;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, &location);
  v4 = [v3 addSectionWithTitle:0 content:v6];
  v5 = [v3 addSectionWithTitle:@"Teardown conditions" content:&stru_101639D58];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_100B48458(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B48480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:&stru_10163A0D8];
}

void sub_100B484CC(id a1)
{
  v1 = +[UIApplication _maps_keyMapsSceneDelegate];
  v5 = [v1 platformController];

  v2 = [v5 auxiliaryTasksManager];
  v3 = [v2 auxilaryTaskForClass:objc_opt_class()];

  [v3 showVLFUI];
  v4 = +[VLFSessionUsageTracker sharedInstance];
  [v4 registerUserWasShownCallout];
}

void sub_100B48584(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"App launch delay monitor" content:&stru_101639DD8];
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"CarPlay connection monitor" content:&stru_101639DF8];
  v5 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Chrome stack monitor" content:&stru_101639E18];
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Coarse location monitor" content:&stru_101639E38];
  v7 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Historical location accuracy monitor" content:&stru_101639E58];
  v8 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Home/work monitor" content:&stru_101639E78];
  v9 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Horizontal accuracy monitor" content:&stru_101639E98];
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Location type monitor" content:&stru_101639EB8];
  v11 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Location signal environment monitor" content:&stru_101639ED8];
  v12 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Maps home monitor" content:&stru_101639EF8];
  v13 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Network reachability monitor" content:&stru_101639F18];
  v14 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Outdoor monitor" content:&stru_101639F38];
  v15 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Sunset/sunrise monitor" content:&stru_101639F58];
  v16 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Thermal state monitor" content:&stru_101639F78];
  v17 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Tile availability monitor" content:&stru_101639F98];
  v18 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Transit stepping monitor" content:&stru_101639FB8];
  v19 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Offline Maps monitor" content:&stru_101639FD8];
  objc_initWeak(&location, v2);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100B488B8;
  v26 = &unk_10165E0A8;
  objc_copyWeak(&v27, &location);
  v20 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Usage monitor" content:&v23];
  v21 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Debug puck visibility monitor" content:&stru_10163A098, v23, v24, v25, v26];
  v22 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Debug banner visibility monitor" content:&stru_10163A0B8];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void sub_100B48898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B488B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Enabled" geoConfigKey:{205, &unk_10163E4E0}];
  v5 = [v3 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionUsageMonitorAffectsPuckVisibilityKey"];
  v6 = [v3 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionUsageMonitorAffectsBannerVisibilityKey"];
  v7 = [v3 addGEOTextFieldRowWithTitle:@"Maximum callout dismisses" placeholderText:@"3" inputType:1 geoConfigKeyUInteger:{226, &unk_10163E978}];
  v8 = [v3 addGEOTextFieldRowWithTitle:@"First interaction threshold (s)" placeholderText:@"1296000" inputType:3 geoConfigKeyDouble:{223, &unk_10163E8D0}];
  v9 = [v3 addGEOTextFieldRowWithTitle:@"Second interaction threshold (s)" placeholderText:@"2592000" inputType:3 geoConfigKeyDouble:{224, &unk_10163E908}];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100B48C74;
  v21[3] = &unk_10165EF68;
  objc_copyWeak(&v22, (a1 + 32));
  v10 = [v3 addTextFieldRowWithTitle:@"VLF localizations" placeholderText:@"0" inputType:3 get:&stru_101639FF8 set:v21];
  v11 = [v3 addButtonRowWithTitle:@"Clear user has entered VLF flag" action:&stru_10163A018];
  v12 = [v3 addButtonRowWithTitle:@"Clear user has seen VLF callout flag" action:&stru_10163A038];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100B48D08;
  v19 = &unk_101661B98;
  objc_copyWeak(&v20, (a1 + 32));
  v13 = [v3 addButtonRowWithTitle:@"Clear successful VLF localization count" action:&v16];
  v14 = [v3 addButtonRowWithTitle:@"Clear dismissals" action:{&stru_10163A058, v16, v17, v18, v19}];
  v15 = [v3 addButtonRowWithTitle:@"Clear taps" action:&stru_10163A078];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
}

void sub_100B48B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B48B8C(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enabled" defaultsKey:@"VLFSessionDebugBannerVisibilityMonitorEnabledKey"];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Active" defaultsKey:@"VLFSessionDebugBannerVisibilityMonitorActiveKey"];
}

void sub_100B48C00(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enabled" defaultsKey:@"VLFSessionDebugPuckVisibilityMonitorEnabledKey"];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Active" defaultsKey:@"VLFSessionDebugPuckVisibilityMonitorActiveKey"];
}

void sub_100B48C74(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[VLFSessionUsageTracker sharedInstance];
  if (v5)
  {
    [v3 setNumberOfTimesVLFLocalized:{objc_msgSend(v5, "integerValue")}];
  }

  else
  {
    [v3 clearSuccessfulVLFLocalizations];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B48D08(uint64_t a1)
{
  v2 = +[VLFSessionUsageTracker sharedInstance];
  [v2 clearSuccessfulVLFLocalizations];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B48D70(id a1)
{
  v1 = +[VLFSessionUsageTracker sharedInstance];
  [v1 clearTaps];
}

void sub_100B48DB8(id a1)
{
  v1 = +[VLFSessionUsageTracker sharedInstance];
  [v1 clearDismissals];
}

void sub_100B48E00(id a1)
{
  v1 = +[VLFSessionUsageTracker sharedInstance];
  [v1 clearUserWasShownVLFCalloutFlag];
}

void sub_100B48E48(id a1)
{
  v1 = +[VLFSessionUsageTracker sharedInstance];
  [v1 clearUserEnteredVLFFlag];
}

NSString *__cdecl sub_100B48E90(id a1)
{
  v1 = +[VLFSessionUsageTracker sharedInstance];
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v1 numberOfTimesVLFLocalized]);

  return v2;
}

void sub_100B48F08(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:578, &unk_101642E18];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionOfflineMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionOfflineMonitorAffectsBannerVisibilityKey"];
}

void sub_100B48FA0(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:278, &unk_10163F4D8];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionTransitSteppingMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionTransitSteppingMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49038(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Enabled" geoConfigKey:212, &unk_10163E668];
  v3 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Minimum distance change threshold (meters)" placeholderText:@"10" inputType:3 geoConfigKeyDouble:221, &unk_10163E860];
  v4 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Error timeout (seconds)" placeholderText:@"30" inputType:3 geoConfigKeyDouble:282, &unk_10163F5B8];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionTileAvailabilityMonitorAffectsPuckVisibilityKey"];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionTileAvailabilityMonitorAffectsBannerVisibilityKey"];
  [(MapsDebugTableSection *)v7 setFooter:@"This monitor's distance threshold and error timeout parameters are shared with the equivalent Pedestrian AR tile availability monitor. Modifying them in one place will modify them in both."];
}

void sub_100B49140(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:219, &unk_10163E7F0];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionThermalStateMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionThermalStateMonitorAffectsBannerVisibilityKey"];
}

void sub_100B491D8(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enabled" geoConfigKey:206, &unk_10163E518];
  v3 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Offset threshold (seconds)" placeholderText:@"900" inputType:3 geoConfigKeyDouble:207, &unk_10163E550];
  v4 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum time threshold (seconds)" placeholderText:@"300" inputType:3 geoConfigKeyDouble:209, &unk_10163E5C0];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum distance threshold (meters)" placeholderText:@"100" inputType:3 geoConfigKeyDouble:208, &unk_10163E588];
  v6 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionSunsetSunriseMonitorAffectsPuckVisibilityKey"];
  v7 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionSunsetSunriseMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49300(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enabled" geoConfigKey:425, &unk_101640F78];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionLocationOutdoorMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionLocationOutdoorMonitorAffectsBannerVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Confidence threshold" placeholderText:@"0.85" inputType:3 geoConfigKeyDouble:426, &unk_101640FB0];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Consecutive outdoor requirement" placeholderText:@"5" inputType:1 geoConfigKeyUInteger:427, &unk_101640FE8];
  v7 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Consecutive indoor requirement" placeholderText:@"5" inputType:1 geoConfigKeyUInteger:428, &unk_101641020];
}

void sub_100B49430(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:216, &unk_10163E748];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionNetworkReachabilityMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionNetworkReachabilityMonitorAffectsBannerVisibilityKey"];
}

void sub_100B494C8(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:225, &unk_10163E940];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionMapsHomeMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionMapsHomeMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49560(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enabled" geoConfigKey:360, &unk_1016401E0];
  v3 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionLocationSignalEnvironmentMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionLocationSignalEnvironmentMonitorAffectsBannerVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Rural" geoConfigKey:361, &unk_101640218];
  v6 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Urban" geoConfigKey:362, &unk_101640250];
  v7 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"DenseUrban" geoConfigKey:363, &unk_101640288];
  v8 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"DenseUrbanCanyon" geoConfigKey:364, &unk_1016402C0];
  v9 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Foliage" geoConfigKey:365, &unk_1016402F8];
}

void sub_100B496AC(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enabled" geoConfigKey:299, &unk_10163F900];
  v3 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionLocationTypeMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionLocationTypeMonitorAffectsBannerVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"GPS" geoConfigKey:300, &unk_10163F938];
  v6 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"WiFi" geoConfigKey:301, &unk_10163F970];
  v7 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"WiFi2" geoConfigKey:302, &unk_10163F9A8];
  v8 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Pipeline" geoConfigKey:303, &unk_10163F9E0];
}

void sub_100B497D4(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:298, &unk_10163F8C8];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionLocationHorizontalAccuracyMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionLocationHorizontalAccuracyMonitorAffectsBannerVisibilityKey"];
}

void sub_100B4986C(id a1, MapsDebugTableSection *a2)
{
  v9 = a2;
  v2 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Enabled" geoConfigKey:356, &unk_101640100];
  v3 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionHomeWorkMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionHomeWorkMonitorAffectsBannerVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Distance threshold (meters)" placeholderText:@"100.0" inputType:3 geoConfigKeyDouble:359, &unk_1016401A8];
  v6 = [(MapsDebugTableSection *)v9 addGEOTextFieldRowWithTitle:@"Location update threshold (meters)" placeholderText:@"10.0" inputType:3 geoConfigKeyDouble:510, &unk_101641FA8];
  v7 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Home" geoConfigKey:357, &unk_101640138];
  v8 = [(MapsDebugTableSection *)v9 addSwitchRowWithTitle:@"Work" geoConfigKey:358, &unk_101640170];
}

void sub_100B499AC(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enabled" geoConfigKey:314, &unk_10163FC48];
  v3 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Location window size" placeholderText:@"3" inputType:1 geoConfigKeyUInteger:315, &unk_10163FC80];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionHistoricalLocationAccuracyMonitorAffectsPuckVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionHistoricalLocationAccuracyMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49A74(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enabled" geoConfigKey:213, &unk_10163E6A0];
  v3 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Authorization delay (seconds)" placeholderText:@"2" inputType:3 geoConfigKeyDouble:269, &unk_10163F2E0];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionCoarseLocationMonitorAffectsPuckVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionCoarseLocationMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49B3C(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:311, &unk_10163FBA0];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionChromeStackMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionChromeStackMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49BD4(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:215, &unk_10163E710];
  v3 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionCarPlayConnectionMonitorAffectsPuckVisibilityKey"];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionCarPlayConnectionMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49C6C(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enabled" geoConfigKey:265, &unk_10163F200];
  v3 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Timeout threshold (seconds)" placeholderText:@"1" inputType:3 geoConfigKeyDouble:266, &unk_10163F238];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects puck visibility" defaultsKey:@"VLFSessionAppLaunchDelayMonitorAffectsPuckVisibilityKey"];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Affects banner visibility" defaultsKey:@"VLFSessionAppLaunchDelayMonitorAffectsBannerVisibilityKey"];
}

void sub_100B49D34(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VLFSessionStateFloatingDebugViewController sharedInstance];
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

BOOL sub_100B49D94(id a1)
{
  v1 = +[VLFSessionStateFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100B49DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B4A044;
  v5[3] = &unk_101639D38;
  objc_copyWeak(&v6, (a1 + 32));
  objc_copyWeak(&v7, (a1 + 40));
  v4 = [v3 addSwitchRowWithTitle:@"Enable" geoConfigKey:268 switchOnStateIfUnset:&unk_10163F2A8 changeHandler:{1, v5}];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
}

void sub_100B49EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B49EC4(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"When CL accuracy gets bad enough" geoConfigKey:257, &unk_10163F040];
  v3 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"CL accuracy threshold" placeholderText:@"15" inputType:3 geoConfigKeyDouble:258, &unk_10163F078];
  v4 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Timeout enabled" geoConfigKey:259, &unk_10163F0B0];
  v5 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Timeout (seconds)" placeholderText:@"120" inputType:3 geoConfigKeyDouble:260, &unk_10163F0E8];
  v6 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Distance" geoConfigKey:276, &unk_10163F468];
  v7 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Distance threshold (meters)" placeholderText:@"120" inputType:3 geoConfigKeyDouble:277, &unk_10163F4A0];
  v8 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"When we stop getting fused locations" geoConfigKey:281, &unk_10163F580];
  v9 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"App background" geoConfigKey:296, &unk_10163F858];
}

void sub_100B4A044(uint64_t a1)
{
  v5 = [UIAlertController alertControllerWithTitle:@"Restart Maps" message:@"You will need to restart Maps for this change to take effect" preferredStyle:1];
  v2 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v5 animated:1 completion:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 rebuildSections];
}

void sub_100B4A110(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B4A1E0;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:0 content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100B4A1C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B4A1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B4A35C;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Horizontal accuracy OR fused location" get:&stru_101639CF0 set:v12];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100B4A420;
  v10 = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Horizontal accuracy AND fused location" get:&stru_101639D10 set:&v7];
  v6 = [v3 addSwitchRowWithTitle:@"Ignore fused location during ARKit replay" defaultsKey:{@"VLFSessionIgnoreFusedLocationForReplayKey", v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void sub_100B4A334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B4A35C(uint64_t a1)
{
  GEOConfigSetUInteger();
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B4A57C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100B4A420(uint64_t a1)
{
  GEOConfigSetUInteger();
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B4A510;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100B4A510(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B4A57C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100B4A5CC(id a1, UIAlertAction *a2)
{
  v2 = +[VLFSessionUsageTracker sharedInstance];
  [v2 clearAll];
}

void sub_100B4A624(uint64_t a1)
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  v3 = [v2 platformController];

  v4 = [v3 currentSession];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 currentSession];
  v6 = [v5 sessionState];

  if (v6 != 1)
  {
LABEL_5:
    v7 = [v3 iosBasedChromeViewController];
    v8 = [v7 appCoordinator];
    v9 = [v8 baseModeController];
    v10 = [v9 actionCoordinator];
    goto LABEL_6;
  }

  v7 = [v3 iosBasedChromeViewController];
  v8 = [v7 appCoordinator];
  v9 = [v8 navModeController];
  v10 = [v9 navActionCoordinator];
LABEL_6:
  v11 = v10;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B4A97C;
  v14[3] = &unk_101661B18;
  v15 = v11;
  v13 = v11;
  [WeakRetained dismissViewControllerAnimated:1 completion:v14];
}

void sub_100B4A7CC(uint64_t a1)
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  v3 = [v2 platformController];

  v4 = [v3 currentSession];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 currentSession];
  v6 = [v5 sessionState];

  if (v6 != 1)
  {
LABEL_5:
    v7 = [v3 iosBasedChromeViewController];
    v8 = [v7 appCoordinator];
    v9 = [v8 baseModeController];
    v10 = [v9 actionCoordinator];
    goto LABEL_6;
  }

  v7 = [v3 iosBasedChromeViewController];
  v8 = [v7 appCoordinator];
  v9 = [v8 navModeController];
  v10 = [v9 navActionCoordinator];
LABEL_6:
  v11 = v10;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B4A974;
  v14[3] = &unk_101661B18;
  v15 = v11;
  v13 = v11;
  [WeakRetained dismissViewControllerAnimated:1 completion:v14];
}

void sub_100B4A984(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B4AA58;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Usage monitor" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100B4AA3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B4AA58(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B4ACC4;
  v14[3] = &unk_101661B98;
  objc_copyWeak(&v15, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Clear all" action:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B4AD2C;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"User entered AR" get:&stru_101639C10 set:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B4ADE4;
  v10[3] = &unk_10165EF68;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addTextFieldRowWithTitle:@"AR localizations" placeholderText:@"0" inputType:3 get:&stru_101639C30 set:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B4AE78;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = [v3 addSwitchRowWithTitle:@"User saw AR maneuver" get:&stru_101639C50 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100B4AC80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B4ACC4(uint64_t a1)
{
  v2 = +[PedestrianARSessionUsageTracker sharedInstance];
  [v2 clearAll];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4AD2C(uint64_t a1, int a2)
{
  v4 = +[PedestrianARSessionUsageTracker sharedInstance];
  v5 = v4;
  if (a2)
  {
    [v4 registerUserEnteredARForRoute:@"debug_panel_route_id" entryPoint:0];

    v5 = +[PedestrianARSessionUsageTracker sharedInstance];
    [v5 registerUserEnteredARForRoute:@"debug_panel_route_id" entryPoint:1];
  }

  else
  {
    [v4 clearUserEnteredARFlag];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4ADE4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[PedestrianARSessionUsageTracker sharedInstance];
  if (v5)
  {
    [v3 setNumberOfTimesARLocalized:{objc_msgSend(v5, "integerValue")}];
  }

  else
  {
    [v3 clearARLocalizationsFlag];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4AE78(uint64_t a1, int a2)
{
  v4 = +[PedestrianARSessionUsageTracker sharedInstance];
  v5 = v4;
  if (a2)
  {
    [v4 registerARElementRendered];
  }

  else
  {
    [v4 clearARElementRenderedFlag];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

BOOL sub_100B4AEF8(id a1)
{
  v1 = +[PedestrianARSessionUsageTracker sharedInstance];
  v2 = [v1 hasARElementRendered];

  return v2;
}

NSString *__cdecl sub_100B4AF38(id a1)
{
  v1 = +[PedestrianARSessionUsageTracker sharedInstance];
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v1 numberOfTimesARLocalized]);

  return v2;
}

BOOL sub_100B4AFB0(id a1)
{
  v1 = +[PedestrianARSessionUsageTracker sharedInstance];
  v2 = [v1 hasUserEnteredAR];

  return v2;
}

void sub_100B4AFF0(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v3 = +[PedestrianARSessionArrivalStepAvailabilityMonitor friendlyName];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100B4B328;
  v25[3] = &unk_10165E0A8;
  objc_copyWeak(&v26, &location);
  v4 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v3 content:v25];

  v5 = +[PedestrianARSessionCarPlayConnectionMonitor friendlyName];
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v5 content:&stru_101639AD0];

  v7 = +[PedestrianARSessionCoarseLocationMonitor friendlyName];
  v8 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v7 content:&stru_101639AF0];

  v9 = +[PedestrianARSessionNetworkReachabilityMonitor friendlyName];
  v10 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v9 content:&stru_101639B10];

  v11 = +[PedestrianARSessionRoutePlanningConfigurationMonitor friendlyName];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100B4B408;
  v23[3] = &unk_10165E0A8;
  objc_copyWeak(&v24, &location);
  v12 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v11 content:v23];

  v13 = +[PedestrianARSessionSunsetSunriseMonitor friendlyName];
  v14 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v13 content:&stru_101639B50];

  v15 = +[PedestrianARSessionThermalStateMonitor friendlyName];
  v16 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v15 content:&stru_101639B70];

  v17 = +[PedestrianARSessionTileAvailabilityMonitor friendlyName];
  v18 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v17 content:&stru_101639B90];

  v19 = +[PedestrianARSessionTransportTypeMonitor friendlyName];
  v20 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v19 content:&stru_101639BB0];

  v21 = +[PedestrianARSessionOfflineMonitor friendlyName];
  v22 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:v21 content:&stru_101639BD0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_100B4B2EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100B4B328(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B4B9EC;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Enabled" get:&stru_101639AB0 set:v5];
  [v3 setFooter:@"This monitor can't be disabled."];
  objc_destroyWeak(&v6);
}

void sub_100B4B408(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B4B848;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Enabled" get:&stru_101639B30 set:v5];
  [v3 setFooter:@"This monitor can't be disabled."];
  objc_destroyWeak(&v6);
}

void sub_100B4B4E8(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = +[PedestrianARSessionOfflineMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
}

void sub_100B4B54C(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = +[PedestrianARSessionTransportTypeMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
}

void sub_100B4B5B0(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = +[PedestrianARSessionTileAvailabilityMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum distance change threshold (meters)" placeholderText:@"10" inputType:3 geoConfigKeyDouble:221, &unk_10163E860];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"CarPlay minimum distance change threshold (meters)" placeholderText:@"100" inputType:3 geoConfigKeyDouble:222, &unk_10163E898];
  v7 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Error timeout (seconds)" placeholderText:@"30" inputType:3 geoConfigKeyDouble:282, &unk_10163F5B8];
  [(MapsDebugTableSection *)v8 setFooter:@"This monitor's distance threshold and error timeout parameters are shared with the equivalent Treadstone tile availability monitor. Modifying them in one place will modify them in both."];
}

void sub_100B4B6C0(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = +[PedestrianARSessionThermalStateMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Threshold" placeholderText:@"30" inputType:1 geoConfigKeyInteger:475, &unk_101641950];
}

void sub_100B4B754(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = +[PedestrianARSessionSunsetSunriseMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Offset threshold (seconds)" placeholderText:@"900" inputType:3 geoConfigKeyDouble:374, &unk_1016404F0];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum time threshold (seconds)" placeholderText:@"300" inputType:3 geoConfigKeyDouble:485, &unk_101641B10];
  v7 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum distance threshold (meters)" placeholderText:@"100" inputType:3 geoConfigKeyDouble:484, &unk_101641AD8];
}

void sub_100B4B848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4B890(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = +[PedestrianARSessionNetworkReachabilityMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
}

void sub_100B4B8F4(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = +[PedestrianARSessionCoarseLocationMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enable" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Authorization delay (seconds)" placeholderText:@"2" inputType:3 geoConfigKeyDouble:371, &unk_101640448];
}

void sub_100B4B988(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = +[PedestrianARSessionCarPlayConnectionMonitor enablementGEOConfigKey];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Enable" geoConfigKey:v2, v3];
}

void sub_100B4B9EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4BA34(id a1, BOOL a2)
{
  v2 = a2;
  v4 = +[NSUserDefaults standardUserDefaults];
  if (v2)
  {
    v3 = +[NSDate date];
    [v4 setObject:v3 forKey:@"kDebugCoreMotionCompassAvailabilityTaskLastErrorAlertDateKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"kDebugCoreMotionCompassAvailabilityTaskLastErrorAlertDateKey"];
  }
}

BOOL sub_100B4BAC8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 objectForKey:@"kDebugCoreMotionCompassAvailabilityTaskLastErrorAlertDateKey"];
  v3 = v2 != 0;

  return v3;
}

void sub_100B4BB1C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[MapsARSessionIndoorOutdoorFloatingDebugViewController sharedInstance];
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

BOOL sub_100B4BB7C(id a1)
{
  v1 = +[MapsARSessionIndoorOutdoorFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100B4BBF4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[PedestrianARFloatingDebugViewController sharedInstance];
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

BOOL sub_100B4BC54(id a1)
{
  v1 = +[PedestrianARFloatingDebugViewController sharedInstance];
  v2 = [v1 isAttached];

  return v2;
}

void sub_100B4BC94(uint64_t a1)
{
  GEOConfigSetBOOL();
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:@"MapsARSessionRecordingEnabledKey"];

  GEOConfigSetBOOL();
  GEOConfigSetBOOL();
  GEOConfigSetBOOL();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4BD58(uint64_t a1)
{
  v2 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 setDelegate:WeakRetained];

  v4 = [UTTypeMovie identifier];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  [v2 setMediaTypes:v5];

  [v2 setAllowsEditing:0];
  [v2 setModalPresentationStyle:0];
  [v2 _setValue:&__kCFBooleanTrue forProperty:_UIImagePickerControllerVideoDontTranscode];
  v6 = +[UIColor blueColor];
  v7 = [v2 view];
  [v7 setTintColor:v6];

  v8 = +[UIColor whiteColor];
  v9 = [v2 view];
  [v9 setBackgroundColor:v8];

  v10 = [v2 popoverPresentationController];
  [v10 setPermittedArrowDirections:15];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 presentViewController:v2 animated:1 completion:0];
}

void sub_100B4BF0C(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B4BFE0;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:@"Replay modes" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100B4BFC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B4BFE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B4C238;
  v14[3] = &unk_1016619A8;
  objc_copyWeak(&v15, (a1 + 32));
  v4 = [v3 addSwitchRowWithTitle:@"Realtime" get:&stru_1016398A8 set:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B4C2D4;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addSwitchRowWithTitle:@"Deterministic" get:&stru_1016398C8 set:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B4C370;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:@"Deterministic Limit Frame Rate" get:&stru_1016398E8 set:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B4C40C;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = [v3 addSwitchRowWithTitle:@"Manual" get:&stru_101639908 set:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_100B4C1F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100B4C238(uint64_t a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (a2)
  {
    [v4 setInteger:0 forKey:@"MapsARSessionPlaybackModeKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"MapsARSessionPlaybackModeKey"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4C2D4(uint64_t a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (a2)
  {
    [v4 setInteger:1 forKey:@"MapsARSessionPlaybackModeKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"MapsARSessionPlaybackModeKey"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4C370(uint64_t a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (a2)
  {
    [v4 setInteger:2 forKey:@"MapsARSessionPlaybackModeKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"MapsARSessionPlaybackModeKey"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

void sub_100B4C40C(uint64_t a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (a2)
  {
    [v4 setInteger:3 forKey:@"MapsARSessionPlaybackModeKey"];
  }

  else
  {
    [v4 removeObjectForKey:@"MapsARSessionPlaybackModeKey"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

BOOL sub_100B4C4A8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"MapsARSessionPlaybackModeKey"] == 3;

  return v2;
}

BOOL sub_100B4C4F4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"MapsARSessionPlaybackModeKey"] == 2;

  return v2;
}

BOOL sub_100B4C540(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"MapsARSessionPlaybackModeKey"] == 1;

  return v2;
}

BOOL sub_100B4C58C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"MapsARSessionPlaybackModeKey"] == 0;

  return v2;
}

void sub_100B4C84C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B4C980;
  v9[3] = &unk_1016612C8;
  v10 = v5;
  v7 = v5;
  v8 = [v6 addSectionWithTitle:a2 content:v9];
}

void sub_100B4C8FC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v5 addGEOTextFieldRowWithTitle:v3 placeholderText:@"0 - 50+" inputType:1 geoConfigKeyInteger:{666, &unk_101643E58}];
}

void sub_100B4C9C4(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v8 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Disable" value:@"Disable"];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"10" value:@"10"];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"20" value:@"20"];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"30" value:@"30"];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"40" value:@"40"];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Enable" value:@"Enable"];
}

void sub_100B4CB0C(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100B4CC74;
  v11 = sub_100B4CC84;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B4CC8C;
  v6[3] = &unk_10165F5C8;
  v6[4] = &v7;
  v3 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Draw debug overlay" geoConfigKey:342 switchOnStateIfUnset:&unk_10163FE08 changeHandler:0, v6];
  v4 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Draw all tiles" geoConfigKey:343, &unk_10163FE40];
  v5 = v8[5];
  v8[5] = v4;

  [v8[5] setEnabled:GEOConfigGetBOOL()];
  [(MapsDebugTableSection *)v2 setFooter:@"By default, the debug overlay only draws tiles at z=15, which is useful for understanding the areas the preloader has loaded. Enabling Draw all tiles will draw every tile loaded by the preloader, which is generally too much information to understand visually."];
  _Block_object_dispose(&v7, 8);
}

void sub_100B4CC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B4CC74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B4CCA0(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Step Size" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:GeoServicesConfig_StepSizeInMeters[0], GeoServicesConfig_StepSizeInMeters[1]];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Maneuver Radius" placeholderText:@"meters" inputType:1 geoConfigKeyDouble:GeoServicesConfig_ManeuverSizeInMeters[0], GeoServicesConfig_ManeuverSizeInMeters[1]];
}

void sub_100B4CD6C(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Run navigation in Maps process" get:&stru_101639760 set:&stru_101639780];
  [v3 setSubtitle:{@"If off, nav will run in a daemon. Needs restart"}];
  v4 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Automatically End On Arrival" geoConfigKey:NavigationConfig_AutomaticallyEndOnArrival[0], NavigationConfig_AutomaticallyEndOnArrival[1]];
  v5 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Automatically end on vehicle disconnect after arrival" geoConfigKey:NavigationConfig_AutomaticallyEndOnVehicleDisconnectAfterArrival[0], NavigationConfig_AutomaticallyEndOnVehicleDisconnectAfterArrival[1]];
  v6 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Enable transport mode switching during navigation" geoConfigKey:NavigationConfig_EnableNavigationTransportModeSwitching[0], NavigationConfig_EnableNavigationTransportModeSwitching[1]];
  v7 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Show interface desync alert" defaultsKey:@"NavigationShowInterfaceDesyncAlert"];
  v8 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Displayed Navigation Safety Warning" defaultsKey:@"HasShownNavModeAdvisory2020" switchOnStateIfUnset:0 changeHandler:&stru_1016397A0];

  [v8 setSubtitle:@"You need to restart Maps for the safety warning to reappear. This setting is also synced to Watch."];
  v9 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Displayed Custom Navigation Safety Warning" defaultsKey:@"HasShownCustomNavModeAdvisoryKey" switchOnStateIfUnset:0 changeHandler:&stru_1016397C0];

  [v9 setSubtitle:@"You need to restart Maps for the safety warning to reappear. This setting is also synced to Watch."];
}

void sub_100B4CEF4(id a1, BOOL a2)
{
  v3 = objc_opt_new();
  v2 = [NSSet setWithObject:@"HasShownCustomNavModeAdvisoryKey"];
  [v3 synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v2 container:@"com.apple.Maps"];
}

void sub_100B4CF74(id a1, BOOL a2)
{
  v3 = objc_opt_new();
  v2 = [NSSet setWithObject:@"HasShownNavModeAdvisory2020"];
  [v3 synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v2 container:@"com.apple.Maps"];
}

void sub_100B4D120(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSliderRowWithTitle:@"Mid-route start distance threshold" subtitleStringHandler:&stru_101639700 min:NavigationConfig_PreNavigation_CustomRoute_MidRouteStartDistanceThreshold[0] max:NavigationConfig_PreNavigation_CustomRoute_MidRouteStartDistanceThreshold[1] geoConfigKeyDouble:0 changeHandler:0.0, 500.0];
  v3 = [(MapsDebugTableSection *)v6 addSliderRowWithTitle:@"Reroute distance threshold" subtitleStringHandler:&stru_101639700 min:NavigationConfig_LocationTracking_Walking_CustomRoute_RerouteDistance[0] max:NavigationConfig_LocationTracking_Walking_CustomRoute_RerouteDistance[1] geoConfigKeyDouble:0 changeHandler:0.0, 500.0];
  v4 = [(MapsDebugTableSection *)v6 addSliderRowWithTitle:@"Reroute distance threshold (before on route)" subtitleStringHandler:&stru_101639700 min:NavigationConfig_LocationTracking_Walking_CustomRoute_RerouteDistanceBeforeOnRoute[0] max:NavigationConfig_LocationTracking_Walking_CustomRoute_RerouteDistanceBeforeOnRoute[1] geoConfigKeyDouble:0 changeHandler:0.0, 500.0];
  v5 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Max anchor points" placeholderText:0 inputType:1 geoConfigKeyUInteger:NavigationConfig_PreNavigation_CustomRoute_MaxNumberOfAnchors[0], NavigationConfig_PreNavigation_CustomRoute_MaxNumberOfAnchors[1]];
}

NSString *__cdecl sub_100B4D23C(id a1, float a2)
{
  v2 = &qword_101212000;
  LODWORD(v2) = llround(a2 * 3.2808399);
  return [NSString stringWithFormat:@"%d meters (%d feet)", a2, v2];
}

void sub_100B4D2F0(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Snap to transit lines" defaultsKey:@"NavigationSnapToTransitLines"];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Include realtime updates" geoConfigKey:NavigationConfig_DebugNavigationIncludeRealtimeUpdates[0], NavigationConfig_DebugNavigationIncludeRealtimeUpdates[1]];
  v4 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Force weak signal strength notifications" geoConfigKey:NavigationConfig_TransitMockWeakSignalNotifications[0], NavigationConfig_TransitMockWeakSignalNotifications[1]];
  v5 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable weak signal notifications" defaultsKey:@"NavigationEnableWeakLocationNotification"];
  v6 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Frame vehicles for manually-selected step" defaultsKey:@"NavigationTransitFrameVehiclePositionsForSelectedStep"];
  v7 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Minimum location accuracy for distance to station" placeholderText:@"(meters)" inputType:0 geoConfigKeyDouble:GeoServicesConfig_NavdTransitMinimumLocationAccuracyForStationEdgeIntersection[0], GeoServicesConfig_NavdTransitMinimumLocationAccuracyForStationEdgeIntersection[1]];
}

void sub_100B4D4A4(id a1, MapsDebugTableSection *a2)
{
  v12 = a2;
  v2 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Beep Before Instruction" geoConfigKey:NavigationConfig_SpokenGuidanceChimeBeforeInstruction[0], NavigationConfig_SpokenGuidanceChimeBeforeInstruction[1]];
  v3 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Mute Voice" geoConfigKey:NavigationConfig_NavigationDebugPanelMuteVoice[0], NavigationConfig_NavigationDebugPanelMuteVoice[1]];
  v4 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Disable Server TTS" geoConfigKey:NavigationConfig_NavigationDisableServerTTS[0], NavigationConfig_NavigationDisableServerTTS[1]];
  v5 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Ding instead of uttering" geoConfigKey:NavigationConfig_NavigationDingInstead[0], NavigationConfig_NavigationDingInstead[1]];
  v6 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Use debug voice volume" geoConfigKey:NavigationConfig_ShouldUseSpokenGuidanceDebugVolume[0], NavigationConfig_ShouldUseSpokenGuidanceDebugVolume[1]];
  GEOConfigGetDouble();
  *&v7 = v7;
  v8 = *&v7;
  GEOConfigGetDouble();
  *&v9 = v9;
  v10 = [(MapsDebugTableSection *)v12 addSliderRowWithTitle:@"Debug voice volume" subtitleStringFormat:@"%.2f" min:NavigationConfig_SpokenGuidanceDebugVolume[0] max:NavigationConfig_SpokenGuidanceDebugVolume[1] geoConfigKeyDouble:0 changeHandler:v8, *&v9];
  v11 = [(MapsDebugTableSection *)v12 addButtonRowWithTitle:@"Repeat last instruction" action:&stru_101639640];
}

void sub_100B4D618(id a1)
{
  v1 = +[MNNavigationService sharedService];
  [v1 repeatCurrentGuidance:&stru_101639660];
}

void sub_100B4D6DC(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Use client ETA stabilization" geoConfigKey:NavigationConfig_ETA_UseClientRounding[0], NavigationConfig_ETA_UseClientRounding[1]];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable extra logging" geoConfigKey:NavigationConfig_ETA_DisplayETALogging[0], NavigationConfig_ETA_DisplayETALogging[1]];
}

void sub_100B4D758(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addTextFieldRowWithTitle:@"Update Interval" placeholderText:@"(seconds)" inputType:1 get:&stru_101639260 set:&stru_101639280];
  v3 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Initial Delay (defaults to above if zero)" placeholderText:@"(seconds)" inputType:1 geoConfigKeyDouble:NavigationConfig_InitialETARequestDelay[0], NavigationConfig_InitialETARequestDelay[1]];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Failure audio alert" geoConfigKey:NavigationConfig_ETAResponseFailureAlert[0], NavigationConfig_ETAResponseFailureAlert[1]];
  v5 = [(MapsDebugTableSection *)v6 addNavigationRowWithTitle:@"Dodgeball" viewControllerContent:&stru_1016392A0];
}

void sub_100B4D83C(id a1, MapsDebugValuesViewController *a2)
{
  v5 = a2;
  v2 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:0 content:&stru_1016392C0];
  v3 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Options" content:&stru_1016392E0];
  v4 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Dodgeballs With Reroute" content:&stru_1016395A0];
}

void sub_100B4D8CC(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:@"Automatically accept faster routes" geoConfigKey:GeoServicesConfig_NavdShouldAutomaticallyRerouteTrafficIncidents[0], GeoServicesConfig_NavdShouldAutomaticallyRerouteTrafficIncidents[1]];
  LODWORD(v3) = 1114636288;
  v4 = [(MapsDebugTableSection *)v5 addSliderRowWithTitle:@"Reroute Alert Duration" subtitleStringFormat:@"%1.f sec" min:&stru_1016395C0 max:&stru_1016395E0 get:0.0 set:v3];
}

void sub_100B4D99C(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Queuing & Trigger Ranges" geoConfigKey:GeoServicesConfig_ETATrafficBannerRequestQueuing[0], GeoServicesConfig_ETATrafficBannerRequestQueuing[1]];
  v3 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Request Queuing in Directions Requests" geoConfigKey:GeoServicesConfig_DirectionsTrafficBannerRequestQueuing[0], GeoServicesConfig_DirectionsTrafficBannerRequestQueuing[1]];
  v4 = [(MapsDebugTableSection *)v8 addSliderRowWithTitle:@"Incident distance percentage to drop dodgeball" subtitleStringFormat:@"%g%%" min:NavigationConfig_Dodgeball_DropDodgeballDistanceRatio[0] max:NavigationConfig_Dodgeball_DropDodgeballDistanceRatio[1] geoConfigKeyDouble:0 changeHandler:0.0, 1.0];
  v5 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Override priority field" geoConfigKey:NavigationConfig_Dodgeball_OverridePriorityField[0], NavigationConfig_Dodgeball_OverridePriorityField[1]];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Priority override (if enabled above)" placeholderText:@"0" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_OverridePriorityFieldValue[0], NavigationConfig_Dodgeball_OverridePriorityFieldValue[1]];
  v7 = [(MapsDebugTableSection *)v8 addNavigationRowWithTitle:@"Fake Dodgeball" viewControllerContent:&stru_101639300];
}

void sub_100B4DAC4(id a1, MapsDebugValuesViewController *a2)
{
  v5 = a2;
  v2 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Create Fake Dodgeball for ETAU" content:&stru_101639320];
  v3 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:@"Create Fake Dodgeball for Directions" content:&stru_101639360];
  v4 = [(MapsDebugValuesViewController *)v5 addSectionWithTitle:0 content:&stru_1016393A0];
}

void sub_100B4DB54(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Title" placeholderText:&stru_1016631F0 inputType:0 geoConfigKeyString:NavigationConfig_Dodgeball_ETAU_FakeIncidentTitle[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentTitle[1]];
  v3 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Description" placeholderText:&stru_1016631F0 inputType:0 geoConfigKeyString:NavigationConfig_Dodgeball_ETAU_FakeIncidentDescription[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentDescription[1]];
  v4 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Simulate voting buttons (Incident & Blockage)" geoConfigKey:NavigationConfig_Dodgeball_FakeIncidentSimulateVotingButtons[0], NavigationConfig_Dodgeball_FakeIncidentSimulateVotingButtons[1]];
  v5 = [(MapsDebugTableSection *)v10 addNavigationRowWithTitle:@"Voting Button Style" viewControllerContent:&stru_1016393C0];
  v6 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Use trigger ranges" geoConfigKey:NavigationConfig_Dodgeball_FakeIncidentUseTriggerRanges[0], NavigationConfig_Dodgeball_FakeIncidentUseTriggerRanges[1]];
  v7 = [(MapsDebugTableSection *)v10 addNavigationRowWithTitle:@"ETAU trigger range/point options" viewControllerContent:&stru_101639420];
  v8 = [(MapsDebugTableSection *)v10 addNavigationRowWithTitle:@"Directions trigger range/point options" viewControllerContent:&stru_1016394C0];
  v9 = [(MapsDebugTableSection *)v10 addNavigationRowWithTitle:@"Incident alert UI" viewControllerContent:&stru_101639560];
}

void sub_100B4DCEC(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_AlertDisplayDurationSeconds[0];
  v3 = NavigationConfig_Dodgeball_AlertDisplayDurationSeconds[1];
  v4 = a2;
  v5 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Display duration (s)" placeholderText:@"30" inputType:3 geoConfigKeyDouble:v2, v3];
  v6 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Show dismiss button" geoConfigKey:NavigationConfig_Dodgeball_FakeIncidentAlertShouldShowDismissButton[0], NavigationConfig_Dodgeball_FakeIncidentAlertShouldShowDismissButton[1]];
  v7 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"Default button index" placeholderText:@"1" inputType:2 geoConfigKeyInteger:NavigationConfig_Dodgeball_FakeIncidentAlertDefaultButtonIndex[0], NavigationConfig_Dodgeball_FakeIncidentAlertDefaultButtonIndex[1]];

  [v7 setSubtitle:@"The default button index to display a countdown timer if any. Use -1 to disable"];
}

void sub_100B4DDD0(id a1, MapsDebugValuesViewController *a2)
{
  v6 = a2;
  v2 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Trigger range" content:&stru_1016394E0];
  v3 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Show trigger point" content:&stru_101639500];
  v4 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Hide trigger point" content:&stru_101639520];
  v5 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Progress bar" content:&stru_101639540];
}

void sub_100B4DE84(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_Directions_FakeIncidentUseProgressBar[0];
  v3 = NavigationConfig_Dodgeball_Directions_FakeIncidentUseProgressBar[1];
  v7 = a2;
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Show at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_Directions_FakeIncidentProgressBarDistanceOffset[0], NavigationConfig_Dodgeball_Directions_FakeIncidentProgressBarDistanceOffset[1]];
  v6 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Display time (seconds)" placeholderText:@"15" inputType:0 geoConfigKeyUInteger:NavigationConfig_Dodgeball_Directions_FakeIncidentProgressBarDurationSeconds[0], NavigationConfig_Dodgeball_Directions_FakeIncidentProgressBarDurationSeconds[1]];
  [(MapsDebugTableSection *)v7 setFooter:@"The progress bar is shown at the distance offset above and counts down using the display time."];
}

void sub_100B4DF5C(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeUseHideAtPoint[0];
  v3 = NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeUseHideAtPoint[1];
  v7 = a2;
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Use hide point" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Hide at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_Directions_FakeIncidentHideTriggerPointDistanceOffset[0], NavigationConfig_Dodgeball_Directions_FakeIncidentHideTriggerPointDistanceOffset[1]];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Allow truncating" geoConfigKey:NavigationConfig_Dodgeball_Directions_FakeIncidentHideTriggerPointAllowTruncating[0], NavigationConfig_Dodgeball_Directions_FakeIncidentHideTriggerPointAllowTruncating[1]];
  [(MapsDebugTableSection *)v7 setFooter:@"The distance offset is calculated from the location on the route at which the etau request is created. The dodgeball will be hidden after <Display time> if it occurs before reaching the hide distance offset. If <use hide point> is disabled, the dodgeball will remain on the screen for exactly the number of seconds specified by <Display time> in the trigger range options."];
}

void sub_100B4E028(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_Directions_FakeIncidentShowTriggerPointDistanceOffset[0];
  v3 = NavigationConfig_Dodgeball_Directions_FakeIncidentShowTriggerPointDistanceOffset[1];
  v6 = a2;
  v4 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Show at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Allow truncating" geoConfigKey:NavigationConfig_Dodgeball_Directions_FakeIncidentShowTriggerPointAllowTruncating[0], NavigationConfig_Dodgeball_Directions_FakeIncidentShowTriggerPointAllowTruncating[1]];
  [(MapsDebugTableSection *)v6 setFooter:@"The distance offset is calculated from the location on the route at which the directions request is created."];
}

void sub_100B4E0D0(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeDisplayTime[0];
  v3 = NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeDisplayTime[1];
  v8 = a2;
  v4 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Display time" placeholderText:@"20" inputType:1 geoConfigKeyUInteger:v2, v3];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Min display time" placeholderText:@"0" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeMinDisplayTime[0], NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangeMinDisplayTime[1]];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Priority" placeholderText:@"0" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangePriority[0], NavigationConfig_Dodgeball_Directions_FakeIncidentTriggerRangePriority[1]];
  v7 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Persist across updates" geoConfigKey:NavigationConfig_Dodgeball_Directions_FakeIncidentPersistAcrossUpdates[0], NavigationConfig_Dodgeball_Directions_FakeIncidentPersistAcrossUpdates[1]];
  [(MapsDebugTableSection *)v8 setFooter:@"The dodgeball will be displayed on the screen for a maximum of <Display time> seconds. If a higher priority dodgeball overlaps with the fake dodgeball, the fake dodgeball will stay on the screen for at least <Min display time> seconds before the new dodgeball takes precedence."];
}

void sub_100B4E1D8(id a1, MapsDebugValuesViewController *a2)
{
  v6 = a2;
  v2 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Trigger range" content:&stru_101639440];
  v3 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Show trigger point" content:&stru_101639460];
  v4 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Hide trigger point" content:&stru_101639480];
  v5 = [(MapsDebugValuesViewController *)v6 addSectionWithTitle:@"Progress bar" content:&stru_1016394A0];
}

void sub_100B4E28C(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_ETAU_FakeIncidentUseProgressBar[0];
  v3 = NavigationConfig_Dodgeball_ETAU_FakeIncidentUseProgressBar[1];
  v7 = a2;
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Show at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_ETAU_FakeIncidentProgressBarDistanceOffset[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentProgressBarDistanceOffset[1]];
  v6 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Display time (seconds)" placeholderText:@"15" inputType:0 geoConfigKeyUInteger:NavigationConfig_Dodgeball_ETAU_FakeIncidentProgressBarDurationSeconds[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentProgressBarDurationSeconds[1]];
  [(MapsDebugTableSection *)v7 setFooter:@"The progress bar is shown at the distance offset above and counts down using the display time."];
}

void sub_100B4E364(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeUseHideAtPoint[0];
  v3 = NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeUseHideAtPoint[1];
  v7 = a2;
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Use hide point" geoConfigKey:v2, v3];
  v5 = [(MapsDebugTableSection *)v7 addGEOTextFieldRowWithTitle:@"Hide at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_ETAU_FakeIncidentHideTriggerPointDistanceOffset[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentHideTriggerPointDistanceOffset[1]];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Allow truncating" geoConfigKey:NavigationConfig_Dodgeball_ETAU_FakeIncidentHideTriggerPointAllowTruncating[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentHideTriggerPointAllowTruncating[1]];
  [(MapsDebugTableSection *)v7 setFooter:@"The distance offset is calculated from the location on the route at which the etau request is created. The dodgeball will be hidden after <Display time> if it occurs before reaching the hide distance offset. If <use hide point> is disabled, the dodgeball will remain on the screen for exactly the number of seconds specified by <Display time> in the trigger range options."];
}

void sub_100B4E430(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_ETAU_FakeIncidentShowTriggerPointDistanceOffset[0];
  v3 = NavigationConfig_Dodgeball_ETAU_FakeIncidentShowTriggerPointDistanceOffset[1];
  v6 = a2;
  v4 = [(MapsDebugTableSection *)v6 addGEOTextFieldRowWithTitle:@"Show at distance offset" placeholderText:@"(meters)" inputType:1 geoConfigKeyUInteger:v2, v3];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Allow truncating" geoConfigKey:NavigationConfig_Dodgeball_ETAU_FakeIncidentShowTriggerPointAllowTruncating[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentShowTriggerPointAllowTruncating[1]];
  [(MapsDebugTableSection *)v6 setFooter:@"The distance offset is calculated from the location on the route at which the etau request is created."];
}

void sub_100B4E4D8(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeDisplayTime[0];
  v3 = NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeDisplayTime[1];
  v8 = a2;
  v4 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Display time" placeholderText:@"20" inputType:1 geoConfigKeyUInteger:v2, v3];
  v5 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Min display time" placeholderText:@"0" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeMinDisplayTime[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangeMinDisplayTime[1]];
  v6 = [(MapsDebugTableSection *)v8 addGEOTextFieldRowWithTitle:@"Priority" placeholderText:@"0" inputType:1 geoConfigKeyUInteger:NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangePriority[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentTriggerRangePriority[1]];
  v7 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Persist across updates" geoConfigKey:NavigationConfig_Dodgeball_ETAU_FakeIncidentPersistAcrossUpdates[0], NavigationConfig_Dodgeball_ETAU_FakeIncidentPersistAcrossUpdates[1]];
  [(MapsDebugTableSection *)v8 setFooter:@"The dodgeball will be displayed on the screen for a maximum of <Display time> seconds. If a higher priority dodgeball overlaps with the fake dodgeball, the fake dodgeball will stay on the screen for at least <Min display time> seconds before the new dodgeball takes precedence."];
}

void sub_100B4E64C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Unknown" value:&off_1016E88A0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Show by default" value:&off_1016E88B8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Show after user interaction" value:&off_1016E88D0];
}

void sub_100B4E6E0(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_DirectionsFakeIncidentAlert[0];
  v3 = NavigationConfig_Dodgeball_DirectionsFakeIncidentAlert[1];
  v5 = a2;
  v4 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupForConfigKey:v2 content:v3, &stru_101639380];
  [(MapsDebugTableSection *)v5 setFooter:@"Fake dodgeballs work by injecting fields into an Directions response. In order to see them, a normal Directions request needs to be triggered."];
}

void sub_100B4E758(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v9 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"None" value:&off_1016E8840];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Blockage" value:&off_1016E8828];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Incident" value:&off_1016E8810];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Incident with Reroute" value:&off_1016E87F8];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Warning (ex: EV out of range)" value:&off_1016E8858];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Restricted Zone" value:&off_1016E8870];
  v8 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Silent Update" value:&off_1016E8888];
}

void sub_100B4E86C(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_Dodgeball_ETAUFakeIncidentAlert[0];
  v3 = NavigationConfig_Dodgeball_ETAUFakeIncidentAlert[1];
  v5 = a2;
  v4 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupForConfigKey:v2 content:v3, &stru_101639340];
  [(MapsDebugTableSection *)v5 setFooter:@"Fake dodgeballs work by injecting fields into an ETAU response. In order to see them, a normal ETAU request needs to be triggered."];
}

void sub_100B4E8E4(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v9 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"None" value:&off_1016E8840];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Blockage" value:&off_1016E8828];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Incident" value:&off_1016E8810];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Incident with Reroute" value:&off_1016E87F8];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Warning (ex: EV out of range)" value:&off_1016E8858];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Restricted Zone" value:&off_1016E8870];
  v8 = [(MapsDebugCheckmarkRowsGroup *)v9 addRowWithTitle:@"Silent Update" value:&off_1016E8888];
}

void sub_100B4EA30(id a1, NSString *a2)
{
  v3 = a2;
  [(NSString *)v3 doubleValue];
  if (v2 > 5.0)
  {
    [(NSString *)v3 doubleValue];
  }

  GEOConfigSetDouble();
}

NSString *__cdecl sub_100B4EA94(id a1)
{
  GEOConfigGetDouble();
  if (v1 > 5.0)
  {
    GEOConfigGetDouble();
  }

  v2 = [NSNumber numberWithDouble:?];
  v3 = [v2 stringValue];

  return v3;
}

void sub_100B4EB9C(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addCheckmarkRowsGroupForConfigKey:GeoServicesConfig_NavdDebugTrafficOnRouteSection[0] content:GeoServicesConfig_NavdDebugTrafficOnRouteSection[1], &stru_101639220];
  v3 = [(MapsDebugTableSection *)v5 addSliderRowWithTitle:@"Start Offset" subtitleStringFormat:@"%g%%" min:0 max:100 geoConfigKeyUInteger:GeoServicesConfig_NavdDebugTrafficOnRouteStart[0] changeHandler:GeoServicesConfig_NavdDebugTrafficOnRouteStart[1], 0];
  v4 = [(MapsDebugTableSection *)v5 addSliderRowWithTitle:@"End Offset" subtitleStringFormat:@"%g%%" min:0 max:100 geoConfigKeyUInteger:GeoServicesConfig_NavdDebugTrafficOnRouteEnd[0] changeHandler:GeoServicesConfig_NavdDebugTrafficOnRouteEnd[1], 0];
}

void sub_100B4EC6C(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Default" value:&off_1016E8840];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Entire Route" value:&off_1016E8828];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Longest Step" value:&off_1016E8810];
}

void sub_100B4ED38(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"None" value:&off_1016E87E0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Green" value:&off_1016E87F8];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Yellow" value:&off_1016E8810];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Red" value:&off_1016E8828];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Black" value:&off_1016E8840];
}

void sub_100B4EF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B4EF60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Ignore Navigability" geoConfigKey:{GeoServicesConfig_OverrideNavigationEnabled[0], GeoServicesConfig_OverrideNavigationEnabled[1]}];
  v5 = [v3 addSwitchRowWithTitle:@"Ignore Live Traffic" defaultsKey:@"NavigationDirectionsIgnoreLiveTraffic"];
  v6 = [v3 addSwitchRowWithTitle:@"Always Show Traffic" defaultsKey:@"__internal__AlwaysShowRouteTraffic"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B4F5C4;
  v12[3] = &unk_101658C70;
  objc_copyWeak(&v13, (a1 + 32));
  [WeakRetained _addNavigationRowWithTitle:@"Traffic Override" section:v3 handler:v12];

  v8 = [v3 addSwitchRowWithTitle:@"New Arrival Logic" geoConfigKey:{GeoServicesConfig_ShouldUseServerArrivalParameters[0], GeoServicesConfig_ShouldUseServerArrivalParameters[1]}];
  v9 = [v3 addSwitchRowWithTitle:@"Enable Junction View" geoConfigKey:{GeoServicesConfig_NavdShouldRequestJunctionView[0], GeoServicesConfig_NavdShouldRequestJunctionView[1]}];
  v10 = [v3 addSwitchRowWithTitle:@"Show Live Alternate Routes in Trench Mode" geoConfigKey:{NavigationConfig_NavigationShowLiveAlternateRoutesInTrenchMode[0], NavigationConfig_NavigationShowLiveAlternateRoutesInTrenchMode[1]}];
  v11 = [v3 addSwitchRowWithTitle:@"Request Routing Path Points" geoConfigKey:{GeoServicesConfig_RequestRoutingPathPoints[0], GeoServicesConfig_RequestRoutingPathPoints[1]}];
  objc_destroyWeak(&v13);
}

void sub_100B4F124(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Show Internal Routing Errors" geoConfigKey:320, &unk_10163FCB8];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Show Radar Prompt for Routing Service Errors" geoConfigKey:NavigationConfig_ShouldShowRadarPromptForRoutingServiceErrors[0], NavigationConfig_ShouldShowRadarPromptForRoutingServiceErrors[1]];
}

void sub_100B4F1A0(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Main Route" geoConfigKey:NavigationConfig_LogRoutes_RoutePreview_MainRoute[0], NavigationConfig_LogRoutes_RoutePreview_MainRoute[1]];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Alternate Routes" geoConfigKey:NavigationConfig_LogRoutes_RoutePreview_AlternateRoutes[0], NavigationConfig_LogRoutes_RoutePreview_AlternateRoutes[1]];
}

void sub_100B4F21C(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addSliderRowWithTitle:@"MPR auto advance tendency" subtitleStringFormat:@"%g%%" min:0 max:100 geoConfigKeyUInteger:NavigationConfig_MPRDepartureAutoAdvanceSensitivity[0] changeHandler:NavigationConfig_MPRDepartureAutoAdvanceSensitivity[1], 0];
  v3 = [(MapsDebugTableSection *)v5 addNavigationRowWithTitle:@"Auto-advance from arrival region" viewControllerContent:&stru_1016390C0];
  v4 = [(MapsDebugTableSection *)v5 addNavigationRowWithTitle:@"Auto-advance without arrival region" viewControllerContent:&stru_101639120];
}

void sub_100B4F2C8(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:0 content:&stru_101639140];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Settings" content:&stru_101639160];
}

void sub_100B4F338(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Minimum time at waypoint" placeholderText:@"(seconds)" inputType:1 geoConfigKeyDouble:NavigationConfig_MPRDepartureTimeAtWaypoint[0], NavigationConfig_MPRDepartureTimeAtWaypoint[1]];
  v3 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Minimum distance deviated from waypoint" placeholderText:@"(meters)" inputType:1 geoConfigKeyDouble:NavigationConfig_MPRDepartureDistanceToCenter[0], NavigationConfig_MPRDepartureDistanceToCenter[1]];
  v4 = [(MapsDebugTableSection *)v5 addGEOTextFieldRowWithTitle:@"Distance from waypoint arrival points" placeholderText:@"(meters)" inputType:1 geoConfigKeyDouble:NavigationConfig_MPRDepartureDistanceFromWaypointPoints[0], NavigationConfig_MPRDepartureDistanceFromWaypointPoints[1]];
}

void sub_100B4F43C(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:0 content:&stru_1016390E0];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Settings" content:&stru_101639100];
}

void sub_100B4F528(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"(EV) Min time for charging sign" placeholderText:@"(seconds)" inputType:1 geoConfigKeyDouble:NavigationConfig_EVChargingMonitorMinimumTime[0], NavigationConfig_EVChargingMonitorMinimumTime[1]];
  v3 = [(MapsDebugTableSection *)v4 addGEOTextFieldRowWithTitle:@"(EV) Max time for charging sign" placeholderText:@"(seconds)" inputType:1 geoConfigKeyDouble:NavigationConfig_EVChargingMonitorMaximumTime[0], NavigationConfig_EVChargingMonitorMaximumTime[1]];
}

void sub_100B4F5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addTrafficOverrideSettings:v3];
}

void sub_100B4F6D0(id a1, MapsDebugTableSection *a2)
{
  v2 = GeoServicesConfig_ProbeCrumbsEnabled[0];
  v3 = GeoServicesConfig_ProbeCrumbsEnabled[1];
  v4 = a2;
  v5 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enabled" geoConfigKey:v2, v3];
  v6 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Historical Duration" placeholderText:@"(seconds)" inputType:1 get:&stru_101639000 set:&stru_101639020];
  [v6 setSubtitle:@"max of 255 seconds"];
  v7 = [(MapsDebugTableSection *)v4 addTextFieldRowWithTitle:@"Record every N locations" placeholderText:0 inputType:1 get:&stru_101639040 set:&stru_101639060];

  [v7 setSubtitle:@"default is 1 (every location)"];
  [(MapsDebugTableSection *)v4 setFooter:@"These settings are ignored if Probe Crumbs are disabled."];
}

void sub_100B4F7D8(id a1, NSString *a2)
{
  v3 = a2;
  v2 = [(NSString *)v3 integerValue];
  if (v2 >= GEOConfigGetUInteger())
  {
    GEOConfigGetUInteger();
  }

  else
  {
    [(NSString *)v3 integerValue];
  }

  GEOConfigSetUInteger();
}

NSString *__cdecl sub_100B4F878(id a1)
{
  GEOConfigGetUInteger();
  GEOConfigGetUInteger();
  UInteger = GEOConfigGetUInteger();
  if (UInteger <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = UInteger;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [v3 stringValue];

  return v4;
}

void sub_100B4F92C(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 integerValue]<= 0xFE)
  {
    [(NSString *)v2 integerValue];
  }

  GEOConfigSetUInteger();
}

NSString *__cdecl sub_100B4F998(id a1)
{
  if (GEOConfigGetUInteger() > 0xFE)
  {
    UInteger = 255;
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
  }

  if (UInteger <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = UInteger;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v4 = [v3 stringValue];

  return v4;
}

void sub_100B4FA2C(id a1, MapsDebugTableSection *a2)
{
  v2 = NavigationConfig_LocationProjectionTimeSeconds[0];
  v3 = NavigationConfig_LocationProjectionTimeSeconds[1];
  v5 = a2;
  v4 = [(MapsDebugTableSection *)v5 addSliderRowWithTitle:@"Projection time" subtitleStringHandler:&stru_101638FC0 min:v2 max:v3 geoConfigKeyDouble:0 changeHandler:-0.1, 10.0];
  [(MapsDebugTableSection *)v5 setFooter:@"Accounts for GPS delay by projecting locations into the future by a set amount of time."];
}

void sub_100B4FAF4(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Ignore Course Accuracy" geoConfigKey:NavigationConfig_IgnoreCourseAccuracy[0], NavigationConfig_IgnoreCourseAccuracy[1]];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Use CoreLocation driving matched locations" geoConfigKey:NavigationConfig_UseCLDrivingMapMatchedLocations[0], NavigationConfig_UseCLDrivingMapMatchedLocations[1]];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Use CoreLocation pedestrian matched locations" geoConfigKey:NavigationConfig_UseCLPedestrianMapMatchedLocations[0], NavigationConfig_UseCLPedestrianMapMatchedLocations[1]];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Allow projection past maneuver" geoConfigKey:GeoServicesConfig_NavigationAllowProjectingLocationPastManeuver[0], GeoServicesConfig_NavigationAllowProjectingLocationPastManeuver[1]];
}

void sub_100B4FC60(id a1, MapsDebugTableSection *a2)
{
  v11 = a2;
  v2 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"End of route" geoConfigKey:243, &unk_10163ED30];
  v3 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"Arrival points" geoConfigKey:244, &unk_10163ED68];
  v4 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"ISSUE_ARRIVAL" geoConfigKey:245, &unk_10163EDA0];
  v5 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"ISSUE_ARRIVAL_OFF_ROUTE" geoConfigKey:246, &unk_10163EDD8];
  v6 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"END_NAVIGATION_TIMEOUT" geoConfigKey:247, &unk_10163EE10];
  v7 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"PRE_ARRIVAL_MODE" geoConfigKey:248, &unk_10163EE48];
  v8 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"PARKING_SUGGEST_WALKING" geoConfigKey:249, &unk_10163EE80];
  v9 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"INITIATE_APPROACHING" geoConfigKey:250, &unk_10163EEB8];
  v10 = [(MapsDebugTableSection *)v11 addSwitchRowWithTitle:@"PREPARE_TO_PARK" geoConfigKey:251, &unk_10163EEF0];
}

void sub_100B4FDD8(id a1, MapsDebugTableSection *a2)
{
  v7 = a2;
  v2 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Show Raw GPS Position" defaultsKey:@"NavigationShowRawGPSTrail"];
  v3 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Show Matched Position" defaultsKey:@"NavigationShowMatchedLocationTrail"];
  v4 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Draw Preload Misses" defaultsKey:@"NavigationDrawPreloadMisses"];
  v5 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Draw Full Preload Status" defaultsKey:@"NavigationDrawPreloadStatus"];
  v6 = [(MapsDebugTableSection *)v7 addSwitchRowWithTitle:@"Show Maneuver Points" defaultsKey:@"NavigationDrawManeuverPoints"];
}

void sub_100B4FF74(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTitle:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_100B501D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_100B50220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B51390;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, (a1 + 32));
  [WeakRetained _addNavigationRowWithTitle:@"Trace and Simulation Settings" section:v3 handler:v6];

  objc_destroyWeak(&v7);
}

void sub_100B50310(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100B50F9C;
  v35[3] = &unk_101658C70;
  objc_copyWeak(v36, (a1 + 32));
  [WeakRetained _addNavigationRowWithTitle:@"Visualization" section:v3 handler:v35];

  v5 = objc_loadWeakRetained((a1 + 32));
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100B50FF8;
  v33[3] = &unk_101658C70;
  objc_copyWeak(&v34, (a1 + 32));
  [v5 _addNavigationRowWithTitle:@"Locations" section:v3 handler:v33];

  v6 = objc_loadWeakRetained((a1 + 32));
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100B51054;
  v31[3] = &unk_101658C70;
  objc_copyWeak(&v32, (a1 + 32));
  [v6 _addNavigationRowWithTitle:@"Routing" section:v3 handler:v31];

  v7 = objc_loadWeakRetained((a1 + 32));
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100B510B0;
  v29[3] = &unk_101658C70;
  objc_copyWeak(&v30, (a1 + 32));
  [v7 _addNavigationRowWithTitle:@"ETA Updates" section:v3 handler:v29];

  v8 = objc_loadWeakRetained((a1 + 32));
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100B5110C;
  v27[3] = &unk_101658C70;
  objc_copyWeak(&v28, (a1 + 32));
  [v8 _addNavigationRowWithTitle:@"Audio" section:v3 handler:v27];

  v9 = objc_loadWeakRetained((a1 + 32));
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100B51168;
  v25[3] = &unk_101658C70;
  objc_copyWeak(&v26, (a1 + 32));
  [v9 _addNavigationRowWithTitle:@"Transit" section:v3 handler:v25];

  v10 = objc_loadWeakRetained((a1 + 32));
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100B511C4;
  v23[3] = &unk_101658C70;
  objc_copyWeak(&v24, (a1 + 32));
  [v10 _addNavigationRowWithTitle:@"Custom Routes" section:v3 handler:v23];

  v11 = objc_loadWeakRetained((a1 + 32));
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100B51220;
  v21[3] = &unk_101658C70;
  objc_copyWeak(&v22, (a1 + 32));
  [v11 _addNavigationRowWithTitle:@"Time to Leave" section:v3 handler:v21];

  v12 = objc_loadWeakRetained((a1 + 32));
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B5127C;
  v19[3] = &unk_101658C70;
  objc_copyWeak(&v20, (a1 + 32));
  [v12 _addNavigationRowWithTitle:@"Navigation Service" section:v3 handler:v19];

  v13 = objc_loadWeakRetained((a1 + 32));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B512D8;
  v17[3] = &unk_101658C70;
  objc_copyWeak(&v18, (a1 + 32));
  [v13 _addNavigationRowWithTitle:@"Preloading" section:v3 handler:v17];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B51334;
  v15[3] = &unk_101658C70;
  objc_copyWeak(&v16, (a1 + 32));
  [v14 _addNavigationRowWithTitle:@"Thermal Mitigations" section:v3 handler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(v36);
}

void sub_100B50868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  objc_destroyWeak((v52 + 32));
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v53 + 32));
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a48);
  objc_destroyWeak((v54 - 192));
  objc_destroyWeak((v54 - 152));
  objc_destroyWeak((v54 - 112));
  _Unwind_Resume(a1);
}

void sub_100B5094C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10195E010 != -1)
  {
    dispatch_once(&qword_10195E010, &stru_101630BA8);
  }

  if (byte_10195E008 != 1)
  {
    goto LABEL_10;
  }

  if (qword_10195CFF8 != -1)
  {
    dispatch_once(&qword_10195CFF8, &stru_1016272E0);
  }

  if (byte_10195CFF0 != 1)
  {
    goto LABEL_10;
  }

  if (qword_10195E958 != -1)
  {
    dispatch_once(&qword_10195E958, &stru_10164C728);
  }

  if ((byte_10195E950 & 1) == 0)
  {
LABEL_10:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100B50DA4;
    v14[3] = &unk_101658C70;
    objc_copyWeak(&v15, (a1 + 32));
    [WeakRetained _addNavigationRowWithTitle:@"Visual Features" section:v3 handler:v14];

    objc_destroyWeak(&v15);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B50E00;
  v12[3] = &unk_101658C70;
  objc_copyWeak(&v13, (a1 + 32));
  [v5 _addNavigationRowWithTitle:@"Route Planning Refreshing" section:v3 handler:v12];

  v6 = objc_loadWeakRetained((a1 + 32));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B50E5C;
  v10[3] = &unk_101658C70;
  objc_copyWeak(&v11, (a1 + 32));
  [v6 _addNavigationRowWithTitle:@"Mobility and Routing" section:v3 handler:v10];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B50F08;
  v8[3] = &unk_101658C70;
  objc_copyWeak(&v9, (a1 + 32));
  [v7 _addNavigationRowWithTitle:@"Parking" section:v3 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void sub_100B50C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Disable navigation restore when debugging" geoConfigKey:{252, &unk_10163EF28}];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B50D48;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, (a1 + 32));
  [WeakRetained _addNavigationRowWithTitle:@"Automation and Testing" section:v3 handler:v6];

  objc_destroyWeak(&v7);
}

void sub_100B50D48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addAutomationAndTestingSettings:v3];
}

void sub_100B50DA4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addVisualFeaturesSettings:v3];
}

void sub_100B50E00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addRoutePlanningRefreshingSettings:v3];
}

void sub_100B50E5C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addEVRoutingSettings:v7];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _addLicensePlateRestrictionsSettings:v7];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _addManeuverArrowSettings:v7];

  v6 = [v7 addSectionWithTitle:@"Navigation puck" content:&stru_101638ED8];
}

void sub_100B50F08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addParkingNavigationSettings:v3];
}

void sub_100B50F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addVisualizationSettings:v3];
}

void sub_100B50FF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addLocationsSettings:v3];
}

void sub_100B51054(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addRoutingSettings:v3];
}

void sub_100B510B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addETAUpdatesSettings:v3];
}

void sub_100B5110C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addAudioSettings:v3];
}

void sub_100B51168(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addTransitSettings:v3];
}

void sub_100B511C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addCustomRoutesSettings:v3];
}

void sub_100B51220(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addTimeToLeaveSettings:v3];
}

void sub_100B5127C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addNavigationServiceSettings:v3];
}

void sub_100B512D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addPreloadingSettings:v3];
}

void sub_100B51334(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addThermalMitigationsSettings:v3];
}

void sub_100B51390(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addTracesAndSimulationSettings:v3];
}

void sub_100B517A4(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_100B591FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocorrectionType:1];
  [v3 setAutocapitalizationType:1];
  v4 = [*(a1 + 32) _maps_defaultCollectionItemTitle];
  [v3 setText:v4];
}

uint64_t sub_100B59274(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100B5928C(uint64_t a1)
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

void sub_100B59C8C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v2 = +[GEOAPSharedStateData sharedData];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B59F70;
  v3[3] = &unk_10163AA80;
  v5 = v6;
  v4 = *(a1 + 32);
  [v2 populateTapEventForPinType:1 tapEventSpecifierBlock:v3];

  _Block_object_dispose(v6, 8);
}

void sub_100B59D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B59D7C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v2 = +[GEOAPSharedStateData sharedData];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B59E6C;
  v3[3] = &unk_10163AA80;
  v5 = v6;
  v4 = *(a1 + 32);
  [v2 populateTapEventForPinType:2 tapEventSpecifierBlock:v3];

  _Block_object_dispose(v6, 8);
}

void sub_100B59E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100B59E6C(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, _DWORD *a5, _BYTE *a6)
{
  v12 = *(*(*(a1 + 40) + 8) + 24);
  v13 = [*(a1 + 32) count];
  if (v12 < v13)
  {
    v14 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
    *a2 = [v14 resultIndex];
    *a3 = 2;
    v15 = [v14 mapItem];
    *a4 = [v15 _muid];

    v16 = [v14 mapItem];
    v17 = [v16 place];
    *a5 = [v17 localSearchProviderID];

    *a6 = 0;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v12 < v13;
}

uint64_t sub_100B59F70(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, _DWORD *a5, _BYTE *a6)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if ((v6 & 1) == 0)
  {
    *a2 = [*(a1 + 32) resultIndex];
    *a3 = 2;
    v12 = [*(a1 + 32) mapItem];
    *a4 = [v12 _muid];

    v13 = [*(a1 + 32) mapItem];
    v14 = [v13 place];
    *a5 = [v14 localSearchProviderID];

    *a6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v6 ^ 1u;
}

void sub_100B5CC10(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x790], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B5CCE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B5CCF8(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) setSuggestionType:4];
  v3 = [v8 mapRegion];

  if (v3)
  {
    v4 = [v8 mapRegion];
    GEOMapRectForMapRegion();
    v11 = MKCoordinateRegionForMapRect(v10);
    latitude = v11.center.latitude;
    longitude = v11.center.longitude;

    v7 = *(*(a1 + 40) + 8);
    *(v7 + 32) = latitude;
    *(v7 + 40) = longitude;
  }
}

void sub_100B5CD98(uint64_t a1, void *a2)
{
  v14 = a2;
  [*(a1 + 32) setSuggestionType:5];
  v3 = [v14 endWaypoint];
  v4 = [v14 endWaypoint];
  v5 = [v4 geoMapItem];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v3)
  {
    if (![v3 isCurrentLocation] || (objc_msgSend(v14, "startWaypoint"), v8 = objc_claimAutoreleasedReturnValue(), v3, (v3 = v8) != 0))
    {
      v9 = [v3 geoMapItem];

      if (v9)
      {
        v10 = [v3 geoMapItem];
        [v10 coordinate];
        v11 = *(*(a1 + 48) + 8);
        *(v11 + 32) = v12;
        *(v11 + 40) = v13;
      }
    }
  }
}

void sub_100B5CE9C(uint64_t a1, void *a2)
{
  v13 = a2;
  [*(a1 + 32) setSuggestionType:6];
  v3 = [v13 geoMapItem];

  if (v3)
  {
    v4 = [v13 geoMapItem];
    [v4 coordinate];
    v5 = *(*(a1 + 40) + 8);
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;

    v8 = [v13 geoMapItem];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [v13 geoMapItem];
  v12 = [v11 _childItems];
  [*(a1 + 32) setIsProminentResult:{objc_msgSend(v12, "count") != 0}];
}

id sub_100B5D5D8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  if ([v1 rideOptionsCount])
  {
    v3 = 0;
    do
    {
      v4 = [v1 transitLineForRideOption:v3];
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v4 muid]);
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 < [v1 rideOptionsCount]);
  }

  v6 = [v2 componentsJoinedByString:{@", "}];

  return v6;
}

void sub_100B5DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B5DB58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B5DB70(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100B5DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B5DCD4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100B5DEDC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 128));
  [WeakRetained photoViewerDataProvider:a1[4] failedBatchRequestWithError:a1[5] range:{a1[6], a1[7]}];
}

void sub_100B5E550(uint64_t a1)
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

        *(*(a1 + 40) + 105) |= [*(*(&v7 + 1) + 8 * v6) needsObfuscationWhenRenderedInFullScreen];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100B5E660(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100B5E6B4(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void sub_100B5E708(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = *(a1 + 32);
  v3 = [v2 photoList];
  [WeakRetained photoViewerDataProvider:v2 didUpdateWithPhotos:v3];
}

void sub_100B5E848(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136) && (*(v1 + 106) & 1) == 0)
  {
    *(v1 + 106) = 1;
    v3 = sub_1007998B0();
    v4 = sub_1007998B0();
    v5 = os_signpost_id_generate(v4);

    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "BatchRequesting", "", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = &OBJC_IVAR___UGCPlaceDataPhotoListDataProvider__batchCount;
    if (!v7)
    {
      v8 = &OBJC_IVAR___UGCPlaceDataPhotoListDataProvider__initialCount;
    }

    v9 = *(v6 + *v8);
    v10 = (*(v6 + 48) - v7);
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = sub_1007998B0();
    v13 = os_signpost_id_generate(v12);

    v14 = sub_1007998B0();
    v15 = v14;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "StartingBatchRequest", "", buf, 2u);
    }

    v16 = *(*(a1 + 32) + 88);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100B5EA74;
    v17[3] = &unk_10163AB10;
    objc_copyWeak(v18, (a1 + 40));
    v18[1] = v13;
    v18[2] = v7;
    v18[3] = v11;
    [v16 fetchPhotosWithRange:v7 completion:{v11, v17}];
    objc_destroyWeak(v18);
  }
}

void sub_100B5EA74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B5EB6C;
    v10[3] = &unk_10163AAE8;
    v13 = *(a1 + 40);
    v10[4] = WeakRetained;
    v11 = v6;
    v14 = *(a1 + 48);
    v12 = v5;
    dispatch_async(v9, v10);
  }
}

id sub_100B5EB6C(void *a1)
{
  v2 = sub_1007998B0();
  v3 = v2;
  v4 = a1[7];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "EndingBatchRequest", "", v8, 2u);
  }

  *(a1[4] + 106) = 0;
  v5 = a1[4];
  v6 = a1[5];
  if (v6)
  {
    return [v5 _failWithError:v6 range:{a1[8], a1[9]}];
  }

  else
  {
    return [v5 _processResult:a1[6]];
  }
}

void sub_100B5ED3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100B5ED58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100B5EDAC(id a1, _MKMapItemPhotosAttribution *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(_MKMapItemPhotosAttribution *)v3 captionDisplayName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(_MKMapItemPhotosAttribution *)v3 captionDisplayName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100B5EEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100B5EFD0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

id sub_100B5F0CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result >= *(*(a1 + 32) + 48);
  return result;
}

id sub_100B603DC()
{
  if (qword_10195E7C8 != -1)
  {
    dispatch_once(&qword_10195E7C8, &stru_10163AE40);
  }

  v1 = qword_10195E7C0;

  return v1;
}

void sub_100B60430(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARVKRenderer");
  v2 = qword_10195E7C0;
  qword_10195E7C0 = v1;
}

BOOL sub_100B61714(uint64_t a1, void *a2)
{
  v3 = [a2 stepIndex];
  v4 = [*(a1 + 32) guidanceInfo];
  v5 = v3 == [v4 stepIndex];

  return v5;
}

BOOL sub_100B61764(uint64_t a1, void *a2)
{
  v3 = [a2 stepIndex];
  v4 = [*(a1 + 32) guidanceInfo];
  v5 = v3 == [v4 stepIndex];

  return v5;
}

int64_t sub_100B617D4(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

int64_t sub_100B61874(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

int64_t sub_100B6192C(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

int64_t sub_100B619CC(id a1, MNGuidanceARInfo *a2, MNGuidanceARInfo *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(MNGuidanceARInfo *)a2 stepIndex]];
  v6 = [(MNGuidanceARInfo *)v4 stepIndex];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

BOOL sub_100B61B30(id a1, MNGuidanceARInfo *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(MNGuidanceARInfo *)v4 eventType]== 2)
  {
    v5 = ![(MNGuidanceARInfo *)v4 isArrival];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

BOOL sub_100B61BD0(id a1, MNGuidanceARInfo *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(MNGuidanceARInfo *)v4 eventType]== 2)
  {
    v5 = [(MNGuidanceARInfo *)v4 isArrival];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100B63D48()
{
  if (qword_10195E7D8 != -1)
  {
    dispatch_once(&qword_10195E7D8, &stru_10163AE88);
  }

  v1 = qword_10195E7D0;

  return v1;
}

void sub_100B63D9C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CurrentLocationMapServiceTicket");
  v2 = qword_10195E7D0;
  qword_10195E7D0 = v1;
}

void sub_100B64298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = sub_100B63D48();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (!v6)
    {
      if (v9)
      {
        v12 = 134349315;
        v13 = WeakRetained;
        v14 = 2113;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Successfully got location update: %{private}@, submitting rev geo now", &v12, 0x16u);
      }

      v11 = [WeakRetained _revGeoTicketForCurrentLocation:v5 traits:*(a1 + 32) completionHandler:*(a1 + 40) networkActivityHandler:*(a1 + 48)];
      [WeakRetained setRevGeoTicket:v11];
      goto LABEL_10;
    }

    if (v9)
    {
      v12 = 134349314;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Error getting location update: %@", &v12, 0x16u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [Result resultWithError:v6];
      (*(v10 + 16))(v10, v11);
LABEL_10:
    }
  }
}

void sub_100B651CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = sub_10003D9F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138412802;
      v42 = v5;
      v43 = 2112;
      v44 = v3;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MapsOfflineUIHelper] KVO update for keyPath: %@, state: %@, change: %@", buf, 0x20u);
    }

    v7 = *(a1 + 40);
    v8 = NSStringFromSelector("loadState");
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (!v7)
    {
      v14 = *(a1 + 40);
      v15 = NSStringFromSelector("lastError");
      LOBYTE(v14) = [v14 isEqualToString:v15];

      if ((v14 & 1) == 0)
      {
        v16 = *(a1 + 40);
        v17 = NSStringFromSelector("downloadProgress");
        LODWORD(v16) = [v16 isEqualToString:v17];

        if (v16)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = WeakRetained[6];
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v19)
          {
            v20 = *v37;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v36 + 1) + 8 * i);
                v23 = [v22 state];

                if (v23 == v3)
                {
                  v31 = [v22 subscription];
                  v19 = [v31 identifier];

                  goto LABEL_36;
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_36:

          v32 = [v3 downloadProgress];

          if (v32)
          {
            v33 = [v3 downloadProgress];
            v34 = [v33 userInfo];
            v35 = [v34 objectForKeyedSubscript:GEOMapDataSubscriptionDownloadReasonKey];

            if (([v3 loadState] == 1 || objc_msgSend(v3, "loadState") == 3) && v35 && objc_msgSend(v35, "isEqualToString:", GEOMapDataSubscriptionProgressDownloadReasonForcedUpdate))
            {
              [WeakRetained _startedUpdatingSubscription:v19];
            }

            else
            {
              [WeakRetained _stoppedUpdatingSubscription:{v19, v36}];
            }
          }

          else
          {
            [WeakRetained _stoppedUpdatingSubscription:v19];
          }
        }
      }

      goto LABEL_46;
    }

    v9 = [*(a1 + 56) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v10 = [v9 intValue];

    v11 = [*(a1 + 56) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v12 = [v11 intValue];

    if (v10 != 1 || v12 == 1)
    {
      if (v10 == 1 || v12 != 1)
      {
        goto LABEL_25;
      }

      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    [WeakRetained setOutOfDateSubscriptionsCount:{objc_msgSend(WeakRetained, "outOfDateSubscriptionsCount") + v24}];
LABEL_25:
    v25 = v10 - 3;
    if ((v25 != 0) == (v12 == 3))
    {
      v26 = [WeakRetained outOfDateSubscriptionsCount];
      if (v12 == 3)
      {
        v27 = v26 + 1;
      }

      else
      {
        v27 = v26 - 1;
      }

      [WeakRetained setOutOfDateSubscriptionsCount:v27];
    }

    v28 = v12 - 1;
    if (v25 < 0xFFFFFFFE == v28 < 2)
    {
      v29 = [WeakRetained fullyLoadedSubscriptionsCount];
      if (v28 > 1)
      {
        v30 = v29 - 1;
      }

      else
      {
        v30 = v29 + 1;
      }

      [WeakRetained setFullyLoadedSubscriptionsCount:v30];
    }

LABEL_46:
  }
}

void sub_100B655F0(id a1)
{
  v1 = qword_10195E7F8;
  qword_10195E7F8 = &off_1016ED598;
}

void sub_100B6597C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v7 = sub_10003D9F4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] paired device subscription fetch error: %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
      v7 = dispatch_group_create();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v5;
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            dispatch_group_enter(v7);
            v14 = [WeakRetained subscriptionManager];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_100B65C5C;
            v20[3] = &unk_10163AFB0;
            v21 = v8;
            v22 = v13;
            v23 = v7;
            [v14 fetchStateForPairedDeviceSubscriptionWithIdentifier:v13 callbackQueue:&_dispatch_main_q completionHandler:v20];
          }

          v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v10);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B65D34;
      block[3] = &unk_101661A90;
      block[4] = WeakRetained;
      v19 = v8;
      v15 = v8;
      dispatch_group_notify(v7, &_dispatch_main_q, block);

      v6 = 0;
    }
  }
}

void sub_100B65C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v6 = sub_10003D9F4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] paired device subscription state fetch error: %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100B65D34(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) subscriptionInfos];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 subscription];
        v10 = [v9 identifier];
        v11 = [v8 objectForKeyedSubscript:v10];

        [v7 setPairedDeviceState:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 32);
  v13 = v12[1];
  v14 = [v12 subscriptionInfos];
  [v13 pairedSubscriptionInfosDidChange:v14];
}

void sub_100B66424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B66450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_10003D9F4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] subscription fetch error: %@", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, v6);
      }
    }

    else
    {
      v23 = v5;
      v10 = sub_1000282CC(v5, &stru_10163AF60);
      [WeakRetained setSubscriptions:v10];

      v11 = [WeakRetained subscriptions];
      v12 = [v11 count];

      if (!v12)
      {
        GEOConfigSetBOOL();
      }

      v13 = +[NSMutableArray array];
      v14 = dispatch_group_create();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [WeakRetained subscriptions];
      v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            dispatch_group_enter(v14);
            v20 = [WeakRetained subscriptionManager];
            v21 = [v19 identifier];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_100B667F0;
            v30[3] = &unk_10163AF88;
            v31 = v14;
            v34 = *(v25 + 32);
            v32 = v19;
            v33 = v13;
            [v20 fetchStateForSubscriptionWithIdentifier:v21 callbackQueue:&_dispatch_main_q completionHandler:v30];
          }

          v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v16);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B66A90;
      block[3] = &unk_1016605F8;
      v27 = v13;
      v28 = WeakRetained;
      v29 = *(v25 + 32);
      v22 = v13;
      dispatch_group_notify(v14, &_dispatch_main_q, block);

      v6 = 0;
      v5 = v23;
    }
  }
}

void sub_100B667F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = [[MapDataSubscriptionInfo alloc] initWithSubscription:*(a1 + 40) state:v5];
    [*(a1 + 48) addObject:v9];
    v10 = [v5 loadState];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = sub_10003D9F4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 40);
          v17 = 138412546;
          v18 = v16;
          v19 = 2112;
          v20 = v5;
          v13 = "[MapsOfflineUIHelper] found fully loaded subscription: %@, state: %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v10 == 3)
      {
        v11 = sub_10003D9F4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 40);
          v17 = 138412546;
          v18 = v14;
          v19 = 2112;
          v20 = v5;
          v13 = "[MapsOfflineUIHelper] found fully-loaded, incompatible subscription: %@, state: %@";
          goto LABEL_19;
        }

LABEL_20:
      }
    }

    else
    {
      if (!v10)
      {
        v11 = sub_10003D9F4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 40);
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v5;
          v13 = "[MapsOfflineUIHelper] found not fully loaded subscription: %@, state: %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v10 == 1)
      {
        v11 = sub_10003D9F4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 40);
          v17 = 138412546;
          v18 = v12;
          v19 = 2112;
          v20 = v5;
          v13 = "[MapsOfflineUIHelper] found out of date subscription: %@, state: %@";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, &v17, 0x16u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    dispatch_group_leave(*(a1 + 32));

    goto LABEL_22;
  }

  v7 = sub_10003D9F4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] subscription state error: %@", &v17, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v6);
  }

LABEL_22:
}

void sub_100B66A90(uint64_t a1)
{
  +[NSMutableSet set];
  v27 = v26 = a1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_22;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v32;
  v29 = GEOMapDataSubscriptionDownloadReasonKey;
  v28 = GEOMapDataSubscriptionProgressDownloadReasonForcedUpdate;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v32 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v31 + 1) + 8 * i);
      v9 = [v8 state];
      if ([v9 loadState] == 1)
      {
      }

      else
      {
        v10 = [v8 state];
        v11 = [v10 loadState];

        if (v11 != 2)
        {
          goto LABEL_10;
        }
      }

      ++v4;
LABEL_10:
      v12 = [v8 state];
      if ([v12 loadState] == 1)
      {
      }

      else
      {
        v13 = [v8 state];
        v14 = [v13 loadState];

        if (v14 != 3)
        {
          continue;
        }
      }

      ++v5;
      v15 = [v8 state];
      v16 = [v15 downloadProgress];

      if (v16)
      {
        v17 = [v8 state];
        v18 = [v17 downloadProgress];
        v19 = [v18 userInfo];
        v20 = [v19 objectForKeyedSubscript:v29];

        if (v20 && [v20 isEqualToString:v28])
        {
          v21 = [v8 subscription];
          v22 = [v21 identifier];
          [v27 addObject:v22];
        }
      }
    }

    v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v3);
LABEL_22:

  [*(v26 + 40) setOutOfDateSubscriptionsCount:v5];
  [*(v26 + 40) setFullyLoadedSubscriptionsCount:v4];
  [*(v26 + 40) setUpdatingSubscriptions:v27];
  v23 = [*(v26 + 32) copy];
  [*(v26 + 40) setSubscriptionInfos:v23];

  v24 = *(v26 + 48);
  if (v24)
  {
    v25 = [*(v26 + 40) subscriptionInfos];
    (*(v24 + 16))(v24, v25, 0);
  }

  [*(v26 + 40) _subscriptionsDidChange];
  if ([*(v26 + 40) pairedDeviceSubscriptionStatesMonitorCount] >= 1)
  {
    [*(v26 + 40) _reloadPairedDeviceSubscriptionInfos];
  }
}

void sub_100B671DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B67200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v7 = [NSNumber numberWithLongLong:a2];
      [v8 setAvailableDiskSpaceForPairedDevice:v7];

      (*(*(a1 + 32) + 16))();
      WeakRetained = v8;
    }
  }
}

void sub_100B676EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10003D9F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error restoring expired subscription: %@, error: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100B67D0C(uint64_t a1, int a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (a2)
    {
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

void sub_100B67F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadSubscriptions];
    WeakRetained = v2;
  }
}

void sub_100B67FA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadLastUpdatedDates];
    WeakRetained = v2;
  }
}

void sub_100B67FE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadLastUpdatedDates];
    WeakRetained = v2;
  }
}

void sub_100B68028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadPairedDeviceSubscriptionInfos];
    [v2 setAvailableDiskSpaceForPairedDevice:0];
    WeakRetained = v2;
  }
}

void sub_100B6841C(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ShowExploreGuidesAction resolveMapItem: %@", &v11, 0xCu);
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

id sub_100B687D0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v48;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        if ([v8 hasSignGuidance])
        {
          v9 = [v8 signGuidance];
          if ([v9 hasStackRanking])
          {
            v10 = [v8 hasEndValidDistanceOffsetCm];

            if (v10)
            {
              [v2 addObject:v8];
            }
          }

          else
          {
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v2;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v44;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v43 + 1) + 8 * j);
          if ([v17 endValidDistanceOffsetCm] > v14)
          {
            v14 = [v17 endValidDistanceOffsetCm];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = [v11 copy];
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * k);
          if ([v24 endValidDistanceOffsetCm] < v14)
          {
            [v11 removeObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v21);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v18 = 0;
      v28 = *v36;
      v29 = -1;
      do
      {
        for (m = 0; m != v27; m = m + 1)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v35 + 1) + 8 * m);
          v32 = [v31 signGuidance];
          if ([v32 stackRanking] < v29)
          {
            v29 = [v32 stackRanking];
            v33 = v31;

            v18 = v33;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v27);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_100B693E8()
{
  if (qword_10195E808 != -1)
  {
    dispatch_once(&qword_10195E808, &stru_10163B058);
  }

  v1 = qword_10195E800;

  return v1;
}

void sub_100B69444(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SharedTripsTableDataSource");
  v2 = qword_10195E800;
  qword_10195E800 = v1;
}

void sub_100B6A24C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_100032C3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v8 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Start generating radar attachments", buf, 0xCu);
    }

    v4 = [NSString stringWithFormat:@"%p.NavigationBanners.png", WeakRetained];
    v5 = [WeakRetained view];
    v6 = [v5 window];
    [MapsRadarScreenshotAttachmentHelper generateScreenshotAttachmentsFromWindow:v6 withName:v4 radarDraft:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_100B6A740(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_100032C3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open Maps, error: %@", &v6, 0xCu);
    }
  }
}

id sub_100B6A9BC(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    v2 = [NSString stringWithFormat:@"(unknown: %li)", a1];
  }

  else
  {
    v2 = *(&off_10163B108 + a1 + 1);
  }

  return v2;
}

void sub_100B6AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B6AD50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100032C3C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Persistent Banners] Alerting assertion invalidated: %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 2);
    if (v10 == v5)
    {
      *(WeakRetained + 2) = 0;

      [v9 setApertureExpansionTimer:0];
    }
  }
}

void sub_100B6B7E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) arrayByAddingObject:*(*(a1 + 32) + 24)];
  [NSLayoutConstraint activateConstraints:v2];

  [*(*(a1 + 32) + 96) setAlpha:1.0];
  [*(*(a1 + 32) + 104) removeFromSuperview];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100B6B99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B6B9B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100032C3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[Persistent Banners] Will clean up alert after timer", v3, 2u);
  }

  [WeakRetained _revertToPrimaryBannerView];
  [WeakRetained setAlternateBannerActiveTimer:0];
}

void sub_100B6BB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B6BB74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[2] isValid];
    v4 = sub_100032C3C();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Persistent Banners] Will collapse after timer", buf, 2u);
      }

      [v2[2] invalidateWithReason:@"Timeout"];
      v4 = v2[2];
      v2[2] = 0;
    }

    else if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Persistent Banners] already collapsed after timer.", v6, 2u);
    }
  }
}

void sub_100B6BEBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissBannerWithReason:@"Timeout"];
}

void sub_100B6C314(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setAlpha:0.0];
  [*(*(a1 + 32) + 104) removeFromSuperview];
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  [*(*(a1 + 32) + 104) setIsVisible:{objc_msgSend(*(*(a1 + 32) + 96), "isVisible")}];
  v2 = [*(a1 + 32) _contentView];
  [*(*(a1 + 32) + 104) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:*(*(a1 + 32) + 104)];
  v21 = [*(*(a1 + 32) + 104) leadingAnchor];
  v3 = [v2 leadingAnchor];
  v4 = [v21 constraintEqualToAnchor:v3];
  v27[0] = v4;
  v5 = [*(*(a1 + 32) + 104) trailingAnchor];
  v6 = [v2 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v27[1] = v7;
  v8 = [*(*(a1 + 32) + 104) bottomAnchor];
  v9 = [v2 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v27[2] = v10;
  v11 = [NSArray arrayWithObjects:v27 count:3];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = *(*(a1 + 32) + 40);
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        LODWORD(v16) = 1144750080;
        [*(*(&v22 + 1) + 8 * i) setPriority:v16];
      }

      v17 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  [NSLayoutConstraint deactivateConstraints:*(*(a1 + 32) + 32)];
  v20 = [*(*(a1 + 32) + 40) arrayByAddingObject:*(*(a1 + 32) + 24)];
  [NSLayoutConstraint activateConstraints:v20];
}

void sub_100B6D054(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerView];
  [v1 updateFromBannerItem];
}

void sub_100B6D28C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = [v2 bannerView];
    v4 = objc_opt_respondsToSelector();

    v2 = *(a1 + 32);
    if (v4)
    {
      v5 = [v2 activeLayoutMode] > 3;
      v6 = [*(a1 + 32) bannerView];
      [v6 setExpanded:v5];

      [*(a1 + 32) displayWidth];
      v8 = v7;
      v9 = [*(a1 + 32) bannerView];
      [v9 sizeThatFits:{v8, 400.0}];
      v11 = v10;

      [*(a1 + 32) setPreferredContentSize:{v8, v11}];
      [*(a1 + 32) _updateShowsControls];
      v2 = *(a1 + 32);
    }
  }

  v12 = [v2 view];
  [v12 layoutIfNeeded];
}

void sub_100B6EC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B6EC8C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "com.apple.Maps.DistanceUnitsChanged";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received darwin notification - %s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDistanceUnit];
}

void sub_100B6F400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100B6F424()
{
  if (qword_10195E820 != -1)
  {
    dispatch_once(&qword_10195E820, &stru_10163B3A8);
  }

  v1 = qword_10195E818;

  return v1;
}

void sub_100B6F478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100B6F424();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 134349056;
      v4 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Annotation text updating timer fired", &v3, 0xCu);
    }

    [WeakRetained _updateAnnotationText];
  }
}

void sub_100B6F534(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteAnnotationTextUpdater");
  v2 = qword_10195E818;
  qword_10195E818 = v1;
}

void sub_100B6FC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B6FC74(uint64_t a1)
{
  v2 = sub_1000421A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) traffic];
    v5 = 134349314;
    v6 = WeakRetained;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Updated route context for traffic update: %@", &v5, 0x16u);
  }
}

id sub_100B6FE40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 uniqueRouteID];
  v7 = [v6 isEqual:*(a1 + 32)];
  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_100B70214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B70238(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained configuration];
  v7 = [v6 selectedRoute];

  if (v4 == v7)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 trafficFeaturesUpdater];
    [v9 updateTrafficFeatures:v10 onRoute:*(a1 + 32) forLocation:*(a1 + 40)];
  }
}

NSNumber *__cdecl sub_100B70774(id a1, GEOTransitVehiclePosition *a2, unint64_t a3)
{
  v3 = [(GEOTransitVehiclePosition *)a2 tripID];

  return [NSNumber numberWithUnsignedInteger:v3];
}

void sub_100B70FC4(uint64_t a1)
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

        [*(a1 + 40) _updateAnnotationForVehiclePosition:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100B717E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B71814(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _continueUpdateTrafficWithInitialTrafficFeatures:*(a1 + 32) sharedTrafficFeatures:v6 routes:*(a1 + 40) includeAlternateRoutes:*(a1 + 56)];
  }
}

void sub_100B71880(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 uniqueRouteID];
    v9 = [WeakRetained configuration];
    v10 = [v9 selectedRoute];
    v11 = [v10 uniqueRouteID];
    v12 = [v8 isEqual:v11];

    if (v12)
    {
      [WeakRetained _updateTrafficWithInitialTrafficFeatures:v6];
    }

    else
    {
      v13 = sub_1000421A8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [WeakRetained configuration];
        v15 = [v14 selectedRoute];
        v16 = [v15 uniqueRouteID];
        v17 = [v5 uniqueRouteID];
        v18 = 134349570;
        v19 = WeakRetained;
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Current route changed (ID: %@) before we could finish calculating traffic features for route with ID %@; ignoring", &v18, 0x20u);
      }
    }
  }
}

void sub_100B727D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = sub_1000421A8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v50 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Building route context", buf, 0xCu);
    }

    v36 = [WeakRetained _routeContextBuilder];
    v3 = [v36 buildRouteContextForRoutes:*(a1 + 32) selectedRouteIndex:*(a1 + 64)];
    v37 = a1;
    [v3 setCurrentWaypoint:*(a1 + 40) withProximity:*(a1 + 72)];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = v3;
    v4 = [v3 routeInfo];
    v5 = [v4 waypoints];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v46;
      *&v7 = 138412290;
      v34 = v7;
      do
      {
        v10 = 0;
        v39 = v8;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 waypoint];
            v14 = [v13 findMyHandle];
            v15 = [v14 contact];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v18 = [v12 waypoint];
              v19 = [v18 addressBookAddress];
              v17 = [v19 contact];
            }

            v20 = [v12 waypoint];
            v21 = [v20 findMyHandle];
            v22 = [v21 identifier];

            if (v17)
            {
              v23 = 1;
            }

            else
            {
              v23 = v22 == 0;
            }

            if (!v23)
            {
              v17 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v22];
            }

            if (!v17)
            {
              v29 = sub_10006D178();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v50 = "[RouteAnnotationsController _updateMapViewRouteContextForced:withFinishedHandler:]_block_invoke";
                v51 = 2080;
                v52 = "RouteAnnotationsController.m";
                v53 = 1024;
                v54 = 613;
                v55 = 2080;
                v56 = "contact != nil";
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
              }

              if (sub_100E03634())
              {
                v30 = sub_10006D178();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = +[NSThread callStackSymbols];
                  *buf = v34;
                  v50 = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }
            }

            v24 = [v17 identifier];
            [v12 setImageProvider:v17 withKey:v24];

            v25 = [RouteAnnotationTextUpdater alloc];
            v26 = [WeakRetained mapView];
            v27 = [v26 _mapLayer];
            v28 = [(RouteAnnotationTextUpdater *)v25 initWithRouteWaypoint:v12 mapView:v27];

            [WeakRetained[10] addObject:v28];
            v8 = v39;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v32 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
        v8 = v32;
      }

      while (v32);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B730B8;
    block[3] = &unk_10165DEA0;
    objc_copyWeak(&v44, (v37 + 56));
    v42 = v35;
    v43 = *(v37 + 48);
    v33 = v35;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v44);
  }
}