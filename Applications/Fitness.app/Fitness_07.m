void sub_1000E20C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithUnsignedInteger:a2];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);

    [v6 _reloadHeaderForSection:a2];
  }
}

void sub_1000E2150(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithUnsignedInteger:a2];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);

    [v6 _reloadHeaderForSection:a2];
  }
}

void sub_1000E2370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _indexPathsToRemoveForSection:a2];
  [v2 addObjectsFromArray:v3];
}

void sub_1000E26A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithUnsignedInteger:a2];
  v6 = [NSPredicate predicateWithFormat:@"section==%@", v5];
  v9 = [v4 filteredArrayUsingPredicate:v6];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) _indexPathsToInsertForSection:a2 deletedIndexPaths:v9];
  [v7 addObjectsFromArray:v8];
}

void sub_1000E37E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E381C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteWorkoutAtIndexPath:*(a1 + 32)];

  v6[2](v6, 1);
}

void sub_1000E3968(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E3A34;
    v8[3] = &unk_10083AC40;
    v9 = v5;
    [v6 deleteWorkout:v9 shouldDeleteAssociatedSamples:a3 completion:v8];
    v7 = [*(*(a1 + 32) + 24) seymourCatalogItemDataProvider];
    [v7 deleteArchivedSessionForWorkout:*(a1 + 40)];
  }
}

void sub_1000E3A34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C040(a1, v5, v4);
    }
  }
}

id sub_1000E3C18(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WORKOUT_SHARE_PREVIEW_ITEM_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v4 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E3DB4;
  v9[3] = &unk_10083BBD0;
  v10 = *(a1 + 32);
  v5 = [UIAction actionWithTitle:v3 image:v4 identifier:0 handler:v9];

  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [UIMenu menuWithChildren:v6];

  return v7;
}

void sub_1000E3EA4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 96));
  [WeakRetained workoutsListDataSource:a1[4] didSelectWorkout:a1[5] atIndexPath:a1[6]];
}

void sub_1000E4B1C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  *&qword_1008F99C0 = 1.0 / v1;
}

void sub_1000E4E9C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CHMoveModeUtilities saved new move mode: %ld", buf, 0xCu);
    }

    v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v9 = FIDefaultExerciseGoalQuantityForActivityMoveMode();
    v10 = FIDefaultStandGoalQuantityForActivityMoveMode();
    v12 = v8;
    v13 = *(a1 + 40);
    v11 = v8;
    FISaveGoalsForNewActivityMoveMode();
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069C128();
  }
}

void sub_1000E5068(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v10 = 138412546;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CHMoveModeUtilities saved new move goal: %@ with move mode: %ld default exercise/stand goals.", &v10, 0x16u);
    }

    if (FIIsActivePairedDeviceSatellitePaired())
    {
      [*(a1 + 40) forceCloudSyncDataUploadForProfileWithCompletion:&stru_10083BC60];
    }

    else
    {
      v9 = [[HKNanoSyncControl alloc] initWithHealthStore:*(a1 + 40)];
      [v9 forceNanoSyncWithOptions:0 completion:&stru_10083BC80];
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069C190();
  }
}

void sub_1000E51A4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CHMoveModeUtilities successfully forced cloud sync after saving activity move mode", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069C1F8();
  }
}

void sub_1000E524C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (a2)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CHMoveModeUtilities successfully forced nano sync after saving activity move mode", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069C260();
  }
}

void sub_1000E600C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_1000E6054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ASLoggingInitialize();
    v2 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received phone status changed notification", v3, 2u);
    }

    [WeakRetained _getAndHandlePhoneCloudKitAccountStatus];
  }
}

void sub_1000E60DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ASLoggingInitialize();
    v2 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received Watch pairing changed notification", v3, 2u);
    }

    [WeakRetained _updateActivitySharingWatchPairingStatus];
  }
}

void sub_1000E6668(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[43] = [*(a1 + 32) _cachedWatchCloudKitAccountAssumedToExist];
    ASLoggingInitialize();
    v3 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = WeakRetained[43];
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No longer assuming parity between phone and watch, resetting assumption to value from cache: %d", v5, 8u);
    }
  }
}

void sub_1000E72BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E72D8(uint64_t a1, char a2, int a3, void *a4)
{
  v7 = a4;
  if (v7 || !a3)
  {
    ASLoggingInitialize();
    v8 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch phone account info with error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E741C;
    block[3] = &unk_10083BD40;
    v11 = a2;
    objc_copyWeak(&v10, (a1 + 40));
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v10);
  }
}

void sub_1000E741C(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    LODWORD(v12) = 67109120;
    HIDWORD(v12) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully fetched phone account info from healthstore: %d", &v12, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained phoneCloudKitAccountIsActive])
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 48);
    }

    if ([v5 phoneCloudKitAccountIsActive])
    {
      v7 = *(a1 + 48) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    if (*(*(a1 + 32) + 80))
    {
      if (v6)
      {
        ASLoggingInitialize();
        v8 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          v9 = "Phone status is transitioning to active";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (v7)
      {
        ASLoggingInitialize();
        v8 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          v9 = "Phone status is transitioning to inactive";
          goto LABEL_17;
        }

LABEL_18:
        [v5 setWatchCloudKitAccountAssumedToExist:{v6 & 1, v12}];
        [v5 setWatchCloudKitAccountExists:v6 & 1];
      }
    }

    v10 = *(a1 + 48);
    if (v10 != [v5 phoneCloudKitAccountIsActive])
    {
      [v5 setPhoneCloudKitAccountIsActive:*(a1 + 48)];
      [v5 _handleWatchStatusAndCloudKitAccountStatusChange];
    }

    v11 = +[NSDate date];
    [v5 setLastPhoneCloudKitAccountFetchTimestamp:v11];
  }
}

void sub_1000E7754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E7778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7850;
  block[3] = &unk_10083ABA0;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_1000E7850(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    ASLoggingInitialize();
    v4 = ASLogDefault;
    if (v3)
    {
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_10069C2C8((a1 + 32), v4);
      }
    }

    else
    {
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully fetched watch account info from NSS", buf, 2u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [*(a1 + 40) objectForKeyedSubscript:kNSSAccountsKey];
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v22 = WeakRetained;
        v8 = *v24;
        v9 = kNSSAccountIsPrimaryiCloudAccountKey;
        v10 = kNSSAccountUsernameKey;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:v9];
            v14 = [v13 BOOLValue];

            ASLoggingInitialize();
            v15 = ASLogDefault;
            if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = [v12 objectForKeyedSubscript:v10];
              *buf = 138412546;
              v28 = v17;
              v29 = 1024;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NSS found account: %@, primary=%d", buf, 0x12u);
            }

            if (v14)
            {
              v18 = 1;
              goto LABEL_19;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_19:
        WeakRetained = v22;
      }

      else
      {
        v18 = 0;
      }

      if ([WeakRetained watchCloudKitAccountAssumedToExist])
      {
        ASLoggingInitialize();
        v19 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Currently assuming parity between phone and watch, ignoring this result", buf, 2u);
        }
      }

      else
      {
        if (v18 != [WeakRetained watchCloudKitAccountExists])
        {
          ASLoggingInitialize();
          v20 = ASLogDefault;
          if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v28) = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Watch CloudKit status changed to %{BOOL}d; handling.", buf, 8u);
          }

          [WeakRetained setWatchCloudKitAccountExists:v18];
          [WeakRetained _handleWatchStatusAndCloudKitAccountStatusChange];
        }

        v21 = +[NSDate date];
        [WeakRetained setLastWatchCloudKitAccountFetchTimestamp:v21];
      }
    }

    [WeakRetained setWatchCloudKitAccountFetchInProgress:0];
  }
}

void sub_1000E8950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E896C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonControllerDidUpdate];
}

void sub_1000E99F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E9A14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained delegate];
  v8 = objc_loadWeakRetained((a1 + 32));
  [v7 achievementsView:v8 didTapAchievement:v6 cell:v5];
}

void sub_1000E9E78(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F99D0;
  qword_1008F99D0 = v1;

  v3 = qword_1008F99D0;

  [v3 setDateFormat:@"a"];
}

void sub_1000E9F10(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F99E0;
  qword_1008F99E0 = v1;

  v3 = qword_1008F99E0;

  [v3 setDateFormat:@"h:mm"];
}

uint64_t sub_1000EA7A8(void *a1)
{
  v1 = a1;
  if (!qword_1008F99F0)
  {
    v2 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v3 = qword_1008F99F0;
    qword_1008F99F0 = v2;
  }

  v4 = _HKActivityCacheDateComponentsFromDate();
  v5 = _HKCacheIndexFromDateComponents();

  return v5;
}

BOOL sub_1000EA830(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = [v8 firstObject];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 lastObject];

  [v12 doubleValue];
  v14 = v13;

  v16 = v14 >= a2 && v11 <= a3;
  if (a2 == a3)
  {
    [NSString stringWithFormat:@"%lld", a2, v21];
  }

  else
  {
    [NSString stringWithFormat:@"(%lld-%lld)", a2, a3];
  }
  v17 = ;
  _HKInitializeLogging();
  v18 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"does not match";
    *buf = 138413314;
    v23 = v7;
    if (v16)
    {
      v19 = @"matching";
    }

    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v14;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Activity summary updates in range (%lld-%lld), %@ %@", buf, 0x34u);
  }

  return v16;
}

void sub_1000EB098(double *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v17 = v6;
  if (a3)
  {
    v7 = [*(*(a1 + 5) + 136) objectAtIndexedSubscript:a3 - 1];
    v8 = [v7 nextWeekStartDate];
    [v17 setMonthWeekStart:v8];

    [v7 frame];
    MaxY = CGRectGetMaxY(v19);
    v10 = a1[8];
    [v17 preferredHeight];
    [v17 setFrame:{0.0, MaxY, v10, v11}];
  }

  else
  {
    [v6 setMonthWeekStart:*(a1 + 4)];
    v12 = a1[8];
    [v17 preferredHeight];
    [v17 setFrame:{0.0, 0.0, v12, v13}];
    [v17 preferredHeight];
    [*(*(a1 + 5) + 112) setContentOffset:{0.0, v14}];
  }

  v15 = [v17 currentWeekStartDate];
  v16 = [v15 isEqualToDate:*(*(a1 + 5) + 56)];

  if (v16)
  {
    objc_storeStrong((*(a1 + 5) + 48), a2);
  }
}

void sub_1000EB9D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC10FitnessApp24ARUIRendererCacheWrapper getSharedRenderer];
  v4 = [ARUIRingsImageFactory renderRingGroup:v2 withRenderer:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EBABC;
  v6[3] = &unk_10083A970;
  v7 = *(a1 + 40);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000EBFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ringImageView];
  [v4 center];
  v6 = v5;

  v7 = *(*(a1 + 32) + 32) - *(*(a1 + 32) + 24);
  [v3 backingOriginOffset];
  v9 = v7 + v8;
  [v3 additionalSpacing];
  v11 = v9 + v10;
  v12 = [v3 ringImageView];

  [v12 setCenter:{v6, v11}];
}

void sub_1000ECD2C(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = [*(*(a1 + 32) + 8) count];
    a3 = &v5[a3 - HKDaysInAWeek];
  }

  [v15 setBackingOriginOffset:*(a1 + 48)];
  [*(a1 + 40) heightForCellAtIndex:a3 % 7 oneTime:0];
  [v15 setAdditionalSpacing:?];
  v6 = [v15 ringImageView];
  [v6 center];
  v8 = v7;

  v9 = *(*(a1 + 32) + 32) - *(*(a1 + 32) + 24);
  [v15 backingOriginOffset];
  v11 = v9 + v10;
  [v15 additionalSpacing];
  v13 = v11 + v12;
  v14 = [v15 ringImageView];
  [v14 setCenter:{v8, v13}];
}

void sub_1000ED3C8(uint64_t a1)
{
  v2 = [*(a1 + 32) monthScrollDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) monthScrollDelegate];
    [v3 dateSelected:*(a1 + 40)];
  }
}

void sub_1000ED670(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 doubleValue];
  v6 = v5;
  v7 = +[ActivitySummaryCache sharedInstance];
  v8 = [v7 activitySummaryForCacheIndex:v6];

  v9 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:*(a1 + 40) + a3];
  v10 = *(*(a1 + 32) + 104);
  if (v8)
  {
    v11 = [v10 isPausedForActivitySummary:v8];
  }

  else
  {
    v11 = [v10 isPausedForActivitySummaryCacheIndex:v6];
  }

  v12 = v11;
  [v8 setPaused:v11];
  [v9 hk_configureWithActivitySummary:v8 animated:0];
  [v9 setIsPaused:v12];
  v13 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED7D8;
  block[3] = &unk_10083A8B0;
  v16 = v9;
  v14 = v9;
  dispatch_async(v13, block);
}

void sub_1000ED7D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC10FitnessApp24ARUIRendererCacheWrapper getSharedRenderer];
  v4 = [ARUIRingsImageFactory renderRingGroup:v2 withRenderer:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ED8C0;
  v6[3] = &unk_10083A970;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000ED8C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ringImageView];
  [v2 setImage:v1];
}

id sub_1000ED9C0(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 doubleValue];
  v6 = [*(*(a1 + 32) + 72) existsWorkoutOnCacheIndex:v5];
  v7 = *(a1 + 40);

  return [v7 setHasWorkout:v6 onDayIndex:a3];
}

