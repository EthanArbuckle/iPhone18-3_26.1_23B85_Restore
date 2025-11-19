void sub_1001845A8(uint64_t a1)
{
  v9 = [*(a1 + 32) _assetCacheForType:*(a1 + 48)];
  v2 = [v9 cachedAssets];
  v3 = [NSArray arrayWithArray:v2];

  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) bookletAssetCache];
    v5 = [v4 allBookletAssets];

    v6 = objc_retainBlock(*(a1 + 40));
    if (v6)
    {
      v7 = [v3 arrayByAddingObjectsFromArray:v5];
      v6[2](v6, v7, 0);
    }
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 40));
    v5 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v3, 0);
    }
  }
}

void sub_1001847A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetCacheForType:*(a1 + 56)];
  [v2 fetchBookCoverForAssetProperties:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_10018491C(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetCacheForType:*(a1 + 56)];
  [v2 deleteAssets:*(a1 + 40) exhaustive:*(a1 + 64) completion:*(a1 + 48)];
}

void sub_100184AB8(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 bookletAssetCache];
    v7 = [v4 bookletAssetForAssetID:*(a1 + 40)];

    v5 = objc_retainBlock(*(a1 + 56));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v7, 0);
    }
  }

  else
  {
    v7 = [v3 _assetCacheForType:*(a1 + 64)];
    [v7 assetForLibraryAsset:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void sub_100184CA8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observers];
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
        dispatch_group_enter(*(a1 + 40));
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100184E1C;
        v8[3] = &unk_100A033C8;
        v9 = *(a1 + 40);
        [v7 mediaLibraryCacheRequestsReload:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1001854BC(uint64_t a1)
{
  v2 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Media library changed. Handling MediaLibrary updates.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 _calcSyncAnchor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001855A4;
  v5[3] = &unk_100A09810;
  v5[4] = *(a1 + 32);
  [v3 dq_processChangesSince:v4 completion:v5];
}

void sub_1001855A4(uint64_t a1, void *a2, void *a3)
{
  v88 = a2;
  v83 = a3;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v107 = a1;
  obj = [*(a1 + 32) observers];
  v89 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (v89)
  {
    v87 = *v133;
    v98 = MPMediaItemPropertyBooklets;
    do
    {
      v5 = 0;
      do
      {
        if (*v133 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v92 = v5;
        v6 = *(*(&v132 + 1) + 8 * v5);
        v7 = [v88 added];
        v8 = [v7 allValues];

        v9 = [v88 removed];
        v10 = [v9 allValues];

        v11 = [v88 updated];
        v12 = [v11 allValues];

        if (objc_opt_respondsToSelector())
        {
          [v6 mediaLibraryCacheAddedCloudAssets:v8 updatedCloudAssets:v12 removedCloudAssets:v10];
        }

        if (objc_opt_respondsToSelector())
        {
          v90 = v12;
          v91 = v10;
          v85 = v6;
          v13 = objc_opt_new();
          v100 = objc_opt_new();
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v86 = v8;
          v101 = v8;
          v99 = v13;
          v105 = [v101 countByEnumeratingWithState:&v128 objects:v141 count:16];
          if (v105)
          {
            v103 = *v129;
            do
            {
              for (i = 0; i != v105; i = i + 1)
              {
                if (*v129 != v103)
                {
                  objc_enumerationMutation(v101);
                }

                v15 = *(*(&v128 + 1) + 8 * i);
                v16 = [v15 representativeItem];
                v17 = [v16 valueForProperty:v98];

                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v18 = v17;
                v19 = [v18 countByEnumeratingWithState:&v124 objects:v140 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v125;
                  do
                  {
                    for (j = 0; j != v20; j = j + 1)
                    {
                      if (*v125 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v124 + 1) + 8 * j);
                      v24 = *(v107 + 32);
                      v25 = [v24 cloudAssetCache];
                      v26 = [v25 dataSourceIdentifier];
                      [v24 dq_processAndCacheBookletItem:v23 parentItem:v15 dataSourceIdentifier:v26];
                    }

                    v20 = [v18 countByEnumeratingWithState:&v124 objects:v140 count:16];
                  }

                  while (v20);
                }

                v27 = [*(v107 + 32) bookletAssetCache];
                v28 = [v15 assetID];
                v29 = [v27 bookletAssetsForParentAssetID:v28];
                v13 = v99;
                [v99 addObjectsFromArray:v29];
              }

              v105 = [v101 countByEnumeratingWithState:&v128 objects:v141 count:16];
            }

            while (v105);
          }

          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v30 = v91;
          v31 = [v30 countByEnumeratingWithState:&v120 objects:v139 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v121;
            do
            {
              for (k = 0; k != v32; k = k + 1)
              {
                if (*v121 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v120 + 1) + 8 * k);
                v36 = [*(v107 + 32) bookletAssetCache];
                v37 = [v35 assetID];
                v38 = [v36 popBookletAssetsForParentAssetID:v37];
                [v100 addObjectsFromArray:v38];
              }

              v32 = [v30 countByEnumeratingWithState:&v120 objects:v139 count:16];
            }

            while (v32);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v93 = v90;
          v95 = [v93 countByEnumeratingWithState:&v116 objects:v138 count:16];
          if (v95)
          {
            v94 = *v117;
            do
            {
              v39 = 0;
              do
              {
                if (*v117 != v94)
                {
                  objc_enumerationMutation(v93);
                }

                v97 = v39;
                v40 = *(*(&v116 + 1) + 8 * v39);
                v41 = [*(v107 + 32) bookletAssetCache];
                v42 = [v40 assetID];
                v43 = [v41 bookletAssetsForParentAssetID:v42];

                v96 = v43;
                v44 = [v43 valueForKey:@"storeID"];
                v45 = [v44 bu_arrayByRemovingNSNulls];
                v46 = [NSSet setWithArray:v45];

                v102 = v40;
                v47 = [v40 representativeItem];
                v48 = [v47 valueForProperty:v98];

                v49 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v48, "count")}];
                v112 = 0u;
                v113 = 0u;
                v114 = 0u;
                v115 = 0u;
                v106 = v48;
                v50 = [v106 countByEnumeratingWithState:&v112 objects:v137 count:16];
                v104 = v49;
                if (v50)
                {
                  v51 = v50;
                  v52 = *v113;
                  do
                  {
                    for (m = 0; m != v51; m = m + 1)
                    {
                      if (*v113 != v52)
                      {
                        objc_enumerationMutation(v106);
                      }

                      v54 = *(*(&v112 + 1) + 8 * m);
                      v55 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v54 storeItemID]);
                      v56 = [v55 stringValue];
                      if (([v46 containsObject:v56] & 1) == 0)
                      {
                        v57 = *(v107 + 32);
                        v58 = [v57 cloudAssetCache];
                        v59 = [v58 dataSourceIdentifier];
                        [v57 dq_processAndCacheBookletItem:v54 parentItem:v102 dataSourceIdentifier:v59];

                        v49 = v104;
                      }

                      [v49 addObject:v56];
                    }

                    v51 = [v106 countByEnumeratingWithState:&v112 objects:v137 count:16];
                  }

                  while (v51);
                }

                v60 = [v46 mutableCopy];
                [v60 minusSet:v49];
                v61 = [*(v107 + 32) bookletAssetCache];
                v62 = [v102 assetID];
                v63 = [v61 popBookletAssetsWithAssetIDs:v60 forParentAssetID:v62];
                [v100 addObjectsFromArray:v63];

                v64 = [*(v107 + 32) bookletAssetCache];
                v65 = [v102 assetID];
                v66 = [v64 bookletAssetsForParentAssetID:v65];

                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v67 = v66;
                v68 = [v67 countByEnumeratingWithState:&v108 objects:v136 count:16];
                v13 = v99;
                if (v68)
                {
                  v69 = v68;
                  v70 = *v109;
                  do
                  {
                    for (n = 0; n != v69; n = n + 1)
                    {
                      if (*v109 != v70)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v72 = *(*(&v108 + 1) + 8 * n);
                      v73 = [v72 storeID];
                      v74 = [v46 containsObject:v73];

                      if ((v74 & 1) == 0)
                      {
                        [v99 addObject:v72];
                      }
                    }

                    v69 = [v67 countByEnumeratingWithState:&v108 objects:v136 count:16];
                  }

                  while (v69);
                }

                v39 = v97 + 1;
              }

              while ((v97 + 1) != v95);
              v95 = [v93 countByEnumeratingWithState:&v116 objects:v138 count:16];
            }

            while (v95);
          }

          v6 = v85;
          [v85 mediaLibraryCacheAddedBookletAssets:v13 removedBookletAssets:v100];

          v8 = v86;
          v12 = v90;
          v10 = v91;
        }

        if (objc_opt_respondsToSelector())
        {
          v75 = [v83 added];
          v76 = [v75 allValues];
          [v83 updated];
          v78 = v77 = v8;
          [v78 allValues];
          v80 = v79 = v6;
          v81 = [v83 removed];
          v82 = [v81 allValues];
          [v79 mediaLibraryCacheAddedLocalAssets:v76 updatedLocalAssets:v80 removedLocalAssets:v82];

          v8 = v77;
        }

        v5 = v92 + 1;
      }

      while ((v92 + 1) != v89);
      v89 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
    }

    while (v89);
  }
}

void sub_100186570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 entity];
  objc_opt_class();
  v6 = BUDynamicCast();
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    if (!v6)
    {
LABEL_13:
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = [v7 bk_localStoreBookAlbumForItem];
    v6 = v10;
    if (!v10)
    {
LABEL_14:
      if (([v8 mediaType] & 4) != 0)
      {
        v12 = *(a1 + 32);
        v26 = v8;
        v13 = [NSArray arrayWithObjects:&v26 count:1];
        v14 = [v12 _processAudiobookCollection:v13 fromMediaLibraryChangedNotification:1];

        v15 = BKLibraryDataSourceMediaLibraryLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 0;
            v17 = "individual item is local";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
            goto LABEL_24;
          }

          goto LABEL_24;
        }

        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "individual item is not local", buf, 2u);
        }
      }

      goto LABEL_28;
    }

    v11 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "using local album collection", buf, 2u);
    }
  }

  if (([v6 mediaTypes] & 4) == 0)
  {
    goto LABEL_13;
  }

  v18 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v6 items];
    v20 = [v19 count];
    *buf = 134217984;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "collection with %lu items", buf, 0xCu);
  }

  v21 = *(a1 + 32);
  v22 = [v6 items];
  LODWORD(v21) = [v21 _processAudiobookCollection:v22 fromMediaLibraryChangedNotification:1];

  if (v21)
  {
    v15 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "all items local";
      goto LABEL_23;
    }

LABEL_24:

    [*(a1 + 40) addObject:v3];
  }

LABEL_28:
  v23 = [v3 anchor];
  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  objc_autoreleasePoolPop(v4);
}

id sub_100187BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [v2 setUserInteractionEnabled:1];

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 40) setAlpha:*(a1 + 56)];
  v3 = *(a1 + 40);
  v4 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v4;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:v6];
  return [*(a1 + 48) completeTransition:1];
}

id sub_100187C74(uint64_t a1)
{
  [*(a1 + 40) zoomFactor];
  v3 = v2;
  [*(a1 + 40) zoomFactor];
  CGAffineTransformMakeScale(&v8, v3, v4);
  v5 = *(a1 + 32);
  v7 = v8;
  return [v5 setTransform:&v7];
}

void sub_100188008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001880E0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF77B0;
  qword_100AF77B0 = v1;
}

void sub_100188874(id *a1)
{
  v2 = [a1[4] _sceneManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100188948;
  v6[3] = &unk_100A03C78;
  v3 = a1[4];
  v4 = a1[5];
  v7 = v2;
  v8 = v3;
  v9 = a1[6];
  v10 = a1[5];
  v5 = v2;
  [v5 forceTransaction:v4 ontoPrimarySceneWithContinuation:v6];
}

void sub_100188948(uint64_t a1)
{
  v2 = [*(a1 + 32) primarySceneController];
  v3 = [v2 primaryScenePresenting];

  [*(a1 + 40) _showStoreWithURL:*(a1 + 48) tabBarIdentifier:0 transaction:*(a1 + 56) presentingDelegate:v3];
}

void sub_100188AD8(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100188BCC;
  v8[3] = &unk_100A039C0;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  *&v6 = a1[6];
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[8];
  [v3 presenterDismissAllModalControllersAnimated:1 completion:v8];
}

void sub_100188BCC(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100188CBC;
  v8[3] = &unk_100A039C0;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  *&v6 = a1[6];
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[8];
  [v3 commit:v8];
}

void sub_100188CBC(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100188DA4;
  v8[3] = &unk_100A039C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v10 = v7;
  v9 = v6;
  v11 = *(a1 + 32);
  [v2 presenterFinishModalTransitionsWithCompletion:v8];
}

void sub_100188DA4(id *a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100188E90;
  v9[3] = &unk_100A039C0;
  v2 = a1 + 6;
  v3 = a1[4];
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[4];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = a1[8];
  [v3 commit:v9];
}

void sub_100188E90(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v9 = +[JSABridge sharedInstance];
    v2 = [v9 environment];
    v3 = [*(a1 + 32) underlyingURL];
    v4 = [*(a1 + 32) referrerURLString];
    v5 = [*(a1 + 32) referrerApplicationName];
    v6 = [*(a1 + 40) _optionsForTransaction:*(a1 + 48)];
    [v2 openURL:v3 referrerURL:v4 referrerApplicationName:v5 options:v6];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = +[BKRootBarItemsProvider BooksIdentifier];
    }

    v9 = v8;
    [*(a1 + 64) presenterSelectTabWithIdentifier:v8];
  }
}

void sub_100189008(id a1, BKPrimarySceneControlling *a2)
{
  v3 = [(BKPrimarySceneControlling *)a2 primaryScenePresenting];
  v2 = +[BKRootBarItemsProvider SearchIdentifier];
  [v3 presenterSelectTabWithIdentifier:v2];
}

void sub_100189330(uint64_t a1)
{
  v2 = [*(a1 + 32) primarySceneController];
  v3 = [v2 primaryScenePresenting];

  [*(a1 + 40) _showStoreWithURL:0 tabBarIdentifier:*(a1 + 48) transaction:*(a1 + 56) presentingDelegate:v3];
}

void sub_1001894DC(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 isConnectedToInternet];

  if (v3)
  {
    if ([*(a1 + 32) bc_hasLegacyBookStoreScheme])
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);

      [v4 showStoreWithURL:v5 transaction:v6];
    }

    else
    {
      v9 = *(a1 + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100189640;
      v16[3] = &unk_100A05178;
      v15 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 32);
      *&v13 = v11;
      *(&v13 + 1) = v12;
      *&v14 = v15;
      *(&v14 + 1) = v10;
      v17 = v14;
      v18 = v13;
      [v9 bc_isStoreURLWithCompletion:v16];
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);

    [v7 displayInternetReachabilityErrorAlert:1 transaction:v8];
  }
}

void sub_100189640(uint64_t a1, char a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018979C;
  v11[3] = &unk_100A04AC8;
  v14 = a2;
  v8 = *(a1 + 32);
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v12 = v8;
  v13 = v6;
  v7 = objc_retainBlock(v11);
  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      (v7[2])(v7);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100189834;
      block[3] = &unk_100A03920;
      v10 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_10018979C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    [v2 showStoreWithURL:v3 transaction:v4];
  }

  else
  {
    v5 = +[UIApplication sharedApplication];
    [v5 openURL:*(a1 + 56) options:&__NSDictionary0__struct completionHandler:0];
  }
}

void sub_100189B60(uint64_t a1, uint64_t a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100189C94;
  v10[3] = &unk_100A09918;
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 72);
  v14 = *(a1 + 32);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  [v3 commit:v10];
}

id sub_100189C94(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189DCC;
    v9[3] = &unk_100A098F0;
    v14 = v2;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *&v6 = *(a1 + 56);
    *(&v6 + 1) = *(a1 + 64);
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v10 = v7;
    v11 = v6;
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    [v3 appLaunchCoordinatorOnConditionMask:32 blockID:@"handle StoreURL" performBlock:v9];
  }

  else
  {
    [*(a1 + 64) _storeCheckConnectionAndShowStoreURL:*(a1 + 40) sourceApplication:*(a1 + 48) annotation:*(a1 + 56) transaction:*(a1 + 72)];
  }

  return [*(a1 + 88) invalidate];
}

void sub_100189DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 80) & 2) != 0)
    {
      v6 = +[JSABridge sharedInstance];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100189F88;
      v16[3] = &unk_100A098C8;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *&v9 = *(a1 + 48);
      *(&v9 + 1) = *(a1 + 56);
      *&v10 = v7;
      *(&v10 + 1) = v8;
      v17 = v10;
      v18 = v9;
      v19 = *(a1 + 64);
      [v6 enqueueBlock:v16 file:@"BKJSStoreFlowController.m" line:302];

      v5 = v17;
    }

    else
    {
      v3 = objc_alloc_init(SKStoreProductViewController);
      [v3 setDelegate:*(a1 + 56)];
      v4 = *(a1 + 32);
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_10018A080;
      v14 = &unk_100A03520;
      v15 = v3;
      v5 = v3;
      [v5 loadProductWithURL:v4 completionBlock:&v11];
      [*(a1 + 72) presenterShowModalController:v5 animated:1 completion:{0, v11, v12, v13, v14}];
    }
  }
}

void sub_100189F88(uint64_t a1)
{
  v8 = [BSUIURL URLWithURL:*(a1 + 32) sourceApplication:*(a1 + 40) annotation:*(a1 + 48)];
  v2 = +[JSABridge sharedInstance];
  v3 = [v2 environment];
  v4 = [v8 underlyingURL];
  v5 = [v8 referrerURLString];
  v6 = [v8 referrerApplicationName];
  v7 = [*(a1 + 56) _optionsForTransaction:*(a1 + 64)];
  [v3 openURL:v4 referrerURL:v5 referrerApplicationName:v6 options:v7];
}

