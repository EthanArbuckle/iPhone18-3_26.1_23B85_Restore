void sub_1000ABC64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000AC2C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000AC948(id a1)
{
  v1 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  v2 = qword_1006DCEB8;
  qword_1006DCEB8 = v1;
}

void sub_1000AC990(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mobilemail.pushStatusUpdates", v3);
  v2 = qword_1006DCEC8;
  qword_1006DCEC8 = v1;
}

void *sub_1000AC9F4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = FavoritesCollection;
  v3 = objc_msgSendSuper2(&v6, "init");
  v4 = v3;
  if (v3)
  {
    v3[1] = a2;
    sub_1000ACA80(v3, a2);
  }

  return v4;
}

void sub_1000ACA80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [EFLocked alloc];
    v7 = [[FavoritesCollectionState alloc] initWithType:a2];
    v5 = [v4 initWithObject:?];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;
  }
}

uint64_t sub_1000ACF28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000ACF40(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 isEditing];
}

void sub_1000ACFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != [v3 isEditing])
  {
    [v3 setEditing:?];
    [v3 invalidateVisibleItems];
  }
}

void sub_1000AD034(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 addItem:*(a1 + 32) ordered:*(a1 + 48)];
}

void sub_1000AD0A4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [v3 wasAddedToCollection:a1];
    [a1 invalidateVisibleItems];
  }
}

void sub_1000AD114(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 addExpandedItem:*(a1 + 32)];
}

void sub_1000AD180(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addOrUpdateItem:a1[4] didAdd:*(a1[6] + 8) + 24 didReplace:*(a1[7] + 8) + 24];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD20C(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addOrUpdateExpandedItem:a1[4] didAdd:*(a1[6] + 8) + 24 didReplace:*(a1[7] + 8) + 24];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD3FC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeItem:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD474(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [v3 wasRemovedFromCollecion:a1];
    [a1 invalidateVisibleItems];
  }
}

void sub_1000AD4E4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeExpandedItem:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD55C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeItemWithSyncKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD5D4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 itemWithSyncKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000AD64C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 expandedItems];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000AD6D8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 selectedItems];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_1000AD800(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000ACF28;
    v13 = sub_1000ACF38;
    v14 = 0;
    v4 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000AE02C;
    v6[3] = &unk_10064ECA8;
    v8 = &v9;
    v7 = v3;
    [v4 performWhileLocked:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_1000AD92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_1000AD9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 isVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1000ADB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 displayName];
  LOBYTE(v4) = [v4 ef_caseInsensitiveIsEqualToString:v5];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 representingMailbox];
    v8 = +[MFMailboxUid specialNameForType:](MFMailboxUid, "specialNameForType:", [v7 mailboxType]);

    if (v8)
    {
      v6 = [*(a1 + 32) ef_caseInsensitiveIsEqualToString:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id *sub_1000ADBF4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000ACF28;
    v13 = sub_1000ACF38;
    v14 = objc_alloc_init(NSMutableArray);
    v4 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000AE0C0;
    v6[3] = &unk_10064ECD0;
    v7 = v3;
    v8 = &v9;
    [v4 performWhileLocked:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_1000ADD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000ADE28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [v4 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 representingMailbox];
    v8 = +[MFMailboxUid specialNameForType:](MFMailboxUid, "specialNameForType:", [v7 mailboxType]);

    if (v8)
    {
      v6 = [v8 localizedCaseInsensitiveContainsString:*(a1 + 32)];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id sub_1000ADFD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 itemURLString];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_1000AE02C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 items];
  v4 = [v3 ef_filter:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000AE0C0(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a2 items];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if ((*(*(a1 + 32) + 16))())
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
        }

        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v8 = [v7 subItems];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v13 + 1) + 8 * v11);
              if ((*(*(a1 + 32) + 16))())
              {
                [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_1000AE2DC(uint64_t a1, void *a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a2 items];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v8 = [v7 subItems];
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v9)
        {
          v10 = *v13;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(*(a1 + 32) + 8) + 40) addObject:*(*(&v12 + 1) + 8 * j)];
            }

            v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }
}

id sub_1000AE4C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a2 == 3)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ACCOUNTS" value:&stru_100662A88 table:@"Main"];
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"__OUTBOX__" value:&stru_100662A88 table:@"Main"];
    goto LABEL_9;
  }

  if (a2 != 1)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INBOXES" value:&stru_100662A88 table:@"Main"];
LABEL_9:
  v4 = v3;

LABEL_10:

  return v4;
}

void sub_1000AE7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE820(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 countOfVisibleItems];
}

void sub_1000AEA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

void sub_1000AEA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
}

void sub_1000AF348(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_1006DCEE8;
  qword_1006DCEE8 = v1;
}

void sub_1000AF55C(id a1)
{
  v1 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
  v2 = qword_1006DCEF8;
  qword_1006DCEF8 = v1;
}

id sub_1000AF6BC(uint64_t a1, void *a2)
{
  v3 = [a2 syncKey];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000B0108(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_1000B01E4(id a1, FavoriteItem *a2)
{
  v2 = a2;
  if ([(FavoriteItem *)v2 isVisible])
  {
    v3 = [(FavoriteItem *)v2 isSelected];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000B0384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1000B08CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B09C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reload:v3];
}

void sub_1000B0A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) BOOLForKey:EMUserDefaultDisableFollowUp];
    v4 = [WeakRetained mailboxesCollection];
    v5 = [v4 visibleItems];

    if (v3)
    {
      v6 = [v5 ef_any:&stru_10064EDE8];
      v7 = EMUserDefaultAddFollowUpMailboxOnEnablement;
      [*(a1 + 32) setBool:v6 forKey:EMUserDefaultAddFollowUpMailboxOnEnablement];
    }

    else
    {
      v7 = EMUserDefaultAddFollowUpMailboxOnEnablement;
    }

    [WeakRetained scheduleSetVisibility:(v3 ^ 1) & objc_msgSend(*(a1 + 32) forSourceType:{"BOOLForKey:", v7), 23}];
    v8 = +[EFScheduler globalAsyncScheduler];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B0C00;
    v9[3] = &unk_10064D9D8;
    v10 = WeakRetained;
    v11 = v3;
    [v8 performBlock:v9];
  }
}

void sub_1000B0D0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000B1960(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    v3 = +[NSUserDefaults em_userDefaults];
    [v3 setBool:a2 forKey:@"FavoritesManagerDefaultKeyHasLaunchedWithCollapsibleMailboxes"];
  }
}

id sub_1000B19F8(id a1, NSDictionary *a2)
{
  v2 = [FavoriteItem itemFromDictionary:a2];
  v3 = v2;
  if (v2)
  {
    [v2 sourceType];
    if (_MSSourceTypeIsValid())
    {
      v4 = v3;
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

  v5 = v4;

  return v4;
}

BOOL sub_1000B1A6C(id a1, FavoriteItem *a2)
{
  v2 = a2;
  if ([(FavoriteItem *)v2 type]== 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(FavoriteItem *)v2 isExpanded];
  }

  return v3;
}

BOOL sub_1000B1AC8(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 account];
  v3 = [v2 isActive];

  return v3;
}

void *sub_1000B1C6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"FavoritesPersistenceCollectionChangedSourceKey"];
    a1 = ([a1 isEqual:v6] ^ 1);
  }

  return a1;
}

BOOL sub_1000B40EC(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1000B4C24(uint64_t a1)
{
  sub_100006E64(*(a1 + 32));
  v2 = sub_100007718();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FavoritesPersistence collection reloaded.", v4, 2u);
  }

  return [*(a1 + 40) postNotificationName:@"MailApplicationFavoritesDidChange" object:*(a1 + 32)];
}

void sub_1000B4CB0(uint64_t a1)
{
  v3 = NSUbiquitousKeyValueStoreChangeReasonKey;
  v4 = &off_100674048;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [*(a1 + 32) postNotificationName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(*(a1 + 40) + 112) userInfo:v2];
}

void sub_1000B4D74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[12] = [*(a1 + 32) BOOLForKey:EMUserDefaultDisableFollowUp];
    sub_100006E64(WeakRetained);
  }
}

void sub_1000B4E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FavoritesPersistence;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000B4E98(uint64_t a1, char a2)
{
  if (a1)
  {
    if (pthread_main_np() != 1)
    {
      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:"_loadMailboxesForcibly:" object:a1 file:@"FavoritesPersistence.m" lineNumber:886 description:@"Current thread must be main"];
    }

    Current = CFAbsoluteTimeGetCurrent();
    v38 = [*(a1 + 104) displayedAccounts];
    v5 = sub_1000080E8(a1);
    v39 = [v5 items];

    if ([v38 count] || objc_msgSend(v39, "count"))
    {
      v37 = [v39 ef_filter:&stru_10064F0E0];
      if (a2)
      {
        goto LABEL_18;
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v6 = v37;
      v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v7)
      {
        v8 = *v58;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v58 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = [*(*(&v57 + 1) + 8 * i) subItems];
            v11 = [v10 count] == 0;

            if (v11)
            {

              goto LABEL_18;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if (Current - *&qword_1006DCF18 > 5.0)
      {
LABEL_18:
        qword_1006DCF18 = *&Current;
        *(a1 + 11) = 1;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = v37;
        v13 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v13)
        {
          v41 = *v54;
          do
          {
            v42 = v13;
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v54 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v53 + 1) + 8 * j);
              v44 = [v21 account];
              v22 = +[MailChangeManager sharedChangeManager];
              v43 = [v22 allMailboxUidsSortedWithSpecialsAtTopForAccount:v44 includingLocals:1 client:a1 outbox:0];

              v23 = sub_100007718();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v43 count];
                *buf = 134217984;
                v64 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "loaded sortedMailboxes.count:%lu", buf, 0xCu);
              }

              v25 = +[NSMutableArray array];
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v26 = v43;
              v27 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
              if (v27)
              {
                v28 = *v50;
                do
                {
                  for (k = 0; k != v27; k = k + 1)
                  {
                    if (*v50 != v28)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v30 = [FavoriteItem itemForMailbox:*(*(&v49 + 1) + 8 * k) selected:1];
                    [v25 addObject:v30];
                  }

                  v27 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
                }

                while (v27);
              }

              v31 = MFLogGeneral();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v44 ef_publicDescription];
                *buf = 138543362;
                v64 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#Favorites Settings mailbox items for account: %{public}@", buf, 0xCu);
              }

              [*(a1 + 120) lock];
              [v21 setSubItems:v25];
              v33 = *(a1 + 56);
              *(a1 + 56) = 0;

              [*(a1 + 120) unlock];
            }

            v13 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v13);
        }

        *(a1 + 11) = 0;
        v14 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v15 = obj;
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v16)
        {
          v17 = *v46;
          do
          {
            for (m = 0; m != v16; m = m + 1)
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v45 + 1) + 8 * m);
              if (sub_1000B69EC(a1, v19))
              {
                [v14 addObject:v19];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v45 objects:v61 count:16];
          }

          while (v16);
        }

        if ([v14 count])
        {
          v34 = [v14 ef_map:&stru_10064F120];
          v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Refreshing due to item expansion on %lu items:%@", [v34 count], v34);
        }

        else
        {
          v12 = 0;
        }

        sub_100487060(a1, 0);
        sub_100009A44(a1);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1000B560C(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 104) displayedAccounts];
    v3 = +[FavoritesCollection mailboxesCollection];
    [*(a1 + 120) lock];
    [*(a1 + 16) addObject:v3];
    [*(a1 + 120) unlock];
    v4 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:1];
    [v3 addItem:v4];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [FavoriteItem itemForInboxWithAccount:*(*(&v22 + 1) + 8 * v8) selected:1];
          [v3 addItem:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    sub_100008F30(a1);
    [*(a1 + 120) lock];
    v10 = *(a1 + 16);
    v11 = +[FavoritesCollection outboxCollection];
    [v10 addObject:v11];

    [*(a1 + 120) unlock];
    v12 = +[FavoritesCollection accountsCollection];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [FavoriteItem itemForAccount:*(*(&v18 + 1) + 8 * v16), v18];
          [v12 addItem:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [*(a1 + 120) lock];
    [*(a1 + 16) addObject:v12];
    [*(a1 + 120) unlock];
  }
}

void sub_1000B593C(void *a1)
{
  if (a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 objectForKey:@"InboxesOrder"];

    if (v3)
    {
      v4 = +[NSUserDefaults standardUserDefaults];
      [v4 removeObjectForKey:@"InboxesOrder"];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000B5D74;
      v12[3] = &unk_10064F078;
      v13 = v3;
      v5 = objc_retainBlock(v12);
      v6 = [a1 mailboxesCollection];
      v7 = [v6 items];
      v8 = [v7 mutableCopy];

      [v8 sortUsingComparator:v5];
      [v6 setItems:v8];
      v9 = sub_1000080E8(a1);

      v10 = [v9 items];
      v11 = [v10 mutableCopy];

      [v11 sortUsingComparator:v5];
      [v9 setItems:v11];
    }
  }
}

void sub_1000B5AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1000B5B50(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:off_1006D1330 object:*(a1 + 32) userInfo:0];
}

void sub_1000B5BC8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 120) lock];
    v3 = [*(a1 + 16) mutableCopy];
    [*(a1 + 120) unlock];
    sub_1000B63A8(a1, v3, v4);
  }
}

uint64_t sub_1000B5D74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 persistentIDForMigration];
  v7 = [v5 persistentIDForMigration];
  v8 = v7;
  if (v6)
  {
    v9 = [*(a1 + 32) indexOfObject:v6];
    if (v8)
    {
LABEL_3:
      v10 = [*(a1 + 32) indexOfObject:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  if (v9 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10 < v9;
  }

  return v11;
}

id sub_1000B5E4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [*(a1 + 120) lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(a1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) itemsOfType:{a2, v11}];
          [v4 addObjectsFromArray:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 120) unlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1000B5FE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [*(a1 + 104) displayedAccounts];
    v4 = [v3 allObjects];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B60E8;
    v10[3] = &unk_10064F098;
    v10[4] = a2;
    v5 = [v4 ef_compactMap:v10];
    v6 = v5;
    v7 = &__NSArray0__struct;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1000B60E8(uint64_t a1, void *a2)
{
  v2 = [a2 mailboxUidOfType:*(a1 + 32) createIfNeeded:0];

  return v2;
}

void sub_1000B63A8(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v26 = a3;
  if (a1)
  {
    v5 = MFUserAgent();
    v6 = [v5 isMaild];

    if (v6)
    {
      v7 = sub_100007718();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100487CE8(v7);
      }
    }

    else
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v8 = objc_alloc_init(NSMutableArray);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v25;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        v11 = *v31;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            [v13 prepareForWriting];
            if (([v13 transient] & 1) == 0)
            {
              v14 = [v13 dictionaryRepresentation];
              [v8 addObject:v14];
              v15 = [a1 mailboxesCollection];
              v16 = v13 == v15;

              if (v16)
              {
                v17 = MFLogGeneral();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v37 = v26;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#Favorites Writing mailboxes collection with reason: << %@ >>", buf, 0xCu);
                }
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v10);
      }

      v35[0] = v8;
      v34[0] = @"collections";
      v34[1] = @"buildVersion";
      v18 = _CFCopySystemVersionDictionary();
      v19 = [v18 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];

      v34[2] = @"version";
      v35[1] = v19;
      v35[2] = &off_100674060;
      v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
      [v24 setDictionary:v20];

      v21 = *(a1 + 24);
      if (v21)
      {
        v22 = [v21 dictionaryRepresentation];
        if ([v22 count])
        {
          [v24 setObject:v22 forKey:@"lastSelectedItem"];
        }
      }

      v23 = *(a1 + 96);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B67E8;
      v27[3] = &unk_10064C660;
      v7 = v24;
      v28 = v7;
      v29 = a1;
      [v23 performBlock:v27];
    }
  }
}

void sub_1000B67E8(uint64_t a1)
{
  v2 = [NSPropertyListSerialization dataWithPropertyList:*(a1 + 32) format:200 options:0 error:0];
  [v2 writeToFile:*(*(a1 + 40) + 32) options:1073741825 error:0];
  v3 = sub_100007718();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FavoritesPersistence collection changed", v4, 2u);
  }

  notify_post([@"FavoritePersistenceShouldReload" UTF8String]);
}

uint64_t sub_1000B69EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1000085EC(a1);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v4 = v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [v8 items];
        v10 = [v9 indexOfObject:v3];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = v8;

      if (!v11)
      {
        goto LABEL_13;
      }

      [*(a1 + 120) lock];
      [v11 addOrUpdateItem:v3 replacedItem:0];
      [*(a1 + 120) unlock];
      a1 = 1;
    }

    else
    {
LABEL_10:

LABEL_13:
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100486FE8(v3, v12);
      }

      v11 = 0;
      a1 = 0;
    }
  }

  return a1;
}

void sub_1000B6DC8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_100007718();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = [v5 count];
      v34 = 2048;
      v35 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Syncing local changes (%lu added, %lu removed)", buf, 0x16u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 syncKey];
          if (v14)
          {
            v15 = sub_1000B71FC(a1, v13);
            [a1[14] setDictionary:v15 forKey:v14];

            v9 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v22 + 1) + 8 * j) syncKey];
          if (v20)
          {
            v21 = [a1[14] dictionaryForKey:v20];
            if (v21)
            {
              [a1[14] removeObjectForKey:v20];
              v9 = 1;
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    if (v9)
    {
      [a1[14] synchronize];
    }
  }
}