void sub_1000EEEE8(void *a1)
{
  v1 = a1;
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [UIFont systemFontOfSize:60.0 / v4];
  v6 = [UIColor colorWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
  v20[0] = NSFontAttributeName;
  v20[1] = NSForegroundColorAttributeName;
  v21[0] = v5;
  v21[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v8 = [NSDateFormatter localizedStringFromDate:v1 dateStyle:3 timeStyle:0];

  v9 = [[NSAttributedString alloc] initWithString:v8 attributes:v7];
  [v8 sizeWithAttributes:v7];
  v11 = v10;
  v13 = v12;
  v14 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v16 = v15;

  [v5 ascender];
  v17 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v19 = v18;

  [v9 drawInRect:{v16, v19, v11, v13}];
}

void sub_1000EF114(void *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = objc_alloc_init(NSMutableParagraphStyle);
  [v12 setAlignment:0];
  v20[0] = NSFontAttributeName;
  v20[1] = NSForegroundColorAttributeName;
  v21[0] = v10;
  v21[1] = v9;
  v20[2] = NSParagraphStyleAttributeName;
  v21[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  v14 = [NSAttributedString alloc];

  v15 = [v14 initWithString:v11 attributes:v13];
  [v11 sizeWithAttributes:v13];
  v17 = v16;
  v19 = v18;

  [v15 drawInRect:{a4, a5, v17, v19}];
}

void sub_1000EF284(void *a1, void *a2, void *a3, double a4, double a5)
{
  v19[0] = NSFontAttributeName;
  v19[1] = NSForegroundColorAttributeName;
  v20[0] = a2;
  v20[1] = a3;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [NSAttributedString alloc];

  v14 = [v13 initWithString:v11 attributes:v12];
  [v11 sizeWithAttributes:v12];
  v16 = v15;
  v18 = v17;

  [v14 drawInRect:{a4, a5, v16, v18}];
}

void sub_1000EF3C4(void *a1, void *a2, void *a3, void *a4, void *a5, double a6, double a7)
{
  v36[0] = NSFontAttributeName;
  v36[1] = NSForegroundColorAttributeName;
  v37[0] = a3;
  v37[1] = a5;
  v33 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  v18 = [[NSMutableAttributedString alloc] initWithString:v16 attributes:v17];
  v34[0] = UIFontFeatureTypeIdentifierKey;
  v34[1] = UIFontFeatureSelectorIdentifierKey;
  v35[0] = &off_10086E230;
  v35[1] = &off_10086E248;
  v32 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v19 = [v13 fontDescriptor];

  v20 = [v19 fontDescriptorByAddingAttributes:v32];

  v21 = v14;
  [v14 pointSize];
  v22 = [UIFont fontWithDescriptor:v20 size:?];
  v23 = [v18 string];
  v24 = [v23 rangeOfString:v15];
  v26 = v25;

  [v18 addAttribute:NSFontAttributeName value:v22 range:{v24, v26}];
  v27 = objc_alloc_init(NSMutableParagraphStyle);

  [v27 setAlignment:0];
  [v18 addAttribute:NSParagraphStyleAttributeName value:v27 range:{0, objc_msgSend(v18, "length")}];
  [v16 sizeWithAttributes:v17];
  v29 = v28;
  v31 = v30;

  [v18 drawInRect:{a6, a7, v29, v31}];
}

void sub_1000EF66C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = [UIColor colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
  v10 = +[UIColor clearColor];
  v14[0] = [v10 CGColor];
  v14[1] = [v9 CGColor];
  v11 = [NSArray arrayWithObjects:v14 count:2];
  v12 = CGGradientCreateWithColors(DeviceRGB, v11, 0);

  CurrentContext = UIGraphicsGetCurrentContext();
  v15.x = a1;
  v15.y = a2;
  v16.x = a3;
  v16.y = a4;
  CGContextDrawLinearGradient(CurrentContext, v12, v15, v16, 0);
  CGColorSpaceRelease(DeviceRGB);
  CGGradientRelease(v12);
}

void sub_1000EF7B4(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = [v7 metricTitleAndValueInfo];
  v9 = [v8 count];

  v10 = &_s7SwiftUI16PlainButtonStyleVMa_ptr_0;
  v11 = UICollectionViewCompositionalLayout_ptr;
  if (v9 < 3)
  {
    v24 = 0.55;
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    Mutable = CGPathCreateMutable();
    v14 = a4 * 0.5 + 8.0;
    v15 = [v7 metricTitleAndValueInfo];
    v16 = [v15 objectAtIndexedSubscript:1];
    v17 = [v16 title];
    v60 = NSFontAttributeName;
    v18 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
    v61 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    [v17 sizeWithAttributes:v19];
    v21 = v20;

    v11 = UICollectionViewCompositionalLayout_ptr;
    v22 = v21 + 24.0 > v14;
    if (v21 + 24.0 <= v14)
    {
      v23 = a4 * 0.5 + 8.0;
    }

    else
    {
      v23 = v14 + 12.0;
    }

    v24 = dbl_1006D1C30[v22];
    CGPathMoveToPoint(Mutable, 0, v23, a3 + 7.0);
    CGPathAddLineToPoint(Mutable, 0, v23, a3 + 7.0 + 39.0);
    CGPathCloseSubpath(Mutable);
    CGContextAddPath(CurrentContext, Mutable);
    v25 = +[UIColor whiteColor];
    v26 = [v25 colorWithAlphaComponent:0.2];
    CGContextSetStrokeColorWithColor(CurrentContext, [v26 CGColor]);

    CGContextSetLineWidth(CurrentContext, 2.0);
    CGContextSetLineCap(CurrentContext, kCGLineCapRound);
    CGContextStrokePath(CurrentContext);
    CGPathRelease(Mutable);
  }

  v27 = [v7 metricTitleAndValueInfo];
  v28 = [v27 count];

  if (v28 >= 2)
  {
    v52 = UIFontSystemFontDesignRounded;
    v29 = 1;
    v53 = v7;
    do
    {
      v30 = [v7 metricTitleAndValueInfo];
      v31 = [v30 objectAtIndexedSubscript:v29];

      v32 = [v10[331] systemFontOfSize:14.0 weight:UIFontWeightMedium];
      v33 = [v31 title];
      v34 = [v11[4] whiteColor];
      v35 = [v34 colorWithAlphaComponent:0.5];
      v54 = v32;
      sub_1000EF114(v33, v32, v35, a2, a3);

      v36 = [v31 value];
      if ([v36 length] <= 7)
      {
        v37 = 30.0;
      }

      else
      {
        v37 = 26.0;
      }

      v38 = [v10[331] systemFontOfSize:v52 weight:v37 design:UIFontWeightMedium];
      v58 = UIFontDescriptorFeatureSettingsAttribute;
      v55[0] = UIFontFeatureTypeIdentifierKey;
      v55[1] = UIFontFeatureSelectorIdentifierKey;
      v56[0] = &off_10086E230;
      v56[1] = &off_10086E248;
      v39 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
      v57 = v39;
      v40 = [NSArray arrayWithObjects:&v57 count:1];
      v59 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];

      v42 = [v38 fontDescriptor];
      v43 = [v42 fontDescriptorByAddingAttributes:v41];

      v44 = v10;
      v45 = [v10[331] fontWithDescriptor:v43 size:v37];
      v46 = [v31 unit];

      v47 = [v31 value];
      if (v46)
      {
        v48 = [v31 unit];
        v49 = [v31 valueColor];
        sub_1000EF3C4(v47, v48, v38, v45, v49, a2, a3 + 16.0);
      }

      else
      {
        v48 = [v31 valueColor];
        sub_1000EF284(v47, v38, v48, a2, a3 + 16.0);
      }

      a2 = a4 * v29 * v24 + 8.0;
      ++v29;
      v7 = v53;
      v50 = [v53 metricTitleAndValueInfo];
      v51 = [v50 count];

      v10 = v44;
      v11 = UICollectionViewCompositionalLayout_ptr;
    }

    while (v29 < v51);
  }
}

id sub_1000EFD50(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v33.width = a2;
  v33.height = a3;
  UIGraphicsBeginImageContextWithOptions(v33, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = [v5 routeImage];

  if (v7)
  {
    v8 = -56.0;
  }

  else
  {
    v9 = [UIColor colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
    [v9 setFill];

    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = a2;
    v34.size.height = a3;
    CGContextFillRect(CurrentContext, v34);
    v8 = -61.0;
  }

  CGContextTranslateCTM(CurrentContext, 0.0, a3);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v10 = a3 + v8;
  v11 = [v5 iconImage];
  v12 = [v11 CGImage];
  v35.origin.x = 24.0;
  v35.origin.y = v10;
  v35.size.width = 40.0;
  v35.size.height = 40.0;
  CGContextDrawImage(CurrentContext, v35, v12);

  CGContextRestoreGState(CurrentContext);
  v13 = [v5 metricTitleAndValueInfo];
  v14 = [v13 objectAtIndexedSubscript:0];

  v15 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightMedium];
  v36.origin.x = 24.0;
  v36.origin.y = v10;
  v36.size.width = 40.0;
  v36.size.height = 40.0;
  v16 = CGRectGetMidX(v36) + 20.0 + 16.0;
  v17 = [v14 title];
  v30 = NSFontAttributeName;
  v31 = v15;
  v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v17 sizeWithAttributes:v18];
  v20 = v19;

  if (v16 + v20 > a2)
  {
    v21 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightMedium];

    v37.origin.x = 24.0;
    v37.origin.y = v10;
    v37.size.width = 40.0;
    v37.size.height = 40.0;
    v16 = CGRectGetMidX(v37) + 20.0 + 10.0;
    v15 = v21;
  }

  v38.origin.x = 24.0;
  v38.origin.y = v10;
  v38.size.width = 40.0;
  v38.size.height = 40.0;
  v22 = a3 - CGRectGetMidY(v38) + -10.0;
  v23 = [v14 title];
  v24 = +[UIColor whiteColor];
  v25 = 24.0;
  if (v7)
  {
    v26 = a3 + -111.0;
  }

  else
  {
    v25 = v16;
    v26 = v22;
  }

  if (v7)
  {
    v27 = a3 + -111.0 + 39.0;
  }

  else
  {
    v27 = 74.0;
  }

  sub_1000EF114(v23, v15, v24, v25, v26);

  sub_1000EF7B4(v5, 24.0, v27, a2);
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

id sub_1000F00D0(void *a1)
{
  v1 = a1;
  v2 = [v1 routeImage];

  v3 = 140.0;
  if (v2)
  {
    v4 = 240.0;
  }

  else
  {
    v4 = 140.0;
  }

  v10.width = 270.0;
  v10.height = v4;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  if (v2)
  {
    v5 = [v1 routeImage];
    v3 = 240.0;
    [v5 drawInRect:{0.0, 0.0, 270.0, 240.0}];

    sub_1000EF66C(270.0, 0.0, 270.0, 240.0);
    sub_1000EF66C(270.0, 0.0, 0.0, 240.0);
  }

  v6 = sub_1000EFD50(v1, 270.0, v4);
  [v6 drawInRect:{0.0, 0.0, 270.0, v3}];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

id sub_1000F021C(void *a1)
{
  v1 = a1;
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = 1200.0 / v4;
  v6 = [v1 unearned];
  v7 = 0.65;
  if (v6)
  {
    v7 = 0.75;
  }

  v8 = v5 * v7;
  v9 = objc_alloc_init(AAUIBadgeImageFactory);
  v10 = [v9 thumbnailImageForAchievement:v1 size:{v8, v8}];
  v11 = (v5 - v8) * 0.5;
  if ([v1 unearned])
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + -30.0;
  }

  v22.width = v5;
  v22.height = v5;
  UIGraphicsBeginImageContextWithOptions(v22, 1, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = +[UIColor blackColor];
  [v14 setFill];

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v5;
  v23.size.height = v5;
  CGContextFillRect(CurrentContext, v23);
  [v10 drawAtPoint:{v11, v12}];
  if (([v1 unearned] & 1) == 0)
  {
    v15 = [v1 relevantEarnedInstance];
    v16 = [v15 earnedDateComponents];
    v17 = +[NSCalendar hk_gregorianCalendar];
    v18 = [v17 dateFromComponents:v16];

    sub_1000EEEE8(v18);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

void sub_1000F1FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F1FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F20B0;
    v6[3] = &unk_10083A970;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_1000F20B0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  [*(a1 + 32) _fetchBurnBarScoreSummary];
  [*(a1 + 32) _createGuidedRunMediaMomentsSection];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained reloadData];
}

void sub_1000F21E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F220C(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[seymour] fetched burn bar score (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F2348;
    v7[3] = &unk_10083A970;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_1000F2348(uint64_t a1)
{
  *(*(a1 + 32) + 53) = 1;
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  [*(a1 + 32) _createBurnBarSection];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained reloadData];
}

void sub_1000F2E50(uint64_t a1)
{
  [*(a1 + 32) _fetchPreferredTrackDistanceUnit];
  [*(a1 + 32) _createTrackLapsSection];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

void sub_1000F351C(uint64_t a1)
{
  [*(a1 + 32) _createAndInsertValuesSection];
  [*(a1 + 32) _createSummarySubSections];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

void sub_1000F3828(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) setSwimDistanceByStrokeStyle:v8];
    v6 = [*(a1 + 32) swimDistanceByStrokeStyleUpdateBlock];

    if (v6)
    {
      v7 = [*(a1 + 32) swimDistanceByStrokeStyleUpdateBlock];
      (v7)[2](v7, v8);
    }
  }
}

void sub_1000F38D4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) setSwimDistanceByStrokeStyle:v8];
    v6 = [*(a1 + 32) swimDistanceByStrokeStyleUpdateBlock];

    if (v6)
    {
      v7 = [*(a1 + 32) swimDistanceByStrokeStyleUpdateBlock];
      (v7)[2](v7, v8);
    }
  }
}

void sub_1000F40C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F40EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v8 = objc_alloc_init(_CHWorkoutDetailTrackLapTableItem);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 40)]);

    [(_CHWorkoutDetailTrackLapTableItem *)v8 setLapIndex:-1];
    [v7 addObject:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F42BC;
  v16[3] = &unk_10083C050;
  objc_copyWeak(v18, (a1 + 32));
  v18[1] = *(a1 + 40);
  v11 = v7;
  v17 = v11;
  [v5 enumerateObjectsUsingBlock:v16];
  v12 = [NSArray arrayWithArray:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 tableItemsBySection];
  [v14 setObject:v12 atIndexedSubscript:*(a1 + 40)];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _insertTrackLapsSection];

  objc_destroyWeak(v18);
}

void sub_1000F42BC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v11 = objc_alloc_init(_CHWorkoutDetailTrackLapTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailTrackLapTableItem *)v11 setLapIndex:a3 + 1];
  v10 = objc_loadWeakRetained((a1 + 40));
  -[_CHWorkoutDetailTrackLapTableItem setDistanceUnit:](v11, "setDistanceUnit:", [v10 trackDistanceUnit]);

  [(_CHWorkoutDetailTrackLapTableItem *)v11 setTrackLap:v7];
  [*(a1 + 32) addObject:v11];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F4650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F4674(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained formattingManager];
  v9 = [v8 fitnessUIFormattingManager];
  v10 = [v9 unitManager];
  v11 = [v10 userDistanceHKUnitForDistanceType:FIUIDistanceTypeForActivityType()];

  v12 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v13 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v13, "setCellClass:", [v15 objectAtIndexedSubscript:*(a1 + 48)]);

    [(_CHWorkoutDetailSplitTableItem *)v13 setSplitIndex:-1];
    [v12 addObject:v13];
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F48F4;
  v22[3] = &unk_10083C0A0;
  v25 = v27;
  objc_copyWeak(v26, (a1 + 40));
  v26[1] = *(a1 + 48);
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  [v5 enumerateObjectsUsingBlock:v22];
  v18 = [NSArray arrayWithArray:v17];
  v19 = objc_loadWeakRetained((a1 + 40));
  v20 = [v19 tableItemsBySection];
  [v20 setObject:v18 atIndexedSubscript:*(a1 + 48)];

  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 _insertSplitsSection];

  objc_destroyWeak(v26);
  _Block_object_dispose(v27, 8);
}

void sub_1000F48D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 56));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F48F4(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) == 0.0)
  {
    [v11 distanceInMeters];
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  v8 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 64)]);

  [(_CHWorkoutDetailSplitTableItem *)v8 setExpectedSplitDistance:*(*(*(a1 + 48) + 8) + 24)];
  [(_CHWorkoutDetailSplitTableItem *)v8 setSplitIndex:a3];
  [(_CHWorkoutDetailSplitTableItem *)v8 setSplit:v11];
  [(_CHWorkoutDetailSplitTableItem *)v8 setUnit:*(a1 + 32)];
  [*(a1 + 40) addObject:v8];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F4B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F4B5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained formattingManager];
  v9 = [v8 fitnessUIFormattingManager];
  v10 = [v9 unitManager];
  v11 = [v10 userDistanceHKUnitForDistanceType:FIUIDistanceTypeForActivityType()];

  v12 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v13 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v13, "setCellClass:", [v15 objectAtIndexedSubscript:*(a1 + 48)]);

    [(_CHWorkoutDetailSplitTableItem *)v13 setSplitIndex:-1];
    [v12 addObject:v13];
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F4DDC;
  v22[3] = &unk_10083C0A0;
  v25 = v27;
  objc_copyWeak(v26, (a1 + 40));
  v26[1] = *(a1 + 48);
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  [v5 enumerateObjectsUsingBlock:v22];
  v18 = [NSArray arrayWithArray:v17];
  v19 = objc_loadWeakRetained((a1 + 40));
  v20 = [v19 tableItemsBySection];
  [v20 setObject:v18 atIndexedSubscript:*(a1 + 48)];

  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 _insertSplitsSection];

  objc_destroyWeak(v26);
  _Block_object_dispose(v27, 8);
}

void sub_1000F4DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 56));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F4DDC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) == 0.0)
  {
    [v11 distanceInMeters];
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  v8 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 64)]);

  [(_CHWorkoutDetailSplitTableItem *)v8 setExpectedSplitDistance:*(*(*(a1 + 48) + 8) + 24)];
  [(_CHWorkoutDetailSplitTableItem *)v8 setSplitIndex:a3];
  [(_CHWorkoutDetailSplitTableItem *)v8 setSplit:v11];
  [(_CHWorkoutDetailSplitTableItem *)v8 setUnit:*(a1 + 32)];
  [*(a1 + 40) addObject:v8];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F4FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F5014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v30 = v5;
  v31 = objc_alloc_init(NSMutableDictionary);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v29 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = objc_alloc_init(NSMutableArray);
        v10 = [v30 objectForKeyedSubscript:v8];
        if ([v10 count])
        {
          v11 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          v13 = [WeakRetained cellClassesBySection];
          -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [v13 objectAtIndexedSubscript:*(a1 + 40)]);

          [(_CHWorkoutDetailSplitTableItem *)v11 setSplitIndex:-1];
          [v9 addObject:v11];
        }

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000F53C8;
        v32[3] = &unk_10083C0F0;
        objc_copyWeak(v34, (a1 + 32));
        v34[1] = *(a1 + 40);
        v14 = v9;
        v33 = v14;
        [v10 enumerateObjectsUsingBlock:v32];
        [v31 setObject:v14 forKeyedSubscript:v8];

        objc_destroyWeak(v34);
        v7 = v7 + 1;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 currentlySelectedSwimmingPaceFormat]);
  v17 = [v31 objectForKeyedSubscript:v16];
  v18 = [v17 count] == 0;

  if (!v18)
  {
    v19 = objc_loadWeakRetained((a1 + 32));
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 currentlySelectedSwimmingPaceFormat]);
    v21 = [v31 objectForKeyedSubscript:v20];
    v22 = objc_loadWeakRetained((a1 + 32));
    v23 = [v22 tableItemsBySection];
    [v23 setObject:v21 atIndexedSubscript:*(a1 + 40)];
  }

  v24 = [[NSDictionary alloc] initWithDictionary:v31];
  v25 = objc_loadWeakRetained((a1 + 32));
  [v25 setSwimmingSplitItems:v24];

  v26 = objc_loadWeakRetained((a1 + 32));
  [v26 _insertSplitsSection];
}

void sub_1000F53C8(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_alloc_init(_CHWorkoutDetailSplitTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailSplitTableItem *)v10 setSplitIndex:a3];
  [(_CHWorkoutDetailSplitTableItem *)v10 setSwimmingSplit:v7];

  [*(a1 + 32) addObject:v10];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F5594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F55B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v8 = objc_alloc_init(_CHWorkoutDetailSegmentTableItem);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 40)]);

    [(_CHWorkoutDetailSegmentTableItem *)v8 setSegmentIndex:-1];
    [v7 addObject:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F5788;
  v16[3] = &unk_10083C140;
  objc_copyWeak(v18, (a1 + 32));
  v18[1] = *(a1 + 40);
  v11 = v7;
  v17 = v11;
  [v5 enumerateObjectsUsingBlock:v16];
  v12 = [NSArray arrayWithArray:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 tableItemsBySection];
  [v14 setObject:v12 atIndexedSubscript:*(a1 + 40)];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _insertSegmentsSection];

  objc_destroyWeak(v18);
}

void sub_1000F5788(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_alloc_init(_CHWorkoutDetailSegmentTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailSegmentTableItem *)v10 setSegmentIndex:a3 + 1];
  [(_CHWorkoutDetailSegmentTableItem *)v10 setSegment:v7];

  [*(a1 + 32) addObject:v10];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F596C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F5990(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(_CHWorkoutDetailDownhillRunTableItem);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 40)]);

    [(_CHWorkoutDetailDownhillRunTableItem *)v8 setDownhillRunIndex:-1];
    [v7 addObject:v8];
    v11 = [[CHWorkoutDownhillRunsStats alloc] initWithDownhillRunBridges:v5];
    v12 = objc_alloc_init(_CHWorkoutDetailDownhillRunsStatsTableItem);
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v12, "setCellClass:", [v14 objectAtIndexedSubscript:*(a1 + 40)]);

    [(_CHWorkoutDetailDownhillRunsStatsTableItem *)v12 setDownhillRunsStats:v11];
    [v7 addObject:v12];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F5C38;
    v21[3] = &unk_10083C168;
    objc_copyWeak(v23, (a1 + 32));
    v23[1] = *(a1 + 40);
    v15 = v7;
    v22 = v15;
    [v5 enumerateObjectsUsingBlock:v21];
    v16 = [NSArray arrayWithArray:v15];
    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 tableItemsBySection];
    [v18 setObject:v16 atIndexedSubscript:*(a1 + 40)];

    v19 = objc_loadWeakRetained((a1 + 32));
    [v19 _insertDownhillRunsSection];

    objc_destroyWeak(v23);
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No downhill runs for downhill snow sport workout.  Hiding Runs card.", buf, 2u);
    }
  }
}

void sub_1000F5C38(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_alloc_init(_CHWorkoutDetailDownhillRunTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailDownhillRunTableItem *)v10 setDownhillRunIndex:a3 + 1];
  [(_CHWorkoutDetailDownhillRunTableItem *)v10 setDownhillRun:v7];

  [*(a1 + 32) addObject:v10];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F5E0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F5E30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v8 = objc_alloc_init(_CHWorkoutDetailIntervalTableItem);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 40)]);

    [(_CHWorkoutDetailIntervalTableItem *)v8 setIntervalIndex:-1];
    [v7 addObject:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F6000;
  v16[3] = &unk_10083C190;
  objc_copyWeak(v18, (a1 + 32));
  v18[1] = *(a1 + 40);
  v11 = v7;
  v17 = v11;
  [v5 enumerateObjectsUsingBlock:v16];
  v12 = [NSArray arrayWithArray:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 tableItemsBySection];
  [v14 setObject:v12 atIndexedSubscript:*(a1 + 40)];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _insertIntervalsSection];

  objc_destroyWeak(v18);
}