id *sub_10018A080(id *result, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    return [result[4] dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_10018A1CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Apple Books couldn’t connect to the Book Store. Check your Internet connection, then try again.";
  }

  else
  {
    v5 = @"Apple Books couldn’t connect to iCloud. Check your Internet connection, then try again.";
  }

  v15 = [v3 localizedStringForKey:v5 value:&stru_100A30A68 table:0];

  v6 = +[BCDevice deviceClass];
  v7 = @"Your device is Offline";
  if (v6 == 3)
  {
    v7 = @"Your iPad is Offline";
  }

  if (v6 == 1)
  {
    v8 = @"Your iPhone is Offline";
  }

  else
  {
    v8 = v7;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:v8 value:&stru_100A30A68 table:0];

  v11 = [UIAlertController alertControllerWithTitle:v10 message:v15 preferredStyle:1];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v11 addAction:v14];

  [*(a1 + 32) presenterShowAlertController:v11 animated:1];
}

void sub_10018A4A8(uint64_t a1)
{
  if (*(a1 + 40) - 1 > 5)
  {
    v2 = @"This item can’t be downloaded.";
  }

  else
  {
    v2 = off_100A09960[(*(a1 + 40) - 1)];
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_100A30A68 table:0];

  v5 = +[NSBundle mainBundle];
  v10 = [v5 localizedStringForKey:@"Apple Books isn’t connected to the internet." value:&stru_100A30A68 table:0];

  v6 = [UIAlertController alertControllerWithTitle:v4 message:v10 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  [*(a1 + 32) presenterShowAlertController:v6 animated:1];
}

void sub_10018A768(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Apple Books couldn’t connect to the Book Store. Check your Internet connection, then try again.";
  }

  else
  {
    v5 = @"Apple Books couldn’t connect to iCloud. Check your Internet connection, then try again.";
  }

  v12 = [v3 localizedStringForKey:v5 value:&stru_100A30A68 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Couldn’t Connect" value:&stru_100A30A68 table:0];

  v8 = [UIAlertController alertControllerWithTitle:v7 message:v12 preferredStyle:1];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  [*(a1 + 32) presenterShowAlertController:v8 animated:1];
}

void sub_10018ABD4(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v7 = [v2 localizedStringForKey:@"This book is unavailable." value:&stru_100A30A68 table:0];

  v3 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:0];
  [v3 addAction:v6];

  [*(a1 + 32) presenterShowAlertController:v3 animated:1];
}

void sub_10018AE68(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018AF54;
  block[3] = &unk_100A03A30;
  v6 = v2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_10018AF54(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryItemStateProvider];
  v3 = [v2 stateCenter];

  v4 = [v3 provider];
  v5 = [v4 itemStateWithIdentifier:*(a1 + 40)];

  v6 = [v3 mapItemState:v5];
  v7 = +[JSABridge sharedInstance];
  v8 = v7;
  v9 = *(a1 + 48);
  if (v6)
  {
    v11 = v6;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v8 enqueueValueCall:v9 arguments:v10 file:@"BKScriptQueryableLibraryItemStateWorker.m" line:28];
  }

  else
  {
    [v7 enqueueValueCall:v9 arguments:0 file:@"BKScriptQueryableLibraryItemStateWorker.m" line:28];
  }
}

void sub_10018BA7C(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_10018BE84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10018BEA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained shouldHandleTapIfPossible])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10018BF68;
      v6[3] = &unk_100A03440;
      v7 = v3;
      v8 = v5;
      [v5 handleTapWithCompletion:v6];
    }

    else if (v3)
    {
      [v3 setUserInteractionEnabled:1];
    }
  }
}

id sub_10018BF68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setUserInteractionEnabled:1];
  }

  v3 = *(a1 + 40);

  return [v3 setHighlighted:0 completion:0];
}

void sub_10018BFB4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10018C088;
    v5[3] = &unk_100A052E0;
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    [v3 animateCoverPressed:0 completion:v5];
  }

  else
  {
    v4 = *(a1 + 40);

    [v4 setUserInteractionEnabled:1];
  }
}

void sub_10018C2D4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 backgroundConfigurationForState:v5 isInEditMode:{objc_msgSend(v6, "isInEditMode")}];

  [v6 setBackgroundConfiguration:v7];
}

void sub_10018CA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018CA74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkTimeoutForOngoingMigrationAttempt];
  v4 = objc_retainBlock(v3);

  if (v4)
  {
    v4[2](v4);
  }
}

void sub_10018CC08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v5);
  }

  v8 = [*(a1 + 32) migrationQueue];
  dispatch_resume(v8);

  v9 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "makeAllUbiquitousBooksLocalWithCompletion end (completion called and migration queue resumed)", v10, 2u);
  }
}

void sub_10018CCD0(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationQueue];
  dispatch_suspend(v2);

  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "makeAllUbiquitousBooksLocalWithCompletion begin", buf, 2u);
  }

  v4 = [*(a1 + 32) ubiquityStatusMonitor];
  v5 = [v4 isICloudDriveEnabled];

  if (v5)
  {
    v6 = [*(a1 + 32) bookOperationsQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018CE3C;
    v10[3] = &unk_100A03788;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [v6 addOperationWithBlock:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 40));
    if (v8)
    {
      v9 = [*(a1 + 32) p_generateUbiquityNotEnabledError];
      v8[2](v8, 0, v9);
    }
  }
}

void sub_10018CE3C(uint64_t a1)
{
  v2 = [*(a1 + 32) ubiquitousBooksPlistHost];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018CEE0;
  v4[3] = &unk_100A05E68;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchAllUbiquitousBooksWithCompletion:v4];
}

void sub_10018CEE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ubiquityEligibleBooksProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018CFAC;
  v7[3] = &unk_100A04200;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 makeBooksLocal:v6 completion:v7];
}

void sub_10018CFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) bookOperationsQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018D094;
  v10[3] = &unk_100A03440;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  [v6 addOperationWithBlock:v10];

  v8 = objc_retainBlock(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2, v5);
  }
}

void sub_10018D160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10018D1F0;
  v2[3] = &unk_100A08EF8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _makeAllEligibleLocalBooksUbiquitousWithCompletion:v2];
}

void sub_10018D1F0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) _leaveOngoingMigrateAllAttempt];
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10018D384(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v5);
  }

  v8 = [*(a1 + 32) migrationQueue];
  dispatch_resume(v8);

  v9 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "makeAllEligibleLocalBooksUbiquitousWithCompletion end (completion called and migration queue resumed)", v10, 2u);
  }
}

void sub_10018D44C(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationQueue];
  dispatch_suspend(v2);

  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "makeAllEligibleLocalBooksUbiquitousWithCompletion begin", buf, 2u);
  }

  v4 = [*(a1 + 32) ubiquityStatusMonitor];
  if ([v4 isICloudDriveEnabled])
  {
    v5 = [*(a1 + 32) initialMetadataQueryWasHandled];

    if (v5)
    {
      v6 = [*(a1 + 32) bookOperationsQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10018D5C8;
      v10[3] = &unk_100A03788;
      v7 = *(a1 + 40);
      v10[4] = *(a1 + 32);
      v11 = v7;
      [v6 addOperationWithBlock:v10];

      return;
    }
  }

  else
  {
  }

  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    v9 = [*(a1 + 32) p_generateUbiquityNotEnabledError];
    v8[2](v8, 0, v9);
  }
}

void sub_10018D5C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10018D658;
  v2[3] = &unk_100A05E68;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v2];
}

void sub_10018D658(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [*(a1 + 32) bookOperationsQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018D770;
    v10[3] = &unk_100A049A0;
    v10[4] = *(a1 + 32);
    v11 = v5;
    v12 = *(a1 + 40);
    [v7 addOperationWithBlock:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, v6);
    }
  }
}

void sub_10018D770(uint64_t a1)
{
  [*(a1 + 32) boq_addPendingUploadQuotaCompensationForAssets:*(a1 + 40)];
  v2 = [*(a1 + 32) ubiquitousBooksPlistHost];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018D828;
  v4[3] = &unk_100A06300;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 makeBooksUbiquitous:v3 completion:v4];
}

void sub_10018D828(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 1, v6);
  }
}

void sub_10018D958(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10018D9E8;
  v2[3] = &unk_100A03788;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _migrateBooksToUbiquityIfNeededWithCompletion:v2];
}

void sub_10018D9E8(uint64_t a1)
{
  [*(a1 + 32) _leaveOngoingMigrateAllAttempt];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10018DCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10018DD14(uint64_t a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100792934(a1, v2);
  }

  return [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

void sub_10018DD70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
  v7 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_fetchAllLocalBooksEligibleToBeMadeUbiquitous - END background task: %lu", &v11, 0xCu);
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v5, v6);
  }
}

void sub_10018DFDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [v13 url];
          v15 = [v13 assetID];
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        v20 = 0;
        do
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * v20);
          v22 = [v21 assetID];
          v23 = [v7 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = *(a1 + 32);
            v25 = [v21 url];
            [v24 p_updateCachedURLsFrom:v23 to:v25];
          }

          else
          {
            sub_1007929B8();
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v26 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
        v18 = v26;
      }

      while (v26);
    }

    v5 = v31;
  }

  v27 = objc_retainBlock(*(a1 + 40));
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27);
  }

  v29 = [*(a1 + 32) migrationQueue];
  dispatch_resume(v29);

  v30 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "migrateBooksToUbiquityIfNeededWithCompletion end (completion called and migration queue resumed)", buf, 2u);
  }
}

void sub_10018E2C8(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationQueue];
  dispatch_suspend(v2);

  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "migrateBooksToUbiquityIfNeededWithCompletion begin", buf, 2u);
  }

  v4 = [*(a1 + 32) ubiquityStatusMonitor];
  if ([v4 isICloudDriveEnabled])
  {
    v5 = [*(a1 + 32) initialMetadataQueryWasHandled];

    if (v5)
    {
      v6 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10018E420;
      v9[3] = &unk_100A05E68;
      v9[4] = v6;
      v10 = *(a1 + 40);
      [v6 _fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v9];

      return;
    }
  }

  else
  {
  }

  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void sub_10018E420(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = +[BKLibraryManager defaultManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018E5B4;
    v10[3] = &unk_100A04C28;
    v10[4] = *(a1 + 32);
    v11 = v5;
    v12 = *(a1 + 40);
    [v7 performBackgroundReadOnlyBlock:v10];
  }

  else
  {
    v8 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No assets eligible to be migrated error: (%@)", buf, 0xCu);
    }

    v9 = objc_retainBlock(*(a1 + 40));
    v7 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

void sub_10018E5B4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sortedAssetsFromEligibleAssets:*(a1 + 40) moc:a2];
  v4 = [*(a1 + 32) bookOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018E690;
  v7[3] = &unk_100A049A0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

void sub_10018E690(uint64_t a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) valueForKey:@"assetID"];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fetching quota while migrating assetIDs [%@]", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018E7D8;
  v6[3] = &unk_100A083C8;
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [v4 boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:v5 completion:v6];
}

void sub_10018E7D8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, *(a1 + 32), v5);
  }
}

void sub_10018EA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018EA88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018EB28;
  v5[3] = &unk_100A09A80;
  v5[4] = v1;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 _migrateBookToUbiquity:v2 completion:v5];
}

void sub_10018EB28(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) _removeAssetIDsForOngoingMigrationAttempt:*(*(*(a1 + 48) + 8) + 40)];
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

void sub_10018ED18(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = [a1[5] url];
    v9 = [v5 url];
    [v7 p_updateCachedURLsFrom:v8 to:v9];
  }

  v10 = objc_retainBlock(a1[6]);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }

  v12 = [a1[4] migrationQueue];
  dispatch_resume(v12);

  v13 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BKUbiquitousDocumentsController: migrateBookToUbiquity complete.  Migration queue resumed.", v14, 2u);
  }
}

void sub_10018EE30(id *a1)
{
  v2 = [a1[4] migrationQueue];
  dispatch_suspend(v2);

  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKUbiquitousDocumentsController: migrateBookToUbiquity: %@", buf, 0xCu);
  }

  v5 = [a1[4] ubiquityStatusMonitor];
  v6 = [v5 isICloudDriveEnabled];

  if (v6)
  {
    v7 = [a1[4] ubiquityEligibleBooksProvider];
    v8 = [a1[5] assetID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018F038;
    v12[3] = &unk_100A05AC8;
    v12[4] = a1[4];
    v14 = a1[6];
    v13 = a1[5];
    [v7 fetchLocalAssetWithID:v8 completion:v12];
  }

  else
  {
    v9 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKUbiquitousDocumentsController: iCloud Drive not enabled, not importing.", buf, 2u);
    }

    v10 = objc_retainBlock(a1[6]);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

void sub_10018F038(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([a1[4] ubiquityEligibleBooksProvider], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEligibleLocalBookToBeMadeUbiquitous:", v5), v7, v8))
  {
    v9 = [a1[4] bookOperationsQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10018F268;
    v16[3] = &unk_100A049A0;
    v16[4] = a1[4];
    v17 = v5;
    v18 = a1[6];
    [v9 addOperationWithBlock:v16];
  }

  else
  {
    v10 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1[5] url];
      v12 = [a1[5] assetID];
      v13 = [a1[5] dataSourceIdentifier];
      *buf = 141559042;
      v20 = 1752392040;
      v21 = 2112;
      v22 = v11;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2112;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BKUbiquitousDocumentsController: Asset not eligible to be migrated. url(%{mask.hash}@), assetID(%{mask.hash}@) dataSourceIdentifier(%{public}@)", buf, 0x34u);
    }

    v14 = objc_retainBlock(a1[6]);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }
}

void sub_10018F268(id *a1)
{
  if ([a1[4] hasEverReceivedUbiquityQuota] && (objc_msgSend(a1[4], "booksThatEncounteredUploadError"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, !v3) || (objc_msgSend(a1[4], "pendingQuotaFetch") & 1) != 0)
  {
    if ([a1[4] pendingQuotaFetch])
    {
      objc_initWeak(location, a1[4]);
      v4 = [a1[4] pendingQuotaFetchMigrationBlocks];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10018F69C;
      v16[3] = &unk_100A08940;
      v17 = a1[5];
      objc_copyWeak(&v19, location);
      v18 = a1[6];
      v5 = objc_retainBlock(v16);
      [v4 addObject:v5];

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = BKLibraryBookImportLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a1[5] assetID];
        *location = 141558274;
        *&location[4] = 1752392040;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "don't need to fetch quota while migrating assetID (%{mask.hash}@)", location, 0x16u);
      }

      v12 = a1[4];
      v22 = a1[5];
      v13 = [NSArray arrayWithObjects:&v22 count:1];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10018F894;
      v14[3] = &unk_100A06300;
      v15 = a1[6];
      [v12 boq_migrateBooksThatWillFitToUbiquity:v13 completion:v14];
    }
  }

  else
  {
    v6 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[5] assetID];
      *location = 141558274;
      *&location[4] = 1752392040;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetching quota while migrating assetID (%{mask.hash}@)", location, 0x16u);
    }

    v8 = a1[4];
    v23 = a1[5];
    v9 = [NSArray arrayWithObjects:&v23 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10018F618;
    v20[3] = &unk_100A06300;
    v21 = a1[6];
    [v8 boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:v9 completion:v20];
  }
}

void sub_10018F5EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10018F618(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [v5 firstObject];
    v3[2](v3, v4, 0);
  }
}

void sub_10018F69C(id *a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] assetID];
    *buf = 141558274;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "pending quota fetch, will migrate assetID (%{mask.hash}@) after received", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = a1[4];
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018F810;
  v6[3] = &unk_100A06300;
  v7 = a1[5];
  [WeakRetained boq_migrateBooksThatWillFitToUbiquity:v5 completion:v6];
}

void sub_10018F810(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [v5 firstObject];
    v3[2](v3, v4, 0);
  }
}

void sub_10018F894(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [v5 firstObject];
    v3[2](v3, v4, 0);
  }
}

void sub_10018FA24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10018FA48(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained bookOperationsQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10018FBBC;
    v13[3] = &unk_100A09AF8;
    v13[4] = v7;
    v17 = a2;
    v14 = v5;
    v15 = a1[4];
    v16 = a1[5];
    [v8 addOperationWithBlock:v13];
  }

  else
  {
    v9 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKUbiquitousDocumentsController deallocated mid migration", v12, 2u);
    }

    v10 = objc_retainBlock(a1[5]);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

void sub_10018FBBC(uint64_t a1)
{
  [*(a1 + 32) boq_handleSpaceAvailableReceivedWithFreeBytes:*(a1 + 64) serverError:*(a1 + 40)];
  [*(a1 + 32) boq_migrateBooksThatWillFitToUbiquity:*(a1 + 48) completion:*(a1 + 56)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) pendingQuotaFetchMigrationBlocks];
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

        (*(*(*(&v8 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) pendingQuotaFetchMigrationBlocks];
  [v7 removeAllObjects];
}

void sub_1001902A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) ubiquityEligibleBooksProvider];
  [v3 didMakeLocalBooksUbiquitous:v6];

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6, 0);
  }
}

void sub_100190728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10019076C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Adding observers for %{mask.hash}@", &v7, 0x16u);
  }

  v5 = [[BKUbiquitousDocumentsOngoingMigrationObserver alloc] initWithAssetIDs:v3 notify:*(a1 + 40)];
  v6 = [*(a1 + 32) ongoingMigrationAttemptObservers];
  [v6 addObject:v5];
}

void sub_100190874(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
  v3 = [v2 intersectsSet:*(a1 + 40)];

  if (v3)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    (*(*(a1 + 64) + 16))();
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  else if ([*(a1 + 32) ongoingMigrationAttemptOutstandingMigrateAllAttempts] >= 1)
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      v4 = *(a1 + 56);
    }

    v5 = (*(*(a1 + 88) + 8) + 40);

    objc_storeStrong(v5, v4);
  }
}