id sub_1000B71FC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [v3 syncValue];
    a1 = [v4 initWithDictionary:v5];

    [a1 setObject:&off_100674078 forKey:@"version"];
    +[NSDate timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    [a1 setObject:v6 forKey:@"modified"];

    v7 = sub_100007718();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 syncKey];
      sub_100487D2C(v8, a1, v10, v7);
    }
  }

  return a1;
}

void sub_1000B7334(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000B7380(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_100007718();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "merging external changes (reason: %lu) %@", buf, 0x16u);
    }

    objc_initWeak(buf, a1);
    v7 = a1[17];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004870FC;
    v8[3] = &unk_10064C8B0;
    objc_copyWeak(v10, buf);
    v9 = v5;
    v10[1] = a2;
    [v7 performBlock:v8];

    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }
}

void sub_1000B74E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B751C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = +[NSNull null];

  if (v8 == v6)
  {
    v19 = [*(a1 + 32) itemWithSyncKey:v7];
    v20 = [v19 representingMailbox];
    if ([v19 type] == 2 && objc_msgSend(*(a1 + 40), "containsObject:", v20) && (+[FavoriteItem itemForMailbox:selected:shouldSync:](FavoriteItem, "itemForMailbox:selected:shouldSync:", v20, objc_msgSend(v19, "isSelected"), 0), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      *(*(*(a1 + 56) + 8) + 24) |= [*(a1 + 32) addOrUpdateItem:v21 replacedItem:0];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v22 = [*(a1 + 32) removeItemWithSyncKey:v7];
    }
  }

  else
  {
    v9 = v6;
    v10 = [FavoriteItem itemFromDictionary:v9];
    if (v10)
    {
      v11 = *(a1 + 32);
      v23 = 0;
      v12 = [v11 addOrUpdateItem:v10 replacedItem:&v23];
      v13 = v23;
      *(*(*(a1 + 56) + 8) + 24) |= v12;
      if (v13)
      {
        v14 = sub_100007718();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 syncKey];
          v16 = [v10 syncKey];
          *buf = 138412546;
          v25 = v15;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "item %@ was replaced by %@", buf, 0x16u);
        }

        v17 = *(*(a1 + 48) + 112);
        v18 = [v13 syncKey];
        [v17 removeObjectForKey:v18];
      }
    }

    else
    {
      v13 = sub_100007718();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100487D94(v7, v9, v13);
      }
    }
  }
}

BOOL sub_1000B799C(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 account];
  v3 = [v2 isActive];

  return v3;
}

NSString *__cdecl sub_1000B79E8(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 ef_publicDescription];

  return v2;
}

void sub_1000B7A18(uint64_t a1, char a2)
{
  if (a1)
  {
    LOBYTE(v4) = a2;
    v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v2 performBlock:&v3];
  }
}

void sub_1000B7AC4(uint64_t a1)
{
  v2 = sub_1000B4E98(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    sub_1000B5BC8(*(a1 + 32), v2);
  }
}

void sub_1000B7C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1000B7DB8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1[15] lock];
    v15 = [a1 mailboxesCollection];
    sub_1000B5E4C(a1, 2);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v4 = v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    v14 = a1;
    v6 = 0;
    if (v5)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 representingMailbox];
          if (v10 && [v3 containsObject:v10])
          {
            v11 = sub_100007718();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 ef_publicDescription];
              *buf = 138543362;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removing orphaned mailbox from favorites: %{public}@", buf, 0xCu);
            }

            v13 = [v15 removeItem:v9];
            if (!v6)
            {
              v6 = +[NSMutableArray array];
            }

            [v6 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v5);
    }

    if ([v6 count])
    {
      sub_1000B6DC8(v14, 0, v6);
      sub_1000B5BC8(v14, @"Removing orphaned mailboxes");
      sub_100487060(v14, 0);
    }

    [v14[15] unlock];
  }
}

void sub_1000B8098(id *a1, void *a2)
{
  v18 = a2;
  if (a1)
  {
    [a1[15] lock];
    v20 = [a1 mailboxesCollection];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v18;
    v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    v17 = a1;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *v22;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [FavoriteItem itemForMailbox:v8 selected:1, v17];
          v10 = [v20 items];
          v11 = [v10 indexOfObject:v9];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = sub_100007718();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 ef_publicDescription];
              *buf = 138543362;
              v26 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "item not found for mailbox: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v14 = sub_100007718();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v8 ef_publicDescription];
              *buf = 138543362;
              v26 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updating existing item with new mailbox data: %{public}@", buf, 0xCu);
            }

            v12 = [v10 objectAtIndex:v11];
            [v12 setMailbox:v8];
            if (!v4)
            {
              v4 = +[NSMutableArray array];
            }

            [v4 addObject:v12];
            v5 = 1;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v3);

      if (v5)
      {
        v16 = v17;
        sub_1000B5BC8(v17, @"_processNewMailboxes");
        sub_100487060(v17, 0);
LABEL_21:
        [*(v16 + 120) unlock];

        goto LABEL_22;
      }
    }

    else
    {

      v4 = 0;
    }

    v16 = v17;
    goto LABEL_21;
  }

LABEL_22:
}

void sub_1000B8588(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"OldChildren"];
  v4 = [v2 objectForKeyedSubscript:@"NewChildren"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [NSMutableArray arrayWithArray:v3];
    [v7 removeObjectsInArray:v5];
    if ([v7 count])
    {
      v8 = [*(a1 + 32) object];
      v9 = [v8 account];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = sub_100007718();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "delaying processing of orphaned mailboxes for Exchange account", buf, 2u);
        }

        v11 = dispatch_get_global_queue(0, 0);
        v12 = dispatch_time(0, 5000000000);
        v14 = _NSConcreteStackBlock;
        v15 = 3221225472;
        v16 = sub_1000B8834;
        v17 = &unk_10064C660;
        v18 = *(a1 + 40);
        v19 = v7;
        dispatch_after(v12, v11, &v14);
      }

      else
      {
        sub_1000B7DB8(*(a1 + 40), v7);
      }
    }

    v13 = [NSMutableArray arrayWithArray:v5, v14, v15, v16, v17, v18];
    [v13 removeObjectsInArray:v3];
    if ([v13 count])
    {
      sub_1000B8098(*(a1 + 40), v13);
    }
  }

  [*(a1 + 40) _loadMailboxesAfterMailboxListingChanged];
  *(*(a1 + 40) + 11) = 0;
}

void sub_1000B8834(uint64_t a1)
{
  v2 = sub_100007718();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting processing of orphaned mailboxes for Exchange account", v3, 2u);
  }

  sub_1000B7DB8(*(a1 + 32), *(a1 + 40));
}

void sub_1000B8CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"FavoritesPersistenceCollectionChangedSourceKey";
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:off_1006D1330 object:*(a1 + 40) userInfo:v3];
}

id *sub_1000B8EA0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [objc_getProperty(a1 v3];
    v17 = v4;
    v5 = [NSArray arrayWithObjects:&v17 count:1];
    v6 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v5];

    v7 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:&__NSArray0__struct queryOptions:0 label:@"Outbox (Observing)"];
    v8 = [v4 objectID];
    v16 = v8;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    v10 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v9 forExclusion:0];

    v11 = [a1[8] messageRepository];
    a1 = [v11 startCountingQuery:v7 includingServerCountsForMailboxScope:v10 withObserver:a1];
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#Favorites Started observing outbox using predicate: %@", &v14, 0xCu);
    }
  }

  return a1;
}

void sub_1000B90A4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1000B9128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 ef_publicDescription];
    sub_100487E60(v5, v10, v4);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v6, 0, 80);
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v8, 0, 88);
    }
  }
}

BOOL sub_1000B9770(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = v3 == *(a1 + 32);

  return v4;
}

id *sub_1000B9AFC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = FavoritesShortcutsProvider;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a3);
      objc_storeStrong(a1 + 4, a2);
    }
  }

  return a1;
}

void sub_1000B9CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id sub_1000B9D00(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(*(*(a1 + 32) + 8) + 24) <= 8)
  {
    v6 = [v4 representingMailbox];
    if (v6 || ([v5 smartMailbox], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [v5 displayName];

      if (v6)
      {

        if (v7)
        {
LABEL_6:
          ++*(*(*(a1 + 32) + 8) + 24);
          v8 = v5;
          goto LABEL_9;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

BOOL sub_1000B9E04(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 filteredItems];
  v4 = v3;
  v5 = (a2 & 0x8000000000000000) == 0 && [v3 count] > a2;

  return v5;
}

id sub_1000B9E70(void *a1, unint64_t a2)
{
  if (a1)
  {
    v3 = [a1 filteredItems];
    v4 = v3;
    if ((a2 & 0x8000000000000000) != 0 || [v3 count] <= a2)
    {
      v6 = 0;
    }

    else
    {
      v5 = [v4 objectAtIndexedSubscript:a2];
      v6 = [v5 displayNameUsingSpecialNames];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000B9F24(void *a1, unint64_t a2)
{
  if (a1)
  {
    v3 = [a1 filteredItems];
    v4 = v3;
    if ((a2 & 0x8000000000000000) != 0 || [v3 count] <= a2)
    {
      v7 = 0;
    }

    else
    {
      v5 = [v4 objectAtIndexedSubscript:a2];
      v6 = [v5 defaultIconName];
      v7 = [UIImage systemImageNamed:v6];

      if (!v7)
      {
        v8 = [v4 objectAtIndexedSubscript:a2];
        v9 = [v8 defaultIconBlock];
        v7 = v9[2]();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000BA064(void *a1, unint64_t a2)
{
  if (a1)
  {
    v3 = [a1 filteredItems];
    v4 = v3;
    if ((a2 & 0x8000000000000000) != 0 || [v3 count] <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 objectAtIndexedSubscript:a2];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000BA0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 representingMailbox];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v4 representingMailbox];
      v8 = [v6 mailboxFromLegacyMailbox:v7];
    }

    else
    {
      v8 = [v4 smartMailbox];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000BADE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000BB034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _focusFilterToggleButtonSelected];
}

BOOL sub_1000BBBD0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 conciseTitle];
  v2 = [v1 length] != 0;

  return v2;
}

void sub_1000BBF20(uint64_t a1)
{
  if ([*(a1 + 32) mf_hasValidReason])
  {
    v6 = [*(a1 + 32) actions];
    v2 = [v6 firstObject];

    v3 = v2;
    if (!v2)
    {
      v7 = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
      v4 = [[ICQLink alloc] initWithAction:6 url:v7];
      v5 = [[ICQLinkInAppAction alloc] initWithLink:v4];

      v3 = v5;
    }

    v8 = v3;
    [v3 performAction];
  }
}

void sub_1000BD360(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1000BD4E4()
{
  v16[0] = SwipeActionNone;
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"SWIPE_ACTIONS_NONE" value:&stru_100662A88 table:@"Preferences"];
  v17[0] = v14;
  v16[1] = SwipeActionRead;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"SWIPE_ACTIONS_READ" value:&stru_100662A88 table:@"Preferences"];
  v17[1] = v13;
  v16[2] = SwipeActionFlag;
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 localizedStringForKey:@"SWIPE_ACTIONS_FLAG" value:&stru_100662A88 table:@"Preferences"];
  v17[2] = v1;
  v16[3] = SwipeActionMove;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SWIPE_ACTIONS_MOVE" value:&stru_100662A88 table:@"Preferences"];
  v17[3] = v3;
  v16[4] = SwipeActionArchive;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SWIPE_ACTIONS_ARCHIVE" value:&stru_100662A88 table:@"Preferences"];
  v17[4] = v5;
  v16[5] = SwipeActionTrash;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SWIPE_ACTIONS_TRASH" value:&stru_100662A88 table:@"Preferences"];
  v17[5] = v7;
  v16[6] = SwipeActionAlternateDestructiveAction;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SWIPE_ACTIONS_ARCHIVE" value:&stru_100662A88 table:@"Preferences"];
  v17[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];
  v11 = qword_1006DCF30;
  qword_1006DCF30 = v10;
}

void sub_1000BEA74(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1000C06B4(id a1, EFPair *a2)
{
  v2 = [(EFPair *)a2 second];

  return v2;
}

void sub_1000C0D40(uint64_t a1, uint64_t a2)
{
  v8 = [UIColor mf_colorFromFlagColor:a2];
  v4 = [SelectedColorButton buttonWithType:0 radius:14.0 color:?];
  [v4 addTarget:*(a1 + 32) action:"_buttonTapped:" forControlEvents:64];
  v5 = *(a1 + 40);
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = [EFPair pairWithFirst:v6 second:v4];
  [v5 addObject:v7];
}

BOOL sub_1000C12DC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) location];
  v16.x = v12;
  v16.y = v13;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v14 = CGRectContainsPoint(v17, v16);

  return v14;
}

void sub_1000C1ACC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000C30F8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1000C3750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1000C38A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_1000C4668(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionViewDataSource];
  v12 = [v11 snapshot];

  v13 = [v12 sectionIdentifierForSectionContainingItemIdentifier:v9];
  v14 = [WeakRetained cardSectionViewLayout];
  v15 = [v14 objectForKeyedSubscript:v13];
  v16 = [v15 integerValue];

  if (!v16)
  {
    goto LABEL_5;
  }

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      v20 = 0;
      goto LABEL_11;
    }

    if (([WeakRetained useVerticalSingleInsteadOfHorizontal] & 1) == 0)
    {
      v17 = +[MailActionHorizontalGroupedCell reusableIdentifier];
      v18 = [v7 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v8];
      goto LABEL_10;
    }

LABEL_5:
    v17 = +[MailActionCell reusableIdentifier];
    v18 = [v7 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v8];
LABEL_10:
    v20 = v18;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = +[MailActionFlagColorCell reusableIdentifier];
    v20 = [v7 dequeueReusableCellWithReuseIdentifier:v19 forIndexPath:v8];

    [v20 setDelegate:WeakRetained];
    v21 = [v9 flagColor];
    [v20 selectColor:v21];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = +[MailActionRecategorizationHeaderCell reusableIdentifier];
      v23 = [v7 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = +[_TtC10MobileMail29MailActionCatchUpFeedbackCell reusableIdentifier];
        v20 = [v7 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:v8];

        [v20 setDelegate:WeakRetained];
        goto LABEL_21;
      }

      v21 = +[MailActionVerticalGroupedCell reusableIdentifier];
      v23 = [v7 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v8];
    }

    v20 = v23;
  }

LABEL_21:
  v25 = [v12 numberOfItemsInSection:v13];
  if (v25 >= 2)
  {
    if ([v8 item])
    {
      if ([v8 item] == (v25 - 1))
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 1;
    }

    [v20 setVerticalGroupedCellType:v26];
  }

LABEL_11:
  [v20 setCardAction:v9];
  [v20 setUseActionSheetStyle:{objc_msgSend(WeakRetained, "useActionSheetStyleCard")}];

  return v20;
}

void sub_1000C4B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000C4B50(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained view];
  v53 = [WeakRetained collectionView];
  v7 = [WeakRetained collectionViewDataSource];
  v8 = [v7 snapshot];

  v52 = v8;
  v9 = MUISolariumFeatureEnabled();
  v10 = [v8 sectionIdentifiers];
  v11 = [v10 objectAtIndexedSubscript:a2];

  v51 = v11;
  [v6 layoutMargins];
  v13 = v12;
  if (v9)
  {
    [v6 layoutMargins];
    v15 = v14;
  }

  else
  {
    [v6 safeAreaInsets];
    v17 = v16;
    [v6 layoutMargins];
    v19 = v18;
    [v6 safeAreaInsets];
    v13 = v13 - v17;
    v15 = v19 - v20;
  }

  v21 = [WeakRetained cardSectionViewLayout];
  v22 = [v21 objectForKeyedSubscript:v11];
  v23 = [v22 integerValue];

  v24 = [v8 numberOfItemsInSection:v11];
  if (v23 == 1)
  {
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000C50F8;
    v65[3] = &unk_10064F380;
    v65[4] = WeakRetained;
    v66 = v11;
    v71 = v9;
    v67 = v6;
    v68 = v13;
    v69 = v15;
    v70 = v24;
    v25 = objc_retainBlock(v65);
    v24 = (v25[2])();
    v26 = [WeakRetained traitCollection];
    v27 = [v26 preferredContentSizeCategory];

    v23 = (UIContentSizeCategoryCompareToCategory(v27, UIContentSizeCategoryExtraExtraExtraLarge) < NSOrderedDescending && v24 != 1);
    [WeakRetained setUseVerticalSingleInsteadOfHorizontal:v23 ^ 1];
  }

  v29 = objc_opt_new();
  [v29 topToGlyphBaselineInMailActionCardHorizontalGroup];
  v31 = v30;
  [v29 baselineToBaselineSpacingInMailActionCardHorizontalGroup];
  v33 = v32;
  [v29 bottomSpacingInMailActionCardHorizontalGroup];
  v35 = v34;
  [v29 topToFirstBaselineSpacingInMailActionCardVerticalGroup];
  v37 = v36;
  [v29 bottomToLastBaselineInMailActionCardVerticalGroup];
  v39 = [NSCollectionLayoutDimension estimatedDimension:v37 + v38];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000C5224;
  v60[3] = &unk_10064F3A8;
  v60[4] = WeakRetained;
  v62 = v31 + v33 + v35;
  v63 = v13;
  v40 = v53;
  v61 = v40;
  v64 = v15;
  v41 = objc_retainBlock(v60);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000C5518;
  v55[3] = &unk_10064F3D0;
  v42 = v54;
  v56 = v42;
  v58 = v13;
  v59 = v15;
  v43 = v39;
  v57 = v43;
  v44 = objc_retainBlock(v55);
  v45 = v44;
  if (v23)
  {
    if (v23 == 1)
    {
      v46 = (v41[2])(v41, v24);
      goto LABEL_17;
    }

    if (v23 == 2)
    {
      v46 = (v44[2])(v44);
LABEL_17:
      v47 = v46;
      goto LABEL_23;
    }

    v47 = 0;
  }

  else
  {
    v47 = (v44[2])(v44);
    if (WeakRetained)
    {
      v48 = MUISolariumFeatureEnabled();
      v49 = 8.0;
      if (v48)
      {
        v49 = 10.0;
      }
    }

    else
    {
      v49 = 0.0;
    }

    [v47 setInterGroupSpacing:v49];
  }