void sub_1000F6000(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_alloc_init(_CHWorkoutDetailIntervalTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailIntervalTableItem *)v10 setIntervalIndex:a3 + 1];
  [(_CHWorkoutDetailIntervalTableItem *)v10 setInterval:v7];

  [*(a1 + 32) addObject:v10];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F6214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000F6238(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v8 = objc_alloc_init(_CHWorkoutDetailSwimSetTableItem);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v8, "setCellClass:", [v10 objectAtIndexedSubscript:*(a1 + 40)]);

    [v7 addObject:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F63FC;
  v16[3] = &unk_10083C1B8;
  objc_copyWeak(v18, (a1 + 32));
  v18[1] = *(a1 + 40);
  v11 = v7;
  v17 = v11;
  [v5 enumerateObjectsUsingBlock:v16];
  v12 = [NSArray arrayWithArray:v11];
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 tableItemsBySection];
  [v14 setObject:v12 atIndexedSubscript:*(a1 + 40)];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _insertSwimSetsSection];

  objc_destroyWeak(v18);
}

void sub_1000F63FC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_alloc_init(_CHWorkoutDetailSwimSetTableItem);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v9 objectAtIndexedSubscript:*(a1 + 48)]);

  [(_CHWorkoutDetailSwimSetTableItem *)v10 setSetIndex:a3 + 1];
  [(_CHWorkoutDetailSwimSetTableItem *)v10 setSet:v7];

  [*(a1 + 32) addObject:v10];
  if (a3 >= 4)
  {
    *a4 = 1;
  }
}

void sub_1000F6AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F6B30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HKLocationReadings alloc];
  v5 = [v3 firstObject];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained workout];
  v8 = [v4 initWithLocation:v5 workout:v7];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F6C50;
  v10[3] = &unk_10083AB50;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v8;
  v9 = v8;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_1000F6C50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleLocations:*(a1 + 32)];
}

void sub_1000F6CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  v9 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[routes] Received an update from the anchored route query, loading data through location fetcher.", &v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fetchLocations];
    goto LABEL_7;
  }

  if (v9)
  {
    WeakRetained = v8;
    v11 = [v7 debugDescription];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "[routes] Error from anchored route query: %@", &v12, 0xCu);

LABEL_7:
  }
}

void sub_1000F6F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F6F94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F706C;
  block[3] = &unk_10083C208;
  v12 = a6;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  objc_copyWeak(&v14, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v14);
}

void sub_1000F706C(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069C3C4(v1, v2);
    }
  }

  else
  {
    v4 = [*(a1 + 40) firstObject];
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (v4)
    {
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v8 = [WeakRetained workout];
        v9 = [v8 fiui_finalWorkoutUUID];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[mirror] Workout found for UUID: %@", &v12, 0xCu);
      }

      v10 = objc_loadWeakRetained((a1 + 48));
      [v10 setWorkout:v4];

      v11 = objc_loadWeakRetained((a1 + 48));
      [v11 _refreshWorkoutDataWithUpdatedWorkout];
    }

    else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069C440(a1, v5);
    }
  }
}

void sub_1000F7200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F72D8;
  block[3] = &unk_10083C208;
  v12 = a6;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  objc_copyWeak(&v14, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v14);
}

void sub_1000F72D8(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069C4FC(v1, v2);
    }
  }

  else
  {
    v4 = [*(a1 + 40) firstObject];
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (v4)
    {
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v8 = [WeakRetained workout];
        v9 = [v8 fiui_finalWorkoutUUID];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[mirror] Workout found for UUID: %@", &v12, 0xCu);
      }

      v10 = objc_loadWeakRetained((a1 + 48));
      [v10 setWorkout:v4];

      v11 = objc_loadWeakRetained((a1 + 48));
      [v11 _refreshWorkoutDataWithUpdatedWorkout];
    }

    else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069C440(a1, v5);
    }
  }
}

void sub_1000F7654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F7678(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained workout];
    v8 = [v7 UUID];
    *buf = 138412546;
    v14 = v8;
    v15 = 2048;
    v16 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[routes] Finished fetching data for workout %@ with %ld location readings", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F7808;
  v10[3] = &unk_10083AB50;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v3;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_1000F7808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleLocations:*(a1 + 32)];
}

void sub_1000F8148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F8170(id a1, UIMutableTraits *a2)
{
  v2 = a2;
  [(UIMutableTraits *)v2 setUserInterfaceStyle:2];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  [(UIMutableTraits *)v2 setDisplayScale:?];
}

void sub_1000F81DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRouteImageForSharing:v3];

  v8 = objc_loadWeakRetained((a1 + 32));
  v5 = [v8 locationFetcherObserver];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 locationReadings];
  [v5 completedFetchWithLocationReadings:v7];
}

void sub_1000F9E50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 formattingManager];
  v6 = [v5 formattedAverageSwimPaceWithDuration:v4 context:@"WorkoutDetailDisplayContext"];

  [*(a1 + 32) setValueAttrString:v6];
  v7 = [*(a1 + 32) updateBlock];

  if (v7)
  {
    v9 = [*(a1 + 32) updateBlock];
    v8 = [*(a1 + 32) valueAttrString];
    v9[2](v9, v8);
  }
}

void sub_1000F9F48(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*(*(a1 + 32) + 50) != (v10 != 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _createAndInsertValuesSection];
  }

  if ([v14 count] || objc_msgSend(v9, "count"))
  {
    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 _createHeartRateSectionWithHeartRateReadings:v14 averageHeartRate:v10 recoveryHeartRateReadings:v9];
  }
}

void sub_1000FA030(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && [v6 count])
  {
    [*(a1 + 32) _createPowerSectionWithPowerSamples:v6];
  }
}

void sub_1000FBC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FBC64(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FBCF4;
  v4[3] = &unk_10083A8B0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 setLocation:a2 completion:v4];
}

id sub_1000FBCF4(uint64_t a1)
{
  [*(a1 + 32) beginUpdates];
  v2 = *(a1 + 32);

  return [v2 endUpdates];
}

id sub_1000FBD30(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSwimDistanceByStrokeStyle:a2];
  [*(a1 + 40) beginUpdates];
  v3 = *(a1 + 40);

  return [v3 endUpdates];
}

void sub_1000FBD98(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FBE78;
  v6[3] = &unk_10083A710;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 presentViewController:v3 completion:v6];

  objc_destroyWeak(&v7);
}

void sub_1000FBE78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained analyticsHandler];
  [v1 didPresentMediaMomentItem];
}

void sub_1000FCAD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000FCAF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained analyticsHandler];
  [v2 didExpandDetailSection:*(a1 + 40)];
}

void sub_1000FCB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHDivingDetailChartDetailViewController alloc];
  v3 = [WeakRetained divingDataCalculator];
  v4 = [(CHDivingDetailChartDetailViewController *)v2 initWithDataCalculator:v3];

  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  v6 = [WeakRetained delegate];
  [v6 presentViewController:v5 completion:*(a1 + 32)];
}

void sub_1000FCC1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailedMetricsViewController alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [WeakRetained dataCalculator];
  v6 = [WeakRetained formattingManager];
  v7 = [WeakRetained locationReadings];
  v8 = [(CHWorkoutDetailedMetricsViewController *)v2 initWithWorkout:v3 workoutActivity:v4 dataCalculator:v5 formattingManager:v6 locationReadings:v7];

  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  v10 = [WeakRetained delegate];
  [v10 presentViewController:v9 completion:*(a1 + 32)];
}

void sub_1000FCD50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) isSwimmingActivity])
  {
    v2 = [CHWorkoutDetailSwimmingSetDataSource alloc];
    v3 = [WeakRetained workout];
    v4 = [WeakRetained workoutActivity];
    v5 = [WeakRetained dataCalculator];
    v6 = [WeakRetained formattingManager];
    v7 = [(CHWorkoutDetailSwimmingSetDataSource *)v2 initWithWorkout:v3 workoutActivity:v4 dataCalculator:v5 formattingManager:v6];

    v8 = [[CHWorkoutDetailedBasicViewController alloc] initWithSwimmingSetDataSource:v7];
    v9 = [[UINavigationController alloc] initWithRootViewController:v8];
    v10 = [WeakRetained delegate];
    [v10 presentViewController:v9 completion:*(a1 + 40)];
  }
}

void sub_1000FCE8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailSwimmingSplitDataSource alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [WeakRetained dataCalculator];
  v6 = [WeakRetained formattingManager];
  v7 = [(CHWorkoutDetailSwimmingSplitDataSource *)v2 initWithWorkout:v3 workoutActivity:v4 dataCalculator:v5 formattingManager:v6];

  v8 = [[CHWorkoutDetailedBasicViewController alloc] initWithSwimmingSplitDataSource:v7];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  v10 = [WeakRetained delegate];
  [v10 presentViewController:v9 completion:*(a1 + 32)];
}

void sub_1000FCFBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailSplitDataSource alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [WeakRetained dataCalculator];
  v6 = [WeakRetained formattingManager];
  v7 = [v6 fitnessUIFormattingManager];
  v8 = [(CHWorkoutDetailSplitDataSource *)v2 initWithWorkout:v3 workoutActivity:v4 dataCalculator:v5 formattingManager:v7];

  v9 = [[CHWorkoutDetailedBasicViewController alloc] initWithSplitDataSource:v8];
  v10 = [[UINavigationController alloc] initWithRootViewController:v9];
  v11 = [WeakRetained delegate];
  [v11 presentViewController:v10 completion:*(a1 + 32)];
}

void sub_1000FD104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailSegmentDataSource alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained dataCalculator];
  v5 = [WeakRetained trackDistanceUnit];
  v6 = [WeakRetained formattingManager];
  v7 = [(CHWorkoutDetailSegmentDataSource *)v2 initWithWorkout:v3 dataCalculator:v4 trackDistanceUnit:v5 formattingManager:v6];

  v8 = [[CHWorkoutDetailedBasicViewController alloc] initWithSegmentDataSource:v7];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  v10 = [WeakRetained delegate];
  [v10 presentViewController:v9 completion:*(a1 + 32)];
}

void sub_1000FD22C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained formattingManager];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [v2 supportsDownhillRunsCountForWorkout:v3 workoutActivity:v4];

  if (v5)
  {
    v6 = [CHWorkoutDetailDownhillRunDataSource alloc];
    v7 = [WeakRetained workout];
    v8 = [WeakRetained dataCalculator];
    v9 = [WeakRetained formattingManager];
    v10 = [(CHWorkoutDetailDownhillRunDataSource *)v6 initWithWorkout:v7 dataCalculator:v8 formattingManager:v9];

    v11 = [[CHWorkoutDetailedBasicViewController alloc] initWithDownhillRunDataSource:v10];
    v12 = [[UINavigationController alloc] initWithRootViewController:v11];
    v13 = [WeakRetained delegate];
    [v13 presentViewController:v12 completion:*(a1 + 32)];
  }
}

void sub_1000FD394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained workout];
  v3 = [v2 isIntervalWorkout];

  if (v3)
  {
    v4 = [CHWorkoutDetailIntervalDataSource alloc];
    v5 = [WeakRetained workout];
    v6 = [WeakRetained dataCalculator];
    v7 = [WeakRetained formattingManager];
    v8 = [(CHWorkoutDetailIntervalDataSource *)v4 initWithWorkout:v5 dataCalculator:v6 formattingManager:v7];

    v9 = [[CHWorkoutDetailedBasicViewController alloc] initWithIntervalDataSource:v8];
    v10 = [[UINavigationController alloc] initWithRootViewController:v9];
    v11 = [WeakRetained delegate];
    [v11 presentViewController:v10 completion:*(a1 + 32)];
  }
}

void sub_1000FD4C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained workout];
  v3 = [v2 supportsTrackWorkout];

  if (v3)
  {
    v4 = [CHWorkoutDetailTrackLapDataSource alloc];
    v5 = [WeakRetained workout];
    v6 = [WeakRetained dataCalculator];
    v7 = [WeakRetained formattingManager];
    v8 = [(CHWorkoutDetailTrackLapDataSource *)v4 initWithWorkout:v5 dataCalculator:v6 formattingManager:v7];

    -[CHWorkoutDetailTrackLapDataSource setDistanceUnit:](v8, "setDistanceUnit:", [WeakRetained trackDistanceUnit]);
    v9 = [[CHWorkoutDetailedBasicViewController alloc] initWithTrackLapDataSource:v8];
    v10 = [[UINavigationController alloc] initWithRootViewController:v9];
    v11 = [WeakRetained delegate];
    [v11 presentViewController:v10 completion:*(a1 + 32)];
  }
}

void sub_1000FD610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailedHeartRateViewController alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [WeakRetained formattingManager];
  v6 = [(CHWorkoutDetailedHeartRateViewController *)v2 initWithWorkout:v3 workoutActivity:v4 formattingManager:v5];

  v7 = [[UINavigationController alloc] initWithRootViewController:v6];
  v8 = [WeakRetained delegate];
  [v8 presentViewController:v7 completion:*(a1 + 32)];
}

void sub_1000FD70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [CHWorkoutDetailedPowerViewController alloc];
  v3 = [WeakRetained workout];
  v4 = [WeakRetained workoutActivity];
  v5 = [WeakRetained healthStore];
  v6 = [WeakRetained formattingManager];
  v7 = -[CHWorkoutDetailedPowerViewController initWithWorkout:workoutActivity:healthStore:formattingManager:isFirstPartyWorkout:](v2, "initWithWorkout:workoutActivity:healthStore:formattingManager:isFirstPartyWorkout:", v3, v4, v5, v6, [WeakRetained workoutIsFirstParty]);

  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  v9 = [WeakRetained delegate];
  [v9 presentViewController:v8 completion:*(a1 + 32)];
}

void sub_1000FD82C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained formattingManager];
  v3 = [WeakRetained workout];
  v4 = [v2 formattedDescriptionForWorkout:v3 context:@"DayViewDisplayContext"];
  v5 = [v4 string];

  v6 = [WeakRetained formattingManager];
  v7 = [WeakRetained workout];
  v8 = [v6 shareTextForWorkout:v7];

  v9 = [CHWorkoutRouteViewController alloc];
  v10 = [WeakRetained locationReadings];
  v11 = sub_1000B882C();
  v12 = [(CHWorkoutRouteViewController *)v9 initWithLocationReadings:v10 title:v5 sharingEnabled:1 shareText:v8 excludedActivityTypes:v11];

  v13 = [[UINavigationController alloc] initWithRootViewController:v12];
  v14 = [WeakRetained delegate];
  [v14 presentViewController:v13 completion:*(a1 + 32)];
}

void sub_1000FD9B0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentEffortViewController:a2 presentationCompletion:*(a1 + 32)];
}

void sub_1000FDB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FDB48(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dataCalculator];
    v7 = [v5 workout];
    v8 = [v5 workoutActivity];
    v9 = [v6 cachedEffortSampleCollectionForWorkout:v7 workoutActivity:v8];

    v10 = [v5 workout];
    v11 = [v10 fiui_activityType];
    v12 = v5[48];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000FDD74;
    v19[3] = &unk_10083A710;
    objc_copyWeak(&v20, (a1 + 40));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FDDDC;
    v16[3] = &unk_10083ABC8;
    objc_copyWeak(&v18, (a1 + 40));
    v13 = v9;
    v17 = v13;
    v14 = [WOEffortBridges makeHostingControllerWithStartingEffort:v3 workoutActivityType:v11 showCurrentWorkloadButton:v12 cancel:v19 completion:v16];

    v15 = [v5 delegate];
    [v15 presentViewController:v14 animated:*(a1 + 48) completion:*(a1 + 32)];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
  }
}

void sub_1000FDD54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1000FDD74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 dismissViewControllerAnimated:1 completion:&stru_10083C448];
}

void sub_1000FDDDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [WeakRetained workout];
  v6 = [WeakRetained workoutActivity];
  v7 = [WeakRetained healthStore];
  [WOEffortBridges saveWithQuantity:v3 effortSampleCollection:v4 workout:v5 workoutActivity:v6 healthStore:v7 canSendAnalytics:1];

  v8 = [WeakRetained delegate];
  [v8 dismissViewControllerAnimated:1 completion:&stru_10083C468];
}

void sub_1000FEC34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 tableItemsBySection];
    v4 = [v3 objectAtIndexedSubscript:1];
    v9 = [v4 firstObject];

    if (v9)
    {
      v5 = [*(*(a1 + 32) + 32) workoutVoiceOutroState];
      if (v5)
      {
        [v9 setOutroState:v5];
      }

      else
      {
        v6 = [*(a1 + 32) tableItemsBySection];
        [v6 setObject:&__NSArray0__struct atIndexedSubscript:1];
      }

      v7 = [*(a1 + 32) tableView];
      v8 = [NSIndexSet indexSetWithIndex:1];
      [v7 reloadSections:v8 withRowAnimation:0];
    }
  }
}

void sub_1000FF1C4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10010202C(uint64_t a1)
{
  v2 = +[UINavigationBar appearance];
  [v2 setBarStyle:a1];
}

void sub_100102094()
{
  v0 = +[UITabBar appearance];
  [v0 setBarStyle:1];

  v1 = +[UITabBar appearance];
  [v1 setTranslucent:1];
}

void sub_100102A0C(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) dateByAddingUnit:16 value:a3 toDate:*(a1 + 40) options:0];
  v6 = sub_1000EA7A8(v5);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 96));
  v8 = [WeakRetained activitySummaryForCacheIndex:v6];

  if (v8)
  {
    if ([v8 isPaused])
    {
      v9 = 1;
    }

    else
    {
      v15 = objc_loadWeakRetained((*(a1 + 48) + 88));
      v9 = [v15 isPausedForActivitySummaryCacheIndex:{objc_msgSend(v8, "_activitySummaryIndex")}];
    }

    [v17 hk_configureWithActivitySummary:v8 animated:0];
  }

  else
  {
    v10 = objc_loadWeakRetained((*(a1 + 48) + 96));
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained((*(a1 + 48) + 96));
      v13 = [v12 isStandaloneForCacheIndex:v6];

      v14 = objc_loadWeakRetained((*(a1 + 48) + 88));
      v9 = [v14 isPausedForActivitySummaryCacheIndex:v6];

      [v17 hk_configureWithActivitySummary:0 isStandaloneFallback:v13 animated:0 completion:0];
    }

    else
    {
      [v17 hk_configureWithActivitySummary:0 animated:0];
      v16 = objc_loadWeakRetained((*(a1 + 48) + 88));
      v9 = [v16 isPausedForActivitySummaryCacheIndex:v6];
    }
  }

  [v17 setIsPaused:v9];
}