void sub_100190940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([*(a1 + 32) ubiquityEligibleBooksProvider], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEligibleLocalBookToBeMadeUbiquitous:", v5), v7, v8))
  {
    v9 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100190B48;
    v15[3] = &unk_100A09BB8;
    v15[4] = v9;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v14 = *(a1 + 56);
    v10 = v14;
    v18 = v14;
    os_unfair_lock_lock(v9 + 2);
    sub_100190B48(v15);
    os_unfair_lock_unlock(v9 + 2);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v11 = [*(a1 + 32) ongoingMigrationAttemptTimer];
      [v11 signalWithCompletion:&stru_100A09BD8];
    }
  }

  else
  {
    v12 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 141558274;
      v20 = 1752392040;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - No wait needed on 'migrate all' for %{mask.hash}@ because asset is not eligible", buf, 0x16u);
    }

    [*(a1 + 32) _notifyOngoingMigrationAttemptCompletion:*(a1 + 56) hasPendingChange:0];
  }
}

id sub_100190B48(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
  v3 = [v2 intersectsSet:*(a1 + 40)];

  if (v3)
  {
    goto LABEL_4;
  }

  if ([*(a1 + 32) ongoingMigrationAttemptOutstandingMigrateAllAttempts] >= 1)
  {
    [*(a1 + 32) al_addAssetIDsForOngoingMigrationAttempt:*(a1 + 40)];
LABEL_4:
    result = (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
    return result;
  }

  v5 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - No wait needed on 'migrate all' for %{mask.hash}@ because 'migrate all' has already finished", &v7, 0x16u);
  }

  return [*(a1 + 32) _notifyOngoingMigrationAttemptCompletion:*(a1 + 56) hasPendingChange:0];
}

void sub_1001910A4(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
  v12 = [v2 copy];

  v3 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
  [v3 minusSet:*(a1 + 40)];

  v4 = [*(a1 + 32) ongoingMigrationAttemptObservers];
  v5 = [v4 count];

  if ((v5 - 1) >= 0)
  {
    do
    {
      --v5;
      v6 = [*(a1 + 32) ongoingMigrationAttemptObservers];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [v7 assetIDs];
      if ([v8 intersectsSet:v12])
      {
        v9 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
        v10 = [v8 intersectsSet:v9];

        if ((v10 & 1) == 0)
        {
          v11 = [*(a1 + 32) ongoingMigrationAttemptObservers];
          [v11 removeObjectAtIndex:v5];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }
      }
    }

    while (v5 > 0);
  }
}

id sub_1001912E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 ongoingMigrationAttemptOutstandingMigrateAllAttempts] + 1;

  return [v1 setOngoingMigrationAttemptOutstandingMigrateAllAttempts:v2];
}

void sub_100191558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019157C(uint64_t a1)
{
  if ([*(a1 + 32) ongoingMigrationAttemptOutstandingMigrateAllAttempts] >= 1)
  {
    [*(a1 + 32) setOngoingMigrationAttemptOutstandingMigrateAllAttempts:{objc_msgSend(*(a1 + 32), "ongoingMigrationAttemptOutstandingMigrateAllAttempts") - 1}];
  }

  if (![*(a1 + 32) ongoingMigrationAttemptOutstandingMigrateAllAttempts])
  {
    v5 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
    v2 = [v5 copy];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_100191820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_10019185C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) ongoingMigrationAttemptOutstandingMigrateAllAttempts];
  v2 = [*(a1 + 32) ongoingMigrationAttemptAssetIDs];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 24) > 0 || [*(*(*(a1 + 48) + 8) + 40) count] != 0;
  *(*(*(a1 + 56) + 8) + 24) = v6;
  v7 = *(a1 + 32);

  return [v7 setOngoingMigrationAttemptOutstandingMigrateAllAttempts:0];
}

void sub_1001919EC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100191C20(uint64_t a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) valueForKey:@"assetID"];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "booksWithUploadError: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) booksThatEncounteredUploadError];
  [v4 addObjectsFromArray:*(a1 + 32)];
}

id sub_100191DB8(uint64_t a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "uploadedBooks: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) boq_addUploadedQuotaCompensationForAssetIDs:*(a1 + 32)];
}

void sub_100193F20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001940B0;
    v11[3] = &unk_100A09C70;
    v6 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v5;
    v13 = *(a1 + 48);
    [v6 fetchAssetsWithIDs:v3 completion:v11];

    v7 = v12;
  }

  else
  {
    v8 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) time];
      v9 = [NSNumber numberWithDouble:?];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MRP: %@ for 0 media library books", buf, 0xCu);
    }

    v10 = objc_retainBlock(*(a1 + 48));
    v7 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void sub_1001940B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) purchaseDate];
        v13 = v12;
        if (!v9 || [v12 compare:v9] == 1)
        {
          v14 = v13;

          v9 = v14;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) time];
    v16 = [NSNumber numberWithDouble:?];
    v17 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MRP: %@ for %@ media library books", buf, 0x16u);
  }

  v18 = objc_retainBlock(*(a1 + 40));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, v9);
  }
}

void sub_1001947D4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) _addAssetIDsToCacheManager:v8];
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

void sub_100194E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isSupplementalContent])
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = [v7 storePlaylistID];
    objc_opt_class();
    v9 = [v7 parentAsset];
    v10 = BUDynamicCast();

    if (v10)
    {
      v11 = [v10 storeRedownloadParameters];
    }

    else
    {
      v12 = BKLibraryDataSourceMediaLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100792A70((a1 + 32), v6, v12);
      }

      v11 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = [v7 storeID];
    v11 = [v7 storeRedownloadParameters];
  }

  if (v8)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138413058;
      v29 = v19;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v6;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not resolve library asset %@. StoreID: %@. DownloadParams: %@. Error: %@", buf, 0x2Au);
    }

    v15 = objc_retainBlock(*(a1 + 56));
    v17 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 1, v6);
    }
  }

  else
  {
    v16 = [*(a1 + 40) identifier];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001951A8;
    v20[3] = &unk_100A09CC0;
    v21 = v11;
    v22 = v8;
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v25 = v16;
    v27 = *(a1 + 56);
    v26 = v5;
    v17 = v16;
    v18 = objc_retainBlock(v20);
    (v18[2])();
  }
}

void sub_1001951A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  if ([*(a1 + 48) isSupplementalContent])
  {
    v5 = [*(a1 + 48) storeID];
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 longLongValue]);
    v7 = [NSSet setWithObject:v6];
    [v4 setStoreIdentifiersToDownload:v7];

    [v4 setSupplementalContent:1];
  }

  [v4 setAudiobook:1];
  v8 = [*(a1 + 56) userInitiated];

  if (v8)
  {
    v9 = [*(a1 + 56) userInitiated];
    [v4 setUserInitiated:{objc_msgSend(v9, "BOOLValue")}];
  }

  v10 = +[JSABridge sharedInstance];
  v11 = [v10 windowManager];

  v12 = +[BLDownloadQueue sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001953C0;
  v13[3] = &unk_100A09C98;
  v14 = *(a1 + 64);
  v16 = *(a1 + 80);
  v15 = *(a1 + 72);
  [v12 purchaseWithRequest:v4 uiManager:v11 completion:v13];
}

void sub_1001953C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Purchase completed. error:%@", &v10, 0x16u);
  }

  v8 = objc_retainBlock(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, *(a1 + 40), 1, v5);
  }
}

void sub_100195710(id a1, BOOL a2)
{
  v2 = a2;
  v3 = BKLibraryDataSourceMediaLibraryLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully updated jalisco media library from purchase success", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100792B30();
  }
}

void sub_1001957F0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = BKLibraryDataSourceMediaLibraryLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      sub_100792B98();
    }
  }

  else if (v4)
  {
    sub_100792B64();
  }
}

void sub_100195A94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

        v12 = BUStoreIdStringFromObject();
        [v6 addObject:{v12, v15}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = objc_retainBlock(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v6, a3);
  }
}

void sub_100195CA8(uint64_t a1, uint64_t a2)
{
  v4 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updatePurchaseItemsWithCompletion - Finished update Jalisco, success = %d", v7, 8u);
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2);
  }
}

void sub_100195E34(void *a1)
{
  v1 = a1;
  off_100AF77B8();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 sourceView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && byte_100AF77C0 == 1)
    {
      v19 = v1;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = [v2 subviews];
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            v11 = [v10 maskView];
            v12 = [v11 layer];

            if (v12)
            {
              v13 = [v10 maskView];
              v14 = [v13 layer];

              [v10 setMaskView:0];
              v15 = +[CALayer layer];
              v16 = [v10 layer];
              [v16 bounds];
              [v15 setFrame:?];

              v17 = [UIColor colorWithWhite:1.0 alpha:1.0];
              [v15 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

              [v15 addSublayer:v14];
              v18 = [v10 layer];
              [v18 setMask:v15];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v7);
      }

      v1 = v19;
    }
  }
}

void sub_1001960AC(void *a1)
{
  v1 = a1;
  off_100AF77C8();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 sourceView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && byte_100AF77C0 == 1)
    {
      v18 = v1;
      byte_100AF77C0 = 0;
      +[CATransaction begin];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = v2;
      v5 = [v2 subviews];
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            v11 = [v10 layer];
            v12 = [v11 mask];

            if (v12)
            {
              v13 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
              v14 = [UIColor colorWithWhite:1.0 alpha:0.0];
              [v13 setToValue:{objc_msgSend(v14, "CGColor")}];

              [v13 setFillMode:kCAFillModeBoth];
              [v13 setRemovedOnCompletion:0];
              v15 = [v10 layer];
              v16 = [v15 mask];
              [v16 addAnimation:v13 forKey:@"fade"];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      +[CATransaction commit];
      v2 = v17;
      v1 = v18;
    }
  }
}

void sub_100196380(id a1)
{
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, "setSourceView:");
  off_100AF77B8 = method_setImplementation(InstanceMethod, sub_100195E34);
  v3 = objc_opt_class();
  v4 = class_getInstanceMethod(v3, "didMoveToWindow");
  off_100AF77C8 = method_setImplementation(v4, sub_1001960AC);
}

void sub_100196E28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) absoluteURL];
  v6 = [v5 standardizedURL];
  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  v9 = [v8 URL];
  v10 = [v9 absoluteURL];
  v11 = [v10 standardizedURL];
  v12 = [v6 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = BCCurrentBookLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100792C24(v4, v7, v13);
    }
  }

  v14 = BCCurrentBookLog();
  v15 = v14;
  if (v3)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100792CD8(v4, v3, v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = *v4;
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "BKAssetPresentingFilePresenter Successful coordinated read [URL: %@]", &v17, 0xCu);
  }
}

uint64_t sub_1001976C8(uint64_t result)
{
  *(*(result + 32) + 17) = 0;
  *(*(result + 32) + 16) = 0;
  return result;
}

void sub_100197DBC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_100197F44(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTargetSceneController:a2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100197FDC;
  v4[3] = &unk_100A09DE8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 requireTargetSceneController:v4];
}

void sub_100198778(id a1, BKSceneControlling *a2, BOOL *a3)
{
  v4 = [(BKSceneControlling *)a2 bk_window];
  v3 = [v4 rootViewController];
  [v3 bc_analyticsSubtreeForceEndSession];
}

void sub_1001987E4(id a1, BKSceneControlling *a2, BOOL *a3)
{
  v4 = [(BKSceneControlling *)a2 bk_window];
  v3 = [v4 rootViewController];
  [v3 bc_analyticsVisibilitySubtreeWillDisappear];
}

void sub_100198850(id a1, BKSceneControlling *a2, BOOL *a3)
{
  v4 = [(BKSceneControlling *)a2 bk_window];
  v3 = [v4 rootViewController];
  [v3 bc_analyticsVisibilitySubtreeDidDisappear];
}

void sub_1001988BC(id a1, BKSceneControlling *a2, BOOL *a3)
{
  v4 = [(BKSceneControlling *)a2 bk_window];
  v3 = [v4 rootViewController];
  [v3 bc_analyticsVisibilityUpdateSubtree];
}

void sub_100198CF8(uint64_t a1)
{
  v2 = [*(a1 + 32) rootBarCoordinator];
  v11 = [v2 rootViewController];

  v3 = [*(a1 + 32) minifiedFlowController];
  v4 = [v3 minibarContainerView];

  v5 = [v4 superview];
  v6 = [v11 view];

  if (v5 != v6)
  {
    [v4 removeFromSuperview];
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 view];
      v10 = [v8 tabBar];
      [v9 insertSubview:v4 belowSubview:v10];
    }

    else
    {
      v9 = [v11 view];
      [v9 addSubview:v4];
    }
  }
}

void sub_1001995B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  objc_destroyWeak((v55 + 64));
  objc_destroyWeak(&a55);
  _Block_object_dispose((v56 - 216), 8);
  objc_destroyWeak((v56 - 168));
  _Unwind_Resume(a1);
}

void sub_100199608(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = +[BKAudiobookPlayer sharedInstance];
  [v3 setCurrentAudiobook:0];

  v4 = [*(*(*(a1 + 40) + 8) + 40) newShowAssetTransaction];
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:BCTransactionOptionsTransactionKey];
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKAudiobookOptionsIsRetryKey"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting automatic reopen of asset %@ following auth", buf, 0xCu);
  }

  v8 = [WeakRetained bookFlowController];
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001997DC;
  v10[3] = &unk_100A09ED0;
  v11 = v9;
  [v8 showAssetWithTransaction:v4 assetID:v11 location:0 options:v2 completion:v10];
}

void sub_1001997DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished automatic reopen of asset %@ following auth, error %@", &v7, 0x16u);
  }
}

void sub_1001998A4(id a1)
{
  v1 = BCSceneLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100792D64(v1);
  }
}

void sub_1001998E8(uint64_t a1)
{
  v2 = [*(a1 + 32) accountID];
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to authorize/refetch keys for user %@", buf, 0xCu);
  }

  v4 = +[ACAccountStore bu_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountWithUsername:v2];

  v6 = [v5 ams_DSID];
  v7 = [v6 unsignedIntegerValue];

  v8 = [NSNumber numberWithUnsignedLongLong:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100199A84;
  v9[3] = &unk_100A060C0;
  v10 = *(a1 + 40);
  [ft9cupR7u6OrU4m1pyhB Xj3eVHDeBoTD6fVn6fY8:v8 completion:v9];
}

