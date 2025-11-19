void sub_1000021BC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100002438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000245C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F0AC(v7, v8);
    }

    v9 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v14 = kBKCollectionMinUserCollectionSortOrder;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 sortOrder] >= v14)
          {
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v9 = [v8 sortedArrayUsingComparator:&stru_1000313C8];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000026D4;
  v18[3] = &unk_1000313F0;
  objc_copyWeak(&v20, (a1 + 32));
  v19 = v9;
  v17 = v9;
  dispatch_async(&_dispatch_main_q, v18);

  objc_destroyWeak(&v20);
}

int64_t sub_10000267C(id a1, BCMutableCollectionDetail *a2, BCMutableCollectionDetail *a3)
{
  v4 = a3;
  v5 = [(BCMutableCollectionDetail *)a2 sortOrder];
  v6 = [(BCMutableCollectionDetail *)v4 sortOrder];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

void sub_1000026D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCollectionDetailsCache:v2];

  objc_opt_class();
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 view];
  v6 = BUDynamicCast();

  [v6 reloadData];
}

void sub_100002A48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return;
  }

  v9 = *(a1 + 32);
  if ([*(a1 + 40) isAudiobook])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = +[BAEventReporter sharedReporter];
  v5 = [v4 seriesTypeForContentID:v9];

  v6 = *(*(a1 + 40) + 8);
  v7 = +[BAEventReporter sharedReporter];
  [v7 emitAddToCollectionEventWithTracker:*(a1 + 48) collectionID:*(a1 + 56) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitWantListAddEventWithTracker:*(a1 + 48) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];
LABEL_10:

    goto LABEL_11;
  }

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];
    goto LABEL_10;
  }

LABEL_11:
}

void sub_10000377C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [v3 name];
  if (v6)
  {
    v7 = [v3 name];
    v9 = v7;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 enqueueValueCall:v5 arguments:v8 file:@"PPXJSALibraryManager.m" line:129];
  }

  else
  {
    [v4 enqueueValueCall:v5 arguments:0 file:@"PPXJSALibraryManager.m" line:129];
  }
}

void sub_100003D84(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003E30;
    v3[3] = &unk_100031528;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v3);
  }
}

id sub_100003E30(uint64_t a1)
{
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitRemoveFromCollectionEventWithTracker:*(a1 + 32) collectionID:kBKCollectionDefaultIDWantToRead contentID:*(a1 + 40) contentAcquisitionType:1 contentType:0 supplementalContentCount:0 seriesType:0 productionType:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [PPXBookDataStoreServices _analyticsSubmitRemoveFromWantListEventWithTracker:v3 contentID:v4];
}

void sub_100003F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004040;
    block[3] = &unk_100031578;
    v6 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100004040(uint64_t a1)
{
  v4 = [*(a1 + 48) _contentDataForContentID:*(a1 + 32) tracker:*(a1 + 40)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitAddToCollectionEventWithTracker:*(a1 + 40) collectionID:kBKCollectionDefaultIDWantToRead contentData:v4];

  v3 = +[BAEventReporter sharedReporter];
  [v3 emitWantListAddEventWithTracker:*(a1 + 40) contentData:v4];
}

void sub_1000041A0(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_100004330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 56) == 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000043F0;
      block[3] = &unk_100031578;
      v6 = *(a1 + 48);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_1000043F0(uint64_t a1)
{
  v3 = [*(a1 + 48) _contentDataForContentID:*(a1 + 32) tracker:*(a1 + 40)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitMarkAsFinishedEventWithTracker:*(a1 + 40) contentData:v3 markedData:0];
}

void sub_100004544(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 isFinished];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6);
  }
}

void sub_1000048C0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100038788;
  qword_100038788 = v1;
}

void sub_100004968(id a1)
{
  v1 = objc_alloc_init(PPXProductPageContext);
  v2 = qword_100038790;
  qword_100038790 = v1;
}

void sub_100004A08(id a1)
{
  v1 = objc_alloc_init(PPXProductPageActions);
  v2 = qword_1000387A0;
  qword_1000387A0 = v1;
}

void sub_100004FFC(id a1, NSString *a2, BLPurchaseResponse *a3, NSError *a4)
{
  v4 = BCProductPageExtensionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Just purchased or redownloaded a book", v5, 2u);
  }
}

void sub_1000051A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  [v4 setAudiobook:*(a1 + 56)];
  if (*(a1 + 48))
  {
    v19[0] = *(a1 + 48);
    v18[0] = @"BATracker";
    v18[1] = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 57)];
    v19[1] = v5;
    v6 = v19;
    v7 = v18;
    v8 = 2;
  }

  else
  {
    v9 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001F254(v9);
    }

    v16 = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 57)];
    v17 = v5;
    v6 = &v17;
    v7 = &v16;
    v8 = 1;
  }

  v10 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];
  [v4 setAnalyticsInfo:v10];

  v11 = +[JSABridge sharedInstance];
  v12 = [v11 windowManager];

  v13 = +[BLDownloadQueue sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000053D8;
  v14[3] = &unk_100031700;
  v15 = *(a1 + 40);
  [v13 purchaseWithRequest:v4 uiManager:v12 completion:v14];
}

void sub_1000053D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = BSUIGetLibraryItemStateUpdater();
    [v5 updateStateToPurchaseFailedForIdentifier:*(a1 + 32)];
  }
}

void sub_1000057A0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100005D08(id a1)
{
  v1 = objc_alloc_init(PPXBLDownloadController);
  v2 = qword_1000387B0;
  qword_1000387B0 = v1;
}

void sub_100006050(id a1, PPXBLDownloadAsset *a2)
{
  v2 = a2;
  v3 = [(PPXBLDownloadAsset *)v2 downloadStatus];
  v4 = [v3 downloadID];
  if ([v4 length])
  {
    v5 = +[BLDownloadQueue sharedInstance];
    [v5 cancelDownloadWithID:v4 withCompletion:0];

    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PPXBLDownloadAsset *)v2 identifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "download canceled %@, downloadID=%{public}@", &v8, 0x16u);
    }
  }
}

void sub_1000067C0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        v7 = [*(a1 + 40) _updateDownloadingAssets:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000069FC(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v36;
    *&v4 = 138543362;
    v31 = v4;
    v32 = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 bk_assetIdentifier];
        if ([v9 length])
        {
          v10 = [*(a1 + 40) downloadingAssets];
          v11 = [v10 objectForKeyedSubscript:v9];

          if (v11)
          {
            [v11 setDownloadStatus:v8];
            if ([v8 downloadPhase] != 3)
            {
              if (([v11 isAudiobook]& 1) != 0)
              {
                v12 = [v11 parent];
                if (!v12)
                {
                  goto LABEL_28;
                }

                v16 = BCBookDownloadLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v11 identifier];
                  v18 = [v11 downloadID];
                  *buf = 138412546;
                  v40 = v17;
                  v41 = 2114;
                  v42 = v18;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "download completed audiobook child identifier=%@, downloadID=%{public}@", buf, 0x16u);
                }

                v19 = [*(a1 + 40) downloadingAssets];
                v20 = [v11 identifier];
                [v19 removeObjectForKey:v20];

                [v11 removeFromParent];
                v21 = [v12 children];
                v22 = [v21 count];

                if (!v22)
                {
                  v23 = BCBookDownloadLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    v24 = [v12 identifier];
                    *buf = v31;
                    v40 = v24;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "download completed audiobook parent identifier=%{public}@", buf, 0xCu);
                  }

                  v25 = [*(a1 + 40) downloadingAssets];
                  v26 = [v12 identifier];
                  [v25 removeObjectForKey:v26];
                }
              }

              else
              {
                v27 = BCBookDownloadLog();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v11 identifier];
                  v29 = [v11 downloadID];
                  *buf = 138412546;
                  v40 = v28;
                  v41 = 2114;
                  v42 = v29;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "download completed identifier=%@, downloadID=%{public}@", buf, 0x16u);
                }

                v12 = [*(a1 + 40) downloadingAssets];
                v30 = [v11 identifier];
                [v12 removeObjectForKey:v30];
              }

              v2 = v32;
              goto LABEL_28;
            }

            v12 = BCBookDownloadLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 downloadID];
              *buf = 138412546;
              v40 = v9;
              v41 = 2114;
              v42 = v13;
              v14 = v12;
              v15 = "completed asset was paused: %@, downloadID:%{public}@";
              goto LABEL_15;
            }
          }

          else
          {
            v12 = BCBookDownloadLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 downloadID];
              *buf = 138412546;
              v40 = v9;
              v41 = 2114;
              v42 = v13;
              v14 = v12;
              v15 = "download completed untracked identifier=%@, downloadID=%{public}@";
LABEL_15:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
            }
          }

LABEL_28:

          goto LABEL_29;
        }

        v11 = BCBookDownloadLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10001F45C(&v33, v34, v11);
        }

LABEL_29:
      }

      v5 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v5);
  }
}

uint64_t sub_100006F2C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v8)
  {
    sub_100007FFC(v7);
    v4 = 0;
  }

  else
  {
    sub_100008050(v7, v9);
    sub_100007FB8(v9, v10);
    v5 = sub_10001F89C();
    if (v5 == 2 || (v5 & 1) == 0)
    {
      sub_100007FB8(v9, v10);
      v4 = sub_10001F8FC();
    }

    else
    {
      v4 = 0;
    }

    sub_100007F6C(v9);
  }

  return v4 & 1;
}

uint64_t sub_10000700C()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_1000070A4, v3, v2);
}

uint64_t sub_1000070A4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v5 = objc_opt_self();
    v6 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v7 = sub_10001FE1C();

    [v5 addStoreIDToWantToRead:v7 tracker:*(v4 + 80)];

    v8 = *(v4 + 128);
    v9 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v10 = sub_10001FE1C();

    [v8 updateWantToReadState:1 identifier:v10];

    v11 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v12 = sub_10001FE1C();

    [v8 updateItemOfInterestForItemIdentifier:v12];

    sub_100007F6C((v0 + 64));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100007268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_10001F74C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000072F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10000700C();
}