void sub_100103770(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 _centerForRingAtIndex:a3];
  [v5 setCenter:?];
}

void sub_1001037CC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 _centerForRingAtIndex:a3];
  [v5 setCenter:?];
}

void sub_100103908(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  v10 = [v5 dateByAddingUnit:16 value:a3 toDate:v6 options:0];
  WeakRetained = objc_loadWeakRetained((a1[6] + 96));
  v9 = [WeakRetained activitySummaryForCacheIndex:sub_1000EA7A8(v10)];

  [v7 hk_configureWithActivitySummary:v9 animated:0];
}

void sub_100104574(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  *&qword_1008F9A00 = 1.0 / v1;
}

uint64_t sub_100104FC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100105860(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001058FC;
  v5[3] = &unk_10083A970;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1001058FC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  if ([*(a1 + 40) count] && (*(*(a1 + 32) + 160) & 1) == 0)
  {
    v2 = [UIBarButtonItem alloc];
    v3 = [UIImage systemImageNamed:@"exclamationmark.bubble"];
    v7 = [v2 initWithImage:v3 style:0 target:*(a1 + 32) action:"_inferenceFeedbackButtonTapped:"];

    [*(*(a1 + 32) + 144) addObject:v7];
    v4 = *(a1 + 32);
    v5 = v4[18];
    v6 = [v4 navigationItem];
    [v6 setRightBarButtonItems:v5];

    *(*(a1 + 32) + 160) = 1;
  }
}

void sub_100105C24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _presentActivityViewControllerForItems:a2];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C698(v5, v6);
    }

    [*(a1 + 32) _shareWorkout];
  }
}

void sub_100105EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100105ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 dismissRemoteViewControllerOnHostController:WeakRetained];
}

BOOL sub_10010646C(id a1, UIViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1001064B8(uint64_t a1)
{
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 popToViewController:*(a1 + 40) animated:1];
}

void sub_100106CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 208));
  objc_destroyWeak((v41 - 160));
  objc_destroyWeak((v41 - 152));
  _Unwind_Resume(a1);
}

void sub_100106DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentConfigurationData:*(a1 + 32)];
}

void sub_100106E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentConfigurationData:*(a1 + 32)];
}

void sub_100106E6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _presentShareSheetWithTitle:@"Try out this workout route!" image:*(a1 + 32) workoutData:*(a1 + 40)];
}

void sub_100106EC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentConfigurationData:*(a1 + 32)];
}

void sub_100106F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _presentShareSheetWithTitle:@"Check out this route I took on my workout!" image:*(a1 + 32) workoutData:*(a1 + 40)];
}

void sub_100106F6C(uint64_t a1)
{
  [*(*(a1 + 32) + 144) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = v2[18];
  v4 = [v2 navigationItem];
  [v4 setRightBarButtonItems:v3];
}

void sub_10010755C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A10;
  qword_1008F9A10 = v1;

  v3 = qword_1008F9A10;

  [v3 setDateStyle:1];
}

void sub_1001075F0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A20;
  qword_1008F9A20 = v1;

  v4 = +[NSLocale currentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"EEE options:MMM d" locale:0, v4];
  [qword_1008F9A20 setDateFormat:v3];
}

void sub_1001076D0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A30;
  qword_1008F9A30 = v1;

  [qword_1008F9A30 setDateStyle:0];
  v3 = qword_1008F9A30;

  [v3 setTimeStyle:1];
}

void sub_100107770(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A40;
  qword_1008F9A40 = v1;

  [qword_1008F9A40 setDateStyle:1];
  [qword_1008F9A40 setTimeStyle:0];
  v3 = qword_1008F9A40;

  [v3 setDoesRelativeDateFormatting:1];
}

void sub_10010781C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A50;
  qword_1008F9A50 = v1;

  v4 = +[NSLocale currentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:v4];
  [qword_1008F9A50 setDateFormat:v3];
}

void sub_100107CF8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9A60;
  qword_1008F9A60 = v1;

  [qword_1008F9A60 setFormattingContext:2];
  v4 = +[NSLocale currentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"MMMM yyyy" options:0 locale:v4];
  [qword_1008F9A60 setDateFormat:v3];
}

id sub_10010833C()
{
  v0 = HKHealthKitFrameworkBundle();
  v1 = HKHealthKitStringsTableName;
  v2 = [v0 localizedStringForKey:@"ACTIVITY_SHARING_FRIEND_LIMIT_MESSAGE_TITLE" value:&stru_1008680E8 table:HKHealthKitStringsTableName];

  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ACTIVITY_SHARING_FRIEND_LIMIT_MESSAGE_BODY" value:&stru_1008680E8 table:v1];
  v5 = [NSString stringWithFormat:v4, kASMaxNumberOfFriends];

  v6 = [UIAlertController alertControllerWithTitle:v2 message:v5 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
  [v6 addAction:v9];

  return v6;
}

void sub_1001084B8(void *a1)
{
  v1 = a1;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v8 = [v4 rootViewController];

  v5 = [v8 presentedViewController];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v7 = v6;

  [v7 presentViewController:v1 animated:1 completion:0];
}

void sub_10010858C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v8 as_competitionReceivedNotificationTitle];
  v26 = [v8 as_competitionReceivedNotificationMessageForExperienceType:a4];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];

  v14 = ActivitySharingBundle();
  v15 = FIRandomStringForPrefixWithTableName();

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100108890;
  v31[3] = &unk_10083C738;
  v16 = v8;
  v32 = v16;
  v33 = v9;
  v36 = a4;
  v34 = v10;
  v17 = v7;
  v35 = v17;
  v18 = v10;
  v19 = v9;
  v20 = [UIAlertAction actionWithTitle:v15 style:0 handler:v31];
  v21 = [v16 as_competitionLearnMorePopupAction];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010908C;
  v27[3] = &unk_10083C760;
  v29 = v17;
  v30 = a4;
  v28 = v16;
  v22 = v17;
  v23 = v16;
  v24 = [UIAlertAction actionWithTitle:v21 style:0 handler:v27];

  v25 = [UIAlertController alertControllerWithTitle:v18 message:v26 preferredStyle:1];
  [v25 addAction:v13];
  [v25 addAction:v20];
  [v25 addAction:v24];
  [v25 setPreferredAction:v20];
  [v22 presentViewController:v25 animated:1 completion:0];
}

void sub_100108890(uint64_t a1)
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100108B94;
  v20[3] = &unk_10083C6E8;
  v21 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v22 = v2;
  v23 = v3;
  v4 = objc_retainBlock(v20);
  if ([*(a1 + 32) isMyActivityDataCurrentlyHidden])
  {
    ASLoggingInitialize();
    v5 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "My activity data is currently hidden, showing unhide confirmation", buf, 2u);
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"COMPETITION_ACCEPT_UNHIDE_MESSAGE" value:&stru_1008680E8 table:@"Localizable"];
    v8 = [*(a1 + 32) displayName];
    v9 = [NSString stringWithFormat:v7, v8];

    v10 = [UIAlertController alertControllerWithTitle:*(a1 + 48) message:v9 preferredStyle:1];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
    [v10 addAction:v13];

    v14 = ActivitySharingBundle();
    v15 = [v14 localizedStringForKey:@"COMPETITION_RECEIVED_NOTIFICATION_ACCEPT_ACTION_HIDING" value:&stru_1008680E8 table:@"Localizable"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010907C;
    v17[3] = &unk_10083C710;
    v18 = v4;
    v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v17];
    [v10 addAction:v16];

    [*(a1 + 56) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    (v4[2])(v4);
  }
}

void sub_100108B94(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v6 = *(a1 + 32);
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accepting competition request from friend: %@{public}@ - %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100108DD0;
  v17[3] = &unk_10083AC40;
  v18 = v7;
  [v8 acceptCompetitionRequestFromFriend:v18 completion:v17];
  v9 = [*(a1 + 32) as_competitionAcceptConfirmationTitle];
  v10 = *(a1 + 32);
  v11 = [v10 competitionPendingAcceptance];
  v12 = [v10 as_competitionAcceptConfirmationMessageForCompetition:v11 experienceType:*(a1 + 48)];

  v13 = [UIAlertController alertControllerWithTitle:v9 message:v12 preferredStyle:1];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];
  [v13 addAction:v16];

  sub_1001084B8(v13);
}

void sub_100108DD0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accept competition request completion with success: %d, error: %{public}@", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108F1C;
  block[3] = &unk_10083A920;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100108F1C(uint64_t a1)
{
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = ActivitySharingBundle();
    v8 = [v2 localizedStringForKey:@"COMPETITION_ERROR_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    v3 = [*(a1 + 40) as_competitionAcceptErrorMessage];
    v4 = [UIAlertController alertControllerWithTitle:v8 message:v3 preferredStyle:1];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];
    [v4 addAction:v7];

    sub_1001084B8(v4);
  }
}

void sub_10010908C(uint64_t a1)
{
  v7 = [*(a1 + 32) as_competitionLearnMoreFullDescriptionForExperienceType:*(a1 + 48)];
  v2 = [*(a1 + 32) as_competitionLearnMoreTitleForExperienceType:*(a1 + 48)];
  v3 = [UIAlertController alertControllerWithTitle:v2 message:v7 preferredStyle:1];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:0];
  [v3 addAction:v6];

  [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
}

id sub_100109BB4()
{
  if (qword_1008F9A80 != -1)
  {
    sub_10069C788();
  }

  v1 = qword_1008F9A78;

  return v1;
}

void sub_100109BF8(id a1)
{
  v4 = +[UIApplication sharedApplication];
  v1 = [v4 userCachesDirectory];
  v2 = [NSString stringWithFormat:@"%@/FitnessWorkoutIconCache/", v1];
  v3 = qword_1008F9A78;
  qword_1008F9A78 = v2;
}

void sub_100109D8C(uint64_t a1)
{
  v2 = sub_1000B982C(*(a1 + 32));
  v3 = sub_10010A77C(v2);
  v4 = [UIImage imageWithContentsOfCPBitmapFile:v3 flags:0];

  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010A280;
    block[3] = &unk_10083B3B8;
    v38 = *(a1 + 40);
    v37 = v4;
    dispatch_async(&_dispatch_main_q, block);

    v5 = v2;
    v6 = sub_100109BB4();
    v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

    v8 = [NSString stringWithFormat:@"%@.plist", @"IconTTL"];
    v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];

    v10 = [[NSDictionary alloc] initWithContentsOfURL:v9];
    v11 = [v10 objectForKey:v5];

    if (v11)
    {
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:v11];
      v14 = v13;

      if (v14 < 1296000.0)
      {
        goto LABEL_13;
      }
    }
  }

  if (qword_1008F9A88 != -1)
  {
    sub_10069C79C();
  }

  v11 = qword_1008F9A90;
  v15 = [v11 objectForKeyedSubscript:v2];
  if (v15)
  {
    v16 = v15;
    v17 = objc_retainBlock(*(a1 + 40));
    [v16 addObject:v17];
  }

  else
  {
    v16 = +[NSMutableArray array];
    v18 = objc_retainBlock(*(a1 + 40));
    [v16 addObject:v18];

    [v11 setObject:v16 forKeyedSubscript:v2];
    v19 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10010A298;
    v33[3] = &unk_10083C7D0;
    v34 = v2;
    v35 = v11;
    v20 = v19;
    v32 = v33;
    v21 = [v20 bundleID];
    v22 = +[AMSMediaTask bagSubProfile];
    v23 = +[AMSMediaTask bagSubProfileVersion];
    v24 = [AMSBag bagForProfile:v22 profileVersion:v23];

    v25 = [AMSMediaTask alloc];
    v26 = [v25 initWithType:0 clientIdentifier:kHKHealthAppBundleIdentifier clientVersion:@"1" bag:v24];
    v45 = v21;
    v27 = [NSArray arrayWithObjects:&v45 count:1];
    [v26 setBundleIdentifiers:v27];

    v28 = [v26 perform];
    _HKInitializeLogging();
    v29 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Downloading info from AMS for bundle identifier %@", &buf, 0xCu);
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v40 = sub_10010A83C;
    v41 = &unk_10083C890;
    v43 = v20;
    v44 = v32;
    v42 = v21;
    v30 = v21;
    v31 = v20;
    [v28 addFinishBlock:&buf];

    v17 = v34;
  }

LABEL_13:
}

void sub_10010A298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1008F9A70;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010A388;
  v10[3] = &unk_10083C7A8;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_10010A388(id *a1)
{
  v1 = a1[4];
  if (v1 && !a1[5])
  {
    v3 = a1[6];
    v4 = v1;
    v5 = v3;
    if (qword_1008F9A98 != -1)
    {
      sub_10069C7C4();
    }

    v6 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010B030;
    block[3] = &unk_10083A970;
    v26 = v4;
    v27 = v5;
    v7 = v4;
    v8 = v5;
    dispatch_async(v6, block);

    v9 = +[NSDate date];
    v10 = a1[6];
    v11 = sub_100109BB4();
    v12 = [NSURL fileURLWithPath:v11 isDirectory:1];

    v13 = [NSString stringWithFormat:@"%@.plist", @"IconTTL"];
    v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:0];

    v15 = [[NSDictionary alloc] initWithContentsOfURL:v14];
    v16 = +[NSMutableDictionary dictionary];
    if (v15)
    {
      v17 = [NSMutableDictionary dictionaryWithDictionary:v15];

      v16 = v17;
    }

    [v16 setObject:v9 forKeyedSubscript:v10];
    [v16 writeToURL:v14 atomically:1];

    v18 = [a1[7] objectForKeyedSubscript:a1[6]];
    v19 = [NSArray arrayWithArray:v18];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10010A680;
    v21[3] = &unk_10083BC20;
    v22 = v19;
    v23 = a1[4];
    v24 = a1[5];
    v20 = v19;
    dispatch_async(&_dispatch_main_q, v21);
    [a1[7] removeObjectForKey:a1[6]];
  }
}

void sub_10010A680(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_10010A77C(void *a1)
{
  v1 = a1;
  v2 = sub_100109BB4();
  v3 = [NSString stringWithFormat:@"%@%@.cpbitmap", v2, v1];

  return v3;
}

void sub_10010A7FC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1008F9A90;
  qword_1008F9A90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010A83C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C7D8(a1, v6, v7);
    }

    v8 = *(*(a1 + 48) + 16);
LABEL_5:
    v8();
    goto LABEL_23;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v19 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C864(a1, v19);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v9 = [v5 responseDataItems];
  v10 = [v9 firstObject];

  v11 = [v10 objectForKeyedSubscript:@"attributes"];
  v12 = [v11 objectForKeyedSubscript:@"platformAttributes"];
  v13 = [v12 objectForKeyedSubscript:@"ios"];

  v14 = [AMSMediaArtwork alloc];
  v15 = [v13 objectForKeyedSubscript:@"artwork"];
  v16 = [v14 initWithDictionary:v15];

  if ([*(a1 + 40) needsWatchIcon])
  {
    v17 = [v13 objectForKeyedSubscript:@"circularArtwork"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = [v17 firstObject];
    }

    v20 = v18;
    v21 = [[AMSMediaArtwork alloc] initWithDictionary:v18];

    v16 = v21;
  }

  [*(a1 + 40) preferredAppStoreIconWidth];
  v23 = v22;
  [*(a1 + 40) preferredAppStoreIconWidth];
  v25 = [v16 URLWithSize:AMSLookupItemArtworkCropStyleBoundedBox cropStyle:AMSLookupItemArtworkFormatPNG format:{v23, v24}];
  _HKInitializeLogging();
  v26 = HKLogActivity;
  if (v25)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Fetching app icon from AMS for URL %@", buf, 0xCu);
    }

    v27 = +[HKAppImageManager sharedImageManager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10010AC48;
    v29[3] = &unk_10083C868;
    v30 = v25;
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    [v27 loadAppImageAtURL:v30 completionHandler:v29];
  }

  else
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      *buf = 138412290;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Couldn't find URL for app icon for bundle ID %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_23:
}

void sub_10010AC48(id *a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010AD6C;
  v13[3] = &unk_10083C840;
  v19 = a4;
  v14 = v8;
  v15 = v9;
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void sub_10010AD6C(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 72) == 1 && !*(a1 + 40))
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetched icon from store for URL: %@", &v15, 0xCu);
    }

    v8 = [*(a1 + 56) needsWatchIcon];
    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = v9;
      [v10 size];
      v12 = v11;
      [v10 size];
      v14 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v12, v13];
      [v10 size];
      UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
      [v14 addClip];
      [v10 drawAtPoint:{CGPointZero.x, CGPointZero.y}];

      v5 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v5 = v9;
    }
  }

  else
  {
    _HKInitializeLogging();
    v2 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      v15 = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Could not fetch icon from store for URL: %@ because of error: %@", &v15, 0x16u);
    }

    v5 = 0;
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10010AF70(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = sub_100109BB4();
  v7 = 0;
  v3 = [v1 createDirectoryAtPath:v2 withIntermediateDirectories:0 attributes:0 error:&v7];
  v4 = v7;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C8E0(v6, v4);
    }
  }
}

void sub_10010B030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10010A77C(*(a1 + 40));
  [v1 writeToCPBitmapFile:v2 flags:0];
}

