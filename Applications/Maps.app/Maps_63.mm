void sub_100BF6430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100BF6460(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isUserLocation])
  {
    [v3 keyColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;

  return v5;
}

void sub_100BF7490(uint64_t a1, void *a2)
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

void sub_100BF81C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100BF81DC(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateLinkWithCount:objc_msgSend(v4 notifyObservers:{"count"), 1}];
  }
}

void sub_100BF854C(id a1)
{
  v1 = objc_alloc_init(UserProfileLinkRatingsProvider);
  v2 = qword_10195EA98;
  qword_10195EA98 = v1;
}

void sub_100BF8778(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 1)
  {
    [WeakRetained startUsageLimitTimer];
  }

  else
  {
    [WeakRetained stopUsageLimitTimer];
  }
}

void sub_100BF8A18(uint64_t a1)
{
  v2 = sub_100BF8B74();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = 134349056;
    v12 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Detected calendar day changed; resetting daily usage limit", &v11, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    [v4 setUsageLimitTimer:0];
    v6 = objc_opt_new();
    [v5 setCurrentEntry:v6];

    v7 = [v5 currentEntry];
    [v7 save];

    v8 = [v5 session];
    v9 = [v8 state];

    if (v9 == 1)
    {
      [v5 startUsageLimitTimer];
    }

    else
    {
      v10 = [v5 stateManager];
      [v10 resetSessionDisableEvent:2];
    }
  }
}

id sub_100BF8B74()
{
  if (qword_10195EAB0 != -1)
  {
    dispatch_once(&qword_10195EAB0, &stru_10164D770);
  }

  v1 = qword_10195EAA8;

  return v1;
}

void sub_100BF8BC8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionDailyUsageMonitor");
  v2 = qword_10195EAA8;
  qword_10195EAA8 = v1;
}

void sub_100BF932C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BF9350(uint64_t a1)
{
  v2 = sub_100BF8B74();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = 134349056;
    v14 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Daily usage limit timer fired; disabling VIO session for the rest of the day", &v13, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = [v4 currentEntry];
    [v6 dailyUsageLimit];
    v8 = v7;
    v9 = [v5 currentEntry];
    [v9 setCurrentUsage:v8];

    v10 = [v5 currentEntry];
    [v10 setLastStartDate:0];

    v11 = [v5 currentEntry];
    [v11 save];

    v12 = [v5 stateManager];
    [v12 recordSessionDisableEvent:2];
  }
}

void sub_100BF9C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100BF9C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireStateUpdate:*(a1 + 40)];
}

void sub_100BF9E58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enqueueNewState:*(a1 + 40)];
}

void sub_100BF9EA8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsPocketStateProvider");
  v2 = qword_10195EAB8;
  qword_10195EAB8 = v1;
}

void sub_100BFBB44(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFLocationManager");
  v2 = qword_10195EAD8;
  qword_10195EAD8 = v1;
}

void sub_100BFBF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100BFBFBC(uint64_t a1)
{
  v2 = sub_10006D1CC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Location update disable timer fired; stopping location updates now", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopLocationUpdatesFromTimer];
}

void sub_100BFC4F0(id a1)
{
  v1 = objc_alloc_init(VLFLocationManager);
  v2 = qword_10195EAC8;
  qword_10195EAC8 = v1;
}

void *sub_100BFC6BC(uint64_t a1)
{
  v2 = sub_100BFC70C();
  result = dlsym(v2, "TapToRadarSymbolCircleUnfilled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195EB08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100BFC70C()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10195EAF0;
  v9 = qword_10195EAF0;
  if (!qword_10195EAF0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100BFC868;
    v3[4] = &unk_101651698;
    v4 = &v6;
    v5 = v3;
    v10 = off_10164D8B0;
    v7[3] = _sl_dlopen();
    qword_10195EAF0 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_100BFC848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100BFC868(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195EAF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100BFCA88(uint64_t a1)
{
  v2 = sub_100BFC70C();
  result = dlsym(v2, "TapToRadarSymbolCircleFilled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195EB00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100BFCC68(uint64_t a1)
{
  v2 = sub_100BFC70C();
  result = dlsym(v2, "TapToRadarSymbolUnfilled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195EAF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100BFCE48(uint64_t a1)
{
  v2 = sub_100BFC70C();
  result = dlsym(v2, "TapToRadarSymbolFilled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195EAE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100BFF360()
{
  if (qword_10195EB18 != -1)
  {
    dispatch_once(&qword_10195EB18, &stru_10164D8C0);
  }

  v1 = qword_10195EB10;

  return v1;
}

void sub_100BFF3B4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionTransportTypeMonitor");
  v2 = qword_10195EB10;
  qword_10195EB10 = v1;
}

void sub_100C01188(uint64_t a1)
{
  v2 = [*(a1 + 32) userCurrentBookingResponse];
  v3 = [v2 userCurrentBookings];
  v10 = [v3 firstObject];

  v4 = [v10 bookingIdentifier];
  v5 = [*(a1 + 40) reservationSuccessViewController];
  v6 = [v5 userBooking];
  v7 = [v6 bookingIdentifier];
  v8 = [v4 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) setContentLikelyChanged:1];
    v9 = [*(a1 + 40) reservationSuccessViewController];
    [v9 setUserBooking:v10];
  }
}

void sub_100C0143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C01468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained flowViewController];
  v2 = [v1 cardPresentationController];
  [v2 dismiss:1];
}

void sub_100C014D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openAppWithActivity:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  v5 = [v7 flowViewController];
  v6 = [v5 cardPresentationController];
  [v6 dismiss:1];
}

void sub_100C01E18(uint64_t a1)
{
  v2 = [*(a1 + 32) errorController];
  v3 = [*(a1 + 40) bookReservationResponse];
  v8 = [v2 alertControllerForBookReservationResponse:v3 error:*(a1 + 48)];

  v4 = [*(a1 + 32) analyticsBookingSession];
  v5 = [v8 message];
  [v4 addErrorMessage:v5];

  v6 = [*(a1 + 32) analyticsBookingSession];
  [v6 setCurrentState:5];

  v7 = [*(a1 + 32) flowViewController];
  [v7 presentViewController:v8 animated:1 completion:0];

  [*(a1 + 32) updateReservationTableViewController];
}

void sub_100C01FD0(uint64_t a1)
{
  [*(a1 + 32) updateReservationTableViewController];
  v2 = [*(a1 + 40) bookReservationResponse];
  if (+[RestaurantReservationErrorController shouldDisplayAlertForResponseWithBookReservationIntentCode:](RestaurantReservationErrorController, "shouldDisplayAlertForResponseWithBookReservationIntentCode:", [v2 code]))
  {
    v3 = [*(a1 + 32) reservationTableViewController];
    v4 = [v3 contactRequirementsSatisfiable];

    if (v4)
    {
      v5 = [*(a1 + 32) errorController];
      v6 = [*(a1 + 40) bookReservationResponse];
      v2 = [v5 alertControllerForBookReservationResponse:v6 error:0];

      v7 = [*(a1 + 32) analyticsBookingSession];
      v8 = [v2 message];
      [v7 addErrorMessage:v8];

      v9 = [*(a1 + 32) analyticsBookingSession];
      [v9 setCurrentState:5];

      v10 = [*(a1 + 32) flowViewController];
      [v10 presentViewController:v2 animated:1 completion:0];

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = [*(a1 + 40) bookReservationResponse];
  if (v11)
  {
    v2 = v11;
    v12 = [*(a1 + 40) bookReservationResponse];
    v13 = [v12 code];

    if (!v13)
    {
      v14 = [*(a1 + 40) bookReservationResponse];
      v15 = [v14 userBooking];
      v16 = [v15 partySize];
      v17 = [*(a1 + 32) analyticsBookingSession];
      [v17 setTableSize:v16];

      v18 = [*(a1 + 40) bookReservationResponse];
      v19 = [v18 userBooking];
      v20 = [v19 guestProvidedSpecialRequestText];
      v21 = [v20 length] != 0;
      v22 = [*(a1 + 32) analyticsBookingSession];
      [v22 setAddedSpecialRequest:v21];

      v23 = [*(a1 + 32) activeReservation];
      v2 = [v23 bookingDate];

      [v2 timeIntervalSinceReferenceDate];
      v25 = 3600 * (v24 / 3600);
      v26 = [*(a1 + 32) analyticsBookingSession];
      [v26 setBlurredBookingTimestamp:v25];

      v27 = +[NSDate date];
      [v27 timeIntervalSinceReferenceDate];
      v29 = 3600 * (v28 / 3600);
      v30 = [*(a1 + 32) analyticsBookingSession];
      [v30 setBlurredReservationTimestamp:v29];

      v31 = [*(a1 + 32) analyticsBookingSession];
      [v31 setCurrentState:1];

      [*(a1 + 32) pushSuccessScreen];
      goto LABEL_8;
    }
  }

LABEL_9:
  v39 = [*(a1 + 40) bookReservationResponse];
  v32 = [v39 code];
  if (v32 != 4)
  {
    v2 = [*(a1 + 40) bookReservationResponse];
    if ([v2 code] != 3)
    {
LABEL_15:

      return;
    }
  }

  v33 = [*(a1 + 32) reservationTableViewController];
  v34 = [v33 contactRequirementsSatisfiable];

  if (v32 != 4)
  {
  }

  if ((v34 & 1) == 0)
  {
    v35 = [*(a1 + 32) analyticsBookingSession];
    [v35 addErrorMessage:@"contact requirements were not satisfiable"];

    v36 = *(a1 + 32);
    v37 = [*(a1 + 40) bookReservationResponse];
    v38 = [v37 userActivity];
    [v36 openAppWithActivity:v38];

    v39 = [*(a1 + 32) flowViewController];
    v2 = [v39 cardPresentationController];
    [v2 dismiss:1];
    goto LABEL_15;
  }
}

void sub_100C024C8(uint64_t a1)
{
  v2 = [*(a1 + 32) errorController];
  v3 = [*(a1 + 40) availableBookingsResponse];
  v8 = [v2 alertControllerForAvailableBookingsResponse:v3 error:*(a1 + 48)];

  v4 = [*(a1 + 32) analyticsBookingSession];
  v5 = [v8 message];
  [v4 addErrorMessage:v5];

  v6 = [*(a1 + 32) analyticsBookingSession];
  [v6 setCurrentState:5];

  v7 = [*(a1 + 32) flowViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

void sub_100C02904(uint64_t a1)
{
  v2 = [*(a1 + 32) errorController];
  v3 = [*(a1 + 40) availableBookingsResponse];
  v8 = [v2 alertControllerForAvailableBookingsResponse:v3 error:*(a1 + 48)];

  v4 = [*(a1 + 32) analyticsBookingSession];
  v5 = [v8 message];
  [v4 addErrorMessage:v5];

  v6 = [*(a1 + 32) analyticsBookingSession];
  [v6 setCurrentState:5];

  v7 = [*(a1 + 32) flowViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

void sub_100C02B70(uint64_t a1)
{
  v2 = [*(a1 + 32) errorController];
  v3 = [*(a1 + 40) availableBookingsResponse];
  v8 = [v2 alertControllerForAvailableBookingsResponse:v3 error:*(a1 + 48)];

  v4 = [*(a1 + 32) analyticsBookingSession];
  v5 = [v8 message];
  [v4 addErrorMessage:v5];

  v6 = [*(a1 + 32) analyticsBookingSession];
  [v6 setCurrentState:5];

  v7 = [*(a1 + 32) flowViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

id sub_100C02CF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 defaultDate];
  [v2 requestAvailableBookingsWithDate:v3 partySize:{objc_msgSend(*(a1 + 32), "defaultPartySize")}];

  v4 = *(a1 + 32);

  return [v4 configureHeaderForBranding:1];
}

void sub_100C0321C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v11 = v4;
  if (v4)
  {
    v6 = [v5 analyticsBookingSession];
    v7 = [v11 description];
    [v6 addErrorMessage:v7];

    v8 = [*(a1 + 32) reservationRequester];
    v9 = [v8 extension];
    v10 = [v9 _containingAppIdentifer];
    NSLog(@"There was an error opening application with bundle identifier '%@' for handling a user activity: %@", v10, v11);
  }

  else
  {
    [v5[1] registerAppTracker:?];
  }
}

void sub_100C03FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSOperationQueue mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C040B0;
  v6[3] = &unk_101661A90;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 addOperationWithBlock:v6];
}

void sub_100C040B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) flowViewController];
  v2 = [v3 headerView];
  [v2 setBannerImage:v1];
}

void sub_100C05820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C05844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained dataSource];

    if (v2)
    {
      v3 = [v4 dataSource];
      [v3 didTapTryAgainOnErrorView];
    }

    else
    {
      v3 = [v4 apiController];
      [v3 fetchAllCollectionsViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10164D9A0];
    }

    WeakRetained = v4;
  }
}

void sub_100C05A0C(uint64_t a1)
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

      v12 = [v13 loadingView];
      [v12 setAccessibilityIdentifier:@"AllCollectionsLoadingView"];

      v2 = [v13 loadingView];
      [v13 activateConstraintsForViewPinnedBelowHeader:v2];
    }

    WeakRetained = v13;
  }

LABEL_6:
}

id sub_100C060C8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sections];
  v5 = [v4 objectAtIndex:a2];

  v6 = [v5 layoutForSectionUsingTraitsEnvironment:*(a1 + 32) usingWidth:*(a1 + 40)];

  return v6;
}

void sub_100C065C8(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

id sub_100C06BDC()
{
  if (qword_10195EB28 != -1)
  {
    dispatch_once(&qword_10195EB28, &stru_10164D9E0);
  }

  v1 = qword_10195EB20;

  return v1;
}

void sub_100C06C30(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AllCollectionsViewController");
  v2 = qword_10195EB20;
  qword_10195EB20 = v1;
}

void sub_100C06FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained onTransitionFromState:a2 toState:a3];
  }
}

id sub_100C07318()
{
  if (qword_10195EB38 != -1)
  {
    dispatch_once(&qword_10195EB38, &stru_10164DA80);
  }

  v1 = qword_10195EB30;

  return v1;
}

void sub_100C0736C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningSessionRouteLoadedNotifier");
  v2 = qword_10195EB30;
  qword_10195EB30 = v1;
}

BOOL sub_100C07F6C(id a1, MapsSession *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_100C08610(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100C0865C(id a1, NSError *a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = sub_100C07318();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Hinting refresh for Resume Route", v6, 2u);
    }

    v5 = MapsSuggestionsEngineForMapsProcess();
    [v5 hintRefreshOfType:11];
  }
}

void sub_100C08B4C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setText:*(a1 + 40)];
  v2 = [UIFont _maps_boldSystemFontWithFixedSize:18.0];
  [*(*(a1 + 32) + 16) setFont:v2];
}

void sub_100C08BC4(uint64_t a1)
{
  v4 = [*(a1 + 40) length];
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 40);
  }

  else
  {
    v8 = [*(a1 + 48) timeZone];
    v7 = [v8 abbreviation];
    v1 = v7;
    if (v7)
    {
      v5 = 0;
      v6 = v7;
    }

    else
    {
      v2 = [qword_10195EB40 timeZone];
      v6 = [v2 abbreviation];
      v5 = 1;
    }
  }

  [*(*(a1 + 32) + 24) setText:v6];
  if (v5)
  {
  }

  if (!v4)
  {
  }
}

void sub_100C08CC0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EB40;
  qword_10195EB40 = v1;
}

void sub_100C08FA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 _minutesText];
    [*(*(a1 + 32) + 16) setText:v3];
  }

  v4 = [UIFont _maps_systemFontWithFixedSize:24.0];
  [*(*(a1 + 32) + 16) setFont:v4];
}

void sub_100C09050(uint64_t a1)
{
  v3 = +[NSBundle mainBundle];
  v2 = [v3 localizedStringForKey:@"[ridesharing] eta balloon min" value:@"localized string not found" table:0];
  [*(*(a1 + 32) + 24) setText:v2];
}

void sub_100C090DC(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setText:&stru_1016631F0];
  v2 = [UIFont _maps_boldSystemFontWithFixedSize:24.0];
  [*(*(a1 + 32) + 16) setFont:v2];
}