LABEL_23:

  return v47;
}

uint64_t sub_1000C50F8(uint64_t a1)
{
  [*(a1 + 32) _maxLabelWidthInSection:*(a1 + 40)];
  v3 = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100487EF0;
  v10[3] = &unk_10064F358;
  v15 = *(a1 + 80);
  v4 = *(a1 + 48);
  v13 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11 = v4;
  v12 = v5;
  v14 = v3;
  v6 = objc_retainBlock(v10);
  v7 = (v6[2])(*(a1 + 72));
  v8 = *(a1 + 72);
  if (v7)
  {
    if (v8 == 3)
    {
      v8 = 1;
    }

    else if ((v6[2])(v6, 2.0))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

id sub_1000C5224(uint64_t a1, double a2)
{
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0 / a2];
  v4 = [NSCollectionLayoutDimension absoluteDimension:*(a1 + 48)];
  v5 = [NSCollectionLayoutSize sizeWithWidthDimension:v3 heightDimension:v4];
  v6 = [NSCollectionLayoutItem itemWithLayoutSize:v5];
  if (*(a1 + 32))
  {
    if (MUISolariumFeatureEnabled())
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 8.0;
    }
  }

  else
  {
    v7 = 0.0;
  }

  [v6 setContentInsets:{0.0, 0.0, 0.0, v7}];
  v8 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v9 = [v5 heightDimension];
  v10 = [NSCollectionLayoutSize sizeWithWidthDimension:v8 heightDimension:v9];

  v23 = v6;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v10 subitems:v11];

  v13 = [NSCollectionLayoutSection sectionWithGroup:v12];
  [v13 setContentInsetsReference:2];
  v14 = MUISolariumFeatureEnabled();
  v15 = *(a1 + 56);
  if (v14)
  {
    [*(a1 + 40) safeAreaInsets];
    v17 = v16;
    v18 = *(a1 + 64);
    [*(a1 + 40) safeAreaInsets];
    v19 = v15 - v17;
    v21 = 20.0;
    [v13 setContentInsets:{0.0, v19, 20.0, v18 - v20 + -10.0}];
  }

  else
  {
    v21 = 8.0;
    [v13 setContentInsets:{0.0, *(a1 + 56), 8.0, *(a1 + 64) + -8.0}];
  }

  [v13 setInterGroupSpacing:v21];

  return v13;
}

id sub_1000C5518(uint64_t a1)
{
  if (MUISolariumFeatureEnabled())
  {
    v2 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
    v3 = [NSCollectionLayoutSection sectionWithListConfiguration:v2 layoutEnvironment:*(a1 + 32)];
    [v3 setContentInsets:{0.0, *(a1 + 48), 20.0, *(a1 + 56)}];
  }

  else
  {
    v4 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v5 = [NSCollectionLayoutSize sizeWithWidthDimension:v4 heightDimension:*(a1 + 40)];
    v6 = [NSCollectionLayoutItem itemWithLayoutSize:v5];
    v7 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v8 = [v5 heightDimension];
    v9 = [NSCollectionLayoutSize sizeWithWidthDimension:v7 heightDimension:v8];

    v13 = v6;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v9 subitems:v10];

    v3 = [NSCollectionLayoutSection sectionWithGroup:v11];
    [v3 setContentInsetsReference:2];
    [v3 setContentInsets:{0.0, *(a1 + 48), 8.0, *(a1 + 56)}];
  }

  return v3;
}

void sub_1000C5AA4(uint64_t a1)
{
  [*(a1 + 32) _configureCollectionViewIfNeeded];
  v2 = objc_opt_new();
  [*(a1 + 32) setCardSectionViewLayout:v2];

  v42 = [*(a1 + 32) collectionViewDataSource];
  v45 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v4 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v5 = [v4 actions];
    v46 = [v5 ef_partition:&stru_10064F438];
    v6 = [v46 first];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v46 first];
      v9 = [v8 firstObject];

      v10 = [v9 isSenderRecategorization];
      v11 = *(a1 + 32);
      if (v10)
      {
        [v11 setSenderRecategorizationHeaderAction:v9];
      }

      else
      {
        [v11 setMessageFeedbackHeaderAction:v9];
      }

      v17 = [NSNumber numberWithUnsignedInteger:i];
      v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 viewLayout]);
      v26 = [*(a1 + 32) cardSectionViewLayout];
      [v26 setObject:v25 forKeyedSubscript:v17];

      v51 = v17;
      v27 = [NSArray arrayWithObjects:&v51 count:1];
      [v45 appendSectionsWithIdentifiers:v27];

      v50 = v9;
      v20 = [NSArray arrayWithObjects:&v50 count:1];
      [v45 appendItemsWithIdentifiers:v20 intoSectionWithIdentifier:v17];
    }

    else
    {
      v9 = [v5 ef_partition:&stru_10064F458];
      v12 = [v9 first];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v9 first];
        v15 = [v14 firstObject];
        v16 = [v5 indexOfObject:v15];

        v17 = [v5 objectAtIndexedSubscript:v16 - 1];
        v18 = [v9 first];
        v19 = [v18 firstObject];
        [*(a1 + 32) setCatchUpFeedbackCardAction:v19];

        [*(a1 + 32) setCatchUpFeedbackHeaderCardAction:v17];
        v20 = [NSNumber numberWithUnsignedInteger:i];
        v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 viewLayout]);
        v22 = [*(a1 + 32) cardSectionViewLayout];
        [v22 setObject:v21 forKeyedSubscript:v20];

        v49 = v20;
        v23 = [NSArray arrayWithObjects:&v49 count:1];
        [v45 appendSectionsWithIdentifiers:v23];

        v48 = v17;
        v24 = [NSArray arrayWithObjects:&v48 count:1];
        [v45 appendItemsWithIdentifiers:v24 intoSectionWithIdentifier:v20];
LABEL_19:

        goto LABEL_20;
      }

      v17 = [v5 ef_partition:&stru_10064F478];
      v20 = [NSNumber numberWithUnsignedInteger:i];
      v28 = [v17 first];
      v29 = [v28 count];

      if (v29)
      {
        v30 = [v17 first];
        v31 = [v30 firstObject];
        v32 = [v5 indexOfObject:v31];

        v43 = [v5 objectAtIndexedSubscript:v32 - 1];
        v33 = [v17 first];
        v34 = [v33 firstObject];

        if ([*(a1 + 40) count] < 2)
        {
          v36 = 1;
        }

        else
        {
          v35 = [v34 flagColor];
          v36 = v35 != 0;
        }

        v37 = [v17 first];
        [*(a1 + 32) setFlagColorCardAction:v37];

        [*(a1 + 32) setFlagCardAction:v43];
      }

      else
      {
        v36 = 1;
      }

      v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 viewLayout]);
      v39 = [*(a1 + 32) cardSectionViewLayout];
      [v39 setObject:v38 forKeyedSubscript:v20];

      v47 = v20;
      v40 = [NSArray arrayWithObjects:&v47 count:1];
      [v45 appendSectionsWithIdentifiers:v40];

      v41 = v5;
      if (!v36)
      {
        v44 = [v17 second];
        v41 = v44;
      }

      [v45 appendItemsWithIdentifiers:v41 intoSectionWithIdentifier:v20];
      v24 = v44;
      if (!v36)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
  }

  [v42 applySnapshot:v45 animatingDifferences:0 completion:0];
}

BOOL sub_1000C6284(id a1, MFCardAction *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1000C62DC(id a1, MFCardAction *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1000C6334(id a1, MFCardAction *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000C653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v12 = v11;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C657C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40) && [v2 count])
  {
    v18 = [*(a1 + 48) collectionViewDataSource];
    v3 = [v18 snapshot];
    v4 = [*(a1 + 48) collectionView];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C6858;
    v19[3] = &unk_10064F4A0;
    v5 = v18;
    v20 = v5;
    v6 = v4;
    v21 = v6;
    v7 = objc_retainBlock(v19);
    v8 = (v7[2])(v7, *(a1 + 40));
    v9 = [*(a1 + 32) firstObject];
    v10 = [v3 indexOfItemIdentifier:v9];

    if (MUISolariumFeatureEnabled())
    {
      v11 = [v3 sectionIdentifierForSectionContainingItemIdentifier:*(a1 + 40)];
      v12 = [v3 numberOfItemsInSection:v11];
      v13 = [v5 indexPathForItemIdentifier:*(a1 + 40)];
      v14 = v13;
      if (v12 < 2)
      {
        v15 = 0;
      }

      else if ([v13 item])
      {
        if ([v14 item] == (v12 - 1))
        {
          v15 = 2;
        }

        else
        {
          v15 = 3;
        }
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    v17 = *(a1 + 32);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 insertItemsWithIdentifiers:v17 afterItemWithIdentifier:*(a1 + 40)];
      [v5 applySnapshot:v3 animatingDifferences:1];
      [v8 setVerticalGroupedCellType:v16];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      [v3 deleteItemsWithIdentifiers:v17];
      [v5 applySnapshot:v3 animatingDifferences:1];
      [v8 setVerticalGroupedCellType:v15];
    }
  }
}

id sub_1000C6858(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexPathForItemIdentifier:a2];
  v4 = [*(a1 + 40) cellForItemAtIndexPath:v3];

  return v4;
}

void sub_1000C6C64(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewDataSource];
  v5 = [v2 snapshot];

  v3 = [v5 sectionIdentifiers];
  [v5 reloadSectionsWithIdentifiers:v3];

  v4 = [*(a1 + 32) collectionViewDataSource];
  [v4 applySnapshot:v5 animatingDifferences:0];
}

void sub_1000C6D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1000C6F20(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  [v3 mailActionsViewController:*v2 didSelectAction:*(a1 + 40)];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) flagCardAction];

  if (v4 == v5)
  {
    v13 = *(a1 + 32);
    v14 = [v13 flagColorCardAction];
    v15 = [*(a1 + 32) flagCardAction];
    [v13 _insertActions:v14 after:v15];

    v16 = *(a1 + 32);
    v17 = [v16 _cardActionIsUnflag:*(a1 + 40)];

    [v16 _updateFlagCardActionCell:v17];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) catchUpFeedbackHeaderCardAction];

    if (v6 == v7)
    {
      v18 = *(a1 + 32);
      v19 = [v18 catchUpFeedbackCardAction];
      v24 = v19;
      v20 = [NSArray arrayWithObjects:&v24 count:1];
      v21 = [*(a1 + 32) catchUpFeedbackHeaderCardAction];
      [v18 _insertActions:v20 after:v21];
    }

    else
    {
      if (!EMBlackPearlIsFeatureEnabled())
      {
        return;
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) messageFeedbackHeaderAction];
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) senderRecategorizationHeaderAction];

        if (v11 != v12)
        {
          return;
        }
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);

      [v22 _expandRecategorizationHeader:v23];
    }
  }
}

void sub_1000C737C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000C7460(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000C8304(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCF40;
  qword_1006DCF40 = v1;
}

id sub_1000C918C(uint64_t a1, void *a2)
{
  v2 = [a2 cardActionWithCompletion:*(a1 + 32)];
  v3 = [v2 children];
  v4 = [v3 mutableCopy];

  [v4 insertObject:v2 atIndex:0];

  return v4;
}

void sub_1000CA88C(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isPermitted])
  {
    [v7 setPresentationSource:a1[4]];
    [v7 setDelegate:a1[5]];
    v6 = [v7 cardActionWithPreparation:a1[6] completion:a1[7]];
    [v5 addObject:v6];
  }
}

void sub_1000CA928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

BOOL sub_1000CA950(id a1, EMMessageListItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1000CA9A8(uint64_t a1, void *a2)
{
  v2 = [a2 cardActionWithCompletion:*(a1 + 32)];
  v3 = [v2 children];
  v4 = [v3 mutableCopy];

  [v4 insertObject:v2 atIndex:0];

  return v4;
}

BOOL sub_1000CAFC4(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 account];
  v3 = [v2 supportsiCloudCleanup];

  return v3;
}

id sub_1000CB6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMessageSourceMailboxes:*(a1 + 32)];
  [v3 setPresentationSource:*(a1 + 40)];
  [v3 setDelegate:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [v3 setOriginalContent:?];
  }

  v4 = [*(a1 + 64) target];
  v5 = [v4 preferQuickCompositionalActions];

  if (v5)
  {
    [v3 setShouldPromptToLoadRestOfMessage:0];
    [v3 setAttachmentPolicy:3];
  }

  v6 = [v3 cardActionWithPreparation:*(a1 + 72) completion:*(a1 + 80)];
  [v6 setShouldDismissCardBeforeExecuteHandler:1];

  return v6;
}

void sub_1000CB774(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000CB924(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1000CC580(void *a1, void *a2)
{
  v5 = a2;
  if ([v5 isPermitted])
  {
    [v5 setPresentationSource:a1[4]];
    [v5 setDelegate:a1[5]];
    v3 = a1[6];
    v4 = [v5 cardActionWithPreparation:a1[7] completion:a1[8]];
    [v3 addObject:v4];
  }
}

BOOL sub_1000CC62C(id a1, EMMessageListItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000CCB44(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1000CD708(id a1, SEL a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD7A8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCF58 != -1)
  {
    dispatch_once(&qword_1006DCF58, block);
  }

  v2 = qword_1006DCF50;

  return v2;
}

void sub_1000CD7A8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCF50;
  qword_1006DCF50 = v1;
}

void sub_1000CD82C(uint64_t a1)
{
  v2 = [*(a1 + 32) extendedLaunchTracker];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 extendedLaunchTracker];
    [v3 didFinishLoadAllScenes:?];
  }
}

id sub_1000CD8C4(uint64_t a1)
{
  v1 = [*(a1 + 32) daemonInterface];
  v2 = [v1 messageRepository];
  v3 = [v2 remoteContentURLCache];
  v4 = [v3 result];

  return v4;
}

void sub_1000CD93C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000CD974(id a1)
{
  v1 = MFLogGeneral();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Dumping diagnostic information...\n", v5, 2u);
  }

  v2 = +[MFDiagnostics sharedController];
  v3 = [v2 copyDiagnosticInformation];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100488144();
  }
}

void sub_1000CE488(uint64_t a1)
{
  v3 = [*(a1 + 32) getiCloudMailCleanupService];
  [v3 prepare];

  v2 = *(a1 + 40);
  v4 = +[NSNull null];
  [v2 finishWithResult:?];
}

void sub_1000CE51C(uint64_t a1)
{
  v4 = [*(a1 + 32) favoritesPersistence];
  v2 = [v4 mailboxesCollection];
  [v2 persistAllInboxesStateToMaild];

  v5 = +[ICQInAppMessaging shared];
  [v5 observeUpdates];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MailAppControllerDidStartObservingInAppMessagesNotification" object:0];

  v3 = *(a1 + 40);
  v7 = +[NSNull null];
  [v3 finishWithResult:?];
}

void sub_1000CE620(uint64_t a1)
{
  if (EMBlackPearlIsFeatureEnabled())
  {
    v2 = [EMCategorizationSyncManager alloc];
    v9 = [*(a1 + 32) mailboxCategoryCloudStorage];
    v3 = [*(a1 + 32) daemonInterface];
    v4 = [v3 mailboxRepository];
    v5 = [*(a1 + 32) daemonInterface];
    v6 = [v5 accountRepository];
    v7 = [v2 initWithMailboxCategoryCloudStorage:v9 mailboxRepository:v4 accountRepository:v6];
    [*(a1 + 32) setCategorizationSyncManager:v7];
  }

  v8 = *(a1 + 40);
  v10 = +[NSNull null];
  [v8 finishWithResult:?];
}

void sub_1000CE784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained didFinishDelayedStartupTasksPromise];
    v3 = +[NSNull null];
    [v2 finishWithResult:v3];

    WeakRetained = v4;
  }
}