void sub_100199A84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCSceneLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100792DA8(v3, v4);
    }
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 32));
    if (v4)
    {
      if (+[NSThread isMainThread])
      {
        (v4[2].isa)(v4);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100199B88;
        block[3] = &unk_100A03920;
        v4 = v4;
        v6 = v4;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_100199B98(uint64_t a1, unsigned __int16 a2)
{
  if (a2 - 9 > 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100199DD4;
    v8[3] = &unk_100A09F40;
    v10 = &v11;
    v9 = *(a1 + 48);
    [v4 bu_enumerateErrorUsingBlock:v8];
    if ((v12[3] & 1) == 0)
    {
      v5 = objc_retainBlock(*(a1 + 48));
      if (v5)
      {
        if (+[NSThread isMainThread])
        {
          v5[2](v5);
        }

        else
        {
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 3221225472;
          v6[2] = sub_100199EF8;
          v6[3] = &unk_100A03920;
          v7 = v5;
          dispatch_async(&_dispatch_main_q, v6);
        }
      }
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    if (v3)
    {
      if (+[NSThread isMainThread])
      {
        v3[2](v3);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100199DC4;
        block[3] = &unk_100A03920;
        v16 = v3;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_100199DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100199DD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ([a2 isEqual:NSOSStatusErrorDomain] && +[THPFDContext isBagRefetchRequiredForStatus:](THPFDContext, "isBagRefetchRequiredForStatus:", a3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = objc_retainBlock(*(a1 + 32));
    if (v8)
    {
      if (+[NSThread isMainThread])
      {
        v8[2](v8);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100199EE8;
        block[3] = &unk_100A03920;
        v10 = v8;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    *a5 = 1;
  }
}

void sub_100199F08(uint64_t a1)
{
  v2 = BCSceneLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "This was not a retry play session and the error appears to have been failed authorization.  Examining if we can refetch keys/reauthorize", buf, 2u);
  }

  v3 = [*(a1 + 32) contentType];
  if (v3 == 6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if ((v3 - 9) > 1u)
  {
    if (+[BKAssetUtilities isAudiobookTrackContentType:](BKAssetUtilities, "isAudiobookTrackContentType:", [*(a1 + 32) contentType]))
    {
      v4 = *(a1 + 40);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10019A048;
      v5[3] = &unk_100A09F90;
      v6 = *(a1 + 64);
      [v4 bu_enumerateErrorUsingBlock:v5];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10019A048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ([a2 isEqual:NSOSStatusErrorDomain] && +[THPFDContext isBagRefetchRequiredForStatus:](THPFDContext, "isBagRefetchRequiredForStatus:", a3))
  {
    v8 = objc_retainBlock(*(a1 + 32));
    if (v8)
    {
      if (+[NSThread isMainThread])
      {
        v8[2](v8);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10019A150;
        block[3] = &unk_100A03920;
        v10 = v8;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    *a5 = 1;
  }
}

void sub_10019A160(uint64_t a1)
{
  v2 = BCSceneLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Can't open this asset due to failed authorization", v13, 2u);
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Couldn’t Play Audiobook" value:&stru_100A30A68 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"This audiobook isn’t authorized to play on this device." value:&stru_100A30A68 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];

  [v7 addAction:v10];
  v11 = [*(*(*(a1 + 32) + 8) + 40) bk_window];
  v12 = [UIViewController jsa_topMostViewControllerForWindow:v11];

  [v12 presentViewController:v7 animated:1 completion:0];
}

void sub_10019A338(uint64_t a1, void *a2)
{
  obj = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = obj;
  if (!obj)
  {
    v4 = [WeakRetained primarySceneController];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  if (!obj)
  {
  }

  v5 = [*(a1 + 32) domain];
  if (([v5 isEqual:BKAudiobookPlayerErrorDomain] & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = [*(a1 + 32) code];

  if ((*(a1 + 72) & 1) != 0 || v6 != 2)
  {
    if (v6 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 48);
  }

  else
  {
    v7 = *(a1 + 40);
  }

  (*(v7 + 16))();
LABEL_13:
}

void sub_10019A734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCSceneLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_setupWelcomeScreenWithPresenterIfNeeded: handleWelcomeItems", v13, 2u);
  }

  v5 = [[BKWelcomeScreenManager alloc] initWithItems:v3 isRTL:*(a1 + 48)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = v5;

  v8 = +[UIApplication sharedApplication];
  if ([v8 launchedToTest])
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = [*(a1 + 32) welcomeScreenManager];
  v10 = [v9 moreScreensComing];

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:
  [*(a1 + 32) _setWelcomePresenterIfNoneExists:*(a1 + 40) shouldPresent:v11];
  v12 = [*(a1 + 32) launchCoordinator];
  [v12 signalConditionSatisfied:11];
}

void sub_10019AA48(uint64_t a1)
{
  [*(a1 + 32) setWelcomePresenter:0];
  v2 = [*(a1 + 32) pendingWelcomePresenterDismissCompletionBlocks];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) pendingWelcomePresenterDismissCompletionBlocks];
  [v4 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v10 = objc_retainBlock(*(*(&v12 + 1) + 8 * v9));
        v11 = v10;
        if (v10)
        {
          (*(v10 + 2))(v10);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_10019AB94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10019AC3C;
  v3[3] = &unk_100A03788;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 dismissWelcomeViewControllerAnimated:0 completion:v3];
}

void sub_10019B0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = [*(a1 + 32) minifiedPresenter];
  [v4 setShouldIgnoreCurrentBookNotifications:0];

  v5 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v6 = [v5 length];

  v7 = *(a1 + 32);
  if (v3)
  {
    v8 = [v7 rootBarCoordinator];
    [v8 selectWithIdentifier:v3 isUserAction:0];

LABEL_6:
    [*(a1 + 32) setInitialUserTransaction:0];
    [*(a1 + 32) _showMainViewController];
    goto LABEL_7;
  }

  if (![v7 shouldOpenLastBook])
  {
    goto LABEL_6;
  }

  v9 = [*(a1 + 32) launchCoordinator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019B218;
  v12[3] = &unk_100A038D0;
  v12[4] = *(a1 + 32);
  [v9 appLaunchCoordinatorOnConditionMask:64 blockID:@"_showMainViewControllerOrWelcomeScreenNow" performBlock:v12];

  [*(a1 + 32) _showMainViewController];
  if (!v6)
  {
    [*(a1 + 32) attemptToPresentStoreReview];
  }

LABEL_7:
  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  *(v10 + 120) = 0;
}

void sub_10019B218(uint64_t a1)
{
  v4 = [*(a1 + 32) initialUserTransaction];
  v2 = [*(a1 + 32) primarySceneController];
  [v4 setTargetSceneController:v2];

  v3 = [*(a1 + 32) bookPresenter];
  [v3 requestOpenLastKnownBookWithTransaction:v4];

  [*(a1 + 32) setInitialUserTransaction:0];
}

void sub_10019B4B4(uint64_t a1)
{
  v2 = [*(a1 + 32) welcomePresenter];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10019B54C;
  v3[3] = &unk_100A044C8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 welcomePresenterFinishOngoingModalTransitionAnimations:v3];
}

void sub_10019B54C(uint64_t a1)
{
  v2 = [*(a1 + 32) criticalAlertCoordinator];
  v3 = [v2 criticalAlertCoordinatorHoldPresentingCriticalAlertAssertion];
  [*(a1 + 32) setPendingCriticalAlertAssertion:v3];

  v4 = [*(a1 + 32) launchCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019B628;
  v5[3] = &unk_100A044C8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 signalConditionSatisfied:3 blockID:@"showMainViewController_prepLaunchDismissal" notifyBlock:v5];
}

void sub_10019B628(uint64_t a1)
{
  v2 = [*(a1 + 32) launchCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10019B6CC;
  v3[3] = &unk_100A044C8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 signalConditionSatisfied:4 blockID:@"showMainViewController_launchWillDismiss" notifyBlock:v3];
}

void sub_10019B6CC(uint64_t a1)
{
  v2 = [*(a1 + 32) welcomePresenter];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10019B764;
  v3[3] = &unk_100A044C8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 welcomePresenterFinishOngoingModalTransitionAnimations:v3];
}

void sub_10019B764(uint64_t a1)
{
  v2 = [*(a1 + 32) welcomePresenter];
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019B7F8;
  v4[3] = &unk_100A033C8;
  v4[4] = *(a1 + 32);
  [v2 dismissWelcomeViewControllerAnimated:v3 completion:v4];
}

id sub_10019B7F8(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingCriticalAlertAssertion];
  [v2 invalidate];

  [*(a1 + 32) setPendingCriticalAlertAssertion:0];
  v3 = [*(a1 + 32) criticalAlertCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019B8B8;
  v5[3] = &unk_100A033C8;
  v5[4] = *(a1 + 32);
  [v3 invokeAfterCriticalAlertDismisses:v5];

  return [*(a1 + 32) setWelcomePresenter:0];
}

uint64_t sub_10019B8B8(uint64_t a1)
{
  v1 = [*(a1 + 32) launchCoordinator];
  [v1 signalConditionSatisfied:5];

  return kdebug_trace();
}

void sub_10019ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_10019EDC0(void *result)
{
  v1 = result;
  v2 = result[4];
  if ((*(v2 + 8) & (1 << result[7])) != 0)
  {
    *(*(result[5] + 8) + 24) = 0;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = [NSNumber numberWithUnsignedInteger:?];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = *(v1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(v1[6] + 8) + 40);
    if (!v8)
    {
      v9 = [[BKAppLaunchAssertionCoordinator alloc] initWithCondition:v1[7]];
      v10 = *(v1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(v1[6] + 8) + 40);
      v13 = *(v1[4] + 40);
      v14 = [NSNumber numberWithUnsignedInteger:v1[7]];
      [v13 setObject:v12 forKeyedSubscript:v14];

      v8 = *(*(v1[6] + 8) + 40);
    }

    return [v8 enter];
  }

  return result;
}

void sub_10019EEF0(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100005080;
  v12 = sub_100027988;
  v13 = 0;
  v2 = [*(a1 + 32) queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019F008;
  v4[3] = &unk_100A0A0A0;
  v5 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = &v8;
  v7 = v3;
  dispatch_sync(v2, v4);

  [*(a1 + 32) _dispatchBlocks:v9[5]];
  _Block_object_dispose(&v8, 8);
}

void sub_10019EFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019F008(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) leave])
  {
    v2 = [*(a1 + 32) _conditionSatisfied:*(a1 + 56) invalidatingAssertion:1];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10019F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10019F508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 conditionMask] & v4;
  v6 = [v3 conditionMask];
  if (v5 == v6)
  {
    v7 = BCIMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 blockID];
      v9 = sub_100012EEC(*(a1 + 40));
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKAppLaunchCoordinator: Running #blockID:'%{public}@' because condition:'%{public}@' satisfied", &v11, 0x16u);
    }
  }

  return v5 == v6;
}

BOOL sub_10019F704(id a1, BKAppLaunchBlock *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = ([(BKAppLaunchBlock *)v4 conditionMask]& 8) != 0 && ([(BKAppLaunchBlock *)v4 flags]& 1) == 0;

  return v5;
}

void sub_10019F750(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = !v5 || ![v5 containsIndex:a3] || *(a1 + 40) == a3;
  kdebug_trace();
  v7 = [v9 block];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v6, 0);
  }

  kdebug_trace();
}

void sub_10019F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019F98C(uint64_t a1)
{
  v2 = [*(a1 + 32) _conditionSatisfied:*(a1 + 48) invalidatingAssertion:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10019FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void *sub_10019FEF8(void *result)
{
  *(*(result[7] + 8) + 24) = (result[9] & ~*(result[4] + 8)) == 0;
  if ((*(*(result[7] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = objc_opt_new();
    v3 = *(v1[8] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(v1[8] + 8) + 40) setBlock:v1[6]];
    [*(*(v1[8] + 8) + 40) setConditionMask:v1[9]];
    [*(*(v1[8] + 8) + 40) setFlags:v1[10]];
    if (v1[5])
    {
      [*(*(v1[8] + 8) + 40) setBlockID:?];
    }

    v5 = BCIMLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(v1[8] + 8) + 40) blockID];
      v7 = sub_100012EEC(*(v1[4] + 8));
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKAppLaunchCoordinator: Deferring performing #blockID:'%{public}@' currentConditionMask:%{public}@", &v8, 0x16u);
    }

    return [*(v1[4] + 32) addObject:*(*(v1[8] + 8) + 40)];
  }

  return result;
}

void sub_1001A01D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A01EC(void *a1)
{
  result = [*(a1[4] + 32) indexOfObjectIdenticalTo:a1[5]];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    *(*(a1[6] + 8) + 24) = 1;
    v4 = *(a1[4] + 32);

    return [v4 removeObjectAtIndex:v3];
  }

  return result;
}

void sub_1001A07E0(uint64_t a1)
{
  if (![*(a1 + 32) downloadQueueGeneration])
  {
    v2 = +[BLDownloadQueue sharedInstance];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 downloads];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v10 + 1) + 8 * v7) downloadPhase]);
        v9 = [&off_100A43E70 containsObject:v8];

        if (!v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      [*(a1 + 32) setDownloadQueueGeneration:{objc_msgSend(*(a1 + 32), "downloadQueueGeneration") + 1}];
      v3 = [*(a1 + 32) generationChangeHandler];
      if (v3)
      {
        (v3)[2](v3, [*(a1 + 32) downloadQueueGeneration]);
      }
    }
  }
}

void sub_1001A1F84(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) downloadingAssets];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
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

        v9 = [*(a1 + 32) _updateDownloadingAssetAndCreateDownloadStatuses:*(*(&v13 + 1) + 8 * v8) from:0];
        if ([v9 count])
        {
          [v2 addObjectsFromArray:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  v19 = BKLibraryDownloadStatusKey;
  v20 = v2;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v11 = BCBookDownloadLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "download progress notification %{public}@", buf, 0xCu);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:BKLibraryDownloadStatusNotification object:*(a1 + 32) userInfo:v10];
}

void sub_1001A22B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2344;
  v3[3] = &unk_100A0A1A8;
  v4 = v1;
  [v2 _performBlockOnAllAssetsForAssetID:v4 block:v3];
}

void sub_1001A2344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 downloadID];
  if ([v4 length])
  {
    v5 = +[BLDownloadQueue sharedInstance];
    [v5 pauseDownloadWithID:v4 withCompletion:0];

    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 assetID];
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "download paused %{public}@", &v14, 0xCu);
    }
  }

  else
  {
    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100793094(a1, v6, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_1001A25A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2634;
  v3[3] = &unk_100A0A1A8;
  v4 = v1;
  [v2 _performBlockOnAllAssetsForAssetID:v4 block:v3];
}

void sub_1001A2634(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 downloadID];
  if ([v4 length])
  {
    v5 = +[BLDownloadQueue sharedInstance];
    [v5 resumeDownloadWithID:v4 withCompletion:0];

    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 assetID];
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "download resumed %{public}@", &v14, 0xCu);
    }
  }

  else
  {
    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100793104(a1, v6, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_1001A2898(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2924;
  v3[3] = &unk_100A0A1A8;
  v4 = v1;
  [v2 _performBlockOnAllAssetsForAssetID:v4 block:v3];
}

void sub_1001A2924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 downloadID];
  if ([v4 length])
  {
    v5 = +[BLDownloadQueue sharedInstance];
    [v5 cancelDownloadWithID:v4 withCompletion:0];

    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 assetID];
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "download canceled %{public}@", &v14, 0xCu);
    }
  }

  else
  {
    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100793174(a1, v6, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_1001A2C2C(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadingAssets];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [v3 downloadState];
    if (v5 == 8)
    {
      v16 = +[BLDownloadQueue sharedInstance];
      v17 = [v3 downloadID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001A3050;
      v24[3] = &unk_100A04A50;
      v25 = v3;
      [v16 pauseDownloadWithID:v17 withCompletion:v24];

      v8 = v25;
    }

    else if (v5 == 6)
    {
      v6 = +[BLDownloadQueue sharedInstance];
      v7 = [v3 downloadID];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001A2F98;
      v26[3] = &unk_100A04A50;
      v27 = v3;
      [v6 resumeDownloadWithID:v7 withCompletion:v26];

      v8 = v27;
    }

    else
    {
      v8 = BCBookDownloadLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 downloadID];
        *buf = 138543618;
        v30 = v18;
        v31 = 2048;
        v32 = [v3 downloadState];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unsupported state for toggling downloadID=%{public}@ state=%ld", buf, 0x16u);
      }
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [*(a1 + 32) restoreControllers];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v3;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = BCBookDownloadLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 40);
            *buf = 138543362;
            v30 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "prioritize asset restore assetID=%{public}@", buf, 0xCu);
          }

          [v13 prioritizeAssetRestoreWithAssetID:*(a1 + 40)];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
      v3 = v19;
    }
  }
}

void sub_1001A2F98(uint64_t a1)
{
  v2 = BCBookDownloadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) downloadID];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "download resumed downloadID=%{public}@", &v4, 0xCu);
  }
}

void sub_1001A3050(uint64_t a1)
{
  v2 = BCBookDownloadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) downloadID];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "download paused downloadID=%@", &v4, 0xCu);
  }
}

void sub_1001A3238(uint64_t a1)
{
  v19 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138412290;
    v18 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 bk_assetIdentifier];
        if ([v9 length])
        {
          v10 = [*(a1 + 40) _updateDownloadingAssets:v8];
          v11 = [v9 length];
          v12 = BCBookDownloadLog();
          v13 = v12;
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v29 = v8;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] about to create LibraryDownloadStatus from BLDownloadStatus %p", buf, 0xCu);
            }

            v13 = [*(a1 + 40) _updateDownloadingAssetAndCreateDownloadStatuses:v10 from:v8];
            v14 = BCBookDownloadLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v29 = v13;
              v30 = 2048;
              v31 = v8;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] finished creating LibraryDownloadStatuses (%@) from BLDownloadStatus %p", buf, 0x16u);
            }

            [v19 addObjectsFromArray:v13];
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v29 = v9;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "unhandled: %@", buf, 0xCu);
          }
        }

        else
        {
          v10 = BCBookDownloadLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1007931E4(&v20, v21, v10);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  if ([v19 count])
  {
    v15 = BCBookDownloadLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] Posting a notification (progress) for assets: %@", buf, 0xCu);
    }

    v26 = BKLibraryDownloadStatusKey;
    v27 = v19;
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:BKLibraryDownloadStatusNotification object:*(a1 + 40) userInfo:v16];
  }
}

void sub_1001A36FC(uint64_t a1)
{
  v58 = +[NSMutableSet set];
  v57 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v56 = +[NSMutableArray array];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v1)
  {
    v61 = *v80;
    *&v2 = 138543618;
    v55 = v2;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v80 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v79 + 1) + 8 * i);
        v5 = [v4 bk_assetIdentifier];
        if ([v5 length])
        {
          v6 = [*(a1 + 40) downloadingAssets];
          v7 = [v6 objectForKeyedSubscript:v5];

          if (v7)
          {
            [v7 setDownloadStatus:v4];
            if ([v7 downloadState]== 6)
            {
              v8 = BCBookDownloadLog();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v84 = v5;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] completed asset was paused: %{public}@", buf, 0xCu);
              }

              goto LABEL_36;
            }

            v12 = [v7 parent];
            v13 = BCBookDownloadLog();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            if (v12)
            {
              if (v14)
              {
                v15 = [v7 identifier];
                v16 = [v7 isAudiobook];
                *buf = v55;
                v84 = v15;
                v85 = 1024;
                LODWORD(v86) = v16;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] download completed audiobook child identifier=%{public}@ isAudiobook=%d", buf, 0x12u);
              }

              [v7 setActive:0];
              v17 = [*(a1 + 40) downloadingAssets];
              v18 = [v7 identifier];
              [v17 removeObjectForKey:v18];

              if (([v7 isAudiobook]& 1) != 0)
              {
                v19 = 0;
                goto LABEL_29;
              }

              v21 = BCBookDownloadLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v7 identifier];
                *buf = 138543362;
                v84 = v22;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] supplemental download completed identifier=%{public}@", buf, 0xCu);
              }

              [v56 addObject:v7];
            }

            else
            {
              if (v14)
              {
                v20 = [v7 identifier];
                *buf = 138543362;
                v84 = v20;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] download completed identifier=%{public}@", buf, 0xCu);
              }
            }

            v23 = [*(a1 + 40) downloadingAssets];
            v24 = [v7 identifier];
            [v23 removeObjectForKey:v24];

            [v57 addObject:v7];
            v19 = v7;
LABEL_29:
            v25 = [*(a1 + 40) _updateDownloadingAssetAndCreateDownloadStatuses:v7 from:v4];
            [v58 addObjectsFromArray:v25];
            if (v12)
            {
              v26 = [v12 activeChildren];
              v27 = [v26 count] == 0;

              if (v27)
              {
                v28 = BCBookDownloadLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [v12 identifier];
                  *buf = 138543362;
                  v84 = v29;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] download completed audiobook parent identifier=%{public}@", buf, 0xCu);
                }

                v30 = [*(a1 + 40) assetsWithDownloadingChildAssets];
                v31 = [v12 identifier];
                [v30 removeObjectForKey:v31];

                v32 = [*(a1 + 40) downloadingAssets];
                v33 = [v12 identifier];
                v34 = [v32 objectForKey:v33];

                if (v34)
                {
                  v35 = [*(a1 + 40) downloadingAssets];
                  v36 = [v12 identifier];
                  [v35 removeObjectForKey:v36];

                  [v57 addObject:v12];
                }
              }
            }

            goto LABEL_36;
          }

          v9 = BCBookDownloadLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v84 = v5;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] download completed untracked identifier=%{public}@", buf, 0xCu);
          }

          v10 = [BKBLDownloadAsset alloc];
          v11 = [*(a1 + 40) identifier];
          v7 = [(BKBLDownloadAsset *)v10 initWithBLDownloadStatus:v4 dataSourceIdentifier:v11 isParent:0];

          [v59 addObject:v7];
        }

        else
        {
          v7 = BCBookDownloadLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_100793224(&v77, v78, v7);
          }
        }