void sub_100C09178(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setText:&stru_1016631F0];
  v2 = [UIFont _maps_boldSystemFontWithFixedSize:24.0];
  [*(*(a1 + 32) + 16) setFont:v2];
}

void sub_100C0A490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 updateRequestRidePaymentMethod:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_100C0A858(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = objc_opt_new();
  v16 = v3;
  objc_initWeak(&location, v3);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(a1 + 32) rideOption];
  obj = [v4 passengerChoices];

  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 formattedPriceRange];
        v10 = [v8 title];
        v11 = [NSString stringWithFormat:@"%@ %@", v9, v10];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100C0ABEC;
        v21[3] = &unk_1016540D8;
        objc_copyWeak(&v22, &location);
        v21[4] = v8;
        v12 = [UIAlertAction _actionWithTitle:v11 image:0 style:0 handler:v21 shouldDismissHandler:&stru_10164DAC0];
        [v18 addObject:v12];

        objc_destroyWeak(&v22);
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100C0AC78;
  v19[3] = &unk_101658AF0;
  objc_copyWeak(&v20, &location);
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v19];
  [v18 addObject:v15];

  [v16 _setActions:v18];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void sub_100C0AB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C0ABEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained didFinishSelectingPartySize];

  if (v2)
  {
    v3 = [WeakRetained didFinishSelectingPartySize];
    v3[2](v3, *(a1 + 32));

    [WeakRetained setDidFinishSelectingPartySize:0];
  }
}

void sub_100C0AC78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained didFinishSelectingPartySize];

  if (v1)
  {
    v2 = [WeakRetained didFinishSelectingPartySize];
    v2[2](v2, 0);

    [WeakRetained setDidFinishSelectingPartySize:0];
  }
}

id sub_100C0B3F8()
{
  if (qword_10195EB68 != -1)
  {
    dispatch_once(&qword_10195EB68, &stru_10164DB50);
  }

  v1 = qword_10195EB60;

  return v1;
}

void sub_100C0B44C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarSmallWidgetRouteGeniusModeController");
  v2 = qword_10195EB60;
  qword_10195EB60 = v1;
}

id sub_100C0B584(uint64_t a1)
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 routeGeniusManager];
  v4 = [*(a1 + 32) chromeViewController];
  [v3 activateIfPossibleForChrome:v4];

  v5 = +[CarRouteGeniusService sharedService];
  [v5 registerObserver:*(a1 + 32)];

  v6 = *(a1 + 32);
  v7 = +[CarRouteGeniusService sharedService];
  v8 = [v7 suggestion];
  [v6 setCurrentSuggestion:v8];

  v9 = *(a1 + 32);

  return [v9 _updateRouteGeniusCardContents];
}

void sub_100C0BF30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 imageView];
  [v4 setImage:v3];
}

void sub_100C0BF90(id a1)
{
  v5[0] = NSFontAttributeName;
  v1 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 variant:256];
  v6[0] = v1;
  v5[1] = NSForegroundColorAttributeName;
  v2 = +[UIColor secondaryLabelColor];
  v5[2] = MKServerFormattedStringArtworkLimitToLineHeightAttributeKey;
  v6[1] = v2;
  v6[2] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = qword_10195EB50;
  qword_10195EB50 = v3;
}

void sub_100C0D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100C0DA20(uint64_t a1, void *a2, void *a3)
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

id sub_100C0DFBC()
{
  if (qword_10195EB78 != -1)
  {
    dispatch_once(&qword_10195EB78, &stru_10164DB70);
  }

  v1 = qword_10195EB70;

  return v1;
}

void sub_100C0E010(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRadarAttachment");
  v2 = qword_10195EB70;
  qword_10195EB70 = v1;
}

BOOL sub_100C12894(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  if ([v3 contentType] == 1)
  {
    v4 = [v3 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ([v3 handlerType] == 4)
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

uint64_t sub_100C129BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allPlacesCollection];

  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    if ([v3 contentType] == 1)
    {
      LODWORD(v5) = [v3 isEmpty] ^ 1;
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if ([v3 handlerType] == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }
  }

  return v5;
}

void sub_100C12C80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BDA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MCM] deleteCollections done error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100C12F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BDA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MCM] deleteCollection done error %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C13058;
  v7[3] = &unk_101661090;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

uint64_t sub_100C13058(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100C13224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BDA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MCM] saveCollection done error %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C13354;
  v7[3] = &unk_101661090;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

uint64_t sub_100C13354(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100C13520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BDA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MCM] createCollection done error %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C13650;
  v7[3] = &unk_101661090;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

uint64_t sub_100C13650(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100C13798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100C137BC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C13888;
  block[3] = &unk_10165DEA0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_100C13888(uint64_t a1)
{
  v2 = sub_10000BDA4();
  v3 = os_signpost_id_generate(v2);

  v4 = sub_10000BDA4();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchCollectionsChangesComparison", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[8] & 1) == 0)
    {
      *(WeakRetained + 64) = 1;
      *(WeakRetained + 32) = 1;
    }

    objc_storeStrong(WeakRetained + 13, *(a1 + 32));
    [v7 _updateContent];
    v8 = sub_10000BDA4();
    v9 = v8;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11[0] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "FetchCollectionsChangesComparison", "", v11, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

void sub_100C14204(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_10195EBA0;
  qword_10195EBA0 = v1;
}

void sub_100C14710(id a1)
{
  v7 = +[GEOAPSharedStateData sharedData];
  v1 = MapsSuggestionsResourceDepotForMapsProcess();
  v2 = [v1 oneInsights];
  [v2 isTouristHere];
  v4 = v3;
  MapsSuggestionsConfidenceDontKnow();
  v6 = v4 > v5;

  [v7 setMapViewLocationIsTourist:v6];
}

void sub_100C1484C(uint64_t a1)
{
  +[GEOAPSharedStateData sharedData];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C148F0;
  v4 = v3[3] = &unk_10164DC48;
  v5 = *(a1 + 32);
  v2 = v4;
  [v2 performMapViewStateUpdate:v3];
}

void sub_100C14ACC(uint64_t a1)
{
  +[GEOAPSharedStateData sharedData];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C14BB4;
  v4 = v3[3] = &unk_10164DBF8;
  v9 = *(a1 + 72);
  v5 = *(a1 + 32);
  v7 = *(a1 + 48);
  v10 = *(a1 + 76);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  v2 = v4;
  [v2 performMapViewStateUpdate:v3];
}

void sub_100C14BB4(uint64_t a1)
{
  [*(a1 + 32) setMapViewMapType:*(a1 + 80)];
  [*(a1 + 32) setMapViewMapRegion:*(a1 + 40)];
  [*(a1 + 32) setMapViewZoomLevel:*(a1 + 56)];
  [*(a1 + 32) setMapViewStyleZoomLevel:*(a1 + 64)];
  if (*(a1 + 84) == 1)
  {
    [*(a1 + 32) setMapViewLocationPuckInViewport:*(a1 + 85)];
  }

  [*(a1 + 32) setMapViewPitch:*(a1 + 72)];
  v2 = [*(a1 + 48) _mapLayer];
  [*(a1 + 32) setMapViewIsAdvancedMap:{objc_msgSend(v2, "isShowingCuratedElevatedGround")}];

  v3 = [*(a1 + 48) _mapLayer];
  [*(a1 + 32) setMapViewIsGlobeProjection:{objc_msgSend(v3, "enableGlobe")}];
}

void sub_100C15820(uint64_t a1, void *a2)
{
  v15 = a2;
  if ([v15 type] == 10)
  {
    v3 = [*(a1 + 32) route];
    v4 = [v3 legs];
    v5 = [v4 objectAtIndexedSubscript:*(a1 + 40)];

    v6 = [v15 token];
    LODWORD(v4) = [v6 isEqualToString:@"{Name}"];

    if (v4)
    {
      v7 = [v5 destination];
      v8 = [v7 navDisplayNameWithSpecialContacts:0];
    }

    else
    {
      v9 = [v15 token];
      v10 = [v9 isEqualToString:@"{Address}"];

      if (v10)
      {
        v7 = [v5 destination];
        v8 = [v7 navDisplayAddress];
      }

      else
      {
        v11 = [v15 token];
        v12 = [v11 isEqualToString:@"{Road}"];

        if (!v12)
        {
LABEL_9:

          goto LABEL_10;
        }

        v7 = [*(a1 + 32) step];
        v8 = [v7 maneuverRoadOrExitName];
      }
    }

    v13 = v8;
    v14 = [v15 stringFormat];
    [v14 setOverrideValue:v13];

    goto LABEL_9;
  }

LABEL_10:
}

id sub_100C164FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contentsForContext:{objc_msgSend(*(a1 + 40), "context")}];
  v5 = v4;
  if (*(a1 + 48) == 1)
  {
    v6 = [v4 instruction];
  }

  else
  {
    if (v3)
    {
      [v3 doubleValue];
    }

    else
    {
      v7 = -1.0;
    }

    v6 = [v5 stringForDistance:v7];
  }

  v8 = v6;

  return v8;
}

uint64_t sub_100C165A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C165DC(id a1)
{
  v1 = [NSAttributedString alloc];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Directions] road descriptions separator" value:@"localized string not found" table:0];
  v8 = NSForegroundColorAttributeName;
  v4 = +[UIColor whiteColor];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v1 initWithString:v3 attributes:v5];
  v7 = qword_10195EBB8;
  qword_10195EBB8 = v6;
}

BOOL sub_100C168BC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSLocale currentLocale];
  [v5 _navigation_distanceUsesMetricSystem];

  v6 = +[NSLocale currentLocale];
  [v6 _navigation_useYardsForShortDistances];

  [v4 doubleValue];
  v11 = MNInstructionsCalculateDistanceUnits();
  v12 = v7;
  [v3 doubleValue];

  return v11 == MNInstructionsCalculateDistanceUnits() && v12 == v8;
}

void sub_100C17A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C17AB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 6);
    [v3 requestsCollectionHeaderSortActionForView:v4 forSortType:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_100C182F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100C18320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _createMenuForSortButton];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100C19424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C19448(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      [WeakRetained setIncidentLayout:v8];
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = [v4[3] layoutItems];
        (*(v5 + 16))(v5, v6);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, &__NSArray0__struct);
      }
    }
  }
}

void sub_100C19D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C19D3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = sub_100799D40();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 description];
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      v12 = [v5 count];
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Error fetching categories: %@, categories.count=%lu", &v9, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setSearchCategories:v5];
  }
}

void sub_100C1AAD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownVirtualGarage];
}

void sub_100C1AC84(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"VirtualGarageAvailableNotification" object:0];
}

id sub_100C1AE80(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 48) = v2;
  v3 = sub_100798A3C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 32);
      if (v5 > 4)
      {
        v6 = @"unknown";
      }

      else
      {
        v6 = off_10164F5A8[v5];
      }

      v9 = v6;
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Resuming '%@' state", &v12, 0xCu);
    }

    return [*(a1 + 32) resume];
  }

  else
  {
    if (v4)
    {
      v7 = *(*(a1 + 32) + 32);
      if (v7 > 4)
      {
        v8 = @"unknown";
      }

      else
      {
        v8 = off_10164F5A8[v7];
      }

      v11 = v8;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Pausing '%@' state", &v12, 0xCu);
    }

    return [*(a1 + 32) pause];
  }
}

void sub_100C1B1E8(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  [*(a1 + 32) stop];
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    if (v3 > 4)
    {
      v4 = @"unknown";
    }

    else
    {
      v4 = off_10164F5A8[v3];
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stopped '%@'", &v6, 0xCu);
  }
}

id sub_100C1B414(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 1;
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    if (v3 > 4)
    {
      v4 = @"unknown";
    }

    else
    {
      v4 = off_10164F5A8[v3];
    }

    v5 = v4;
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Starting '%@'", &v7, 0xCu);
  }

  return [*(a1 + 32) start];
}

uint64_t sub_100C1B790(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32) || (v9 = *(a1 + 40)) == 0)
  {
    [v6 setLastError:?];
    v8 = 3;
  }

  else
  {
    v10 = [v5 traits];
    [v10 setDeviceLocation:v9];

    v8 = 2;
  }

  return v8;
}

void sub_100C1B93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C1B960(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C1BA50;
    block[3] = &unk_101661480;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void sub_100C1BA50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLocation:*(a1 + 32) error:*(a1 + 40)];
}

uint64_t sub_100C1BCE0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 setWaypoints:v5];
  [v6 setLastError:*(a1 + 40)];

  if (*(a1 + 40))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

NSString *__cdecl sub_100C1BD44(id a1, NanoDirectionWaypoint *a2, unint64_t a3)
{
  v3 = [(NanoDirectionWaypoint *)a2 composedWaypoint];
  if (v3)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;

  return &v4->isa;
}

void sub_100C1C0AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 composedWaypoint];
  if (v6 && (v7 = v6, [v5 composedWaypoint], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "needsAdditionalNavData"), v8, v7, (v9 & 1) == 0))
  {
    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Skipping waypoint %lu", buf, 0xCu);
    }
  }

  else
  {
    v10 = sub_100798A3C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Refining waypoint %lu", buf, 0xCu);
    }

    dispatch_group_enter(*(a1 + 32));
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) auditToken];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100C1C4BC;
    v14[3] = &unk_10164DF30;
    v17 = a3;
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    [v5 refineWithTraits:v11 auditToken:v12 completionHandler:v14];

    v13 = v15;
  }
}

void sub_100C1C294(uint64_t a1)
{
  objc_copyWeak(&v14, (a1 + 48));
  v2 = objc_loadWeakRetained(&v14);
  v3 = v2 == 0;

  if (!v3)
  {
    v4 = [*(a1 + 32) allValues];
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
    }

    else if ([v4 count] < 2)
    {
      v5 = 0;
    }

    else
    {
      v15[0] = NSUnderlyingErrorKey;
      v6 = [v4 firstObject];
      v15[1] = NSMultipleUnderlyingErrorsKey;
      v16[0] = v6;
      v16[1] = v4;
      v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      v9 = v8 == 0;

      v10 = v7;
      if (v9)
      {
        v11 = sub_100C75518(4);
        v10 = v7;
        if (v11)
        {
          v12 = [[NSMutableDictionary alloc] initWithDictionary:v7];
          [v12 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];
          v10 = [v12 copy];
        }
      }

      v5 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:4 userInfo:v10];
    }

    v13 = objc_loadWeakRetained(&v14);
    [v13 _handleCompletionWithWaypoints:*(a1 + 40) error:v5];
  }

  objc_destroyWeak(&v14);
}

void sub_100C1C4BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100798A3C();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v13 = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error refining waypoint %lu: %@", &v13, 0x16u);
    }

    v10 = *(a1 + 32);
    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v10 setObject:v6 forKeyedSubscript:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    v12 = [v5 name];
    v13 = 134218243;
    v14 = v11;
    v15 = 2113;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Refined waypoint %lu (%{private}@)", &v13, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100C1CAA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) directionsRequest];
  [v4 setDirectionsRequest:v5];

  v6 = [*(a1 + 32) directionsResponse];
  [v4 setDirectionsResponse:v6];

  v7 = [*(a1 + 32) traceRecordingData];
  [v4 setTraceRecordingData:v7];

  if (*(a1 + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
  }

  [v4 setRoutes:v8];
  [v4 setExpectedNumberOfRoutes:{objc_msgSend(*(a1 + 48), "count")}];
  [v4 setLastError:*(a1 + 40)];
  if (*(a1 + 40))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

void sub_100C1CEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C1CEE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[8];
    if (*(a1 + 32) == v12)
    {
      WeakRetained[8] = 0;
    }

    v13 = v11[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C1D030;
    block[3] = &unk_10164DFE0;
    objc_copyWeak(&v19, (a1 + 40));
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = *(a1 + 32);
    dispatch_async(v13, block);

    objc_destroyWeak(&v19);
  }
}

void sub_100C1D030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _processIncomingRoutes:*(a1 + 32) error:*(a1 + 40) directionsError:*(a1 + 48) fromTicket:*(a1 + 56)];
}