void sub_1000CE800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000CEAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000CEB50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[MailAppController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v10 = 138412546;
      v11 = v7;
      v12 = 2048;
      v13 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Launch] Web view preallocation completed", &v10, 0x16u);
    }

    [v3 preallocateWebViews];
    v8 = *(a1 + 32);
    v9 = +[NSNull null];
    [v8 finishWithResult:v9];
  }
}

void sub_1000CECB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MailAppController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "<%@: %p> [Launch] Web view preallocation failure with error:%{public}@", &v8, 0x20u);
  }

  [*(a1 + 40) finishWithError:v3];
}

void sub_1000CEDE4(id a1)
{
  v1 = +[MFDiskFreeSpaceMonitor defaultMonitor];
  v2 = qword_1006DCF60;
  qword_1006DCF60 = v1;
}

void sub_1000CEFB4(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    [v2 setNewScenePreference:1];
    [v2 setDocumentPreference:1];
    [v2 setPrintingPreference:1];
    [v2 setInspectorPreference:1];
    v1 = +[UIMainMenuSystem sharedSystem];
    [v1 setBuildConfiguration:v2 buildHandler:0];
  }
}

void sub_1000CF10C(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultAttachmentManager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF1E4;
  block[3] = &unk_10064C7E8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:MailApplicationDidFinishLaunching object:*(a1 + 32)];
}

void sub_1000CF1E4(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = +[SharedMailboxController allSharedInstances];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) resume];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }

  *(*(a1 + 32) + 40) = 1;
}

void sub_1000CF398(uint64_t a1)
{
  v2 = [[EMObjectID alloc] initAsEphemeralID:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v7 = [*(a1 + 32) daemonInterface];
  v5 = [v7 diagnosticInfoGatherer];
  v6 = [v5 registerDiagnosticInfoProvider:*(a1 + 32)];
  [*(a1 + 32) setDiagnosticInfoProviderToken:v6];
}

void sub_1000CFB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000CFBD4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:UIApplicationSignificantTimeChangeNotification object:*(a1 + 32)];
}

void sub_1000CFDB4(uint64_t a1)
{
  v2 = +[MailAppController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initializing AppStoreReviewManager...", buf, 2u);
  }

  v3 = [_TtC10MobileMail44AppStoreReviewEligibilityUserDefaultsTracker alloc];
  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [(AppStoreReviewEligibilityUserDefaultsTracker *)v3 initWithUserDefaults:v4];

  v6 = objc_alloc_init(_TtC10MobileMail40AppStoreReviewRequirementConstantStorage);
  v7 = [[_TtC10MobileMail21AppStoreReviewManager alloc] initWithEligibilityTracker:v5 requirementStorage:v6];
  v8 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CFF74;
  v10[3] = &unk_10064C660;
  v10[4] = *(a1 + 32);
  v9 = v7;
  v11 = v9;
  [v8 performBlock:v10];
}

id sub_1000CFF74(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  v2 = *(a1 + 40);

  return [v2 didForeground];
}

id sub_1000D0224(uint64_t a1)
{
  v2 = [*(a1 + 32) accountsController];
  [v2 resetAccountsSynchronouslyOnMainThread];

  v3 = *(a1 + 32);

  return [v3 updateDefaultImageWithReason:@"Accounts changed"];
}

void sub_1000D07C0(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = *(a1 + 32);
    v4 = v3[40];
    [v3 _performUIRelatedLaunchTasksIfNeeded];
    v11 = +[MFInvocationQueue sharedInvocationQueue];
    v5 = [MFMonitoredInvocation invocationWithSelector:"resetMailboxTimers" target:objc_opt_class() taskName:0 priority:15 canBeCancelled:0];
    [v11 addInvocation:v5];

    if (v4)
    {
      v6 = *(a1 + 32);

      [v6 _beginAutoFetchIfViable];
    }
  }

  else
  {
    v7 = +[NSDate date];
    [v7 timeIntervalSince1970];
    v12 = [NSNumber numberWithUnsignedLongLong:v8];

    v9 = +[NSUserDefaults em_userDefaults];
    [v9 setValue:v12 forKey:EMUserDefaultLastForegroundedTimestamp];

    v10 = *(a1 + 32);
    if (v10[68])
    {
      [v10 terminateWithSuccess];
    }

    else
    {
      [v10 performSelector:"cleanUpAfterSuspend" withObject:0 afterDelay:1.0];
    }
  }
}

void sub_1000D0A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailAppController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000D101C(uint64_t a1)
{
  v2 = +[MailAppController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished providing diagnostics.", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = +[NSSet set];
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_1000D10D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MailAppController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1004881CC();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = +[NSSet set];
    (*(v5 + 16))(v5, v6, v3);
  }
}

void sub_1000D14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000D153C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D1554(uint64_t a1)
{
  v25 = +[MFUIStateCaptor sharedCaptor];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = [v25 viewControllerHierarchy];
  [v2 appendString:v3];

  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [v25 viewControllerDescriptions];
  [v4 appendString:v5];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 openSessions];

  [*(*(*(a1 + 56) + 8) + 40) appendFormat:@"All Scene Sessions (%lu):\n", objc_msgSend(v7, "count")];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = *(*(*(a1 + 56) + 8) + 40);
        v14 = [v12 mf_debugDescription];
        [v13 appendFormat:@"\n%@\n", v14];

        v15 = [v12 scene];
        objc_opt_class();
        LOBYTE(v13) = objc_opt_isKindOfClass();

        if (v13)
        {
          v16 = [v12 scene];
          v17 = *(*(*(a1 + 56) + 8) + 40);
          v18 = [v25 mailSceneHierarchy:v16];
          [v17 appendFormat:@"%@\n", v18];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  v19 = +[EFScheduler globalAsyncScheduler];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000D1948;
  v26[3] = &unk_10064F790;
  v20 = v25;
  v27 = v20;
  v21 = *(a1 + 56);
  *&v22 = *(a1 + 32);
  *(&v22 + 1) = *(a1 + 40);
  v24 = v22;
  *&v23 = *(a1 + 48);
  *(&v23 + 1) = v21;
  v28 = v24;
  v29 = v23;
  [v19 performBlock:v26];
}

void sub_1000D1948(uint64_t a1)
{
  v2 = [*(a1 + 32) redactedFieldNames];
  v3 = [EFPrivacy fullyOrPartiallyRedactFields:v2 inString:*(*(*(a1 + 64) + 8) + 40)];

  v4 = [*(a1 + 40) path];
  v5 = +[NSFileManager defaultManager];
  v6 = [v3 dataUsingEncoding:4];
  v7 = [v5 createFileAtPath:v4 contents:v6 attributes:0];

  if (v7)
  {
    v8 = +[MailAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) providerObjectID];
      v13 = 138412546;
      v14 = v9;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> Dumped diagnostics to %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v8 = +[MailAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 48) providerObjectID];
      sub_100488298(v10, v4, &v13);
    }
  }

  v11 = *(a1 + 56);
  v12 = +[NSSet set];
  [v11 finishWithResult:v12 error:0];
}

void sub_1000D1EE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [v2 writeToURL:v3 error:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 1)
  {
    v7 = +[MailAppController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) providerObjectID];
      v9 = [*(a1 + 40) path];
      *buf = 138412546;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@> Dumped dictionary to %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = +[MailAppController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) providerObjectID];
      v13 = [*(a1 + 40) path];
      v14 = [v5 description];
      *buf = 138412802;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "<%@> Failed to dump dictionary to %{public}@ because of error: %{public}@", buf, 0x20u);
    }
  }

  v10 = *(a1 + 56);
  v11 = +[NSSet set];
  [v10 finishWithResult:v11 error:0];
}

void sub_1000D22AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D23B4;
  v6[3] = &unk_10064F7E0;
  v4 = objc_alloc_init(NSMutableDictionary);
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v5 = [*(a1 + 32) _dumpDictionary:v4 atURL:*(a1 + 40)];
  [*(a1 + 48) finishWithFuture:v5];
}

void sub_1000D23B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = @"Badge Count";
  [v6 badgeSetting];
  v7 = UNNotificationSettingString();
  v12[1] = @"Alert";
  v13[0] = v7;
  [v6 alertSetting];
  v8 = UNNotificationSettingString();
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = *(a1 + 32);
  v11 = MSUserNotificationCenterTopicDescription();
  [v10 setObject:v9 forKeyedSubscript:v11];
}

void sub_1000D24D0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id sub_1000D2678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bucketBarConfigurationController];
  v3 = [v2 stateCaptureInformation];

  return v3;
}

NSNumber *sub_1000D2EF8(uint64_t a1)
{
  v1 = [*(a1 + 32) canPerformNetworkOperationOnAccount:*(a1 + 40)];

  return [NSNumber numberWithBool:v1];
}

void sub_1000D3960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v21 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1000D3990(uint64_t a1)
{
  v6 = [*(a1 + 32) openSessions];
  v2 = [v6 ef_compactMap:&stru_10064F8B0];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1000D3A30(id a1, UISceneSession *a2)
{
  v2 = a2;
  v3 = [(UISceneSession *)v2 mf_activeDraft];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = +[MailAppController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 ef_publicDescription];
      v7 = [(UISceneSession *)v2 persistentIdentifier];
      sub_1004882F0(v6, v7, v11, v5);
    }
  }

  v8 = [(UISceneSession *)v2 mf_activeDraft];
  v9 = [v8 identifier];

  return v9;
}

void sub_1000D3B40(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000D3C84(uint64_t a1, void *a2)
{
  sub_10048807C(*(a1 + 32), a2);
  v2 = +[UIMenuSystem mainSystem];
  [v2 setNeedsRebuild];
}

void sub_1000D3D4C(uint64_t a1)
{
  v2 = objc_opt_new();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D3E00;
  v5[3] = &unk_10064D270;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_1000D3E00(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

id sub_1000D52D4(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100662A88 table:@"Main"];

  return v3;
}

id sub_1000D538C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v8 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:a3];
  v9 = *(a1 + 32);
  if (a4)
  {
    [v9 insertChildMenu:v8 atStartOfMenuForIdentifier:v7];
  }

  else
  {
    [v9 insertChildMenu:v8 atEndOfMenuForIdentifier:v7];
  }

  return v8;
}

void sub_1000D5448(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:a3];
  [*(a1 + 32) insertSiblingMenu:v5 afterMenuForIdentifier:v6];
}

id sub_1000D54F0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = [UIImage systemImageNamed:a4];
  v15 = [UIMenu menuWithTitle:v12 image:v14 identifier:0 options:0 children:v13];
  v16 = *(a1 + 32);
  if (a6)
  {
    [v16 insertChildMenu:v15 atStartOfMenuForIdentifier:v11];
  }

  else
  {
    [v16 insertChildMenu:v15 atEndOfMenuForIdentifier:v11];
  }

  return v15;
}

id sub_1000D5608(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = [UIImage systemImageNamed:a4];
  v15 = [UIMenu menuWithTitle:v12 image:v14 identifier:0 options:128 children:v13];
  v16 = *(a1 + 32);
  if (a6)
  {
    [v16 insertChildMenu:v15 atStartOfMenuForIdentifier:v11];
  }

  else
  {
    [v16 insertChildMenu:v15 atEndOfMenuForIdentifier:v11];
  }

  return v15;
}

id sub_1000D5720(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_1000D59FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1000D5A30(uint64_t a1)
{
  v2 = [*(a1 + 32) mostRecentMainScene];
  [v2 mailComposeDeliveryControllerDidAttemptToSaveDraft:*(a1 + 40) account:*(a1 + 48) result:*(a1 + 56)];
}

void sub_1000D5BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1000D5BE4(uint64_t a1)
{
  v2 = [*(a1 + 32) mostRecentMainScene];
  [v2 mailComposeDeliveryControllerDidAttemptToSend:*(a1 + 40) outgoingMessageDelivery:*(a1 + 48) result:*(a1 + 56)];
}

void sub_1000D5D28(uint64_t a1)
{
  v2 = [*(a1 + 32) mostRecentMainScene];
  [v2 mailComposeDeliveryControllerWillAttemptToSend:*(a1 + 40)];
}

void sub_1000D5E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1000D5ED8(uint64_t a1)
{
  v3 = [*(a1 + 32) activeScenes];
  v2 = [v3 firstObject];
  [v2 mailComposeDeliveryController:*(a1 + 40) didMoveCancelledMessageToDrafts:*(a1 + 48) draftMailboxObjectID:*(a1 + 56)];
}

void sub_1000D7058(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v3[2]();
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40)];
  }
}

void sub_1000D70DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[UIDevice mf_isPadIdiom])
  {
    [*(a1 + 32) failedTest:*(a1 + 40)];
  }

  else
  {
    v3[2]();
  }
}

void sub_1000D716C(uint64_t *a1)
{
  qword_1006DCFB8 = a1[9];
  if ([a1[4] mf_isScrollMessageListTest])
  {
    v3 = a1[4];
    v2 = a1[5];

    [v2 startScrollMessageListTest:v3 withOptions:?];
    return;
  }

  if ([a1[4] mf_containsSubstring:@"ScrollMessagesInEditMode"])
  {
    v4 = a1[7];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_1000D7D1C;
    v86[3] = &unk_10064C6B0;
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v87 = v5;
    v88 = v6;
    v89 = v7;
    (*(v4 + 16))(v4, v86);

    v8 = v87;
LABEL_7:

    return;
  }

  if ([a1[4] mf_containsSubstring:@"ShowDismissReply"] || objc_msgSend(a1[4], "isEqualToString:", @"ShowReply"))
  {
    v9 = a1[5];
    v10 = a1[6];

    [v9 startShowDismissReplyTest:v10];
    return;
  }

  if ([a1[4] isEqualToString:@"ShowDismissCompose"])
  {
    v11 = a1[8];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_1000D7D84;
    v84[3] = &unk_10064C660;
    v12 = a1[6];
    v84[4] = a1[5];
    v85 = v12;
    (*(v11 + 16))(v11, v84);
    v8 = v85;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"ShowPhotoPicker"])
  {
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_1000D7D90;
    v82[3] = &unk_10064C660;
    v13 = a1[6];
    v82[4] = a1[5];
    v83 = v13;
    [EFScheduler mf_afterUIDelay:v82 performBlock:2.0];
    v8 = v83;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"ShowCompose"])
  {
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_1000D7D9C;
    v80[3] = &unk_10064C660;
    v14 = a1[6];
    v80[4] = a1[5];
    v81 = v14;
    [EFScheduler mf_afterUIDelay:v80 performBlock:2.0];
    v8 = v81;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"ShowEmptyCompose"])
  {
    v15 = a1[5];
    v16 = a1[6];

    [v15 startShowEmptyComposeTest:v16];
    return;
  }

  if ([a1[4] mf_containsSubstring:@"ScrollPseudoContacts"])
  {
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1000D7DA8;
    v78[3] = &unk_10064C660;
    v17 = a1[6];
    v78[4] = a1[5];
    v79 = v17;
    [EFScheduler mf_afterUIDelay:v78 performBlock:2.0];
    v8 = v79;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"ComposeToPseudoContact"])
  {
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000D7DB4;
    v76[3] = &unk_10064C660;
    v18 = a1[6];
    v76[4] = a1[5];
    v77 = v18;
    [EFScheduler mf_afterUIDelay:v76 performBlock:2.0];
    v8 = v77;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"DismissCompose"])
  {
    v19 = a1[8];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000D7DC0;
    v74[3] = &unk_10064C660;
    v20 = a1[6];
    v74[4] = a1[5];
    v75 = v20;
    (*(v19 + 16))(v19, v74);
    v8 = v75;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"RotateWithKeyboard"])
  {
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000D7E78;
    v72[3] = &unk_10064C660;
    v21 = a1[6];
    v72[4] = a1[5];
    v73 = v21;
    [EFScheduler mf_afterUIDelay:v72 performBlock:2.0];
    v8 = v73;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"ExitEditMode"])
  {
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1000D7E84;
    v70[3] = &unk_10064C660;
    v22 = a1[6];
    v23 = a1[7];
    v70[4] = a1[5];
    v71 = v22;
    (*(v23 + 16))(v23, v70);
    v8 = v71;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"MessageTransfer"])
  {
    v24 = a1[7];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000D7E90;
    v66[3] = &unk_10064C6B0;
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[6];
    v67 = v25;
    v68 = v26;
    v69 = v27;
    (*(v24 + 16))(v24, v66);

    v8 = v67;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"MessageDelete"])
  {
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000D7ED8;
    v64[3] = &unk_10064C660;
    v28 = a1[6];
    v29 = a1[7];
    v64[4] = a1[5];
    v65 = v28;
    (*(v29 + 16))(v29, v64);
    v8 = v65;
    goto LABEL_7;
  }

  if ([a1[4] isEqualToString:@"MessageIteration"])
  {
    v30 = a1[8];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1000D7EE4;
    v62[3] = &unk_10064C660;
    v31 = a1[6];
    v62[4] = a1[5];
    v63 = v31;
    (*(v30 + 16))(v30, v62);
    v8 = v63;
    goto LABEL_7;
  }

  if ([a1[4] mf_containsSubstring:@"MailboxFilterEnable"])
  {
    v32 = a1[5];
    v33 = a1[6];

    [v32 startMailboxFilterEnableTestWithOptions:v33];
    return;
  }

  if ([a1[4] mf_containsSubstring:@"MailboxFilterDisable"])
  {
    v34 = a1[5];
    v35 = a1[6];

    [v34 startMailboxFilterDisableTestWithOptions:v35];
    return;
  }

  if ([a1[4] mf_containsSubstring:@"MailboxFilterPickerEnable"])
  {
    v36 = a1[5];
    v37 = a1[6];

    [v36 startMailboxFilterPickerEnableTestWithOptions:v37];
    return;
  }

  if ([a1[4] mf_containsSubstring:@"MailboxFilterPickerDisable"])
  {
    v38 = a1[5];
    v39 = a1[6];

    [v38 startMailboxFilterPickerDisableTestWithOptions:v39];
    return;
  }

  if ([a1[4] mf_isSelectConversationTest])
  {
    goto LABEL_57;
  }

  if ([a1[4] mf_containsSubstring:@"SelectSenderList"])
  {
    v42 = a1[5];
    v43 = a1[6];

    [v42 startSenderListSelectionTestWithOptions:v43];
  }

  else
  {
    if ([a1[4] mf_containsSubstring:@"SelectSingleMessage"])
    {
LABEL_57:
      v40 = a1[5];
      v41 = a1[6];

      [v40 startConversationSelectionTestWithOptions:v41];
      return;
    }

    if ([a1[4] mf_isScrollConversationViewTest])
    {
      v44 = a1[5];
      v45 = a1[6];

      [v44 startConversationScrollTestWithOptions:v45];
    }

    else if ([a1[4] mf_containsSubstring:@"LoadAllMessagesInConversation"])
    {
      v46 = a1[5];
      v47 = a1[6];

      [v46 startConversationLoadAllMessagesTestWithOptions:v47];
    }

    else if ([a1[4] mf_containsSubstring:@"MailboxPrediction"])
    {
      v48 = a1[5];
      v49 = a1[6];

      [v48 startMailboxPredictionTestWithOptions:v49];
    }

    else if ([a1[4] mf_containsSubstring:@"ScrollMailboxList"])
    {
      v50 = a1[5];
      v51 = a1[6];

      [v50 startScrollMailboxListTestWithOptions:v51];
    }

    else if ([a1[4] mf_containsSubstring:@"MessageListSwipeAction"])
    {
      v52 = a1[5];
      v53 = a1[6];

      [v52 startMessageListSwipeActionTestWithOptions:v53];
    }

    else if ([a1[4] mf_containsSubstring:@"ConversationViewRotation"])
    {
      v54 = a1[5];
      v55 = a1[6];

      [v54 startConversationViewRotationTestWithOptions:v55];
    }

    else if ([a1[4] mf_containsSubstring:@"ScrollSearchResultNatural"])
    {
      v56 = a1[5];
      v57 = a1[6];

      [v56 startScrollMessageListSearchTestWithOptions:v57];
    }

    else if ([a1[4] mf_containsSubstring:@"SearchWhileTyping"])
    {
      v58 = a1[5];
      v59 = a1[6];

      [v58 startSearchWhileTypingTestWithOptions:v59];
    }

    else if ([a1[4] isEqualToString:@"CategorizeMessages"])
    {
      v60 = a1[5];
      v61 = a1[6];

      [v60 startMailCategorizationTest:v61];
    }
  }
}