void sub_10010BBC4(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v2 = [*(a1 + 32) imageFactory];
  v3 = *(a1 + 32);
  v4 = v3[2];
  [v3 imageDimension];
  v6 = v5;
  [*(a1 + 32) imageDimension];
  v8 = [v2 thumbnailImageForAchievement:v4 size:{v6, v7}];

  +[CATransaction commit];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010BCEC;
  block[3] = &unk_10083BC20;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v9;
  v13 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10010BCEC(void *a1)
{
  v2 = a1[4];
  if (v2[2] == a1[5])
  {
    v3 = a1[6];
    v4 = [v2 imageView];
    [v4 setImage:v3];
  }
}

void sub_10010C5FC(id a1)
{
  v1 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"SELF MATCHES %@", @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*");
  v2 = qword_1008F9AA0;
  qword_1008F9AA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010EAC8(void *a1)
{
  v2 = a1[4];
  v3 = v2[4];
  v4 = a1[6];
  if (v3)
  {
    v5 = v4 < v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v2[4] = v4;
    v2 = a1[4];
  }

  v6 = v2[5];
  v7 = a1[6];
  if (v6)
  {
    v8 = v7 <= v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v2[5] = v7;
    v2 = a1[4];
    v7 = a1[6];
  }

  v9 = v2[1];
  v10 = a1[5];
  v11 = [NSNumber numberWithLongLong:v7];
  [v9 setObject:v10 forKey:v11];
}

void sub_10010EBE0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [NSNumber numberWithLongLong:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

uint64_t sub_10010ED34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010ED4C(void *a1)
{
  v2 = *(a1[4] + 8);
  v6 = [NSNumber numberWithLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10010EE78(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10010F0BC()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1008F9AC8;
  qword_1008F9AC8 = v0;

  qword_1008F9AB8 = +[NSCalendar hk_gregorianCalendarWithUTCTimeZone];

  return _objc_release_x1();
}

void sub_10010F440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_10010F474(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [WeakRetained setObject:*(*(&v18 + 1) + 8 * v9) forCacheIndex:{objc_msgSend(*(*(&v18 + 1) + 8 * v9), "_activitySummaryIndex")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  v10 = [v5 firstObject];
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 _activitySummaryIndex]);
  v22[0] = v11;
  v12 = [v5 lastObject];
  v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 _activitySummaryIndex]);
  v22[1] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:2];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010F694;
  v16[3] = &unk_10083A970;
  v16[4] = WeakRetained;
  v17 = v14;
  v15 = v14;
  dispatch_async(&_dispatch_main_q, v16);
}

void sub_10010F694(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"range";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ActivitySummaryCacheChangedNotification" object:v4 userInfo:v5];
}

void sub_10010F760(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010F810;
  block[3] = &unk_10083A710;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_10010F810(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[FASC] Restarting activity summary query after error.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startActivitySummaryQuery];
}

void sub_10010F894(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C9AC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = +[NSDate date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v14 = v13;

    _HKInitializeLogging();
    v15 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = 134218240;
      v18 = [v8 count];
      v19 = 2048;
      v20 = v12 - v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[FASC] Fetched %lu activity summaries in %f seconds", &v17, 0x16u);
    }

    if ([v8 count])
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10010FA3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogActivity;
  if (v9)
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CA14();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 138543618;
      v28 = v7;
      v29 = 2050;
      v30 = [v8 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FASC] Activity summary query: %{public}@ updated with %{public}zd objects", buf, 0x16u);
    }

    if ([v8 count])
    {
      v19 = a1;
      v20 = v8;
      v21 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * v16);
            _HKInitializeLogging();
            v18 = HKLogActivity;
            if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v28 = v17;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Updated summary: %{public}@", buf, 0xCu);
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      (*(*(v19 + 40) + 16))();
      v8 = v20;
      v7 = v21;
      v9 = 0;
    }
  }
}

void sub_100110284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001102A4()
{
  v0 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v1 = +[UIColor whiteColor];
  [v0 setTextColor:v1];

  v2 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  [v0 setNumberOfLines:0];
  [v0 setAllowsDefaultTighteningForTruncation:1];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setTextAlignment:1];

  return v0;
}

void sub_10011037C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _nextButtonTapped];
}

id sub_1001111D8(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setAlpha:0.0];
}

void sub_100111234(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  objc_storeStrong((*(a1 + 32) + 16), *(*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;

  [*(*(a1 + 32) + 24) removeFromSuperview];
}

void sub_1001123A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001123CC(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"SHARING_INVITE_ACCEPT_ERROR" value:&stru_1008680E8 table:@"Localizable"];
    [WeakRetained _presentErrorAlertWithMessage:v5];
  }
}

void sub_1001125DC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100112604(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"SHARING_INVITE_DECLINE_ERROR" value:&stru_1008680E8 table:@"Localizable"];
    [WeakRetained _presentErrorAlertWithMessage:v5];
  }
}

void sub_1001126A0(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"COMPETITION_IGNORE_ERROR_MESSAGE" value:&stru_1008680E8 table:@"Localizable"];
    [WeakRetained _presentErrorAlertWithMessage:v5];
  }
}

void sub_1001127D0(uint64_t a1)
{
  v4 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:0 preferredStyle:1];
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
  v3 = [UIAlertAction actionWithTitle:v2 style:0 handler:0];
  [v4 addAction:v3];

  sub_1001084B8(v4);
}

void sub_1001131E4(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100113278;
  v2[3] = &unk_10083C9E8;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void sub_100113278(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"SHARING_INVITE_WITHDRAW_ERROR" value:&stru_1008680E8 table:@"Localizable"];
    v4 = [UIAlertController alertControllerWithTitle:v3 message:0 preferredStyle:1];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100113410;
    v8[3] = &unk_10083C9C0;
    objc_copyWeak(&v9, (a1 + 32));
    v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v8];
    [v4 addAction:v7];

    sub_1001084B8(v4);
    objc_destroyWeak(&v9);
  }
}

void sub_100113410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadDataAnimated:0];
}

id sub_1001139EC(void *a1)
{
  v1 = [a1 allKeys];
  v2 = [v1 sortedArrayUsingComparator:&stru_10083CA28];

  return v2;
}

id sub_100114E3C(uint64_t a1, void *a2)
{
  v3 = sub_1001139EC(a2);
  v4 = [NSNumber numberWithInteger:a1];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

void sub_10011578C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  *&qword_1008F9AD0 = 1.0 / v1;
}

void sub_1001166DC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

void sub_1001167C8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

void sub_1001168B4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

void sub_1001169A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

void sub_100116CD4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100116D90;
  block[3] = &unk_10083CA70;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100116E80(uint64_t a1)
{
  [*(a1 + 32) _queue_sortAllWorkoutsByMonthAndYearWithCurrentFilter];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100116F1C;
  v3[3] = &unk_10083C7F8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

uint64_t sub_100116F1C(uint64_t a1)
{
  [*(a1 + 32) _runFilterActionFinishedHandlers];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100117240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100117264(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v11)
  {
    v26 = v10;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [v17 sourceRevision];
          v19 = [v18 productType];
          v20 = [v19 containsString:@"Watch"];

          [v17 _setIsWatchWorkout:v20];
        }

        v14 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v14);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v22 = WeakRetained;
    v11 = 0;
    v10 = v26;
    if (!WeakRetained)
    {
      goto LABEL_22;
    }

    if (WeakRetained[172] == 1)
    {
      v23 = objc_loadWeakRetained((a1 + 32));
      [v23 _handleInitialResults:v9];

      *(v22 + 172) = 0;
LABEL_15:
      *(v22 + 185) = 0;
LABEL_22:

      goto LABEL_23;
    }

    if ([v26 count])
    {
      v24 = objc_loadWeakRetained((a1 + 32));
      [v24 _handleRemovedObjects:v26];

      if (![v9 count])
      {
        goto LABEL_21;
      }
    }

    else if (![v9 count])
    {
      goto LABEL_15;
    }

    os_unfair_lock_lock(v22 + 42);
    [*(v22 + 2) insertSamples:v9];
    os_unfair_lock_unlock(v22 + 42);
LABEL_21:
    [v22 _recreateFilterObjects];
    objc_initWeak(&location, *(v22 + 25));
    v25 = *(v22 + 19);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100117600;
    v27[3] = &unk_10083CAE8;
    v27[4] = v22;
    objc_copyWeak(&v28, (a1 + 32));
    objc_copyWeak(&v29, &location);
    dispatch_async(v25, v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  _HKInitializeLogging();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
  {
    sub_10069CAA4(v11, v12);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001175B0;
  block[3] = &unk_10083C3D8;
  v36[1] = *(a1 + 40);
  objc_copyWeak(v36, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v36);
LABEL_23:
}

void sub_1001175B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _retryAnchoredObjectQueryWithRetryCount:v1 + 1];
}

void sub_100117600(id *a1)
{
  [a1[4] _queue_sortAllWorkoutsByMonthAndYearWithCurrentFilter];
  *(a1[4] + 185) = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001176B4;
  v2[3] = &unk_10083CAC0;
  objc_copyWeak(&v3, a1 + 5);
  objc_copyWeak(&v4, a1 + 6);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
}

void sub_1001176B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isCurrentFilterValid];

  v4 = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100117820;
    v9[3] = &unk_10083A710;
    v6 = &v10;
    objc_copyWeak(&v10, (a1 + 32));
    [v4 setCurrentFilteredTypeIdentifier:v5 completion:v9];
  }

  else
  {
    v5 = +[CHWorkoutTypeKey emptyKey];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100117860;
    v7[3] = &unk_10083A710;
    v6 = &v8;
    objc_copyWeak(&v8, (a1 + 32));
    [v4 setCurrentFilteredTypeIdentifier:v5 completion:v7];
  }

  objc_destroyWeak(v6);
}

void sub_100117820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runAnimatedUpdateHandlers];
}

void sub_100117860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runAnimatedUpdateHandlers];
}

void sub_100117954(uint64_t a1)
{
  [*(a1 + 32) _queue_sortAllWorkoutsByMonthAndYearWithCurrentFilter];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001179E0;
  block[3] = &unk_10083A8B0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

BOOL sub_100117B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fiui_activityType];
  v5 = *(a1 + 40);
  v6 = [v4 isIndoor] & 1;
  v7 = [v3 workoutActivityType];

  v9 = v7 == *(a1 + 32) && v6 == v5;
  return v9;
}

BOOL sub_100117C18(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return [a2 fi_swimmingLocationType] == *(a1 + 32);
  }

  else
  {
    return [a2 workoutActivityType] == 46;
  }
}

BOOL sub_100117C64(id a1, HKWorkout *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(HKWorkout *)v3 workoutActivityType]== 77 || [(HKWorkout *)v3 workoutActivityType]== 14;

  return v4;
}

id sub_100117CB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 88);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v6];

  v9 = [v8 compare:v7];
  return v9;
}

void sub_100117DB0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  [*(a1 + 32) _runHandlers:v2];
}

void sub_100117E7C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  [*(a1 + 32) _runHandlers:v2];
}

void sub_100117F48(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  [*(a1 + 32) _runHandlers:v2];
}

void sub_100118014(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  [*(a1 + 32) _runHandlers:v2];
}

void sub_100118100(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100119308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100119340(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a4;
  v16 = a3;
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentDetailForAchievement:v17 badgeRect:v16 conversionView:v15 cell:{a5, a6, a7, a8}];
}

id sub_100119BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) spinner];
  [v2 stopAnimating];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100119CDC;
  v5[3] = &unk_10083A8B0;
  v6 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100119D24;
  v4[3] = &unk_10083B8E0;
  v4[4] = v6;
  return [UIView animateWithDuration:0x20000 delay:v5 options:v4 animations:0.2 completion:0.2];
}

void sub_100119CDC(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingView];
  [v1 setAlpha:0.0];
}

void sub_100119D24(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingView];
  [v1 removeFromSuperview];
}

void sub_10011A284(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_1008F9AE0;
  qword_1008F9AE0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10011AE64()
{
  v0 = [OBBundle bundleWithIdentifier:@"com.apple.onboarding.activity"];
  v1 = +[ARUIMetricColors energyColors];
  v2 = [v1 nonGradientTextColor];

  v3 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  v6 = [v0 privacyFlow];
  v7 = [v6 localizedButtonTitle];
  [v3 setTitle:v7 forState:0];

  [v3 setTitleColor:v2 forState:0];
  v8 = [v2 colorWithAlphaComponent:0.7];
  [v3 setTitleColor:v8 forState:1];

  return v3;
}

void sub_10011B17C(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_1008F9AF0;
  qword_1008F9AF0 = v1;

  [qword_1008F9AF0 setMinimumFractionDigits:0];
  [qword_1008F9AF0 setMaximumFractionDigits:2];
  v3 = qword_1008F9AF0;

  [v3 setNumberStyle:1];
}

void sub_10011B728(id a1)
{
  v1 = objc_alloc_init(CLGeocoder);
  v2 = qword_1008F9B00;
  qword_1008F9B00 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10011B7A8(id a1)
{
  v7 = [UIImage systemImageNamed:@"location.fill"];
  v1 = +[UIColor secondaryLabelColor];
  v2 = [v7 flattenedImageWithColor:v1];
  v3 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  v4 = [UIImageSymbolConfiguration configurationWithFont:v3];
  v5 = [v2 imageWithSymbolConfiguration:v4];
  v6 = qword_1008F9B10;
  qword_1008F9B10 = v5;
}

void sub_10011C5EC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10011C62C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] setImage:v5];
  }
}

void sub_10011C698(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] setHidden:0];
    [v4[8] setImage:v6];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void sub_10011C73C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] setImage:v5];
  }
}

void sub_10011D1B8(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011D278;
    block[3] = &unk_10083B188;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10011D278(uint64_t a1)
{
  v12 = objc_alloc_init(NSTextAttachment);
  v2 = [objc_opt_class() _locationArrowImage];
  [v12 setImage:v2];
  [v12 setBounds:{0.0, 0.0, 10.0, 10.0}];
  v3 = objc_alloc_init(NSMutableAttributedString);
  v4 = [NSAttributedString attributedStringWithAttachment:v12];
  [v3 appendAttributedString:v4];

  v5 = [*(a1 + 40) locality];
  if (v5 || ([*(a1 + 40) name], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [[NSAttributedString alloc] initWithString:@" "];
    [v3 appendAttributedString:v7];

    v8 = [[NSAttributedString alloc] initWithString:v6 attributes:0];
    [v3 appendAttributedString:v8];
  }

  v9 = +[UIColor secondaryLabelColor];
  [v3 addAttribute:NSForegroundColorAttributeName value:v9 range:{0, objc_msgSend(v3, "length")}];

  v10 = [*(*(a1 + 32) + 120) font];
  [v3 addAttribute:NSFontAttributeName value:v10 range:{0, objc_msgSend(v3, "length")}];

  [*(*(a1 + 32) + 120) setAttributedText:v3];
  [*(a1 + 32) setNeedsLayout];
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_10011E334(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9B20;
  qword_1008F9B20 = v1;

  v4 = +[NSLocale currentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"MMMM y" options:0 locale:v4];
  [qword_1008F9B20 setDateFormat:v3];
}

void sub_10011E9D0(id a1)
{
  v1 = objc_alloc_init(UILabel);
  v2 = qword_1008F9B30;
  qword_1008F9B30 = v1;

  v3 = qword_1008F9B30;

  [v3 setNumberOfLines:0];
}

void sub_10011F890(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailImageForAchievement:*(a1 + 40) size:{*(a1 + 56), *(a1 + 64)}];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F960;
  block[3] = &unk_10083BC20;
  v5 = *(a1 + 40);
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10011F960(uint64_t a1)
{
  v7 = [*(a1 + 32) templateUniqueName];
  v2 = [*(a1 + 40) template];
  v3 = [v2 uniqueName];
  v4 = [v3 isEqualToString:v7];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) badgeView];
    [v6 setImage:v5];
  }
}

void sub_1001208BC(id a1)
{
  v1 = objc_alloc_init(CNContactStore);
  v2 = qword_1008F9B40;
  qword_1008F9B40 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10012093C(id a1)
{
  v1 = objc_alloc_init(CNContact);
  v2 = qword_1008F9B50;
  qword_1008F9B50 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100121AF4(id a1, int a2)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "The fitness week was redefined underneath of us, bail!", v3, 2u);
  }

  exit(0);
}

void sub_100121B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 8);
    v4 = WeakRetained;
    v3 = v2 == [WeakRetained[16] hasWorkouts];
    WeakRetained = v4;
    if (!v3)
    {
      *(v4 + 8) = [v4[16] hasWorkouts];
      [v4 _createOrbActions];
      WeakRetained = v4;
    }
  }
}

void sub_100121E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121EE4;
  v5[3] = &unk_10083A970;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_100121EE4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 368) currentPhase];
  if (result > 2)
  {
    if (result == 3)
    {
      v6 = *(a1 + 32);

      return [v6 _presentExerciseAndStandGoalsSetupOnboarding];
    }

    else if (result == 4)
    {
      v4 = *(a1 + 32);

      return [v4 _presentWhatsNewViewSetupOnboarding];
    }
  }

  else if (result >= 2)
  {
    if (result == 2)
    {
      v5 = *(a1 + 32);

      return [v5 _presentMoveGoalSetupOnboarding];
    }
  }

  else
  {
    [*(a1 + 40) authorizationStatus];
    v3 = *(a1 + 32);

    return [v3 _presentWelcomeViewsSetupOnboarding:?];
  }

  return result;
}

void sub_1001222C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 136));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_100122338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[46] setCompletedWelcomeViews];
    v4 = objc_loadWeakRetained((a1 + 40));
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001223E8;
    v5[3] = &unk_10083A8B0;
    v5[4] = v3;
    [v4 dismissViewControllerAnimated:1 completion:v5];
  }
}

id sub_1001223E8(uint64_t a1)
{
  result = [*(a1 + 32) _setupActivityAppAndLoadData];
  *(*(a1 + 32) + 9) = 0;
  return result;
}

void sub_100122420(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 49);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100122528;
    v6[3] = &unk_10083C528;
    v7 = *(a1 + 32);
    v3 = [CHNotificationConsentController makeNotificationConsentViewController:v2 buttonHandler:v6];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained pushViewController:v3 animated:1];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void sub_100122538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[46] currentPhase];
    if ((v4 - 2) < 4)
    {
      _HKInitializeLogging();
      v5 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
      {
        sub_10069CBBC(v3 + 46, v5);
      }

      goto LABEL_8;
    }

    if (!v4)
    {
LABEL_8:
      [*(a1 + 32) pushViewController:*(a1 + 40) animated:1];
      goto LABEL_9;
    }

    if (v4 == 1)
    {
      (*(*(a1 + 48) + 16))();
    }
  }

LABEL_9:
}

void sub_1001229FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100122A24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[46] setCompletedWhatsNewViews];
    WeakRetained = v2;
  }
}

void sub_100122A78(uint64_t a1)
{
  [*(*(a1 + 32) + 312) setAlpha:0.0];
  v2 = [*(*(a1 + 32) + 296) view];
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  [v2 setTransform:&v3];
}