void sub_100C1E8C4(id a1, int a2, int a3, BOOL a4)
{
  v4 = *&a2;
  if ((a3 - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101216278[a3 - 1] - 1;
    if (v5 > 4)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v7 = dword_101215D8C;
  if (a4)
  {
    v7 = &unk_101215D78;
  }

  v6 = v7[v5];
LABEL_8:
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:v4 onTarget:v6 eventValue:0];
}

void sub_100C2040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100C2065C(uint64_t a1, void *a2, void *a3)
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

void *sub_100C2093C(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C209E0;
  v4[3] = &unk_1016529D0;
  v5 = a1;
  v1 = v5;
  v2 = objc_retainBlock(v4);

  return v2;
}

void sub_100C209E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = sub_100798F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response contained no waypoint or error", &v14, 2u);
    }

    v8 = [NSError errorWithDomain:@"WaypointRequestErrorDomain" code:0 userInfo:0];
    goto LABEL_5;
  }

  v8 = v6;
  if (v5 && v6)
  {
    v11 = sub_100798F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 shortDescription];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Response contained both a waypoint and an error. Waypoint: %@\n\nError: %@", &v14, 0x16u);
    }

    goto LABEL_12;
  }

  if (v5)
  {
LABEL_12:
    v9 = *(a1 + 32);
    v10 = [Result resultWithValue:v5];
    goto LABEL_13;
  }

LABEL_5:
  v9 = *(a1 + 32);
  v10 = [Result resultWithError:v8];
LABEL_13:
  v13 = v10;
  (*(v9 + 16))(v9, v10);
}

void sub_100C21278(uint64_t a1)
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 currentTraits];

  v5 = +[MKMapService sharedService];
  v6 = [v5 ticketForSearchFieldOfflinePlaceholderWithTraits:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C21388;
  v7[3] = &unk_101661B70;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 submitWithHandler:v7 networkActivity:0];
  objc_destroyWeak(&v8);
}

void sub_100C21388(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained setSupportsFullTextSearch:(a3 == 0) & a2];
    [v6 updateCardViewTitle];
    WeakRetained = v6;
  }
}

void sub_100C218AC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:@"UsingOfflineMapsStateChangedNotification" object:0];
}

void sub_100C21980(uint64_t a1)
{
  v2 = [objc_opt_class() _traitsForNavigation:{objc_msgSend(*(a1 + 32), "isNavigating")}];
  v3 = [*(a1 + 32) browseManager];
  [v3 setTraits:v2];

  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) browseManager];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100C21AE8;
  v9 = &unk_10165F290;
  objc_copyWeak(&v10, &location);
  [v4 getCategoriesWithCompletion:&v6];

  [*(a1 + 32) checkFullTextSearchSupport];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:"_offlineSettingDidChange" name:@"UsingOfflineMapsStateChangedNotification" object:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100C21AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C21AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 description];
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching categories: %@, categories.count=%lu", &v11, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateCategories:v5];

    v10 = dispatch_time(0, 2000000000);
    dispatch_after(v10, &_dispatch_main_q, &stru_10164E090);
  }
}

void sub_100C21C1C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PPTTest_CarSearchCategoriesModeController_DidDisplayCategories" object:0];
}

void sub_100C23034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C230A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained buttonStylingDelegate];
    [v2 endNavigation];

    WeakRetained = v3;
  }
}

void sub_100C230FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained buttonStylingDelegate];
    [v2 switchToWalking];

    WeakRetained = v3;
  }
}

void sub_100C23A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C23A44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[56] & 1) == 0)
  {
    WeakRetained[56] = 1;
  }
}

void sub_100C23F98(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C2406C;
  v7[3] = &unk_101651258;
  v8 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a4;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100C2406C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) assetIdentifier];
    v3 = [*(a1 + 48) photoID];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      if (*(a1 + 56))
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 0.4;
      }

      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100C24188;
      v6[3] = &unk_101661A90;
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      [UIView animateWithDuration:v6 animations:v5];
    }
  }
}

id sub_100C2565C(id a1, UGCPhotoAlbumCategory *a2, unint64_t a3)
{
  v3 = a2;
  v4 = objc_alloc_init(MUScrollableSegmentedPickerCategory);
  v5 = [(UGCPhotoAlbumCategory *)v3 albumTitle];

  [v4 setCategoryName:v5];

  return v4;
}

void sub_100C2578C(id a1)
{
  v1 = [[GEOMapItemPhotoOptions alloc] initWithAllowSmaller:1 cropStyle:3 format:0];
  v2 = qword_10195EBD0;
  qword_10195EBD0 = v1;
}

id sub_100C276B8()
{
  if (qword_10195EBE8 != -1)
  {
    dispatch_once(&qword_10195EBE8, &stru_10164E1C8);
  }

  v1 = qword_10195EBE0;

  return v1;
}

void sub_100C2770C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARViewController");
  v2 = qword_10195EBE0;
  qword_10195EBE0 = v1;
}

void sub_100C27AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave((v16 - 48));
  _Unwind_Resume(a1);
}

void sub_100C27B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained start];
}

void sub_100C28308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_100C2834C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100C276B8();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      *buf = 134349314;
      v26 = WeakRetained;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Saving ARKit session recording failed: %@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = *(a1 + 32);
    *buf = 134349314;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Saving ARKit session recording succeeded: %@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "NSError * _Nullable CopyARTraceToCrashReporterDirectory(NSString * _Nonnull __strong)";
      v27 = 2080;
      v28 = "PedestrianARTraceHelpers.m";
      v29 = 1024;
      v30 = 67;
      v31 = 2080;
      v32 = "ARTracePath != nil";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v5 = 0;
      goto LABEL_14;
    }

LABEL_25:

    v5 = 0;
    goto LABEL_26;
  }

  if (!DiagnosticLogSubmissionEnabled())
  {
    goto LABEL_25;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/ARTraces/"];

  if ((v11 & 1) == 0)
  {
    v12 = +[NSFileManager defaultManager];
    v24 = 0;
    v13 = [v12 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/ARTraces/" withIntermediateDirectories:1 attributes:0 error:&v24];
    v5 = v24;

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v14 = [v9 lastPathComponent];
  v15 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/ARTraces/" stringByAppendingPathComponent:v14];

  v16 = +[NSFileManager defaultManager];
  v23 = 0;
  v17 = [v16 copyItemAtPath:v9 toPath:v15 error:&v23];
  v18 = v23;

  v5 = 0;
  if ((v17 & 1) == 0)
  {
    v5 = v18;
  }

LABEL_14:
LABEL_15:

  if (v5)
  {
    v19 = sub_100C276B8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      *buf = 134349314;
      v26 = v20;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}p] Copying ARKit session recording to crash reporter directory failed: %@", buf, 0x16u);
    }
  }

LABEL_26:
}

void sub_100C28D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained shouldUpdateCameraFocusLensPosition];
    v2 = v9;
    if (v3)
    {
      v4 = +[NSUserDefaults standardUserDefaults];
      [v4 floatForKey:@"PedestrianARAutoFocusDistanceKey"];
      v6 = v5;

      v7 = [v9 session];
      LODWORD(v8) = v6;
      [v7 updateCameraFocusLensPosition:v8];

      [v9 setShouldUpdateCameraFocusLensPosition:0];
      v2 = v9;
    }
  }
}

void sub_100C28F54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained session];

    if (v3)
    {
      [v2 setArkitSessionStartTimestamp:0];
      [v2 start];
    }

    else
    {
      v4 = sub_100C276B8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 134349056;
        v6 = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] We aren't the ARKit session owners anymore; will not kick off re-localization", &v5, 0xCu);
      }
    }
  }
}

void sub_100C2918C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v4 = [WeakRetained activity];
    os_activity_scope_enter(v4, &state);

    [v3 setState:3];
    v5 = [v3 chromeViewController];
    v6 = +[GEOPlatform sharedPlatform];
    v7 = [v6 isInternalInstall];

    if (v7)
    {
      v8 = dispatch_time(0, 500000000);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100C292EC;
      v9[3] = &unk_101661A90;
      v10 = *(a1 + 32);
      v11 = v5;
      dispatch_after(v8, &_dispatch_main_q, v9);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_100C292EC(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%@", *(a1 + 32)];
  v4 = [UIAlertController alertControllerWithTitle:@"ARSession failure [Internal only]" message:v2 preferredStyle:1];

  v3 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v4 addAction:v3];

  [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
}

void sub_100C29D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C29DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    LODWORD(buf) = 134349056;
    *(&buf + 4) = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Temporarily enabling VL trace recording", &buf, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:1 forKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = sub_100C29FBC;
  v13 = sub_100C29FCC;
  v14 = 0;
  v9 = *(a1 + 32);
  v7 = _GEOConfigAddBlockListenerForKey();
  v8 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v7;

  GEOConfigSetBOOL();
  _Block_object_dispose(&buf, 8);
}

void sub_100C29F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100C29FBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100C29FD4(uint64_t a1)
{
  GEOConfigRemoveBlockListener();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100C2A254(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activity];
    os_activity_scope_enter(v6, &v8);

    v7 = sub_100C276B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Failure view timeout fired; closing pedestrian AR", buf, 0xCu);
    }

    [v5 stop];
    os_activity_scope_leave(&v8);
  }
}

void sub_100C2A710(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activity];
    os_activity_scope_enter(v6, &v8);

    v7 = sub_100C276B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Active feature timer fired", buf, 0xCu);
    }

    [v5 setActiveFeatureTimer:0];
    [v5 setState:2];
    os_activity_scope_leave(&v8);
  }
}

void sub_100C2AD44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activity];
    os_activity_scope_enter(v6, &v8);

    v7 = sub_100C276B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Reroute completion timer fired", buf, 0xCu);
    }

    [v5 setRerouteCompletionTimer:0];
    [v5 waitForActiveFeatureIfNecessary];
    os_activity_scope_leave(&v8);
  }
}

void sub_100C2B934(uint64_t a1)
{
  v1 = [*(a1 + 32) arrowGuidanceView];
  [v1 setAlpha:1.0];
}

void sub_100C2B97C(uint64_t a1, int a2)
{
  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained arrowGuidanceView];
    v7 = v6;
    v8 = @"NO";
    v10 = 134349570;
    v11 = WeakRetained;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Arrow guidance view (%p) showing finished (%@)", &v10, 0x20u);
  }
}

void sub_100C2C0D4(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionContainerView];
  [v1 setAlpha:1.0];
}

void sub_100C2C11C(uint64_t a1, int a2)
{
  v4 = sub_100C276B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained instructionContainerView];
    v7 = v6;
    v8 = @"NO";
    v10 = 134349570;
    v11 = WeakRetained;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Instruction view (%p) showing finished (%@)", &v10, 0x20u);
  }
}

void sub_100C2DAE8(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained localizingView];
    [v4 removeFromSuperview];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setLocalizingView:0];
  }
}

void sub_100C2DB6C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained localizingView];
    [v4 removeFromSuperview];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setLocalizingView:0];
  }
}

void sub_100C2E45C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100C2E480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraintsForLandscape:*(a1 + 40)];
}

void sub_100C2E4D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraintsForLandscape:*(a1 + 40)];
}

void sub_100C302D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100C302F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearTableIfNeeded];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 didMoveToParentViewController:0];
}

void sub_100C30948(uint64_t a1)
{
  v3 = [*(a1 + 32) navigationController];
  v1 = [v3 view];
  v2 = [v1 superview];
  [v2 layoutIfNeeded];
}

id sub_100C31094(uint64_t a1)
{
  [*(a1 + 32) _updateCompactVerticalLayout];
  v2 = [*(a1 + 32) tableViewController];
  v3 = [v2 view];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);

  return [v4 _updatePreferredContentSize];
}

void sub_100C3191C(uint64_t a1)
{
  [*(a1 + 32) _coordinate];
  if (!CLLocationCoordinate2DIsValid(v10))
  {
    (*(*(a1 + 40) + 16))();
  }

  v2 = objc_alloc_init(PHFetchOptions);
  v3 = +[NSDate now];
  v4 = [NSPredicate predicateWithFormat:@"creationDate <= %@", v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:GEOConfigGetUInteger()];
  v5 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v2 setSortDescriptors:v6];

  v7 = *(a1 + 48);
  [*(a1 + 32) _coordinate];
  v8 = [v7 fetchNearbyAssetsForMapItemCoordinate:v2 withOptions:?];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v8 count] != 0);
}

void sub_100C31C74(uint64_t a1)
{
  v2 = sub_1007996E8();
  v3 = os_signpost_id_generate(v2);

  v4 = sub_1007996E8();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "NumberOfPhotosTakenForMapItemProcessing", "", buf, 2u);
  }

  v6 = objc_alloc_init(PHFetchOptions);
  v7 = [NSPredicate predicateWithFormat:@"creationDate >= %@", *(a1 + 32)];
  [v6 setPredicate:v7];

  v8 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
  v16 = v8;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [v6 setSortDescriptors:v9];

  v10 = *(a1 + 56);
  [*(a1 + 40) _coordinate];
  v11 = [v10 fetchNearbyAssetsForMapItemCoordinate:v6 withOptions:?];
  v12 = sub_1007996E8();
  v13 = v12;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v3, "NumberOfPhotosTakenForMapItemProcessing", "", buf, 2u);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, [v11 count]);
  }
}

void sub_100C32C78(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = -1;
  do
  {
    v3 = @"None";
    if (v2 <= 7)
    {
      v3 = off_10164E270[v2];
    }

    v4 = [NSNumber numberWithInteger:++v2];
    v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:v3 value:v4];
  }

  while (v2 != 8);
}

void sub_100C32E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5 && !v6)
  {
    v9 = [v5 selectedVehicle];
    v10 = [v9 evChargingPorts];

    v11 = [v10 count];
    v12 = sub_100E9E6E8();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v15 = 134217984;
        v16 = [v10 count];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MAPS IPC Found EV Ports, count: %ld. ", &v15, 0xCu);
      }

      v12 = +[GEOMapService sharedService];
      v8 = [v12 serializedSearchEvChargingParametersForSiriFromPorts:v10];
    }

    else
    {
      if (v13)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MAPS IPC No EV Ports found", &v15, 2u);
      }

      v8 = 0;
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v8);
  }
}

void sub_100C35A8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100C35AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) mapSelectionManager];
  v3 = [v2 hasSelection];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v4 selectLabelMarkerForSearchResult:v5 animated:v6];
  }
}

void sub_100C35B20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained selectLabelMarkerForSearchResult:*(a1 + 32) animated:*(a1 + 48)];
}

void sub_100C36A3C(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 40))
  {
    v12 = sub_100015F58();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      (*(*(a1 + 40) + 16))(a3, a4, a5, a6);
      goto LABEL_13;
    }

    v13 = *(a1 + 32);
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_11;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_9;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_9:

LABEL_11:
    *buf = 138543618;
    v22 = v18;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Animation completed, Calling completion block. Finished:(%d)", buf, 0x12u);

    goto LABEL_12;
  }

LABEL_13:
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  *(v19 + 16) = 0;
}

uint64_t sub_100C36D84(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = a6.n128_u64[0];
  v7 = a5.n128_u64[0];
  v8 = a4.n128_u64[0];
  v9 = a3.n128_u64[0];
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3, a4, a5, a6);
  }

  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);
    a3.n128_u64[0] = v9;
    a4.n128_u64[0] = v8;
    a5.n128_u64[0] = v7;
    a6.n128_u64[0] = v6;

    return v13(a3, a4, a5, a6);
  }

  return result;
}

void sub_100C370AC(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    v2 = sub_100015F58();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      (*(*(*(a1 + 32) + 72) + 16))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = 0;

      return;
    }

    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_11;
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

        goto LABEL_9;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Calling completion block to drop pins", buf, 0xCu);

    goto LABEL_12;
  }
}

void sub_100C378B4(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v13 = a7;
  if (*(*(a1 + 32) + 52))
  {
    goto LABEL_16;
  }

  v14 = sub_100015F58();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_11;
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

        goto LABEL_9;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_9:

LABEL_11:
    v21 = [[GEOMapRegion alloc] initWithMapRect:{a2, a3, a4, a5}];
    *buf = 138543618;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Framing map region completed, mapRegion: %@", buf, 0x16u);
  }

  *(*(a1 + 32) + 50) = 1;
  v22 = *(a1 + 32);
  if (v13 && !v22[7])
  {
    objc_storeStrong(v22 + 7, a7);
    v22 = *(a1 + 32);
  }

  [v22 proceedWithDroppingPins:1 searchResultsRegion:{a2, a3, a4, a5}];