uint64_t sub_100007384()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1000074B8()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_100007500@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.addToWantToRead(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t variable initialization expression of PPXContextMenuProvider.swipeActionItems()
{
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000281C0;
  v1 = type metadata accessor for PPXMarkedAsFinishedActionItem();
  v2 = sub_100007AB8(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for PPXMarkedAsStillReadingActionItem();
  v4 = sub_100007AB8(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem();
  v6 = sub_100007AB8(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem);
  *(v0 + 64) = ActionItem;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for PPXRemoveFromWantToReadActionItem();
  v8 = sub_100007AB8(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_100007778(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for PPXAddToWantToReadActionItem()
{
  result = qword_1000377B0;
  if (!qword_1000377B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t variable initialization expression of PPXContextMenuProvider.actionItems()
{
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000281D0;
  v1 = type metadata accessor for PPXAddToCollectionActionItem();
  v2 = sub_100007AB8(&qword_100037670, type metadata accessor for PPXAddToCollectionActionItem);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem();
  v4 = sub_100007AB8(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem);
  *(v0 + 48) = ActionItem;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for PPXDownloadActionItem();
  v6 = sub_100007AB8(&qword_100037678, type metadata accessor for PPXDownloadActionItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for PPXDislikeActionItem();
  v8 = sub_100007AB8(&qword_100037680, type metadata accessor for PPXDislikeActionItem);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 96) = sub_10001F5CC();
  *(v0 + 104) = &protocol witness table for LikeActionItem;
  v9 = type metadata accessor for PPXMarkedAsFinishedActionItem();
  v10 = sub_100007AB8(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem);
  *(v0 + 112) = v9;
  *(v0 + 120) = v10;
  v11 = type metadata accessor for PPXMarkedAsStillReadingActionItem();
  v12 = sub_100007AB8(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem);
  *(v0 + 128) = v11;
  *(v0 + 136) = v12;
  *(v0 + 144) = sub_10001F86C();
  *(v0 + 152) = &protocol witness table for RateAndReviewActionItem;
  v13 = type metadata accessor for PPXRemoveDownloadActionItem();
  v14 = sub_100007AB8(&qword_100037688, type metadata accessor for PPXRemoveDownloadActionItem);
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  v15 = type metadata accessor for PPXRemoveFromWantToReadActionItem();
  v16 = sub_100007AB8(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem);
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  *(v0 + 192) = sub_10001F61C();
  *(v0 + 200) = &protocol witness table for ShareActionItem;
  return v0;
}

uint64_t sub_100007AB8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100007B00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007B10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007B30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_100037750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100037750);
    }
  }
}

uint64_t sub_100007BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007C7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100007D20()
{
  sub_100007EAC(319, &qword_1000377C0);
  if (v0 <= 0x3F)
  {
    sub_100007EAC(319, &qword_1000377C8);
    if (v1 <= 0x3F)
    {
      sub_100007E54();
      if (v2 <= 0x3F)
      {
        sub_100007EAC(319, &qword_1000377D8);
        if (v3 <= 0x3F)
        {
          sub_100007EAC(319, &unk_1000377E0);
          if (v4 <= 0x3F)
          {
            sub_10001F74C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100007E54()
{
  if (!qword_1000377D0)
  {
    sub_10001FAAC();
    v0 = sub_10002000C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000377D0);
    }
  }
}

uint64_t sub_100007EAC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100007F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007F6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100007FB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008050(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static EventReporter.setupLibraryAnalyticsDataProvider()()
{
  sub_10001FA7C();
  sub_1000080B4();
  return sub_10001FA4C();
}

unint64_t sub_1000080B4()
{
  result = qword_100037880;
  if (!qword_100037880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037880);
  }

  return result;
}

void sub_100008108(id a1, SEL a2)
{
  sub_10001FA7C();
  sub_1000080B4();
  sub_10001FA4C();
}

uint64_t sub_100008168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXMarkedAsFinishedActionItem()
{
  result = qword_1000378E0;
  if (!qword_1000378E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008318()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v9)
  {
    sub_100007FFC(v8);
    v4 = 0;
  }

  else
  {
    sub_100008050(v8, v10);
    sub_100007FB8(v10, v11);
    v5 = sub_10001F8FC();
    if (v5 == 2 || (v5 & 1) == 0)
    {
      v4 = 0;
    }

    else
    {
      sub_100007FB8(v10, v11);
      v6 = sub_10001F8AC();
      if (v6 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = v6 ^ 1;
      }
    }

    sub_100007F6C(v10);
  }

  return v4 & 1;
}

uint64_t sub_100008404()
{
  v1[13] = v0;
  v2 = sub_10001FA8C();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = *(*(sub_100007778(&qword_100037928, &qword_1000288B0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_10001FA0C();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v9 = sub_10001FA9C();
  v1[21] = v9;
  v10 = *(v9 - 8);
  v1[22] = v10;
  v11 = *(v10 + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_10001FF2C();
  v1[24] = sub_10001FF1C();
  v13 = sub_10001FF0C();

  return _swift_task_switch(sub_1000085E8, v13, v12);
}

uint64_t sub_1000085E8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v38 = v6;
    v39 = v5;
    v35 = v7;
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v37 = v8;
    v40 = *(v0 + 136);
    v41 = *(v0 + 128);
    v10 = *(v0 + 112);
    v43 = *(v0 + 120);
    v36 = v10;
    v42 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    (*(v5 + 104))(v4, enum case for ContentAcquisitionType.storeBought(_:), v6);
    v11 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v12 = sub_10001F78C();
    v13 = &enum case for ContentType.audiobook(_:);
    if ((v12 & 1) == 0)
    {
      v13 = &enum case for ContentType.book(_:);
    }

    (*(v9 + 104))(v7, *v13, v8);
    v14 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8CC();
    sub_10001FFFC();
    sub_10001FA7C();
    v15 = sub_10001FA6C();
    v16 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    sub_10001FA5C();

    (*(v43 + 104))(v41, enum case for ProductionType.unknown(_:), v10);
    v34 = sub_10001FA6C();
    v17 = *(v42 + 80);
    sub_10001FE2C();
    v18 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v33 = v40;
    sub_10001FA2C();

    v19 = sub_10001FA6C();
    v20 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    LOBYTE(v33) = 2;
    sub_10001FA1C();

    v21 = objc_opt_self();
    v22 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v23 = sub_10001FE1C();

    [v21 setFinishedState:1 storeID:v23 tracker:{v17, v33, v41}];

    v24 = *(v42 + 128);
    v25 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v26 = sub_10001FE1C();

    [v24 updateItemOfInterestForItemIdentifier:v26];

    (*(v43 + 8))(v41, v36);
    sub_100008C3C(v40);
    (*(v9 + 8))(v35, v37);
    (*(v39 + 8))(v4, v38);
    sub_100007F6C((v0 + 64));
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 160);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100008A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100008404();
}

uint64_t sub_100008B24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.markAsFinished(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t sub_100008C3C(uint64_t a1)
{
  v2 = sub_100007778(&qword_100037928, &qword_1000288B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100008D24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager] = 0;
  v6 = &v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph] = sub_10000D200();
  if (a2)
  {
    v8 = sub_10001FE1C();
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = v3;
  v22.super_class = type metadata accessor for ProductPageRootViewController();
  v9 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", v8, a3);

  v10 = *&v9[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph];
  type metadata accessor for FallbackSceneSessionProvider();
  v11 = v9;

  sub_10001FD7C();

  swift_unknownObjectWeakAssign();
  v12 = v11;

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v12 selector:"_smartInvertDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  [v12 setOverrideUserInterfaceStyle:v15];

  v16 = objc_allocWithZone(TUISyncLayoutController);
  v17 = v12;
  v18 = [v16 initWithDelegate:v17];
  v19 = *&v17[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController];
  *&v17[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController] = v18;

  v20 = [v13 defaultCenter];
  [v20 addObserver:v17 selector:"_bridgeDidReload:" name:JSABridgeDidReloadNotification object:0];

  return v17;
}

void sub_100009058()
{
  v1 = v0;
  v2 = sub_10001FBEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductPageRootViewController();
  v27.receiver = v1;
  v27.super_class = v7;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v8 = [objc_opt_self() bu_groupUserDefaults];
  v9 = sub_10001FE1C();
  v10 = [v8 stringForKey:v9];

  if (v10)
  {
    v11 = sub_10001FE2C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (BCProductPageExtensionLog())
  {
    sub_10001FBFC();

    v14 = sub_10001FBCC();
    v15 = sub_10001FF5C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[2] = v13;
      v26 = v17;
      *v16 = 136315138;
      v25[1] = v11;
      sub_100007778(&qword_100037F38, &unk_100028600);
      v18 = sub_10001FE5C();
      v20 = sub_100012510(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "viewDidLoad - bootUrl: %s", v16, 0xCu);
      sub_100007F6C(v17);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    [sub_10001FA7C() setupLibraryAnalyticsDataProvider];
    v21 = objc_allocWithZone(sub_10001FCCC());
    v22 = sub_10001FC9C();
    v23 = *&v1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager];
    *&v1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager] = v22;
    v24 = v22;

    if (v24)
    {
      sub_10001FC8C();
    }

    sub_10000D8E4();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000943C(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ProductPageRootViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  [v9 *a5];
}

void sub_1000094AC(char a1)
{
  v2 = v1;
  v4 = sub_10001FBEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductPageRootViewController();
  v19.receiver = v2;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "viewDidDisappear:", a1 & 1);
  if (BCProductPageExtensionLog())
  {
    sub_10001FBFC();
    v10 = sub_10001FBCC();
    v11 = sub_10001FF5C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "viewDidDisappear", v12, 2u);
    }

    (*(v5 + 8))(v8, v4);
    [v2 bc_analyticsVisibilitySubtreeDidDisappear];
    v13 = [objc_opt_self() processInfo];
    v14 = sub_10001FE1C();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = sub_10000F2C4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000138F8;
    aBlock[3] = &unk_100031B68;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    [v13 performExpiringActivityWithReason:v14 usingBlock:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000972C(char a1, uint64_t a2)
{
  v4 = sub_10001FBEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (BCProductPageExtensionLog())
    {
      sub_10001FBFC();
      v9 = sub_10001FBCC();
      v10 = sub_10001FF6C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Process is about to be suspended. Upload metrics might have failed.", v11, 2u);
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager;
    v13 = *(a2 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager);
    if (v13)
    {
      v14 = v13;
      sub_10001FC6C();
    }

    [objc_opt_self() willTerminate];
    v15 = *(a2 + v12);
    if (v15)
    {
      v18 = v15;
      sub_10001FCAC();
      v16 = v18;
    }
  }
}

id sub_1000099D0()
{
  v1 = v0;
  v2 = sub_10001FBEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BCProductPageExtensionLog();
  if (result)
  {
    sub_10001FBFC();
    v8 = sub_10001FBCC();
    v9 = sub_10001FF5C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "dealloc", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v11 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification;
    swift_beginAccess();
    sub_10000F25C(v1 + v11, &v18, &unk_100037EE0, &qword_1000285A8);
    if (v19)
    {
      sub_10000CDF8(&v18, v20);
      v12 = [objc_opt_self() defaultCenter];
      sub_100007FB8(v20, v21);
      [v12 removeObserver:sub_10002013C()];

      swift_unknownObjectRelease();
      sub_100007F6C(v20);
    }

    else
    {
      sub_10000F1FC(&v18, &unk_100037EE0, &qword_1000285A8);
    }

    v13 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification;
    swift_beginAccess();
    sub_10000F25C(v1 + v13, &v18, &unk_100037EE0, &qword_1000285A8);
    if (v19)
    {
      sub_10000CDF8(&v18, v20);
      v14 = [objc_opt_self() defaultCenter];
      sub_100007FB8(v20, v21);
      [v14 removeObserver:sub_10002013C()];

      swift_unknownObjectRelease();
      sub_100007F6C(v20);
    }

    else
    {
      sub_10000F1FC(&v18, &unk_100037EE0, &qword_1000285A8);
    }

    v15 = [objc_opt_self() defaultCenter];
    [v15 removeObserver:v1 name:JSABridgeDidReloadNotification object:0];

    v16 = type metadata accessor for ProductPageRootViewController();
    v17.receiver = v1;
    v17.super_class = v16;
    return objc_msgSendSuper2(&v17, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100009E50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001FBEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = [objc_opt_self() sharedProvider];
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v3 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 window];

  [v12 setWindow:v15];
  v16 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem] = a1;
  v17 = a1;

  if (!BCProductPageExtensionLog())
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_10001FBFC();
  v18 = sub_10001FBCC();
  v19 = sub_10001FF5C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting the javaScript", v20, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v21 = [v3 view];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v21 window];

  if (v23)
  {
    sub_10000DE2C(v17, a2);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10000A184(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    sub_100007778(&qword_100037DF8, &qword_100028528);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7975426F546B7361;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = a4 & 1;
    *(inited + 72) = &type metadata for Bool;
    strcpy((inited + 80), "promptString");
    *(inited + 16) = xmmword_1000283F0;
    *(inited + 120) = &type metadata for String;
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = a2;
    *(inited + 104) = a3;

    v10 = sub_10000E610(inited);
    swift_setDeallocating();
    sub_100007778(&qword_100037ED0, &qword_100028598);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007778(&qword_100037DF8, &qword_100028528);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100028400;
    *(v11 + 32) = 0x7975426F546B7361;
    v12 = v11 + 32;
    *(v11 + 40) = 0xE800000000000000;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = a4 & 1;
    v10 = sub_10000E610(v11);
    swift_setDeallocating();
    sub_10000F1FC(v12, &qword_100037ED0, &qword_100028598);
  }

  v13 = *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData);
  *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData) = v10;

  sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
  v14 = [swift_getObjCClassFromMetadata() appearance];
  v15 = [objc_opt_self() bc_booksKeyColor];
  [v14 setTintColor:v15];

  v16 = *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem);
  *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem) = a1;
  v17 = a1;

  if (a4)
  {
    sub_10000A3C8();
  }
}

uint64_t sub_10000A3C8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = kJSAParentalApprovalApprovedRequestNotificationName;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_10000EFF0;
  v24 = v7;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000C580;
  ObjectType = &unk_1000319D8;
  v8 = _Block_copy(&aBlock);

  v9 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);

  ObjectType = swift_getObjectType();
  aBlock = v9;
  v10 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification;
  swift_beginAccess();
  sub_10000F010(&aBlock, v0 + v10);
  swift_endAccess();
  v11 = [v1 defaultCenter];
  v12 = kJSAParentalApprovalDeclinedRequestNotificationName;
  v13 = [v4 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_10000F080;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000C580;
  ObjectType = &unk_100031A00;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  ObjectType = swift_getObjectType();
  aBlock = v16;
  v17 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification;
  swift_beginAccess();
  sub_10000F010(&aBlock, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_10000A798(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v40 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000F25C(*(a1 + 56) + 32 * v11, v38, &unk_100037EE0, &qword_1000285A8);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_10000F25C(&v35, &v28, &unk_100037EE0, &qword_1000285A8);
    if (!v29)
    {

      sub_10000F1FC(&v34, &qword_100037F20, &qword_1000285E8);
      result = sub_10000F1FC(&v28, &unk_100037EE0, &qword_1000285A8);
      v1 = v40;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_10000CDF8(&v28, v33);
    v31 = v34;
    v32[0] = v35;
    v32[1] = v36;
    sub_10000CDF8(v33, v30);
    v1 = v40;
    v15 = v40[2];
    if (v40[3] <= v15)
    {

      sub_10001BDA8(v15 + 1, 1);
      v1 = v39;
    }

    else
    {
    }

    v16 = v31;
    v17 = v1[5];
    sub_10002018C();
    sub_10001FE7C();
    result = sub_10002019C();
    v18 = (v1 + 8);
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~v1[(v20 >> 6) + 8]) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~v1[(v20 >> 6) + 8])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    *(v1[6] + 16 * v22) = v16;
    sub_10000CDF8(v30, (v1[7] + 32 * v22));
    ++v1[2];
    result = sub_10000F1FC(v32, &unk_100037EE0, &qword_1000285A8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v40 = v1;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *&v18[8 * v21];
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_10000AABC(void *a1, void *a2, void *a3)
{
  v6 = sub_10001FCDC();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001FD0C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 currentPackage];
  if (result)
  {
    v15 = result;
    [a1 registerTemplateBundlesFromPackage:result];

    sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
    v16 = sub_10001FF9C();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    aBlock[4] = sub_10000F1AC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F3A0;
    aBlock[3] = &unk_100031AA0;
    v18 = _Block_copy(aBlock);
    v19 = a3;

    sub_10001FCEC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007778(&qword_100037DB0, &qword_100028508);
    sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
    sub_10002001C();
    sub_10001FFAC();
    _Block_release(v18);

    (*(v21 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000ADE0(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions])
  {
    v2 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions];

    sub_10000B4B0(v3);

    v4.super.isa = sub_10001FDDC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [objc_allocWithZone(PPXFeedViewController) initWithOptions:v4.super.isa];

  if (!v5)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = [a1 navigationItem];
  v7 = [v6 leftBarButtonItem];

  if (v7)
  {
    sub_100007778(&qword_100037DC0, &qword_100028510);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100028410;
    *(v8 + 32) = v7;
    sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
    v9 = v5;
    v10 = v7;
    isa = sub_10001FECC().super.isa;

    [v9 setExtraLeftItems:isa];
  }

  v12 = [a1 navigationItem];
  v13 = [v12 rightBarButtonItem];

  if (v13)
  {
    sub_100007778(&qword_100037DC0, &qword_100028510);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100028410;
    *(v14 + 32) = v13;
    sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
    v15 = v5;
    v16 = v13;
    v17 = sub_10001FECC().super.isa;

    [v15 setExtraRightItems:v17];
  }

  v18 = objc_allocWithZone(UINavigationController);
  v19 = v5;
  v20 = [v18 initWithRootViewController:v19];
  v21 = [objc_opt_self() sharedContext];
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  v23 = v20;
  [v22 setNavigationController:v23];

  v24 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController];
  *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController] = v20;

  v25 = v23;
  [a1 addChildViewController:v25];
  v26 = [v19 view];
  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [a1 view];
  if (!v28)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = v28;
  [v28 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v27 setFrame:{v31, v33, v35, v37}];
  v38 = [v19 view];

  if (!v38)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v38 setAutoresizingMask:18];

  v39 = [v25 view];
  if (!v39)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = [a1 view];
  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  [v40 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [v39 setFrame:{v43, v45, v47, v49}];
  v50 = [a1 view];
  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v50;
  v52 = [v25 view];

  if (!v52)
  {
LABEL_32:
    __break(1u);
    return;
  }

  [v51 addSubview:v52];

  [v25 didMoveToParentViewController:a1];
  v53 = [objc_allocWithZone(PPXWelcomeGDPRItem) init];
  if ([v53 welcomeScreenShouldShow])
  {
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = (v54 + 16);
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v53;
    v64[4] = sub_10000F1F4;
    v64[5] = v56;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 1107296256;
    v64[2] = sub_10000B7E4;
    v64[3] = &unk_100031B18;
    v57 = _Block_copy(v64);

    v58 = v53;

    v59 = [v58 welcomeScreenViewControllerWithCompletion:v57];
    _Block_release(v57);
    if (v59)
    {
      swift_beginAccess();
      v60 = *v55;
      *v55 = v59;
      v61 = v59;

      [v61 setModalPresentationStyle:2];
      [v61 setModalTransitionStyle:2];
      v62 = [v61 presentationController];
      if (v62)
      {
        v63 = v62;
        [v62 setDelegate:a1];
      }

      [v25 presentViewController:v61 animated:1 completion:0];
    }

    else
    {
    }
  }

  [a1 loadDidFinish];
}

uint64_t sub_10000B4B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007778(&qword_100037DD8, &qword_100028518);
    v2 = sub_10002011C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000CD9C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000CDF8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000CDF8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000CDF8(v31, v32);
    result = sub_10002003C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000CDF8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_10000B778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  return [a4 welcomeScreenViewControllerDidDismiss];
}

uint64_t sub_10000B7E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_10001FE2C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

uint64_t sub_10000B864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000B964()
{
  v1 = v0;
  v2 = sub_10001FCDC();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001FD0C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  [v10 resetForJavascript];

  sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
  v11 = sub_10001FF9C();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_10000CD94;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F3A0;
  aBlock[3] = &unk_1000319B0;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_10001FCEC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007778(&qword_100037DB0, &qword_100028508);
  sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
  sub_10002001C();
  sub_10001FFAC();
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v16);
}

void sub_10000BC78(char *a1)
{
  isa = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions];
  if (isa)
  {
    v3 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions];

    sub_10000B4B0(v4);

    isa = sub_10001FDDC().super.isa;
  }

  v23 = [objc_allocWithZone(PPXFeedViewController) initWithOptions:isa];

  if (v23)
  {
    v5 = [a1 navigationItem];
    v6 = [v5 leftBarButtonItem];

    if (v6)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100028410;
      *(v7 + 32) = v6;
      sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
      v8 = v23;
      v9 = v6;
      v10 = sub_10001FECC().super.isa;

      [v8 setExtraLeftItems:v10];
    }

    v11 = [a1 navigationItem];
    v12 = [v11 rightBarButtonItem];

    if (v12)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100028410;
      *(v13 + 32) = v12;
      sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
      v14 = v23;
      v15 = v12;
      v16 = sub_10001FECC().super.isa;

      [v14 setExtraRightItems:v16];
    }

    v17 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController];
    v18 = v23;
    if (v17)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100028410;
      *(v19 + 32) = v23;
      sub_10000F0A0(0, &qword_100037DC8, UIViewController_ptr);
      v20 = v23;
      v21 = v17;
      v22 = sub_10001FECC().super.isa;

      [v21 setViewControllers:v22];

      v18 = v23;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10000C0B8()
{
  v1 = v0;
  v2 = sub_10001FCDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FD0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    return [v1 setOverrideUserInterfaceStyle:v12];
  }

  else
  {
    sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
    v18 = v7;
    v17 = sub_10001FF9C();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10000CCF4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F3A0;
    aBlock[3] = &unk_100031960;
    v15 = _Block_copy(aBlock);

    sub_10001FCEC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007778(&qword_100037DB0, &qword_100028508);
    sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
    sub_10002001C();
    v16 = v17;
    sub_10001FFAC();
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v18);
  }
}

void sub_10000C404()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    [v1 setOverrideUserInterfaceStyle:v2];
  }
}

uint64_t sub_10000C494(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10001F4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F49C();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000C580(uint64_t a1)
{
  v2 = sub_10001F4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10001F49C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_10000C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong finishWithResult:a3 completion:0];
  }
}