id sub_1000D7D1C(uint64_t a1)
{
  v2 = [*(a1 + 32) mf_containsSubstring:@"WithSelection"];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 startScrollMessagesInEditModeWithSelectionTest:v4];
  }

  else
  {

    return [v3 startScrollMessagesInEditModeTest:v4];
  }
}

void sub_1000D7DC0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000D7E6C;
  v2[3] = &unk_10064C660;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [EFScheduler mf_afterUIDelay:v2 performBlock:2.0];
}

id sub_1000D7E90(uint64_t a1)
{
  v2 = [*(a1 + 32) mf_containsSubstring:@"Multiple"];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 startMessageTransferTest:v4 multiSelect:v2];
}

id sub_1000D8018(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000D809C;
  v2[3] = &unk_10064C7E8;
  v2[4] = *(a1 + 32);
  return [EFScheduler mf_afterUIDelay:v2 performBlock:1.0];
}

void sub_1000D840C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000D8E38(uint64_t a1)
{
  v3 = [*(a1 + 32) getMessageListViewController];
  v2 = [*(a1 + 40) mailboxes];
  [v3 setMailboxes:v2 senderSpecificMessageListItem:0 bucket:4 forceReload:1];
}

void sub_1000D94F8(uint64_t a1)
{
  v3 = [*(a1 + 32) masterNavigationController];
  v2 = [v3 popToViewController:*(a1 + 40) animated:1];
}

void sub_1000D98A8(id *a1)
{
  v2 = a1[4];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000D99D4;
  v8 = &unk_10064F9F0;
  v9 = v2;
  v10 = a1[5];
  [v2 installNotificationObserverForNotificationName:@"MessageListLoadingCompleted" forOneNotification:1 usingBlock:&v5];
  [a1[4] startedTest:{a1[5], v5, v6, v7, v8, v9}];
  v3 = [a1[4] getMessageListViewController];
  v4 = [a1[6] mailboxes];
  [v3 setMailboxes:v4 senderSpecificMessageListItem:0 bucket:4 forceReload:1];
}

void sub_1000D99A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_1000D9E8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) collectionView];
  [v2 _performScrollTestOnMessageListOnCollectionView:v3 withOptions:*(a1 + 48) isNatural:{objc_msgSend(*(a1 + 56), "hasSuffix:", @"Natural"}];
}

void sub_1000D9F18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) collectionView];
  [v1 _performScrollTestOnMessageListOnCollectionView:? withOptions:? isNatural:?];
}

void sub_1000DA338(uint64_t a1)
{
  [*(a1 + 32) focusSearchBarAnimated:0];
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"searchString"];
  v3 = [CSSuggestion suggestionWithUserString:?];
  [v2 beginSearchWithSuggestion:v3 scope:@"currentMailbox"];
}

void sub_1000DA3F8(uint64_t a1)
{
  v32 = [*(a1 + 32) view];
  v2 = [*(a1 + 32) searchBar];
  v3 = [v2 searchTextField];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) searchBar];
  v13 = [v12 searchTextField];
  [v32 convertRect:v13 fromView:{v5, v7, v9, v11}];
  v39 = CGRectStandardize(v38);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;

  v33 = [*(a1 + 32) view];
  [v33 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v40.origin.x = v19;
  v40.origin.y = v21;
  v40.size.width = v23;
  v40.size.height = v25;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  if (!CGRectContainsRect(v40, v43))
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v26 = NSStringFromCGRect(v41);
    v42.origin.x = v19;
    v42.origin.y = v21;
    v42.size.width = v23;
    v42.size.height = v25;
    v27 = NSStringFromCGRect(v42);
    v34 = [NSString stringWithFormat:@"%@:\n\tSearchBar (%@) not in visible bounds (%@)", @"Search bar never became visible", v26, v27, @"Search bar never became visible"];

    v28 = *(a1 + 40);
    v29 = [*(a1 + 48) objectForKeyedSubscript:@"testName"];
    [v28 failedTest:v29 withFailure:v34];
  }

  v35 = [*(a1 + 32) searchBar];
  v30 = [v35 text];

  if (!v30)
  {
    v31 = *(a1 + 40);
    v36 = [*(a1 + 48) objectForKeyedSubscript:@"testName"];
    [v31 failedTest:? withFailure:?];
  }
}

void sub_1000DA708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) objectForKey:@"testName"];
  [v2 startedTest:?];

  v7 = [*(a1 + 48) presentedViewController];
  v3 = [v7 searchResultsUpdater];
  v4 = *(a1 + 32);
  v5 = [v3 collectionView];
  [v4 _performScrollTestOnMessageListOnCollectionView:v5 withOptions:*(a1 + 40) isNatural:1];
}

id sub_1000DAE00(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 focusSearchBarAnimated:0];
}

void sub_1000DAE44(uint64_t a1)
{
  v6 = [*(a1 + 40) substringWithRange:{0, *(a1 + 56)}];
  v2 = [*(a1 + 32) searchBar];
  [v2 setText:v6];

  v3 = *(a1 + 48);
  v7 = [*(a1 + 32) searchBar];
  v4 = [*(a1 + 32) searchBar];
  v5 = [v4 text];
  [v3 searchBar:v7 textDidChange:v5];
}

id sub_1000DAF48(uint64_t a1)
{
  [*(a1 + 32) finishedTest:*(a1 + 40)];
  v2 = [*(a1 + 48) searchBar];
  [v2 setText:0];

  [*(a1 + 48) dismissSearchResultsAnimated:0];
  v3 = *(a1 + 48);

  return [v3 focusSearchBarAnimated:0];
}

void sub_1000DB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_1000DB5B0(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1000DB6AC;
  v7 = &unk_10064F9F0;
  v8 = v2;
  v9 = *(a1 + 40);
  [v2 installNotificationObserverForNotificationName:UIKeyboardDidShowNotification forOneNotification:1 usingBlock:&v4];
  v3 = [*(a1 + 32) mostRecentMainScene];
  [v3 composeButtonPressed:*(a1 + 48)];
}

void sub_1000DB8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id sub_1000DC3FC(uint64_t a1)
{
  result = [*(a1 + 32) rangeOfString:@"ShowPhotoPicker"];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) startedTest:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000DC4A0;
    v4[3] = &unk_10064C7E8;
    v4[4] = v3;
    return [v3 _showPhotoPickerWithCompletion:v4];
  }

  return result;
}

id sub_1000DC4A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DC520;
  v3[3] = &unk_10064C7E8;
  v3[4] = v1;
  return [v1 finishedTest:qword_1006DCF88 extraResults:0 withTeardownBlock:v3];
}

void sub_1000DC520(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC598;
  block[3] = &unk_10064C7E8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000DC598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DC60C;
  v3[3] = &unk_10064C7E8;
  v3[4] = v1;
  return [v1 _dismissPhotoPickerWithCompletion:v3];
}

id sub_1000DD218(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _dismissComposeViewController:v3 animated:1];
}

void sub_1000DD554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"testName"];
  [v1 _prepareForDismissComposeTest:?];
}

void sub_1000DD828(uint64_t a1)
{
  v2 = [_MFMailCompositionContext alloc];
  v3 = [NSURL URLWithString:@"mailto:foo@bar.com"];
  v4 = [v2 initWithURL:v3];

  [v4 setShowKeyboardImmediately:1];
  [*(a1 + 32) showComposeWithContext:v4 animated:1 initialTitle:0 completionBlock:0];
}

void sub_1000DDB98(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:@"DidFinishExitEditModeTest" object:0];
}

void sub_1000DE840(id *a1)
{
  v2 = [a1[4] mf_testName];
  [a1[5] startedTest:v2];
  v3 = a1[5];
  v4 = kMessageListItemsFirstBatchRetrieved;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DE960;
  v6[3] = &unk_10064FA18;
  v6[4] = v3;
  v5 = v2;
  v7 = v5;
  v8 = a1[6];
  [v3 installNotificationObserverForNotificationName:v4 forOneNotification:1 usingBlock:v6];
  [a1[6] _testing_enableMessageListFilter];
}

void sub_1000DE960(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DEA08;
  v3[3] = &unk_10064C7E8;
  v4 = *(a1 + 48);
  [v1 finishedTest:v2 extraResults:0 withTeardownBlock:v3];
}

void sub_1000DEB0C(uint64_t a1)
{
  v2 = [*(a1 + 32) mf_testName];
  v3 = *(a1 + 40);
  v4 = kMessageListItemsFinishedLoad;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DEC0C;
  v6[3] = &unk_10064FA18;
  v6[4] = v3;
  v5 = v2;
  v7 = v5;
  v8 = *(a1 + 48);
  [v3 installNotificationObserverForNotificationName:v4 forOneNotification:1 usingBlock:v6];
  [*(a1 + 48) _testing_enableMessageListFilter];
}

void sub_1000DEC0C(id *a1)
{
  [a1[4] startedTest:a1[5]];
  v2 = a1[4];
  v3 = kMessageListItemsFirstBatchRetrieved;
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1000DECE8;
  v7 = &unk_10064F9F0;
  v8 = v2;
  v9 = a1[5];
  [v2 installNotificationObserverForNotificationName:v3 forOneNotification:1 usingBlock:&v4];
  [a1[6] _testing_disableMessageListFilter];
}

void sub_1000DEE38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DEF14;
  v7[3] = &unk_10064C660;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 finishedTest:v5 extraResults:0 withTeardownBlock:v7];
}

void sub_1000DEF14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) object];
  [v1 mailboxFilterPickerViewController:? didFinishPickingWithSelectedFilters:?];
}

void sub_1000DF0C4(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = *(a1 + 32);
  v5 = [v3 viewModel];
  v6 = [v5 filters];
  [v4 mailboxFilterPickerViewController:v3 didFinishPickingWithSelectedFilters:v6];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DF1EC;
  v9[3] = &unk_10064C7E8;
  v10 = *(a1 + 32);
  [v7 finishedTest:v8 extraResults:0 withTeardownBlock:v9];
}

void sub_1000DF81C(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"ComposeViewAnimationStart" forTest:*(a1 + 40)];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4 - *(a1 + 64);
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Performance Finished kComposeViewAnimationStartSubTest %@ : %fs", &v8, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  if (*(v6 + 24))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = (*(a1 + 72) >> 2) & 1;
  }

  *(v6 + 24) = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _finishTestDismissingReply:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

id *sub_1000DF968(id *result)
{
  if (*(*(result[6] + 1) + 24) == 1)
  {
    return [result[4] _finishTestDismissingReply:result[5]];
  }

  *(*(result[7] + 1) + 24) = 1;
  return result;
}

void sub_1000DFA10(uint64_t a1)
{
  v2 = [*(a1 + 32) dockContainer];
  v13 = [v2 activeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v13 _mailComposeController];
    if ([v3 isDirty])
    {
      [*(a1 + 32) _dismissComposeViewController:v3 animated:0];
    }

    else
    {
      [v3 presentSaveDeleteDialogOrClose];
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 32) openSessions];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 scene];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v11 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
            [v11 setWindowDismissalAnimation:3];
            v12 = +[UIApplication sharedApplication];
            [v12 requestSceneSessionDestruction:v8 options:v11 errorHandler:0];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000E0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  _Block_object_dispose((v66 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1000E09D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = +[MailAppController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [v3 name];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ already finished - ignoring notification: %@", &v11, 0x16u);
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v8 = +[MailAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v3 name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finishing test %@ due to notification: %@", &v11, 0x16u);
    }

    [*(a1 + 40) finishedTest:*(a1 + 32)];
  }
}

void sub_1000E0B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) referenceMessageListItemForFirstConversationWithSingleMessage:*(a1 + 64) markAsRead:*(a1 + 65)];
  v3 = *(a1 + 40);
  v7 = v2;
  if (v2)
  {
    [v3 _waitForTimeInterval:1.0];
    [*(a1 + 40) installNotificationObserverForNotificationName:@"MFMailConversationViewDidShow" forOneNotification:1 usingBlock:*(a1 + 56)];
    [*(a1 + 40) installNotificationObserverForNotificationName:MFMessageContentViewDidAppear forOneNotification:1 usingBlock:*(a1 + 56)];
    [*(a1 + 40) startedTest:*(a1 + 48)];
    v4 = *(a1 + 32);
    v5 = [v7 itemID];
    [v4 _handleDidSelectItemID:v5 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:1];
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = [*(a1 + 32) dataSource];
    [v3 _testFailedDueToNilReferenceMessage:v6 messageCount:{objc_msgSend(v5, "numberOfItems")}];
  }
}

void sub_1000E0CE4(uint64_t a1)
{
  v3 = [*(a1 + 32) getMessageListViewController];
  v2 = [*(a1 + 40) mailboxes];
  [v3 setMailboxes:v2 senderSpecificMessageListItem:0 bucket:3 forceReload:1];
}

void sub_1000E0D7C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && [a1[4] mf_testInterfaceOrientation] == 1 || (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") & 1) == 0 && (objc_msgSend(a1[4], "mf_testInterfaceOrientation") == 3 || objc_msgSend(a1[4], "mf_testInterfaceOrientation") == 4))
    {
      v3 = [WeakRetained mostRecentMainScene];
      v4 = [v3 splitViewController];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000E0EE4;
      v5[3] = &unk_10064FAE0;
      v5[4] = WeakRetained;
      v6 = a1[5];
      [v4 showMessageListViewController:1 animated:1 completion:v5];
    }

    else
    {
      (*(a1[5] + 2))();
    }
  }
}

void sub_1000E0EE4(uint64_t a1)
{
  v2 = [*(a1 + 32) mostRecentMainScene];
  v3 = [v2 splitViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E0FC8;
  v4[3] = &unk_10064E7F8;
  v5 = *(a1 + 40);
  [v3 showMessageListViewController:0 animated:1 completion:v4];
}

void sub_1000E0FD8(uint64_t a1)
{
  v2 = +[MailAppController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished preallocating web views, will continue", buf, 2u);
  }

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E10CC;
  block[3] = &unk_10064C598;
  v5 = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1000E10DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[MailAppController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004883E0(v3);
    }

    [WeakRetained startedTest:*(a1 + 32)];
    [WeakRetained failedTest:*(a1 + 32) withFailure:@"Failed to preallocate web views"];
  }
}