LABEL_16:
}

void sub_100C38988(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) mapSelectionManager];
  [v4 resumeUpdates];

  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) results];
    v7 = [*(a1 + 40) searchDotPlaces];
    [v5 dropPinsForSearchResults:v6 searchDotPlaces:v7 selectedSearchResult:*(a1 + 48) animate:1 itemSource:*(a1 + 56)];

    v8 = [*(a1 + 32) delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 setNeedsUserActivityUpdate];
    }
  }
}

void sub_100C38A7C(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v12 = [*(a1 + 32) mapSelectionManager];
  [v12 resumeUpdates];

  if (a2)
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) results];
    v15 = [*(a1 + 40) searchDotPlaces];
    [v13 dropPinsForSearchResults:v14 searchDotPlaces:v15 selectedSearchResult:*(a1 + 48) animate:1 itemSource:*(a1 + 56)];

    v16 = [*(a1 + 32) delegate];
    LOBYTE(v14) = objc_opt_respondsToSelector();

    if (v14)
    {
      v21 = [*(a1 + 32) delegate];
      [v21 setNeedsUserActivityUpdate];
    }

    v22 = *(a1 + 64);
    if (v22)
    {
      v23 = *(v22 + 16);
      v17.n128_f64[0] = a3;
      v18.n128_f64[0] = a4;
      v19.n128_f64[0] = a5;
      v20.n128_f64[0] = a6;

      v23(v17, v18, v19, v20);
    }
  }
}

void sub_100C3B16C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(a3) = [v8 isEqualToSearchResult:? forPurpose:?];

  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100C3C1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100C3C6FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setInfo:objc_msgSend(a2 data:{"unsignedIntValue"), v5}];
}

void sub_100C3C838(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setInfo:objc_msgSend(a2 data:{"unsignedIntValue"), v5}];
}

void sub_100C3C974(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setInfo:objc_msgSend(a2 data:{"unsignedIntValue"), v5}];
}

void sub_100C3CAC4(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = v5;
  v8 = v6;
  v9 = v7;
  if (v8 == 2)
  {
    v9 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a1[4] laneInfoList];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [a1[6] accNavigationLaneGuidanceLaneInfoFrom:*(*(&v16 + 1) + 8 * v14)];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  [a1[5] setInfo:v8 data:v9];
}

id sub_100C3CC40()
{
  if (qword_10195EC08 != -1)
  {
    dispatch_once(&qword_10195EC08, &stru_10164E6A8);
  }

  v1 = qword_10195EC00;

  return v1;
}

void sub_100C3CC94(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsSavedRoutesManager");
  v2 = qword_10195EC00;
  qword_10195EC00 = v1;
}

void sub_100C3DC84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100C3CC40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error finding saved route with ID %@ for deletion.", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3DDE0;
  block[3] = &unk_1016605F8;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100C3DF24(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v6 || !v7)
  {
    v8 = a1[5];
    if (v8)
    {
      v8[2](v8, v6);
    }
  }

  [a1[6] _deleteIDFromLocalListWithRoute:{a1[4], v6}];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100C3E240;
  v29[3] = &unk_10164E688;
  v30 = a1[4];
  v9 = sub_1000282CC(v5, v29);
  if (![v9 count])
  {
    v10 = sub_100C3CC40();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      *buf = 138412290;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error finding saved route with ID %@ for deletion.", buf, 0xCu);
    }
  }

  v22 = v5;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = sub_100C3CC40();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 customName];
          *buf = 138477827;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deleting route %{private}@", buf, 0xCu);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v14);
  }

  v20 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C3E284;
  v23[3] = &unk_1016610B8;
  v24 = a1[5];
  [v20 deleteWithObjects:v12 completionHandler:v23];
}

id sub_100C3E240(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100C3E284(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C3E330;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100C3E330(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MapsSavedRoutesDidUpdateNotification" object:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100C3E6C4(uint64_t a1, void *a2)
{
  v3 = a2;
  [MapsSavedRoutesManager _updateUserRoute:v3 withRouteData:*(a1 + 32)];
  v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v13 = v3;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C3E92C;
  v9[3] = &unk_10164E638;
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [v4 saveWithObjects:v5 completionHandler:v9];
}

void sub_100C3E814(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  if (!v6)
  {
    v7 = sub_100C3CC40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) storageID];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Requested to save a route data with existing storage ID %@, but no matching user route was found in the MapsSyncStore. Creating a new entry. Error: %@", &v9, 0x16u);
    }

    v6 = objc_opt_new();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100C3E92C(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3EA10;
  block[3] = &unk_10164E610;
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = *(a1 + 48);
  v3 = v5;
  v10 = v5;
  v4 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100C3EA10(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = [*(a1 + 48) identifier];
    [*(a1 + 40) setStorageID:v2];

    [*(a1 + 64) _saveToLocalListWithRoute:*(a1 + 40)];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"MapsSavedRoutesDidUpdateNotification" object:*(a1 + 40)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100C3EDC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100C3CC40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      *buf = 134217984;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error finding saved route with tour muid %llu.", buf, 0xCu);
    }
  }

  if ([v5 count] >= 2)
  {
    v9 = sub_100C3CC40();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 134217984;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Found more than 1 route with tour muid of %llu. This is unexpected, but returning all of them anyway.", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3EF84;
  block[3] = &unk_1016605F8;
  v15 = v5;
  v11 = *(a1 + 32);
  v16 = v6;
  v17 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100C3EF84(uint64_t a1)
{
  v2 = sub_100021DB0(*(a1 + 32), &stru_10164E5E8);
  (*(*(a1 + 48) + 16))();
}

GEOComposedGeometryRoutePersistentData *__cdecl sub_100C3EFEC(id a1, MSUserRoute *a2, unint64_t a3)
{
  v3 = [MapsSavedRoutesManager routeDataForMapsSyncUserRoute:a2];
  if ([v3 isAvailableForCurrentCountry])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void sub_100C3F264(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v15 = a3;
  if (v15)
  {
    v5 = sub_100C3CC40();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching route library: %{public}@", &buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C3F674;
    block[3] = &unk_101661090;
    v36 = *(a1 + 32);
    v35 = v15;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = sub_100C3F690;
    v41 = sub_100C3F6A0;
    v42 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_100C3F690;
    v32[4] = sub_100C3F6A0;
    v33 = 0;
    v6 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [MapsSavedRoutesManager routeDataForMapsSyncUserRoute:*(*(&v28 + 1) + 8 * i)];
          dispatch_group_enter(v6);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100C3F6A8;
          v23[3] = &unk_10164E4F8;
          v11 = v10;
          v24 = v11;
          p_buf = &buf;
          v27 = v32;
          v25 = v6;
          [v11 updateCountryIfNecessaryWithCompletionHandler:v23];
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v7);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100C3F73C;
    v17[3] = &unk_10164E580;
    v19 = &buf;
    v20 = v32;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = v12;
    v18 = v13;
    dispatch_group_notify(v6, &_dispatch_main_q, v17);

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void sub_100C3F63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100C3F690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C3F6A8(uint64_t a1)
{
  if ([*(a1 + 32) isAvailableForCurrentCountry])
  {
    v3 = a1 + 48;
    v2 = *(a1 + 48);
  }

  else
  {
    v3 = a1 + 56;
    v2 = *(a1 + 56);
  }

  v4 = *(*(v2 + 8) + 40);
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *(*v3 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*v3 + 8) + 40);
  }

  [v4 addObject:*(a1 + 32)];
  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

void sub_100C3F73C(uint64_t a1)
{
  v2 = sub_100021DB0(*(*(*(a1 + 40) + 8) + 40), &stru_10164E538);
  v3 = sub_100C3CC40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(*(a1 + 40) + 8) + 40) count];
    v5 = [v2 componentsJoinedByString:@"\n\t"];
    *buf = 67109379;
    v18 = v4;
    v19 = 2113;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loaded %d routes:\n\t%{private}@", buf, 0x12u);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v6 = sub_100021DB0(*(*(*(a1 + 48) + 8) + 40), &stru_10164E558);
    v7 = sub_100C3CC40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(*(a1 + 48) + 8) + 40) count];
      v9 = [v6 componentsJoinedByString:@"\n\t"];
      *buf = 67109379;
      v18 = v8;
      v19 = 2113;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found %d unavailable routes:\n\t%{private}@", buf, 0x12u);
    }
  }

  v10 = +[NSMutableArray array];
  [v10 addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  [v10 addObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 56) _updateLocalListWithKnownRoutes:v10];
  v11 = +[NSMutableArray array];
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    [v11 addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
    v13 = *(a1 + 64);
  }

  if ((v13 & 2) != 0)
  {
    [v12 addObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3FA18;
  block[3] = &unk_101661430;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

NSString *__cdecl sub_100C3FA44(id a1, GEOComposedGeometryRoutePersistentData *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(GEOComposedGeometryRoutePersistentData *)v3 userProvidedName];
  v5 = [(GEOComposedGeometryRoutePersistentData *)v3 iso3166CountryCode];

  v6 = [NSString stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

NSString *__cdecl sub_100C3FAD8(id a1, GEOComposedGeometryRoutePersistentData *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(GEOComposedGeometryRoutePersistentData *)v3 userProvidedName];
  v5 = [(GEOComposedGeometryRoutePersistentData *)v3 anchorPoints];

  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@, Anchors: %d", v4, [v5 count]);

  return v6;
}

void sub_100C400AC(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_10164E6E8];
  v2 = qword_10195EC10;
  qword_10195EC10 = v1;
}

void sub_100C4010C(id a1, FeatureDiscoveryOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
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

  [(FeatureDiscoveryOutlineCell *)v8 setCellModel:v7];
}

id sub_100C41460(id a1, INCurrencyAmount *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [RideBookingCurrencyAmount alloc];
  v5 = [(INCurrencyAmount *)v3 amount];
  v6 = [(INCurrencyAmount *)v3 currencyCode];

  v7 = [(RideBookingCurrencyAmount *)v4 initWithAmount:v5 currencyCode:v6];

  return v7;
}

RideBookingAction *sub_100C420BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RideBookingAction alloc];
  v5 = [*(a1 + 32) application];
  v6 = [(RideBookingAction *)v4 initWithActivity:v3 application:v5];

  return v6;
}

void sub_100C43018(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EC50;
  qword_10195EC50 = v1;

  [qword_10195EC50 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195EC50 setLocale:v3];
}

void sub_100C434CC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EC40;
  qword_10195EC40 = v1;
}

void sub_100C44898(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EC30;
  qword_10195EC30 = v1;

  [qword_10195EC30 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195EC30 setLocale:v3];
}

void sub_100C456B0(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10195EC20;
  qword_10195EC20 = v1;

  [qword_10195EC20 setAllowedUnits:64];
  v3 = qword_10195EC20;

  [v3 setUnitsStyle:2];
}

void sub_100C460A4(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [AutocompleteMatchInfo matchInfoWithType:1];
  v4 = +[NSDate date];
  v5 = [*(a1 + 32) historyEntry];
  v6 = [v5 usageDate];
  [v4 timeIntervalSinceDate:v6];
  [v3 setAgeInSeconds:v7];

  v8 = [v18 query];
  LODWORD(v5) = [v8 _web_hasCaseInsensitivePrefix:*(a1 + 40)];

  if (v5)
  {
    v9 = [*(*(a1 + 48) + 40) query];
    v10 = [v18 query];
    v11 = [v9 matchesInString:v10];

    [v11 fractionOfMatch];
    [v3 setFractionOfMatch:?];
    v12 = [v11 prefixLastTokenMatchCover];
    [v3 setPrefixLastTokenMatchCover:v12];

    v13 = [v11 prefixMatchCover];
    [v3 setPrefixMatchCover:v13];

    v14 = [v11 prefixMatchPosition];
    [v3 setPrefixMatchPosition:v14];

    [v3 setPrefixMatchesWordBoundary:{objc_msgSend(v11, "prefixMatchesWordBoundary")}];
    v15 = [v11 firstPrefixToken];
    [v3 setFirstPrefixToken:v15];

    v16 = [v11 secondPrefixToken];
    [v3 setSecondPrefixToken:v16];

    [*(*(a1 + 48) + 40) setMatchInfo:v3 forObject:*(a1 + 32)];
    v17 = [[AutocompleteItem alloc] initWithLocalCompletion:*(a1 + 32) sourceType:7 sourceSubtype:12 matchInfo:v3];
    [*(a1 + 56) addObject:v17];
  }
}