id sub_10000C6DC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(BSUIDownloadProgressCenter) init];
  *a1 = result;
  return result;
}

id sub_10000C718@<X0>(void *a1@<X8>)
{
  result = BSUIGetLibraryItemStateProvider();
  *a1 = result;
  return result;
}

uint64_t sub_10000C748@<X0>(void *a1@<X8>)
{
  sub_10001FDCC();
  sub_10001FDBC();
  type metadata accessor for PPXContextMenuProvider();
  sub_10001FD7C();

  *a1 = v3;
  return result;
}

uint64_t sub_10000C7F0@<X0>(void *a1@<X8>)
{
  v2 = sub_10001F5BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  sub_10001FDCC();
  v10 = sub_10001FDBC();
  sub_10001F5AC();
  v11 = objc_allocWithZone(type metadata accessor for PPXContextMenuProvider());
  (*(v3 + 16))(v7, v9, v2);
  v12 = sub_10000CE08(v7, v10, v11);
  result = (*(v3 + 8))(v9, v2);
  *a1 = v12;
  return result;
}

uint64_t sub_10000C988@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_10001FDCC();
  sub_10001FDBC();
  *(a4 + 24) = a1(0);
  *(a4 + 32) = sub_10000F330(a2, a3);
  sub_10001FD7C();
}

void sub_10000CB78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        v4 = [v3 windowScene];

        if (v4)
        {
          [v4 session];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10000CC3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000CCBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CD14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CD5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000CDF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10000CE08(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10001F5BC();
  v32[3] = v5;
  v32[4] = &protocol witness table for FigaroProvider;
  v6 = sub_10000F2CC(v32);
  (*(*(v5 - 8) + 32))(v6, a1, v5);
  v26 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_swipeActionItems;
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000281C0;
  v28 = type metadata accessor for PPXMarkedAsFinishedActionItem();
  v8 = sub_10000F330(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem);
  *(v7 + 32) = v28;
  *(v7 + 40) = v8;
  v9 = type metadata accessor for PPXMarkedAsStillReadingActionItem();
  v10 = sub_10000F330(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem);
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem();
  v12 = sub_10000F330(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem);
  *(v7 + 64) = ActionItem;
  *(v7 + 72) = v12;
  v13 = type metadata accessor for PPXRemoveFromWantToReadActionItem();
  v14 = sub_10000F330(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem);
  *(v7 + 80) = v13;
  *(v7 + 88) = v14;
  *&a3[v26] = v7;
  v27 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_actionItems;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000281D0;
  v16 = type metadata accessor for PPXAddToCollectionActionItem();
  v17 = sub_10000F330(&qword_100037670, type metadata accessor for PPXAddToCollectionActionItem);
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(v15 + 48) = ActionItem;
  *(v15 + 56) = v12;
  v18 = type metadata accessor for PPXDownloadActionItem();
  v19 = sub_10000F330(&qword_100037678, type metadata accessor for PPXDownloadActionItem);
  *(v15 + 64) = v18;
  *(v15 + 72) = v19;
  v20 = type metadata accessor for PPXDislikeActionItem();
  v21 = sub_10000F330(&qword_100037680, type metadata accessor for PPXDislikeActionItem);
  *(v15 + 80) = v20;
  *(v15 + 88) = v21;
  *(v15 + 96) = sub_10001F5CC();
  *(v15 + 104) = &protocol witness table for LikeActionItem;
  *(v15 + 112) = v28;
  *(v15 + 120) = v8;
  *(v15 + 128) = v9;
  *(v15 + 136) = v10;
  *(v15 + 144) = sub_10001F86C();
  *(v15 + 152) = &protocol witness table for RateAndReviewActionItem;
  v22 = type metadata accessor for PPXRemoveDownloadActionItem();
  v23 = sub_10000F330(&qword_100037688, type metadata accessor for PPXRemoveDownloadActionItem);
  *(v15 + 160) = v22;
  *(v15 + 168) = v23;
  *(v15 + 176) = v13;
  *(v15 + 184) = v14;
  *(v15 + 192) = sub_10001F61C();
  *(v15 + 200) = &protocol witness table for ShareActionItem;
  *&a3[v27] = v15;
  sub_100007F08(v32, &a3[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider]);
  *&a3[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph] = a2;
  v31.receiver = a3;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, "init");
  sub_100007F6C(v32);
  return v24;
}

uint64_t sub_10000D200()
{
  v36 = sub_10001FD6C();
  v34 = *(v36 - 8);
  v0 = *(v34 + 64);
  v1 = __chkstk_darwin(v36);
  v35 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v38 = &v28 - v4;
  v5 = __chkstk_darwin(v3);
  v37 = &v28 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - v14;
  v16 = __chkstk_darwin(v13);
  v39 = &v28 - v17;
  __chkstk_darwin(v16);
  v19 = &v28 - v18;
  sub_10001FDCC();
  v20 = sub_10001FD8C();

  v40 = sub_10001F97C();
  sub_10000F0A0(0, &qword_100037EF8, BSUIDownloadProgressCenter_ptr);
  v33 = v19;
  sub_10001FD4C();
  sub_100007778(&qword_100037EF0, &qword_1000285C0);
  sub_10001FD4C();
  sub_100007778(&qword_100037F40, &qword_100028610);
  v31 = v15;
  sub_10001FD4C();
  type metadata accessor for FallbackSceneSessionProvider();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v21;
  v30 = v12;
  sub_10001FD5C();
  sub_100007778(&qword_100037F48, &unk_100028618);
  v29 = v9;
  sub_10001FD4C();
  sub_100007778(&qword_100037F50, &qword_100028628);
  type metadata accessor for FigaroPageContextProvider();
  v41 = swift_allocObject();
  sub_10001FD5C();
  type metadata accessor for PPXContextMenuProvider();
  sub_10001FD4C();
  sub_100007778(&qword_100037F58, &unk_100028630);
  v22 = v35;
  sub_10001FD4C();
  v32 = v20;

  sub_10001FDAC();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  v23 = v38;
  sub_10001FD9C();

  v28 = sub_10001FD9C();

  v24 = *(v34 + 8);
  v25 = v22;
  v26 = v36;
  v24(v25, v36);
  v24(v23, v26);
  v24(v37, v26);
  v24(v29, v26);
  v24(v30, v26);
  v24(v31, v26);
  v24(v39, v26);
  v24(v33, v26);
  return v28;
}

void sub_10000D7F8()
{
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager) = 0;
  v1 = (v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider) = 0;
  sub_1000200CC();
  __break(1u);
}