void sub_1000E158C(id *a1)
{
  if ([a1[4] hasSuffix:@"Natural"])
  {
    v2 = [RPTScrollViewTestParameters alloc];
    v3 = [a1[5] mf_testName];
    v9 = [v2 initWithTestName:v3 scrollView:a1[6] completionHandler:0];

    [a1[5] mf_pages];
    RPTAmplitudeFromPagesOfView();
    [v9 setAmplitude:?];
    [RPTTestRunner runTestWithParameters:v9];
  }

  else
  {
    v4 = [a1[6] desiredScrollLength:a1[5]];
    v5 = a1[6];
    v6 = a1[4];
    v7 = [a1[5] mf_iterations];
    v8 = [a1[5] mf_scrollOffset];

    [v5 _performScrollTest:v6 iterations:v7 delta:v8 length:v4];
  }
}

void sub_1000E16D8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[MailAppController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AMS test, scroll to the top", v8, 2u);
    }

    v3 = *(a1 + 32);
    [v3 contentInset];
    [v3 setContentOffset:1 animated:{0.0, -v4}];
    v5 = +[EFScheduler mainThreadScheduler];
    v6 = [v5 afterDelay:*(a1 + 40) performBlock:2.0];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void sub_1000E1BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 object];
  [v4 addObject:v5];

  v6 = *(a1 + 40);
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-messageView-%lu", *(a1 + 48), [*(a1 + 32) count]);
  [v6 finishedSubTest:v7 forTest:*(a1 + 48)];

  if ([*(a1 + 40) _allMessageViewControllersDidDisplayContent:*(a1 + 32)])
  {
    [*(a1 + 40) finishedTest:*(a1 + 48)];
  }
}

void sub_1000E1F70(uint64_t a1)
{
  v1 = UIApp;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E201C;
  v3[3] = &unk_10064C660;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  [v1 installCACommitCompletionBlock:v3];
}

void sub_1000E215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_1000E23E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33)
{
  objc_destroyWeak((v39 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000E246C(uint64_t a1)
{
  v2 = [NSIndexPath indexPathForRow:0 inSection:0];
  v3 = +[EFPromise promise];
  [*(a1 + 32) startedSubTest:@"SwipeActionOpen" forTest:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = sub_10022BBE8(0, *(a1 + 56));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E25E4;
  v10[3] = &unk_10064FB80;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v7 = v3;
  v12 = v7;
  [v4 swipeItemAtIndexPath:v2 configuration:0 direction:v5 animated:1 completion:v10];
  v8 = [v7 future];

  return v8;
}

id sub_1000E25E4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SwipeActionOpen" forTest:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 finishWithResult:&__kCFBooleanTrue];
}

id sub_1000E2634(uint64_t a1)
{
  v2 = +[EFPromise promise];
  [*(a1 + 32) startedSubTest:@"SwipeActionClose" forTest:*(a1 + 40)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2760;
  v8[3] = &unk_10064FB80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v5 = v2;
  v10 = v5;
  [v4 resetSwipedItemAnimated:1 completion:v8];
  v6 = [v5 future];

  return v6;
}

id sub_1000E2760(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SwipeActionClose" forTest:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 finishWithResult:&__kCFBooleanTrue];
}

void sub_1000E27B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained startedTest:*(a1 + 32)];
  v3 = (*(*(a1 + 40) + 16))();
  v4 = [v3 then:*(a1 + 48)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E28C0;
  v5[3] = &unk_10064EFC0;
  v5[4] = WeakRetained;
  v6 = *(a1 + 32);
  [v4 addSuccessBlock:v5];
}

void sub_1000E2BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLimit:{objc_msgSend(*(a1 + 32), "mf_messageCount")}];
}

void sub_1000E2C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2D5C;
  v8[3] = &unk_10064C6B0;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 performBlock:v8];
}

void sub_1000E2D5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 ef_publicDescription];
    v6 = [NSString stringWithFormat:@"Failed to finish categorization test due to error: %@", v3];

    [*(a1 + 40) failedTest:*(a1 + 48) withFailure:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 finishedTest:v5];
  }
}

void sub_1000E3008(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 desiredScrollLength:*(a1 + 40)];
  v4 = [*(a1 + 40) mf_testName];
  v5 = [*(a1 + 40) mf_iterations];
  v6 = [*(a1 + 40) mf_scrollOffset];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3154;
  v8[3] = &unk_10064FC48;
  v9 = *(a1 + 32);
  v7 = v2;
  v10 = v7;
  [v7 _performScrollTest:v4 iterations:v5 delta:v6 length:v3 scrollAxis:2 extraResultsBlock:0 completionBlock:v8];
}

void sub_1000E3154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) indexPathsForVisibleItems];
  v2 = [v3 firstObject];
  [v1 selectFavoriteItemAtIndexPath:v2 animated:0];
}

void sub_1000E33F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000E3440(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E3458(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = v3;
    if (*(a1 + 48) == 1)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;
    }

    (*(*(a1 + 32) + 16))();
    v3 = v7;
  }
}

void sub_1000E3BCC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCFD8;
  qword_1006DCFD8 = v1;
}

void sub_1000E3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxEditingController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E4A20(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_1000E4C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1000E50A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1000E5EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

id sub_1000E5F44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 invocation];
  if (v7 && (v8 = [v5 allowOtherChange:*(a1 + 32)], v7, (v8 & 1) == 0))
  {
    v9 = 0;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E6068;
    v11[3] = &unk_10064FCE8;
    v12 = *(a1 + 32);
    v9 = [v6 ef_all:v11];
  }

  return v9;
}

void sub_1000E65F4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[UIColor tableCellEligibleColor];
  v4 = [v7 textProperties];
  [v4 setColor:v3];

  v5 = [*(a1 + 32) _mailboxTextFont];
  v6 = [v7 textProperties];
  [v6 setFont:v5];
}

void sub_1000E693C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setText:*(a1 + 32)];
  [v3 setImage:*(a1 + 40)];
}

void sub_1000E6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxGroupedPickerTableCell;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E6D10(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32) == 1)
  {
    +[UIColor tableCellEligibleColor];
  }

  else
  {
    +[UIColor tableCellIneligibleColor];
  }
  v3 = ;
  v4 = [v5 textProperties];
  [v4 setColor:v3];
}

void sub_1000E6ECC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 textProperties];
  [v3 setColor:v2];
}

void sub_1000E718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000E77C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000E7DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxListViewControllerBase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E82C4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 10) = [v3 isCancelled];
}

void sub_1000E923C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000E92D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxListViewControllerMail;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000EA274(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000EC0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EC0FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    if ([*(a1 + 32) length])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000EC2B0;
      v13[3] = &unk_10064F1B8;
      v4 = *(a1 + 40);
      v14 = *(a1 + 32);
      v5 = [v4 ef_filter:v13];

      v6 = v5;
    }

    else
    {

      v6 = &__NSArray0__struct;
    }

    v7 = +[EFScheduler mainThreadScheduler];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EC308;
    v10[3] = &unk_10064CF10;
    v8 = *(a1 + 56);
    v10[4] = WeakRetained;
    v12 = v8;
    v9 = v6;
    v11 = v9;
    [v7 performBlock:v10];
  }
}

id sub_1000EC2B0(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = [v3 mf_containsSubstring:*(a1 + 32) options:897];

  return v4;
}

void sub_1000EC308(uint64_t a1)
{
  v2 = [*(a1 + 32) currentMailboxFilterID];
  v3 = *(a1 + 48);
  v8 = [*(a1 + 32) filteredMailboxes];
  v4 = [v8 getObject];
  v5 = [v4 isEqualToArray:*(a1 + 40)];

  if ((v2 != v3) | v5 & 1)
  {
    if (v2 != v3)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = *(a1 + 32);
        *buf = 138412546;
        v13 = v6;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "<%@: %p> Skipping table view reload because filter ID has changed.", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = [*(a1 + 32) filteredMailboxes];
    [v10 setObject:*(a1 + 40)];

    v11 = [*(a1 + 32) tableView];
    [v11 reloadData];
  }
}

id sub_1000EC61C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) parent];
  if (v3)
  {
    do
    {
      if ([v3 isRootMailbox])
      {
        break;
      }

      v4 = [v3 displayName];
      [v2 insertObject:v4 atIndex:0];

      v5 = [v3 parent];

      v3 = v5;
    }

    while (v5);
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SEARCH_MAILBOX_SEPARATOR" value:&stru_100662A88 table:@"Main"];
  v8 = [v2 componentsJoinedByString:v7];
  v9 = [v8 copy];

  return v9;
}

void sub_1000ECA40(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCFF0;
  qword_1006DCFF0 = v1;
}

void sub_1000ECC30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000ECD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = MailboxOutlineCell;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000ED02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ED054(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained shouldShowBadgeCountIfNecessary] & 1) != 0)
  {
    if (!v4[2])
    {
      v5 = +[NSAssertionHandler currentHandler];
      [v5 handleFailureInMethod:*(a1 + 40) object:v4 file:@"MailboxOutlineCell.m" lineNumber:174 description:@"Need to have mailboxes"];
    }

    [v4 setBadgeCount:{objc_msgSend(v6, "integerValue")}];
  }
}

id sub_1000ED424(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldExcludeBusinessMessages];
  [*(a1 + 32) _updateShouldExcludeBusinessMessages];
  result = [*(a1 + 32) shouldExcludeBusinessMessages];
  if (v2 != result)
  {
    v4 = *(a1 + 32);
    v5 = v4[2];
    v6 = [v4 currentUnreadCountQueryIncludesRead];

    return [v4 _setUnreadCountMailboxes:v5 unreadCountIncludesRead:v6];
  }

  return result;
}

id sub_1000EDB9C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxFromLegacyMailbox:a2];

  return v2;
}

BOOL sub_1000EE04C(id a1, EMMailbox *a2)
{
  v2 = a2;
  if ([(EMMailbox *)v2 isInboxMailbox])
  {
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 bucketBarConfigurationController];
    v8 = v2;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = [v4 isBucketBarHiddenForMailboxes:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1000EE2B4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1000EE580(uint64_t a1)
{
  v3 = [*(a1 + 32) countDebouncer];
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v3 debounceResult:v2];
}

void sub_1000EEA74(uint64_t a1, void *a2)
{
  v9 = a2;
  if (a1)
  {
    v3 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

    v5 = [v9 textProperties];
    if (IsAccessibilityCategory)
    {
      [v5 setNumberOfLines:0];
    }

    else
    {
      [v5 setNumberOfLines:1];

      v6 = [v9 textProperties];
      [v6 setLineBreakMode:5];

      v7 = [v9 textProperties];
      [v7 setAdjustsFontSizeToFitWidth:1];

      v8 = [v9 textProperties];
      [v8 setMinimumScaleFactor:0.949999988];

      v5 = [v9 textProperties];
      [v5 setAllowsDefaultTighteningForTruncation:1];
    }
  }
}

void sub_1000EEB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1000EF5D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained detailDisclosureActionHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 detailDisclosureActionHandler];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

double sub_1000EFA4C(id a1)
{
  v1 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];
  [v2 lineHeight];
  v4 = v3;
  +[MailboxOutlineCell defaultRowHeight];
  v6 = (v5 - v4) * 0.5;

  return v6;
}

void sub_1000EFDB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000EFEC8(uint64_t a1)
{
  v8 = [*(a1 + 32) smartMailbox];
  if ([v8 smartMailboxType] == 8)
  {
    v2 = [v8 isInboxMailbox];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 40) firstObject];
  v4 = [v3 bucketBarConfigurationIdentifier];
  v5 = [*(*(a1 + 32) + 16) firstObject];
  v6 = [v5 bucketBarConfigurationIdentifier];
  v7 = [v4 isEqualToString:v6];

  if ((v2 | v7))
  {
    [*(a1 + 32) _updateShouldExcludeBusinessMessages];
    [*(a1 + 32) _setUnreadCountMailboxes:*(*(a1 + 32) + 16) unreadCountIncludesRead:{objc_msgSend(*(a1 + 32), "currentUnreadCountQueryIncludesRead")}];
  }
}

id sub_1000F00CC(uint64_t a1)
{
  [*(a1 + 32) _updateShouldExcludeBusinessMessages];
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = [v2 currentUnreadCountQueryIncludesRead];

  return [v2 _setUnreadCountMailboxes:v3 unreadCountIncludesRead:v4];
}

void sub_1000F0868(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000F16B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000F1740(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v8, (a1 + 32));
  v4 = v3;
  v7 = v4;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];

  objc_destroyWeak(&v8);
}

void sub_1000F1808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v14;

  objc_destroyWeak((v15 + 40));
  _Unwind_Resume(a1);
}

void sub_1000F1838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentFocus:*(a1 + 32)];
  if (*(a1 + 32))
  {
    [WeakRetained reloadDataSourceWithReason:1];
  }
}

void sub_1000F192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxPickerCollectionHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000F1A24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v9 forItemID:v7 indexPath:v8];
}

void sub_1000F1AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureAddMailboxCell:v3];
}

id sub_1000F1B4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 isEqualToString:@"kAddButtonItemIdentifier"];
  v11 = 40;
  if (v10)
  {
    v11 = 32;
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v11) forIndexPath:v8 item:v9];

  return v12;
}

int sub_1000F1C04(id a1, NSDiffableDataSourceTransaction *a2)
{
  v2 = [(NSDiffableDataSourceTransaction *)a2 sectionTransactions];
  v3 = [v2 count] == 2;

  return v3;
}

id sub_1000F1C54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained dataSource];
  v6 = [v5 indexPathForItemIdentifier:v3];

  v7 = [WeakRetained canReorderItemAtIndexPath:v6];
  return v7;
}

void sub_1000F1CD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000F1D00(uint64_t a1, void *a2)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v35 difference];
  v5 = [v4 removals];
  v6 = [v5 firstObject];
  v7 = [v6 object];

  v8 = [WeakRetained favoritesManager];
  if ((*(*(a1 + 32) + 16))())
  {
    v9 = [WeakRetained dataSource];
    v10 = [v9 indexPathForItemIdentifier:v7];

    v11 = [WeakRetained favoriteItemAtIndexPath:v10];
    v12 = [v35 initialSnapshot];
    v13 = [v12 itemIdentifiers];
    v14 = [v13 indexOfObject:v7];

    v15 = [v35 finalSnapshot];
    v16 = [v15 itemIdentifiers];
    v17 = [v16 indexOfObject:v7];

    v18 = [v8 accountsCollection];
    v19 = [v18 visibleItems];
    v20 = [v19 indexOfObject:v11];

    v21 = [v8 accountsCollection];
    [v8 moveItemOfCollection:v21 fromIndex:v20 toIndex:&v20[v17 - v14]];
  }

  else
  {
    v22 = [v35 sectionTransactions];
    v10 = [v22 lastObject];

    v23 = [v10 initialSnapshot];
    v24 = [v23 visibleItems];
    v25 = [v24 indexOfObject:v7];

    v26 = [v10 finalSnapshot];
    v27 = [v26 visibleItems];
    v28 = [v27 indexOfObject:v7];

    v29 = [v35 initialSnapshot];
    v30 = [v10 sectionIdentifier];
    v31 = [v29 indexOfSectionIdentifier:v30];

    v32 = [WeakRetained model];
    v33 = [v32 sections];
    v34 = [v33 objectAtIndexedSubscript:v31];
    v11 = [v34 collection];

    [v8 moveItemOfCollection:v11 fromIndex:v25 toIndex:v28];
  }
}

void sub_1000F2118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(*(a1 + 32) + 16))())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F221C;
    block[3] = &unk_10064C7E8;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v5 = [WeakRetained collectionView];
    [WeakRetained updatedSelectedState:v5];
  }
}

void sub_1000F21F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1000F2224(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained favoriteItemForItemID:v3];
  v6 = [v5 isExpandable];

  return v6;
}

void sub_1000F22A8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained favoriteItemForItemID:v8];
  [v4 setExpanded:1];
  if ([v4 type] != 1)
  {
    v5 = [WeakRetained favoritesManager];
    v6 = [v5 accountsCollection];
    [v6 addExpandedItem:v4];
  }

  v7 = [WeakRetained favoritesManager];
  [v7 refreshCollectionForItemExpansion:v4];
}

void sub_1000F2378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1000F23BC(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained favoriteItemForItemID:v9];
  [v4 setExpanded:0];
  v5 = [WeakRetained favoritesManager];
  [v5 refreshCollectionForItemExpansion:v4];

  if ([v4 type] != 1)
  {
    v6 = [WeakRetained favoritesManager];
    v7 = [v6 accountsCollection];
    v8 = [v7 removeExpandedItem:v4];
  }
}

void sub_1000F2494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