void sub_100C462E4(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v4 = [MKMapItem _itemWithGeoMapItem:v3];

  v5 = [[SearchResult alloc] initWithMapItem:v4];
  v6 = *(a1 + 32);
  v7 = [(SearchResult *)v5 mapItem];
  v8 = [v6 shortAddressForMapItem:v7];

  v9 = [*(*(a1 + 32) + 40) query];
  v10 = [(SearchResult *)v5 mapItem];
  v11 = [v10 _geoMapItem];
  v12 = [v11 _alternateSearchableNames];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count] + 1);

  v14 = [(SearchResult *)v5 mapItem];
  v15 = [v14 name];
  [v13 addObject:v15];

  v16 = [(SearchResult *)v5 mapItem];
  v17 = [v16 _geoMapItem];
  v18 = [v17 _alternateSearchableNames];
  [v13 addObjectsFromArray:v18];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v9 matchesInString:*(*(&v41 + 1) + 8 * i)];
        if (v24)
        {
          v25 = v24;
          v26 = *(a1 + 32);
          v27 = [(SearchResult *)v5 mapItem];
          [v27 name];
          v28 = v40 = v4;
          [v26 _removeCompletionItemForStringKey:v28 query:*(a1 + 40) fromCompletions:*(a1 + 48)];

          [*(a1 + 32) _removeCompletionItemForStringKey:v8 query:*(a1 + 40) fromCompletions:*(a1 + 48)];
          v29 = [AutocompleteMatchInfo matchInfoWithType:1];
          v30 = +[NSDate date];
          v31 = [*(a1 + 56) historyEntry];
          v32 = [v31 usageDate];
          [v30 timeIntervalSinceDate:v32];
          [v29 setAgeInSeconds:v33];

          v4 = v40;
          [v25 fractionOfMatch];
          [v29 setFractionOfMatch:?];
          v34 = [v25 prefixLastTokenMatchCover];
          [v29 setPrefixLastTokenMatchCover:v34];

          v35 = [v25 prefixMatchCover];
          [v29 setPrefixMatchCover:v35];

          v36 = [v25 prefixMatchPosition];
          [v29 setPrefixMatchPosition:v36];

          [v29 setPrefixMatchesWordBoundary:{objc_msgSend(v25, "prefixMatchesWordBoundary")}];
          v37 = [v25 firstPrefixToken];
          [v29 setFirstPrefixToken:v37];

          v38 = [v25 secondPrefixToken];
          [v29 setSecondPrefixToken:v38];

          [*(*(a1 + 32) + 40) setMatchInfo:v29 forObject:*(a1 + 56)];
          v39 = [[AutocompleteItem alloc] initWithLocalCompletion:*(a1 + 56) sourceType:7 sourceSubtype:11 matchInfo:v29];
          [*(a1 + 64) addObject:v39];

          goto LABEL_11;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

unint64_t sub_100C46730(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100C467B0(a1);
  v5 = sub_100C467B0(v3);

  if (v5)
  {
    v6 = [v4 caseInsensitiveCompare:v5];
  }

  else
  {
    v6 = v4 == 0;
  }

  return v6;
}

id sub_100C467B0(void *a1)
{
  v1 = [a1 autocompleteObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 title];
    goto LABEL_5;
  }

  if (+[AddressBookManager addressBookAllowed])
  {
    objc_opt_class();
    v5 = v1;
    v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v5 : 0;
    v7 = v6;

    if (v7)
    {
      v8 = [v7 contact];
      v9 = +[CNContactsUserDefaults sharedDefaults];
      v10 = [v9 sortOrder];

      if (v10 == 3)
      {
        v11 = [v8 familyName];
        v3 = v11;
        if (v11 && [v11 length])
        {
          goto LABEL_19;
        }
      }

      v3 = [v8 givenName];
LABEL_19:

      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

void sub_100C47410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C47434(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained imageCreationCanBeCached])
    {
      objc_storeStrong(v7 + 2, a2);
      *(v7 + 24) = a3;
    }

    v8 = v7[4];
    v7[4] = 0;

    if ([*(a1 + 32) imageCreationCanBeCached])
    {
      v9 = v7[5];
      if (v9)
      {
        v10 = objc_retainBlock(v9);
        v11 = v7[5];
        v7[5] = 0;

        v10[2](v10, v12, a3);
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

id sub_100C47980(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"NEAR_AUTOCOMPLETE_ROW" value:@"localized string not found" table:0];

    v4 = [NSString stringWithFormat:v3, v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100C47F3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v8 = [UIImage _systemImageNamed:v2];
  v4 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  v5 = +[UIColor systemBlueColor];
  [(ImageIconWithBackgroundConfiguration *)v4 setBackgroundColor:v5];

  v6 = +[UIColor whiteColor];
  [(ImageIconWithBackgroundConfiguration *)v4 setTintColor:v6];

  [(ImageIconWithBackgroundConfiguration *)v4 setIconSize:25.0, 25.0];
  v7 = [v8 _maps_imageIconWithBackgroundConfiguration:v4];
  v3[2](v3, v7, 0);
}

void *sub_100C481B0(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C48334;
  v4[3] = &unk_10164ECA8;
  v5 = a1;
  v1 = v5;
  v2 = objc_retainBlock(v4);

  return v2;
}

void sub_100C48254(void *a1, void *a2)
{
  v3 = a2;
  v8 = a1;
  [v8 setImageStyle:1];
  v4 = [MapsOfflineUIHelper idealDisplayAspectRatio:v3];

  v5 = 53.0;
  v6 = 40.0;
  if (v4 == 2)
  {
    v6 = 30.0;
  }

  if (v4 != 1)
  {
    v5 = v6;
  }

  [v8 setImageSize:{40.0, v5}];
  v7 = [UIColor _mapkit_colorNamed:@"CartographyBackgroundColor"];
  [v8 setLeadingImageBackgroundColor:v7];

  [v8 setImageShadowStyle:1];
}

id sub_100C48334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MapsOfflineUIHelper idealDisplayAspectRatio:*(a1 + 32)];
  v5 = 40.0;
  if (v4 == 2)
  {
    v5 = 30.0;
  }

  if (v4 == 1)
  {
    v6 = 53.0;
  }

  else
  {
    v6 = v5;
  }

  GEOMapRectForMapRegion();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MKMapSnapshotOptions);
  v16 = [[MKStandardMapConfiguration alloc] initWithElevationStyle:0];
  v17 = +[MKPointOfInterestFilter filterExcludingAllCategories];
  [v16 setPointOfInterestFilter:v17];

  [v15 setPreferredConfiguration:v16];
  [v15 _setShowsRoadShields:0];
  [v15 _setAllowsSimultaneousLightDarkSnapshots:1];
  [v15 setMapRect:{v8, v10, v12, v14}];
  [v15 setSize:{40.0 * 6.0, v6 * 6.0}];
  v18 = [[MKMapSnapshotter alloc] initWithOptions:v15];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100C485B4;
  v25[3] = &unk_10164EC80;
  v19 = v3;
  v26 = v19;
  v27 = 0x4044000000000000;
  v28 = v6;
  [v18 startWithCompletionHandler:v25];
  objc_initWeak(&location, v18);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C48768;
  v22[3] = &unk_101661B98;
  objc_copyWeak(&v23, &location);
  v20 = [v22 copy];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v20;
}

void sub_100C48598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C485B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 image];
    v7 = [v6 imageAsset];

    if (v7)
    {
      v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
      v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
      v10 = [v7 imageWithTraitCollection:v8];
      v11 = [v10 imageByPreparingThumbnailOfSize:{*(a1 + 40), *(a1 + 48)}];

      v12 = [v7 imageWithTraitCollection:v9];
      v13 = [v12 imageByPreparingThumbnailOfSize:{*(a1 + 40), *(a1 + 48)}];

      v14 = objc_alloc_init(UIImageAsset);
      [v14 registerImage:v11 withTraitCollection:v8];
      [v14 registerImage:v13 withTraitCollection:v9];
      v15 = [v14 imageWithTraitCollection:v8];
    }

    else
    {
      v8 = [v16 image];
      v15 = [v8 imageByPreparingThumbnailOfSize:{*(a1 + 40), *(a1 + 48)}];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100C48768(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

id sub_100C491F0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C492DC;
  v11[3] = &unk_10164EBC0;
  v12 = v5;
  v7 = *(v6 + 16);
  v8 = v5;
  v9 = v7(v6, v11, a3);

  return v9;
}

uint64_t sub_100C492C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100C492DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C49514;
    v20[3] = &unk_10164EB98;
    v5 = v3;
    v21 = v5;
    v19 = a1;
    v6 = objc_retainBlock(v20);
    v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
    v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v9 = [UIGraphicsImageRenderer alloc];
    [v5 size];
    v10 = [v9 initWithSize:?];
    v11 = (v6[2])(v6, v7);
    v12 = [v10 imageWithActions:v11];

    v13 = [UIGraphicsImageRenderer alloc];
    [v5 size];
    v14 = [v13 initWithSize:?];
    v15 = (v6[2])(v6, v8);
    v16 = [v14 imageWithActions:v15];

    v17 = objc_alloc_init(UIImageAsset);
    [v17 registerImage:v12 withTraitCollection:v7];
    [v17 registerImage:v16 withTraitCollection:v8];
    v18 = [v17 imageWithTraitCollection:v7];
    (*(*(v19 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void *sub_100C49514(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C495D0;
  v7[3] = &unk_10164EB70;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);

  return v5;
}

void sub_100C495D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 imageAsset];
  v6 = [v5 imageWithTraitCollection:*(a1 + 40)];
  v7 = v6;
  if (!v6)
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  v9 = [v4 CGContext];
  CGContextSaveGState(v9);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeScale(&v22, 1.0, -1.0);
  [*(a1 + 32) size];
  v20 = v22;
  CGAffineTransformTranslate(&transform, &v20, 0.0, -v10);
  v22 = transform;
  CGContextConcatCTM(v9, &transform);
  [*(a1 + 32) size];
  v12 = v11;
  [*(a1 + 32) size];
  v14 = v13;
  v15 = [v8 CGImage];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v12;
  v23.size.height = v14;
  CGContextDrawImage(v9, v23, v15);
  CGContextSetBlendMode(v9, kCGBlendModeSaturation);
  CGContextSetRGBFillColor(v9, 0.0, 0.0, 0.0, 1.0);
  [*(a1 + 32) size];
  v17 = v16;
  [*(a1 + 32) size];
  v19 = v18;

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v17;
  v24.size.height = v19;
  CGContextFillRect(v9, v24);
  CGContextRestoreGState(v9);
}

void sub_100C49E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[30] state];
    v3 = [v4[30] pairedDeviceState];
    [v4 _updateModelWithSubscriptionState:v2 pairedDeviceState:v3];

    [v4 updateObservers];
    WeakRetained = v4;
  }
}

void sub_100C4A874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C4A8E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained cancelDownloadBlock];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 cancelDownloadBlock];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

void sub_100C4A964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained resumeDownloadBlock];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 resumeDownloadBlock];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

void sub_100C4A9E4(id a1)
{
  v1 = objc_alloc_init(NSByteCountFormatter);
  v2 = qword_10195EC78;
  qword_10195EC78 = v1;
}

void sub_100C4AC94(id a1)
{
  v1 = qword_10195EC90;
  qword_10195EC90 = &off_1016ED718;
}

void sub_100C4B124(id a1, double a2, id a3)
{
  v4 = a3;
  v6 = +[UserInformationManager sharedInstance];
  v5 = [v6 userIcon];
  (*(a3 + 2))(v4, v5, 0);
}

void sub_100C4B648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mapItem];

  if (v4)
  {
    v5 = +[MapsUIImageCache sharedCache];
    v6 = [*(a1 + 32) mapItem];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100C4B9D0;
    v23[3] = &unk_10165FEF8;
    v24 = v3;
    [v5 getImageForMapItem:v6 completion:v23];

    v7 = v24;
LABEL_16:

    goto LABEL_17;
  }

  v8 = [*(a1 + 32) reportType];
  if (v8 > 9)
  {
    if (v8 <= 0x15)
    {
      if (((1 << v8) & 0x3D6000) != 0)
      {
        goto LABEL_15;
      }

      if (v8 == 15)
      {
        v15 = *(a1 + 40);
        v16 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
        v17 = [UIImage _systemImageNamed:@"pin.point.of.interest.badge.plus.fill" withConfiguration:v16];
        v18 = [v15 _convertSymbolToIconImage:v17 RAPType:{objc_msgSend(*(a1 + 32), "reportType")}];
        (*(v3 + 2))(v3, v18, 1);

        goto LABEL_17;
      }

      if (v8 == 17)
      {
        v9 = @"signpost.right.fill";
        goto LABEL_13;
      }
    }

    if ((v8 - 10) >= 2)
    {
      if (v8 != 12)
      {
        goto LABEL_17;
      }

      v10 = [UIImage imageNamed:@"Fallback-Guide"];
      (*(v3 + 2))(v3, v10, 1);
LABEL_20:

      goto LABEL_17;
    }

LABEL_15:
    v11 = +[MapsUIImageCache sharedCache];
    v12 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100C4BA8C;
    v19[3] = &unk_10165FEF8;
    v20 = v3;
    [v11 getImageForStyleAttributes:v12 completion:v19];

    v7 = v20;
    goto LABEL_16;
  }

  if (v8 < 8)
  {
    goto LABEL_15;
  }

  if (v8 == 8)
  {
    v13 = +[MapsUIImageCache sharedCache];
    v14 = +[GEOFeatureStyleAttributes recentsDirectionsStyleAttributes];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100C4B9E4;
    v21[3] = &unk_10165FEF8;
    v22 = v3;
    [v13 getImageForStyleAttributes:v14 completion:v21];

    v7 = v22;
    goto LABEL_16;
  }

  if (v8 == 9)
  {
    v9 = @"binoculars.fill";
LABEL_13:
    v10 = [UIImage systemImageNamed:v9];
    (*(v3 + 2))(v3, v10, 0);
    goto LABEL_20;
  }

LABEL_17:
}

void sub_100C4B9E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"recentroute"];
    (*(v2 + 16))(v2, v5, 0);
  }
}

void sub_100C4C06C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = [*(a1 + 32) mapItem];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C4C13C;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForMapItem:v5 completion:v7];
}

void sub_100C4C40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100C4C44C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C4C464(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 query];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 locationDisplayString];

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [UIImage imageNamed:@"search"];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_100C4C510(void *a1, void *a2)
{
  v21 = a2;
  v3 = [v21 geoMapItem];
  v4 = [v3 name];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v21 geoMapItem];
  v8 = [v7 addressObject];

  v9 = [v8 cityDisplayNameWithFallback:0];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (![*(*(a1[5] + 8) + 40) length] || objc_msgSend(*(*(a1[4] + 8) + 40), "length") && objc_msgSend(*(*(a1[5] + 8) + 40), "isEqualToString:", *(*(a1[4] + 8) + 40)))
  {
    v12 = [v8 address];
    v13 = [v12 structuredAddress];
    v14 = [v13 country];
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = [v21 geoMapItem];
  v18 = [MKMapItem _itemWithGeoMapItem:v17];
  v19 = *(a1[6] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void sub_100C4C694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {
    (*(v3 + 2))(v3, v5, 0);
  }

  else if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = +[MapsUIImageCache sharedCache];
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C4C790;
    v8[3] = &unk_10165FEF8;
    v9 = v4;
    [v6 getImageForMapItem:v7 completion:v8];
  }
}

void sub_100C4C9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = [*(a1 + 32) publisherAttribution];
  v6 = [v5 iconIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C4CABC;
  v8[3] = &unk_10165FEF8;
  v9 = v3;
  v7 = v3;
  [v4 getImageForPublisherWithIconIdentifier:v6 completion:v8];
}

void sub_100C4CC7C(id a1, double a2, id a3)
{
  v4 = a3;
  v6 = [UIImage imageNamed:@"RAPLookAround"];
  v5 = [v6 imageWithRenderingMode:2];
  (*(a3 + 2))(v4, v5, 0);
}

void sub_100C4CEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) senderInfo];
  v5 = [v4 hasLocalContactIdentifier];

  if (v5)
  {
    v6 = +[AddressBookManager sharedManager];
    v7 = [*(a1 + 32) senderInfo];
    v8 = [v7 localContactIdentifier];
    v9 = [v6 contactForCNContactIdentifier:v8];

    v10 = +[MapsUIImageCache sharedCache];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100C4D02C;
    v11[3] = &unk_10165FEF8;
    v12 = v3;
    [v10 getImageForContact:v9 completion:v11];
  }

  else
  {
    v9 = [UIImage imageNamed:@"SharedTrip"];
    (*(v3 + 2))(v3, v9, 0);
  }
}

void sub_100C4D02C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"SharedTrip"];
    (*(v2 + 16))(v2, v5, 1);
  }
}

void sub_100C4D278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sharedTrips];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v17 = @"MultiSharedTrip";
LABEL_6:
    v15 = [UIImage imageNamed:v17];
    v3[2](v3, v15, 0);
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) sharedTrips];
  v7 = [v6 firstObject];
  v8 = [v7 senderInfo];
  v9 = [v8 hasLocalContactIdentifier];

  if (!v9)
  {
    v17 = @"SharedTrip";
    goto LABEL_6;
  }

  v10 = +[AddressBookManager sharedManager];
  v11 = [*(a1 + 32) sharedTrips];
  v12 = [v11 firstObject];
  v13 = [v12 senderInfo];
  v14 = [v13 localContactIdentifier];
  v15 = [v10 contactForCNContactIdentifier:v14];

  v16 = +[MapsUIImageCache sharedCache];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100C4D464;
  v18[3] = &unk_10165FEF8;
  v19 = v3;
  [v16 getImageForContact:v15 completion:v18];

LABEL_7:
}

void sub_100C4D464(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"SharedTrip"];
    (*(v2 + 16))(v2, v5, 1);
  }
}

void sub_100C4D774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) publisherAttribution];
  v5 = [v4 iconIdentifier];

  v6 = +[MapsUIImageCache sharedCache];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C4D84C;
  v8[3] = &unk_10165FEF8;
  v9 = v3;
  v7 = v3;
  [v6 getImageForPublisherWithIconIdentifier:v5 completion:v8];
}

void sub_100C4D84C(uint64_t a1, void *a2)
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

void sub_100C4DAE8(id a1, double a2, id a3)
{
  v3 = a3;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = +[GEOFeatureStyleAttributes recentSearchStyleAttributes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C4DBB8;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForStyleAttributes:v5 completion:v7];
}

void sub_100C4DBB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"search"];
    (*(v2 + 16))(v2, v5, 0);
  }
}

void sub_100C4E05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C4E184;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForMapItem:v5 completion:v7];
}

SearchResultMapItem *sub_100C4E11C(uint64_t a1)
{
  v1 = [[SearchResult alloc] initWithGEOMapItem:*(a1 + 32)];
  v2 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v1];

  return v2;
}

void sub_100C4E3D0(id a1, double a2, id a3)
{
  v4 = a3;
  v5 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
  v6 = [MKIconManager imageForStyle:v5 size:3 forScale:0 format:a2];

  v4[2](v4, v6, 0);
}

void sub_100C4E9F0(id a1, double a2, id a3)
{
  v3 = a3;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = +[GEOFeatureStyleAttributes recentsDirectionsStyleAttributes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C4EAC0;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForStyleAttributes:v5 completion:v7];
}

void sub_100C4EAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"recentroute"];
    (*(v2 + 16))(v2, v5, 0);
  }
}

void sub_100C4F270(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1 && ([AutocompleteClientSource autocompleteClientSourceAppIconWithType:*(a1 + 32)], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v3[2](v3, v4, 0);
  }

  else
  {
    v6 = +[MapsUIImageCache sharedCache];
    v7 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C4F384;
    v8[3] = &unk_10165FEF8;
    v9 = v3;
    [v6 getImageForStyleAttributes:v7 completion:v8];

    v5 = v9;
  }
}