LABEL_36:
      }

      v1 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v1);
  }

  if ([v58 count])
  {
    v87 = BKLibraryDownloadStatusKey;
    v88 = v58;
    v37 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 postNotificationName:BKLibraryDownloadStatusNotification object:*(a1 + 40) userInfo:v37];
  }

  [*(a1 + 40) setDownloadQueueGeneration:{objc_msgSend(*(a1 + 40), "downloadQueueGeneration") + 1}];
  v39 = [*(a1 + 40) generationChangeHandler];
  if (v39)
  {
    (v39)[2](v39, [*(a1 + 40) downloadQueueGeneration]);
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1001A4234;
  v74[3] = &unk_100A0A1D0;
  v40 = v57;
  v41 = *(a1 + 40);
  v75 = v40;
  v76 = v41;
  v42 = objc_retainBlock(v74);
  objc_initWeak(&location, *(a1 + 40));
  if ([v40 count])
  {
    v43 = BCBookDownloadLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = v40;
      v85 = 2112;
      v86 = v56;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] Notifying finished for (tracked) assets: %@, (supplemental) assets: %@", buf, 0x16u);
    }

    v44 = [v40 count];
    v45 = [v40 count];
    v46 = [*(a1 + 40) iTunesSyncedBooksPlistCleaner];

    if (v46)
    {
      v47 = [*(a1 + 40) iTunesSyncedBooksPlistCleaner];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1001A4580;
      v68[3] = &unk_100A0A1F8;
      v70 = v42;
      objc_copyWeak(v71, &location);
      v72 = v44 != 0;
      v71[1] = v45;
      v69 = v56;
      [v47 removePlistAssets:v40 completion:v68];

      objc_destroyWeak(v71);
      v48 = v70;
    }

    else
    {
      v49 = v44 != 0;
      v48 = objc_loadWeakRetained(&location);
      (v42[2])(v42, v48, v49, v45, v56, 0);
    }
  }

  if ([v59 count])
  {
    v50 = BCBookDownloadLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v84 = v59;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] Notifying finished for (untracked) assets for assets: %@", buf, 0xCu);
    }

    v51 = [v59 count];
    v52 = [*(a1 + 40) iTunesSyncedBooksPlistCleaner];

    if (v52)
    {
      v53 = [*(a1 + 40) iTunesSyncedBooksPlistCleaner];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1001A4604;
      v63[3] = &unk_100A0A1F8;
      v65 = v42;
      objc_copyWeak(v66, &location);
      v67 = 0;
      v66[1] = v51;
      v64 = v56;
      [v53 removePlistAssets:v59 completion:v63];

      objc_destroyWeak(v66);
      v54 = v65;
    }

    else
    {
      v54 = objc_loadWeakRetained(&location);
      (v42[2])(v42, v54, 0, v51, v56, 0);
    }
  }

  objc_destroyWeak(&location);
}

void sub_1001A41E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A4234(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5, void *a6)
{
  objc_initWeak(&location, a2);
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = BCBookDownloadLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100793264(v12, a4, v13);
    }
  }

  v14 = objc_loadWeakRetained(&location);
  v15 = v14;
  if (v14)
  {
    v16 = [v14 reloadCounterpartHandler];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16);
    }

    if ([v11 count])
    {
      v18 = [v15 didLoadSupplementalAssetHandler];
      v19 = v18;
      if (v18)
      {
        (*(v18 + 16))(v18, v11);
      }
    }

    if (a3)
    {
      v20 = [v15 dispatchQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001A4400;
      v23[3] = &unk_100A03620;
      objc_copyWeak(&v26, &location);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v24 = v21;
      v25 = v22;
      dispatch_async(v20, v23);

      objc_destroyWeak(&v26);
    }
  }

  objc_destroyWeak(&location);
}

void sub_1001A4400(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = BCBookDownloadLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] removed assets: %@", buf, 0xCu);
  }

  v5 = [WeakRetained libraryManager];
  [v5 libraryDataSource:WeakRetained removedAssets:a1[4]];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = a1[4];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [a1[5] _removeReportingItemFromCoverCache:{*(*(&v11 + 1) + 8 * v10), v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_1001A4580(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v4 + 16))(v4, WeakRetained, *(a1 + 64), *(a1 + 56), *(a1 + 32), v5);
}

void sub_1001A4604(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v4 + 16))(v4, WeakRetained, *(a1 + 64), *(a1 + 56), *(a1 + 32), v5);
}

void sub_1001A473C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) downloadingAssets];
  v4 = [v3 copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A4844;
  v8[3] = &unk_100A0A220;
  v5 = v2;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = objc_retainBlock(*(a1 + 40));
  if (v6)
  {
    v7 = [v5 copy];
    v6[2](v6, v7, 0);
  }
}

void sub_1001A4844(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 parent];

  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_1001A49D4(id *a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [a1[5] downloadingAssets];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          [a1[6] addObject:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  kdebug_trace();
  v10 = objc_retainBlock(a1[7]);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, a1[6], 0);
  }
}

void sub_1001A4CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadingAssets];
  v6 = [v2 objectForKey:*(a1 + 40)];

  if (v6)
  {
    [*(a1 + 32) resumeDownloadForAssetID:*(a1 + 40)];
    v3 = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
  }

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6, 1, v3);
  }
}

void sub_1001A4E98(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadingAssets];
  v6 = [v2 objectForKey:*(a1 + 40)];

  if (v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
  }

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6, v3);
  }
}

id sub_1001A6B30()
{
  if (qword_100AF77F0 != -1)
  {
    sub_1007932EC();
  }

  v1 = qword_100AF77E8;

  return v1;
}

void sub_1001A6B74(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMainFlowController");
  v2 = qword_100AF77E8;
  qword_100AF77E8 = v1;
}

void sub_1001A6FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A700C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAnimator:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setTransitionPreviousTopViewController:0];

  v4 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

uint64_t sub_1001A71F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1);
}

void sub_1001A7844(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 56));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  [*(a1 + 32) presenterVisibleViewControllerDidChangeAnimated:*(a1 + 64)];
  if (_AXSAutomationEnabled())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1 + 40) childViewControllers];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (v9 != *(a1 + 48))
          {
            v10 = [v9 view];
            [v10 setAccessibilityElementsHidden:1];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

void sub_1001A7998(uint64_t a1)
{
  [*(a1 + 32) presenterVisibleViewControllerWillChangeAnimated:*(a1 + 64)];
  objc_opt_class();
  v25 = &OBJC_PROTOCOL___BKPalettePresentationTransitioning;
  v2 = BUClassAndProtocolCast();
  v3 = v2;
  if (v2 && [v2 assetPresenterIsAudiobook])
  {
    v4 = [*(a1 + 32) rootBarCoordinator];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001A7E54;
    v36[3] = &unk_100A03920;
    v37 = *(a1 + 56);
    [v4 presentFullPlayer:v3 completion:v36];

    v5 = v37;
  }

  else
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"BKBookOpenAnimatorRedViewFallbackEnabled"];

    v8 = [v3 openOptions];
    v9 = [v8 objectForKeyedSubscript:@"BKBookPresentWithoutAnimations"];
    v10 = [v9 BOOLValue];

    v11 = *(a1 + 32);
    v12 = [v3 assetPresenterAssetID];
    v5 = [v11 _bookWithAssetPermanentOrTemporaryAssetID:v12];

    if (v10 & 1) == 0 && _os_feature_enabled_impl() && [v5 isLocal] && (objc_msgSend(*(a1 + 32), "_coverViewForPresenter:assetPresenter:includePresented:", *(a1 + 48), v3, 1), v13 = objc_claimAutoreleasedReturnValue(), v14 = (v13 != 0) | v7, v13, (v14))
    {
      objc_initWeak(&location, *(a1 + 32));
      objc_initWeak(&from, v3);
      v15 = sub_1001A6B30();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#swipeToDismiss - Setting up preferred transition.", buf, 2u);
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001A7E64;
      v28[3] = &unk_100A0A360;
      objc_copyWeak(&v30, &location);
      v29 = *(a1 + 48);
      objc_copyWeak(&v31, &from);
      v32 = v7;
      v16 = [_UIViewControllerTransition zoomWithSourceViewProvider:v28];
      v17 = [UIBlurEffect effectWithStyle:16];
      v38 = v17;
      v18 = [NSArray arrayWithObjects:&v38 count:1];
      v19 = [v16 _options];
      [v19 setDimmingVisualEffects:v18];

      [*(a1 + 40) _setPreferredTransition:v16];
      objc_destroyWeak(&v31);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      v20 = BUDynamicCast();
      [v20 setUseLegacyAnimation:1];
      v21 = sub_1001A6B30();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#swipeToDismiss - Using LegacyAnimation", &location, 2u);
      }
    }

    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v24 = *(a1 + 64);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001A8058;
    v26[3] = &unk_100A03920;
    v27 = *(a1 + 56);
    [v22 presentViewController:v23 animated:v24 completion:v26];
  }
}

void sub_1001A7E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void *sub_1001A7E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _coverViewForPresenter:v3 assetPresenter:v4 includePresented:1];

  if (!v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = *(a1 + 32);
    v8 = objc_loadWeakRetained((a1 + 48));
    v5 = [v6 _coverViewForPresenter:v7 assetPresenter:v8 includePresented:0];

    if (!v5)
    {
      if (*(a1 + 56) == 1)
      {
        v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
        v10 = +[UIColor redColor];
        [v9 setBackgroundColor:v10];

        v11 = [*(a1 + 32) view];
        [v11 addSubview:v9];

        v12 = v9;
        v13 = dispatch_time(0, 1000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A8050;
        block[3] = &unk_100A033C8;
        v19 = v12;
        v5 = v12;
        dispatch_after(v13, &_dispatch_main_q, block);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v14 = [v5 window];
  if (v14)
  {
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

void sub_1001A82C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A836C;
  v5[3] = &unk_100A041D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 dismissViewControllerAnimated:v3 completion:v5];
}

id sub_1001A836C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 presenterVisibleViewControllerDidChangeAnimated:v5];
}

void sub_1001A8618(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

id sub_1001A99F0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) assetPresenterAssetViewController];
  if ([*(a1 + 40) isValid])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v4 asset];
    v7 = +[BKBasePresentingViewController animatorForAsset:isCurrentBook:opening:largeCover:skipZoom:](BKAssetPresentingViewController, "animatorForAsset:isCurrentBook:opening:largeCover:skipZoom:", v6, a2, *(a1 + 88), [*(a1 + 48) coverAnimationSourceUseLargeCover], 0);

    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (*(a1 + 88) != 1)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v7 = [(BKBasePresentingViewController *)BKAssetPresentingViewController defaultAnimatorForOpening:1 skipReveal:1];
  if (v7)
  {
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 56) coverAnimationHostNeedsCrossfadeOnCloseCompletion];
    }

    else
    {
      v8 = 0;
    }

    [v7 setCrossfadeOnCloseCompletion:v8];
    if (*(a1 + 88) == 1)
    {
      [v4 setContentOpenAnimator:v7];
    }

    [*(a1 + 32) setAssetPresenterAnimator:v7];
    [v7 setCoverSource:*(a1 + 48)];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001A9D64;
    v33[3] = &unk_100A038D0;
    v9 = v4;
    v34 = v9;
    [v7 setCleanupBlock:v33];
    v10 = *(a1 + 64);
    v11 = [*(a1 + 32) assetPresenterAssetID];
    v12 = *(a1 + 72);
    v13 = *(a1 + 48);
    v14 = [*(a1 + 32) assetPresenterCoverImage];
    v15 = [v10 _coverImageForAssetID:v11 toViewController:v12 forAssetViewController:v9 source:v13 coverImage:v14];
    [v7 setCoverImage:v15];

    v16 = [*(a1 + 32) assetPresenterCoverShadowImage];
    [v7 setCoverShadowImage:v16];

    v17 = [v7 coverImage];

    if (v17)
    {
      v18 = [v7 coverImage];
      [v18 size];
      v20 = v19;
      v22 = v21;

      if (v20 > 0.0 && v22 > 0.0)
      {
        [*(a1 + 32) setAssetPresenterCoverAspect:v22 / v20];
      }
    }

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1001A9D70;
    v27 = &unk_100A0A3B0;
    v28 = *(a1 + 64);
    v29 = *(a1 + 48);
    v32 = *(a1 + 88);
    v30 = *(a1 + 80);
    v31 = *(a1 + 72);
    [v7 setClosedCoverFrameBlock:&v24];
    [v7 setAssertions:{0, v24, v25, v26, v27, v28}];
    if (([*(a1 + 56) coverAnimationHostIsFullyVisible:*(a1 + 48)] & 1) == 0)
    {
      [*(a1 + 56) coverAnimationHostScrollToMakeVisible:*(a1 + 48)];
    }
  }

LABEL_23:

  return v7;
}

double sub_1001A9D70(uint64_t a1)
{
  v2 = [*(a1 + 32) bookOpenAnimationHelper];

  if (v2)
  {
    v3 = [*(a1 + 32) bookOpenAnimationHelper];
    [v3 openAnimationSourceRect];
    v5 = v4;
  }

  else
  {
    [*(a1 + 40) coverAnimationSourceInvalidateFrame];
    [*(a1 + 40) coverAnimationSourceFrame];
    v5 = v6;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 56;
    if (*(a1 + 64))
    {
      v13 = 48;
    }

    v3 = *(a1 + v13);
    v14 = [*(a1 + 40) coverAnimationSourceReferenceView];
    v20.origin.x = CGRectZero.origin.x;
    v20.origin.y = CGRectZero.origin.y;
    v20.size.width = CGRectZero.size.width;
    v20.size.height = CGRectZero.size.height;
    v19.origin.x = v5;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    if (!CGRectEqualToRect(v19, v20))
    {
      v15 = [v3 view];

      if (v14 != v15)
      {
        v16 = [v3 view];
        [v16 convertRect:v14 fromView:{v5, v8, v10, v12}];
        v5 = v17;
      }
    }
  }

  return v5;
}

void sub_1001AAE30(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001AAF24;
  v6[3] = &unk_100A03E80;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 48);
  v3 = objc_retainBlock(v6);
  v4 = +[BURestrictionsProvider sharedInstance];
  if ([v4 isBookStoreAllowed])
  {
  }

  else
  {
    v5 = [*(a1 + 32) _currentlySelectedTabIsStore];

    if (v5)
    {
      [*(a1 + 32) presenterSelectLibraryAllCollection];
    }
  }

  (v3[2])(v3);
}

void sub_1001AAF24(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedNavigationController];
  v3 = [v2 topViewController];
  v4 = *(a1 + 40);

  v5 = *(a1 + 32);
  if (v3 == v4)
  {
    if (([*(a1 + 32) _doesPreviousViewControllerSupportCurrentOrientation] & 1) == 0)
    {
      [*(a1 + 32) _forceOrientationToPortrait:0];
    }

    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001AB070;
    v9[3] = &unk_100A0A2D0;
    v10 = *(a1 + 48);
    [v6 _transition:v9 animator:0 completion:0];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001AB098;
    v7[3] = &unk_100A0A400;
    v8 = *(a1 + 40);
    [v5 _transition:v7 animator:0 completion:0];
  }
}

void sub_1001AB098(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 viewControllers];
  v4 = [v3 indexOfObjectIdenticalTo:*(a1 + 32)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v7 viewControllers];
    v6 = [v5 subarrayWithRange:{0, v4}];
    [v7 setViewControllers:v6 animated:0];
  }
}

void sub_1001AB2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1001A6B30();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1007933DC(v3, v4);
    }
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3 == 0);
  }
}

void sub_1001AB7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_1001AB808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presenterUpdateReadingNowAssetVisibility:1 assetPresenter:*(a1 + 32)];
}

void sub_1001AB85C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001AB8F4;
  v6[3] = &unk_100A0A428;
  v7 = v3;
  v5 = v3;
  [v4 coverAnimationSourceCurrentBookWidgetPrepareImageWithCompletion:v6];
}

void sub_1001ABF1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained testSequence];
    v3 = v5;
    if (v4 == *(a1 + 48))
    {
      (*(*(a1 + 32) + 16))();
      v3 = v5;
    }
  }
}

void sub_1001AC164(id a1, PPTTestRunner *a2)
{
  v2 = [(PPTTestRunner *)a2 testMachine];
  [v2 testFinished];
}

void sub_1001AC1A8(id a1, PPTTestRunner *a2)
{
  v2 = [(PPTTestRunner *)a2 testMachine];
  [v2 handlerReceived];
}

void sub_1001AC1EC(id a1, PPTTestRunner *a2)
{
  v2 = a2;
  v3 = sub_1001E65B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TestRunner: Finished test", v5, 2u);
  }

  v4 = [(PPTTestRunner *)v2 machine];

  [v4 testFinished];
}

id sub_1001AC27C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AC330;
  v8[3] = &unk_100A0A520;
  v9 = v3;
  v5 = v3;
  v6 = [v4 createSafeBlock:v8];

  return v6;
}

void sub_1001AC330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 testDelegate];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@: %@", v6, *(a1 + 32)];
  [v3 setErrorMessage:v7];

  v8 = sub_1001E65B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TestRunner: Finished test with error: %{public}@", buf, 0xCu);
  }

  v10 = [v3 machine];
  [v10 testError];
}

void sub_1001AD5E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001AD604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained contentLoaded];
    v2 = v5;
    if ((v3 & 1) == 0)
    {
      [v5 setContentLoaded:1];
      v4 = [v5 waitingForContentLoaded];
      v2 = v5;
      if (v4)
      {
        [v5 setWaitingForContentLoaded:0];
        [v5 _performCrossFade];
        v2 = v5;
      }
    }
  }
}