id sub_1000F2C2C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 logClient];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 ef_publicDescription];
      *buf = 138543362;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating accounts for focus: %{public}@", buf, 0xCu);
    }

    v19 = objc_alloc_init(NSMutableArray);
    v6 = [v3 focusedAccountIdentifiers];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [a1 favoritesManager];
    v8 = [v7 accountsCollection];
    v9 = [v8 items];

    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if (v3)
          {
            v14 = [*(*(&v20 + 1) + 8 * i) account];
            v15 = [v14 identifier];
            v16 = [v6 containsObject:v15];
          }

          else
          {
            v16 = 1;
          }

          [v13 setShowUnreadCount:v16];
          if ((v16 & 1) == 0 && [v13 isExpanded])
          {
            [v13 setExpanded:0];
            v17 = [v13 itemID];
            [v19 addObject:v17];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_1000F2F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableOrderedSet orderedSet];
  v5 = [*(a1 + 32) ef_map:&stru_100650078];
  [v4 addObjectsFromArray:v5];

  v6 = [v3 sectionIdentifiers];
  v7 = [NSOrderedSet orderedSetWithArray:v6];

  v24 = v7;
  v8 = [v4 differenceFromOrderedSet:v7];
  if (![v8 hasChanges])
  {
    goto LABEL_18;
  }

  v9 = [v8 removals];
  v10 = [v9 ef_map:&stru_1006500B8];

  v23 = v10;
  [v3 deleteSectionsWithIdentifiers:v10];
  [v8 mf_groupedInsertionsForCollection:v4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v11 = v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = *v26;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      if ([v15 type] == 2)
      {
        v16 = [v15 insertions];
        v17 = [v15 associatedObject];
        [v3 insertSectionsWithIdentifiers:v16 beforeSectionWithIdentifier:v17];
LABEL_11:

        goto LABEL_13;
      }

      if ([v15 type] == 1)
      {
        v16 = [v15 insertions];
        v17 = [v15 associatedObject];
        [v3 insertSectionsWithIdentifiers:v16 afterSectionWithIdentifier:v17];
        goto LABEL_11;
      }

      v16 = [v15 insertions];
      [v3 appendSectionsWithIdentifiers:v16];
LABEL_13:
    }

    v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  }

  while (v12);
LABEL_15:

  v18 = [*(a1 + 40) logClient];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v11 count];
    v20 = [v23 count];
    *buf = 134218240;
    v30 = v19;
    v31 = 2048;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#Favorites Added %ld, removed %ld sections", buf, 0x16u);
  }

LABEL_18:
  v21 = [v8 hasChanges];

  return v21;
}

NSString *__cdecl sub_1000F3334(id a1, MailboxPickerCollectionHelperSection *a2)
{
  v2 = [(MailboxPickerCollectionHelperSection *)a2 sectionIdentifier];

  return v2;
}

NSString *__cdecl sub_1000F3364(id a1, NSOrderedCollectionChange *a2)
{
  v2 = [(NSOrderedCollectionChange *)a2 object];

  return v2;
}

id sub_1000F3394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 copy];
  v6 = [*(a1 + 40) sectionIdentifier];
  [v4 setValue:v5 forKey:v6];

  v7 = [*(a1 + 48) _updateSnapshot:v3 forSection:*(a1 + 40)];
  return v7;
}

BOOL sub_1000F3440(uint64_t a1, void *a2)
{
  v23 = a2;
  v25 = [*(a1 + 32) sectionController];
  v26 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = *v29;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = *(a1 + 48);
        v8 = [v6 sectionIdentifier];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v6 sectionIdentifier];
        v11 = [v25 snapshotForSection:v10];

        v12 = [v11 items];
        v13 = [v9 items];
        v14 = [v12 differenceFromArray:v13];

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000F3840;
        v27[3] = &unk_100650130;
        v27[4] = *(a1 + 32);
        v15 = objc_retainBlock(v27);
        v16 = [v14 insertions];
        (v15[2])(v15, v16, v26, v11);

        v17 = [v14 removals];
        (v15[2])(v15, v17, v26, v9);
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v3);
  }

  v18 = [v23 itemIdentifiers];
  v19 = [NSMutableSet setWithArray:v18];

  [v19 intersectSet:v26];
  v20 = [v19 allObjects];
  [v23 reconfigureItemsWithIdentifiers:v20];

  v21 = [v19 count] != 0;
  return v21;
}

void sub_1000F3840(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) object];
        v15 = [v9 parentOfChild:v14];
        v16 = [*(a1 + 32) favoriteItemForItemID:v14];
        v17 = v16;
        if (v14)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18 && [v16 isExpandable])
        {
          [v8 addObject:v14];
        }

        if (v15)
        {
          [v8 addObject:v15];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

uint64_t sub_1000F3A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 collapseItems:v4];

  return 1;
}

void sub_1000F3AC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL sub_1000F3AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 indexPathsForVisibleItems];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F3C24;
  v9[3] = &unk_1006501A8;
  v10 = *(a1 + 40);
  v6 = [v5 ef_map:v9];

  [v3 reconfigureItemsWithIdentifiers:v6];
  v7 = [v6 count] != 0;

  return v7;
}

id sub_1000F3C24(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIdentifierForIndexPath:a2];

  return v2;
}

NSString *__cdecl sub_1000F4D34(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 itemID];

  return v2;
}

BOOL sub_1000F4D8C(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 representingMailbox];
  v3 = +[MailChangeManager sharedChangeManager];
  v4 = [v3 levelForMailbox:v2] == 0;

  return v4;
}

void sub_1000F4E0C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v21 = a3;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    v19 = [v20 itemID];
    v11 = [v10 objectForKeyedSubscript:v21];
    if ([v11 count])
    {
      v12 = [a1 snapshotFromFavoriteItems:v11];
      [v9 setChildrenWithSnapshot:v12 forParent:v19];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v17 itemUUID];
            sub_1000F4E0C(a1, v17, v18, v9, v10);
          }

          v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }
    }
  }
}

id sub_1000F504C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExpanded] && objc_msgSend(v3, "type") != 1)
  {
    v5 = *(a1 + 32);
    v6 = [v3 itemID];
    v4 = [v5 containsItem:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1000F50E8(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 itemID];

  return v2;
}

void *sub_1000F5470(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if ([*(a1 + 32) indexOfItem:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

void sub_1000F5934(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[EFScheduler globalAsyncScheduler];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F5A3C;
    v8[3] = &unk_10064C660;
    v9 = v5;
    v10 = v6;
    [v7 performBlock:v8];
  }
}

void sub_1000F5A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticsKey];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = *(a1 + 40);
    AnalyticsSendEventLazy();
  }
}

id sub_1000F5B20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = v2;
  v6[1] = @"IsFavorite";
  v7[0] = &__kCFBooleanTrue;
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isFavorites]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

NSString *__cdecl sub_1000F6D2C(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 itemID];

  return v2;
}

void sub_1000F6D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained favoritesManager];
  v3 = [v2 mailboxesCollection];
  v4 = [WeakRetained collectionView];
  [v3 setEditing:{objc_msgSend(v4, "isEditing")}];

  v5 = [WeakRetained logClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Favorites _favoritesDidChange", v6, 2u);
  }

  [WeakRetained reloadDataSource];
}

void sub_1000F7090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1000F70C0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"newFocus"];

  [*(a1 + 40) setCurrentFocus:v3];
  [*(a1 + 40) reloadDataSourceWithReason:1];
}

id sub_1000F7274(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxFromLegacyMailbox:a2];

  return v2;
}

void sub_1000F7578(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000F885C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000F8938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000F8ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 40));

  _Unwind_Resume(a1);
}

void sub_1000F8AFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      [v4 _detailsDisclosureButtonTapped:v3];
    }

    WeakRetained = v4;
  }
}

void sub_1000F9474(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [*(a1 + 32) favoriteItemAtIndexPath:?];
  v7 = [*(a1 + 40) visibleItems];
  if ([v7 containsObject:v6])
  {
  }

  else
  {
    v8 = [*(a1 + 48) containsObject:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v9 = [*(a1 + 56) layoutAttributesForItemAtIndexPath:v17];
  [v9 frame];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  if (CGRectContainsRect(*(a1 + 64), v20))
  {
    v14 = [v6 itemID];
    [*(a1 + 32) setPinnedItemIdentifier:v14];

    [*(a1 + 56) contentOffset];
    v16 = v15;
    [v9 frame];
    [*(a1 + 32) setPinnedItemOffset:v16 - CGRectGetMinY(v19)];
    *a4 = 1;
  }

LABEL_7:
}

uint64_t sub_1000F95F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableOrderedSet orderedSet];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) itemID];
        if (v9)
        {
          [v4 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v4 array];
  [v3 appendItems:v10];

  if (*(a1 + 40) == 1)
  {
    v17 = @"kAddButtonItemIdentifier";
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    [v3 appendItems:v11];
  }

  return 1;
}

id sub_1000FA1B8(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [*(a1 + 32) indexPathForItem:*(a1 + 40)];
  v4 = [v2 cellForItemAtIndexPath:v3];

  return v4;
}

id sub_1000FADD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    sub_1000FB4A4(a1, v3, v4);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000FB4A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 itemID];
          [v6 setObject:v11 forKeyedSubscript:v12];

          v13 = [v11 subItems];
          sub_1000FB4A4(a1, v13, v6);
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000FB7E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000FBC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a48, 8);

  _Unwind_Resume(a1);
}

void sub_1000FC39C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MailboxPickerCollectionHelperSection alloc];
  ++*(*(*(a1 + 40) + 8) + 24);
  v4 = [(MailboxPickerCollectionHelperSection *)v3 initPlaceholderWithSectionIdentifierIndex:?];
  [v2 addObject:?];
}

id sub_1000FC788(uint64_t a1)
{
  v2 = [[UIImageView alloc] initWithImage:*(a1 + 32)];
  v3 = [[UIDragPreview alloc] initWithView:v2 parameters:*(a1 + 40)];

  return v3;
}

void sub_1000FD434(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000FD7DC(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1000FD84C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _isRegularWidthSolariumPad];
    v3 = [v4 addNewMailboxButtonItem];
    [v3 setHidesSharedBackground:v2];

    WeakRetained = v4;
  }
}

void sub_1000FDD1C(void *a1)
{
  if (a1)
  {
    if (pthread_main_np() != 1)
    {
      v4 = +[NSAssertionHandler currentHandler];
      [v4 handleFailureInMethod:"_didFinishLoadViewController" object:a1 file:@"MailboxPickerOutlineController.m" lineNumber:206 description:@"Current thread must be main"];
    }

    if (([a1 didNotifyExtendedLaunchTracker] & 1) == 0)
    {
      [a1 setDidNotifyExtendedLaunchTracker:1];
      v3 = [a1 scene];
      v2 = [v3 extendedLaunchTracker];
      [v2 didFinishLoadViewController:a1 scene:v3];
    }
  }
}

id sub_1000FDFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _configuredSectionForSection:a2 layoutEnvironment:v5];

  return v7;
}

void sub_1000FE064(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sub_1000FDD1C(WeakRetained);
  }
}

void sub_1000FE0C8(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionHelper];
  [v1 updateMailboxSelectionAnimated:1 scrollToSelected:0];
}

void sub_1000FEB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FEB6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 == 0;
    }

    if (!v8)
    {
      v9 = [*(a1 + 48) collectionHelper];
      v6 = [v9 indexPathForItem:v4];

      if ([v4 type] == 2)
      {
        v10 = [v4 representingMailbox];
        v11 = v10 != 0;

        if (!v10 && v6)
        {
          v12 = +[MailboxPickerOutlineController log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 48);
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = [v4 account];
            v17 = [v16 ef_publicDescription];
            *buf = 138413058;
            v32 = v13;
            v33 = 2112;
            v34 = v15;
            v35 = 2112;
            v36 = v6;
            v37 = 2114;
            v38 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ - Skipping selection of Mailbox item:%@ at indexPath:%@ because item does not have a valid mailbox account:%{public}@", buf, 0x2Au);
          }

          goto LABEL_21;
        }

LABEL_17:
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_1000FEEBC;
        v25 = &unk_10064DA00;
        v6 = v6;
        v19 = *(a1 + 48);
        v26 = v6;
        v27 = v19;
        v4 = v4;
        v28 = v4;
        v29 = v11;
        v30 = *(a1 + 64);
        v20 = objc_retainBlock(&v22);
        v21 = v20;
        if (*(a1 + 64))
        {
          (v20[2])(v20);
        }

        else
        {
          [UIView performWithoutAnimation:v20, v22, v23, v24, v25];
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;

        v12 = v26;
LABEL_21:

        goto LABEL_22;
      }

LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v18 = [*(a1 + 48) collectionHelper];
    v4 = [v18 favoriteItemAtIndexPath:v6];
  }

  if (v4)
  {
    goto LABEL_16;
  }

LABEL_22:
}

void sub_1000FEE30(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1000FEEBC(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[MailboxPickerOutlineController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      sub_100488694(v5, v33, v3, v2);
    }
  }

  v6 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v18 = NSStringFromClass(v8);
    v9 = [*(a1 + 48) type];
    v10 = *(a1 + 32);
    v11 = NSStringFromBOOL();
    v12 = [*(a1 + 48) representingMailbox];
    v13 = [v12 ef_publicDescription];
    v14 = [*(a1 + 48) account];
    v15 = [v14 ef_publicDescription];
    *buf = 138413826;
    v20 = v7;
    v21 = 2112;
    v22 = v18;
    v23 = 2048;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - about to select item:%@ type:%lu indexPath:%@ hasValidMailbox:%@ representingMailbox:%{public}@ account:%{public}@", buf, 0x48u);
  }

  v16 = *(a1 + 48);
  v17 = [*(a1 + 40) favoriteItemSelectionTarget];
  [v16 wasSelected:v17 indexPath:*(a1 + 32) accessoryTapped:0 animated:*(a1 + 57)];
}

id sub_100100400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (+[UIDevice mf_isPadIdiom])
  {
    v4 = v3;
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      v5 = [v3 mutableCopy];
      v6 = [*(a1 + 32) shelfButtonItem];
      [v5 insertObject:v6 atIndex:0];

      v4 = [v5 copy];
    }
  }

  return v4;
}

void sub_1001004E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldShowToolbar:*(a1 + 40)];
  v3 = [*(a1 + 32) navigationController];
  [v3 setToolbarHidden:v2 ^ 1];
}

void sub_100100B8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100100BB8(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  [v2 showViewController:*(a1 + 40) sender:0];
}

void sub_100100F60(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];
  v1 = [v2 splitViewController];
  [v1 showMailboxPickerController:0 animated:1 completion:0];
}

void sub_10010117C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSourceView:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setSourceRect:?];
}

void sub_1001019CC(uint64_t a1)
{
  v2 = a1 + 40;
  [*(a1 + 32) selectItemAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  v3 = [*(v2 + 8) collectionHelper];
  v4 = [v3 favoriteItemAtIndexPath:*v2];

  v5 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) ef_publicDescription];
    v8 = [v4 ef_publicDescription];
    v9 = 138412802;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - splitView expanded, did select item at indexPath:%{public}@, item:%{public}@", &v9, 0x20u);
  }
}

void sub_1001022F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1001027F0(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001029B0;
  v7[3] = &unk_100650588;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v2 = objc_retainBlock(v7);
  v3 = (*(*(a1 + 48) + 16))();
  if (v3)
  {
    (v2[2])(v2, v3);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100102BC8;
    v4[3] = &unk_1006505B0;
    v5 = v2;
    v6 = *(a1 + 48);
    [*(a1 + 32) setViewDidAppearBlock:v4];
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100102964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 - 56));
  _Unwind_Resume(a1);
}

void sub_1001029B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v3 = [WeakRetained collectionView];
    v6 = +[MailboxPickerOutlineController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - defaulting to the collectionView as sourceView", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100102B40;
  v10[3] = &unk_100650560;
  v11 = v3;
  v12 = v5;
  v9 = v3;
  [v5 _presentViewControllerInPopover:v7 animated:v8 block:v10];
}

void sub_100102B40(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSourceView:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setSourceRect:?];
  [v3 setDelegate:*(a1 + 40)];
  [v3 setPermittedArrowDirections:3];
}

void sub_100102BC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  (*(v1 + 16))(v1);
}

void sub_100103250(id a1, BOOL a2)
{
  if (a2)
  {
    v4 = +[UIApplication sharedApplication];
    v2 = [v4 appStoreReviewManager];
    [v2 notifyCriterionMet:2];
  }

  else
  {
    v3 = +[MailboxPickerOutlineController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004887CC(v3);
    }
  }
}

void sub_10010381C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) selectedSmartMailboxes];
  [v2 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) selectedFavoriteMailboxes];
  [v2 addObjectsFromArray:v4];

  v5 = [*(a1 + 40) favoritesManager];
  v6 = [v5 mailboxesCollection];

  v7 = [*(a1 + 40) favoritesManager];
  v12 = v6;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = v2;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 updateCollections:v8 withItems:v9];

  v10 = [*(a1 + 40) collectionHelper];
  [v10 reloadFavorites];
}

void sub_100104038(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD018;
  qword_1006DD018 = v1;
}

void sub_100104960(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (!*(WeakRetained + 25))
    {
      v5 = +[NSAssertionHandler currentHandler];
      [v5 handleFailureInMethod:*(a1 + 40) object:v4 file:@"MailboxTableCell.m" lineNumber:194 description:@"Need to have mailboxes"];
    }

    [v4 _setUnreadCount:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }
}