id sub_100122AF4(uint64_t a1)
{
  [*(*(a1 + 32) + 312) removeFromSuperview];
  [*(a1 + 32) _showCoachingDataCollectionMessageIfNeeded];

  return +[CHNotificationConsentController updateAuthorization];
}

void sub_100123698(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate did receive HKStandalonePhoneFitnessModeDidUpdateNotification notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setActivityTabBarImage];
}

id sub_10012371C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained provideSummaryViewControllerForDataSource:v3];

  return v5;
}

void sub_100123B80(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v14 = v3;
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    v5 = [NSString stringWithFormat:@"%@T00:00:00Z", v14];
    v6 = [v4 dateFromString:v5];
    v7 = +[NSTimeZone localTimeZone];
    v8 = -[v7 secondsFromGMT];

    v9 = [v6 dateByAddingTimeInterval:v8];
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v10 activityTileNavController];
      [v10 _resetToViewController:v11];

      v12 = [*(a1 + 32) summaryDeeplinkViewController];
      v13 = [v12 showActivityOnDate:v9 shareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
    }

    v3 = v14;
  }
}

void sub_100123CDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activityTileNavController];
  [v3 _resetToViewController:v5];

  v12 = [v4 lastObject];

  if ([v12 isEqualToString:@"move"])
  {
    v6 = 0;
LABEL_7:
    v7 = [*(a1 + 32) summaryDeeplinkViewController];
    v8 = [v7 showTodayAndShareImmediately:0 animated:0 forGoalCompleteNotification:0 goalRecommendation:0];

    v9 = [[CHASActivitySetupViewController alloc] initWithPresentationContext:6 goalType:v6 editTodayOnly:0];
    v10 = [[UINavigationController alloc] initWithRootViewController:v9];
    v11 = [*(a1 + 32) summaryDeeplinkViewController];
    [v11 presentViewController:v10 animated:1 completion:0];

    goto LABEL_8;
  }

  if ([v12 isEqualToString:@"exercise"])
  {
    v6 = 1;
    goto LABEL_7;
  }

  if ([v12 isEqualToString:@"stand"])
  {
    v6 = 2;
    goto LABEL_7;
  }

  v9 = [*(a1 + 32) summaryDeeplinkViewController];
  [(CHASActivitySetupViewController *)v9 presentAppSettingsShowingPane:3];
LABEL_8:
}

void sub_100123E68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activityTileNavController];
  [v2 _resetToViewController:v3];

  v5 = [*(a1 + 32) summaryDeeplinkViewController];
  v4 = [v5 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:1];
}

void sub_100123EFC(uint64_t a1, void *a2)
{
  v6 = [a2 lastObject];
  v3 = *(a1 + 32);
  v4 = [v3 activityTileNavController];
  [v3 _resetToViewController:v4];

  v5 = [*(a1 + 32) summaryDeeplinkViewController];
  [v5 navigateToTrophyCaseSection:v6 withAchievementID:0 animated:1];
}

void sub_100123F98(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 safeObjectAtIndex:1];
  v4 = [v3 safeObjectAtIndex:2];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 activityTileNavController];
    [v5 _resetToViewController:v6];

    v7 = [*(a1 + 32) summaryDeeplinkViewController];
    [v7 navigateToTrophyCaseSection:v4 withAchievementID:v8 animated:1];
  }
}

void sub_10012405C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v7 = a3;
  v5 = [v4 activityTileNavController];
  [v4 _resetToViewController:v5];

  v6 = [*(a1 + 32) summaryDeeplinkViewController];
  [v6 showLoad];

  [WOEffortBridges sendDidViewTrainingLoadAnalyticsFromURL:v7];
}

void sub_1001240FC(uint64_t a1, void *a2)
{
  v11 = [a2 lastObject];
  if ([v11 isEqualToString:@"dives"])
  {
    v3 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:84 isIndoor:0 metadata:&__NSDictionary0__struct];
    v4 = *(a1 + 32);
    v5 = [v4 activityTileNavController];
    [v4 _resetToViewController:v5];

    v6 = [*(a1 + 32) summaryDeeplinkViewController];
    [v6 navigateToWorkoutHistoryWithActivityType:v3 animated:1];
  }

  else if ([v11 isEqualToString:@"mindfulness"])
  {
    v7 = *(a1 + 32);
    v8 = [v7 activityTileNavController];
    [v7 _resetToViewController:v8];

    v3 = [*(a1 + 32) summaryDeeplinkViewController];
    [v3 navigateToMindfulnessHistoryAnimated:1];
  }

  else
  {
    if (![v11 isEqualToString:@"workouts"])
    {
      goto LABEL_8;
    }

    v9 = *(a1 + 32);
    v10 = [v9 activityTileNavController];
    [v9 _resetToViewController:v10];

    v3 = [*(a1 + 32) summaryDeeplinkViewController];
    [v3 navigateToWorkoutHistoryWithActivityType:0 animated:1];
  }

LABEL_8:
}

void sub_100124278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v4 intValue];

  v6 = [v3 objectAtIndexedSubscript:2];

  v7 = [v6 isEqualToString:@"indoor"];
  if (_HKWorkoutActivityTypeIsValid())
  {
    v11 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:v5 isIndoor:v7 metadata:&__NSDictionary0__struct];
    v8 = *(a1 + 32);
    v9 = [v8 activityTileNavController];
    [v8 _resetToViewController:v9];

    v10 = [*(a1 + 32) summaryDeeplinkViewController];
    [v10 navigateToWorkoutHistoryWithActivityType:v11 animated:1];
  }
}

void sub_100124398(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v4 = *(a1 + 32);
    v8 = v3;
    v5 = [v4 activityTileNavController];
    [v4 _resetToViewController:v5];

    v6 = [[NSUUID alloc] initWithUUIDString:v8];
    v7 = [*(a1 + 32) summaryDeeplinkViewController];
    [v7 showMindfulnessSessionWithUUID:v6];

    v3 = v8;
  }
}

void sub_10012444C(uint64_t a1)
{
  v2 = [*(a1 + 32) mirrorViewController];
  v3 = [v2 isCompleted];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) currentWorkoutDetailViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = +[NSUserDefaults standardUserDefaults];
      [v6 doubleForKey:@"liveActivityDismissAfter"];
      v8 = v7;

      v9 = -v8;
      if (v8 < 1.0)
      {
        v9 = -60.0;
      }

      v10 = [NSDate dateWithTimeIntervalSinceNow:v9];
      v11 = [NSPredicate predicateWithFormat:@"endDate >= %@", v10];
      v12 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierEndDate ascending:0];
      v13 = [HKSampleQuery alloc];
      v14 = +[HKObjectType workoutType];
      v19 = v12;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100124690;
      v18[3] = &unk_10083CEE8;
      v18[4] = *(a1 + 32);
      v16 = [v13 initWithSampleType:v14 predicate:v11 limit:1 sortDescriptors:v15 resultsHandler:v18];

      v17 = [*(a1 + 32) healthStore];
      [v17 executeQuery:v16];
    }
  }
}

void sub_100124690(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012475C;
  block[3] = &unk_10083BC20;
  v10 = a4;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10012475C(uint64_t a1)
{
  if (*(a1 + 32) || ![*(a1 + 40) count])
  {
    v2 = *(a1 + 48);
    v3 = [v2 activityTileNavController];
    [v2 _resetToViewController:v3];

    v8 = [*(a1 + 48) summaryDeeplinkViewController];
    [v8 navigateToWorkoutHistoryWithActivityType:0 animated:1];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [v4 activityTileNavController];
    [v4 _resetToViewController:v5];

    v6 = [*(a1 + 40) firstObject];
    v8 = [v6 UUID];

    v7 = [*(a1 + 48) summaryDeeplinkViewController];
    [v7 showWorkoutWithId:v8 activityId:0 page:0];
  }
}

void sub_100124860(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v10 = v3;
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
    v5 = [*(a1 + 32) mirrorViewController];
    v6 = [v5 showingSummaryForWorkoutUUID:v4];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [*(a1 + 32) mirrorViewController];
      [v8 dismissLiveActivityForActiveSummary];
    }

    else
    {
      v9 = [*(a1 + 32) activityTileNavController];
      [v7 _resetToViewController:v9];

      v8 = [*(a1 + 32) summaryDeeplinkViewController];
      [v8 showWorkoutWithId:v4 activityId:0 page:0];
    }

    v3 = v10;
  }
}

void sub_100124958(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 safeObjectAtIndex:1];
  v4 = [v3 safeObjectAtIndex:2];

  if (v10 && v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 activityTileNavController];
    [v5 _resetToViewController:v6];

    v7 = [[NSUUID alloc] initWithUUIDString:v10];
    v8 = [[NSUUID alloc] initWithUUIDString:v4];
    v9 = [*(a1 + 32) summaryDeeplinkViewController];
    [v9 showWorkoutWithId:v7 activityId:v8 page:0];
  }
}

void sub_100124A58(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 safeObjectAtIndex:1];
  v4 = [v3 safeObjectAtIndex:2];
  v5 = [v3 safeObjectAtIndex:3];

  if (v11 && v4)
  {
    v6 = *(a1 + 32);
    v7 = [v6 activityTileNavController];
    [v6 _resetToViewController:v7];

    v8 = [[NSUUID alloc] initWithUUIDString:v11];
    v9 = [[NSUUID alloc] initWithUUIDString:v4];
    v10 = [*(a1 + 32) summaryDeeplinkViewController];
    [v10 showWorkoutWithId:v8 activityId:v9 page:v5];
  }
}

void sub_100124B78(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 safeObjectAtIndex:1];
  v4 = [v3 safeObjectAtIndex:2];

  if (v9)
  {
    v5 = *(a1 + 32);
    v6 = [v5 activityTileNavController];
    [v5 _resetToViewController:v6];

    v7 = [[NSUUID alloc] initWithUUIDString:v9];
    v8 = [*(a1 + 32) summaryDeeplinkViewController];
    [v8 showWorkoutWithId:v7 activityId:0 page:v4];
  }
}

void sub_100124C5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activityTileNavController];
  [v2 _resetToViewController:v3];

  v4 = [*(a1 + 32) summaryDeeplinkViewController];
  [v4 presentAppSettingsShowingPane:0];
}

void sub_100124CDC(uint64_t a1, void *a2)
{
  v7 = [a2 safeObjectAtIndex:1];
  if ([v7 isEqualToString:@"goals"])
  {
    v3 = 3;
  }

  else if ([v7 isEqualToString:@"health"])
  {
    v3 = 2;
  }

  else if ([v7 isEqualToString:@"notifications"])
  {
    v3 = 1;
  }

  else if ([v7 isEqualToString:@"units"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = [v4 activityTileNavController];
  [v4 _resetToViewController:v5];

  v6 = [*(a1 + 32) summaryDeeplinkViewController];
  [v6 presentAppSettingsShowingPane:v3];
}

void sub_100124DE8(uint64_t a1, void *a2)
{
  v8 = a2;
  if (sub_100011DC8())
  {
    v3 = *(a1 + 32);
    v4 = [v3 activityTileNavController];
    [v3 _resetToViewController:v4];

    v5 = [v8 lastObject];
    v6 = [v5 integerValue];

    v7 = [*(a1 + 32) summaryDeeplinkViewController];
    [v7 showSummaryCardWithIdentifier:v6];
  }
}

void sub_100124EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activityTileNavController];
  [v3 _resetToViewController:v5];

  v6 = [v4 lastObject];

  v7 = [v6 integerValue];
  v8 = [*(a1 + 32) summaryDeeplinkViewController];
  [v8 showTrendWithIdentifier:v7 animated:0];
}

void sub_100124F50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 workoutBrowsingViewController];
  [v1 _resetToViewController:v2];
}

void sub_100124FA8(uint64_t a1, void *a2)
{
  v8 = [a2 safeObjectAtIndex:1];
  if ([v8 isEqualToString:@"pause"])
  {
    v3 = [*(a1 + 32) workoutController];
    v4 = +[NSDate date];
    v5 = v3;
    v6 = 1;
LABEL_5:
    [v5 setCurrentWorkoutPaused:v6 atDate:v4 eventSource:1];
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"resume"])
  {
    v3 = [*(a1 + 32) workoutController];
    v4 = +[NSDate date];
    v5 = v3;
    v6 = 0;
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"end"])
  {
    v3 = [*(a1 + 32) workoutController];
    [v3 endCurrentWorkoutIfNeededForReason:6];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"markSegment"])
  {
    v3 = [*(a1 + 32) workoutController];
    v4 = [v3 activeWorkout];
    v7 = [v4 sessionActivity];
    [v7 endCurrentSegment];

    goto LABEL_6;
  }

LABEL_8:
}

uint64_t sub_100127294(uint64_t a1)
{
  v2 = [*(a1 + 32) seymourNavController];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 seymourNavController];
    [v3 _setSelectedViewController:v4];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069CDC0();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100127338(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001273BC;
  block[3] = &unk_10083C528;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100127B3C(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBarController];
  v3 = [v2 viewControllers];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) tabBarController];
    [v5 setSelectedViewController:*(a1 + 40)];
  }
}

void sub_100128158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100128198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained browsingConsentAlertCompletion];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 browsingConsentAlertCompletion];
    v5[2](v5, 1);

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setBrowsingConsentAlertCompletion:0];
  }
}

void sub_100128258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained browsingConsentAlertCompletion];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 browsingConsentAlertCompletion];
    v5[2](v5, 0);

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setBrowsingConsentAlertCompletion:0];
  }
}

void sub_100128634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10012866C(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 length] >= *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained passwordEnteredHandler];

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = [v5 passwordEnteredHandler];
      (v6)[2](v6, v11);

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setPasswordEnteredHandler:0];
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 passwordController];
    [v9 dismiss];

    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 setPasswordController:0];
  }
}

void sub_100128770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained passwordEnteredHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 passwordEnteredHandler];
    v5[2](v5, 0);

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setPasswordEnteredHandler:0];
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 passwordController];
  [v8 dismiss];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setPasswordController:0];
}

id sub_100128B1C(uint64_t a1)
{
  result = [*(a1 + 32) _setupActivityAppAndLoadData];
  *(*(a1 + 32) + 9) = 0;
  return result;
}

void sub_100128FAC(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing up mirrorViewController, current: %@ (must be null)", buf, 0xCu);
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = [WOMirrorViewController alloc];
  v5 = +[WODataLinkMonitor shared];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10012932C;
  v25 = &unk_10083CE98;
  objc_copyWeak(&v26, &location);
  v6 = [(WOMirrorViewController *)v4 initWithDataLinkMonitor:v5 summaryViewControllerCompletion:&v22];
  v7 = *(a1 + 32);
  v8 = *(v7 + 408);
  *(v7 + 408) = v6;

  [*(*(a1 + 32) + 408) setModalPresentationStyle:{0, v22, v23, v24, v25}];
  v9 = [[UINavigationController alloc] initWithRootViewController:*(*(a1 + 32) + 408)];
  [v9 setModalPresentationStyle:0];
  v10 = [v9 navigationBar];
  [v10 setHidden:1];

  [v9 setDelegate:*(*(a1 + 32) + 408)];
  v11 = [*(a1 + 32) workoutBrowsingViewController];
  v12 = [v11 presentedMirroredStartViewController:*(*(a1 + 32) + 408)];

  if (!v12 || ([v12 navigationController], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
  {
    v20 = *(a1 + 32);
    v21 = [v20 activityTileNavController];
    [v20 _resetToViewController:v21];

    v18 = [*(a1 + 32) activityTileNavController];
    [v18 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing up mirrorViewController from mirroredStartViewController: %@", buf, 0xCu);
    }

    v16 = [v12 navigationController];
    v17 = [v16 viewControllers];
    v18 = [v17 mutableCopy];

    [v18 removeLastObject];
    [v18 addObject:*(*(a1 + 32) + 408)];
    v19 = [v12 navigationController];
    [v19 setViewControllers:v18 animated:0];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_1001292E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10012932C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained provideSummaryViewControllerForDataSource:v3];

  return v5;
}

id sub_100129394(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController with showing timeout dialog completion: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001294A8;
  v6[3] = &unk_10083A8D8;
  v6[4] = v4;
  v7 = *(a1 + 40);
  return [v4 dismissMirrorViewControllerWithCompletion:v6];
}

void sub_1001294A8(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    v4 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController with showing timeout dialog all complete: %@, showing timeout: %@", &v5, 0x16u);
  }
}

id sub_100129588(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 408);
    v5 = @"YES";
    if (!*(a1 + 48))
    {
      v5 = @"NO";
    }

    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[dataLink] updateWorkoutState: Bringing down mirrorViewController all complete: %@, showing timeout: %@, assertion: %@", &v7, 0x20u);
  }

  return [*(a1 + 40) invalidate];
}

id sub_100129834(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    v4 = v2;
    v5 = [v3 presentedViewController];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[dataLink] dismiss: Bringing down mirrorViewController.presentedViewController completion: %@", &v7, 0xCu);
  }

  return [*(a1 + 32) _dismissMirrorViewControllerAndClearReferenceWithCompletion:*(a1 + 40)];
}

uint64_t sub_100129A6C(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[dataLink] dismissAndClear: Bringing down mirrorViewController completion: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 408);
  *(v4 + 408) = 0;

  return (*(*(a1 + 40) + 16))();
}

void sub_100129C00(uint64_t a1)
{
  v1 = [*(a1 + 32) summaryDeeplinkViewController];
  [v1 navigateToHistoryAnimated:1];
}

void sub_10012B7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012B7F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ASLoggingInitialize();
    v2 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received Watch pairing changed notification", v3, 2u);
    }

    [WeakRetained _updateSharingTextForMe];
  }
}

void sub_10012BAAC(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10012BB28;
  v2[3] = &unk_10083A8D8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10012BB28(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[NSCalendar hk_gregorianCalendar];
    v3 = [v2 isDateInToday:*(*(a1 + 32) + 40)];

    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3)
    {
      v6 = @"MULTIPLE_DEVICES_SHARING_TODAY";
    }

    else
    {
      v6 = @"MULTIPLE_DEVICES_SHARING_PAST";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_1008680E8 table:@"Localizable"];
    v8 = *(a1 + 32);
    v9 = *(v8 + 272);
    *(v8 + 272) = v7;

    v10 = *(a1 + 32);

    [v10 _reloadData];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 272);
    *(v11 + 272) = &stru_1008680E8;
  }
}