id sub_1001AD980(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001ADA50;
  v3[3] = &unk_100A033C8;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001ADAB0;
  v2[3] = &unk_100A038D0;
  v2[4] = v4;
  return [UIView animateWithDuration:0x20000 delay:v3 options:v2 animations:0.85 completion:0.0];
}

void sub_1001ADA50(uint64_t a1)
{
  v2 = [*(a1 + 32) fromViewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

id sub_1001ADAB0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

id sub_1001ADD80(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 40) setAlpha:v1];
}

void sub_1001AEB48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 assetReviewID];
    v5 = [BCAssetReview assetIDFromAssetReviewID:v4];

    v6 = [*(a1 + 32) libraryAsset];
    v7 = [v6 assetID];
    v8 = v7;
    if (v5 == v7)
    {
      v9 = [*(a1 + 32) assetReview];

      if (v9 == v10)
      {
LABEL_7:

        v3 = v10;
        goto LABEL_8;
      }

      [*(a1 + 32) setAssetReview:v10];
      [*(a1 + 32) layoutIfNeeded];
      v6 = [*(a1 + 40) collectionView];
      [v6 performBatchUpdates:&stru_100A0A568 completion:&stru_100A0A588];
    }

    else
    {
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_1001AEC68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001AEDEC;
    v11[3] = &unk_100A03C78;
    v12 = *(a1 + 32);
    v13 = v5;
    v14 = *(a1 + 40);
    v15 = v6;
    v7 = objc_retainBlock(v11);
    v8 = objc_retainBlock(v7);
    if (v8)
    {
      if (+[NSThread isMainThread])
      {
        v8[2](v8);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001AEED8;
        block[3] = &unk_100A03920;
        v10 = v8;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_1001AEDEC(uint64_t a1)
{
  v2 = BUProtocolCast();
  v3 = *(a1 + 40);
  v9 = v2;
  v4 = [v2 libraryAsset];
  v5 = [v4 assetID];
  v6 = v5;
  if (v3 == v5)
  {
    v7 = [*(a1 + 48) asset];
    v8 = *(a1 + 56);

    if (v7 != v8)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 48) setInitialAsset:*(a1 + 56)];
      }

      else
      {
        [*(a1 + 48) setAsset:*(a1 + 56)];
      }

      [*(a1 + 32) layoutIfNeeded];
    }
  }

  else
  {
  }
}

void sub_1001AF9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1007934BC(a1, v4);
  }
}

void sub_1001B05DC(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = [*(a1 + 48) count];
  v5 = [*(a1 + 56) count];
  if ((*(a1 + 72) & 1) != 0 || (v6 = v2 + v3 + v5 + v4, v6 > 40) || ([*(a1 + 64) collectionView], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "window"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = [*(a1 + 64) collectionView];
    [v12 reloadData];
  }

  else if (v6)
  {
    v9 = [*(a1 + 64) collectionView];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B077C;
    v13[3] = &unk_100A039C0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 64);
    v14 = v10;
    v15 = v11;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    [v9 performBatchUpdates:v13 completion:&stru_100A0A5F8];
  }
}

void sub_1001B077C(id *a1)
{
  if ([a1[4] count])
  {
    v2 = [a1[5] collectionView];
    [v2 deleteSections:a1[4]];
  }

  if ([a1[6] count])
  {
    v3 = [a1[5] collectionView];
    [v3 insertSections:a1[6]];
  }

  if ([a1[7] count])
  {
    v4 = [a1[5] collectionView];
    [v4 deleteItemsAtIndexPaths:a1[7]];
  }

  if ([a1[8] count])
  {
    v5 = [a1[5] collectionView];
    [v5 insertItemsAtIndexPaths:a1[8]];
  }
}

void sub_1001B0918(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

void sub_1001B0A00(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 visibleCells];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      v21 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = BUProtocolCast();
        v11 = BUProtocolCast();
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [v11 libraryAsset];
          v15 = [v14 assetID];

          if ([*(v1 + 40) containsObject:v15])
          {
            v16 = [*(v1 + 32) booksDataSource];
            [v16 cachedResourceForAssetID:v15];
            v17 = v7;
            v18 = v1;
            v20 = v19 = v4;

            [v10 setAsset:v20];
            [v9 layoutIfNeeded];

            v4 = v19;
            v1 = v18;
            v7 = v17;
          }

          v6 = v21;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

void sub_1001B0CA8(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

void sub_1001B0DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 visibleCells];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 libraryAsset];
        v11 = *(a1 + 40);
        v12 = [v10 assetID];
        LODWORD(v11) = [v11 containsObject:v12];

        if (v11)
        {
          v13 = [*(a1 + 32) booksDataSource];
          v14 = [v10 assetID];
          v15 = [v13 assetReviewForAssetID:v14];
          [v9 setAssetReview:v15];

          [v9 layoutIfNeeded];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void sub_1001B2A0C(uint64_t a1)
{
  v6 = [*(a1 + 32) seriesBooks];
  objc_opt_class();
  v2 = [v6 anyObject];
  v3 = BUDynamicCast();

  v4 = [*(a1 + 40) priceManager];
  v5 = [v6 valueForKey:@"storeID"];
  [v4 collectPricesForSeriesStoreIDs:v5 isAudiobookSeries:{objc_msgSend(v3, "isAudiobook")}];
}

void sub_1001B3C4C(uint64_t a1)
{
  v6 = objc_retainBlock(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void sub_1001B3E3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (!v3)
  {
    v4 = [*(a1 + 32) group];
    dispatch_group_enter(v4);
  }
}

void sub_1001B3E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24) - 1;
  *(v2 + 24) = v3;
  if (!v3)
  {
    v4 = [*(a1 + 32) group];
    dispatch_group_leave(v4);
  }
}

void sub_1001B40A0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1001B41AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B6258(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001B62E0;
  v2[3] = &unk_100A03788;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1001B6398(uint64_t a1)
{
  v2 = [*(a1 + 32) bookshelfViewController];
  objc_opt_class();
  v22 = v2;
  v3 = BUClassAndProtocolCast();
  v23 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  +[CATransaction synchronize];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = a1;
  v5 = [*(a1 + 32) bookshelfContentViews];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (v3)
        {
          v11 = [v3 transitionViewIsSnapshottable:*(*(&v24 + 1) + 8 * i)];
        }

        else
        {
          v11 = 1;
        }

        v12 = [v10 window];
        v13 = [v12 windowScene];

        if (v11 && [v13 activationState] != 2)
        {
          v14 = [v10 snapshotViewAfterScreenUpdates:0];
          if (v14)
          {
            v15 = v14;
            [v23 addObject:v14];
            [v10 center];
            [v15 setCenter:?];
            v16 = [v10 superview];
            [v16 insertSubview:v15 belowSubview:v10];

            [v10 setAlpha:0.0];
            goto LABEL_15;
          }

          BCReportAssertionFailureWithMessage();
        }

        [v4 addObject:v10];
LABEL_15:
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  if ([*(v21 + 32) opening])
  {
    v17 = [*(v21 + 32) minifiedBarAnimator];
    v18 = [v17 minifiedBarAnimatorContainerView];

    if (v18)
    {
      [v4 addObject:v18];
    }
  }

  [*(v21 + 32) setBookshelfSnapshots:v23];
  [*(v21 + 32) setBookshelfLiveViews:v4];
  v19 = objc_retainBlock(*(v21 + 40));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19);
  }
}

void sub_1001B6974(uint64_t a1)
{
  v2 = [*(a1 + 32) bookViewController];
  v3 = [v2 view];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) bookshelfViewController];
  v5 = [v4 view];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) toViewController];
  v7 = [v6 view];
  [v7 frame];
  CGRectMakeWithOriginSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [*(a1 + 32) toViewController];
  v17 = [v16 view];
  [v17 setFrame:{v9, v11, v13, v15}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = [*(a1 + 32) bookshelfContentViews];
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      v22 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v30 + 1) + 8 * v22) setAlpha:1.0];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = [*(a1 + 32) fromViewController];
  v24 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v24 bookOpenRevealDidEnd];
  }

  v25 = [*(a1 + 32) toViewController];
  v26 = [v25 im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  v27 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v28 = [*(a1 + 32) containerView];
    [v27 transitionContextWillCompleteTransitionInContainerView:v28];
  }

  [*(a1 + 32) teardownViews:*(a1 + 40)];
  v29 = [*(a1 + 32) coverSource];
  [v29 coverAnimationSourceFinalize];
}

void sub_1001B6C44(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B6D78;
    v8[3] = &unk_100A033C8;
    v8[4] = *(a1 + 32);
    [UIView animateWithDuration:v8 animations:0.5];
  }

  v2 = [*(a1 + 32) transitionContext];
  [v2 completeTransition:*(a1 + 40)];

  if ([*(a1 + 32) opening])
  {
    v3 = [*(a1 + 32) containerView];
    v4 = [*(a1 + 32) fromViewController];
    v5 = [v4 view];
    v6 = [*(a1 + 32) toViewController];
    v7 = [v6 view];
    [v3 insertSubview:v5 below:v7];
  }
}

void sub_1001B6D78(uint64_t a1)
{
  v1 = [*(a1 + 32) fromViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void sub_1001B7154(uint64_t a1)
{
  if ([*(a1 + 32) interactive])
  {
    sub_1007936BC();
  }

  if ([*(a1 + 32) opening])
  {
    *(*(a1 + 32) + 10) = 1;
    v2 = [*(a1 + 32) bookViewController];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) bookViewController];
      *(*(a1 + 32) + 10) = [v4 prefersStatusBarHiddenDuringTransition];
    }

    v5 = [*(a1 + 32) toViewController];
    [v5 setNeedsStatusBarAppearanceUpdate];
  }

  [*(a1 + 32) animateNonInteractive];
  if ([*(a1 + 32) opening])
  {
    if ([*(a1 + 32) defersBookViewSetupForOpening])
    {
      v6 = [*(a1 + 32) bookViewController];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1001B72AC;
      v8[3] = &unk_100A03440;
      v8[4] = *(a1 + 32);
      v9 = v6;
      v7 = v6;
      dispatch_async(&_dispatch_main_q, v8);
    }
  }
}

uint64_t sub_1001B72AC(uint64_t a1)
{
  [*(a1 + 32) _deferredSetupBookView];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 bookOpenTransitionDidEnd];
  }

  return result;
}

void sub_1001B74FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) toViewController];
  [v1 minifiedBarAnimatePrepareTransitionToViewController:v2];
}

void sub_1001B7550(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 0.0)
  {
    v3 = *(a1 + 56);
    v23[1] = 3221225472;
    v23[0] = _NSConcreteStackBlock;
    v23[2] = sub_1001B7720;
    v23[3] = &unk_100A03440;
    v4 = v2 / v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v24 = v5;
    v25 = v6;
    [UIView addKeyframeWithRelativeStartTime:v23 relativeDuration:0.0 animations:v4];
  }

  v7 = *(a1 + 64);
  if (v7 > 0.0)
  {
    v8 = (*(a1 + 56) - v7 + -0.01) / *(a1 + 56);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001B7774;
    v20[3] = &unk_100A03440;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v21 = v9;
    v22 = v10;
    [UIView addKeyframeWithRelativeStartTime:v20 relativeDuration:v8 animations:0.01];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = (v11 - v12) / v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001B77C8;
    v17[3] = &unk_100A03440;
    v14 = v12 / v11;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v15;
    v19 = v16;
    [UIView addKeyframeWithRelativeStartTime:v17 relativeDuration:v13 animations:v14];
  }
}

void sub_1001B7720(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) fromViewController];
  [v1 minifiedBarAnimatorAnimateHideIfNeededFromViewController:v2];
}

void sub_1001B7774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) toViewController];
  [v1 minifiedBarAnimatorPrepareShowIfNeededToViewController:v2];
}

void sub_1001B77C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) toViewController];
  [v1 minifiedBarAnimatorAnimateShowIfNeededToViewController:v2 force:0];
}

id sub_1001B8408(uint64_t a1)
{
  v2 = [[BKApplicationShortcutController alloc] initWithLibrary:*(a1 + 32)];
  v3 = qword_100AF77F8;
  qword_100AF77F8 = v2;

  [qword_100AF77F8 setAnnotationProvider:*(a1 + 40)];
  v4 = qword_100AF77F8;

  return [v4 _updateShortcuts];
}

void sub_1001B865C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B8714;
  v5[3] = &unk_100A04058;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1001B8714(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 appLaunchCoordinator];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B8804;
  v4[3] = &unk_100A0A288;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [v3 appLaunchCoordinatorOnConditionMask:512 blockID:@"update shortcuts" performBlock:v4];

  objc_destroyWeak(&v6);
}

void sub_1001B8804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performUpdateShortCutsWithCompletion:v3];
  }

  else
  {
    v4 = objc_retainBlock(v3);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }
}

void sub_1001B8A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000274DC;
  v24 = sub_100027698;
  v25 = objc_alloc_init(NSMutableArray);
  v4 = [*(a1 + 32) annotationProvider];
  v5 = [v4 newManagedObjectContext];

  if (v5)
  {
    v6 = [*(a1 + 32) mainLibrary];
    v7 = [v6 mostRecentlyOpenedBooks:3 inManagedObjectContext:v3];

    v8 = [v7 valueForKey:@"objectID"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001B8C74;
    v17[3] = &unk_100A0A728;
    v18 = v5;
    v19 = &v20;
    [v7 enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v8 = 0;
  }

  if ([v21[5] count])
  {
    v9 = v21[5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B8EA4;
    v13[3] = &unk_100A0A840;
    v10 = *(a1 + 32);
    v16 = &v20;
    v13[4] = v10;
    v14 = v8;
    v15 = *(a1 + 40);
    [BCFutureValue futures:v9 notify:v13];
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 40));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1001B8C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B8C74(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isValid])
  {
    v4 = objc_opt_new();
    v5 = +[NSMutableDictionary dictionary];
    v6 = [v3 assetID];
    [v5 setObject:v6 forKeyedSubscript:off_100AD05F0];

    v7 = [v3 title];
    if ([v7 length] >= 0x81)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"…" value:&stru_100A30A68 table:0];

      v10 = [v7 substringToIndex:128];
      v11 = [v10 stringByAppendingString:v9];

      v7 = v11;
    }

    [v5 setObject:v7 forKeyedSubscript:off_100AD05F8];
    v12 = *(a1 + 32);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001B8E58;
    v18 = &unk_100A0A700;
    v19 = v5;
    v20 = v4;
    v13 = v4;
    v14 = v5;
    [BKBookProgressController progressStringForLibraryAsset:v3 annotationMOC:v12 completion:&v15];
    [*(*(*(a1 + 40) + 8) + 40) addObject:{v13, v15, v16, v17, v18}];
  }
}

id sub_1001B8E58(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:off_100AD0600];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 set:v4 error:0];
}

void sub_1001B8EA4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8F5C;
  block[3] = &unk_100A0A840;
  v2 = *(a1 + 56);
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v2;
  v7 = v5;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001B8F5C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) valueForKey:@"value"];
  v3 = [v2 bu_arrayByRemovingNSNulls];

  v4 = [*(a1 + 32) currentBookShortcuts];
  v5 = [v4 isEqualToArray:v3];

  if (v5)
  {
    v6 = objc_retainBlock(*(a1 + 48));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = [*(a1 + 32) mainLibrary];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001B90D4;
    v12[3] = &unk_100A0A818;
    v13 = *(a1 + 40);
    v10 = v3;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    v16 = v8;
    v17 = *(a1 + 48);
    v7 = v8;
    [v9 performBackgroundReadOnlyBlock:v12];
  }
}

void sub_1001B90D4(uint64_t a1, void *a2)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B9248;
  v15[3] = &unk_100A0A7F0;
  v16 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = v16;
  [v3 enumerateObjectsUsingBlock:v15];
  v8 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B98B4;
  v11[3] = &unk_100A04FE8;
  v12 = v8;
  v10 = *(a1 + 40);
  v9 = v10.i64[0];
  v13 = vextq_s8(v10, v10, 8uLL);
  v14 = *(a1 + 64);
  [BCFutureValue futures:v12 notify:v11];
}

void sub_1001B9248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) existingObjectWithID:v3 error:0];
  if ([v4 isValid])
  {
    v5 = [v4 assetID];

    if (v5)
    {
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x3032000000;
      v32[3] = sub_1000274DC;
      v32[4] = sub_100027698;
      v33 = 0;
      v6 = *(a1 + 40);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001B955C;
      v29[3] = &unk_100A0A750;
      v7 = v4;
      v30 = v7;
      v31 = v32;
      [v6 enumerateObjectsUsingBlock:v29];
      v8 = objc_opt_new();
      CGSizeScaleToScreen();
      v10 = v9;
      v12 = v11;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001B9628;
      v27[3] = &unk_100A0A778;
      v13 = v8;
      v28 = v13;
      [BKLibraryManager fetchImageForAsset:v7 size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v27 completion:v10, v12];
      v14 = objc_opt_new();
      v15 = [v7 title];
      v16 = [v7 assetID];
      v17 = [v7 isAudiobook];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001B9698;
      v21[3] = &unk_100A0A7C8;
      v21[4] = *(a1 + 48);
      v26 = v17;
      v18 = v16;
      v22 = v18;
      v19 = v15;
      v23 = v19;
      v25 = v32;
      v20 = v14;
      v24 = v20;
      [v13 get:v21];
      [*(a1 + 56) addObject:v20];

      _Block_object_dispose(v32, 8);
    }
  }
}

void sub_1001B955C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 objectForKeyedSubscript:off_100AD05F0];
  v7 = [*(a1 + 32) assetID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v12 objectForKeyedSubscript:off_100AD0600];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (a4)
    {
      *a4 = 1;
    }
  }
}

void sub_1001B9628(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [a2 CGImage]);
  [v2 set:v3 error:0];
}