void sub_100104B30(_Unwind_Exception *a1)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100104CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxTableCell;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10010528C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1001056D4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxFromLegacyMailbox:a2];

  return v2;
}

void sub_100105B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 == 1)
  {
    v6 = [v3 superview];

    if (v6)
    {
      if (*(a1 + 41) != 1)
      {
        [v4 removeFromSuperview];
        goto LABEL_14;
      }

      [v4 setAlpha:1.0];
      +[UIView inheritedAnimationDuration];
      v8 = v7;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100105DD4;
      v19[3] = &unk_10064C7E8;
      v20 = v4;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100105DE0;
      v17[3] = &unk_10064C570;
      v18 = v20;
      [UIView animateWithDuration:v19 animations:v17 completion:v8];

      v9 = v20;
      goto LABEL_11;
    }

    LOBYTE(v5) = *(a1 + 40);
  }

  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      v10 = [v4 superview];

      if (!v10)
      {
        if (*(a1 + 41) != 1)
        {
          v14 = [*(a1 + 32) contentView];
          [v14 addSubview:v4];

          goto LABEL_14;
        }

        [v4 setAlpha:0.0];
        v11 = [*(a1 + 32) contentView];
        [v11 addSubview:v4];

        +[UIView inheritedAnimationDuration];
        v13 = v12;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100105E28;
        v15[3] = &unk_10064C7E8;
        v16 = v4;
        [UIView animateWithDuration:v15 animations:v13];
        v9 = v16;
LABEL_11:
      }
    }
  }

LABEL_14:
}

id *sub_100105DE0(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] removeFromSuperview];
    v3 = v2[4];

    return [v3 setAlpha:1.0];
  }

  return result;
}

void sub_10010684C(_Unwind_Exception *a1)
{
  v5 = v3;

  if ((v1 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100106B44(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100107EE4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100107FC4(uint64_t a1)
{
  v3 = [*(a1 + 32) countDebouncer];
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v3 debounceResult:v2];
}

id sub_100109A50(int a1, int a2)
{
  v4 = [NSMutableString stringWithString:@"FOUND_IN_MAILBOX_FORMAT"];
  v5 = v4;
  if (a1)
  {
    [v4 appendString:@"_WITH_ACCOUNT"];
  }

  if (a2)
  {
    [v5 appendString:@"_SHORT"];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_100662A88 table:@"Main"];

  return v7;
}

void sub_10010A7D4()
{
  objc_end_catch();

  JUMPOUT(0x10010A8D8);
}

void sub_10010AA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_10010B03C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10010B2C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10010B420(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD078;
  qword_1006DD078 = v1;
}

id sub_10010B7F0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 session];
    v5 = [v4 stateRestorationActivity];
    v6 = sub_10010C188(a1, v5);

    if (!v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [v3 userActivities];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        v9 = *v21;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            v6 = sub_10010C188(a1, v11);
            if (v6)
            {
              v16 = +[MailComposeScene log];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v11 activityType];
                v18 = [v11 targetContentIdentifier];
                *buf = 138543618;
                v25 = v17;
                v26 = 2114;
                v27 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating context based off user activity with type: %{public}@, content identifier: %{public}@", buf, 0x16u);
              }

              goto LABEL_20;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v12 = [v3 URLContexts];
      v6 = sub_10010CC64(a1, v12);

      if (!v6)
      {
        v6 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
        buf[0] = -86;
        v13 = [a1 composeAccountIsDefault:buf];
        v14 = [v13 defaultEmailAddress];
        v15 = v14;
        if (!v14)
        {
          v15 = [v13 firstEmailAddress];
        }

        [v6 setPreferredSendingEmailAddress:v15];
        if (!v14)
        {
        }

        [v6 setIsUsingDefaultAccount:buf[0]];
      }
    }

LABEL_20:
    [v6 setPrefersFirstLineSelection:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10010BB8C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 remoteDelegateIdentifier];
    if (v5)
    {
      objc_initWeak(&location, a1);
      v6 = sub_100488838(a1);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10010CEFC;
      v7[3] = &unk_1006506D8;
      objc_copyWeak(&v8, &location);
      [v6 checkInComposeWithIdentifier:v5 completion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10010BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010BF8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10010C058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_10010C188(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 userInfo];
    v53 = [v6 objectForKeyedSubscript:MSMailActivityHandoffTypeKey];
    v55 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageData];
    v51 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageObjectIDRepresentation];
    v50 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMailboxObjectIDRepresentation];
    v56 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
    v52 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
    v54 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyComposeType];
    v7 = [v6 objectForKeyedSubscript:kMSOpenMailComposeViewControllerContextKey];
    v8 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyCompositionValues];
    v9 = [v6 objectForKeyedSubscript:MSMailQuickLookActivityKeyContentURL];
    if (v7)
    {
      v58 = 0;
      v10 = [MSOpenMailComposeViewControllerContext unarchiveFromData:v7 error:&v58];
      v11 = v58;
      if (v10)
      {
        v5 = [[_MFMailCompositionContext alloc] initWithOpenMailComposeContext:v10];
        v12 = [v6 objectForKeyedSubscript:kMSOpenComposeDelegateIdentifierKey];
        [v5 setRemoteDelegateIdentifier:v12];
      }

      else
      {
        v12 = +[MailComposeScene log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [v11 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100488934();
        }

        v5 = 0;
      }

LABEL_53:
      v42 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredAction];
      [v5 setDeferredAction:{objc_msgSend(v42, "integerValue")}];

      v43 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredActionUserInfo];
      [v5 setDeferredActionUserInfo:v43];

      goto LABEL_54;
    }

    if (v8)
    {
      v57 = 0;
      v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v57];
      v14 = v57;
      v48 = v14;
      v49 = v13;
      if (v13)
      {
        v15 = [_MFMailCompositionContext alloc];
        v16 = [a1 daemonInterface];
        v17 = [v16 messageRepository];
        v18 = +[UIApplication sharedApplication];
        v19 = [v18 mailboxProvider];
        v5 = [v15 initWithCompositionValues:v49 hostApplicationBundleIdentifier:0 messageRepository:v17 mailboxProvider:v19];
      }

      else
      {
        v30 = v14;
        v16 = +[MailComposeScene log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [v30 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100488978();
        }

        v5 = 0;
      }
    }

    else
    {
      if ([v55 length] && objc_msgSend(v53, "isEqualToString:", MSMailActivityHandoffTypeComposeSansStreams))
      {
        v20 = [_MFMailCompositionContext alloc];
        v21 = v54;
        v22 = v21;
        if (v21)
        {
          v23 = [v21 intValue];
        }

        else
        {
          v32 = +[MailComposeScene log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v60 = 2;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "ComposeType is nil. Falling back to default (%ld)", buf, 0xCu);
          }

          v23 = 2;
        }

        v5 = [v20 initWithComposeType:v23 RFC822Data:v55];
        goto LABEL_46;
      }

      if (v56 && (+[MSAutosave autosave](MSAutosave, "autosave"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 hasAutosavedMessageWithIdentifier:v56], v24, v25))
      {
        v48 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
        v49 = [EMObjectID objectIDFromSerializedRepresentation:?];
        v26 = [_MFMailCompositionContext alloc];
        v27 = v54;
        v28 = v27;
        if (v27)
        {
          v29 = [v27 intValue];
        }

        else
        {
          v40 = +[MailComposeScene log];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v60 = 7;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "ComposeType is nil. Falling back to default (%ld)", buf, 0xCu);
          }

          v29 = 7;
        }

        v16 = [a1 daemonInterface];
        v41 = [v16 messageRepository];
        v5 = [v26 initRecoveredAutosavedMessageWithIdentifier:v56 draftSubject:v52 composeType:v29 messageRepository:v41 originalMessageObjectID:v49];
      }

      else
      {
        if (!v51)
        {
          v5 = 0;
          goto LABEL_46;
        }

        v48 = [EMMessageObjectID objectIDFromSerializedRepresentation:?];
        if (v50)
        {
          v31 = [EMMailboxObjectID objectIDFromSerializedRepresentation:?];
        }

        else
        {
          v33 = +[MailComposeScene log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Mailbox object ID is not available, fallback to default", buf, 2u);
          }

          v31 = 0;
        }

        v46 = [_MFMailCompositionContext alloc];
        v49 = v31;
        v34 = v54;
        v35 = v34;
        if (v34)
        {
          v36 = [v34 intValue];
        }

        else
        {
          v37 = +[MailComposeScene log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v60 = 2;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "ComposeType is nil. Falling back to default (%ld)", buf, 0xCu);
          }

          v36 = 2;
        }

        v45 = v36;

        v16 = [a1 daemonInterface];
        v47 = [v16 messageRepository];
        v38 = +[UIApplication sharedApplication];
        v39 = [v38 mailboxProvider];
        v5 = [v46 initWithComposeType:v45 objectID:v48 mailboxID:v49 subject:v52 autosaveID:v56 messageRepository:v47 mailboxProvider:v39];
      }
    }

LABEL_46:
    if (v9)
    {
      v11 = [NSURL URLWithString:v9];
    }

    else
    {
      v11 = 0;
    }

    if ([v11 isFileURL])
    {
      if (!v5)
      {
        v5 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
      }

      [v5 insertAttachmentWithURL:v11];
    }

    goto LABEL_53;
  }

LABEL_54:

  return v5;
}

id sub_10010CC64(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      v8 = EMMailToURLScheme;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * v9) URL];
        if ([v10 ef_hasScheme:v8])
        {
          break;
        }

        if (v6 == ++v9)
        {
          v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      if (!v10)
      {
        goto LABEL_18;
      }

      v11 = [[_MFMailCompositionContext alloc] initWithURL:v10];
      v16 = -86;
      v12 = [a1 composeAccountIsDefault:&v16];
      v13 = [v12 defaultEmailAddress];
      v14 = v13;
      if (!v13)
      {
        v14 = [v12 firstEmailAddress];
      }

      [v11 setPreferredSendingEmailAddress:v14];
      if (!v13)
      {
      }

      [v11 setIsUsingDefaultAccount:v16];
    }

    else
    {
LABEL_17:

      v10 = 0;
LABEL_18:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10010CEFC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if (a3)
    {
      MSDEntitledOpenComposeProtocolDelegateXPCInterface();
    }

    else
    {
      [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDOpenComposeProtocolDelegate];
    }
    v9 = ;
    v10 = [[NSXPCConnection alloc] initWithListenerEndpoint:v7];
    [v10 setRemoteObjectInterface:v9];
    [v10 resume];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&stru_100650688];
    v12 = v11;
    if (a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004888A4;
    block[3] = &unk_1006506B0;
    objc_copyWeak(&v19, (a1 + 32));
    v17 = v12;
    v18 = v13;
    v14 = v13;
    v15 = v12;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v9 = +[MailComposeScene log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1004889BC();
    }
  }
}

void sub_10010D124(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MailComposeScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100488A00();
  }
}

void sub_10010D328(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD088;
  qword_1006DD088 = v1;
}

BOOL sub_10010D904(id a1, NSUserActivity *a2)
{
  v2 = [(NSUserActivity *)a2 activityType];
  v3 = [v2 isEqualToString:MSMailActivityHandoffTypeDisplayMessage];

  return v3;
}

void sub_10010DAB0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_10010DBCC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10010E29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10010E364(uint64_t a1)
{
  v2 = [MFActiveDraft alloc];
  v6 = [*(a1 + 40) autosaveIdentifier];
  v3 = [*(a1 + 40) originalMessageObjectID];
  v4 = [(MFActiveDraft *)v2 initWithIdentifier:v6 andOriginalMessageIdentifier:v3];
  v5 = [*(a1 + 32) session];
  [v5 mf_setActiveDraft:v4];
}

void sub_10010E410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

Class sub_10010F110(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1006DD0A0)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10010F338;
    v7[4] = &unk_10064C4F8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    qword_1006DD0A0 = _sl_dlopen();
  }

  if (!qword_1006DD0A0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MailConversationScene.m" lineNumber:43 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MailConversationScene.m" lineNumber:44 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1006DD098 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10010F338()
{
  result = _sl_dlopen();
  qword_1006DD0A0 = result;
  return result;
}

void sub_100110E08(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

id *sub_10011116C(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _displayError:result[5] forAccount:result[6] mode:result[7]];
  }

  return result;
}

void sub_1001112E8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"MailChangeSetErrorKey"];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [v2 objectForKey:{@"MailChangeSetAccountKey", 0}];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) displayError:v3 forAccount:*(*(&v8 + 1) + 8 * v7) mode:2];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001115D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001116E4;
    v8[3] = &unk_10064C6B0;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v7 = +[EFScheduler mainThreadScheduler];
    [v7 performBlock:v8];
  }
}

void sub_10011241C(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

void sub_1001127B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100112CB4(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1001141FC(id a1)
{
  v2 = +[NSUserDefaults em_userDefaults];
  v1 = +[NSDate date];
  [v2 setObject:v1 forKey:EMUserDefaultLastMailAppLaunchTime];
}

void sub_1001149F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  objc_destroyWeak((v30 + 32));

  objc_destroyWeak((v33 - 144));
  _Unwind_Resume(a1);
}

void sub_100114C48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 ef_isCancelledError] & 1) == 0)
  {
    [*(a1 + 32) selectDefaultMailbox];
  }
}

void sub_100114CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 ef_isCancelledError];

  if ((v5 & 1) == 0)
  {
    v6 = +[MailMainScene log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100488B9C();
    }

    v7 = [WeakRetained activationState];
    v8 = [WeakRetained splitViewController];
    v9 = [v8 hasFinishedInitialLayout];

    v10 = [WeakRetained splitViewController];
    if (v9)
    {
      [v10 showMessageListViewController:1 animated:v7 != 2 completion:0];
    }

    else
    {
      [v10 restorePrimaryNavigationState:1];
    }

    v11 = [WeakRetained splitViewController];
    [v11 setFocusedViewController:*(a1 + 32)];
  }
}

void sub_100114DF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateNavigationBarTitles];
  }
}

void sub_100114E5C(uint64_t a1)
{
  v2 = +[MSAutosave autosave];
  v3 = [v2 hasAutosavedMessageWithIdentifier:*(a1 + 32)];

  v4 = +[MailMainScene log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) ef_publicDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is still a valid draft.", &v10, 0xCu);
    }

    [*(a1 + 48) finishWithResult:*(a1 + 32)];
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 40) ef_publicDescription];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is no longer a valid draft.", &v10, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = [NSError em_internalErrorWithReason:@"invalid draft ID"];
    [v8 finishWithError:v9];
  }
}

void sub_100115008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MailMainScene log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) ef_publicDescription];
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Restoring draft: %{public}@", buf, 0xCu);
  }

  v6 = [_MFMailCompositionContext alloc];
  v7 = [*(a1 + 40) daemonInterface];
  v8 = [v7 messageRepository];
  v9 = [v6 initRecoveredAutosavedMessageWithIdentifier:v3 draftSubject:0 messageRepository:v8 originalMessageObjectID:*(a1 + 48)];

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100115208;
  v12[3] = &unk_10064C7E8;
  v13 = *(a1 + 32);
  [v10 _showComposeWithContext:v9 animated:0 initialTitle:0 presentationSource:0 draftOriginalMessageID:v11 completionBlock:v12];
}

void sub_100115208(uint64_t a1)
{
  v2 = +[MailMainScene log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) ef_publicDescription];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Restored presented draft: %{public}@", &v4, 0xCu);
  }
}

void sub_1001152E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained session];
  [v1 mf_setActiveDraft:0];
}

void sub_10011535C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDraftRestorationFuture:0];
}

void sub_100115C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19)
{
  _Block_object_dispose((v25 - 184), 8);

  objc_destroyWeak((v25 - 120));
  objc_destroyWeak((v25 - 112));

  _Unwind_Resume(a1);
}

void sub_100115ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCurrentMessageDisplayRequest:0];
}

id sub_100115F54(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100116008;
  v7[3] = &unk_10064CEC0;
  v8 = a2;
  v4 = v8;
  v5 = [a3 ef_any:v7];

  return v5;
}

id sub_100116024(uint64_t a1)
{
  [*(a1 + 32) setDisplayMessageOnReload:*(a1 + 40)];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 viewControllers];
  v4 = [*(a1 + 32) messageListViewController];
  if (![v3 containsObject:v4])
  {

    goto LABEL_5;
  }

  v5 = +[UIDevice mf_isPadIdiom];

  if (v5)
  {
LABEL_5:
    v6 = [*(a1 + 32) messageListViewController];
    [v6 setDisableAutoSelectionOfInitialMessage:1];

    if (*(a1 + 72) == 1)
    {
      v7 = [*(a1 + 32) favoriteItemSelectionTarget];
      [v7 selectCombinedInboxWithSourceType:*(a1 + 64) item:0 animated:0];
      v8 = v7;
    }

    else
    {
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 mailboxProvider];
      v11 = [*(a1 + 48) objectID];
      v8 = [v10 legacyMailboxForObjectID:v11];

      v12 = [*(a1 + 32) favoriteItemSelectionTarget];
      [v12 selectMailbox:v8 item:0 animated:0];
    }
  }

  v13 = *(a1 + 56);

  return [v13 didBeginProcessingRequest];
}