NSString *__cdecl sub_10012C0A8(id a1, ACHAchievement *a2)
{
  v2 = [(ACHAchievement *)a2 template];
  v3 = [v2 uniqueName];

  return v3;
}

void sub_10012D900(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupCellSizes];
    [v2[2] reloadData];
    WeakRetained = v2;
  }
}

int64_t sub_10012FB10(id a1, _HKFitnessFriendWorkout *a2, _HKFitnessFriendWorkout *a3)
{
  v4 = a2;
  v5 = [(_HKFitnessFriendWorkout *)a3 startDate];
  v6 = [(_HKFitnessFriendWorkout *)v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_10012FE98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relevantEarnedInstance];
  v5 = v4;
  if (v4)
  {
    v20 = a1;
    v6 = [v4 value];

    if (v6)
    {
      v7 = [v5 value];
      v8 = [v3 template];
      v9 = [v8 canonicalUnit];
      [v7 doubleValueForUnit:v9];
      v10 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v10 = 0;
    }

    v12 = [v3 template];
    v13 = [v12 uniqueName];
    v14 = +[NSCalendar hk_gregorianCalendar];
    v15 = [v5 earnedDateComponents];
    v16 = [v14 dateFromComponents:v15];
    v17 = [*(*(v20 + 32) + 32) UUID];
    v18 = v10;
    v11 = [_HKFitnessFriendAchievement achievementWithTemplateUniqueName:v13 completedDate:v16 value:v10 friendUUID:v17];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100131168(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SetMuteEnabled result: %d/%{public}@", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001312BC;
  block[3] = &unk_10083CFE0;
  v11 = a2;
  v9 = v5;
  v12 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001312BC(uint64_t a1)
{
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = *(a1 + 49);
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v2)
    {
      v5 = @"SHARING_UNMUTING_ERROR_%@";
    }

    else
    {
      v5 = @"SHARING_MUTING_ERROR_%@";
    }

    v14 = [v3 localizedStringForKey:v5 value:&stru_1008680E8 table:@"Localizable"];

    v6 = [NSString localizedStringWithFormat:v14, *(a1 + 40)];
    if (*(a1 + 49))
    {
      v7 = @"UNMUTE_NOTIFICATIONS";
    }

    else
    {
      v7 = @"MUTE_NOTIFICATIONS";
    }

    v8 = ActivitySharingBundle();
    v9 = [v8 localizedStringForKey:v7 value:&stru_1008680E8 table:@"Localizable"];

    v10 = [UIAlertController alertControllerWithTitle:v9 message:v6 preferredStyle:1];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];
    [v10 addAction:v13];

    sub_1001084B8(v10);
  }
}

void sub_100131498(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hiding not allowed, showing alert with message: %@", &v11, 0xCu);
  }

  v5 = ActivitySharingBundle();
  v6 = [v5 localizedStringForKey:@"COMPETITION_HIDING_NOT_ALLOWED_TITLE" value:&stru_1008680E8 table:@"Localizable"];

  v7 = [UIAlertController alertControllerWithTitle:v6 message:v3 preferredStyle:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v7 addAction:v10];

  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

void sub_100131648(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SetActivityDataVisible result: %d/%{public}@", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013179C;
  block[3] = &unk_10083CFE0;
  v11 = a2;
  v9 = v5;
  v12 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10013179C(uint64_t a1)
{
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = *(a1 + 49);
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v2)
    {
      v5 = @"SHARING_HIDING_ERROR";
    }

    else
    {
      v5 = @"SHARING_SHOWING_ERROR";
    }

    v13 = [v3 localizedStringForKey:v5 value:&stru_1008680E8 table:@"Localizable"];

    v6 = [NSString localizedStringWithFormat:v13, *(a1 + 40)];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
    v9 = [UIAlertController alertControllerWithTitle:v8 message:v6 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
    [v9 addAction:v12];

    sub_1001084B8(v9);
  }
}

void sub_100131968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  v4 = *(v2 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100131A4C;
  v8[3] = &unk_10083AC40;
  v9 = *(a1 + 40);
  [v3 removeFriend:v4 completion:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained navigationController];
  v7 = [v6 popViewControllerAnimated:1];
}

void sub_100131A4C(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v10 = a2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removal completion block called with success: %ld, error: %{public}@", buf, 0x16u);
  }

  if (v5 || (a2 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100131B8C;
    block[3] = &unk_10083A8B0;
    v8 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100131B8C(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SHARING_REMOVE_ERROR" value:&stru_1008680E8 table:@"Localizable"];
  v10 = [NSString localizedStringWithFormat:v3, *(a1 + 32)];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
  v6 = [UIAlertController alertControllerWithTitle:v5 message:v10 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
  [v6 addAction:v9];

  sub_1001084B8(v6);
}

void sub_100131D18(uint64_t a1)
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100132174;
  v29[3] = &unk_10083A970;
  v2 = *(a1 + 40);
  v29[4] = *(a1 + 32);
  v30 = v2;
  v3 = objc_retainBlock(v29);
  v4 = [*(*(a1 + 32) + 32) supportsCompetitions];
  v5 = *(*(a1 + 32) + 32);
  if (v4)
  {
    if (![v5 isMyActivityDataCurrentlyHidden])
    {
      (v3[2])(v3);
      goto LABEL_9;
    }

    ASLoggingInitialize();
    v6 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "My activity data is currently hidden, showing unhide confirmation", buf, 2u);
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_HIDING" value:&stru_1008680E8 table:@"Localizable"];
    v9 = [*(*(a1 + 32) + 32) displayName];
    v10 = [*(*(a1 + 32) + 32) displayName];
    v11 = [NSString stringWithFormat:v8, v9, v10];

    v12 = [UIAlertController alertControllerWithTitle:*(a1 + 48) message:v11 preferredStyle:1];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
    [v12 addAction:v15];

    v16 = ActivitySharingBundle();
    v17 = [v16 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_SEND_ACTION_HIDING" value:&stru_1008680E8 table:@"Localizable"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001325E0;
    v26[3] = &unk_10083C710;
    v27 = v3;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v26];
    [v12 addAction:v18];

    [*(a1 + 32) presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v11 = [v5 as_competitionSendConfirmationTitle];
    v19 = ActivitySharingBundle();
    v20 = [v19 localizedStringForKey:@"COMPETITION_SEND_ERROR_FRIEND_VERSION_TOO_LOW" value:&stru_1008680E8 table:@"Localizable"];
    v21 = [*(*(a1 + 32) + 32) displayName];
    v12 = [NSString stringWithFormat:v20, v21];

    v22 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:0];
    [v22 addAction:v25];

    [*(a1 + 32) presentViewController:v22 animated:1 completion:0];
  }

LABEL_9:
}

void sub_100132174(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v6 = *(*(a1 + 32) + 32);
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending competition request to friend: %@{public}@ - %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  v9 = *(v7 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001322F0;
  v10[3] = &unk_10083AC40;
  v11 = *(a1 + 40);
  [v8 sendCompetitionRequestToFriend:v9 completion:v10];
}

void sub_1001322F0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Send competition request completion with success: %d, error: %{public}@", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013243C;
  block[3] = &unk_10083A920;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10013243C(uint64_t a1)
{
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = ActivitySharingBundle();
    v10 = [v2 localizedStringForKey:@"COMPETITION_ERROR_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    v3 = ActivitySharingBundle();
    v4 = [v3 localizedStringForKey:@"COMPETITION_SEND_ERROR_MESSAGE" value:&stru_1008680E8 table:@"Localizable"];
    v5 = [NSString localizedStringWithFormat:v4, *(a1 + 40)];

    v6 = [UIAlertController alertControllerWithTitle:v10 message:v5 preferredStyle:1];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
    [v6 addAction:v9];

    sub_1001084B8(v6);
  }
}

void sub_1001325F0(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 32) as_competitionLearnMoreTitleForExperienceType:*(*(a1 + 32) + 336)];
  v2 = [*(*(a1 + 32) + 32) as_competitionLearnMoreFullDescriptionForExperienceType:*(*(a1 + 32) + 336)];
  v3 = [UIAlertController alertControllerWithTitle:v7 message:v2 preferredStyle:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:0];
  [v3 addAction:v6];

  [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
}

void sub_100132D84(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  *&qword_1008F9B60 = 1.0 / v1;
}

void sub_1001333AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1001333D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 56) == a3)
  {
    v6 = [UIImage _systemImageNamed:@"checkmark"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:a3];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100133534;
  v13 = &unk_10083C5D8;
  objc_copyWeak(&v15, (a1 + 48));
  v8 = v7;
  v14 = v8;
  v9 = [UIAction actionWithTitle:v5 image:v6 identifier:0 handler:&v10];
  [*(a1 + 40) addObject:{v9, v10, v11, v12, v13}];

  objc_destroyWeak(&v15);
}

void sub_100133534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setEditing:0 animated:1];
    [v3 _updateFilterButtonTitleForWorkoutTypeKey:*(a1 + 32)];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100133600;
    v4[3] = &unk_10083A970;
    v4[4] = v3;
    v5 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_100133788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1001337C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFiltersList];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _popViewControllerIfNeeded];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _stopActivityIndicator];
}

void sub_100133838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFiltersList];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _popViewControllerIfNeeded];
}

void sub_100133898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFiltersList];
}

void sub_1001344B0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1008F9B70;
  qword_1008F9B70 = v1;

  v3 = +[NSLocale currentLocale];
  v4 = [NSDateFormatter dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:v3];

  [qword_1008F9B70 setDateFormat:v4];
}

void sub_100134DF0(id a1)
{
  v1 = sub_100109BB4();
}

void sub_100135088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001350A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001350BC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10013511C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 preferredAppStoreIconWidth];
  v6 = v5;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v6 / v8;

  v10 = [v4 resizedImageWithNewSize:{v9, v9}];

  (*(*(a1 + 40) + 16))();
}

void sub_100135290(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogActivity;
  v5 = os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 bundleID];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Round icon for bundleID: %@ is available from NRG.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 bundleID];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Round icon for bundleID: %@ not available from NRG. Trying store.", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013545C;
    v13[3] = &unk_10083A840;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    [CHIconCacheStoreLookup fetchIconWithCHIconParameters:v12 withCompletion:v13];
  }
}

void sub_100135584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013559C(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleID];
  v11 = [LSApplicationProxy applicationProxyForCompanionIdentifier:v2];

  v3 = [[HKSource alloc] _init];
  v4 = [*(a1 + 32) bundleID];
  [v3 _setBundleIdentifier:v4];

  if (v11 || [v3 _hasFirstPartyBundleID])
  {
    v5 = [*(a1 + 32) bundleID];
    v6 = [*(a1 + 32) appIconFormat];
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:v5 format:v6 scale:?];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_100135790(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogActivity;
  v5 = os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 bundleID];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Chiclet icon for bundleID: %@ is available from LaunchServices.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 bundleID];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Chiclet icon for bundleID: %@ is not available from LaunchServices. Trying store.", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013595C;
    v13[3] = &unk_10083A840;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    [CHIconCacheStoreLookup fetchIconWithCHIconParameters:v12 withCompletion:v13];
  }
}

void sub_100135BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100135BDC()
{
  if (qword_1008F9B88 != -1)
  {
    sub_10069CEFC();
  }

  v1 = qword_1008F9B80;

  return v1;
}

void sub_100135C20(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100135CD4;
  v4[3] = &unk_10083D1D0;
  v2 = *(a1 + 64);
  v7 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 _fetchRoundIconWithParameters:v3 completion:v4];
}

void sub_100135CD4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = sub_100135BDC();
    [v5 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];

    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v16 = v7;
      v8 = "Source icon for cacheID: %@ is available.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v16 = v9;
      v8 = "Source icon for cacheID: %@ not available.";
      goto LABEL_6;
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100135E94;
  v12[3] = &unk_10083D1A8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = v10;
  v14 = v11;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_10013618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001361AC()
{
  if (qword_1008F9B98 != -1)
  {
    sub_10069CF10();
  }

  v1 = qword_1008F9B90;

  return v1;
}

void sub_1001361F0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001362CC;
  v11[3] = &unk_10083D220;
  v3 = (a1 + 64);
  v4 = *(a1 + 32);
  v9 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = v9;
  *(&v6 + 1) = *v3;
  v10 = v6;
  v7 = *(a1 + 48);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  v12 = v8;
  v13 = v10;
  [v2 _fetchRoundIconWithParameters:v4 completion:v11];
}

void sub_1001362CC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = sub_100135BDC();
    [v5 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];

    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      v8 = "Source icon for cacheID: %@ is available.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, &v10, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v8 = "Source icon for cacheID: %@ not available.";
      goto LABEL_6;
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100136690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001366B0(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100136764;
  v4[3] = &unk_10083D1D0;
  v2 = *(a1 + 64);
  v7 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 _fetchChicletWithParameters:v3 completion:v4];
}

void sub_100136764(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = sub_100135BDC();
    [v5 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];

    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v16 = v7;
      v8 = "Source icon for cacheID: %@ is available.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v16 = v9;
      v8 = "Source icon for cacheID: %@ not available.";
      goto LABEL_6;
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100136924;
  v12[3] = &unk_10083D1A8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = v10;
  v14 = v11;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_100136C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100136C3C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100136D18;
  v11[3] = &unk_10083D220;
  v3 = (a1 + 64);
  v4 = *(a1 + 32);
  v9 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = v9;
  *(&v6 + 1) = *v3;
  v10 = v6;
  v7 = *(a1 + 48);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  v12 = v8;
  v13 = v10;
  [v2 _fetchChicletWithParameters:v4 completion:v11];
}

void sub_100136D18(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = sub_100135BDC();
    [v5 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];

    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      v8 = "Source icon for cacheID: %@ is available.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, &v10, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v8 = "Source icon for cacheID: %@ not available.";
      goto LABEL_6;
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100136E8C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1008F9B80;
  qword_1008F9B80 = v1;

  [qword_1008F9B80 setEvictsObjectsWhenApplicationEntersBackground:0];
  v3 = qword_1008F9B80;

  [v3 setCountLimit:10];
}

void sub_100136EE8(id a1)
{
  v1 = HKCreateSerialDispatchQueueWithQOSClass();
  v2 = qword_1008F9B90;
  qword_1008F9B90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100137AC4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) me];
  [*(a1 + 32) _showDetailForFriend:v2 date:*(a1 + 40)];
}

void sub_100137BE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) friendWithUUID:*(a1 + 40)];
  [*(a1 + 32) _showDetailForFriend:v2 date:*(a1 + 48)];
}

void sub_1001384D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100138504(id *a1, id a2)
{
  if (a1[6] == a2)
  {
    v4 = [UIImage _systemImageNamed:@"checkmark"];
  }

  else
  {
    v4 = 0;
  }

  v5 = ASDisplayModeToString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100138634;
  v10 = &unk_10083D2B0;
  objc_copyWeak(v11, a1 + 5);
  v11[1] = a2;
  v6 = [UIAction actionWithTitle:v5 image:v4 identifier:0 handler:&v7];

  [a1[4] addObject:{v6, v7, v8, v9, v10}];
  objc_destroyWeak(v11);
}

void sub_100138634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setInteger:*(a1 + 40) forKey:@"CHFriendListDisplayMode"];

    [v6[9] setDisplayMode:*(a1 + 40)];
    [v6 _logFriendListDisplayMode:*(a1 + 40)];
    [v6 _updateSectionsForCurrentDisplayContext];
    v4 = [v6 tableView];
    [v4 reloadData];

    v5 = [v6 _sortMenu];
    [v6[15] setMenu:v5];

    WeakRetained = v6;
  }
}

void sub_1001391F8(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

void sub_100139A8C(uint64_t a1)
{
  [*(a1 + 32) _updateSectionsForCurrentDisplayContext];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

void sub_100139C6C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139CE4;
  block[3] = &unk_10083A8B0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100139CE4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [v2 refreshControl];
  [v1 endRefreshing];
}

void sub_100139EA8(uint64_t a1)
{
  [*(*(a1 + 32) + 112) removeAllObjects];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

void sub_10013A274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013A290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshCache];
}

void sub_10013A33C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"FitnessActivityWorkoutsChangedNotification" object:*(a1 + 32)];
}

void sub_10013A438(uint64_t a1)
{
  v22 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(a1 + 32) dataProvider];
  v3 = [v2 workoutsByDay];
  v4 = [v3 allKeys];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [*(*(a1 + 32) + 24) calendarIdentifier];
        v10 = [v9 isEqual:NSCalendarIdentifierGregorian];

        v11 = v8;
        if ((v10 & 1) == 0)
        {
          v12 = [*(*(a1 + 32) + 24) dateFromComponents:v8];
          v11 = _HKActivityCacheDateComponentsFromDate();
        }

        v13 = _HKCacheIndexFromDateComponents();
        v14 = [*(a1 + 32) dataProvider];
        v15 = [v14 workoutsByDay];
        v16 = [v15 objectForKeyedSubscript:v8];
        v17 = [v16 count];

        v18 = [NSNumber numberWithInt:v17 != 0];
        v19 = [NSNumber numberWithLongLong:v13];
        [v22 setObject:v18 forKeyedSubscript:v19];

        v7 = v7 + 1;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setNumberOfWorkoutsForCacheKey:v22];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A704;
  block[3] = &unk_10083C528;
  v24 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10013A7C4(void *a1)
{
  v2 = *(a1[4] + 32);
  v4 = [NSNumber numberWithLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v4];
  *(*(a1[5] + 8) + 24) = [v3 BOOLValue];
}

double sub_10013A8DC()
{
  v0 = _UISolariumEnabled();
  result = 12.0;
  if (v0)
  {
    return 26.0;
  }

  return result;
}

double sub_10013A904()
{
  v0 = _UISolariumEnabled();
  result = 12.0;
  if (v0)
  {
    return 16.0;
  }

  return result;
}

double sub_10013A940()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  if (CGRectGetWidth(v3) >= 375.0)
  {
    v1 = 112.0;
  }

  else
  {
    v1 = 90.0;
  }

  return v1;
}

double sub_10013A9A8()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  if (CGRectGetWidth(v3) >= 375.0)
  {
    v1 = 108.0;
  }

  else
  {
    v1 = 88.0;
  }

  return v1;
}

id sub_10013AA50()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"UNIT_TESTING"];

  return v1;
}

id sub_10013AA98()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"IntervalPoolSwimmingAutoSets"];

  return v1;
}

id sub_10013AAE0()
{
  v0 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [v0 applicationIsInstalled:@"com.apple.MobileSMS"];

  return v1;
}