void sub_1001B9698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9790;
  block[3] = &unk_100A0A7A0;
  v9 = v3;
  v13 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = v7;
  v12 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1001B9790(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [UIApplicationShortcutIcon iconWithCustomImage:v2 isTemplate:0];
  }

  else
  {
    [UIApplicationShortcutIcon iconWithTemplateImageName:@"PlaceholderNormal"];
  }
  v6 = ;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:*(a1 + 72)];
  [v3 setObject:v4 forKeyedSubscript:@"isAudiobook"];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"assetID"];
  v5 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.iBooks.assetReading" localizedTitle:*(a1 + 48) localizedSubtitle:*(*(*(a1 + 64) + 8) + 40) icon:v6 userInfo:v3];
  [*(a1 + 56) set:v5 error:0];
}

void sub_1001B98B4(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:@"value"];
  v3 = [v2 bu_arrayByRemovingNSNulls];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B99A4;
  block[3] = &unk_100A033C8;
  v4 = v3;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
  [*(a1 + 40) setCurrentBookShortcuts:*(a1 + 48)];
  v5 = objc_retainBlock(*(a1 + 56));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
  }
}

void sub_1001B99A4(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 setShortcutItems:*(a1 + 32)];
}

id sub_1001B9CD0()
{
  if (qword_100AF7810 != -1)
  {
    sub_1007936F8();
  }

  v1 = qword_100AF7808;

  return v1;
}

void sub_1001B9D14(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKAudiobooks.NowPlaying");
  v2 = qword_100AF7808;
  qword_100AF7808 = v1;
}

uint64_t sub_1001B9ECC(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == *(result + 48) && *(v1 + 24) == *(result + 52))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_1001B9FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained testDelegate];
  [v3 stopTestWithTimeout];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [v4 testDelegate];
  [v5 terminate];

  v6 = [*(a1 + 32) onTestTimeout];

  if (v6)
  {
    v7 = [*(a1 + 32) onTestTimeout];
    v7[2]();
  }

  *(*(a1 + 32) + 8) = 0;
}

void sub_1001BA134(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 8))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = [WeakRetained testDelegate];
    v5 = [v4 hasHandler];

    v6 = *(a1 + 32);
    if (v5)
    {

      [v6 startTest];
    }

    else
    {
      v6[2] = 1;
      v7 = *(a1 + 32);
      v8 = objc_loadWeakRetained(v7 + 2);
      v9 = [v8 testDelegate];
      v10 = [v9 handlerTimeout];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001BA250;
      v11[3] = &unk_100A033C8;
      v11[4] = *(a1 + 32);
      [v7 sleep:v10 completion:v11];
    }
  }
}

void sub_1001BA250(uint64_t a1)
{
  v2 = [*(a1 + 32) onHandlerTimeout];

  if (v2)
  {
    v3 = [*(a1 + 32) onHandlerTimeout];
    v3[2]();
  }

  *(*(a1 + 32) + 8) = 0;
}

_DWORD *sub_1001BA350(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2] == 1)
  {
    return [result startTest];
  }

  return result;
}

void sub_1001BA408(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 2)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = [WeakRetained testDelegate];
    [v4 terminate];

    v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v6 = [v5 testDelegate];
    v7 = [v6 didTestFail];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 onTestError];

      if (v9)
      {
        v10 = [*(a1 + 32) onTestError];
LABEL_7:
        v12 = v10;
        (*(v10 + 16))();
      }
    }

    else
    {
      v11 = [v8 onTestFinished];

      if (v11)
      {
        v10 = [*(a1 + 32) onTestFinished];
        goto LABEL_7;
      }
    }

    *(*(a1 + 32) + 8) = 0;
  }
}

void sub_1001BA760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BA788(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = +[BKContextMenuProvider sharedProvider];
    v5 = [WeakRetained bookshelfCVC];
    v6 = [WeakRetained _dataModelForLibraryAsset:*(a1 + 32) fromSourceView:*(a1 + 40) inCollection:*(a1 + 48)];
    v7 = [v4 menuElementsForViewController:v5 dataModel:v6];

    v8[2](v8, v7);
  }

  else
  {
    v8[2](v8, &__NSArray0__struct);
  }
}

void sub_1001BAF70(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v27 = BKLibraryAssetMarkedLocation;
  v28 = BALocationTypeFromLibraryFinish;
  v4 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v3 setFinishedStateUserSetsFinished:0 userInfo:v4];

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [v3 dateFinished];
  [v5 willMarkAsset:v6 finished:1 finishedDate:v7];

  if ([*(a1 + 56) isOwned])
  {
    v8 = [*(a1 + 56) storeID];
    if ([v8 length])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [*(a1 + 56) contentType]);
  v11 = +[BAEventReporter sharedReporter];
  v12 = [v11 seriesTypeForContentID:*(a1 + 40)];

  if ([v3 isAudiobook])
  {
    v13 = [v3 hasRACSupport];
    if ([v13 BOOLValue])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 supplementalContentAssets];
  v16 = [v15 count];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001BB1BC;
  v19[3] = &unk_100A0A8B0;
  v17 = *(a1 + 40);
  v22 = v9;
  v23 = v10;
  v24 = v16;
  v25 = v12;
  v26 = v14;
  v18 = *(a1 + 64);
  v20 = v17;
  v21 = v18;
  dispatch_async(&_dispatch_main_q, v19);
}

void sub_1001BB1BC(uint64_t a1)
{
  v2 = +[BAEventReporter sharedReporter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v2 emitMarkAsFinishedEventWithTracker:0 contentID:v3 contentAcquisitionType:v4 contentType:v5 supplementalContentCount:v6 seriesType:*(a1 + 72) productionType:*(a1 + 80)];

  v8 = [*(a1 + 40) bookshelfCVC];
  v7 = [v8 layout];
  [v7 invalidateLayout];
}

void sub_1001BB404(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);

    [v3 _showActionNotAvailableBecauseContentNotAvailableAlert];
  }

  else
  {
    v5 = +[BSUIStoreServices sharedInstance];
    v4 = [*(a1 + 32) storeID];
    [v5 showWriteAReviewForStoreId:v4 transaction:0];
  }
}

uint64_t sub_1001BB59C(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(a1 + 48) _showActionNotAvailableBecauseContentNotAvailableAlert];
  }

  else
  {
    v3 = [NSNumber numberWithDouble:*(a1 + 64)];
    v4 = [*(a1 + 32) storeID];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BB6C8;
    v6[3] = &unk_100A0A900;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 64);
    [BSUICloudAssetRatingsManager updateRating:v3 title:0 body:0 itemId:v4 shouldSuppressMetrics:0 completion:v6];
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1001BB6C8(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001BB778;
  v3[3] = &unk_100A0A8D8;
  v7 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1001BB778(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if ([*(a1 + 32) isOwned])
    {
      v3 = [*(a1 + 32) storeID];
      if ([v3 length])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [*(a1 + 32) contentType]);
    if ([*(a1 + 32) isAudiobook])
    {
      v6 = [*(a1 + 32) hasRACSupport];
      if ([v6 BOOLValue])
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = +[BAEventReporter sharedReporter];
    v8 = [*(a1 + 40) ba_analyticsTracker];
    v9 = [NSNumber numberWithDouble:*(a1 + 48)];
    v10 = [*(a1 + 32) assetID];
    v11 = [*(a1 + 32) supplementalContentAssets];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    [v13 emitRatingEventWithTracker:v8 rating:v9 contentID:v10 contentAcquisitionType:v4 contentType:v5 supplementalContentCount:v12 productionType:v7];
  }
}

void sub_1001BBD60(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) atAssetsInFlight];
    v4 = [v3 allValues];
    v5[2](v5, v4, 0);

    v2 = v5;
  }
}

void sub_1001BC240(uint64_t a1)
{
  v2 = [*(a1 + 32) atAssetsInFlight];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = objc_retainBlock(*(a1 + 48));
  if (v4)
  {
    if (v3)
    {
      v3[2](v3, v4, 0);
    }
  }

  else if (v3)
  {
    v3[2](v3, 0, 0);
  }
}

void sub_1001BC3C8(uint64_t a1)
{
  v2 = [*(a1 + 32) atAssetsInFlight];
  v10 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v10)
  {
    v3 = [v10 contentType];
    v4 = @"Book";
    if (v3 == 6)
    {
      v4 = @"Media";
    }

    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 connection];
    [v7 prioritizeAsset:*(a1 + 40) forDataclass:v6];
  }

  v8 = objc_retainBlock(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

void sub_1001BC884(void *a1, void *a2)
{
  v18 = a2;
  v3 = a1[4];
  v4 = [v18 dataclass];
  v5 = [v18 assetType];
  LODWORD(v3) = [v3 _supportsDataclass:v4 assetType:v5];

  if (v3)
  {
    v6 = a1[5];
    v7 = [v18 dataclass];
    [v6 addObject:v7];

    v8 = a1[6];
    v9 = [v18 identifier];
    [v8 setObject:v18 forKey:v9];

    v10 = a1[7];
    v11 = [v18 identifier];
    [v10 addObject:v11];

    [v18 downloadProgress];
    if (v12 >= 1.0)
    {
      v14 = v18;
      v15 = 8;
    }

    else
    {
      [v18 downloadProgress];
      if (v13 <= 0.0)
      {
        goto LABEL_7;
      }

      v14 = v18;
      v15 = 9;
    }

    v16 = a1[v15];
    v17 = [v14 identifier];
    [v16 addObject:v17];
  }

LABEL_7:
}

void sub_1001BC9D8(uint64_t a1)
{
  v2 = [*(a1 + 32) atAssetIDs];
  [*(a1 + 40) unionSet:*(a1 + 48)];
  [*(a1 + 40) minusSet:v2];
  [*(a1 + 56) unionSet:v2];
  [*(a1 + 56) minusSet:*(a1 + 64)];
  [v2 unionSet:*(a1 + 40)];
  [v2 minusSet:*(a1 + 56)];
  v41 = v2;
  [*(a1 + 32) setAtAssetIDs:v2];
  if ([*(a1 + 56) count])
  {
    v3 = +[NSMutableArray array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v4 = *(a1 + 56);
    v5 = [v4 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v50;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v50 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v49 + 1) + 8 * i);
          v10 = [*(a1 + 32) atAssetsInFlight];
          v11 = [v10 objectForKeyedSubscript:v9];

          if (!v11)
          {
            v12 = [*(a1 + 72) objectForKeyedSubscript:v9];
            v13 = [BKATAsset alloc];
            v14 = [*(a1 + 32) identifier];
            v11 = [(BKATAsset *)v13 initWithATAsset:v12 dataSourceIdentifier:v14];
          }

          [v3 addObject:v11];
          v15 = [*(a1 + 32) atAssetsInFlight];
          [v15 removeObjectForKey:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v6);
    }

    v16 = [*(a1 + 32) dataSourceAirTrafficEndedHandler];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16, 0);
    }

    v18 = [*(a1 + 32) libraryManager];
    [v18 libraryDataSource:*(a1 + 32) removedAssets:v3];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001BCF6C;
    v48[3] = &unk_100A0A978;
    v48[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v48];
  }

  if ([*(a1 + 40) count])
  {
    v19 = +[NSMutableArray array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = *(a1 + 40);
    v20 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v44 + 1) + 8 * j);
          v25 = [*(a1 + 72) objectForKeyedSubscript:v24];
          v26 = [BKATAsset alloc];
          v27 = [*(a1 + 32) identifier];
          v28 = [(BKATAsset *)v26 initWithATAsset:v25 dataSourceIdentifier:v27];

          v29 = +[NSDate date];
          [(BKATAsset *)v28 setLastOpenDate:v29];

          [v19 addObject:v28];
          v30 = [*(a1 + 32) atAssetsInFlight];
          [v30 setObject:v28 forKey:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v21);
    }

    v31 = *(a1 + 32);
    v32 = [v31 atAssetsInFlight];
    v33 = [v32 allValues];
    [v31 pushCoverForAssets:v33];

    v34 = [*(a1 + 32) libraryManager];
    [v34 libraryDataSource:*(a1 + 32) addedAssets:v19];
  }

  v35 = BKATAssetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v37 = [v41 count];
    v38 = [*(a1 + 40) count];
    v39 = [*(a1 + 56) count];
    v40 = *(a1 + 80);
    *buf = 134218754;
    v54 = v37;
    v55 = 2048;
    v56 = v38;
    v57 = 2048;
    v58 = v39;
    v59 = 2112;
    v60 = v40;
    _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Updated Assets: {total: %ld} -- {new: %ld} -- {removed: %ld} -- {assetsTypes: %@}", buf, 0x2Au);
  }

  if ([*(a1 + 72) count])
  {
    v36 = *(a1 + 72);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001BD11C;
    v43[3] = &unk_100A0A9A0;
    v43[4] = *(a1 + 32);
    [v36 enumerateKeysAndObjectsUsingBlock:v43];
  }

  if (([*(a1 + 32) connectionEstablished] & 1) == 0)
  {
    [*(a1 + 32) setConnectionEstablished:1];
  }
}

void sub_1001BCF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BKLibraryDownloadStatus alloc];
  v5 = [v3 assetID];
  if (v5)
  {
    [v3 assetID];
  }

  else
  {
    [v3 temporaryAssetID];
  }
  v6 = ;
  v7 = [v3 atAsset];
  v8 = [v7 totalBytes];
  v9 = [v3 atAsset];
  v10 = [v4 initWithAssetID:v6 state:5 progressValue:0 timeRemaining:v8 bytesDownloaded:objc_msgSend(v9 fileSize:{"totalBytes"), 1.0}];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = BKLibraryDownloadStatusNotification;
  v13 = *(a1 + 32);
  v16 = BKLibraryDownloadStatusKey;
  v14 = [NSSet setWithObject:v10];
  v17 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v11 postNotificationName:v12 object:v13 userInfo:v15];
}

void sub_1001BD11C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 atAssetsInFlight];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = BKATAssetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1007938F0(v5, v10);
    }

    v11 = [v9 assetID];
    if (v11)
    {
      [v9 assetID];
    }

    else
    {
      [v9 temporaryAssetID];
    }
    v12 = ;

    [v5 downloadProgress];
    if (v13 != 0.0)
    {
      v14 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v12 state:4 progressValue:1 timeRemaining:(v13 * objc_msgSend(v5 bytesDownloaded:"totalBytes")) fileSize:{objc_msgSend(v5, "totalBytes"), v13}];
      v15 = +[NSNotificationCenter defaultCenter];
      v16 = BKLibraryDownloadStatusNotification;
      v17 = *(a1 + 32);
      v20 = BKLibraryDownloadStatusKey;
      v18 = [NSSet setWithObject:v14];
      v21 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v15 postNotificationName:v16 object:v17 userInfo:v19];
    }
  }
}

void sub_1001BD41C(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSourceAirTrafficEndedHandler];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1);
    v1 = v2;
  }
}

void sub_1001BD53C(uint64_t a1)
{
  v2 = BKATAssetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1007939D4(a1, v2);
  }

  v3 = [*(a1 + 32) atAssetIDs];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [*(a1 + 32) atAssetsInFlight];
    v5 = [v4 count];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = [*(a1 + 32) atAssetsInFlight];
  v7 = [v6 allValues];

  v8 = [*(a1 + 32) dataSourceAirTrafficEndedHandler];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }

  v10 = [*(a1 + 32) libraryManager];
  [v10 libraryDataSource:*(a1 + 32) removedAssets:v7];

LABEL_9:
  v11 = [*(a1 + 32) atAssetIDs];
  [v11 removeAllObjects];

  v12 = [*(a1 + 32) atAssetsInFlight];
  [v12 removeAllObjects];

  v13 = dispatch_time(0, 1500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD6E8;
  block[3] = &unk_100A033C8;
  block[4] = *(a1 + 32);
  dispatch_after(v13, &_dispatch_main_q, block);
}

void sub_1001BD6E8(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSourceAirTrafficEndedHandler];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 0);
    v1 = v2;
  }
}