void sub_10000D8E4()
{
  v0 = sub_10001F4EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  [v9 setJsBridge:v11];

  sub_10001FC5C();
  v12 = sub_10001FC4C();
  v13 = [v10 sharedInstance];
  sub_10001FC3C();

  sub_10000F0A0(0, &qword_100037E98, BRCConfigurationManager_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v16 = sub_10001FE1C();
  v17 = sub_10001FE1C();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_10001F4DC();

    (*(v1 + 32))(v7, v5, v0);
    v19 = [v8 sharedInstance];
    v20 = BRCBooksDefaultsNamespace;
    sub_10001F4CC(v21);
    v23 = v22;
    [v19 registerNamespace:v20 withDefaults:v22 forBundleID:BRCBundleID];

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000DBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037DD8, &qword_100028518);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, v13, &qword_100037F30, &qword_1000285F8);
      result = sub_10001BBE4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000CDF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037F28, &qword_1000285F0);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v15, &qword_100037F18, &qword_1000285E0);
      v5 = v15;
      v6 = v16;
      result = sub_10001BB6C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000DE2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v60 = a1;
  v4 = sub_100007778(&unk_100038630, &unk_1000285B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  [v10 setDelegate:v3];

  v12 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph];
  sub_100007778(&qword_100037EF0, &qword_1000285C0);
  sub_10001FD7C();
  v13 = v64[0];
  sub_10000F0A0(0, &qword_100037EF8, BSUIDownloadProgressCenter_ptr);
  v59 = v12;
  sub_10001FD7C();
  v14 = v64[0];
  v15 = [objc_opt_self() manager];
  v16 = [v15 dynamicRegistry];
  v17 = [v13 stateCenter];
  v18 = sub_10001FE1C();
  [v16 registerStateProvider:v17 forKind:v18];

  v19 = [v15 dynamicRegistry];
  v20 = v14;
  v21 = sub_10001FE1C();
  [v19 registerProgressProvider:v20 forKind:v21];

  v22 = [objc_opt_self() sharedController];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 startObserving];

  v24 = [objc_opt_self() sharedProvider];
  v25 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider] = v24;

  v26 = [objc_allocWithZone(PPXJSALibraryManager) init];
  v27 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager] = v26;

  v56 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData;
  v57 = v20;
  v28 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData];
  v29 = v61;
  if (!v28 || !*(v28 + 16))
  {
    goto LABEL_10;
  }

  v30 = sub_10001BB6C(0x7975426F546B7361, 0xE800000000000000);
  if ((v31 & 1) == 0)
  {

LABEL_10:
    v55 = sub_10000DBC0(&_swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  sub_10000CD9C(*(v28 + 56) + 32 * v30, v64);

  if ((swift_dynamicCast() & 1) == 0 || (v63 & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = [objc_opt_self() metadataDictionary:0 variationWithNavigationBarVisibile:0];
  v55 = sub_10001FDEC();

LABEL_11:
  v58 = v15;
  sub_100007778(&qword_100037F00, &qword_1000285C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028420;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v34 = [v60 productPageURL];
  if (v34)
  {
    v35 = v34;
    sub_10001F4DC();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_10001F4EC();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v29, v36, 1, v37);
  sub_10000F0E8(v29, v9);
  if ((*(v38 + 48))(v9, 1, v37) == 1)
  {
    sub_10000F1FC(v9, &unk_100038630, &unk_1000285B0);
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v39 = sub_10001F4BC();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v39;
    *(inited + 56) = v40;
    (*(v38 + 8))(v9, v37);
  }

  *(inited + 80) = 0x6574656D61726170;
  *(inited + 88) = 0xEA00000000007372;
  v41 = sub_100007778(&qword_100037F08, &qword_1000285D0);
  *(inited + 96) = v62;
  *(inited + 120) = v41;
  strcpy((inited + 128), "extensionInfo");
  *(inited + 142) = -4864;
  v42 = *&v3[v56];
  if (!v42)
  {
    v41 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v42;
  *(inited + 168) = v41;
  *(inited + 176) = 0x617461646174656DLL;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = sub_100007778(&qword_100037F10, &qword_1000285D8);
  *(inited + 192) = v55;
  *(inited + 224) = sub_10001FE2C();
  *(inited + 232) = v43;
  *(inited + 264) = type metadata accessor for PPXContextMenuProvider();

  sub_10001FD7C();
  v44 = sub_10000DCFC(inited);
  swift_setDeallocating();
  sub_100007778(&qword_100037F18, &qword_1000285E0);
  swift_arrayDestroy();
  v45 = sub_10000A798(v44);

  v46 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions] = v45;

  v47 = [objc_opt_self() sharedInstance];
  v48 = swift_allocObject();
  v49 = v58;
  v48[2] = v58;
  v48[3] = v47;
  v48[4] = v3;
  v64[4] = sub_10000F1A0;
  v64[5] = v48;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 1107296256;
  v64[2] = sub_10000F3A0;
  v64[3] = &unk_100031A50;
  v50 = _Block_copy(v64);
  v51 = v49;
  v52 = v47;
  v53 = v3;

  [v52 initializeEnvironmentWithDataSource:v53 completion:v50];
  swift_unknownObjectRelease();

  _Block_release(v50);
}

unint64_t sub_10000E610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037ED8, &qword_1000285A0);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v13, &qword_100037ED0, &qword_100028598);
      v5 = v13;
      v6 = v14;
      result = sub_10001BB6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CDF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E740()
{
  v57 = sub_10001FF8C();
  v0 = *(v57 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v57);
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001FF7C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10001FD0C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
  v56[0] = "r";
  v56[1] = v8;
  sub_10001FCFC();
  v59 = &_swiftEmptyArrayStorage;
  sub_10000F330(&qword_100037DE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007778(&qword_100037DE8, &qword_100028520);
  sub_10000EF9C(&qword_100037DF0, &qword_100037DE8, &qword_100028520);
  sub_10002001C();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v57);
  v9 = v58;
  v10 = sub_10001FFBC();
  v11 = [objc_allocWithZone(TUITransactionController) initWithQueue:v10];
  sub_100007778(&qword_100037DF8, &qword_100028528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028430;
  result = sub_10001FE2C();
  *(inited + 32) = result;
  *(inited + 40) = v14;
  v15 = *(v9 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager);
  if (v15)
  {
    v16 = v15;
    v17 = sub_10001FCBC();

    *(inited + 72) = sub_10001F9EC();
    *(inited + 48) = v17;
    *(inited + 80) = sub_10001FE2C();
    *(inited + 88) = v18;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0x6F69736E65747865;
    *(inited + 104) = 0xE90000000000006ELL;
    result = sub_10001FE2C();
    *(inited + 128) = result;
    *(inited + 136) = v19;
    v20 = *(v9 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager);
    if (v20)
    {
      *(inited + 168) = sub_10000F0A0(0, &qword_100037E00, &off_100030AE0);
      *(inited + 144) = v20;
      *(inited + 176) = sub_10001FE2C();
      *(inited + 184) = v21;
      v22 = sub_10001FC5C();
      v23 = v20;
      v24 = sub_10001FC4C();
      *(inited + 216) = v22;
      *(inited + 192) = v24;
      *(inited + 224) = sub_10001FE2C();
      *(inited + 232) = v25;
      *(inited + 264) = sub_10000F0A0(0, &qword_100037E08, TUITransactionController_ptr);
      *(inited + 240) = v11;
      *(inited + 272) = sub_10001FE2C();
      *(inited + 280) = v26;
      v27 = sub_10000F0A0(0, &qword_100037E10, BSUIAlertController_ptr);
      *(inited + 312) = sub_100007778(&qword_100037E18, &qword_100028530);
      *(inited + 288) = v27;
      *(inited + 320) = sub_10001FE2C();
      *(inited + 328) = v28;
      v29 = sub_10000F0A0(0, &qword_100037E20, BSUIDynamicArray_ptr);
      *(inited + 360) = sub_100007778(&qword_100037E28, &qword_100028538);
      *(inited + 336) = v29;
      *(inited + 368) = sub_10001FE2C();
      *(inited + 376) = v30;
      v31 = sub_10000F0A0(0, &qword_100037E30, BSUIDynamicValue_ptr);
      *(inited + 408) = sub_100007778(&qword_100037E38, &qword_100028540);
      *(inited + 384) = v31;
      *(inited + 416) = sub_10001FE2C();
      *(inited + 424) = v32;
      v33 = sub_10000F0A0(0, &qword_100037E40, BSUICloudAssetRatingsManager_ptr);
      *(inited + 456) = sub_100007778(&qword_100037E48, &qword_100028548);
      *(inited + 432) = v33;
      *(inited + 464) = sub_10001FE2C();
      *(inited + 472) = v34;
      v35 = *(v9 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph);
      *(inited + 504) = type metadata accessor for PPXContextMenuProvider();
      v36 = v11;
      sub_10001FD7C();
      *(inited + 512) = sub_10001FE2C();
      *(inited + 520) = v37;
      v38 = sub_10000F0A0(0, &qword_100037E50, BSUIFeedDataRequest_ptr);
      *(inited + 552) = sub_100007778(&qword_100037E58, &qword_100028550);
      *(inited + 528) = v38;
      *(inited + 560) = sub_10001FE2C();
      *(inited + 568) = v39;
      v40 = sub_10000F0A0(0, &qword_100037E60, off_100030AD8);
      *(inited + 600) = sub_100007778(&qword_100037E68, &qword_100028558);
      *(inited + 576) = v40;
      *(inited + 608) = sub_10001FE2C();
      *(inited + 616) = v41;
      v42 = sub_10000F0A0(0, &qword_100037E70, BSUINoticeViewController_ptr);
      *(inited + 648) = sub_100007778(&qword_100037E78, &qword_100028560);
      *(inited + 624) = v42;
      *(inited + 656) = sub_10001FE2C();
      *(inited + 664) = v43;
      v44 = sub_10001FC2C();
      *(inited + 696) = sub_100007778(&qword_100037E80, &qword_100028568);
      *(inited + 672) = v44;
      *(inited + 704) = sub_10001FE2C();
      *(inited + 712) = v45;
      v46 = sub_10000F0A0(0, &qword_100037E88, BSUIPurchaseManager_ptr);
      *(inited + 744) = sub_100007778(&qword_100037E90, &qword_100028570);
      *(inited + 720) = v46;
      *(inited + 752) = sub_10001FE2C();
      *(inited + 760) = v47;
      v48 = sub_10000F0A0(0, &qword_100037E98, BRCConfigurationManager_ptr);
      *(inited + 792) = sub_100007778(&qword_100037EA0, &qword_100028578);
      *(inited + 768) = v48;
      *(inited + 800) = sub_10001FE2C();
      *(inited + 808) = v49;
      v50 = sub_10000F0A0(0, &qword_100037EA8, BSUIScreenshotViewController_ptr);
      *(inited + 840) = sub_100007778(&qword_100037EB0, &qword_100028580);
      *(inited + 816) = v50;
      *(inited + 848) = sub_10001FE2C();
      *(inited + 856) = v51;
      v52 = sub_10000F0A0(0, &qword_100037EB8, TUITransaction_ptr);
      *(inited + 888) = sub_100007778(&qword_100037EC0, &qword_100028588);
      *(inited + 864) = v52;
      *(inited + 896) = sub_10001FE2C();
      *(inited + 904) = v53;
      v54 = sub_10001F5DC();
      *(inited + 936) = sub_100007778(&qword_100037EC8, &qword_100028590);
      *(inited + 912) = v54;
      v55 = sub_10000E610(inited);
      swift_setDeallocating();
      sub_100007778(&qword_100037ED0, &qword_100028598);
      swift_arrayDestroy();

      return v55;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007778(&unk_100037EE0, &qword_1000285A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F0A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000F0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007778(&unk_100038630, &unk_1000285B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F158()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F1B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F1FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007778(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000F25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007778(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10000F2CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000F494(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXRemoveFromWantToReadActionItem()
{
  result = qword_100037FD8;
  if (!qword_100037FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F584()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v7)
  {
    sub_100007FFC(v6);
    v4 = 0;
  }

  else
  {
    sub_100008050(v6, v8);
    sub_100007FB8(v8, v8[3]);
    v4 = sub_10001F89C();
    sub_100007F6C(v8);
  }

  return v4 & 1;
}

uint64_t sub_10000F62C()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_10000F6C4, v3, v2);
}

uint64_t sub_10000F6C4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v5 = objc_opt_self();
    v6 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v7 = sub_10001FE1C();

    [v5 removeAssetFromWantToRead:v7 tracker:*(v4 + 80)];

    v8 = *(v4 + 128);
    v9 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v10 = sub_10001FE1C();

    [v8 updateWantToReadState:0 identifier:v10];

    v11 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v12 = sub_10001FE1C();

    [v8 updateItemOfInterestForItemIdentifier:v12];

    sub_100007F6C((v0 + 64));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000F888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10000F62C();
}

uint64_t sub_10000F914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.removeFromWantToRead(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t sub_10000FA40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F75C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000FB00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F75C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXContextActionData()
{
  result = qword_100038078;
  if (!qword_100038078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FBF0()
{
  sub_10000FD9C(319, &qword_100038088, &qword_100038090, &qword_1000290D0, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10001F75C();
    if (v1 <= 0x3F)
    {
      sub_10000FD44();
      if (v2 <= 0x3F)
      {
        sub_10000FD9C(319, &qword_1000380A0, &qword_1000380A8, &unk_100028738, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10001F80C();
          if (v4 <= 0x3F)
          {
            sub_10000FE00();
            if (v5 <= 0x3F)
            {
              sub_10000FE64();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000FD44()
{
  if (!qword_100038098)
  {
    type metadata accessor for CGPoint();
    v0 = sub_10002000C();
    if (!v1)
    {
      atomic_store(v0, &qword_100038098);
    }
  }
}

void sub_10000FD9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000CD14(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10000FE00()
{
  result = qword_1000380B0;
  if (!qword_1000380B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000380B0);
  }

  return result;
}

unint64_t sub_10000FE64()
{
  result = qword_1000380B8;
  if (!qword_1000380B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000380B8);
  }

  return result;
}

id sub_10000FF00()
{
  v0 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  return v0;
}

id sub_10000FF5C()
{
  v0 = [objc_opt_self() sharedProvider];
  v1 = [v0 isStoreAccountManagedAppleID];

  return v1;
}

uint64_t sub_100010038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10001F75C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000100D4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

void *sub_1000100E8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = sub_10001F7FC();
  if (v5)
  {
    sub_10001016C(v3, v4, 1);
    return 0;
  }

  else
  {
    v7 = v4;

    return v7;
  }
}

void sub_10001016C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000101CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001028C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXMarkedAsStillReadingActionItem()
{
  result = qword_100038158;
  if (!qword_100038158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001037C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v8)
  {
    sub_100007FFC(v7);
    v4 = 0;
  }

  else
  {
    sub_100008050(v7, v9);
    sub_100007FB8(v9, v10);
    v5 = sub_10001F8FC();
    if (v5 == 2 || (v5 & 1) == 0)
    {
      v4 = 0;
    }

    else
    {
      sub_100007FB8(v9, v10);
      v4 = sub_10001F8AC();
    }

    sub_100007F6C(v9);
  }

  return v4 & 1;
}

uint64_t sub_10001045C()
{
  v1[13] = v0;
  v2 = sub_10001FA8C();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = sub_10001FA0C();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = sub_10001FA9C();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v11 = *(*(sub_100007778(&qword_100037928, &qword_1000288B0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_10001FF2C();
  v1[24] = sub_10001FF1C();
  v13 = sub_10001FF0C();

  return _swift_task_switch(sub_100010640, v13, v12);
}

uint64_t sub_100010640()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v28 = *(v0 + 152);
    v34 = *(v0 + 144);
    v27 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = *(v0 + 112);
    v31 = *(v0 + 128);
    v6 = *(v0 + 104);
    v32 = v6;
    sub_100008050((v0 + 16), v0 + 64);
    sub_10001FA7C();
    v7 = sub_10001FA6C();
    v8 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    sub_10001FA5C();

    v26 = sub_10001FA6C();
    v33 = *(v6 + 80);
    sub_10001FE2C();
    v9 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    (*(v4 + 104))(v35, enum case for ContentAcquisitionType.storeBought(_:), v5);
    v10 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v11 = sub_10001F78C();
    v12 = &enum case for ContentType.audiobook(_:);
    if ((v11 & 1) == 0)
    {
      v12 = &enum case for ContentType.book(_:);
    }

    (*(v34 + 104))(v28, *v12, v27);
    v13 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8CC();
    sub_10001FFFC();
    (*(v29 + 104))(v31, enum case for ProductionType.unknown(_:), v30);
    sub_10001FA3C();

    (*(v29 + 8))(v31, v30);
    (*(v34 + 8))(v28, v27);
    (*(v4 + 8))(v35, v5);
    v14 = objc_opt_self();
    v15 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v16 = sub_10001FE1C();

    [v14 setFinishedState:0 storeID:v16 tracker:{v33, v36, v31}];

    v17 = *(v32 + 128);
    v18 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v19 = sub_10001FE1C();

    [v17 updateItemOfInterestForItemIdentifier:v19];

    sub_100008C3C(v36);
    sub_100007F6C((v0 + 64));
  }

  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 152);
  v23 = *(v0 + 128);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100010A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10001045C();
}

uint64_t sub_100010AE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.markAsStillReading(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t LibraryAnalyticsDataProvider.seriesType(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = BSUIGetLibraryItemStateProvider();
  v3 = sub_10001FE1C();
  v4 = [v2 itemStateWithIdentifier:v3];

  swift_unknownObjectRelease();
  v5 = [v4 seriesType];
  swift_unknownObjectRelease();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = &enum case for SeriesType.ordered(_:);
      goto LABEL_9;
    }

    if (v5 == 3)
    {
      v6 = &enum case for SeriesType.unOrdered(_:);
      goto LABEL_9;
    }

LABEL_7:
    v7 = sub_10001F9FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 1;
    goto LABEL_10;
  }

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  v6 = &enum case for SeriesType.nonSeries(_:);
LABEL_9:
  v12 = *v6;
  v13 = sub_10001F9FC();
  v15 = *(v13 - 8);
  (*(v15 + 104))(a1, v12, v13);
  v8 = *(v15 + 56);
  v10 = a1;
  v11 = 0;
  v9 = v13;
LABEL_10:

  return v8(v10, v11, 1, v9);
}

uint64_t sub_100010E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010EC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXRemoveDownloadActionItem()
{
  result = qword_100038290;
  if (!qword_100038290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100010FB8()
{
  sub_1000110DC(319, &qword_1000377C0);
  if (v0 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8);
    if (v1 <= 0x3F)
    {
      sub_100007E54();
      if (v2 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8);
        if (v3 <= 0x3F)
        {
          sub_1000110DC(319, &unk_1000382A0);
          if (v4 <= 0x3F)
          {
            sub_10001F74C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000110DC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100011138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v20);
  sub_100007F08(a2, v19);
  sub_100007F08(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_10001160C();
    v17 = &off_100031BB0;
    *&v15 = v11;
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v12 = *(type metadata accessor for PPXRemoveDownloadActionItem() + 36);
    v13 = enum case for ContextActionType.removeDownload(_:);
    v14 = sub_10001F74C();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_100008050(v20, a5);
    sub_100008050(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v18, a5 + 88);
    return sub_100008050(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011284()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v8)
  {
    sub_100007FFC(v7);
    return 0;
  }

  else
  {
    sub_100008050(v7, v9);
    sub_100007FB8(v9, v10);
    v5 = sub_10001F8EC();
    if (v5 == 2 || (v5 & 1) == 0 || (sub_100007FB8(v9, v10), (sub_10001F88C() & 1) != 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }

    sub_100007F6C(v9);
  }

  return v4;
}

uint64_t sub_100011380()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100011418, v3, v2);
}

uint64_t sub_100011418()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v5 = v4[19];
    v6 = v4[20];
    sub_100007FB8(v4 + 16, v5);
    v7 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v8 = sub_10001F8DC();
    v10 = v9;
    v11 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v12 = sub_10001F78C();
    (*(v6 + 16))(v8, v10, v12 & 1, v5, v6);

    sub_100007F6C((v0 + 64));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001157C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100011380();
}

unint64_t sub_10001160C()
{
  result = qword_1000382E0;
  if (!qword_1000382E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000382E0);
  }

  return result;
}

void sub_100011658(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    sub_100007778(&qword_1000382E8, &qword_1000290C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100028400;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    isa = sub_10001FECC().super.isa;

    [v5 downloadBooks:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001173C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10001FE1C();
    [v5 removeDownload:v6 isAudiobook:a3 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000117F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000118B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXDislikeActionItem()
{
  result = qword_100038348;
  if (!qword_100038348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000119A4()
{
  sub_1000110DC(319, &qword_1000377C0);
  if (v0 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8);
    if (v1 <= 0x3F)
    {
      sub_100007E54();
      if (v2 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8);
        if (v3 <= 0x3F)
        {
          sub_1000110DC(319, &unk_100038358);
          if (v4 <= 0x3F)
          {
            sub_10001F74C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_100011AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v19);
  sub_100007F08(a2, v18);
  sub_100007F08(a4, v17);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    sub_1000124C4();
    sub_10001FC1C();
    sub_10001FC0C();
    v15 = sub_10001F85C();
    v16 = &protocol witness table for MenuLikeStateController;
    sub_10000F2CC(&v14);
    sub_10001F84C();
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v11 = *(type metadata accessor for PPXDislikeActionItem() + 36);
    v12 = enum case for ContextActionType.dislike(_:);
    v13 = sub_10001F74C();
    (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
    sub_100008050(v19, a5);
    sub_100008050(v18, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v17, a5 + 88);
    return sub_100008050(&v14, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011C68()
{
  v1 = v0;
  v2 = v0[4];
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v12 == 1)
  {
    sub_100007FFC(v11);
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  sub_100008050(v11, v13);
  sub_100007FB8(v13, v14);
  sub_10001F91C();
  if (sub_10001F78C())
  {
    goto LABEL_10;
  }

  sub_100007FB8(v13, v14);
  sub_10001F91C();
  if (sub_10001F78C())
  {
    goto LABEL_10;
  }

  sub_100007FB8(v13, v14);
  v3 = sub_10001F90C();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v3;
  v6 = v4;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_10:
    sub_100007F6C(v13);
    goto LABEL_11;
  }

  v8 = v1[4];
  sub_100007FB8(v1, v1[3]);
  v9 = sub_10001F92C();
  sub_100007F6C(v13);
  return v9 & 1;
}

uint64_t sub_100011DC4()
{
  v1[17] = v0;
  v2 = sub_10001FBEC();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  sub_10001FF2C();
  v1[21] = sub_10001FF1C();
  v6 = sub_10001FF0C();
  v1[22] = v6;
  v1[23] = v5;

  return _swift_task_switch(sub_100011EB8, v6, v5);
}

uint64_t sub_100011EB8()
{
  v1 = *(v0 + 136);
  v2 = v1[4];
  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    v3 = *(v0 + 168);

    sub_100007FFC(v0 + 16);
    v4 = *(v0 + 160);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 136);
    sub_100008050((v0 + 16), v0 + 64);
    v8 = v7[19];
    v9 = v7[20];
    sub_100007FB8(v7 + 16, v8);
    v10 = v7[10];
    v11 = async function pointer to dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)[1];
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_10001201C;
    v13 = *(v0 + 136);

    return dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(0, v7 + 5, v13, v0 + 64, v10, v8, v9);
  }
}

uint64_t sub_10001201C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_100012248;
  }

  else
  {
    v4[26] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_100012144;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100012144()
{
  v1 = v0[26];
  v2 = v0[21];

  if (v1)
  {
    v3 = v0[17];
    v4 = objc_opt_self();
    v5 = v3[9];
    sub_100007FB8(v3 + 5, v3[8]);
    sub_10001F59C();
    isa = sub_10001FDDC().super.isa;

    [v4 presentNoticeForBookLoved:0 options:isa];
  }

  sub_100007F6C(v0 + 8);
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100012248()
{
  v26 = v0;
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];

  sub_10001FBBC();
  swift_errorRetain();
  v4 = sub_10001FBCC();
  v5 = sub_10001FF6C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = v0[19];
    v24 = v0[20];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[15];
    v14 = sub_10002017C();
    v16 = sub_100012510(v14, v15, &v25);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "error while trying to submide dislike preference with : %s", v9, 0xCu);
    sub_100007F6C(v10);

    (*(v7 + 8))(v24, v8);
  }

  else
  {
    v17 = v0[25];
    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[18];

    (*(v19 + 8))(v18, v20);
  }

  sub_100007F6C(v0 + 8);
  v21 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100012434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100011DC4();
}

unint64_t sub_1000124C4()
{
  result = qword_100038398;
  if (!qword_100038398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038398);
  }

  return result;
}

uint64_t sub_100012510(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000125DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000CD9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F6C(v11);
  return v7;
}

unint64_t sub_1000125DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000126E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000200AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000126E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012734(a1, a2);
  sub_100012864(&off_100031890);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100012734(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100012950(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000200AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001FE9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100012950(v10, 0);
        result = sub_10002006C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100012864(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000129C4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100012950(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007778(&qword_1000383A0, &unk_100028B00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000129C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007778(&qword_1000383A0, &unk_100028B00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100012ABC()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100012B54, v3, v2);
}

uint64_t sub_100012B54()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  v4 = (v0 + 16);
  if (*(v0 + 56) == 1)
  {
    sub_100007FFC(v4);
  }

  else
  {
    sub_100008050(v4, v0 + 64);
    v5 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v6 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v7 = sub_10001F8FC();
    v8 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v9 = sub_10001F78C();
    v10 = objc_allocWithZone(PPXCollectionListViewController);
    v11 = sub_10001FE1C();

    v12 = [v10 initWithAssetID:v11 isPurchased:v7 & 1 isAudiobook:v9 & 1];

    if (v12)
    {
      v13 = *(v0 + 104);
      v14 = objc_allocWithZone(UIBarButtonItem);
      v15 = v12;
      v16 = [v14 initWithBarButtonSystemItem:24 target:v15 action:"doneButtonPressed"];
      v17 = [v15 navigationItem];
      [v17 setRightBarButtonItem:v16 animated:0];

      v18 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v15];
      v19 = v13[9];
      sub_100007FB8(v13 + 5, v13[8]);
      sub_10001F58C();
    }

    sub_100007F6C((v0 + 64));
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100012DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10001F74C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100012E1C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  LOBYTE(v2) = v5[40];
  sub_100007FFC(v5);
  return (v2 & 1) == 0;
}

uint64_t sub_100012E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100012ABC();
}

uint64_t sub_100012F08@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100008050(a1, a6);
  sub_100008050(a2, a6 + 40);
  *(a6 + 80) = a3;
  sub_100008050(a4, a6 + 88);
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.addToCollection(_:);
  v13 = sub_10001F74C();
  v14 = *(*(v13 - 8) + 104);

  return v14(a6 + v11, v12, v13);
}

uint64_t sub_100012FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000130AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXAddToCollectionActionItem()
{
  result = qword_100038400;
  if (!qword_100038400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001319C()
{
  sub_1000110DC(319, &qword_1000377C0);
  if (v0 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8);
    if (v1 <= 0x3F)
    {
      sub_100007E54();
      if (v2 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8);
        if (v3 <= 0x3F)
        {
          sub_10001F74C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000132AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001336C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXDownloadActionItem()
{
  result = qword_1000384A0;
  if (!qword_1000384A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10001345C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v20);
  sub_100007F08(a2, v19);
  sub_100007F08(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_10001160C();
    v17 = &off_100031BB0;
    *&v15 = v11;
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v12 = *(type metadata accessor for PPXDownloadActionItem() + 36);
    v13 = enum case for ContextActionType.download(_:);
    v14 = sub_10001F74C();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_100008050(v20, a5);
    sub_100008050(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v18, a5 + 88);
    return sub_100008050(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000135A8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_100007FB8(v1, v2);
  sub_10001F93C();
  if (v8)
  {
    sub_100007FFC(v7);
    v4 = 0;
  }

  else
  {
    sub_100008050(v7, v9);
    sub_100007FB8(v9, v10);
    v5 = sub_10001F8EC();
    if (v5 == 2 || (v5 & 1) != 0 || (sub_100007FB8(v9, v10), (sub_10001F88C() & 1) != 0))
    {
      v4 = 0;
    }

    else
    {
      sub_100007FB8(v9, v10);
      v4 = sub_10001F8FC();
    }

    sub_100007F6C(v9);
  }

  return v4 & 1;
}

uint64_t sub_1000136AC()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100013744, v3, v2);
}

uint64_t sub_100013744()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = v2[4];
  sub_100007FB8(v2, v2[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v5 = v4[20];
    sub_100007FB8(v4 + 16, v4[19]);
    v6 = *(v0 + 96);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v7 = sub_10001F8DC();
    (*(v5 + 8))(v7);

    sub_100007F6C((v0 + 64));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100013868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_1000136AC();
}

uint64_t sub_1000138F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10001394C()
{
  v1 = sub_10001FABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  swift_getObjectType();
  sub_10001FBAC();
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for MResourceType.audiobooks(_:))
  {
    return 0x6F6F626F69647561;
  }

  if (v7 == enum case for MResourceType.audiobookSeries(_:) || v7 == enum case for MResourceType.authors(_:))
  {
    return 0;
  }

  if (v7 != enum case for MResourceType.books(_:))
  {
    if (v7 != enum case for MResourceType.bookSeries(_:) && v7 != enum case for MResourceType.genres(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    return 0;
  }

  if (sub_10001FB5C())
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100013B1C()
{
  v1 = sub_10001F53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = sub_10001FE0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v22[-v15];
  v17 = [*(v0 + 24) editionKind];
  if (v17)
  {
    v18 = v17;
    v19 = sub_10001FE2C();
  }

  else
  {
    sub_10001FADC();
    sub_10001FDFC();
    sub_10001F52C();
    (*(v10 + 16))(v14, v16, v9);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v6, v8, v1);
    v19 = sub_10001FE4C();
    (*(v2 + 8))(v8, v1);
    (*(v10 + 8))(v16, v9);
  }

  return v19;
}

uint64_t sub_100013E90()
{
  v22 = sub_10001FD2C();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = dispatch_semaphore_create(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = objc_opt_self();
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = sub_10001FE1C();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v8;
  aBlock[4] = sub_100015754;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000138F8;
  aBlock[3] = &unk_100031C20;
  v15 = _Block_copy(aBlock);

  v16 = v8;

  [v10 fetchIsAssetID:v13 inFinishedCollectionWithCompletion:v15];
  _Block_release(v15);

  sub_10001FD1C();
  sub_10001FD3C();
  v17 = *(v1 + 8);
  v18 = v22;
  v17(v5, v22);
  sub_10001FFCC();

  v17(v7, v18);
  swift_beginAccess();
  v19 = *(v9 + 16);

  return v19;
}

uint64_t sub_1000140F4()
{
  v1 = sub_10001F53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  result = sub_10001FB4C();
  if (v8)
  {
    sub_10001F52C();
    v9.super.isa = sub_10001F51C().super.isa;
    (*(v2 + 8))(v5, v1);
    v10 = sub_10001FE1C();

    v11 = [(objc_class *)v9.super.isa displayNameForKey:NSLocaleLanguageCode value:v10];

    if (v11)
    {
      v12 = sub_10001FE2C();

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100014264@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_10001F55C();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001F57C();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001F50C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = [*(v1 + 24) releaseDate];
  if (v18)
  {
    v19 = v18;
    sub_10001F4FC();

    (*(v11 + 32))(v17, v15, v10);
    sub_10001F54C();
    v20 = v26;
    (*(v2 + 104))(v5, enum case for Calendar.Component.year(_:), v26);
    v21 = sub_10001F56C();
    (*(v2 + 8))(v5, v20);
    (*(v6 + 8))(v9, v25);
    v28 = v21;
    sub_10002012C();
    (*(v11 + 8))(v17, v10);
  }

  sub_10001FB0C();
  v22 = v27;
  sub_10001F95C();
  v23 = sub_10001F96C();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1000145A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007778(&unk_100038630, &unk_1000285B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = *(v1 + 24);
  if (sub_10001FADC())
  {
    v14 = [v13 bookSampleDownloadURL];
    if (v14)
    {
      v15 = v14;
      sub_10001F4DC();

      v16 = sub_10001F4EC();
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    }

    else
    {
      v20 = sub_10001F4EC();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    }
  }

  else
  {
    v17 = [v13 previewURL];
    if (v17)
    {
      v18 = v17;
      sub_10001F4DC();

      v19 = sub_10001F4EC();
      (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
    }

    else
    {
      v21 = sub_10001F4EC();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    }

    v10 = v7;
  }

  sub_10000F0E8(v10, v12);
  v22 = sub_10001F4EC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    sub_10001569C(v12);
    v24 = 1;
  }

  else
  {
    (*(v23 + 32))(a1, v12, v22);
    v24 = 0;
  }

  return (*(v23 + 56))(a1, v24, 1, v22);
}

uint64_t sub_100014868()
{
  v1 = *(v0 + 24);
  result = sub_10001FB1C();
  if (result)
  {
    if (*(result + 16))
    {
      v3 = *(result + 32);

      strcpy(v6, "versionString");
      HIWORD(v6[1]) = -4864;
      sub_10002005C();
      if (*(v3 + 16) && (v4 = sub_10001BBE4(v7), (v5 & 1) != 0))
      {
        sub_10000CD9C(*(v3 + 56) + 32 * v4, v8);
        sub_100015648(v7);

        if (swift_dynamicCast())
        {
          return v6[0];
        }
      }

      else
      {

        sub_100015648(v7);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001497C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100007F6C((v0 + 32));
  v2 = *(v0 + 80);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 136);

  return v0;
}

uint64_t sub_1000149D4()
{
  sub_10001497C();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100014A2C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

uint64_t sub_100014A60()
{
  v1 = *(*v0 + 24);
  if (sub_10001FADC())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100014AE0()
{
  v2 = sub_10001F77C();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v1[4] = v5;
  v1[5] = v6;

  return _swift_task_switch(sub_100014BA0, 0, 0);
}

uint64_t sub_100014BA0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v2[7];
  v6 = v2[8];
  sub_100007FB8(v2 + 4, v5);
  v7 = v2[3];
  (*(v4 + 104))(v1, enum case for MenuCoverImageSource.network(_:), v3);
  v8 = kAEAssetActivityItemProviderDefaultCoverSize[0];
  v9 = kAEAssetActivityItemProviderDefaultCoverSize[1];
  v10 = async function pointer to dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)[1];
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_100014CC0;
  v12 = v0[4];
  v13.n128_u64[0] = v8;
  v14.n128_u64[0] = v9;

  return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v7, v12, 1, v5, v6, v13, v14);
}

uint64_t sub_100014CC0(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (*(v5 + 8))(v4, v6);

  v7 = *(v9 + 8);

  return v7(a1);
}

void *sub_100014E20()
{
  v1 = *(*v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_100014E70()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 104);

  return v1;
}

BOOL sub_100014EC4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_10001FB9C();
  v3 = sub_10001FE1C();

  v4 = [v1 itemStateWithIdentifier:v3];

  v5 = [v4 download];
  swift_unknownObjectRelease();
  return v5 == 1;
}

id sub_100014F78()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_10001FB9C();
  v3 = sub_10001FE1C();

  v4 = [v1 itemStateWithIdentifier:v3];

  v5 = [v4 wantToRead];
  swift_unknownObjectRelease();
  return v5;
}

BOOL sub_100015000()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_10001FB9C();
  v3 = sub_10001FE1C();

  v4 = [v1 itemStateWithIdentifier:v3];

  v5 = [v4 download];
  swift_unknownObjectRelease();
  return v5 == 2;
}

BOOL sub_1000150BC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_10001FB9C();
  v3 = sub_10001FE1C();

  v4 = [v1 itemStateWithIdentifier:v3];

  v5 = [v4 library];
  swift_unknownObjectRelease();
  return v5 == 4;
}

uint64_t sub_100015174()
{
  v1 = [*(*v0 + 24) offer];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001FDEC();

  return v3;
}

uint64_t sub_100015210()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);

  return v1;
}

uint64_t sub_100015298(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 24) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_10001FE2C();

  return v6;
}

void (*sub_10001530C(uint64_t *a1))(uint64_t a1)
{
  v3 = sub_10001F4EC();
  v4 = *(v3 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(*(*(v3 - 8) + 64));
  }

  v6 = v5;
  a1[2] = v5;
  v7 = *(*v1 + 24);
  sub_10001FB2C();
  v8 = sub_10001F4BC();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  *a1 = v8;
  a1[1] = v10;
  return sub_100015408;
}

void sub_100015408(uint64_t a1)
{
  v3 = a1 + 8;
  v1 = *(a1 + 8);
  v2 = *(v3 + 8);

  free(v2);
}

uint64_t sub_100015440()
{
  v1 = sub_10001F4EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 24);
  sub_10001FB2C();
  v7 = sub_10001F4BC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_10001569C(uint64_t a1)
{
  v2 = sub_100007778(&unk_100038630, &unk_1000285B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015714()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100015754(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  return sub_10001FFDC();
}

uint64_t sub_1000157A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000157C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100015808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100015870(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

unint64_t *sub_1000158F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000200EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = &_swiftEmptyArrayStorage;
  result = sub_10001CB10(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_10002008C();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10001CB10((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for PPXContextAssetInfo();
        v15 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_100008050(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_10001CB10((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for PPXContextAssetInfo();
        v15 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_100008050(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015B10()
{
  v0 = sub_10001FBEC();
  sub_10001EE38(v0, qword_100038640);
  sub_10001E640(v0, qword_100038640);
  return sub_10001FBDC();
}

void *sub_100015BAC(void (**a1)(char *, void, uint64_t), void (**a2)(char *, uint64_t))
{
  v163 = a2;
  v164 = a1;
  v166 = sub_10001F74C();
  v160 = *(v166 - 8);
  v2 = *(v160 + 64);
  v3 = __chkstk_darwin(v166);
  v156 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v162 = &v148 - v5;
  v6 = sub_10001F82C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007778(&qword_100038658, &qword_100028FB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v167 = &v148 - v13;
  i = type metadata accessor for PPXContextActionData();
  v165 = *(i - 8);
  v15 = *(v165 + 64);
  v16 = __chkstk_darwin(i);
  isUniquelyReferenced_nonNull_native = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v153 = &v148 - v19;
  v20 = BSUIGetLibraryItemStateProvider();
  v171 = v6;
  v172 = &protocol witness table for MenuCoverImageProvider;
  v21 = sub_10000F2CC(&v170);
  sub_10001F81C();
  v22 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *isUniquelyReferenced_nonNull_native = v22;
  v23 = *(i + 20);
  v24 = enum case for ContextActionSource.unknown(_:);
  v25 = sub_10001F75C();
  (*(*(v25 - 8) + 104))(isUniquelyReferenced_nonNull_native + v23, v24, v25);
  v26 = isUniquelyReferenced_nonNull_native + *(i + 24);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(isUniquelyReferenced_nonNull_native + *(i + 28)) = 0;
  v27 = v164;
  *(isUniquelyReferenced_nonNull_native + *(i + 32)) = v164;
  *(isUniquelyReferenced_nonNull_native + *(i + 36)) = v20;
  sub_100007F08(&v170, isUniquelyReferenced_nonNull_native + *(i + 40));
  v161 = type metadata accessor for PPXContextAssetInfo();
  v28 = swift_allocObject();
  (*(v7 + 16))(v10, v21, v6);
  v29 = v27;
  swift_unknownObjectRetain();
  v30 = sub_10001DC54(v29, v20, v10, v28);
  if (v30)
  {
    v31 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }

    goto LABEL_133;
  }

  sub_100007F6C(&v170);
  sub_10001E5E4(isUniquelyReferenced_nonNull_native);
  v36 = 1;
  v35 = v167;
  v32 = v165;
LABEL_7:
  (*(v32 + 56))(v35, v36, 1, i);
  if ((*(v32 + 48))(v35, 1, i) == 1)
  {
    sub_10000F1FC(v35, &qword_100038658, &qword_100028FB8);
    if (qword_100037640 != -1)
    {
      swift_once();
    }

    v37 = sub_10001FBEC();
    sub_10001E640(v37, qword_100038640);
    v38 = sub_10001FBCC();
    v39 = sub_10001FF6C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to instantiate PPXContextActionData", v40, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v42 = v153;
  sub_10001E678(v35, v153);
  v43 = v152;
  v44 = *&v152[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph];
  v45 = v163;
  swift_unknownObjectWeakInit();
  v178 = v29;
  v179 = v44;
  v46 = v29;

  v47 = [v45 ba_analyticsTracker];
  v48 = *&v43[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_actionItems];
  v49 = __chkstk_darwin(v47);
  *(&v148 - 4) = v42;
  *(&v148 - 3) = v177;
  v150 = v49;
  v146 = v49;
  v147._rawValue = v43;
  v51 = sub_100017838(sub_10001EEF0, (&v148 - 6), v50);
  v165 = 0;
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData);
  sub_10001F93C();
  if (v173 == 1)
  {
    sub_100007FFC(&v170);
  }

  else
  {
    sub_100008050(&v170, &v174);
    sub_100007FB8(&v174, v175);
    if (sub_10001F87C())
    {
      v52 = [objc_msgSend(objc_opt_self() "sharedInstance")];
      swift_unknownObjectRelease();
      if ((v52 & 1) == 0)
      {

        sub_100007F6C(&v174);
        sub_10001EF2C(v177);
        sub_10001E5E4(v153);
        return &_swiftEmptyArrayStorage;
      }
    }

    sub_100007F6C(&v174);
  }

  *&v174 = &_swiftEmptyArrayStorage;
  v169 = &_swiftEmptyDictionarySingleton;
  v53 = v51[2];
  if (v53)
  {
    v167 = v51;
    v31 = (v51 + 4);
    isUniquelyReferenced_nonNull_native = &_swiftEmptyDictionarySingleton;
    v154 = &_swiftEmptyArrayStorage;
    while (2)
    {
      sub_100007F08(v31, &v170);
      sub_100007FB8(&v170, v171);
      v56 = sub_10001F66C();
      sub_100007F6C(&v170);
      if (!v56)
      {
        goto LABEL_23;
      }

      v29 = v56;
      sub_10001FEBC();
      if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v72 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10001FEEC();
      }

      sub_10001FEFC();
      v154 = v174;
      v57 = [v29 identifier];
      v58 = sub_10001FE2C();
      v60 = v59;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      i = v169;
      v168 = v169;
      v22 = sub_10001BB6C(v58, v60);
      v62 = *(i + 16);
      v63 = (v61 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_131;
      }

      v65 = v61;
      if (*(i + 24) >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v168;
          if ((v61 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          i = &v168;
          sub_10001D1BC();
          isUniquelyReferenced_nonNull_native = v168;
          if ((v65 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_10001C300(v64, isUniquelyReferenced_nonNull_native);
        i = v168;
        v66 = sub_10001BB6C(v58, v60);
        if ((v65 & 1) != (v67 & 1))
        {
LABEL_136:
          sub_10002016C();
          __break(1u);
LABEL_137:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v22 = v66;
        isUniquelyReferenced_nonNull_native = v168;
        if ((v65 & 1) == 0)
        {
LABEL_34:
          *(isUniquelyReferenced_nonNull_native + 8 * (v22 >> 6) + 64) |= 1 << v22;
          v68 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v22);
          *v68 = v58;
          v68[1] = v60;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v22) = v29;
          v69 = *(isUniquelyReferenced_nonNull_native + 16);
          v70 = __OFADD__(v69, 1);
          v71 = v69 + 1;
          if (v70)
          {
            goto LABEL_132;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v71;
LABEL_22:
          v169 = isUniquelyReferenced_nonNull_native;
LABEL_23:
          v31 += 40;
          if (!--v53)
          {

            goto LABEL_40;
          }

          continue;
        }
      }

      break;
    }

    v54 = *(isUniquelyReferenced_nonNull_native + 56);
    v55 = *(v54 + 8 * v22);
    *(v54 + 8 * v22) = v29;

    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = &_swiftEmptyDictionarySingleton;
  v154 = &_swiftEmptyArrayStorage;
LABEL_40:
  v73 = sub_1000183A0();
  v167 = sub_10001DE88(v73, v74);

  v75 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(isUniquelyReferenced_nonNull_native + 64);
  v29 = ((v75 + 63) >> 6);

  v31 = 0;
  for (i = &_swiftEmptyArrayStorage; v77; *(v83 + 40) = v80)
  {
LABEL_47:
    v79 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v77)))));
    v81 = *v79;
    v80 = v79[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_10001B728(0, *(i + 16) + 1, 1, i);
    }

    v22 = *(i + 16);
    v82 = *(i + 24);
    if (v22 >= v82 >> 1)
    {
      i = sub_10001B728((v82 > 1), v22 + 1, 1, i);
    }

    v77 &= v77 - 1;
    *(i + 16) = v22 + 1;
    v83 = i + 16 * v22;
    *(v83 + 32) = v81;
  }

  while (1)
  {
    v78 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v22 = sub_10001B834(0, *(v22 + 16) + 1, 1, v22, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
LABEL_3:
      v32 = v165;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        v22 = sub_10001B834((v33 > 1), v34 + 1, 1, v22, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
      }

      sub_100007F6C(&v170);
      v175 = v161;
      v176 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo);
      *&v174 = v31;
      *(v22 + 16) = v34 + 1;
      sub_100008050(&v174, v22 + 40 * v34 + 32);
      *isUniquelyReferenced_nonNull_native = v22;
      v35 = v167;
      sub_10001E678(isUniquelyReferenced_nonNull_native, v167);
      v36 = 0;
      goto LABEL_7;
    }

    if (v78 >= v29)
    {
      break;
    }

    v77 = *(isUniquelyReferenced_nonNull_native + 64 + 8 * v78);
    ++v31;
    if (v77)
    {
      v31 = v78;
      goto LABEL_47;
    }
  }

  v84 = sub_10001F6FC();

  i = &v148;
  __chkstk_darwin(v85);
  v146 = v153;
  v147._rawValue = &v169;
  v86 = v165;
  v87 = sub_1000179DC(sub_10001EF10, (&v148 - 4), v84);
  v155 = v87;

  v88 = sub_100018864(v87);
  v89 = v88;
  v149 = v86;
  v159 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
    v161 = sub_1000200EC();
  }

  else
  {
    v161 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v160;
  v91 = 0;
  v29 = 0;
  v160 = v89 & 0xC000000000000001;
  LODWORD(v165) = enum case for ContextActionType.sharedWithYou(_:);
  v164 = (v90 + 104);
  v163 = (v90 + 8);
  v92 = v167 & 0xFFFFFFFFFFFFFF8;
  v157 = v167 & 0xFFFFFFFFFFFFFF8;
  if ((v167 & 0x8000000000000000) != 0)
  {
    v92 = v167;
  }

  v148 = v92;
  v158 = v167 >> 62;
  v151 = &_swiftEmptyArrayStorage;
  while (v161 != v91)
  {
    if (v160)
    {
      v93 = sub_10002008C();
    }

    else
    {
      if (v91 >= *(v159 + 16))
      {
        goto LABEL_126;
      }

      v93 = *(v89 + 8 * v91 + 32);
    }

    v94 = v93;
    isUniquelyReferenced_nonNull_native = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      goto LABEL_125;
    }

    v95 = [v93 identifier];
    v22 = sub_10001FE2C();
    v97 = v96;

    v98 = v162;
    v99 = v166;
    (*v164)(v162, v165, v166);
    v31 = sub_10001F73C();
    (*v163)(v98, v99);
    v100 = sub_10001FE2C();
    i = v101;

    if (v22 == v100 && v97 == i)
    {

      if (!v167)
      {
        goto LABEL_76;
      }

LABEL_69:
      if (v158)
      {
        v104 = sub_1000200EC();
      }

      else
      {
        v104 = *(v157 + 16);
      }

      v105 = v104 - 1;
      if (__OFSUB__(v104, 1))
      {
        goto LABEL_127;
      }

      ++v91;
      v70 = __OFADD__(v29, v105);
      v29 += v105;
      if (v70)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v103 = sub_10002014C();

      if ((v103 & 1) != 0 && v167)
      {
        goto LABEL_69;
      }

LABEL_76:
      v106 = [v94 identifier];
      i = sub_10001FE2C();
      v108 = v107;

      v109 = &v29[v91];
      if (__OFADD__(v91, v29))
      {
        __break(1u);
        goto LABEL_136;
      }

      v110 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_10001B498(0, v110[2] + 1, 1, v110);
      }

      v31 = v110[2];
      v111 = v110[3];
      if (v31 >= v111 >> 1)
      {
        v110 = sub_10001B498((v111 > 1), v31 + 1, 1, v110);
      }

      v110[2] = v31 + 1;
      v151 = v110;
      v112 = &v110[3 * v31];
      v112[4] = i;
      v112[5] = v108;
      v112[6] = v109;
      v91 = isUniquelyReferenced_nonNull_native;
    }
  }

  if (v151[2])
  {
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v113 = sub_10002011C();
  }

  else
  {
    v113 = &_swiftEmptyDictionarySingleton;
  }

  v31 = v155;
  v114 = v149;
  *&v170 = v113;

  sub_10001CCD8(v115, 1, &v170);
  if (v114)
  {
    goto LABEL_137;
  }

  v116 = &v152[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider];
  swift_beginAccess();
  v117 = *(v116 + 32);
  i = sub_10001E6FC(v116, *(v116 + 24));
  sub_10001F60C();
  swift_endAccess();
  *&v170 = &_swiftEmptyArrayStorage;
  v118 = *(v31 + 16);
  if (v118)
  {
    v119 = 0;
    v159 = v31 + 48;
    v41 = &_swiftEmptyArrayStorage;
    v160 = v118;
    v157 = v118 - 1;
LABEL_90:
    v158 = v41;
    isUniquelyReferenced_nonNull_native = v159 + 24 * v119;
    v29 = v119;
    while (1)
    {
      if (v29 >= *(v31 + 16))
      {
        goto LABEL_129;
      }

      v121 = *(isUniquelyReferenced_nonNull_native - 16);
      v120 = *(isUniquelyReferenced_nonNull_native - 8);
      v122 = *isUniquelyReferenced_nonNull_native;
      v123 = *isUniquelyReferenced_nonNull_native >> 62;
      if (v123)
      {
        if (v122 < 0)
        {
          v135 = *isUniquelyReferenced_nonNull_native;
        }

        else
        {
          v135 = *isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        }

        if (!sub_1000200EC())
        {
LABEL_110:

          if (!v123)
          {
            goto LABEL_111;
          }

LABEL_114:
          sub_10000F0A0(0, &qword_100038740, UIMenuElement_ptr);

          v136 = sub_1000200DC();

LABEL_115:
          sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
          v183._countAndFlagsBits = v121;
          v183._object = v120;
          v185.value._countAndFlagsBits = 0;
          v185.value._object = 0;
          v181.value.super.isa = 0;
          v181.is_nil = 0;
          v143.value = 1;
          sub_10001FFEC(v183, v185, v181, v143, 0xFFFFFFFFFFFFFFFFLL, v136, v147);

LABEL_116:
          i = &v170;
          sub_10001FEBC();
          if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v144 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10001FEEC();
          }

          v119 = v29 + 1;
          sub_10001FEFC();
          v41 = v170;
          if (v157 != v29)
          {
            goto LABEL_90;
          }

          goto LABEL_121;
        }
      }

      else if (!*((*isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      v162 = v120;
      v161 = v121;
      if ((v122 & 0xC000000000000001) != 0)
      {

        v125 = sub_10002008C();
      }

      else
      {
        if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        v124 = *(v122 + 32);

        v125 = v124;
      }

      v126 = v125;
      v127 = [v125 identifier];
      v128 = sub_10001FE2C();
      v130 = v129;

      v131 = v156;
      v132 = v166;
      (*v164)(v156, v165, v166);
      v22 = sub_10001F73C();
      (*v163)(v131, v132);
      i = sub_10001FE2C();
      v134 = v133;

      if (v128 == i && v130 == v134)
      {
      }

      else
      {
        i = sub_10002014C();

        if ((i & 1) == 0)
        {

          v31 = v155;
          v120 = v162;
          v121 = v161;
          if (v123)
          {
            goto LABEL_114;
          }

LABEL_111:

          sub_10002015C();
          sub_10000F0A0(0, &qword_100038740, UIMenuElement_ptr);
          v136 = v122;
          goto LABEL_115;
        }
      }

      if (v167)
      {
        sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
        v137 = v167;

        v138 = [v126 title];
        v139 = sub_10001FE2C();
        v141 = v140;

        v180.value.super.isa = [v126 image];
        v182._countAndFlagsBits = v139;
        v182._object = v141;
        v184.value._countAndFlagsBits = 0;
        v184.value._object = 0;
        v180.is_nil = 0;
        v142.value = 0;
        sub_10001FFEC(v182, v184, v180, v142, 0xFFFFFFFFFFFFFFFFLL, v137, v147);

        v31 = v155;
        goto LABEL_116;
      }

      ++v29;

      isUniquelyReferenced_nonNull_native += 24;
      v31 = v155;
      if (v160 == v29)
      {
        v41 = v158;
        goto LABEL_121;
      }
    }
  }

  v41 = &_swiftEmptyArrayStorage;
LABEL_121:

  sub_10001EF2C(v177);
  sub_10001E5E4(v153);
  return v41;
}

void *sub_100017190(void *a1, uint64_t a2)
{
  v46[0] = a2;
  v48 = a1;
  v2 = sub_10001F82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007778(&qword_100038658, &qword_100028FB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v50 = v46 - v9;
  v10 = type metadata accessor for PPXContextActionData();
  v49 = *(v10 - 1);
  v11 = *(v49 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v51 = v46 - v15;
  v16 = BSUIGetLibraryItemStateProvider();
  v53 = v2;
  v54 = &protocol witness table for MenuCoverImageProvider;
  v17 = sub_10000F2CC(&v52);
  sub_10001F81C();
  v18 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *v14 = v18;
  v19 = v10[5];
  v20 = enum case for ContextActionSource.unknown(_:);
  v21 = sub_10001F75C();
  (*(*(v21 - 8) + 104))(v14 + v19, v20, v21);
  v22 = v14 + v10[6];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  *(v14 + v10[7]) = 0;
  v23 = v48;
  *(v14 + v10[8]) = v48;
  *(v14 + v10[9]) = v16;
  sub_100007F08(&v52, v14 + v10[10]);
  v47 = type metadata accessor for PPXContextAssetInfo();
  v24 = swift_allocObject();
  (*(v3 + 16))(v6, v17, v2);
  v25 = v23;
  swift_unknownObjectRetain();
  v26 = sub_10001DC54(v25, v16, v6, v24);
  if (v26)
  {
    v27 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10001B834(0, v18[2] + 1, 1, v18, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    v29 = v18[2];
    v28 = v18[3];
    if (v29 >= v28 >> 1)
    {
      v18 = sub_10001B834((v28 > 1), v29 + 1, 1, v18, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    sub_100007F6C(&v52);
    v57 = v47;
    v58 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo);
    *&v56 = v27;
    v18[2] = v29 + 1;
    sub_100008050(&v56, &v18[5 * v29 + 4]);
    *v14 = v18;
    v30 = v50;
    sub_10001E678(v14, v50);
    v31 = 0;
  }

  else
  {
    sub_100007F6C(&v52);
    sub_10001E5E4(v14);
    v31 = 1;
    v30 = v50;
  }

  v32 = v49;
  (*(v49 + 56))(v30, v31, 1, v10);
  if ((*(v32 + 48))(v30, 1, v10) == 1)
  {
    sub_10000F1FC(v30, &qword_100038658, &qword_100028FB8);
    if (qword_100037640 != -1)
    {
      swift_once();
    }

    v33 = sub_10001FBEC();
    sub_10001E640(v33, qword_100038640);
    v34 = sub_10001FBCC();
    v35 = sub_10001FF6C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to instantiate ContextActionData", v36, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  sub_10001E678(v30, v51);
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData);
  sub_10001F93C();
  if (v55 == 1)
  {
    v38 = sub_100007FFC(&v52);
  }

  else
  {
    sub_100008050(&v52, &v56);
    sub_100007FB8(&v56, v57);
    if (sub_10001F87C())
    {
      v39 = [objc_msgSend(objc_opt_self() "sharedInstance")];
      swift_unknownObjectRelease();
      if ((v39 & 1) == 0)
      {
        sub_100007F6C(&v56);
        sub_10001E5E4(v51);
        return &_swiftEmptyArrayStorage;
      }
    }

    v38 = sub_100007F6C(&v56);
  }

  v40 = *(v46[1] + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_actionItems);
  __chkstk_darwin(v38);
  v41 = v51;
  v42 = v46[0];
  v46[-4] = v51;
  v46[-3] = v42;
  v46[-2] = v25;
  v46[-1] = v43;
  v45 = sub_100017838(sub_10001ECC4, &v46[-6], v44);
  sub_10001E5E4(v41);
  return v45;
}

void *sub_100017838(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v11, &v14);
    if (v3)
    {
      break;
    }

    if (v12)
    {
      sub_100008050(&v11, v13);
      sub_100008050(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10001B834(0, v6[2] + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_10001B834((v8 > 1), v9 + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
      }

      v6[2] = v9 + 1;
      sub_100008050(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_10000F1FC(&v11, &qword_100038738, &qword_1000290E0);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1000179DC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = 0;
  result = &_swiftEmptyArrayStorage;
  do
  {
    v27 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_100007778(&qword_100038708, &qword_1000290B0);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v25, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {
        v22 = v27;

        return v22;
      }

      if (v26)
      {
        break;
      }

      if (v7 == v4)
      {
        return v27;
      }
    }

    v24 = v26;
    v23 = v25;
    v13 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10001B5E0(0, v13[2] + 1, 1, v13);
    }

    v14 = v13;
    v15 = v13[2];
    v16 = v14;
    v17 = v14[3];
    v18 = (v15 + 1);
    v19 = v24;
    if (v15 >= v17 >> 1)
    {
      v27 = (v15 + 1);
      v21 = sub_10001B5E0((v17 > 1), v15 + 1, 1, v16);
      v19 = v24;
      v18 = v27;
      v16 = v21;
    }

    v16[2] = v18;
    v20 = &v16[3 * v15];
    result = v16;
    v20[4] = v23;
    *(v20 + 5) = v19;
  }

  while (v7 != v4);
  return result;
}

void *sub_100017BC4(uint64_t a1, uint64_t *a2)
{
  result = &_swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  do
  {
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v8 = sub_10001F74C();
      v10 = *(v8 - 8);
      result = (v8 - 8);
      v9 = v10;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_17;
      }

      v11 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i;
      v12 = sub_10001F72C();
      v14 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      if (v6 == v4)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    v15 = sub_10001BB6C(v12, v13);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_5;
    }

    v18 = *(*(v14 + 56) + 8 * v15);
    sub_10001FEBC();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10001FEEC();
    }

    sub_10001FEFC();
    result = &_swiftEmptyArrayStorage;
  }

  while (v6 != v4);
  return result;
}

void *sub_100017D4C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_100007778(&qword_100038708, &qword_1000290B0);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v8 = &v30 - v7;
  v9 = sub_100007778(&qword_100038688, &qword_100028FD0);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v32 = &v30 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v31 = *(v5 + 72);
  v20 = &_swiftEmptyArrayStorage;
  do
  {
    v21 = *(v34 + 48);
    sub_10000F25C(v19, v8, &qword_100038708, &qword_1000290B0);
    v22 = v35;
    v23 = *&v8[*(v35 + 48)];

    v24 = sub_10001F71C();
    (*(*(v24 - 8) + 32))(v16, v8, v24);
    *&v16[v21] = sub_100018060(*(v19 + *(v22 + 48)), v36);
    v25 = v32;
    sub_10001E74C(v16, v32);
    sub_10001E74C(v25, v13);
    v26 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10001B97C(0, v20[2] + 1, 1, v20);
    }

    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      v20 = sub_10001B97C(v27 > 1, v28 + 1, 1, v20);
    }

    v20[2] = v28 + 1;
    sub_10001E74C(v13, v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28);
    v19 += v31;
    --v18;
    v3 = v26;
  }

  while (v18);
  return v20;
}

void *sub_100018060(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = *(sub_10001F74C() - 8);
  v6 = &_swiftEmptyArrayStorage;
  v7 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v8 = *(v5 + 72);
  do
  {
    v9 = sub_10001F72C();
    v11 = *a2;
    if (*(*a2 + 16))
    {
      v12 = sub_10001BB6C(v9, v10);
      v14 = v13;

      if (v14)
      {
        sub_100007F08(*(v11 + 56) + 40 * v12, v18);
        sub_100008050(v18, v19);
        sub_100008050(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10001B834(0, v6[2] + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = sub_10001B834((v15 > 1), v16 + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        }

        v6[2] = v16 + 1;
        sub_100008050(v18, &v6[5 * v16 + 4]);
      }
    }

    else
    {
    }

    v7 += v8;
    --v2;
  }

  while (v2);
  return v6;
}

uint64_t sub_100018254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v21[3] = type metadata accessor for PPXContextActionData();
  v21[4] = sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData);
  v13 = sub_10000F2CC(v21);
  sub_10001ECE4(a2, v13);
  v19 = &type metadata for PPXContextMenuPresentationContext;
  v20 = sub_10001ED48();
  v18 = swift_allocObject();
  sub_10001F02C(a3, v18 + 16);
  v14 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
  swift_beginAccess();
  sub_100007F08(a5 + v14, &v17);
  a6[3] = v11;
  a6[4] = v12;
  sub_10000F2CC(a6);
  v15 = a4;
  return sub_10001F63C();
}

uint64_t sub_1000183A0()
{
  type metadata accessor for PPXContextActionData();
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData);
  sub_10001F93C();
  if (v6 == 1)
  {
    sub_100007FFC(v5);
    return 0;
  }

  else
  {
    sub_100008050(v5, v7);
    sub_100007FB8(v7, v8);
    v1 = sub_10001F8BC();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      sub_10001F9BC();
      v4 = sub_10001F9AC();
      sub_100007FB8(v7, v8);
      sub_10001F8DC();
      v3 = sub_10001F98C();
    }

    sub_100007F6C(v7);
    return v3;
  }
}

void *sub_1000184DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v8 = sub_10001F53C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001FE0C();
  v32 = *(v34 - 8);
  v11 = *(v32 + 64);
  v12 = __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_10001F71C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + *(type metadata accessor for PPXContextActionData() + 32));
  v23 = sub_10001F79C();
  v35 = a1;
  if (v23)
  {
    v31 = v4;
    (*(v18 + 104))(v21, enum case for ContextActionType.ContextActionGroup.improveSuggestions(_:), v17);
    sub_10001EFE4(&qword_100038778, &type metadata accessor for ContextActionType.ContextActionGroup);
    sub_10001FEAC();
    sub_10001FEAC();
    (*(v18 + 8))(v21, v17);
    if (v38 == v37)
    {
      sub_10001FDFC();
      v24 = v32;
      v25 = v34;
      (*(v32 + 16))(v14, v16, v34);
      sub_10001F52C();
      v26 = sub_10001FE3C();
      v28 = v27;
      (*(v24 + 8))(v16, v25);
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = sub_100007778(&qword_100038708, &qword_1000290B0);
  result = sub_100017BC4(*(v35 + *(v29 + 48)), v36);
  *a4 = v26;
  a4[1] = v28;
  a4[2] = result;
  return result;
}

uint64_t sub_100018864(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v29 = a1 + 32;
  v2 = &_swiftEmptyArrayStorage;
  v3 = &qword_100038758;
  while (1)
  {
    v5 = *(v29 + 24 * v1 + 16);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 24 * v1 + 16);
      }

      v7 = sub_1000200EC();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1000200EC();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_1000200EC();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_10002009C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_10001EF80();
      for (i = 0; i != v15; ++i)
      {
        sub_100007778(v3, &qword_1000290F0);
        v19 = sub_10001DBCC(v33, i, v5);
        v21 = v3;
        v22 = *v20;
        (v19)(v33, 0);
        *(v17 + 8 * i) = v22;
        v3 = v21;
      }
    }

    else
    {
      sub_10000F0A0(0, &qword_100038750, UIAction_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_1000200EC();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t PPXContextMenuProvider.showShareSheet(with:for:)()
{
  sub_10001FF2C();
  *(v0 + 16) = sub_10001FF1C();
  v2 = sub_10001FF0C();

  return _swift_task_switch(sub_100018BD4, v2, v1);
}

uint64_t sub_100018BD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_10001FF2C();
  v3[4] = sub_10001FF1C();
  v5 = sub_10001FF0C();

  return _swift_task_switch(sub_100018E60, v5, v4);
}

uint64_t sub_100018E60()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v0[6] = sub_10001FF1C();
  v5 = sub_10001FF0C();

  return _swift_task_switch(sub_100018F00, v5, v4);
}

uint64_t sub_100018F00()
{
  v2 = v0[5];
  v1 = v0[6];

  v2[2](v2);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

id PPXContextMenuProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PPXContextMenuProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *PPXContextMenuProvider.computeSwipeActionItems(with:for:swipeActionType:assetID:)(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a5;
  v127 = a4;
  v115 = a2;
  v116 = a3;
  v125 = a1;
  v126 = sub_10001F74C();
  v120 = *(v126 - 8);
  v5 = *(v120 + 64);
  v6 = __chkstk_darwin(v126);
  v118 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v123 = &v115 - v8;
  v9 = sub_10001F82C();
  v124 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007778(&qword_100038658, &qword_100028FB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  *&v129 = &v115 - v16;
  v17 = type metadata accessor for PPXContextActionData();
  v128 = *(v17 - 8);
  v18 = *(v128 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v115 - v22;
  v23 = BSUIGetLibraryItemStateProvider();
  *(&v141 + 1) = v9;
  *&v142 = &protocol witness table for MenuCoverImageProvider;
  v24 = sub_10000F2CC(&v140);
  sub_10001F81C();
  v25 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *v21 = v25;
  v26 = *(v17 + 20);
  v27 = enum case for ContextActionSource.unknown(_:);
  v28 = sub_10001F75C();
  (*(*(v28 - 8) + 104))(v21 + v26, v27, v28);
  v29 = v21 + *(v17 + 24);
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  *(v21 + *(v17 + 28)) = 0;
  v30 = v125;
  *(v21 + *(v17 + 32)) = v125;
  *(v21 + *(v17 + 36)) = v23;
  sub_100007F08(&v140, v21 + *(v17 + 40));
  v122 = type metadata accessor for PPXContextAssetInfo();
  v31 = swift_allocObject();
  (*(v10 + 16))(v13, v24, v124);
  v32 = v30;
  swift_unknownObjectRetain();
  v33 = sub_10001DC54(v32, v23, v13, v31);
  if (v33)
  {
    v34 = v33;
    v125 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_58:
      v25 = sub_10001B834(0, *(v25 + 16) + 1, 1, v25, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    v35 = v119;
    v37 = v128;
    v36 = v129;
    v39 = *(v25 + 16);
    v38 = *(v25 + 24);
    if (v39 >= v38 >> 1)
    {
      v25 = sub_10001B834((v38 > 1), v39 + 1, 1, v25, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    sub_100007F6C(&v140);
    *(&v138 + 1) = v122;
    *&v139 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo);
    *&v137 = v34;
    *(v25 + 16) = v39 + 1;
    sub_100008050(&v137, v25 + 40 * v39 + 32);
    *v21 = v25;
    sub_10001E678(v21, v36);
    v40 = 0;
    v25 = v35;
    v32 = v125;
  }

  else
  {
    sub_100007F6C(&v140);
    sub_10001E5E4(v21);
    v40 = 1;
    v25 = v119;
    v37 = v128;
    v36 = v129;
  }

  (*(v37 + 56))(v36, v40, 1, v17);
  v41 = (*(v37 + 48))(v36, 1, v17);
  v42 = v127;
  if (v41 != 1)
  {
    v48 = v117;
    v49 = sub_10001E678(v36, v117);
    v34 = v121;
    v50 = *(v121 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_swipeActionItems);
    __chkstk_darwin(v49);
    v51 = v115;
    *(&v115 - 4) = v48;
    *(&v115 - 3) = v51;
    *(&v115 - 2) = v32;
    *(&v115 - 1) = v34;
    v21 = 0;
    v53 = sub_100017838(sub_10001F094, (&v115 - 6), v52);
    __chkstk_darwin(v53);
    *(&v115 - 2) = v116;
    v55 = sub_10001A10C(sub_10001E6DC, (&v115 - 4), v54);
    v56 = 0;
    v57 = (v34 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider);
    v121 = (v55 + 32);
    v122 = v55;
    v128 = *(v55 + 16);
    v124 = (v34 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider);
    v125 = (v120 + 8);
    while (1)
    {
      v59 = 0uLL;
      v60 = v128;
      v61 = 0uLL;
      v62 = 0uLL;
      if (v56 != v128)
      {
        if (v56 >= *(v122 + 16))
        {
          goto LABEL_54;
        }

        v60 = v56 + 1;
        *&v137 = v56;
        sub_100007F08(&v121[5 * v56], &v137 + 8);
        v59 = v137;
        v61 = v138;
        v62 = v139;
      }

      v140 = v59;
      v141 = v61;
      v142 = v62;
      if (!v62)
      {
        sub_10001E5E4(v117);
        return v122;
      }

      v129 = v59;
      sub_100008050((&v140 + 8), &v137);
      swift_beginAccess();
      v63 = v57[4];
      sub_100007FB8(v57, v57[3]);
      if (!*(sub_10001F5FC() + 16))
      {
        break;
      }

      sub_10001BB6C(v42, v25);
      if ((v64 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      swift_beginAccess();
      v65 = v57[4];
      sub_10001E6FC(v57, v57[3]);
      v21 = sub_10001F5EC();
      v34 = v66;
      v17 = sub_10001A284(v131, v42, v25);
      if (*v67)
      {
        v68 = v67;
        v69 = v21;
        v120 = v60;
        sub_100007FB8(&v137, *(&v138 + 1));
        v70 = v118;
        sub_10001F64C();
        v71 = sub_10001F72C();
        v21 = v72;
        (*v125)(v70, v126);
        v73 = *v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = *v68;
        v34 = v130;
        *v68 = 0x8000000000000000;
        v76 = sub_10001BB6C(v71, v21);
        v77 = v34[2];
        v78 = (v75 & 1) == 0;
        v79 = v77 + v78;
        if (__OFADD__(v77, v78))
        {
          goto LABEL_56;
        }

        v25 = v75;
        if (v34[3] >= v79)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v75 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = &v130;
            sub_10001D054();
            if ((v25 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_10001C060(v79, isUniquelyReferenced_nonNull_native);
          v34 = v130;
          v80 = sub_10001BB6C(v71, v21);
          if ((v25 & 1) != (v81 & 1))
          {
            goto LABEL_59;
          }

          v76 = v80;
          if ((v25 & 1) == 0)
          {
LABEL_29:
            v82 = v130;
            v130[(v76 >> 6) + 8] |= 1 << v76;
            v83 = (v82[6] + 16 * v76);
            *v83 = v71;
            v83[1] = v21;
            *(v82[7] + 8 * v76) = v129;
            v84 = v82[2];
            v85 = __OFADD__(v84, 1);
            v86 = v84 + 1;
            if (v85)
            {
              goto LABEL_57;
            }

            v82[2] = v86;
LABEL_45:
            v113 = *v68;
            *v68 = v82;

            (v17)(v131, 0);
            v69(v133, 0);
            swift_endAccess();
            v25 = v119;
            v60 = v120;
            v42 = v127;
LABEL_16:
            v57 = v124;
            goto LABEL_17;
          }
        }

        v82 = v130;
        *(v130[7] + 8 * v76) = v129;
        goto LABEL_45;
      }

      (v17)(v131, 0);
      (v21)(v133, 0);
      swift_endAccess();
LABEL_17:
      sub_100007F6C(&v137);
      v56 = v60;
    }

    swift_endAccess();

    sub_100007FB8(&v137, *(&v138 + 1));
    v17 = v25;

    v87 = v123;
    sub_10001F64C();
    v88 = sub_10001F72C();
    v90 = v89;
    (*v125)(v87, v126);
    v134 = v88;
    v135 = v90;
    v136 = v129;
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v25 = sub_10002011C();

    v21 = v134;
    v91 = v135;
    v92 = v136;

    v34 = v25;
    v93 = sub_10001BB6C(v21, v91);
    if (v94)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    *(v25 + 8 * (v93 >> 6) + 64) |= 1 << v93;
    v95 = (*(v25 + 48) + 16 * v93);
    *v95 = v21;
    v95[1] = v91;
    *(*(v25 + 56) + 8 * v93) = v92;
    v96 = *(v25 + 16);
    v85 = __OFADD__(v96, 1);
    v97 = v96 + 1;
    if (v85)
    {
      goto LABEL_52;
    }

    *(v25 + 16) = v97;

    sub_10000F1FC(&v134, &qword_100038678, &qword_100028FC8);
    swift_beginAccess();
    v21 = v57[3];
    sub_10001E6FC(v57, v21);
    v98 = sub_10001F5EC();
    v100 = v99;
    v101 = *v99;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v132 = *v100;
    v34 = v132;
    *v100 = 0x8000000000000000;
    v42 = v127;
    v103 = sub_10001BB6C(v127, v17);
    v105 = v34[2];
    v106 = (v104 & 1) == 0;
    v85 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    if (v85)
    {
      goto LABEL_53;
    }

    v21 = v104;
    if (v34[3] >= v107)
    {
      if ((v102 & 1) == 0)
      {
        v34 = &v132;
        v114 = v103;
        sub_10001D328();
        v103 = v114;
        v109 = v132;
        if ((v21 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_10001C5A4(v107, v102);
      v34 = v132;
      v103 = sub_10001BB6C(v42, v17);
      if ((v21 & 1) != (v108 & 1))
      {
LABEL_59:
        result = sub_10002016C();
        __break(1u);
        return result;
      }
    }

    v109 = v132;
    if ((v21 & 1) == 0)
    {
LABEL_39:
      v109[(v103 >> 6) + 8] |= 1 << v103;
      v110 = (v109[6] + 16 * v103);
      *v110 = v42;
      v110[1] = v17;
      *(v109[7] + 8 * v103) = v25;
      v111 = v109[2];
      v85 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v85)
      {
        goto LABEL_55;
      }

      v109[2] = v112;
      v25 = v17;
      goto LABEL_15;
    }

LABEL_14:
    v58 = v109[7];
    v34 = *(v58 + 8 * v103);
    *(v58 + 8 * v103) = v25;
    v25 = v17;

LABEL_15:
    *v100 = v109;
    v98(v133, 0);
    swift_endAccess();
    goto LABEL_16;
  }

  sub_10000F1FC(v36, &qword_100038658, &qword_100028FB8);
  if (qword_100037640 != -1)
  {
    swift_once();
  }

  v43 = sub_10001FBEC();
  sub_10001E640(v43, qword_100038640);
  v44 = sub_10001FBCC();
  v45 = sub_10001FF6C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Unable to instantiate ContextActionData", v46, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100019DAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v21[3] = type metadata accessor for PPXContextActionData();
  v21[4] = sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData);
  v13 = sub_10000F2CC(v21);
  sub_10001ECE4(a2, v13);
  v14 = *(a5 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph);
  v20[11] = &type metadata for PPXContextMenuPresentationContext;
  v20[12] = sub_10001ED48();
  v15 = swift_allocObject();
  v20[8] = v15;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;

  v16 = a4;
  v17 = [a3 ba_effectiveAnalyticsTracker];
  v18 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
  swift_beginAccess();
  sub_100007F08(a5 + v18, v20);
  a6[3] = v11;
  a6[4] = v12;
  sub_10000F2CC(a6);
  return sub_10001F63C();
}

uint64_t sub_100019F28(void *a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = sub_10001F6EC();
  v3 = *(v16[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v16[0]);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001F74C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  sub_100007FB8(a1, a1[3]);
  sub_10001F64C();
  sub_10001F70C();
  (*(v8 + 8))(v11, v7);
  LOBYTE(v12) = sub_10001F6DC();
  (*(v3 + 8))(v6, v16[0]);
  if (v12)
  {
    v13 = a1[4];
    sub_100007FB8(a1, a1[3]);
    v14 = sub_10001F62C();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10001A10C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = &_swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_100007F08(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100007F6C(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_100008050(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001CB50(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_10001CB50((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_100008050(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100007F6C(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

void (*sub_10001A284(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10001D7F0(v6, a2, a3);
  return sub_10001A30C;
}

void sub_10001A30C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PPXContextMenuProvider.contextMenuActionItems(with:for:)(void *a1, uint64_t a2)
{
  v102 = sub_100007778(&qword_100038688, &qword_100028FD0);
  v95 = *(v102 - 8);
  v5 = *(v95 + 64);
  v6 = __chkstk_darwin(v102);
  v101 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v95 - v8;
  v105 = sub_10001F74C();
  v99 = *(v105 - 8);
  v9 = *(v99 + 64);
  v10 = __chkstk_darwin(v105);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v95 - v12;
  v98 = v2;
  v14 = sub_100017190(a1, a2);
  v15 = v14;
  v16 = v14[2];
  if (v16)
  {
    v17 = 0;
    v18 = (v14 + 4);
    v19 = &_swiftEmptyArrayStorage;
    while (v17 < v15[2])
    {
      sub_100007F08(v18, &v109);
      sub_100007FB8(&v109, *(&v110 + 1));
      if (sub_10001F62C())
      {
        sub_100008050(&v109, &v106);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001CB50(0, v19[2] + 1, 1);
          v19 = v114;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          sub_10001CB50((v21 > 1), v22 + 1, 1);
          v19 = v114;
        }

        v19[2] = v22 + 1;
        sub_100008050(&v106, &v19[5 * v22 + 4]);
      }

      else
      {
        sub_100007F6C(&v109);
      }

      ++v17;
      v18 += 40;
      if (v16 == v17)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_75;
  }

  v19 = &_swiftEmptyArrayStorage;
LABEL_13:

  v23 = &_swiftEmptyDictionarySingleton;
  v114 = &_swiftEmptyDictionarySingleton;
  v104 = v19[2];
  if (v104)
  {
    v24 = 0;
    v25 = (v19 + 4);
    v26 = (v99 + 8);
    while (1)
    {
      if (v24 >= v19[2])
      {
        goto LABEL_76;
      }

      sub_100007F08(v25, &v109);
      sub_100007FB8(&v109, *(&v110 + 1));
      sub_10001F64C();
      v29 = sub_10001F72C();
      v31 = v30;
      (*v26)(v13, v105);
      sub_100008050(&v109, &v106);
      v32 = v114;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v113 = v32;
      v34 = sub_10001BB6C(v29, v31);
      v36 = v32[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_77;
      }

      v40 = v35;
      if (v32[3] < v39)
      {
        break;
      }

      if (v33)
      {
        goto LABEL_23;
      }

      v45 = v34;
      sub_10001D498();
      v34 = v45;
      if (v40)
      {
LABEL_15:
        v27 = v34;

        v23 = v113;
        v28 = (v113[7] + 40 * v27);
        sub_100007F6C(v28);
        sub_100008050(&v106, v28);
        goto LABEL_16;
      }

LABEL_24:
      v23 = v113;
      v113[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v23[6] + 16 * v34);
      *v42 = v29;
      v42[1] = v31;
      sub_100008050(&v106, v23[7] + 40 * v34);
      v43 = v23[2];
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_82;
      }

      v23[2] = v44;
LABEL_16:
      ++v24;
      v114 = v23;
      v25 += 40;
      if (v104 == v24)
      {
        goto LABEL_28;
      }
    }

    sub_10001C84C(v39, v33);
    v34 = sub_10001BB6C(v29, v31);
    if ((v40 & 1) != (v41 & 1))
    {
      goto LABEL_84;
    }

LABEL_23:
    if (v40)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_28:

  v46 = 1 << *(v23 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v23[8];
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v51 = &_swiftEmptyArrayStorage;
  if (v48)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = v23[v52 + 8];
    ++v50;
    if (v48)
    {
      v50 = v52;
      do
      {
LABEL_35:
        v53 = __clz(__rbit64(v48)) | (v50 << 6);
        v54 = (v23[6] + 16 * v53);
        v56 = *v54;
        v55 = v54[1];
        sub_100007F08(v23[7] + 40 * v53, &v110);
        *&v109 = v56;
        *(&v109 + 1) = v55;
        v106 = v109;
        v107[0] = v110;
        v107[1] = v111;
        v108 = v112;
        v57 = v109;

        sub_100007F6C(v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_10001B728(0, *(v51 + 2) + 1, 1, v51);
        }

        v59 = *(v51 + 2);
        v58 = *(v51 + 3);
        if (v59 >= v58 >> 1)
        {
          v51 = sub_10001B728((v58 > 1), v59 + 1, 1, v51);
        }

        v48 &= v48 - 1;
        *(v51 + 2) = v59 + 1;
        *&v51[16 * v59 + 32] = v57;
      }

      while (v48);
    }
  }

  v60 = sub_10001F6FC();

  v61 = sub_100017D4C(v60, &v114);
  v96 = 0;

  v62 = v61[2];
  v97 = v61;
  if (v62)
  {
    v63 = v61 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v64 = &_swiftEmptyArrayStorage;
    v65 = *(v95 + 72);
    while (1)
    {
      v66 = v100;
      sub_10000F25C(v63, v100, &qword_100038688, &qword_100028FD0);
      v67 = v66;
      v68 = v101;
      sub_10001E74C(v67, v101);
      v69 = *(v68 + *(v102 + 48));
      v70 = sub_10001F71C();
      (*(*(v70 - 8) + 8))(v68, v70);
      v71 = *(v69 + 16);
      v72 = v64[2];
      v73 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_79;
      }

      v74 = swift_isUniquelyReferenced_nonNull_native();
      if (v74 && v73 <= v64[3] >> 1)
      {
        if (!*(v69 + 16))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v72 <= v73)
        {
          v75 = v72 + v71;
        }

        else
        {
          v75 = v72;
        }

        v64 = sub_10001B834(v74, v75, 1, v64, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        if (!*(v69 + 16))
        {
LABEL_43:

          if (v71)
          {
            goto LABEL_80;
          }

          goto LABEL_44;
        }
      }

      if ((v64[3] >> 1) - v64[2] < v71)
      {
        goto LABEL_81;
      }

      sub_100007778(&qword_100038690, &qword_100028FD8);
      swift_arrayInitWithCopy();

      if (v71)
      {
        v76 = v64[2];
        v38 = __OFADD__(v76, v71);
        v77 = v76 + v71;
        if (v38)
        {
          goto LABEL_83;
        }

        v64[2] = v77;
      }

LABEL_44:
      v63 += v65;
      if (!--v62)
      {
        goto LABEL_59;
      }
    }
  }

  v64 = &_swiftEmptyArrayStorage;
LABEL_59:
  v104 = v64[2];
  if (v104)
  {
    v78 = 0;
    v79 = (v64 + 4);
    v80 = &_swiftEmptyArrayStorage;
    v81 = (v99 + 8);
    while (v78 < v64[2])
    {
      *&v109 = v78;
      sub_100007F08(v79, &v109 + 8);
      sub_100007FB8(&v109 + 1, v111);
      v82 = v103;
      sub_10001F64C();
      v83 = sub_10001F72C();
      v85 = v84;
      (*v81)(v82, v105);
      sub_10000F1FC(&v109, &qword_100038698, &qword_100028FE0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_10001B498(0, v80[2] + 1, 1, v80);
      }

      v87 = v80[2];
      v86 = v80[3];
      if (v87 >= v86 >> 1)
      {
        v80 = sub_10001B498((v86 > 1), v87 + 1, 1, v80);
      }

      v80[2] = v87 + 1;
      v88 = &v80[3 * v87];
      v88[5] = v85;
      v88[6] = v78;
      v88[4] = v83;
      v79 += 40;
      if (v104 == ++v78)
      {
        goto LABEL_69;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    sub_10002016C();
    __break(1u);
    goto LABEL_85;
  }

  v80 = &_swiftEmptyArrayStorage;
LABEL_69:

  if (v80[2])
  {
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v89 = sub_10002011C();
  }

  else
  {
    v89 = &_swiftEmptyDictionarySingleton;
  }

  v90 = v96;
  *&v109 = v89;

  sub_10001CCD8(v91, 1, &v109);
  if (!v90)
  {

    v92 = v98 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
    swift_beginAccess();
    v93 = *(v92 + 32);
    sub_10001E6FC(v92, *(v92 + 24));
    sub_10001F60C();
    swift_endAccess();

    return v97;
  }

LABEL_85:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10001ADDC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001F090;

  return v7();
}

uint64_t sub_10001AEC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100007384;

  return v8();
}

uint64_t sub_10001AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007778(&qword_1000386D8, &qword_100029038);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000F25C(a3, v25 - v11, &qword_1000386D8, &qword_100029038);
  v13 = sub_10001FF4C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F1FC(v12, &qword_1000386D8, &qword_100029038);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10001FF3C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_10001FF0C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_10001FE6C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000F1FC(a3, &qword_1000386D8, &qword_100029038);

    return v23;
  }

LABEL_8:
  sub_10000F1FC(a3, &qword_1000386D8, &qword_100029038);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10001B2A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B3A0;

  return v7(a1);
}

uint64_t sub_10001B3A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10001B498(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007778(&qword_1000386F8, &qword_1000290A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(&qword_100038678, &qword_100028FC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001B5E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007778(&qword_100038768, &qword_1000290F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(&qword_100038770, &unk_100029100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001B728(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007778(&qword_1000382E8, &qword_1000290C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001B834(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100007778(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10001B97C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007778(&qword_100038710, &qword_1000290B8);
  v10 = *(sub_100007778(&qword_100038688, &qword_100028FD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007778(&qword_100038688, &qword_100028FD0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10001BB6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002018C();
  sub_10001FE7C();
  v6 = sub_10002019C();

  return sub_10001BC28(a1, a2, v6);
}

unint64_t sub_10001BBE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002003C(*(v2 + 40));

  return sub_10001BCE0(a1, v4);
}

unint64_t sub_10001BC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10002014C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001BCE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001E7E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10002004C();
      sub_100015648(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001BDA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007778(&qword_100037ED8, &qword_1000285A0);
  v36 = a2;
  result = sub_10002010C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000CDF8(v25, v37);
      }

      else
      {
        sub_10000CD9C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10002018C();
      sub_10001FE7C();
      result = sub_10002019C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000CDF8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}