void sub_10013AE3C(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CHMoveModeNotificationResponseCoordinator handling notification response %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 categoryIdentifier];

  v8 = +[FCNotificationRequestConstants moveModeNotificationCategory];
  LOBYTE(v5) = [v7 isEqualToString:v8];

  if ((v5 & 1) == 0)
  {
    v9 = +[FCNotificationRequestConstants moveModeChangeModeNotificationCategory];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      v11 = [*(a1 + 32) notification];
      v12 = [v11 request];
      v13 = [v12 content];
      v14 = [v13 userInfo];
      v15 = +[FCMoveModeNotificationConstants nextMoveModeUserInfoKey];
      v16 = [v14 objectForKeyedSubscript:v15];

      v17 = [v16 integerValue];
      v18 = [*(a1 + 32) notification];
      v19 = [v18 request];
      v20 = [v19 content];
      v21 = [v20 userInfo];
      v22 = +[FCMoveModeNotificationConstants notificationTypeUserInfoKey];
      v23 = [v21 objectForKeyedSubscript:v22];

      v24 = -[CHMoveModeChangePromptViewController initWithNextMoveMode:notificationType:healthStore:formattingManager:]([CHMoveModeChangePromptViewController alloc], "initWithNextMoveMode:notificationType:healthStore:formattingManager:", v17, [v23 integerValue], *(a1 + 40), *(a1 + 48));
      v25 = objc_alloc_init(UINavigationController);
      v31 = v24;
      v26 = [NSArray arrayWithObjects:&v31 count:1];
      [v25 setViewControllers:v26 animated:0];

      [*(a1 + 56) presentViewController:v25 animated:0 completion:0];
LABEL_8:

      goto LABEL_9;
    }

    v27 = +[FCNotificationRequestConstants moveModeChangeGoalsNotificationCategory];
    v28 = [v7 isEqualToString:v27];

    if (v28)
    {
      v16 = objc_alloc_init(UINavigationController);
      v23 = [[FIUIPregnancyStateProvider alloc] initWithHealthStore:*(a1 + 40)];
      v24 = [[CHASActivitySetupMetricsCollectionViewController alloc] initWithPresentationContext:6 pregnancyStateProvider:v23];
      v30 = v24;
      v29 = [NSArray arrayWithObjects:&v30 count:1];
      [v16 setViewControllers:v29 animated:0];

      [*(a1 + 56) presentViewController:v16 animated:0 completion:0];
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_10013B330(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_1008F9BA0;
  qword_1008F9BA0 = v1;

  [qword_1008F9BA0 setMinimumFractionDigits:0];
  [qword_1008F9BA0 setMaximumFractionDigits:2];
  v3 = qword_1008F9BA0;

  [v3 setNumberStyle:1];
}

void sub_10013BF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    a10 = NSLocalizedFailureReasonErrorKey;
    v15 = [v14 reason];
    a12 = v15;
    a11 = NSLocalizedDescriptionKey;
    v16 = [v14 name];
    a13 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    v18 = [NSError errorWithDomain:@"com.apple.ObjectiveCException" code:-1 userInfo:v17];

    if (v13)
    {
      v19 = v18;
      *v13 = v18;
    }

    objc_end_catch();
    JUMPOUT(0x10013BF00);
  }

  _Unwind_Resume(exception_object);
}

id sub_10013CD10(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void sub_10013D140(uint64_t a1)
{
  v2 = +[UIColor labelColor];
  [*(a1 + 32) setTextColor:v2];
}

void sub_10013D390(uint64_t a1)
{
  v2 = +[UIColor labelColor];
  [*(a1 + 32) setTextColor:v2];
}

uint64_t sub_10013E558(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "summaryTabHighlightCard";
  }

  else
  {
    v2 = "ion";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "summaryTabHighlightCard";
  }

  else
  {
    v4 = "ion";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_10013E5FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E674()
{
  String.hash(into:)();
}

Swift::Int sub_10013E6D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E74C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10083D568, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10013E7AC(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "summaryTabHighlightCard";
  }

  else
  {
    v2 = "ion";
  }

  *a1 = 0xD000000000000017;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_10013E7E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10013E858(uint64_t a1, char a2)
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = sub_100140278(&qword_1008DB8C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  *(v2 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_messageComposerDelegate) = 0;
  v12 = OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator__replyOptions;
  v17[1] = _swiftEmptyArrayStorage;
  sub_100140278(&unk_1008E99C0);
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  sub_10002E710(a1, v2 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight);
  *(v2 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_context) = a2 & 1;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_10026E198(0, 0, v7, &unk_1006D3CC8, v14);

  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v2 selector:"refreshReplyOptions" name:NSCurrentLocaleDidChangeNotification object:0];

  sub_10002E870(a1);
  return v2;
}

uint64_t sub_10013EAFC()
{
  v1 = v0[3] + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight;
  [*(v1 + *(type metadata accessor for ActivitySharingHighlight() + 28)) isCompetitionActive];
  v2 = 0;
  if (*(v1 + 8) == 2)
  {
    v2 = *v1;
  }

  v3 = ASActivitySharingRandomizedLocalizedReplyForReplyContextType();

  if (v3)
  {
    v0[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for MainActor();
    v0[5] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v4 = sub_10013EC30;
    v5 = v7;
    v6 = v9;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013EC30()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  static Published.subscript.setter();
  v2 = v0[1];

  return v2();
}

id sub_10013EDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v83 = a2;
  v5 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v5 - 8);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v76 - v8;
  __chkstk_darwin(v9);
  v77 = &v76 - v10;
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  __chkstk_darwin(v14);
  v89 = &v76 - v15;
  v16 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v16 - 8);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = &v76 - v19;
  __chkstk_darwin(v20);
  v22 = &v76 - v21;
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = 1;
  v87 = v27 + 56;
  v88 = v25;
  v28(v25, 1, 1, v26);
  v30 = v3 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight;
  v31 = *(v30 + *(type metadata accessor for ActivitySharingHighlight() + 28));
  v32 = [v31 UUID];
  if (v32)
  {
    v33 = v32;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v13, v29, 1, v34);
  sub_100015E80(v13, v89, &unk_1008DB8A0);
  result = [v31 contact];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v37 = result;
  v84 = v28;
  v85 = v26;
  v86 = a3;
  v38 = [result primaryDestinationForMessaging];

  v39 = v38;
  v40 = v38;
  v41 = v38;
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  v42 = *v30;
  v43 = *(v30 + 8);
  v44 = v38;
  v45 = v42;
  if (v43)
  {
    if (v43 == 1)
    {

      v46 = [objc_opt_self() snapshotWithActivitySummary:v45];
      v47 = String._bridgeToObjectiveC()();
      v48 = v78;
      sub_1001423D0(v89, v78);
      v49 = (*(v35 + 48))(v48, 1, v34);
      v50 = v86;
      if (v49 == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v35 + 8))(v48, v34);
      }

      v64 = ASRichMessagePayloadForGoalCompletion();

      if (v64)
      {
        v22 = v80;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = 0;
        v45 = v64;
        v66 = v88;
      }

      else
      {
        v65 = 1;
        v66 = v88;
        v22 = v80;
      }

      goto LABEL_34;
    }

    v53 = [objc_opt_self() fitnessFriendWorkoutFromHKWorkout:v45];
    v60 = String._bridgeToObjectiveC()();
    v61 = v79;
    sub_1001423D0(v89, v79);
    v62 = (*(v35 + 48))(v61, 1, v34);
    v50 = v86;
    if (v62 == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v61, v34);
    }

    v67 = ASRichMessagePayloadForWorkout();

    if (v67)
    {
      v22 = v81;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = 0;
      v45 = v67;
      v66 = v88;
    }

    else
    {
      v65 = 1;
      v66 = v88;
      v22 = v81;
    }

LABEL_33:
LABEL_34:
    sub_10000EA04(v89, &unk_1008DB8A0);
    sub_10000EA04(v66, &unk_1008EB5B0);
    v84(v22, v65, 1, v85);
    sub_100015E80(v22, v66, &unk_1008EB5B0);
    return sub_100015E80(v66, v50, &unk_1008EB5B0);
  }

  v52 = [v45 relevantEarnedInstance];
  if (v52)
  {
    v53 = v52;
    v54 = [v45 template];
    v55 = ASFriendAchievementFromTemplateAndEarnedInstance();

    v56 = v55;
    v57 = String._bridgeToObjectiveC()();
    v58 = v77;
    sub_1001423D0(v89, v77);
    if ((*(v35 + 48))(v58, 1, v34) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v58, v34);
    }

    v75 = ASRichMessagePayloadForAchievement();

    if (v75)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = 0;
      v45 = v56;
      v56 = v75;
    }

    else
    {
      v65 = 1;
    }

    v50 = v86;
    v66 = v88;

    goto LABEL_33;
  }

  v68 = static os_log_type_t.error.getter();
  v69 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v68))
  {
    v70 = v69;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v45;
    *v72 = v42;
    v73 = v45;
    _os_log_impl(&_mh_execute_header, v70, v68, "Failed to get earned instance for achievement: %@", v71, 0xCu);
    sub_10000EA04(v72, &unk_1008DB8B0);

    v45 = v70;
  }

  v74 = v88;

  sub_10000EA04(v89, &unk_1008DB8A0);
  sub_10000EA04(v74, &unk_1008EB5B0);
  return (v84)(v86, 1, 1, v85);
}

id sub_10013F6D8()
{
  v1 = type metadata accessor for Date();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v3 = v0 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight;
  v4 = *(v3 + *(type metadata accessor for ActivitySharingHighlight() + 28));
  result = [v4 UUID];
  if (result)
  {
    v6 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v4 contact];
    if (result)
    {
      v7 = result;
      v8 = [result primaryDestinationForMessaging];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Date.init()();
      return Reply.init(message:isFromMe:friend:recipientAddress:timestamp:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10013F860()
{
  sub_100140278(&qword_1008DB880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  strcpy((inited + 32), "activityType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1000059F8(0, &qword_1008DB888);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  v1 = String._bridgeToObjectiveC()();

  *(inited + 72) = v1;
  v2 = sub_1004C91EC(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008DB890);
  swift_arrayDestroy();
  v3 = String._bridgeToObjectiveC()();
  sub_1003784EC(v2);

  sub_1000059F8(0, &qword_1008DB898);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  FIActivityAnalyticsSubmissionWithPayload();
}

uint64_t sub_10013FA80()
{
  sub_10002E870(v0 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight);

  v1 = OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator__replyOptions;
  v2 = sub_100140278(&qword_1008DB8C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10013FB48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingReplyCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013FB88(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = 0xE600000000000000;
    v13 = 0x64656C696166;
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    if (a2 == 1)
    {
      v15 = 1953391987;
      v14 = 0xE400000000000000;
    }

    if (a2 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (a2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0x656C6C65636E6163;
    }

    if (a2)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0xE900000000000064;
    }

    v18 = sub_10000AFDC(v16, v17, &v20);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v5, "%s Activity sharing reply message sent with result: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
  return (*(v2 + OBJC_IVAR____TtCC10FitnessApp31ActivitySharingReplyCoordinator23MessageComposerDelegate_completion))(a2);
}

id sub_10013FE28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingReplyCoordinator.MessageComposerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10013FE70()
{
  result = qword_1008DB008;
  if (!qword_1008DB008)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DB008);
  }

  return result;
}

uint64_t sub_10013FEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_10069AF38(2, 26, 4, 0))
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = type metadata accessor for _TaskModifier2();
    v17 = *(v35 - 8);
    __chkstk_darwin(v35);
    v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      v26._countAndFlagsBits = a3;
      v26._object = a4;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v39 = a5;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);
    }

    v29 = type metadata accessor for TaskPriority();
    __chkstk_darwin(v29);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v32 = sub_100140278(&qword_1008DB018);
    (*(*(v32 - 8) + 16))(a8, v38, v32);
    v33 = sub_100140278(&qword_1008DB020);
    return (*(v17 + 32))(a8 + *(v33 + 36), v19, v35);
  }

  else
  {
    v20 = (a8 + *(sub_100140278(&qword_1008DB028) + 36));
    v21 = *(type metadata accessor for _TaskModifier() + 20);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 16))(&v20[v21], a2, v22);
    *v20 = a6;
    *(v20 + 1) = a7;
    v23 = sub_100140278(&qword_1008DB018);
    v24 = *(*(v23 - 8) + 16);

    return v24(a8, v8, v23);
  }
}

uint64_t sub_100140278(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001402C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_10069AF38(2, 26, 4, 0))
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = type metadata accessor for _TaskModifier2();
    v17 = *(v35 - 8);
    __chkstk_darwin(v35);
    v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      v26._countAndFlagsBits = a3;
      v26._object = a4;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v39 = a5;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);
    }

    v29 = type metadata accessor for TaskPriority();
    __chkstk_darwin(v29);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v32 = sub_100140278(&qword_1008DB030);
    (*(*(v32 - 8) + 16))(a8, v38, v32);
    v33 = sub_100140278(&qword_1008DB038);
    return (*(v17 + 32))(a8 + *(v33 + 36), v19, v35);
  }

  else
  {
    v20 = (a8 + *(sub_100140278(&qword_1008DB040) + 36));
    v21 = *(type metadata accessor for _TaskModifier() + 20);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 16))(&v20[v21], a2, v22);
    *v20 = a6;
    *(v20 + 1) = a7;
    v23 = sub_100140278(&qword_1008DB030);
    v24 = *(*(v23 - 8) + 16);

    return v24(a8, v8, v23);
  }
}

uint64_t sub_100140684@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_100140278(&qword_1008DB048);
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  result = sub_100140278(&qword_1008DB050);
  v9 = a3 + *(result + 36);
  *v9 = a1;
  *(v9 + 8) = a2;
  return result;
}

uint64_t sub_100140720@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_10006965C(a3, a4, a5 & 1);
}

uint64_t sub_100140778@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_10006965C(a3, a4, a5 & 1);
}

uint64_t sub_1001407D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a7 + *(sub_100140278(&qword_1008DB058) + 36);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 16))(v14, a1, DataType);
  *(v14 + *(sub_100140278(&qword_1008DB060) + 36)) = a2;
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  sub_10006965C(a3, a4, a5 & 1);
}

uint64_t sub_1001408C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a4;
  *(a8 + 8) = a5;
  *(a8 + 16) = a6 & 1;
  *(a8 + 24) = a7;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2 & 1;
  *(a8 + 41) = a3;
  sub_10006965C(a4, a5, a6 & 1);
}

uint64_t variable initialization expression of WorkoutTabTracker.mirroredStartHelper()
{
  type metadata accessor for MirroredStartHelper();
  swift_allocObject();
  return MirroredStartHelper.init()();
}

double variable initialization expression of DivingDataCalculator._metrics@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 11565;
  *(a1 + 32) = 0xE200000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 11565;
  *(a1 + 64) = 0xE200000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 11565;
  *(a1 + 96) = 0xE200000000000000;
  *(a1 + 104) = 11565;
  *(a1 + 112) = 0xE200000000000000;
  *(a1 + 120) = 11565;
  *(a1 + 128) = 0xE200000000000000;
  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1;
  return result;
}

uint64_t variable initialization expression of WorkoutVoiceOnboardingViewiOS._workoutVoiceAvailabilityProvider()
{
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  sub_100141D0C(&qword_1008DB070, &type metadata accessor for WorkoutVoiceAvailabilityProvider);
  return Environment.init<A>(_:)();
}

uint64_t variable initialization expression of WorkoutVoiceOnboardingViewiOS._withCurrentHostingController@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008DB078);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s10FitnessApp29WorkoutVoiceOnboardingViewiOSV08_workoute12CoordinatoriG033_04161EEE6F392687A45C6E81750CA732LL7SwiftUI17EnvironmentObjectVyAA0ceiG0CGvpfi_0()
{
  type metadata accessor for WorkoutOnboardingCoordinatoriOS();
  sub_100141D0C(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);

  return EnvironmentObject.init()();
}

uint64_t sub_100140B90@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100140C10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100140C94(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100140CE8(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100140D40@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_100140DA0@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

void *sub_100140DF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100140E1C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100140EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_100140F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_100140FB8@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100140FE0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100141058(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001410D8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100141124()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_100141190()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001411D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10014121C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001B3C50();

  *a1 = v2;
  return result;
}

uint64_t sub_100141268()
{
  sub_100141D0C(&qword_1008E7FD0, type metadata accessor for Key);
  sub_100141D0C(&qword_1008DBAC0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *sub_100141324@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100141334@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100141340()
{
  sub_100141D0C(&qword_1008DBA78, type metadata accessor for UILayoutPriority);
  sub_100141D0C(&unk_1008DBA80, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001413FC()
{
  sub_100141D0C(&qword_1008DBA98, type metadata accessor for AttributeName);
  sub_100141D0C(&qword_1008DBAA0, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001414B8()
{
  sub_100141D0C(&qword_1008DBA68, type metadata accessor for TraitKey);
  sub_100141D0C(&qword_1008DBA70, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_100141574@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100141580()
{
  sub_100141D0C(&qword_1008DBA50, type metadata accessor for Weight);
  sub_100141D0C(&qword_1008DBA58, type metadata accessor for Weight);
  sub_100142FCC();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100141648()
{
  sub_100141D0C(&qword_1008DB6F0, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_100141D0C(&qword_1008DB6F8, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100141704()
{
  sub_100141D0C(&qword_1008DB6E0, type metadata accessor for ActivityType);
  sub_100141D0C(&qword_1008DB6E8, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001417C0()
{
  sub_100141D0C(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
  sub_100141D0C(&qword_1008DBA90, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10014187C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1001418C4()
{
  sub_100141D0C(&qword_1008DBAA8, type metadata accessor for FeatureKey);
  sub_100141D0C(&unk_1008DBAB0, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int sub_100141A24()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_100141A94()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_100141AD0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void sub_100141AF4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100141B58()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100141B94()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100141BE8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100141C84()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100141D0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingReplyCoordinator()
{
  result = qword_1008DB0C0;
  if (!qword_1008DB0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100141DA8()
{
  type metadata accessor for ActivitySharingHighlight();
  if (v0 <= 0x3F)
  {
    sub_100141E88();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100141E88()
{
  if (!qword_1008DB0D0[0])
  {
    sub_100141EEC(&unk_1008E99C0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, qword_1008DB0D0);
    }
  }
}

uint64_t sub_100141EEC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100142020(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}