void sub_100C4F558(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) iconStyleAttributes];

  +[MapsUIImageCache sharedCache];
  if (v4)
    v5 = {;
    v6 = [GEOFeatureStyleAttributes alloc];
    v7 = [*(a1 + 32) iconStyleAttributes];
    v8 = [v6 initWithGEOStyleAttributes:v7];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100C4F6A0;
    v11[3] = &unk_10165FEF8;
    v12 = v3;
    [v5 getImageForStyleAttributes:v8 completion:v11];
  }

  else
    v9 = {;
    v10 = [v9 searchImage];
    (*(v3 + 2))(v3, v10, 0);
  }
}

void sub_100C50010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v3 + 2))(v3, v5, 0);
  }

  else
  {
    if (!*(a1 + 40))
    {
      if (*(a1 + 56))
      {
        v8 = +[MapsUIImageCache sharedCache];
        v9 = *(a1 + 56);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100C5037C;
        v23[3] = &unk_10165FEF8;
        v24 = v4;
        [v8 getImageForStyleAttributes:v9 completion:v23];

        v10 = v24;
      }

      else if (*(a1 + 64))
      {
        v11 = +[MapsUIImageCache sharedCache];
        v12 = *(a1 + 64);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100C50390;
        v21[3] = &unk_10165FEF8;
        v22 = v4;
        [v11 getImageForContact:v12 completion:v21];

        v10 = v22;
      }

      else
      {
        if ([*(a1 + 48) _type] != 4)
        {
          goto LABEL_15;
        }

        v13 = *(a1 + 72);
        if (v13)
        {
          v14 = [v13 unsignedIntValue];
        }

        else
        {
          v15 = [*(a1 + 48) collectionResult];
          v16 = [v15 collection];
          v17 = [v16 publisherAttribution];
          v14 = [v17 iconIdentifier];
        }

        v18 = +[MapsUIImageCache sharedCache];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100C50438;
        v19[3] = &unk_10165FEF8;
        v20 = v4;
        [v18 getImageForPublisherWithIconIdentifier:v14 completion:v19];

        v10 = v20;
      }

      goto LABEL_15;
    }

    v6 = [*(a1 + 48) category];
    v7 = +[MapsUIImageCache sharedCache];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100C50368;
    v25[3] = &unk_10165FEF8;
    v26 = v4;
    [v7 getImageForCategory:v6 completion:v25];
  }

LABEL_15:
}

SearchResultMapItem *sub_100C502FC(uint64_t a1)
{
  v1 = [[SearchResult alloc] initWithMapItem:*(a1 + 32) syncIdentifier:0];
  v2 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v1];

  return v2;
}

void sub_100C50390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [UIImage imageNamed:@"my_location_cell_icon"];
    (*(v2 + 16))(v2, v5, 1);
  }
}

void sub_100C50438(uint64_t a1, void *a2)
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

void sub_100C50558(id a1, double a2, id a3)
{
  v3 = a3;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C50628;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForStyleAttributes:v5 completion:v7];
}

void sub_100C50A38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C50AF8;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForStyleAttributes:v5 completion:v7];
}

void sub_100C50C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C50CC8;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForMapItem:v5 completion:v7];
}

void sub_100C50F40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C51000;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForMapItem:v5 completion:v7];
}

void sub_100C511D0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C512A8;
  block[3] = &unk_1016589F8;
  v7 = *(a1 + 32);
  v12 = a3;
  v10 = v7;
  v11 = v5;
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_100C512A8(uint64_t a1)
{
  v2 = [*(a1 + 32) system];
  v3 = [v2 artwork];
  v4 = [UIImage _mapkit_transitArtworkImageWithDataSource:v3 size:6 scale:*(a1 + 48)];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C5139C;
  v7[3] = &unk_101661090;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100C514D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 handlerType];
  v6 = *(a1 + 32);
  if (v5 == 4)
  {
    [v6 badgeImage];
  }

  else
  {
    [v6 image];
  }
  v7 = ;
  v4[2](v4);
}

void sub_100C5185C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C51920;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForRowFavorite:v5 inverted:0 completion:v7];
}

void sub_100C51F48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsUIImageCache sharedCache];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C52060;
  v7[3] = &unk_10165FEF8;
  v8 = v3;
  v6 = v3;
  [v4 getImageForSuggestion:v5 completion:v7];
}

SuggestionsItem *sub_100C52008(uint64_t a1)
{
  v1 = [[SuggestionsItem alloc] initWithSuggestion:*(a1 + 32) order:0 sourceType:9 sourceSubtype:0 hasPriorityOverride:0 priorityOverride:0];

  return v1;
}

void sub_100C5235C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = +[MapsUIImageCache sharedCache];
  v6 = *(a1 + 32);
  if (v4 == 1)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100C5248C;
    v12[3] = &unk_10165FEF8;
    v7 = &v13;
    v13 = v3;
    v8 = v3;
    [v5 getImageForInvertedStyleAttributes:v6 completion:v12];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100C524A0;
    v10[3] = &unk_10165FEF8;
    v7 = &v11;
    v11 = v3;
    v9 = v3;
    [v5 getImageForStyleAttributes:v6 completion:v10];
  }
}

void sub_100C5267C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isDynamicCurrentLocation];
  v5 = +[MapsUIImageCache sharedCache];
  if (v4)
  {
    v6 = +[AddressBookManager sharedManager];
    v7 = [v6 meCard];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C52834;
    v13[3] = &unk_10165FEF8;
    v8 = &v14;
    v14 = v3;
    v9 = v3;
    [v5 getImageForContact:v7 completion:v13];
  }

  else
  {
    v6 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100C52848;
    v11[3] = &unk_10165FEF8;
    v8 = &v12;
    v12 = v3;
    v10 = v3;
    [v5 getImageForStyleAttributes:v6 completion:v11];
  }
}

SearchResultMapItem *sub_100C527F0(uint64_t a1)
{
  v1 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:*(a1 + 32)];

  return v1;
}

void sub_100C52DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isDynamicCurrentLocation])
  {
    v4 = [UIImage systemImageNamed:@"location.fill"];
    v5 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
    v6 = +[UIColor secondarySystemFillColor];
    [(ImageIconWithBackgroundConfiguration *)v5 setBackgroundColor:v6];

    v7 = +[UIColor systemBlueColor];
    [(ImageIconWithBackgroundConfiguration *)v5 setTintColor:v7];

    [(ImageIconWithBackgroundConfiguration *)v5 setIconSize:30.0, 30.0];
    v8 = [v4 _maps_imageIconWithBackgroundConfiguration:v5];
    v3[2](v3, v8, 1);
  }

  else
  {
    v9 = +[MapsUIImageCache sharedCache];
    v10 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100C52FA0;
    v11[3] = &unk_10165FEF8;
    v12 = v3;
    [v9 getImageForStyleAttributes:v10 completion:v11];
  }
}

SearchResultMapItem *sub_100C52F5C(uint64_t a1)
{
  v1 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:*(a1 + 32)];

  return v1;
}

void sub_100C531E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addressType];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = +[MapsUIImageCache sharedCache];
      v6 = +[GEOFeatureStyleAttributes workStyleAttributes];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100C534F4;
      v13[3] = &unk_10165FEF8;
      v7 = &v14;
      v14 = v3;
      v8 = v13;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = +[MapsUIImageCache sharedCache];
      v6 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100C53508;
      v11[3] = &unk_10165FEF8;
      v7 = &v12;
      v12 = v3;
      v8 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[MapsUIImageCache sharedCache];
      v6 = [*(a1 + 32) contact];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100C5351C;
      v9[3] = &unk_10165FEF8;
      v7 = &v10;
      v10 = v3;
      [v5 getImageForContact:v6 completion:v9];
LABEL_11:

      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v5 = +[MapsUIImageCache sharedCache];
      v6 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100C534E0;
      v15[3] = &unk_10165FEF8;
      v7 = &v16;
      v16 = v3;
      v8 = v15;
LABEL_10:
      [v5 getImageForStyleAttributes:v6 completion:v8];
      goto LABEL_11;
    }
  }

LABEL_12:
}

SearchResultMapItem *sub_100C5346C(uint64_t a1)
{
  v1 = [[SearchResult alloc] initWithMapItem:*(a1 + 32) searchResultType:0 addressBookAddress:*(a1 + 40) retainedSearchMetadata:0 resultIndex:0];
  v2 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v1];

  return v2;
}

void sub_100C535E8(id a1, double a2, id a3)
{
  v4 = a3;
  v5 = [UIImage imageNamed:@"RAPHomeWorkAddMissing"];
  (*(a3 + 2))(v4, v5, 0);
}

void sub_100C537D0(id a1, double a2, id a3)
{
  v4 = a3;
  v5 = [UIImage imageNamed:@"search"];
  (*(a3 + 2))(v4, v5, 0);
}

void sub_100C538EC(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
  v2 = qword_10195EC68;
  qword_10195EC68 = v1;
}

void sub_100C53EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C53EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 contents];

  [WeakRetained _updateSubtitleWithContents:v4];
  [WeakRetained updateObservers];
}

void sub_100C54058(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [UIImage _systemImageNamed:v3];
  (a2)[2](v4, v5, 0);
}

void sub_100C55E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 19) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 32));
    [WeakRetained updateViewsForCustomDismissalTransition];

    *(*(a1 + 32) + 16) = 1;
  }
}

void sub_100C56054(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 18) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 32));
    [WeakRetained updateViewsForCustomPresentationTransition];

    *(*(a1 + 32) + 16) = 0;
  }
}

void sub_100C56458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_100C56480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained containeeViewController];
  [v2 preferredContentSize];
  v4 = v3;

  return v4;
}

id sub_100C5662C(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [NSMutableArray arrayWithCapacity:a3];
  v7 = [NSMutableArray arrayWithCapacity:a3];
  v8 = [NSMutableArray arrayWithCapacity:a3];
  v9 = [NSMutableArray arrayWithCapacity:a3];
  v26 = a3;
  if (a2 < a2 + a3)
  {
    do
    {
      if (v5)
      {
        [v5 frameAtIndex:a2];
      }

      v10 = [NSValue valueWithCGPoint:0.0, 0.0];
      [v6 addObject:v10];

      v11 = [NSValue valueWithCGSize:0];
      [v7 addObject:v11];

      v12 = [NSValue valueWithCGRect:0.0, 0, 0.0];
      [v8 addObject:v12];

      v13 = [NSNumber numberWithDouble:0.0];
      [v9 addObject:v13];

      ++a2;
      --a3;
    }

    while (a3);
  }

  [v5 frameDuration];
  v15 = v14 * v26;
  v16 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [v16 setCalculationMode:kCAAnimationDiscrete];
  [v16 setDuration:v15];
  v27 = v16;
  [v16 setValues:v6];
  v17 = [CAKeyframeAnimation animationWithKeyPath:@"bounds.size"];
  [v17 setCalculationMode:kCAAnimationDiscrete];
  [v17 setDuration:v15];
  v25 = v17;
  [v17 setValues:v7];
  v18 = [CAKeyframeAnimation animationWithKeyPath:@"contentsRect"];
  [v18 setCalculationMode:kCAAnimationDiscrete];
  [v18 setDuration:v15];
  [v18 setValues:v8];
  v19 = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
  [v19 setCalculationMode:kCAAnimationDiscrete];
  [v19 setDuration:v15];
  [v19 setValues:v9];
  v20 = +[CAAnimationGroup animation];
  v28[0] = v16;
  v28[1] = v17;
  v28[2] = v18;
  v28[3] = v19;
  v21 = [NSArray arrayWithObjects:v28 count:4];
  [v20 setAnimations:v21];

  v22 = [v20 animations];
  v23 = [v22 objectAtIndexedSubscript:0];
  [v23 duration];
  [v20 setDuration:?];

  return v20;
}

id sub_100C573F8()
{
  if (qword_10195ECA0 != -1)
  {
    dispatch_once(&qword_10195ECA0, &stru_10164EDE8);
  }

  v1 = qword_10195EC98;

  return v1;
}

void sub_100C5744C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionTileAvailabilityMonitor");
  v2 = qword_10195EC98;
  qword_10195EC98 = v1;
}

uint64_t sub_100C58700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_10003D9F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unable to get estimated download size of map region, this region is likely in an unsupported area.", v7, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

void sub_100C59064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

void sub_100C5908C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v25 = objc_alloc_init(NSMutableArray);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_100C59550;
    v45[4] = sub_100C59560;
    v46 = 0;
    group = dispatch_group_create();
    v29 = WeakRetained;
    v7 = [WeakRetained _filterEntriesWithOverLappingRects:{v5, v24}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = v7;
    v8 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    v9 = 0;
    if (v8)
    {
      v10 = *v42;
      while (1)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          if ([v12 type] == 1)
          {
            if (GEOConfigGetBOOL())
            {
              v13 = [v12 geoMapItem];
              if (v13)
              {
                v14 = [v29 _homeAreaTipWasDismissed];

                if ((v14 & 1) == 0)
                {
                  if (*(*(a1 + 32) + 44) == 1)
                  {
                    v15 = MapsSuggestionsMostRecentLocation();
                    v16 = v15 == 0;

                    if (v16)
                    {
                      continue;
                    }

                    v40 = 0.0;
                    MapsSuggestionsDistanceFromHereToEntry();
                    v17 = v40;
                    if (v17 > GEOConfigGetInteger())
                    {
                      continue;
                    }
                  }

                  dispatch_group_enter(group);
                  v27 = v29[2];
                  v37[0] = _NSConcreteStackBlock;
                  v37[1] = 3221225472;
                  v37[2] = sub_100C59568;
                  v37[3] = &unk_10164EF50;
                  v38 = v25;
                  v39 = group;
                  [v29 _fetchHomeAreaModelDataFromEntry:v12 onQueue:v27 completionHandler:v37];
                }
              }
            }
          }

          if ([v12 type] == 15 && *(a1 + 72) == 1 && (!v9 || objc_msgSend(v9, "startsBeforeEntry:", v12)))
          {
            v18 = v12;

            v9 = v18;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (!v8)
        {

          if (v9)
          {
            dispatch_group_enter(group);
            v19 = *(a1 + 40);
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100C595AC;
            v34[3] = &unk_10164EE10;
            v36 = v45;
            v35 = group;
            [v29 _fetchAirportArrivalModelDataFromFlightEntry:v9 usingCurrentLocation:v19 completion:v34];
            v20 = v35;
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }
    }

    v20 = v5;
LABEL_25:

LABEL_26:
    v21 = v29[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C5960C;
    block[3] = &unk_10164EF78;
    v28 = *(a1 + 48);
    v22 = v28;
    v32 = v28;
    v31 = v25;
    v33 = v45;
    v23 = v25;
    dispatch_group_notify(group, v21, block);

    _Block_object_dispose(v45, 8);
    WeakRetained = v29;
  }
}

uint64_t sub_100C59550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C59568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_100C595AC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100C5960C(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) copy];
    (*(v2 + 16))(v2, v3, *(*(*(a1 + 56) + 8) + 40));

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_100C59D08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"MAPS_OFFLINE_HOME_AREA_SUBTILE" value:@"localized string not found" table:@"Offline"];

    if (*(*(a1 + 40) + 44) == 3)
    {
      v26 = [OfflineMapsSuggestionModelData alloc];
      v8 = +[NSBundle mainBundle];
      v25 = [v8 localizedStringForKey:@"MAPS_OFFLINE_TIP_SUBTITLE" value:@"localized string not found" table:@"Offline"];

      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"MAPS_OFFLINE_TIP_ACTION_BUTTON_TITLE" value:@"localized string not found" table:@"Offline"];

      v11 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:60.0];
      v12 = [UIImage systemImageNamed:@"map.circle.fill" withConfiguration:v11];

      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"MAPS_OFFLINE_HOME_SUGGESTION_SUBTITLE" value:@"localized string not found" table:@"Offline"];

      v15 = objc_alloc_init(NSByteCountFormatter);
      v16 = [v15 stringFromByteCount:a3];

      v17 = [NSString localizedStringWithFormat:v14, v16];

      LODWORD(v24) = 1;
      v18 = [(OfflineMapsSuggestionModelData *)v26 initWithTipTitle:v7 tipSubtitle:v25 tipActionTitle:v10 tipImage:v12 mapRegion:v5 regionName:0 suggestionSubtitle:v17 suggestionType:v24];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v21 = +[GEOMapService sharedService];
      v22 = [v21 ticketForOfflineRegionNameSuggestionWithRegion:v5 traits:0];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100C5A100;
      v27[3] = &unk_10164EF00;
      v31 = *(a1 + 56);
      v28 = *(a1 + 48);
      v7 = v7;
      v29 = v7;
      v30 = v5;
      v32 = a3;
      GEOConfigGetDouble();
      [v22 submitWithHandler:v27 timeout:v23 networkActivity:0 queue:*(a1 + 32)];
    }
  }

  else
  {
    v19 = sub_10003D9F4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not construct region for home area tip.", buf, 2u);
    }

    v20 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C5A0EC;
    block[3] = &unk_101661760;
    v34 = *(a1 + 56);
    dispatch_async(v20, block);
    v7 = v34;
  }
}