void sub_1001BF330(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_1001BF37C(uint64_t a1)
{
  v2 = objc_alloc_init(TUIMutableTransactionOptions);
  [v2 setAnimate:1];
  [v2 setDuration:0.6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001BF450;
  v4[3] = &unk_100A0A9F0;
  v5 = *(a1 + 32);
  v3 = [TUITransaction currentOrNewTransactionWithOptions:v2 block:v4];
}

void sub_1001BF458(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    [v5 setHorizontalSizeClass:1];
  }
}

void sub_1001BF4CC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001BF570;
  v2[3] = &unk_100A03440;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1001BF570(uint64_t a1)
{
  [*(a1 + 32) cardStackTransitioningCardContentFinalizePreparationForOpen];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_1001BF5AC(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 5000000000;
  }

  else
  {
    v2 = 300000000;
  }

  v3 = *(a1 + 32);
  v4 = dispatch_time(0, v2);
  v5 = dispatch_group_wait(v3, v4);
  v6 = BCAugmentedExperienceSignpost();
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = @"YES";
    if (!v5)
    {
      v9 = @"NO";
    }

    *buf = 138412290;
    v13 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "EOB.CardAnimation.prepareForOpen.wait", "Timeout: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BF730;
  block[3] = &unk_100A03920;
  v11 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001BF730(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1001BF7A4(uint64_t a1)
{
  v2 = BCAugmentedExperienceSignpost();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "EOB.CardAnimation.prepareForOpen", "", v5, 2u);
  }
}

void sub_1001BFB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1001BFB9C(uint64_t a1)
{
  v2 = [*(a1 + 32) compactArtworkSource];
  v3 = [*(a1 + 32) createCardArtworkSource];
  [*(a1 + 32) setCardArtworkSource:v3];
  if ([*(a1 + 32) isCoverTransition])
  {
    [*(a1 + 32) hideCovers];
  }

  [*(a1 + 40) updateCardSize];
  [*(a1 + 32) _cardInitialTopOffset];
  *(*(*(a1 + 56) + 8) + 24) = v4;
  if (*(*(*(a1 + 56) + 8) + 24) != 0.0)
  {
    v5 = [*(a1 + 40) cardNavigationController];
    v6 = [v5 view];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v10 - *(*(*(a1 + 56) + 8) + 24);
    v16 = [*(a1 + 40) cardNavigationController];
    v17 = [v16 view];
    [v17 setFrame:{v8, v15, v12, v14}];
  }

  v18 = [*(a1 + 40) cardNavigationController];
  v19 = [v18 view];
  [v19 setAlpha:0.0];

  v20 = [*(a1 + 40) closeButton];
  [v20 setAlpha:0.0];

  v21 = [*(a1 + 40) view];
  [v21 layoutSubviews];

  v22 = [[_BKEndOfBookCardTransitionSnapshotView alloc] initWithCompactViewController:*(a1 + 48)];
  v23 = [*(a1 + 40) view];
  [v23 insertSubview:v22 atIndex:0];

  [*(a1 + 32) setSnapshotView:v22];
  [(_BKEndOfBookCardTransitionSnapshotView *)v22 layoutSubviews];
  [*(a1 + 32) _setupCardDropShadowForPresented:0];
  if ([*(a1 + 32) isCoverTransition])
  {
    v24 = [*(a1 + 48) contentView];
    [v2 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [v2 referenceView];
    [v24 convertRect:v33 fromView:{v26, v28, v30, v32}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = [*(a1 + 40) view];
    [v3 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [v3 referenceView];
    [v42 convertRect:v51 fromView:{v44, v46, v48, v50}];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v60 = v55 + *(*(*(a1 + 56) + 8) + 24);
    v61 = objc_alloc_init(BCSheetTransitionCoverController);
    if ([*(a1 + 32) isCompositeCompactArtwork])
    {
      CGRectGetCenter();
      CGSizeScaledToFillInSize();
      CGRectMakeWithCenterAndSize();
      v35 = v62;
      v37 = v63;
      v39 = v64;
      v41 = v65;
      [v61 setupWithArtworkSource:v3];
      v66 = [v61 coverView];
      [v66 setAlpha:0.0];
    }

    else
    {
      [v61 setupWithArtworkSource:v2 cardArtworkSource:v3 isDismiss:0];
    }

    [v61 configureCoverViewWithFrame:{v35, v37, v39, v41}];
    v67 = [*(a1 + 40) view];
    v68 = [v61 coverView];
    [v67 addSubview:v68];

    [*(a1 + 32) setCoverController:v61];
    CGRectGetCenterNoRounding();
    v69 = *(*(a1 + 64) + 8);
    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    sub_1001C002C(&v76, v35, v37, v39, v41, v53, v60, v57, v59);
    v72 = *(*(a1 + 72) + 8);
    v74 = *&v76.c;
    v73 = *&v76.tx;
    v72[2] = *&v76.a;
    v72[3] = v74;
    v72[4] = v73;
  }

  v75 = [*(a1 + 48) view];
  [v75 setHidden:1];
}

CGAffineTransform *sub_1001C002C@<X0>(CGAffineTransform *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  Width = CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v18 = Width / CGRectGetWidth(v26);
  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  Height = CGRectGetHeight(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v20 = Height / CGRectGetHeight(v28);

  return CGAffineTransformMakeScale(a1, v18, v20);
}

void sub_1001C0454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001C047C(uint64_t a1)
{
  v2 = [*(a1 + 32) createCompactArtworkSource];
  v3 = [*(a1 + 32) createCardArtworkSource];
  [*(a1 + 32) setCompactArtworkSource:v2];
  v4 = [*(a1 + 40) im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCSheetTransitioningArtworkHost includePresented:0];
  v5 = v4;
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && [v4 visibilityOfArtworkSource:v3] != 2)
  {
    [*(a1 + 32) setCardArtworkSource:v3];
  }

  v7 = [*(a1 + 32) cardArtworkSource];

  v8 = [*(a1 + 40) transitioningCardContent];
  [*(a1 + 32) setCardContent:v8];

  if ([*(a1 + 32) isCoverTransition])
  {
    [*(a1 + 32) hideCovers];
  }

  v9 = [*(a1 + 32) cardContent];
  [v9 cardStackTransitioningCardContentPrepareForDismiss];

  v10 = [[_BKEndOfBookCardTransitionSnapshotView alloc] initWithCompactViewController:*(a1 + 48)];
  [*(a1 + 40) cardSize];
  CGRectMakeWithSize();
  [(_BKEndOfBookCardTransitionSnapshotView *)v10 setFrame:?];
  v11 = [*(a1 + 40) view];
  [v11 insertSubview:v10 atIndex:0];

  [*(a1 + 32) setSnapshotView:v10];
  [*(a1 + 32) _cardInitialTopOffset];
  [(_BKEndOfBookCardTransitionSnapshotView *)v10 setSnapshotTopOffset:?];
  v12 = [(_BKEndOfBookCardTransitionSnapshotView *)v10 snapshot];
  [v12 setAlpha:0.0];

  v13 = [(_BKEndOfBookCardTransitionSnapshotView *)v10 closeButtonView];
  [v13 setAlpha:0.0];

  [(_BKEndOfBookCardTransitionSnapshotView *)v10 layoutSubviews];
  if ([*(a1 + 32) isCoverTransition])
  {
    v14 = [*(a1 + 48) contentView];
    [v2 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v2 referenceView];
    [v14 convertRect:v23 fromView:{v16, v18, v20, v22}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [*(a1 + 40) view];
    [v7 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [v7 referenceView];
    [v32 convertRect:v41 fromView:{v34, v36, v38, v40}];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = objc_alloc_init(BCSheetTransitionCoverController);
    if ([*(a1 + 32) isCompositeCompactArtwork])
    {
      CGRectGetCenter();
      CGSizeScaledToFillInSize();
      CGRectMakeWithCenterAndSize();
      v25 = v51;
      v27 = v52;
      v29 = v53;
      v31 = v54;
      [v50 setupWithArtworkSource:v7];
    }

    else
    {
      [v50 setupWithArtworkSource:v2 cardArtworkSource:v7 isDismiss:1];
    }

    [v50 configureCoverViewWithFrame:{v43, v45, v47, v49}];
    v55 = [*(a1 + 40) view];
    v56 = [v50 coverView];
    [v55 addSubview:v56];

    [*(a1 + 32) setCoverController:v50];
    CGRectGetCenterNoRounding();
    v57 = *(*(a1 + 56) + 8);
    *(v57 + 32) = v58;
    *(v57 + 40) = v59;
    sub_1001C002C(&v63, v43, v45, v47, v49, v25, v27, v29, v31);
    v60 = *(*(a1 + 64) + 8);
    v62 = *&v63.c;
    v61 = *&v63.tx;
    v60[2] = *&v63.a;
    v60[3] = v62;
    v60[4] = v61;
  }
}

void sub_1001C0D0C(uint64_t a1)
{
  v2 = (*(a1 + 40) ^ 1u);
  v3 = [*(a1 + 32) snapshotView];
  v4 = [v3 snapshot];
  [v4 setAlpha:v2];

  v5 = (*(a1 + 40) ^ 1u);
  v7 = [*(a1 + 32) snapshotView];
  v6 = [v7 closeButtonView];
  [v6 setAlpha:v5];
}

void sub_1001C0DC4(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) cardViewController];
  v5 = [v4 cardNavigationController];
  v6 = [v5 view];
  [v6 setAlpha:v3];

  LOBYTE(v7) = *(a1 + 40);
  v8 = v7;
  v9 = [*(a1 + 32) cardViewController];
  v10 = [v9 closeButton];
  [v10 setAlpha:v8];

  if ([*(a1 + 32) isCompositeCompactArtwork])
  {
    LOBYTE(v11) = *(a1 + 40);
    v12 = v11;
    v14 = [*(a1 + 32) coverController];
    v13 = [v14 coverView];
    [v13 setAlpha:v12];
  }
}

void sub_1001C161C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) buyParams];
    v4[2](v4, v3);

    v2 = v4;
  }
}

void sub_1001C1CCC(uint64_t a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v8 = [v2 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:*(*(a1 + 32) + 8)];

  v3 = [v8 dataSourceIdentifier];
  if ([v3 isEqualToString:@"com.apple.ibooks.plist.untethered"])
  {
    v4 = [v8 state];

    if (v4 != 1)
    {
      goto LABEL_7;
    }

    v5 = objc_retainBlock(*(*(a1 + 32) + 16));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v8);
    }

    v7 = *(a1 + 32);
    v3 = *(v7 + 16);
    *(v7 + 16) = 0;
  }

LABEL_7:
}

void sub_1001C2234(id a1)
{
  v1 = objc_alloc_init(BKTestDriver);
  v2 = qword_100AF7818;
  qword_100AF7818 = v1;
}

void sub_1001C30F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = NSStringFromSelector(*(a1 + 64));
  [v1 recordPaginationInfo:@"presentation" info:v2 renderTree:v3 pageCount:v4 errorLabel:v5];
}

void sub_1001C3260(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = NSStringFromSelector(*(a1 + 64));
  [v1 recordPaginationInfo:@"pagination" info:v2 renderTree:v3 pageCount:v4 errorLabel:v5];
}

void sub_1001C3398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = [v2 getBookInfo:v3 errorLabel:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = [v6 getValueForKey:@"pagination-result-path" from:v5 errorLabel:v7];

    if (v8)
    {
      v9 = *(a1 + 32);
      v14 = @"fail";
      v10 = [NSNumber numberWithBool:0];
      v15 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = NSStringFromSelector(*(a1 + 48));
      [v9 createJsonFile:v8 content:v11 errorLabel:v12];

      v13 = [*(a1 + 32) machine];
      [v13 paginationDidEnd];
    }
  }
}

void sub_1001C373C(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryController];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(a1 + 32) setLibraryController:*(a1 + 40)];
    if (!*(*(a1 + 32) + 64))
    {
      v4 = +[BKLibraryManager defaultManager];
      v5 = [v4 predicateForLocalLibraryAssets];
      v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
      [v6 setPredicate:v5];
      v7 = [v4 uiChildContext];
      v10 = 0;
      v8 = [v7 executeFetchRequest:v6 error:&v10];
      v9 = v10;
      [*(a1 + 32) setBookList:v8];
    }
  }
}

void sub_1001C3A74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void sub_1001C3AE4(id a1)
{
  v4 = +[BKAppDelegate sceneManager];
  v1 = [v4 currentSceneController];
  if (!v1)
  {
    sub_100793A88();
  }

  v2 = [v1 newShowURLTransaction];
  v3 = [v4 libraryCollectionPresenter];
  [v3 showLibraryWithTransaction:v2];
}

void sub_1001C3C20(uint64_t a1)
{
  v2 = [*(a1 + 32) bookList];
  v8 = [v2 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "currentBook")}];

  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 currentSceneController];
  if (!v4)
  {
    sub_100793AC0();
  }

  v5 = [v4 newShowAssetTransaction];
  v6 = [v3 bookPresenter];
  v7 = [v8 assetID];
  [v6 showAssetWithTransaction:v5 assetID:v7 location:0 options:0 completion:0];
}

void sub_1001C3DC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) machine];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 newPageIsReady];
  }

  else
  {
    [v2 pageTurnFailed];
  }
}

void sub_1001C3E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 bookController];
  if (v4)
  {
    v3 = [*(a1 + 32) bookController];
    [v2 processPageTurnResult:{objc_msgSend(v3, "turnPages:animated:", 1, 1)}];
  }

  else
  {
    [v2 processPageTurnResult:0];
  }
}

void sub_1001C3F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) bookController];
  [v2 turnToPageNumber:*(*(a1 + 32) + 80) animated:1];

  v3 = *(a1 + 32);
  v4 = [v3 queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C4064;
  v5[3] = &unk_100A033C8;
  v5[4] = *(a1 + 32);
  [v3 dispatchInQueue:v4 async:v5];
}

void sub_1001C4064(uint64_t a1)
{
  v1 = [*(a1 + 32) machine];
  [v1 firstPageRequested];
}

void sub_1001C415C(uint64_t a1)
{
  v2 = [*(a1 + 32) bookController];

  if (v2)
  {
    v3 = [*(a1 + 32) bookController];
    v4 = [v3 currentPages];

    v5 = [*(a1 + 32) bookController];
    [v5 currentPages];
    v7 = v6;

    v8 = [*(a1 + 32) bookController];
    v40 = [AETestDriver getBookKeyWithBookController:v8];

    v9 = v40;
    if (v40)
    {
      v10 = *(a1 + 32);
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [v10 getBookInfo:v40 errorLabel:v11];

      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = NSStringFromSelector(*(a1 + 40));
        v15 = [v13 getValueForKey:@"pages-path" from:v12 errorLabel:v14];

        if (v15)
        {
          v16 = [*(a1 + 32) bookController];
          v17 = [AETestDriver getSnapshotsWithBookController:v16];

          if ([v17 count] == 1)
          {
            if (v7 < 1)
            {
              v20 = @"page";
            }

            else
            {
              v18 = @"page";
              v19 = v4;
              do
              {
                v20 = [NSString stringWithFormat:@"%@_%d", v18, v19];

                v19 = (v19 + 1);
                v18 = v20;
                --v7;
              }

              while (v7);
            }

            v32 = [NSString stringWithFormat:@"%@/%@.png", v15, v20];

            v33 = [v12 objectForKey:@"pages"];
            [v33 addObject:v32];

            v34 = *(a1 + 32);
            v35 = [v17 firstObject];
            v36 = UIImagePNGRepresentation(v35);
            v37 = NSStringFromSelector(*(a1 + 40));
            [v34 createFile:v32 content:v36 errorLabel:v37];
          }

          else if ([v17 count] == v7 && v7 >= 1)
          {
            v21 = 0;
            v38 = v7 & 0x7FFFFFFF;
            v39 = v12;
            v22 = v4;
            do
            {
              v23 = [NSString stringWithFormat:@"%@/page_%d.png", v15, v22];
              [v12 objectForKey:@"pages"];
              v25 = v24 = v15;
              [v25 addObject:v23];

              v26 = *(a1 + 32);
              [v17 objectAtIndex:v21];
              v28 = v27 = v17;
              v29 = UIImagePNGRepresentation(v28);
              v30 = NSStringFromSelector(*(a1 + 40));
              v31 = v26;
              v15 = v24;
              v12 = v39;
              [v31 createFile:v23 content:v29 errorLabel:v30];

              v17 = v27;
              ++v21;
              v22 = (v22 + 1);
            }

            while (v38 != v21);
          }
        }
      }

      v9 = v40;
    }
  }
}

void sub_1001C4A94(id a1)
{
  v1 = objc_alloc_init(BKAuthenticationAlertRequest);
  v2 = qword_100AF7828;
  qword_100AF7828 = v1;
}

void sub_1001C4BFC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;
}

void sub_1001C4EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1 && *(a1 + 48) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    *(v2 + 24) = 0;
    v4 = *(*(a1 + 32) + 8);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableSet);
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      *(v6 + 8) = v5;

      v4 = *(*(a1 + 32) + 8);
    }

    v8 = [*(a1 + 40) copy];
    [v4 addObject:v8];

    v9 = *(a1 + 32);
    if ((*(v9 + 25) & 1) == 0)
    {
      *(v9 + 25) = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C4FE4;
      block[3] = &unk_100A033C8;
      block[4] = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_1001C4FE4(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Sign In" value:&stru_100A30A68 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Not Now" value:&stru_100A30A68 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Sign In Required" value:&stru_100A30A68 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"To access purchases in the Cloud value:please sign in." table:{&stru_100A30A68, 0}];

  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C5240;
  v15[3] = &unk_100A05818;
  v15[4] = *(a1 + 32);
  v11 = [UIAlertAction actionWithTitle:v5 style:1 handler:v15];
  [v10 addAction:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C52D4;
  v14[3] = &unk_100A05818;
  v14[4] = *(a1 + 32);
  v12 = [UIAlertAction actionWithTitle:v3 style:0 handler:v14];
  [v10 addAction:v12];

  v13 = +[BKAppDelegate currentSceneController];
  [v13 presentViewController:v10 animated:1 completion:0];
}

void sub_1001C5240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C52B4;
  block[3] = &unk_100A033C8;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_1001C52B4(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  *(*(a1 + 32) + 25) = 0;
  return [*(a1 + 32) _notifyHandlers:0];
}

void sub_1001C52D4(uint64_t a1)
{
  v2 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C5380;
  v6[3] = &unk_100A03440;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1001C5380(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v2 cancel];
  }

  v3 = [AMSAuthenticateRequest alloc];
  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v3 initWithAccount:v5 options:0];

  v7 = [[AMSUIAuthenticateTask alloc] initWithRequest:v6 presentingViewController:*(a1 + 40)];
  v8 = [v7 performAuthentication];
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;

  objc_initWeak(&location, *(a1 + 32));
  v11 = *(*(a1 + 32) + 16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C54E4;
  v12[3] = &unk_100A0AB40;
  objc_copyWeak(&v13, &location);
  [v11 addFinishBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_1001C54C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C54E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAuthResult:v6 error:v5];
}

void sub_1001C55F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 24) = v2 == 0;
  [*(a1 + 40) _notifyHandlers:v2 != 0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  *(*(a1 + 40) + 25) = 0;
}

void sub_1001C5C60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = *(v4 + 8);
    v7 = qos_class_self();
    v8 = *(a1 + 32);
    v9 = *(v8 + 32) + 1;
    *(v8 + 32) = v9;
    v18 = 138412802;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 2048;
    v23 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Launch Queue", "name: %@, qos: 0x%x, seq: %ld", &v18, 0x1Cu);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }

  v12 = *(*(a1 + 32) + 16);
  v13 = v12;
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v16 = *(v14 + 8);
    v17 = qos_class_self();
    v18 = 138412546;
    v19 = v16;
    v20 = 1024;
    v21 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v15, "Launch Queue", "name: %@, qos: 0x%x", &v18, 0x12u);
  }
}

void sub_1001C5EF4(id a1, id a2)
{
  v2 = a2;
  v3 = +[BDSJaliscoDAAPClient sharedClient];
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C5FD0;
  v7[3] = &unk_100A03788;
  v8 = v3;
  v9 = v2;
  v5 = v2;
  v6 = v3;
  dispatch_async(v4, v7);
}