void sub_100C5A100(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 || !a3)
  {
    v5 = [a2 firstObject];
    v6 = [v5 name];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [*(a1 + 32) geoMapItem];
      v9 = [v8 addressDictionary];
      v7 = [v9 objectForKey:@"City"];

      if (!v7)
      {
        v25 = sub_10003D9F4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not construct region name for home area tip", v30, 2u);
        }

        (*(*(a1 + 56) + 16))();
        goto LABEL_10;
      }
    }

    v29 = v5;
    v10 = [OfflineMapsSuggestionModelData alloc];
    v27 = *(a1 + 40);
    v28 = v10;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"MAPS_OFFLINE_TIP_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"MAPS_OFFLINE_TIP_ACTION_BUTTON_TITLE" value:@"localized string not found" table:@"Offline"];

    v15 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:60.0];
    v16 = [UIImage systemImageNamed:@"map.circle.fill" withConfiguration:v15];

    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"MAPS_OFFLINE_HOME_SUGGESTION_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v21 = objc_alloc_init(NSByteCountFormatter);
    v22 = [v21 stringFromByteCount:v18];

    v23 = [NSString localizedStringWithFormat:v20, v22];

    LODWORD(v26) = 1;
    v24 = [(OfflineMapsSuggestionModelData *)v28 initWithTipTitle:v27 tipSubtitle:v12 tipActionTitle:v14 tipImage:v16 mapRegion:v17 regionName:v7 suggestionSubtitle:v23 suggestionType:v26];

    (*(*(a1 + 56) + 16))();
    v5 = v29;
LABEL_10:

    return;
  }

  v4 = sub_10003D9F4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not determine name for home area tip", buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100C5A9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [OfflineMapsSuggestionModelData alloc];
    v22 = *(a1 + 32);
    v23 = v6;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MAPS_OFFLINE_TIP_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"MAPS_OFFLINE_TIP_ACTION_BUTTON_TITLE" value:@"localized string not found" table:@"Offline"];

    v11 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:60.0];
    v12 = [UIImage systemImageNamed:@"map.circle.fill" withConfiguration:v11];

    v13 = *(a1 + 32);
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"MAPS_OFFLINE_FUTURE_TRIP_SUGGESTION_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v16 = objc_alloc_init(NSByteCountFormatter);
    v17 = [v16 stringFromByteCount:a3];

    v18 = [NSString localizedStringWithFormat:v15, v17];

    LODWORD(v21) = 3;
    v19 = [(OfflineMapsSuggestionModelData *)v23 initWithTipTitle:v22 tipSubtitle:v8 tipActionTitle:v10 tipImage:v12 mapRegion:v5 regionName:v13 suggestionSubtitle:v18 suggestionType:v21];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = sub_10003D9F4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Airport Arrival Tip: Region is nil, should not have happened.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100C5ACE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[1] oneInsights];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100C5ADA4;
    v6[3] = &unk_1016601F0;
    v5 = *(a1 + 32);
    v6[4] = v3;
    v7 = v5;
    [v4 futureTripsWithHandler:v6];
  }
}

void sub_100C5ADA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || ![v5 count])
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_31;
  }

  v40 = v6;
  [*(a1 + 32) fetchHomeLocationsAsShortCuts];
  v42 = v41 = v5;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v8)
  {
LABEL_23:

    goto LABEL_27;
  }

  v9 = v8;
  v10 = *v48;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v48 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v47 + 1) + 8 * v11);
    v13 = [v12 placemark];
    v14 = [v13 locality];

    if (!v14)
    {
      v18 = sub_10003D9F4();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v19 = v18;
      v20 = "Trip Placemark has no locality, not showing Offline Maps trip.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
      goto LABEL_20;
    }

    if (([v12 isInternational] & 1) == 0)
    {
      v18 = sub_10003D9F4();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v19 = v18;
      v20 = "Trip is not international, not showing Offline Maps trip.";
      goto LABEL_19;
    }

    v15 = [0 placemark];
    v16 = [v15 location];
    [v16 coordinate];
    v17 = CLLocationCoordinate2DIsValid(v52);

    if (!v17)
    {
      v18 = sub_10003D9F4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v19 = v18;
        v20 = "Trip does not have a valid coordinate.";
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (([*(a1 + 32) isTrip:v12 nearAtLeastOneShortcut:v42] & 1) == 0)
    {
      break;
    }

LABEL_21:
    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  v21 = v12;

  if (v21)
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"MAPS_OFFLINE_TIP_TITLE_FOR_FUTURE_TRIP" value:@"localized string not found" table:@"Offline"];

    v24 = [NSString alloc];
    v25 = [v21 placemark];
    v26 = [v25 locality];
    v27 = [v24 initWithFormat:v23, v26];

    v28 = [v21 placemark];
    v29 = [v28 location];
    [v29 coordinate];
    v31 = v30;

    v32 = [v21 placemark];
    v33 = [v32 location];
    [v33 coordinate];
    v35 = v34;

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100C5B21C;
    v43[3] = &unk_10164EEB0;
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v44 = v27;
    v45 = v37;
    v43[4] = *(a1 + 32);
    v38 = v27;
    [v36 _buildMapRegionForLatitude:v43 longitude:v31 handler:v35];

    goto LABEL_30;
  }

LABEL_27:
  v39 = sub_10003D9F4();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "No trips found matching criteria, not showing Offline Maps trip.", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_30:
  v6 = v40;
  v5 = v41;

LABEL_31:
}

void sub_100C5B21C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_alloc_init(GEOMapDataSubscriptionManager);
    v7 = *(*(a1 + 32) + 24);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100C5B33C;
    v9[3] = &unk_10164EE88;
    v12 = *(a1 + 48);
    v10 = *(a1 + 40);
    v11 = v5;
    v13 = a3;
    v8 = [v6 determineEstimatedSizeForSubscriptionWithRegion:v11 dataTypes:1024 queue:v7 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100C5B33C(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v19 = sub_10003D9F4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to load download size.", buf, 2u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v4 = [OfflineMapsSuggestionModelData alloc];
    v21 = a1[4];
    v22 = v4;
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MAPS_OFFLINE_TIP_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MAPS_OFFLINE_TIP_ACTION_BUTTON_TITLE" value:@"localized string not found" table:@"Offline"];

    v9 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:-1 scale:60.0];
    v10 = [UIImage systemImageNamed:@"map.circle.fill" withConfiguration:v9];

    v12 = a1[4];
    v11 = a1[5];
    v13 = a1[7];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"MAPS_OFFLINE_FUTURE_TRIP_SUGGESTION_SUBTITLE" value:@"localized string not found" table:@"Offline"];

    v16 = objc_alloc_init(NSByteCountFormatter);
    v17 = [v16 stringFromByteCount:v13];

    v18 = [NSString localizedStringWithFormat:v15, v17];

    LODWORD(v20) = 2;
    v23 = [(OfflineMapsSuggestionModelData *)v22 initWithTipTitle:v21 tipSubtitle:v6 tipActionTitle:v8 tipImage:v10 mapRegion:v11 regionName:v12 suggestionSubtitle:v18 suggestionType:v20];

    (*(a1[6] + 16))();
  }
}

void sub_100C5B8E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10003D9F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to load shortcuts:%@", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([v5 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 type] == 2)
          {
            v12 = *(a1 + 40);
            objc_sync_enter(v12);
            [*(a1 + 40) addObject:v11];
            objc_sync_exit(v12);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    goto LABEL_14;
  }

LABEL_15:
  dispatch_group_leave(*(a1 + 32));
}

void sub_100C5C3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100C5C428(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_10003D9F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "firstUpcomingTrip called back", v6, 2u);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100C5C4CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100C5C560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (v4 && [v4 count] && (objc_msgSend(WeakRetained, "_homeAreaTipWasDismissed") & 1) == 0)
    {
      v5 = sub_10003D9F4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding home area offline suggestion in allOfflineSuggestions", &v12, 2u);
      }

      [v3 addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
    }

    if (*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40) && ([WeakRetained _tripTipWasDismissed] & 1) == 0)
    {
      v6 = sub_10003D9F4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Adding pre-arrival offline suggestion in allOfflineSuggestions", &v12, 2u);
      }

      [v3 addObject:*(*(*(a1 + 48) + 8) + 40)];
    }

    if (*(*(*(a1 + 56) + 8) + 40) && ([WeakRetained _tripTipWasDismissed] & 1) == 0)
    {
      v7 = sub_10003D9F4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Adding airport arrival offline suggestion in allOfflineSuggestions", &v12, 2u);
      }

      [v3 addObject:*(*(*(a1 + 56) + 8) + 40)];
    }

    v8 = sub_10003D9F4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 count];
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "allOfflineSuggestions calling back with %lu items", &v12, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [v3 copy];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_100C5DB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C5DB58(uint64_t a1)
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

id sub_100C5DCA0(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldScrollPlacecard];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 canUpdateTrayLayout];
    v5 = *(a1 + 32);
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100C5DD84;
      v7[3] = &unk_101661B18;
      v7[4] = v5;
      return [v5 updateTrayLayout:2 animated:1 completion:v7];
    }

    else
    {

      return [v5 scrollPlacecardTest];
    }
  }

  else
  {

    return [v3 finishedTest];
  }
}

void sub_100C5DF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100C5DF5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShowWebModule];
}

void sub_100C5E40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(v40);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100C5E474(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"tapPOI"];
  v2 = *(a1 + 32);

  return [v2 startedSubTest:@"loadPlaceCard"];
}

void sub_100C5E4C0(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  objc_storeWeak((*(a1 + 32) + 64), v3);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didShowPlaceCard];
}

void sub_100C5E538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedSubTest:@"fetchPlaceEnrichment"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 startedSubTest:@"displayPlaceEnrichment"];
}

void sub_100C5E5A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedSubTest:@"displayPlaceEnrichment"];
}

void sub_100C5E5F0(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  objc_storeWeak((*(a1 + 32) + 64), v3);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didShowPlaceCard];
}

void sub_100C5E728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100C5E744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tapPOI];
}

void sub_100C5E8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C5E8FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishJumping];
}

double sub_100C60370(uint64_t a1, double a2)
{
  [*(a1 + 32) bottomSafeOffset];
  v5 = v4 + a2;
  [*(a1 + 32) grabberSafeAreaHeight];
  return v5 - v6;
}

void sub_100C60520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = [WeakRetained statusBarSupplementaryView];
  [v2 frame];
  Height = CGRectGetHeight(v8);
  v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
  v5 = [v4 sheetPresentationController];
  [v5 _setAdditionalMinimumTopInset:Height];
}

double sub_100C60A74(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) presentedModally] && (objc_msgSend(*(a1 + 32), "viewController"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "heightForLayout:", 5), v6 = v5, v4, v6 != -1.0))
  {
    [*(a1 + 32) bottomSafeOffset];
    v11 = v6 - v22;
  }

  else
  {
    v7 = [*(a1 + 32) viewController];
    [v7 heightForLayout:3];
    v9 = v8;

    if (v9 == -1.0)
    {
      v11 = UISheetPresentationControllerDetentInactive;
    }

    else
    {
      [*(a1 + 32) bottomSafeOffset];
      v11 = v9 - v10;
      if (*(a1 + 48) == 1)
      {
        [*(a1 + 40) resolvedValueInContext:v3];
        v13 = v12;
        v14 = sub_100C6180C();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
LABEL_17:

          v11 = fmin(v11, v13);
          goto LABEL_18;
        }

        v15 = *(a1 + 32);
        v16 = [v15 viewController];
        if (!v16)
        {
          v21 = @"<nil>";
          goto LABEL_16;
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

            goto LABEL_12;
          }
        }

        v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_12:

LABEL_16:
        *buf = 134349826;
        v25 = v15;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = v13;
        v30 = 2114;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Returning MIN(%f, %f) height for VC %{public}@", buf, 0x2Au);

        goto LABEL_17;
      }
    }
  }

LABEL_18:

  return v11;
}

double sub_100C60D00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) shouldBypassViewControllerHeightCalculation])
  {
    if ([*(a1 + 32) containerStyle] == 4)
    {
      v13 = (*(*(a1 + 40) + 16))();
      v14 = sub_100C6180C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = [v15 viewController];
        if (!v16)
        {
          v29 = @"<nil>";
          goto LABEL_45;
        }

        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_26;
        }

        v19 = [v16 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (!v19 || [v19 isEqualToString:v18])
        {

          goto LABEL_26;
        }

        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v21 = [*(a1 + 32) viewController];
    [v21 heightForLayout:2];
    v23 = v22;

    if (([*(a1 + 32) _fullHeightFixed] & 1) == 0 && v23 != -1.0)
    {
      [*(a1 + 32) bottomSafeOffset];
      v25 = v23 - v24;
      [*(a1 + 32) grabberSafeAreaHeight];
      v13 = v26 + v25;
      v14 = sub_100C6180C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = [v15 viewController];
        if (!v16)
        {
          v29 = @"<nil>";
          goto LABEL_45;
        }

        v27 = objc_opt_class();
        v18 = NSStringFromClass(v27);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_26;
        }

        v28 = [v16 performSelector:"accessibilityIdentifier"];
        v20 = v28;
        if (!v28 || [v28 isEqualToString:v18])
        {

LABEL_26:
          v29 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_27:

LABEL_45:
          *buf = 134349570;
          v44 = v15;
          v45 = 2048;
          v46 = v13;
          v47 = 2114;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Calculated medium height (%f) for VC %{public}@", buf, 0x20u);

          goto LABEL_46;
        }

LABEL_51:
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_27;
      }

LABEL_46:

      v41.n128_f64[0] = v13;
      v40 = (*(*(a1 + 48) + 16))(v41);
      goto LABEL_47;
    }

    v30 = sub_100C6180C();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
LABEL_43:

      v39.n128_f64[0] = UISheetPresentationControllerDetentInactive;
      v40 = (*(*(a1 + 48) + 16))(v39);
LABEL_47:
      v38 = v40;
      goto LABEL_48;
    }

    v31 = *(a1 + 32);
    v32 = [v31 viewController];
    if (!v32)
    {
      v37 = @"<nil>";
      goto LABEL_42;
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

LABEL_42:
    *buf = 134349314;
    v44 = v31;
    v45 = 2114;
    v46 = *&v37;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Medium detent is inactive for VC %{public}@", buf, 0x16u);

    goto LABEL_43;
  }

  v4 = sub_100C6180C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = [v5 containerViewController];
    v7 = [v6 currentOrPendingViewController];
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_37;
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

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_37:
    *buf = 134349314;
    v44 = v5;
    v45 = 2114;
    v46 = *&v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Our VC is not the current or pending one (%{public}@); ignoring medium detent height request", buf, 0x16u);
  }

  v38 = *(*(a1 + 32) + 112);
LABEL_48:

  return v38;
}

double sub_100C61348(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) shouldBypassViewControllerHeightCalculation])
  {
    if ([*(a1 + 32) containerStyle] == 4)
    {
      v13 = sub_100C6180C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_32:

        v31.n128_f64[0] = UISheetPresentationControllerDetentInactive;
        v32 = (*(*(a1 + 40) + 16))(v31);
LABEL_36:
        v30 = v32;
        goto LABEL_37;
      }

      v14 = *(a1 + 32);
      v15 = [v14 viewController];
      if (!v15)
      {
        v20 = @"<nil>";
        goto LABEL_31;
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

          goto LABEL_18;
        }
      }

      v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_18:

LABEL_31:
      *buf = 134349314;
      v36 = v14;
      v37 = 2114;
      v38 = *&v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Full detent is inactive for VC %{public}@", buf, 0x16u);

      goto LABEL_32;
    }

    v21 = (*(*(a1 + 48) + 16))();
    v22 = sub_100C6180C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
LABEL_35:

      v33.n128_f64[0] = v21;
      v32 = (*(*(a1 + 40) + 16))(v33);
      goto LABEL_36;
    }

    v23 = *(a1 + 32);
    v24 = [v23 viewController];
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

        goto LABEL_26;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_26:

LABEL_34:
    *buf = 134349570;
    v36 = v23;
    v37 = 2048;
    v38 = v21;
    v39 = 2114;
    v40 = v29;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Calculated full height (%f) for VC %{public}@", buf, 0x20u);

    goto LABEL_35;
  }

  v4 = sub_100C6180C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = [v5 containerViewController];
    v7 = [v6 currentOrPendingViewController];
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_28;
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

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_28:
    *buf = 134349314;
    v36 = v5;
    v37 = 2114;
    v38 = *&v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Our VC is not the current or pending one (%{public}@); ignoring full detent height request", buf, 0x16u);
  }

  v30 = *(*(a1 + 32) + 120);
LABEL_37:

  return v30;
}

id sub_100C6180C()
{
  if (qword_10195ECC0 != -1)
  {
    dispatch_once(&qword_10195ECC0, &stru_10164F148);
  }

  v1 = qword_10195ECB8;

  return v1;
}

void sub_100C61860(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CardPresentationController");
  v2 = qword_10195ECB8;
  qword_10195ECB8 = v1;
}

void sub_100C621DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v1 = [WeakRetained sheetPresentationController];
  [v1 invalidateDetents];
}

void sub_100C627F4(uint64_t a1)
{
  v2 = [*(a1 + 32) hidden];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v3 = [WeakRetained sheetPresentationController];
  [v3 _setHidden:v2];
}

void sub_100C62E0C(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v4 = [WeakRetained sheetPresentationController];
  [v4 setSelectedDetentIdentifier:v2];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 128));
  [v5 animateAlongsideCardTransition];
}

void sub_100C62EA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v4 = [WeakRetained sheetPresentationController];
  [v4 setSelectedDetentIdentifier:v2];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 88));
  v6 = [v5 view];
  v7 = [v6 window];
  [v7 layoutIfNeeded];

  v8 = objc_loadWeakRetained((*(a1 + 32) + 128));
  [v8 animateAlongsideCardTransition];
}

void sub_100C636F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained containee:v3 didChangeLayout:*(a1 + 40)];

  v4 = sub_100C6180C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = objc_loadWeakRetained((v6 + 128));
    if (!v7)
    {
      v12 = @"<nil>";
LABEL_10:

      v13 = v12;
      v14 = objc_loadWeakRetained((*(a1 + 32) + 88));
      if (!v14)
      {
        v19 = @"<nil>";
        goto LABEL_18;
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

          goto LABEL_16;
        }
      }

      v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_16:

LABEL_18:
      *buf = 134349826;
      v21 = v6;
      v22 = 2048;
      v23 = v5;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Did change layout: %lu for container: %{public}@ continee: %{public}@", buf, 0x2Au);

      goto LABEL_19;
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

    goto LABEL_10;
  }

LABEL_19:
}

void sub_100C642B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_100C642D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained presentedViewController];
    [v3 preferredContentSize];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

id sub_100C6497C()
{
  if (qword_10195ECD0 != -1)
  {
    dispatch_once(&qword_10195ECD0, &stru_10164F190);
  }

  v1 = qword_10195ECC8;

  return v1;
}

void sub_100C649D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFCrowdsourcing");
  v2 = qword_10195ECC8;
  qword_10195ECC8 = v1;
}

id sub_100C64A60(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C64B2C;
  v6[3] = &unk_101661C18;
  v7 = a2;
  v3 = v7;
  v4 = [UIAction actionWithTitle:a1 image:0 identifier:0 handler:v6];

  return v4;
}

uint64_t sub_100C64B2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100C64B44(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] Delete" value:@"localized string not found" table:0];
  v4 = sub_100C64A60(v3, v1);

  return v4;
}

id sub_100C64BD8(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] Open in New Tab" value:@"localized string not found" table:0];
  v4 = sub_100C64A60(v3, v1);

  return v4;
}

id sub_100C64C6C(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] Open in New Window" value:@"localized string not found" table:0];
  v4 = sub_100C64A60(v3, v1);

  return v4;
}

id sub_100C64D00(void *a1)
{
  v1 = a1;
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"[Maps Home] Unpin";
  }

  else
  {
    v5 = @"[Maps Home] Remove from Favorites";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];
  v7 = sub_100C64A60(v6, v1);

  return v7;
}

id sub_100C64DB4(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] Remove from Guide" value:@"localized string not found" table:0];

  v4 = sub_100C64A60(v3, v1);

  return v4;
}

uint64_t sub_100C653DC(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 12) |= 8u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidRailRoutes;
              goto LABEL_65;
            }
          }

          v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidRailRoutes;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 12) |= 2u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidFerryRoutes;
              goto LABEL_65;
            }
          }

          v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidFerryRoutes;
LABEL_64:
          v21 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
          *(a1 + *v22) = v21;
          goto LABEL_66;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 12) |= 1u;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidBusRoutes;
              goto LABEL_65;
            }
          }

          v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidBusRoutes;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 12) |= 4u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidMetroLightRailRoutes;
              goto LABEL_65;
            }
          }

          v22 = &OBJC_IVAR___DirectionsPlanTransitPreferences__avoidMetroLightRailRoutes;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100C66064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [SearchFieldItem searchFieldItemWithWaypointRequest:a2 resolvedWaypoint:a3];
  [*(a1 + 32) addObject:v4];
}

void sub_100C664E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [SearchFieldItem searchFieldItemWithWaypointRequest:a2 resolvedWaypoint:a3];
  [*(a1 + 32) addObject:v4];
}

void sub_100C6669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C666B8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) viewControllerShowOfflineMaps:WeakRetained];
    v5 = v6;
  }
}

void sub_100C68BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _navCameraController];
  [v2 frameVehiclePositions:&__NSArray0__struct];

  v3 = *(a1 + 32);
  if (*(v3 + 40) == 1)
  {
    *(v3 + 40) = 0;
    v4 = *(a1 + 32);

    [v4 stopRequestingRealtimeUpdates];
  }
}

id sub_100C68D5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) mapView];
  [v2 _setupMapView:v3];

  v4 = *(a1 + 32);

  return [v4 _updateCurrentRouteIfNeeded];
}

id sub_100C68DB8(uint64_t a1)
{
  [*(a1 + 32) _pauseOrResumeRealtimeUpdatesIfNeeded];
  [*(a1 + 32) updateTransitVehicleUpdaterIfNeeded];
  v2 = *(a1 + 32);

  return [v2 canRecenterDidChange];
}

void sub_100C68E6C(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchCurrentRoute];
  [*(a1 + 32) _checkRouteProximityForManualFraming:?];
  if (!*(*(a1 + 32) + 48))
  {
    v2 = [[GEOTransitVehicleUpdater alloc] initWithDelegate:*(a1 + 32)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;
  }
}

void sub_100C696A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100C698F4(uint64_t a1, void *a2, void *a3)
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

NSString *__cdecl sub_100C69BA0(id a1, MapsRadarAttachment *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(MapsRadarAttachment *)v3 fileName];
  v5 = qword_10195ECE8;
  v6 = [(MapsRadarAttachment *)v3 creationDate];

  v7 = [v5 stringFromDate:v6];
  v8 = [NSString stringWithFormat:@"%@:%@", v4, v7];

  return v8;
}

void sub_100C69C5C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195ECE8;
  qword_10195ECE8 = v1;

  [qword_10195ECE8 setDateFormat:@"yyyy.MM.dd HH:mm:ss.SSS Z"];
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195ECE8 setLocale:v3];
}

int64_t sub_100C69CE8(id a1, MapsRadarAttachment *a2, MapsRadarAttachment *a3)
{
  v4 = a3;
  v5 = [(MapsRadarAttachment *)a2 creationDate];
  v6 = [(MapsRadarAttachment *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_100C6C0F4()
{
  if (qword_10195ED08 != -1)
  {
    dispatch_once(&qword_10195ED08, &stru_10164F3A0);
  }

  v1 = qword_10195ED00;

  return v1;
}

void sub_100C6C148(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarDynamicBlurView");
  v2 = qword_10195ED00;
  qword_10195ED00 = v1;
}

void sub_100C6CA80(id a1)
{
  if (GEOConfigGetBOOL())
  {
    v1 = 1;
  }

  else
  {
    v1 = _UISolariumEnabled() ^ 1;
  }

  byte_10195ECF0 = v1;
}

void sub_100C6CEA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateTintAndIconLabel];
}

void sub_100C6D250(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195ED28;
  qword_10195ED28 = v1;

  [qword_10195ED28 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195ED28 setLocale:v3];
}

void sub_100C6DBE4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195ED10;
  qword_10195ED10 = v1;
}

void sub_100C6E9D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _storageNodeForExpandedIdentifierPaths:a3];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void sub_100C6EDE0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 hasPrefix:*(a1 + 32)])
  {
    v6 = [v10 expandedValue];

    if (v6)
    {
      v7 = [v10 expandedValue];
      v8 = [v7 BOOLValue];

      v9 = *(a1 + 40);
      if (v8)
      {
        [v9 addObject:v5];
      }

      else
      {
        [v9 removeObject:v5];
      }
    }
  }
}

void sub_100C6EF9C(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v6 identifierPathByAppendingIdentifier:a2];
  [v5 _visitNode:v7 identifierPath:v8 block:a1[6]];
}

void sub_100C6F474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C6F498(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C6F550;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100C6F550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = v5[11];
    v5[11] = v3;

    [v5 rebuildContent];
    WeakRetained = v5;
  }
}

void sub_100C6FB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_100C6FBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    if (v5)
    {
      v6 = sub_100035E6C();
      v7 = v6;
      if (v3)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v9 = 138412546;
          v10 = v5;
          v11 = 2112;
          v12 = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NavigationRouteInterrupter: Failed to cancel interruption on entry: %@ with error: %@", &v9, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Finished cancelling interruption on entry: %@. Will hint refresh.", &v9, 0xCu);
        }

        [*(a1 + 32) hintRefreshOfType:11];
      }

      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }
  }
}

void sub_100C6FF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_100C6FF70(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(a1 + 7);
    v6 = v5;
    if (v5)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100C70150;
      v11[3] = &unk_1016605F8;
      v7 = v5;
      v12 = v7;
      v13 = WeakRetained;
      v14 = a1[5];
      v8 = objc_retainBlock(v11);
      v9 = sub_100035E6C();
      v10 = v9;
      if (v3)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NavigationRouteInterrupter: Failed to interrupt an entry: %@ with error: %@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Finished interrupting entry: %@. Will hint refresh.", buf, 0xCu);
        }

        [a1[4] hintRefreshOfType:11];
      }

      (v8[2])(v8);
    }
  }
}

void sub_100C70150(uint64_t a1)
{
  v2 = [*(a1 + 32) historyEntry];
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

  v5 = [v4 identifier];

  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Will notify delegate: %@ of interruption with identifier: %@", &v10, 0x16u);
  }

  v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
  [v8 navigationRouteInterrupter:*(a1 + 40) finishedInteruptingEntryWithIdentifier:v5];

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_100C70720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7074C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCachedLoadResult:v4];

  (*(*(a1 + 32) + 16))();
}

void sub_100C707BC(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained address];
  v8 = [v7 waypointCompositeName];

  if (v16 && v8)
  {
    v9 = [v16 mapItemStorage];
    v10 = [v9 userValues];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    [v13 setName:v8];
    v14 = [v16 mapItemStorage];
    [v14 setUserValues:v13];
  }

  v15 = sub_100C2093C(*(a1 + 32));
  (v15)[2](v15, v16, v5);
}

void sub_100C70D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100C70FD4(uint64_t a1, void *a2, void *a3)
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

uint64_t sub_100C72198(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100C72260(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100C72308(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  v3 = [v2 pptTestScrollView];

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C723B4;
  v5[3] = &unk_10164F548;
  v5[4] = v4;
  [v4 _performScrollTestOfScrollView:v3 completion:v5];
}

id sub_100C723B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 results];
  [v5 addEntriesFromDictionary:v4];

  v6 = *(a1 + 32);

  return [v6 finishedTest];
}

uint64_t sub_100C73A6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else if ((v3 || !v4) && (!v3 || v4))
  {
    v6 = [v3 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100C73AE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v7 = [v3 searchResult];
      v8 = [v5 searchResult];
      v9 = v8;
      v6 = 0;
      if (v7 && v8)
      {
        v6 = [v7 isEqualToSearchResult:v8 forPurpose:2];
      }
    }
  }

  return v6;
}

uint64_t sub_100C73CC8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100C74008(void *a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v6 + 1) + 8 * i) type])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_100C74B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C74B38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionHandler];

  if (v1)
  {
    v2 = [WeakRetained actionHandler];
    (v2)[2](v2, WeakRetained);
  }
}

id sub_100C7500C()
{
  if (qword_10195ED38 != -1)
  {
    dispatch_once(&qword_10195ED38, &stru_10164F568);
  }

  v1 = qword_10195ED30;

  return v1;
}

void sub_100C75060(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARUsageMigratorTask");
  v2 = qword_10195ED30;
  qword_10195ED30 = v1;
}

id sub_100C75518(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if ((a1 - 1) >= 4)
  {
    v4 = @"Error: unknown error [Nano]";
  }

  else
  {
    v4 = @"Error: waypoint refinement error [Nano]";
  }

  v5 = [v2 localizedStringForKey:v4 value:@"localized string not found" table:0];

  return v5;
}

id sub_100C75F08()
{
  if (qword_10195ED48 != -1)
  {
    dispatch_once(&qword_10195ED48, &stru_10164F618);
  }

  v1 = qword_10195ED40;

  return v1;
}

void sub_100C75F5C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionStateManager");
  v2 = qword_10195ED40;
  qword_10195ED40 = v1;
}

void sub_100C76608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C76630(uint64_t a1)
{
  v2 = sub_100C75F08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 134349056;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Retry timer fired", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 resumeSession];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 observers];
  [v6 throttleDidEnd];
}

void sub_100C782E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C78308(uint64_t a1)
{
  v2 = sub_100C75F08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    v5 = @"VIOSessionThrottleEventDeviceMotion";
    v6 = *(a1 + 48);
    v7 = *(a1 + 40) == 0;
    v9 = 134349570;
    if (v7)
    {
      v5 = @"VIOSessionThrottleEventARTrackingState";
    }

    v10 = WeakRetained;
    v11 = 2112;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Detected consecutive throttle event of type %@ for longer than %f seconds", &v9, 0x20u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 throttleSessionWithEventReason:*(a1 + 40)];
}

void sub_100C7943C(uint64_t a1, void *a2)
{
  v3 = a2;
  --*(*(a1 + 32) + 16);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[RAPAuxiliaryControlWatch alloc] initWithPropertiesOfDevice:*(*(&v15 + 1) + 8 * v7)];
        if (v8)
        {
          if ([*(*(a1 + 32) + 48) isSameControlAsControl:v8])
          {
            if ([(RAPAuxiliaryControlWatch *)v8 isActive])
            {
              goto LABEL_13;
            }

            v9 = *(a1 + 32);
            v10 = *(v9 + 48);
            *(v9 + 48) = 0;
          }

          else
          {
            [*(a1 + 32) _addControlIfNotDuplicate:v8];
            if (![(RAPAuxiliaryControlWatch *)v8 isActive])
            {
              goto LABEL_13;
            }

            v11 = *(a1 + 32);
            v12 = v8;
            v10 = *(v11 + 48);
            *(v11 + 48) = v12;
          }
        }

LABEL_13:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  if (*(v13 + 10) == 1)
  {
    objc_storeStrong((v13 + 32), *(v13 + 48));
    *(*(a1 + 32) + 10) = 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))();
  }
}