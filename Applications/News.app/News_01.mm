void sub_10003E338(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100070164(a1, v2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10003E38C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 articleID];
  v23 = [v3 objectForKeyedSubscript:v5];

  v6 = [v23 image];

  v21 = a1;
  if (v6)
  {
    v7 = [*(a1 + 40) thumbnailCreator];
    v8 = [v23 image];
    v22 = [v7 editorialThumbnailImageWith:v8];
  }

  else
  {
    v22 = 0;
  }

  v9 = +[NSMutableArray array];
  if ([v23 showBadge])
  {
    v10 = [NSNumber numberWithInteger:0];
    [v9 addObject:v10];
  }

  v11 = [TSEditorialItem alloc];
  v12 = [v23 editorialItemID];
  v13 = [v23 title];
  v14 = [v23 subtitle];
  v15 = [v23 subtitleColorString];
  v16 = [v23 actionUrlString];
  v17 = [NSURL URLWithString:v16];
  v18 = [v11 initWithIdentifier:v12 title:v13 subtitle:v14 subtitleColor:v15 attributes:v9 actionURL:v17 thumbnailImage:v22 backingTag:0 headline:v4];

  v19 = *(v21 + 48);
  v20 = [v23 editorialItemID];
  [v19 setObject:v18 forKey:v20];
}

void sub_10003E5C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  FCPerformIfNonNil();

  dispatch_group_leave(*(a1 + 48));
}

void sub_10003E69C(uint64_t a1)
{
  v1 = a1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) allKeys];
  v19 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v17 = v1;
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v24 + 1) + 8 * i);
        v4 = [*(v1 + 40) objectForKey:v3];
        v5 = [*(v1 + 32) objectForKeyedSubscript:v3];
        if (v4)
        {
          v23 = v4;
          v6 = +[NSMutableArray array];
          if ([v5 showBadge])
          {
            v7 = [NSNumber numberWithInteger:0];
            [v6 addObject:v7];
          }

          v21 = [TSEditorialItem alloc];
          v20 = [v5 editorialItemID];
          v8 = [v5 title];
          v9 = [v5 subtitle];
          v10 = [v5 subtitleColorString];
          [v5 actionUrlString];
          v11 = v22 = v6;
          v12 = [NSURL URLWithString:v11];
          v4 = v23;
          v13 = [v21 initWithIdentifier:v20 title:v8 subtitle:v9 subtitleColor:v10 attributes:v6 actionURL:v12 thumbnailImage:0 backingTag:v23 headline:0];

          v1 = v17;
          v14 = *(v17 + 48);
          v15 = [v5 editorialItemID];
          [v14 setObject:v13 forKey:v15];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }
}

uint64_t sub_10003EA50(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_10003EB78(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 editorialItemEntryManager];
  v9 = [v8 editorialItemsByID];
  v12 = [v9 objectForKey:v7];

  v10 = *(a1 + 40);
  v11 = [v12 editorialItemID];
  LODWORD(v10) = [v10 isEqualToString:v11];

  if (v10)
  {
    [*(a1 + 32) tappedEditorialItemWithIdentifier:*(a1 + 40)];
    *a4 = 1;
  }
}

void sub_10003F0D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10003F130(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  v5 = v3;
  FCPerformIfNonNil();
}

void sub_10003F208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) error];

  if (v4)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003F3E8;
    v17[3] = &unk_1000C18D0;
    v18 = *(a1 + 32);
    sub_10003F3E8(v17);
  }

  else
  {
    v16 = [TSEditorialItem alloc];
    v5 = [*(a1 + 40) editorialItemID];
    v6 = [*(a1 + 40) title];
    v7 = [*(a1 + 40) subtitle];
    v8 = [*(a1 + 40) subtitleColorString];
    v9 = [*(a1 + 40) actionUrlString];
    v10 = [NSURL URLWithString:v9];
    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) fetchedObject];
    v13 = [v12 firstObject];
    v14 = [v16 initWithIdentifier:v5 title:v6 subtitle:v7 subtitleColor:v8 attributes:&__NSArray0__struct actionURL:v10 thumbnailImage:v11 backingTag:0 headline:v13];

    v15 = [v3 itemChangeDelegate];
    [v15 updateEditorialItemWith:v14];
  }
}

void sub_10003F3E8(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100070164(a1, v2);
  }
}

void sub_10003F434(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = v3;
  FCPerformIfNonNil();
}

void sub_10003F4F8(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v4 = [TSEditorialItem alloc];
    v5 = [*(a1 + 40) editorialItemID];
    v6 = [*(a1 + 40) title];
    v7 = [*(a1 + 40) subtitle];
    v8 = [*(a1 + 40) subtitleColorString];
    v9 = [*(a1 + 40) actionUrlString];
    v10 = [NSURL URLWithString:v9];
    v12 = [v4 initWithIdentifier:v5 title:v6 subtitle:v7 subtitleColor:v8 attributes:&__NSArray0__struct actionURL:v10 thumbnailImage:0 backingTag:*(a1 + 32) headline:0];

    v11 = [v3 itemChangeDelegate];

    [v11 updateEditorialItemWith:v12];
  }
}

uint64_t sub_10003F954(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003F96C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = v3;
  FCPerformIfNonNil();
}

void sub_10003FA30(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 interestTokens];
    [v3 addObject:*(a1 + 32)];
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t sub_10003FA88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a3)
    {
      a2 = 0;
    }

    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10003FCD4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) editorialConfigurationProvider];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003FDC8;
  v3[3] = &unk_1000C4628;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 fetchEditorialConfiguration:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_10003FDA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10003FDC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  FCPerformIfNonNil();

  (*(*(a1 + 32) + 16))(*(a1 + 32), v10, v11, v12);
}

void sub_10003FEA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003FF40;
    v5[3] = &unk_1000C18D0;
    v6 = v3;
    sub_10003FF40(v5);
  }

  else
  {
    v4 = *(a1 + 40);

    [a2 processOverrideEditorialItems:v4];
  }
}

void sub_10003FF40(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100070384(a1, v2);
  }
}

void sub_1000404DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040500(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070400(a1);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100040564(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) count];
    v3 = [*(a1 + 40) count];
    v6 = 134218240;
    v7 = v2;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Marked %lu IDs saved and %lu IDs unsaved…", &v6, 0x16u);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100040800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004081C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000704AC();
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_10004088C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Cleared seen identifiers!", v4, 2u);
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100040AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040B04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007051C();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, 0, 0);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100040B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100040CA8;
    v16 = &unk_1000C4740;
    v20 = v10;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    FCPerformBlockOnMainThread();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_100040D84(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 gizmoSyncManager:*(a1 + 32) fetchOperationForArticleIDs:*(a1 + 40)];

  if (v3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100009BC8;
    v21 = sub_100009F38;
    v22 = [*(a1 + 32) _newCompanionConnection];
    [v18[5] resume];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100040FB4;
    v14[3] = &unk_1000C4718;
    v15 = *(a1 + 48);
    v16 = &v17;
    v4 = objc_retainBlock(v14);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100041038;
    v9[3] = &unk_1000C47E0;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    v13 = &v17;
    v6 = v4;
    v11 = v6;
    v12 = *(a1 + 48);
    [v3 setFetchCompletionBlock:v9];
    v7 = +[NSOperationQueue fc_sharedSerialQueue];
    [v7 addOperation:v3];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10007058C();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

void sub_100040FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007067C();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100041038(id *a1, void *a2)
{
  v3 = [a2 fetchedObject];
  v4 = [v3 copy];

  v10 = v4;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v7;
  v9 = v4;
  FCPerformBlockOnMainThread();
}

void sub_100041140(uint64_t a1)
{
  v2 = [*(a1 + 32) readingHistory];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        [v2 markArticleAsSeenWithHeadline:v8];
        [v2 markArticleAsReadWithHeadline:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 48);
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Consuming seen IDs = %@", buf, 0xCu);
  }

  v10 = [*(*(*(a1 + 72) + 8) + 40) remoteObjectProxyWithErrorHandler:*(a1 + 56)];
  v11 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100041340;
  v14[3] = &unk_1000C4790;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = v12;
  v16 = v13;
  [v10 consumeSeenArticleIdentifiers:v11 withReply:v14];
}

void sub_100041340(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100041488(id *a1)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v3)
  {
    v4 = *v38;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = [a1[5] readingList];
        v8 = [v7 isArticleOnReadingList:v6];

        if ((v8 & 1) == 0)
        {
          v9 = [a1[5] readingList];
          [v9 addArticleToReadingList:v6 eventInitiationLevel:1 origin:2];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v3);
  }

  v10 = [NSMutableSet setWithArray:a1[4]];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = a1[6];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v33 + 1) + 8 * j);
        if (([v10 containsObject:v15] & 1) == 0)
        {
          v16 = [a1[5] readingList];
          v17 = [v16 isArticleOnReadingList:v15];

          if (v17)
          {
            [v10 addObject:v15];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100009BC8;
  v31 = sub_100009F38;
  v32 = [a1[5] _newCompanionConnection];
  [v28[5] resume];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100041894;
  v24[3] = &unk_1000C4718;
  v25 = a1[7];
  v26 = &v27;
  v18 = objc_retainBlock(v24);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Marking IDs as saved: %@", buf, 0xCu);
  }

  v19 = [v28[5] remoteObjectProxyWithErrorHandler:v18];
  v20 = [v10 allObjects];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100041918;
  v21[3] = &unk_1000C4790;
  v22 = a1[7];
  v23 = &v27;
  [v19 setSavedArticleIdentifiers:v20 withReply:v21];

  _Block_object_dispose(&v27, 8);
}

void sub_100041870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041894(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000706EC();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100041918(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100041A70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 topStoriesPublishDates];
  if ([v7 count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100009BC8;
    v23 = sub_100009F38;
    v24 = [*(a1 + 32) _newCompanionConnection];
    [v20[5] resume];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100041D28;
    v16[3] = &unk_1000C4718;
    v17 = *(a1 + 40);
    v18 = &v19;
    v8 = objc_retainBlock(v16);
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 count];
      *buf = 134217984;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Syncing refresh dates %ld…", buf, 0xCu);
    }

    v11 = [v20[5] remoteObjectProxyWithErrorHandler:v8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100041DAC;
    v12[3] = &unk_1000C4830;
    v13 = v7;
    v14 = *(a1 + 40);
    v15 = &v19;
    [v11 setPreferredRefreshDates:v13 withReply:v12];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100041D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041D28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007075C();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100041DAC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%ld dates set…", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t sub_1000420D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_1000422A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004241C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v3 >= v6)
  {
    *&v7 = v3;
  }

  else
  {
    *&v7 = v6;
  }

  qword_1000E61B0 = v7;
}

void sub_1000424C4(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v3 >= v6)
  {
    *&v7 = v6;
  }

  else
  {
    *&v7 = v3;
  }

  qword_1000E61C0 = v7;
}

void sub_1000429BC(id a1)
{
  if (+[FRMacros iPad])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 == 1366.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E61D0 = v8;
}

void sub_100042A8C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  byte_1000E6200 = v1 >= 2.0;
}

void sub_100042B20(id a1)
{
  if (+[FRMacros iPhone])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 < 568.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E6210 = v8;
}

void sub_100042BF0(id a1)
{
  if (+[FRMacros iPhone])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 <= 568.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E6220 = v8;
}

void sub_100042CC0(id a1)
{
  if (+[FRMacros iPhone])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 == 568.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E6230 = v8;
}

void sub_100042DF4(id a1)
{
  if (+[FRMacros iPhone])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 == 667.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E6240 = v8;
}

id sub_100042F1C(uint64_t a1)
{
  result = +[FRMacros iPhone];
  if (result)
  {
    result = [*(a1 + 32) maxScreenSide];
    v4 = v3 <= 667.0;
  }

  else
  {
    v4 = 0;
  }

  byte_1000E6250 = v4;
  return result;
}

void sub_100042FAC(id a1)
{
  if (+[FRMacros iPhone])
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;

    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    if (v3 >= v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 == 736.0;
  }

  else
  {
    v8 = 0;
  }

  byte_1000E6260 = v8;
}

id sub_1000430D4(uint64_t a1)
{
  result = +[FRMacros iPhone];
  if (result)
  {
    result = [*(a1 + 32) maxScreenSide];
    v4 = v3 <= 736.0;
  }

  else
  {
    v4 = 0;
  }

  byte_1000E6270 = v4;
  return result;
}

id sub_1000431BC(uint64_t a1)
{
  result = +[FRMacros iPhone];
  if (result)
  {
    result = [*(a1 + 32) maxScreenSide];
    v4 = v3 == 896.0;
  }

  else
  {
    v4 = 0;
  }

  byte_1000E6280 = v4;
  return result;
}

void sub_100043250(id a1)
{
  v1 = +[UIDevice currentDevice];
  byte_1000E6281 = [v1 _supportsForceTouch];
}

void sub_1000432D8(id a1)
{
  if (NFInternalBuild())
  {
    v1 = NewsCoreUserDefaults();
    byte_1000E6290 = [v1 BOOLForKey:FCRunningUIAutomationTestsSharedPreferenceKey];
  }

  else
  {
    byte_1000E6290 = 0;
  }
}

void sub_1000433C4(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_1000E62A0 = v1;
}

void sub_100043CF8(uint64_t a1)
{
  v2 = [*(a1 + 32) resourcesLock];
  [v2 lock];

  v3 = [*(a1 + 32) fontsToRegister];
  v4 = [v3 copy];

  v24 = a1;
  v5 = [*(a1 + 32) resourcesLock];
  [v5 unlock];

  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v27;
    *&v9 = 134218242;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 fileURL];
        v25 = 0;
        v15 = [FRFont registerFontWithURL:v14 error:&v25];
        v16 = v25;

        if (v15)
        {
          [v6 addObject:v13];
        }

        else
        {
          v17 = FRArticleLog;
          if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
          {
            v18 = *(v24 + 32);
            *buf = v23;
            v31 = v18;
            v32 = 2114;
            v33 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%p failed to load font with error: %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(v24 + 40));
  v19 = [*(v24 + 32) resourcesLock];
  [v19 lock];

  v20 = [*(v24 + 32) fontResources];
  [v20 addObjectsFromArray:v6];

  v21 = [*(v24 + 32) fontsToRegister];
  [v21 removeAllObjects];

  v22 = [*(v24 + 32) resourcesLock];
  [v22 unlock];
}

void sub_100043F94(uint64_t a1)
{
  v2 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%p did fetch embed configuration", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100044044(uint64_t a1)
{
  v2 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%p did fetch linked content", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000440F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) context];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void sub_100044500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_10004452C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained loadingGroup];
    v5 = [v4 loadAssetsOnce];
    v6 = [v5 executeWithCompletionHandler:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004461C;
    v9[3] = &unk_1000C3098;
    v10 = *(a1 + 32);
    sub_10004461C(v9);
  }
}

id sub_10004462C(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v2 = *(a1 + 32);

  return [v2 cancel];
}

void sub_100044DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = FRArticleLog;
  v9 = "24";
  if (v5)
  {
    v35 = v6;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 134217984;
      v45 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%p successfully downloaded Flint JSON", buf, 0xCu);
    }

    v11 = [SXHostApplication alloc];
    v12 = +[UIApplication sharedApplication];
    v13 = [v11 initWithApplication:v12];

    v14 = [*(a1 + 32) headline];
    v15 = [v14 articleID];
    v16 = [NSURL nss_NewsURLForArticleID:v15];

    v17 = [SXContext alloc];
    v18 = [*(a1 + 32) anfContent];
    v19 = [v18 identifier];
    v20 = [v5 data];
    v21 = *(a1 + 32);
    v43 = 0;
    v22 = [v17 initWithIdentifier:v19 shareURL:v16 JSONData:v20 resourceDataSource:v21 host:v13 error:&v43];
    v23 = v43;

    v24 = 0;
    v25 = 0;
    if (!v23)
    {
      v26 = [v22 documentController];
      v27 = [v26 requiredResourceURLs];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100045198;
      v42[3] = &unk_1000C38A8;
      v42[4] = *(a1 + 32);
      v25 = [v27 fc_arrayByTransformingWithBlock:v42];

      v28 = [*(a1 + 32) resourceManager];
      v29 = [v28 cachedResourcesWithIdentifiers:v25];
      v24 = [v29 fc_dictionaryWithKeySelector:"resourceID"];

      v9 = "v32@0:8@NSXMLParser16@NSData24" + 31;
    }

    v7 = v35;
  }

  else
  {
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
    {
      sub_10007099C(a1, v7, v8);
    }

    v23 = v7;
    v24 = 0;
    v25 = 0;
    v22 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *(v9 + 431);
  block[2] = sub_1000451A4;
  block[3] = &unk_1000C4AB0;
  v30 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v37 = v22;
  v38 = v23;
  v39 = v25;
  v40 = v24;
  v41 = v30;
  v31 = v24;
  v32 = v25;
  v33 = v23;
  v34 = v22;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000451A4(uint64_t a1)
{
  v2 = [*(a1 + 32) context];

  if (!v2)
  {
    [*(a1 + 32) setContext:*(a1 + 40)];
    [*(a1 + 32) setError:*(a1 + 48)];
    [*(a1 + 32) setRequiredResourceIDs:*(a1 + 56)];
    if (*(a1 + 64))
    {
      v3 = [*(a1 + 32) resourcesLock];
      [v3 lock];

      v4 = [*(a1 + 32) resourcesByID];
      [v4 addEntriesFromDictionary:*(a1 + 64)];

      v5 = [*(a1 + 32) resourcesLock];
      [v5 unlock];
    }
  }

  v6 = *(*(a1 + 72) + 16);

  return v6();
}

void sub_100045510(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 allValues];
  v8 = [v7 fc_arrayByTransformingWithBlock:&stru_1000C4B18];

  v9 = [a1[4] resourcesLock];
  [v9 lock];

  v10 = [a1[4] fontResources];
  [v10 removeAllObjects];

  v11 = [a1[4] resourcesByID];
  [v11 addEntriesFromDictionary:v6];

  v12 = [a1[4] fontsToRegister];
  [v12 addObjectsFromArray:v8];

  v13 = [a1[4] resourcesLock];
  [v13 unlock];

  v14 = [v8 count];
  v15 = [a1[5] count];
  v16 = FRArticleLog;
  if (v14 != v15)
  {
    if (!os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v20 = a1[4];
    v19 = v16;
    v21 = [v8 count];
    v22 = [a1[5] count];
    *buf = 134218754;
    v27 = v20;
    v28 = 2048;
    v29 = v21;
    v30 = 2048;
    v31 = v22;
    v32 = 2112;
    v33 = v5;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%p failed to download %lu of %lu fonts with error: %@", buf, 0x2Au);
    goto LABEL_4;
  }

  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[4];
    v17 = a1[5];
    v19 = v16;
    *buf = 134218240;
    v27 = v18;
    v28 = 2048;
    v29 = [v17 count];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%p successfully downloaded %lu fonts", buf, 0x16u);
LABEL_4:
  }

LABEL_6:
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100045814;
  v23[3] = &unk_1000C4B40;
  v24 = a1[6];
  v25 = v14 == v15;
  dispatch_async(&_dispatch_main_q, v23);
}

id sub_1000457D4(id a1, FCResource *a2)
{
  v2 = a2;
  if ([(FCResource *)v2 isOnDisk])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_100045AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[NSThread isMainThread];
  v7 = [*(a1 + 32) resourcesLock];
  [v7 lock];

  v8 = [*(a1 + 32) resourcesByID];
  [v8 addEntriesFromDictionary:v5];

  v9 = [*(a1 + 32) resourcesLock];
  [v9 unlock];

  v10 = [v5 count];
  v11 = [*(a1 + 32) requiredResourceIDs];
  v12 = [v11 count];

  v13 = FRArticleLog;
  if (v10 == v12)
  {
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v20 = 134218240;
      v21 = v14;
      v22 = 2048;
      v23 = [v5 count];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p successfully loaded %lu asset URLs", &v20, 0x16u);
    }
  }

  else if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    v17 = v13;
    v18 = [v5 count];
    v19 = [*(a1 + 32) requiredResourceIDs];
    v20 = 134218754;
    v21 = v16;
    v22 = 2048;
    v23 = v18;
    v24 = 2048;
    v25 = [v19 count];
    v26 = 2112;
    v27 = v6;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%p failed to load %lu of %lu fonts with error: %@", &v20, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100045D38(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100045DC0;
  v1[3] = &unk_1000C3098;
  v2 = *(a1 + 32);
  sub_100045DC0(v1);
}

void sub_10004607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000460AC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1[6] + 8) + 40) allValues];
  v5 = [v4 fc_arrayByTransformingWithBlock:&stru_1000C4BD0];

  v6 = [v5 count];
  v7 = [*(*(a1[6] + 8) + 40) count];
  v8 = FRArticleLog;
  if (v6 != v7)
  {
    if (!os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = a1[4];
    v10 = v8;
    v12 = [v5 count];
    v13 = [*(*(a1[6] + 8) + 40) count];
    v14 = [v3 error];
    v15 = 134218754;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%p failed to download %lu of %lu assets with error: %@", &v15, 0x2Au);

    goto LABEL_4;
  }

  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = v8;
    v15 = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = [v5 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%p successfully downloaded %lu assets", &v15, 0x16u);
LABEL_4:
  }

LABEL_6:
  (*(a1[5] + 16))();
}

id sub_1000462C0(id a1, FCResource *a2)
{
  v2 = a2;
  if ([(FCResource *)v2 isOnDisk])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_100046520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100046540(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000465D4;
    block[3] = &unk_1000C3098;
    v3 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  return 0;
}

void sub_1000465E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([v3 status])
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100046854;
      v20[3] = &unk_1000C3098;
      v21 = *(a1 + 32);
      sub_100046854(v20);
      v7 = v21;
    }

    else
    {
      v15 = v6;
      v7 = +[NSMutableDictionary dictionary];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v3 fetchedObject];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [v13 identifier];
            [v7 setObject:v13 forKey:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v15;
      [v15 setLinkedHeadlines:v7];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100046844;
    v22[3] = &unk_1000C3098;
    v23 = *(a1 + 32);
    sub_100046844(v22);
    v6 = v23;
  }
}

void sub_100046A18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100046A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained resourcesByID];
    v5 = [v4 objectForKey:*(a1 + 32)];

    v6 = [v5 assetHandle];
    v7 = [*(a1 + 40) relativePriority];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100046BD8;
    v10[3] = &unk_1000C4C70;
    v11 = v5;
    v12 = *(a1 + 56);
    v13 = *(a1 + 48);
    v8 = v5;
    v9 = [v6 downloadIfNeededWithPriority:v7 completion:v10];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100046BC4;
    v14[3] = &unk_1000C3098;
    v15 = *(a1 + 48);
    sub_100046BC4(v14);
    v8 = v15;
  }
}

void sub_100046BD8(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046C90;
  block[3] = &unk_1000C4C70;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100046C90(uint64_t a1)
{
  v2 = [*(a1 + 32) fileURL];

  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) fileURL];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void sub_1000473FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  _Block_object_dispose((v33 - 200), 8);
  _Block_object_dispose((v33 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004745C(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    [v2 cancel];
  }

  *(*(a1[6] + 8) + 24) = 1;
  result = a1[4];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000474D0(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if ((*(a1 + 80) & 2) == 0)
    {
      v2 = [*(a1 + 32) imageResourceResponseForFileURL:*(a1 + 40) perserveColorSpace:objc_msgSend(*(a1 + 48) withSize:"preserveColorspace") andQuality:{*(a1 + 80), *(a1 + 88), *(a1 + 96)}];
      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v2 = objc_alloc_init(SXImageResourceResponse);
    v3 = [*(a1 + 32) thumbnailImage];
    if (!v3)
    {
      v4 = [*(a1 + 32) thumbnailAssetHandle];

      if (!v4)
      {
        goto LABEL_9;
      }

      v3 = [*(a1 + 32) thumbnailAssetHandle];
      v5 = [v3 filePath];
      v6 = [UIImage imageWithContentsOfFile:v5];
      [*(a1 + 32) setThumbnailImage:v6];
    }

LABEL_9:
    v7 = [*(a1 + 32) thumbnailImage];
    [v2 setImage:v7];

    [v2 setImageQuality:*(a1 + 80)];
    if (!v2)
    {
LABEL_11:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000476A0;
      v9[3] = &unk_1000C1920;
      v10 = *(a1 + 48);
      v11 = v2;
      v8 = v2;
      dispatch_async(&_dispatch_main_q, v9);

      goto LABEL_12;
    }

LABEL_10:
    [*(a1 + 56) addObject:v2];
    goto LABEL_11;
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 64));
}

void sub_1000476A0(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) loadingBlock];
    v3[2](v3, *(a1 + 40));
  }
}

void sub_100047724(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v6 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  v8 = a1[8];
  FCPerformIfNonNil();
}

void sub_10004782C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 88) == 1 && (*(a1 + 89) & 1) == 0)
  {
    v5 = [v3 resourcesByID];
    v6 = [v5 objectForKey:*(a1 + 32)];

    if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || !v6)
    {
      dispatch_group_leave(*(a1 + 64));
    }

    else
    {
      v7 = [v6 assetHandle];
      v8 = [*(a1 + 40) relativePriority];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000479EC;
      v17[3] = &unk_1000C4D38;
      v17[4] = v4;
      v18 = v6;
      v16 = *(a1 + 40);
      v9 = *(&v16 + 1);
      v21 = *(a1 + 72);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      *&v12 = v10;
      *(&v12 + 1) = v11;
      v19 = v16;
      v20 = v12;
      v13 = [v7 downloadIfNeededWithPriority:v8 completion:v17];
      v14 = *(*(a1 + 80) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      [*(*(*(a1 + 80) + 8) + 40) setRelativePriority:{objc_msgSend(*(a1 + 40), "relativePriority")}];
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 64));
  }
}

void sub_1000479EC(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047AF0;
  v8[3] = &unk_1000C4D10;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  v7 = v3;
  v4 = *(a1 + 56);
  v12 = *(a1 + 80);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  [v2 addOperationWithBlock:v8];
}

void sub_100047AF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (([v2 isOnDisk] & 1) == 0)
  {
    v3 = [*(a1 + 40) fallbackResourceForImageRequest:*(a1 + 48) originalResource:*(a1 + 32)];

    v2 = v3;
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v4 = [v2 fileURL];

    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [v2 fileURL];
      v7 = [*(a1 + 48) preserveColorspace];
      [*(a1 + 48) size];
      v8 = [v5 imageResourceResponseForFileURL:v6 perserveColorSpace:v7 withSize:4 andQuality:?];

      if (v8)
      {
        [*(a1 + 56) addObject:v8];
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100047C60;
      v10[3] = &unk_1000C1920;
      v11 = *(a1 + 48);
      v12 = v8;
      v9 = v8;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_100047C60(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) loadingBlock];
    v3[2](v3, *(a1 + 40));
  }
}

uint64_t sub_100047CE4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000487EC(uint64_t a1)
{
  [*(a1 + 32) setPresenting:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000488A8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1000E62B0 = [v1 BOOLForKey:@"change_without_restarting"];
}

void sub_100048984(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1000E62C0 = [v1 BOOLForKey:@"animation_synchronously_load_headerimage"];
}

void sub_100049E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cloudContext];
  v5 = [v4 appConfigurationManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100049EE4;
  v7[3] = &unk_1000C4F10;
  v8 = v3;
  v6 = v3;
  [v5 fetchAppConfigurationIfNeededWithCompletion:v7];
}

id sub_10004A26C(uint64_t a1)
{
  [*(a1 + 32) _application:*(a1 + 40) openURL:*(a1 + 48) options:*(a1 + 56) animated:*(a1 + 72)];
  v2 = *(a1 + 64);

  return [v2 removeFromSuperview];
}

void sub_10004A56C(uint64_t a1)
{
  v2 = [*(a1 + 32) urlRouterManager];
  [v2 handleOpenURL:*(a1 + 40) options:*(a1 + 48) analyticsReferral:*(a1 + 56)];
}

void sub_10004A684(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudContext];
  v1 = [v2 subscriptionController];
  [v1 refreshAndNotifyAboutSubscribedTags];
}

void sub_10004A6E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(*(*(a1 + 32) + 8), &state64);
    [WeakRetained setIsDeviceLocked:state64 != 0];
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [WeakRetained isDeviceLocked];
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "lock state change, isDeviceLocked=%d", buf, 8u);
    }
  }
}

void sub_10004AB00(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004ABC4;
  v6[3] = &unk_1000C1970;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10004ABC4(uint64_t a1)
{
  v2 = [*(a1 + 32) fcDigestModeFromScheduledDeliverySetting:{objc_msgSend(*(a1 + 40), "scheduledDeliverySetting")}];
  v3 = [*(a1 + 48) cloudContext];
  v4 = [v3 notificationController];
  [v4 registerDeviceToken:*(a1 + 56) deviceDigestMode:v2];

  v5 = [*(a1 + 32) notificationManager];
  [v5 notifyDeviceTokenIsAvailable:*(a1 + 56)];
}

void sub_10004B2F8(uint64_t a1, _BOOL8 a2)
{
  v4 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "did run bridged backround fetch", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:FCFetchResultFromUIBackgroundFetchResult(a2)];
  [v5 addObject:v6];

  dispatch_group_leave(*(a1 + 40));
}

void sub_10004B3B0(uint64_t a1, _BOOL8 a2)
{
  v4 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "did run legacy backround fetch", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:FCFetchResultFromUIBackgroundFetchResult(a2)];
  [v5 addObject:v6];

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10004B468(uint64_t a1)
{
  v2 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "finished performing background fetch", v7, 2u);
  }

  v3 = *(a1 + 40);
  Results = FCAggregateFetchResultWithFetchResults();
  ResultFromFCFetchResult = UIBackgroundFetchResultFromFCFetchResult(Results);
  return (*(v3 + 16))(v3, ResultFromFCFetchResult);
}

void sub_10004B6F8(uint64_t a1)
{
  v3 = [*(a1 + 32) windowScene];
  if ([v3 activationState] == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(a1 + 40) isDeviceLocked];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_10004C084(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FRPresubscribeServiceLog;
    if (os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not presubscribing because we failed to fetch the app config", buf, 2u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  else
  {
    v9 = [v5 notificationsConfig];
    v10 = [v9 preSubscribedNotificationsChannelIDs];
    v11 = [NSSet setWithArray:v10];

    v12 = [v5 presubscribedFeedIDs];
    v13 = [v12 mutableCopy];

    v14 = FRPresubscribeServiceLog;
    if (os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presubscribing to app config feed IDs %{public}@", buf, 0xCu);
    }

    v15 = [v5 topStoriesConfig];
    v16 = [v15 channelID];

    v17 = [v5 topStoriesConfig];
    if ([v17 isPromotingEnabled] && objc_msgSend(v16, "length"))
    {
      v18 = [v13 containsObject:v16];

      if ((v18 & 1) == 0)
      {
        [v13 insertObject:v16 atIndex:0];
        v19 = FRPresubscribeServiceLog;
        if (os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Presubscribing to TS, with ID %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
    }

    v20 = [v13 count];
    v21 = *(a1 + 32);
    if (v20)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004C394;
      v23[3] = &unk_1000C1BD8;
      v23[4] = v21;
      v24 = *(a1 + 40);
      [v21 _subscribeToFeedIDs:v13 preSubscribedNotificationsChannelIDs:v11 withCompletion:v23];
    }

    else
    {
      [*(a1 + 32) _setHasUserBeenPresubscribed:1];
      v22 = *(a1 + 40);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }
    }
  }
}

uint64_t sub_10004C394(uint64_t a1)
{
  [*(a1 + 32) _setHasUserBeenPresubscribed:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10004C560(uint64_t a1, void *a2)
{
  v3 = [a2 nf_objectsForKeysWithoutMarker:*(a1 + 32)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004C61C;
  v10[3] = &unk_1000C5088;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  [v3 enumerateObjectsUsingBlock:v10];
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7, v8);
  }
}

void sub_10004C61C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  v7 = [*(a1 + 40) subscriptionController];
  v8 = [v7 hasSubscriptionToTag:v3];

  if (v8)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    v9 = [*(a1 + 40) subscriptionController];
    [v9 setNotificationsEnabled:1 forTag:v3 error:0];
  }

  else
  {
    v10 = [*(a1 + 40) subscriptionController];
    [v10 addSubscriptionToTag:v3 notificationsEnabled:v6 error:0];

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v11 = [*(a1 + 40) subscriptionController];
  v12 = [v11 hasNotificationsEnabledForTag:v3];

  v13 = FRPresubscribeServiceLog;
  v14 = os_log_type_enabled(FRPresubscribeServiceLog, OS_LOG_TYPE_DEFAULT);
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      v17 = v13;
      v18 = [v3 identifier];
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enabling notifications for tagID: %{public}@ failed. We will retry.", &v19, 0xCu);
    }

    v15 = [*(a1 + 40) notificationManager];
    [v15 autoEnableNotificationsForPreSubscribedChannels];
    goto LABEL_11;
  }

  if (v14)
  {
    v15 = v13;
    v16 = [v3 identifier];
    v19 = 138543362;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Successfully enabled notifications for tagID: %{public}@", &v19, 0xCu);

LABEL_11:
  }

LABEL_12:
}

uint64_t sub_10004CEAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSDictionary0__struct);
  }

  return result;
}

void sub_10004CECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    FCPerformBlockOnMainThread();
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_10004CF88(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  v3 = a1[4];
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];

  v5 = a1[5];

  dispatch_group_leave(v5);
}

void sub_10004CFF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10004D1D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10004D1EC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v10 = v6;
  v11 = a1[4];
  v15 = a1[7];
  v12 = a1[5];
  v13 = v5;
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  FCPerformIfNonNil();
}

void sub_10004D30C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    if (!*(a1 + 56))
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004D674;
      v13[3] = &unk_1000C5100;
      v14 = *(a1 + 40);
      v17 = *(a1 + 72);
      v15 = v3;
      v16 = *(a1 + 48);
      sub_10004D674(v13);

      v4 = v14;
      goto LABEL_15;
    }

    v4 = [*(a1 + 40) headline];
    v5 = [v4 lastModifiedDate];
    v6 = [*(a1 + 48) lastModifiedDate];
    if (*(a1 + 48))
    {
      if ([v5 compare:v6] != 1)
      {
        v8 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 64);
          *buf = 138543362;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ToC Editorial Manager: No update in editorial articleID: %{public}@", buf, 0xCu);
        }

        v10 = *(a1 + 72);
        if (v10)
        {
          v11 = [v3 editorialItemCreator];
          v12 = [v11 createEditorialItemFromCachedEntry:*(a1 + 48)];
          (*(v10 + 16))(v10, v12);
        }

        goto LABEL_14;
      }

      v7 = *(a1 + 48);
    }

    else
    {
      v7 = 0;
    }

    [v3 loadArticleMetadataWithHeadline:v4 editorialItemFromCache:v7 content:*(a1 + 56) articleModifiedDate:v5 completion:*(a1 + 72)];
LABEL_14:

    goto LABEL_15;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004D5DC;
  v18[3] = &unk_1000C39E8;
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v23 = *(a1 + 72);
  v21 = v3;
  v22 = *(a1 + 48);
  sub_10004D5DC(v18);

  v4 = v19;
LABEL_15:
}

void sub_10004D5DC(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000715C0(a1, v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = [*(a1 + 48) editorialItemCreator];
    v5 = [v4 createEditorialItemFromCachedEntry:*(a1 + 56)];
    (*(v3 + 16))(v3, v5);
  }
}

void sub_10004D674(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100071684(a1, v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [*(a1 + 40) editorialItemCreator];
    v5 = [v4 createEditorialItemFromCachedEntry:*(a1 + 48)];
    (*(v3 + 16))(v3, v5);
  }
}

void sub_10004D924(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, a1[4]);
  v7 = [a1[4] articleController];
  v27 = a1[5];
  v8 = [NSArray arrayWithObjects:&v27 count:1];
  v9 = [v7 headlinesFetchOperationForArticleIDs:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004DB7C;
  v19[3] = &unk_1000C51C8;
  objc_copyWeak(&v25, &location);
  v10 = v5;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  v24 = a1[9];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a1[5];
  v15 = a1[8];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v22 = v17;
  v23 = v16;
  [v9 setFetchCompletionBlock:v19];
  v18 = +[NSOperationQueue fc_sharedConcurrentQueue];
  [v18 addOperation:v9];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void sub_10004DB40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10004DB7C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v5 = a1[4];
  v6 = a1[5];
  v17 = a1[10];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v14 = a1[8];
  v15 = v3;
  v16 = a1[9];
  v11 = v3;
  FCPerformIfNonNil();
}

void sub_10004DCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ToC Editorial Manager: Load flint context finished with context: %@ error: %{public}@", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004DEEC;
    v17[3] = &unk_1000C3C28;
    v7 = &v19;
    v19 = *(a1 + 88);
    v17[4] = v3;
    v18 = *(a1 + 48);
    sub_10004DEEC(v17);
  }

  else
  {
    v8 = [v3 articleEditorialItemProvider];
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = [*(a1 + 72) fetchedObject];
    v13 = [v12 firstObject];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004DF78;
    v15[3] = &unk_1000C5178;
    v7 = &v16;
    v14 = *(a1 + 80);
    v16 = *(a1 + 88);
    [v8 createEditorialItemWithContext:v9 articleModifiedDate:v10 articleID:v11 headline:v13 flintDataProvider:v14 completion:v15];
  }
}

void sub_10004DEEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v4 = [*(a1 + 32) editorialItemCreator];
    v3 = [v4 createEditorialItemFromCachedEntry:*(a1 + 40)];
    (*(v1 + 16))(v1, v3);
  }
}

uint64_t sub_10004DF78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004E0F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fr_barButtonItemView];
  [v2 fc_safelyAddObject:v3];
}

FRPrefetchedArticlesService *sub_10004EB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resolveClass:objc_opt_class()];

  v5 = [[FRPrefetchedArticlesService alloc] initWithFeldsparContext:*(a1 + 32) assetManager:v4];

  return v5;
}

FRTodayAgent *sub_10004EBE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCFeedPersonalizing];
  v5 = [FRTodayAgent alloc];
  v6 = [*(a1 + 32) purchaseController];
  v7 = [*(a1 + 32) subscriptionController];
  v8 = [v3 resolveProtocol:&OBJC_PROTOCOL___TSWidgetLocalNewsChannelServiceType];
  v9 = [*(a1 + 32) bundleSubscriptionManager];
  v10 = [v3 resolveProtocol:&OBJC_PROTOCOL___FRLimitedPersonalizationDataGeneratorType];
  v11 = *(a1 + 32);
  v12 = [v3 resolveProtocol:&OBJC_PROTOCOL___NPUserEmbeddingGeneratorType];

  v13 = [(FRTodayAgent *)v5 initWithFeedPersonalizer:v4 purchaseController:v6 subscriptionController:v7 localNewsChannelService:v8 bundleSubscriptionManager:v9 personalizationDataGenerator:v10 privateDataContext:v11 userEmbeddingGenerator:v12];

  return v13;
}

FRLimitedPersonalizationDataGeneratorType *__cdecl sub_10004ED34(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRTimeAndCountAwareLimitedPersonalizationDataGenerator alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCPersonalizationDataGeneratorType name:@"extension"];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCCoreConfigurationManager];

  v6 = [(FRTimeAndCountAwareLimitedPersonalizationDataGenerator *)v3 initWithGenerator:v4 configurationManager:v5];

  return v6;
}

FRBackgroundFetchManager *sub_10004EDE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FRBackgroundFetchManager alloc];
  v5 = [*(a1 + 32) appConfigurationManager];
  v6 = *(a1 + 32);
  v7 = [v6 subscriptionController];
  v8 = [*(a1 + 40) privateDataUpdateCoordinator];
  v9 = [v3 resolveClass:objc_opt_class()];
  v10 = [(FRBackgroundFetchManager *)v4 initWithResolver:v3 appConfigManager:v5 privateDataContext:v6 subscriptionController:v7 privateDataUpdateCoordinator:v8 todayAgent:v9];

  return v10;
}

void sub_10004EED4(id a1, TFResolver *a2, FRBackgroundFetchManager *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(TFResolver *)v5 resolveClass:objc_opt_class()];

  [(FRBackgroundFetchManager *)v4 addFetchable:v6];
}

NSSNewsAnalyticsSessionManager *__cdecl sub_10004F050(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

NSSNewsAnalyticsUserIDProvider *__cdecl sub_10004F0B0(id a1, TFResolver *a2)
{
  v2 = [(TFResolver *)a2 resolveProtocol:&OBJC_PROTOCOL___FCPrivateDataContext];
  v3 = [FRUserInfoUserIDProvider alloc];
  v4 = [v2 userInfo];
  v5 = [(FRUserInfoUserIDProvider *)v3 initWithUserInfo:v4];

  return v5;
}

void sub_10004F4AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 lowercaseString];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

id sub_100050304(uint64_t a1)
{
  result = [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  return result;
}

void sub_100050350(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000503E8;
  v5[3] = &unk_1000C5598;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 scheduleLocalNotificationForArticleID:@"A_BUpuB2ATxS__HCPKpoh4Q" completion:v5];
}

id sub_1000503E8(uint64_t a1)
{
  result = [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  return result;
}

void sub_100050478(id a1)
{
  v1 = [NSBundle alloc];
  v2 = FRURLForLocalInternalExtrasBundle();
  v3 = [v2 path];
  v4 = [v1 initWithPath:v3];
  v5 = qword_1000E62D8;
  qword_1000E62D8 = v4;

  if (!qword_1000E62D8)
  {
    v6 = [NSBundle alloc];
    v10 = FRURLForInternalExtrasBundle();
    v7 = [v10 path];
    v8 = [v6 initWithPath:v7];
    v9 = qword_1000E62D8;
    qword_1000E62D8 = v8;
  }
}

void sub_1000505B0(id a1)
{
  v23 = +[NSMutableDictionary dictionary];
  v33[0] = &off_1000CB558;
  v33[1] = &off_1000CB570;
  v34[0] = &off_1000CB4E0;
  v34[1] = &off_1000CB4F0;
  v1 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v31[0] = &off_1000CB558;
  v2 = [NSNumber numberWithDouble:UIFontWeightBold];
  v31[1] = &off_1000CB570;
  v32[0] = v2;
  v3 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v32[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

  v29[0] = &off_1000CB558;
  v29[1] = &off_1000CB570;
  v30[0] = &__kCFBooleanTrue;
  v30[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [&off_1000CB400 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(&off_1000CB400);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 BOOLValue];

        v13 = [v4 objectForKeyedSubscript:v10];
        [v13 floatValue];
        v15 = v14;

        v16 = [v1 objectForKeyedSubscript:v10];
        [v16 floatValue];
        v18 = v17;

        v19 = [UIFont fr_systemFontNameForWeight:v12 condensed:v15];
        v20 = [UIFont fr_fontWithName:v19 size:v18];
        [v23 setObject:v20 forKeyedSubscript:v10];
      }

      v7 = [&off_1000CB400 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = [v23 copy];
  v22 = qword_1000E62F0;
  qword_1000E62F0 = v21;
}

void sub_10005091C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [&off_1000CB418 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(&off_1000CB418);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 integerValue];
        v9 = +[NSMutableDictionary dictionary];
        v10 = [*(a1 + 32) fr_fontForFeedHeaderType:v8];
        if (v10)
        {
          [v9 setObject:v10 forKeyedSubscript:NSFontAttributeName];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v18 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "font"];
          *buf = 136315906;
          v26 = "+[NSString(FRFeedAdditions) fr_attributesLookup]_block_invoke";
          v27 = 2080;
          v28 = "UIFont+FRFeedAdditions.m";
          v29 = 1024;
          v30 = 67;
          v31 = 2114;
          v32 = v18;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        [*(a1 + 32) fr_trackingForFeedHeaderType:v8];
        if (vabdd_f64(0.0, v11) >= 0.00999999978)
        {
          v12 = [NSNumber numberWithDouble:?];
          [v9 setObject:v12 forKeyedSubscript:kCTTrackingAttributeName];
        }

        [*(a1 + 32) fr_leadingForFeedHeaderType:v8];
        if (v13 > 0.0)
        {
          v14 = v13;
          v15 = objc_alloc_init(NSMutableParagraphStyle);
          [v15 setMinimumLineHeight:v14];
          [v15 setLineBreakMode:0];
          [v15 setAlignment:0];
          v16 = [v15 copy];
          [v9 setObject:v16 forKeyedSubscript:NSParagraphStyleAttributeName];
        }

        v17 = [v9 copy];
        [v2 setObject:v17 forKey:v7];
      }

      v4 = [&off_1000CB418 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v4);
  }

  v19 = [v2 copy];
  v20 = qword_1000E6300;
  qword_1000E6300 = v19;
}

void sub_100051388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000513D0(uint64_t a1)
{
  v2 = [*(a1 + 32) loadedConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) operation];

  return _objc_release_x1();
}

void sub_10005144C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained loadedConfiguration];
  (*(v2 + 16))(v2, v3);
}

void sub_1000515EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051604(uint64_t a1)
{
  v5 = [*(a1 + 32) loadedConfiguration];
  v2 = [v5 embedForType:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100051704(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100051824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100051840(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [[FRFlintEmbedConfiguration alloc] initWithData:v3];
    }

    else
    {
      v5 = 0;
    }

    v6 = [WeakRetained lock];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100051930;
    v8[3] = &unk_1000C1920;
    v8[4] = WeakRetained;
    v9 = v5;
    v7 = v5;
    [v6 performWithLockSync:v8];
  }
}

void sub_100051930(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

void sub_100052190(void *a1, void *a2)
{
  v3 = a2;
  v4 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = a1[6];
    *buf = 138543618;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "update coordinator will trigger sync, target=%{public}@, instance=%lu", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052300;
  v12[3] = &unk_1000C5700;
  v9 = a1[6];
  v10 = a1[5];
  v13 = a1[4];
  v16 = v9;
  v14 = v10;
  v15 = v3;
  v11 = v3;
  [v13 syncWithCompletion:v12];
}

uint64_t sub_100052300(uint64_t a1)
{
  v2 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 56);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "update coordinator did finish sync, target=%{public}@, instance=%lu", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  return (*(*(a1 + 48) + 16))();
}

void sub_100053178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000531AC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 unsignedIntegerValue];
  if ((v5 & 0x2C46) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) |= 2uLL;
    *(*(*(a1 + 64) + 8) + 24) = 17;
  }

  v6 = v10;
  if ((v5 & 0x99) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) |= 4uLL;
    v7 = [*(a1 + 32) hasArticleBeenSeen:v10];
    v8 = 48;
    if (v7)
    {
      v8 = 40;
    }

    v5 = [*(a1 + v8) addObject:v10];
    v6 = v10;
  }

  return _objc_release_x1(v5, v6);
}

void sub_10005342C(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v4;
  FCPerformBlockOnMainThread();
}

void sub_1000534EC(uint64_t a1)
{
  v2 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 134217984;
    v16 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will process %lu dequeued transactions", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) performWithPrivateDataContext:{*(a1 + 40), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100053718(uint64_t a1)
{
  v2 = [*(a1 + 32) operationThrottler];
  v3 = [v2 allUnhandledMergedData];

  if ((v3 & 2) != 0)
  {
    v4 = *(a1 + 32);
    v5 = [v4 _accessorToUpdateRecentlyReadItems];
    v6 = objc_retainBlock(v5);
    v8 = v6;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v4 _updateDropboxWithAccessors:v7];
  }
}

void sub_100053974(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
}

id sub_1000539D4(uint64_t a1)
{
  result = [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  return result;
}

void sub_100053BA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fc_dictionaryWithKeyBlock:&stru_1000C5800];
  [v3 setRecentlyReadHistoryItems:v4];
}

void sub_100053D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

void sub_100054034(uint64_t a1)
{
  v2 = [*(a1 + 32) privateDataContext];
  v3 = [*(a1 + 32) seenArticlesTransactions];
  v4 = [FCFileCoordinatedTodayDropboxTransaction collapsedTransactionOfTransactions:v3];

  v5 = [v4 todayPrivateDataAccessor];
  v6 = [*(a1 + 32) seenArticlesTransactions];
  [v6 removeAllObjects];

  v7 = +[FCFileCoordinatedTodayDropboxTransaction transactionOfIdentity];
  if (v7)
  {
    v8 = [*(a1 + 32) seenArticlesTransactions];
    [v8 addObject:v7];
  }

  if (*(a1 + 48))
  {
    v69 = v7;
    v9 = dispatch_group_create();
    v10 = objc_opt_new();
    v11 = *(a1 + 48);
    if ((v11 & 6) != 0)
    {
      v12 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preparing to update reading history", buf, 2u);
      }

      v13 = [*(a1 + 32) _accessorToUpdateRecentlyReadItems];
      [v10 safelyAddObject:v13];

      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_100054AF4;
      v96[3] = &unk_1000C5850;
      v97 = v5;
      v14 = objc_retainBlock(v96);
      [v10 addObject:v14];

      v15 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated reading history", buf, 2u);
      }

      v11 = *(a1 + 48);
    }

    if ((v11 & 8) != 0)
    {
      v66 = v5;
      v67 = v4;
      v68 = v2;
      v16 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preparing to update subscriptions", buf, 2u);
      }

      v17 = [*(a1 + 32) subscriptionController];
      v18 = [v17 mutedTagIDs];
      v19 = [NSSet setWithArray:v18];

      v20 = [v17 autoFavoriteTagIDs];
      v21 = v20;
      v22 = &__NSArray0__struct;
      if (v20)
      {
        v22 = v20;
      }

      v23 = v22;

      v24 = [v17 groupableTagIDs];
      v25 = [NSSet setWithArray:v24];

      v26 = [v17 allSubscribedTagIDs];
      v27 = [NSArray arrayWithArray:v26];

      v28 = [*(a1 + 32) subscriptionController];
      LODWORD(v26) = [v28 isWaitingForFirstSync];

      if (v26)
      {
        v29 = FRTodayAgentLog;
        if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Will skip subscribed tag IDs because they haven't finished syncing", buf, 2u);
        }

        v27 = &__NSArray0__struct;
      }

      dispatch_group_enter(v9);
      v30 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100054B04;
      block[3] = &unk_1000C58C8;
      block[4] = *(a1 + 32);
      v89 = v27;
      v90 = v17;
      v91 = v10;
      v92 = v19;
      v93 = v23;
      v94 = v25;
      v95 = v9;
      v31 = v25;
      v32 = v23;
      v33 = v19;
      v34 = v17;
      v35 = v27;
      dispatch_async(v30, block);

      v11 = *(a1 + 48);
      v4 = v67;
      v2 = v68;
      v5 = v66;
    }

    if ((v11 & 0x48) != 0)
    {
      v36 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Preparing to update local news", buf, 2u);
      }

      dispatch_group_enter(v9);
      v37 = [*(a1 + 32) localNewsChannelService];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100054F00;
      v85[3] = &unk_1000C58F0;
      v86 = v10;
      v87 = v9;
      [v37 fetchWidgetLocalNewsChannelIDWithCompletion:v85];

      v11 = *(a1 + 48);
    }

    if ((v11 & 0x10) != 0)
    {
      v38 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Preparing to update user info", buf, 2u);
      }

      v39 = [v2 userInfo];
      v40 = [v39 onboardingVersionNumber];
      v41 = [v40 copy];

      v42 = NewsCoreUserDefaults();
      [v42 setObject:v41 forKey:FCWidgetOnboardingVersionSharedPreferenceKey];

      v43 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Updated user info", buf, 2u);
      }

      v11 = *(a1 + 48);
    }

    if ((v11 & 0x20) != 0)
    {
      v44 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Preparing to update purchase", buf, 2u);
      }

      v45 = [*(a1 + 32) purchaseController];
      v46 = [v45 allPurchasedTagIDs];
      v47 = [v46 copy];

      v48 = [*(a1 + 32) bundleSubscriptionManager];
      v49 = [v48 cachedSubscription];
      v50 = [v49 copy];

      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_100055024;
      v82[3] = &unk_1000C5918;
      v51 = v47;
      v83 = v51;
      v52 = v50;
      v84 = v52;
      v53 = objc_retainBlock(v82);
      [v10 addObject:v53];

      v54 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Updated purchase", buf, 2u);
      }

      v11 = *(a1 + 48);
    }

    if ((v11 & 0x40) != 0)
    {
      v55 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Preparing to update personalization data", buf, 2u);
      }

      dispatch_group_enter(v9);
      v56 = [*(a1 + 32) workQueue];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100055080;
      v79[3] = &unk_1000C5778;
      v79[4] = *(a1 + 32);
      v80 = v10;
      v81 = v9;
      dispatch_async(v56, v79);

      v11 = *(a1 + 48);
    }

    if ((v11 & 0x80) != 0)
    {
      v57 = FRTodayAgentLog;
      if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Preparing to update user embedding data", buf, 2u);
      }

      dispatch_group_enter(v9);
      v58 = [*(a1 + 32) workQueue];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_1000551A8;
      v76[3] = &unk_1000C5778;
      v76[4] = *(a1 + 32);
      v77 = v10;
      v78 = v9;
      dispatch_async(v58, v76);
    }

    if (FCDispatchGroupIsEmpty())
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1000552CC;
      v73[3] = &unk_1000C4808;
      v59 = &v74;
      v60 = *(a1 + 40);
      v73[4] = *(a1 + 32);
      v74 = v10;
      v61 = &v75;
      v75 = v60;
      v62 = v10;
      sub_1000552CC(v73);
    }

    else
    {
      v63 = [*(a1 + 32) workQueue];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1000553AC;
      v70[3] = &unk_1000C4808;
      v59 = &v71;
      v64 = *(a1 + 40);
      v70[4] = *(a1 + 32);
      v71 = v10;
      v61 = &v72;
      v72 = v64;
      v65 = v10;
      dispatch_group_notify(v9, v63, v70);
    }

    v7 = v69;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100054B04(id *a1)
{
  v2 = [a1[4] feedPersonalizer];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100054C4C;
  v14[3] = &unk_1000C58C8;
  v13 = *(a1 + 2);
  v3 = *(&v13 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v15 = v13;
  v16 = v6;
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v17 = v12;
  v18 = v11;
  [v2 prepareForUseWithCompletionHandler:v14];
}

void sub_100054C4C(uint64_t a1)
{
  v2 = [*(a1 + 32) feedPersonalizer];
  v3 = [v2 rankTagIDsDescending:*(a1 + 40)];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100054E2C;
  v17[3] = &unk_1000C5878;
  v18 = *(a1 + 48);
  v4 = [v3 fc_arrayByTransformingWithBlock:v17];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100054E80;
  v11[3] = &unk_1000C58A0;
  v5 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v6 = v3;
  v14 = v6;
  v7 = v4;
  v15 = v7;
  v16 = *(a1 + 80);
  v8 = objc_retainBlock(v11);
  [v5 addObject:v8];

  v9 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated subscriptions", v10, 2u);
  }

  dispatch_group_leave(*(a1 + 88));
}

id sub_100054E2C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) subscriptionForTagID:a2];
  v3 = [v2 dateAdded];

  return v3;
}

void sub_100054E80(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setMutedTagIDs:v3];
  [v4 setAutoFavoriteTagIDs:a1[5]];
  [v4 setRankedAllSubscribedTagIDs:a1[6]];
  [v4 setRankedAllSubscriptionDates:a1[7]];
  [v4 setGroupableTagIDs:a1[8]];
}

void sub_100054F00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100055018;
    v11[3] = &unk_1000C5828;
    v12 = v5;
    v8 = objc_retainBlock(v11);
    [v7 addObject:v8];
  }

  v9 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated local news", v10, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100055024(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPurchasedTagIDs:v3];
  [v4 setBundleSubscription:*(a1 + 40)];
}

void sub_100055080(uint64_t a1)
{
  v2 = [*(a1 + 32) personalizationDataGenerator];
  v3 = [v2 generateDerivedDataWithMaxAggregateCount:2000];

  v4 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005519C;
  v9[3] = &unk_1000C5828;
  v5 = v3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  [v4 addObject:v6];

  v7 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated personalization data", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000551A8(uint64_t a1)
{
  v2 = [*(a1 + 32) userEmbeddingGenerator];
  v3 = [v2 generateUserEmbeddingIfNeeded];

  v4 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000552C0;
  v9[3] = &unk_1000C5828;
  v5 = v3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  [v4 addObject:v6];

  v7 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated user embedding data", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_1000552CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) readOnlyArray];
  v4 = [v2 _updateDropboxWithAccessors:v3];

  v5 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished updating today data with result %d", v7, 8u);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_1000553AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) readOnlyArray];
  v4 = [v2 _updateDropboxWithAccessors:v3];

  v5 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished updating today data with result %d", v7, 8u);
  }

  return (*(*(a1 + 48) + 16))();
}

double FRCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

void sub_100055A30(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 count] != 0, v5);
}

uint64_t sub_100055D50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_100056950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  FCPerformBlockOnMainThread();
}

void sub_1000569EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100056B34;
    v11[3] = &unk_1000C1920;
    v3 = v2;
    v4 = *(a1 + 40);
    v12 = v3;
    v13 = v4;
    sub_100056B34(v11);
    v5 = v12;
  }

  else
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FROnboardingDataManager: userOnboardingCompletionHandler completed with %ld", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) delegate];
    v5 = v9;
    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    [v9 dataManager:*(a1 + 40) userType:v10];
  }
}

void sub_100056B34(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100072B40(a1, v2);
  }

  v3 = [*(a1 + 40) delegate];
  [v3 dataManager:*(a1 + 40) error:0];
}

void sub_100056C5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataManagerFeedPrepared:*(a1 + 32)];
}

id NNSetupCompanionSyncLog()
{
  if (qword_1000E6320 != -1)
  {
    sub_100072BBC();
  }

  v1 = qword_1000E6318;

  return v1;
}

void sub_100056E0C(id a1)
{
  v1 = os_log_create("com.apple.nanonews", "CompanionSync");
  v2 = qword_1000E6318;
  qword_1000E6318 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100057164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100057188(uint64_t a1)
{
  v2 = [*(a1 + 56) _referenceCountForFontWithFileURL:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v27 = v7;
      v28 = 2048;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found previous registration for font at URL %{public}@ with reference count %lu", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v8 = *(a1 + 32);
  error = 0;
  v9 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to register font at URL %{public}@", buf, 0xCu);
  }

  if (!CTFontManagerRegisterFontsForURL(v8, kCTFontManagerScopeProcess, &error))
  {
    Code = CFErrorGetCode(error);
    v14 = Code;
    if (Code > 103)
    {
      if (Code != 104)
      {
        v16 = 1;
        if (Code != 105 && Code != 305)
        {
LABEL_23:
          v20 = FRArticleLog;
          if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 32);
            v22 = *(*(*(a1 + 40) + 8) + 40);
            v23 = v20;
            v24 = [NSNumber numberWithLong:v14];
            *buf = 138543874;
            v27 = v21;
            v28 = 2114;
            v29 = v22;
            v30 = 2114;
            v31 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to register font at URL %{public}@ with error: %{public}@ underlying error code: %{public}@", buf, 0x20u);
          }

          goto LABEL_25;
        }

LABEL_22:
        *(*(*(a1 + 48) + 8) + 24) = v16;
        goto LABEL_23;
      }

      v15 = 3;
    }

    else
    {
      switch(Code)
      {
        case 'e':
          v15 = 0;
          break;
        case 'f':
          v15 = 1;
          break;
        case 'g':
          v15 = 2;
          break;
        default:
          goto LABEL_23;
      }
    }

    v17 = [NSError errorWithDomain:@"FRFontRegistationErrorDomain" code:v15 userInfo:0];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v16 = 0;
    goto LABEL_22;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v11 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Font registration succeeded for font at URL %{public}@", buf, 0xCu);
  }

LABEL_25:
  if (error)
  {
    CFRelease(error);
  }

LABEL_27:
  if (*(a1 + 64))
  {
    **(a1 + 64) = *(*(*(a1 + 40) + 8) + 40);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 56) _increaseReferenceCountForFontWithFileURL:*(a1 + 32)];
  }
}

void sub_100057CB4(id a1)
{
  v1 = objc_alloc_init(NSCountedSet);
  v2 = qword_1000E6330;
  qword_1000E6330 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100057D34(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFF8000, 0);
  v1 = dispatch_queue_create("com.apple.news.font.registration", v3);
  v2 = qword_1000E6340;
  qword_1000E6340 = v1;
}

void FROpenInNewsAlert(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Content Unavailable" value:&stru_1000C67A8 table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This content is not available in Apple News." value:&stru_1000C67A8 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_1000C67A8 table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:0];
  [v9 addAction:v8];

  [v1 presentViewController:v9 animated:1 completion:0];
}

TSLocalDraftsDeviceManagerType *__cdecl sub_100058BC8(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(TSLocalDraftsDeviceManager);

  return v2;
}

double sub_10005920C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 1.0;
  v6 = 1.0;
  if (*(a1 + 32))
  {
    v6 = ([v3 timestamp] - *(a1 + 40)) / *(a1 + 32);
  }

  if (*(a1 + 48))
  {
    v5 = ([v4 eventCount] - *(a1 + 56)) / *(a1 + 48);
  }

  v7 = v5 * (1.0 - *(a1 + 64)) + v6 * *(a1 + 64);

  return v7;
}

uint64_t sub_1000592B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 featureKey];
  v8 = [v7 isEqualToString:@"f0"];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 featureKey];
    v11 = [v10 isEqualToString:@"f0"];

    if (v11)
    {
      v9 = -1;
    }

    else
    {
      v12 = (*(*(a1 + 32) + 16))();
      v13 = (*(*(a1 + 32) + 16))();
      if (v12 < v13)
      {
        v9 = -1;
      }

      else
      {
        v9 = v12 > v13;
      }
    }
  }

  return v9;
}

void sub_100059674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005968C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = (a1 + 32);
  v4 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v4)
  {
    cf = 0;
    ImagesFromPath = CPBitmapCreateImagesFromPath();
    v6 = ImagesFromPath;
    if (ImagesFromPath && CFArrayGetCount(ImagesFromPath) >= 1)
    {
      v7 = [0 objectForKeyedSubscript:@"FRImageScaleKey"];
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      [v7 floatValue];
      v10 = [UIImage imageWithCGImage:ValueAtIndex scale:0 orientation:v9];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v13 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        sub_100073770(v3, &cf, v13);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_100059874(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) rootPath];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v29 = NSURLContentModificationDateKey;
  v5 = [NSArray arrayWithObjects:&v29 count:1];
  v6 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v23 = 0;
        [v12 getResourceValue:&v23 forKey:NSURLContentModificationDateKey error:0];
        v13 = v23;
        v14 = +[NSDate date];
        [v14 timeIntervalSinceDate:v13];
        v16 = v15;

        if (v16 > *(a1 + 40))
        {
          v17 = +[NSFileManager defaultManager];
          v22 = 0;
          [v17 removeItemAtURL:v12 error:&v22];
          v18 = v22;

          if (v18)
          {
            v19 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              sub_100073824(&v20, v21, v19);
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

void sub_100059D30(uint64_t a1)
{
  cf = 0;
  values = *(a1 + 56);
  Default = CFAllocatorGetDefault();
  v3 = CFArrayCreate(Default, &values, 1, &kCFTypeArrayCallBacks);
  v16 = @"FRImageScaleKey";
  [*(a1 + 40) scale];
  v4 = [NSNumber numberWithDouble:?];
  v17 = v4;
  [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  v5 = CPBitmapWriteImagesToPath();
  if (v3)
  {
    CFRelease(v3);
  }

  if (!v5)
  {
    v6 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_100073864(&cf, v6);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CGImageRelease(*(a1 + 56));
  Current = CFAbsoluteTimeGetCurrent();
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = Current - *(a1 + 64);
    v10 = *(a1 + 48);
    *buf = 138412546;
    v13 = v10;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cached image %@ to disk in %f ms", buf, 0x16u);
  }
}

id sub_10005A1C0(uint64_t a1)
{
  v2 = [NTPBURLMapping alloc];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"url_mapping"];
  v4 = [v2 initWithData:v3];

  v5 = [[FCPersonalizationURLMapping alloc] initWithPBURLMapping:v4];

  return v5;
}

id sub_10005A24C(uint64_t a1)
{
  v2 = [NTPBBundleIDMapping alloc];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"bundle_id_mapping"];
  v4 = [v2 initWithData:v3];

  v5 = [[FCPersonalizationBundleIDMapping alloc] initWithPBBundleIDMapping:v4];

  return v5;
}

id sub_10005A2D8(uint64_t a1)
{
  v2 = [NTPBPublisherFavorabilityScores alloc];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"favorability_scores"];
  v4 = [v2 initWithData:v3];

  v5 = [[FCPersonalizationFavorabilityScores alloc] initWithPBFavorabilityScores:v4];

  return v5;
}

id sub_10005A364(uint64_t a1)
{
  v2 = [NTPBPersonalizationWhitelist alloc];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"whitelist"];
  v4 = [v2 initWithData:v3];

  v5 = [[FCPersonalizationWhitelist alloc] initWithPBPersonalizationWhitelist:v4];

  return v5;
}

void sub_10005AC1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bundleIDMapping];
  v6 = [v5 jsonEncodableObject];
  [v4 fc_safelySetObjectAllowingNil:v6 forKey:@"bundle-id-mapping-data"];

  v8 = [*(a1 + 32) urlMapping];
  v7 = [v8 jsonEncodableObject];
  [v4 fc_safelySetObjectAllowingNil:v7 forKey:@"url-mapping-data"];
}

void sub_10005AF88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = FRURLForNewsAppCachesDirectory();
  [v2 fc_quicklyClearDirectory:v3 callbackQueue:0 completion:0];

  v4 = FCURLForContainerizedUserAccountCachesDirectory();
  v7 = [v4 URLByAppendingPathComponent:@"com.apple.news" isDirectory:1];

  [*(a1 + 32) fc_quicklyClearDirectory:v7 callbackQueue:0 completion:0];
  v5 = *(a1 + 32);
  v6 = FCBaseURLForSharedPrivateData();
  [v5 fc_quicklyClearDirectory:v6 callbackQueue:0 completion:0];
}

void sub_10005B05C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FRURLForNewsAppDocumentsDirectory();
  [v1 fc_removeContentsOfDirectoryAtURL:v2];
}

void sub_10005C0E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionary];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10005CDAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  FCPerformBlockOnMainThread();
}

void sub_10005CE48(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005CED0;
  v2[3] = &unk_1000C3098;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 executeOnce:v2];
}

void sub_10005CEE4(uint64_t a1)
{
  +[NSThread isMainThread];
  [*(a1 + 32) cancel];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005CF84;
  v3[3] = &unk_1000C3098;
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  [v2 executeOnce:v3];
}

void sub_10005D844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D8FC;
  v6[3] = &unk_1000C5CF0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _doWorkIfNotCancelled:v6];
}

id sub_10005D8FC(uint64_t a1)
{
  v2 = [*(a1 + 32) component];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v23 = FRArticlePrefetchLog;
      if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        v25 = v23;
        v26 = [v24 headline];
        v27 = [v26 articleID];
        *buf = 138543362;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "will start prefetching asset URLs for article ID %{public}@", buf, 0xCu);
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10005DF88;
      v32[3] = &unk_1000C1BD8;
      v28 = *(a1 + 40);
      v32[4] = *(a1 + 32);
      v33 = *(a1 + 48);
      v9 = [v28 loadAssetURLsWithCompletionBlock:v32];
      v10 = v33;
      goto LABEL_21;
    }

    if (v2 == 3)
    {
      v11 = FRArticlePrefetchLog;
      if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 headline];
        v15 = [v14 articleID];
        *buf = 138543362;
        v39 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "will start prefetching assets for article ID %{public}@", buf, 0xCu);
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10005E078;
      v30[3] = &unk_1000C1BD8;
      v16 = *(a1 + 40);
      v30[4] = *(a1 + 32);
      v31 = *(a1 + 48);
      v9 = [v16 loadAssetsWithCompletionBlock:v30];
      v10 = v31;
      goto LABEL_21;
    }
  }

  else
  {
    if (!v2)
    {
      v17 = FRArticlePrefetchLog;
      if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 32);
        v19 = v17;
        v20 = [v18 headline];
        v21 = [v20 articleID];
        *buf = 138543362;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "will start prefetching JSON for article ID %{public}@", buf, 0xCu);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10005DDA8;
      v36[3] = &unk_1000C1BD8;
      v22 = *(a1 + 40);
      v36[4] = *(a1 + 32);
      v37 = *(a1 + 48);
      v9 = [v22 loadJSONWithCompletionBlock:v36];
      v10 = v37;
      goto LABEL_21;
    }

    if (v2 == 1)
    {
      v3 = FRArticlePrefetchLog;
      if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = [v4 headline];
        v7 = [v6 articleID];
        *buf = 138543362;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "will start prefetching fonts for article ID %{public}@", buf, 0xCu);
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10005DE98;
      v34[3] = &unk_1000C1BD8;
      v8 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v35 = *(a1 + 48);
      v9 = [v8 loadFontsWithCompletionBlock:v34];
      v10 = v35;
LABEL_21:

      goto LABEL_22;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000745F4();
  }

  v9 = 0;
LABEL_22:

  return v9;
}

uint64_t sub_10005DDA8(uint64_t a1)
{
  v2 = FRArticlePrefetchLog;
  if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 headline];
    v6 = [v5 articleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did finish prefetching JSON for article ID %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10005DE98(uint64_t a1)
{
  v2 = FRArticlePrefetchLog;
  if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 headline];
    v6 = [v5 articleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did finish prefetching fonts for article ID %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10005DF88(uint64_t a1)
{
  v2 = FRArticlePrefetchLog;
  if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 headline];
    v6 = [v5 articleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did finish prefetching asset URLs for article ID %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10005E078(uint64_t a1)
{
  v2 = FRArticlePrefetchLog;
  if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 headline];
    v6 = [v5 articleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did finish prefetching assets for article ID %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10005E260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005E318;
  v6[3] = &unk_1000C5CF0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _doWorkIfNotCancelled:v6];
}

id sub_10005E318(id *a1)
{
  if ([a1[4] component] == 4)
  {
    v2 = FRArticlePrefetchLog;
    if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = v2;
      v5 = [v3 headline];
      v6 = [v5 articleID];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "will start prefetching web excerpt for article ID %{public}@", buf, 0xCu);
    }

    v7 = [a1[5] webContent];
    v8 = [v7 excerptAssetHandle];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005E4E0;
    v11[3] = &unk_1000C1BD8;
    v11[4] = a1[4];
    v12 = a1[6];
    v9 = [v8 downloadIfNeededWithCompletionQueue:&_dispatch_main_q completion:v11];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000746AC();
    }

    v9 = 0;
  }

  return v9;
}

uint64_t sub_10005E4E0(uint64_t a1)
{
  v2 = FRArticlePrefetchLog;
  if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 headline];
    v6 = [v5 articleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did finish prefetching web excerpt for article ID %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10005E8C0(id a1)
{
  v4 = +[NSFileManager defaultManager];
  v1 = [v4 containerURLForSecurityApplicationGroupIdentifier:NSSSecurityApplicationGroupIdentifier];
  v2 = [v1 URLByAppendingPathComponent:@"Spotlight" isDirectory:1];
  v3 = qword_1000E6358;
  qword_1000E6358 = v2;
}

id sub_10005EAF8(uint64_t a1)
{
  v2 = +[CSSearchableIndex defaultSearchableIndex];
  v3 = [v2 indexDelegate];

  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074778();
  }

  v4 = *(a1 + 32);
  v5 = +[CSSearchableIndex defaultSearchableIndex];
  [v5 setIndexDelegate:v4];

  return [*(a1 + 32) createSpotlightDirectoryIfNeeded];
}

void sub_10005EF08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[CSSearchableIndex defaultSearchableIndex];
  [v1 _indexTags:v2 searchableIndex:v3];
}

void sub_10005F018(uint64_t a1)
{
  v2 = [*(a1 + 32) fc_arrayByTransformingWithBlock:&stru_1000C5D80];
  v1 = +[CSSearchableIndex defaultSearchableIndex];
  [v1 deleteSearchableItemsWithIdentifiers:v2 completionHandler:&stru_1000C5DA0];
}

void sub_10005F098(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074C78();
  }
}

void sub_10005F134(id a1)
{
  v1 = +[CSSearchableIndex defaultSearchableIndex];
  [v1 deleteAllSearchableItemsWithCompletionHandler:&stru_1000C5DE0];
}

void sub_10005F184(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074CB4();
  }
}

void sub_10005F2DC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) allObjects];
    [v2 addSubscriptionsWithTags:v3];
  }

  if ([*(a1 + 48) count])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) allObjects];
    [v4 removeSubscriptionsWithTags:v5];
  }

  if ([*(a1 + 56) count])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 56) allObjects];
    [v6 addSubscriptionsWithTags:v7];
  }
}

void sub_10005F618(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[CSSearchableIndex defaultSearchableIndex];
  [v1 _indexArticleIDs:v2 searchableIndex:v3 acknowledgementHandler:0];
}

void sub_10005F78C(id a1)
{
  v1 = +[CSSearchableIndex defaultSearchableIndex];
  v3[0] = NSSSpotlightArticleDomainIdentifier;
  v3[1] = NSSSpotlightFeedDomainIdentifier;
  v2 = [NSArray arrayWithObjects:v3 count:2];
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:&stru_1000C5E20];
}

void sub_10005F844(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074CF0();
  }
}

void sub_10005FAE8(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEBUG))
  {
    sub_100074D2C(a1, v2);
  }

  v3 = +[CSSearchableIndex defaultSearchableIndex];
  [v3 deleteSearchableItemsWithIdentifiers:*(a1 + 32) completionHandler:&stru_1000C5E40];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 32) copy];
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

        [*(a1 + 40) _removeThumbnailForArticleID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_10005FC30(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074C78();
  }
}

void sub_10005FDF8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10005FEB4;
    v5[3] = &unk_1000C5E68;
    v2 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    v3 = [v2 fc_arrayByTransformingWithBlock:v5];
    v4 = +[CSSearchableIndex defaultSearchableIndex];
    [v4 indexSearchableItems:v3 completionHandler:&stru_1000C5E88];
  }
}

void sub_10005FEC0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074DA8();
  }
}

void sub_100060088(uint64_t a1, void *a2)
{
  v3 = a2;
  +[FRMacros deviceScreenScaleFromPotentialBackgroundThread];
  v5 = v4;
  +[FRMacros minScreenSide];
  v7 = v5 * v6;
  v8 = [v3 fetchedObject];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000601A8;
  v11[3] = &unk_1000C5EB0;
  *&v11[5] = v7;
  *&v11[6] = v7;
  v11[4] = *(a1 + 32);
  v9 = [v8 fc_arrayByTransformingWithBlock:v11];
  if ([v9 count])
  {
    [v9 enumerateObjectsUsingBlock:&stru_1000C5EF0];
  }

  [*(a1 + 40) indexSearchableItems:v9 completionHandler:&stru_1000C5F10];
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

id sub_1000601A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDeleted])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v6 = FCThumbnailForHeadlineMinimumSize();

    v7 = [v6 thumbnailAssetHandle];
    v8 = [v7 filePath];

    v25 = v8;
    if ([v8 length] && objc_msgSend(*(a1 + 32), "_copyThumbnail:forHeadline:", v6, v3))
    {
      v9 = [*(a1 + 32) _thumbnailURLForHeadline:v3];
    }

    else
    {
      v9 = 0;
    }

    v10 = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:kUTTypeText];
    v11 = [v3 title];
    [v10 setTitle:v11];

    v12 = [v3 shortExcerpt];
    [v10 setContentDescription:v12];

    v13 = [v3 shortExcerpt];
    [v10 setTextContent:v13];

    [v10 setThumbnailURL:v9];
    v14 = [v3 publishDate];
    [v10 setContentCreationDate:v14];

    v15 = [v3 sourceName];
    [v10 setNamedLocation:v15];

    [v10 setLanguages:&off_1000CB4A8];
    v16 = FCBundle();
    v17 = [v16 localizedStringForKey:@"news" value:&stru_1000C67A8 table:0];
    v18 = FCBundle();
    v19 = [v18 localizedStringForKey:@"article" value:&stru_1000C67A8 table:0];
    v20 = [NSArray arrayWithObjects:v17, v19, 0];
    [v10 setKeywords:v20];

    v21 = [CSSearchableItem alloc];
    v22 = [v3 articleID];
    v4 = [v21 initWithUniqueIdentifier:v22 domainIdentifier:NSSSpotlightArticleDomainIdentifier attributeSet:v10];

    v23 = [*(a1 + 32) associator];
    [v23 associateAppEntityFromHeadline:v3 with:v4];
  }

  return v4;
}

void sub_1000604A0(id a1, CSSearchableItem *a2, unint64_t a3, BOOL *a4)
{
  v5 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSSearchableItem *)a2 debugDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Submitting item to CoreSpotlight %@", &v8, 0xCu);
  }
}

void sub_100060564(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100074DA8();
  }
}

void sub_1000608CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  FCPerformBlockOnMainThread();
}

void sub_10006096C(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionController];
  v3 = [v2 cachedSubscribedTags];

  [*(a1 + 32) _indexTags:v3 searchableIndex:*(a1 + 40)];
  v4 = +[NSMutableSet set];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100060B90;
  v23[3] = &unk_1000C5F60;
  v23[4] = *(a1 + 32);
  v24 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v23);
  v7 = [*(a1 + 32) readingHistory];
  v8 = [v7 sortedVisitedArticleIDs];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100060C1C;
  v21[3] = &unk_1000C5F88;
  v21[4] = *(a1 + 32);
  v9 = v6;
  v22 = v9;
  [v8 enumerateObjectsUsingBlock:v21];

  v10 = [*(a1 + 32) readingList];
  v11 = [v10 allSortedArticleIDsInReadingList];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100060CB4;
  v18 = &unk_1000C5F88;
  v19 = *(a1 + 32);
  v20 = v9;
  v12 = v9;
  [v11 enumerateObjectsUsingBlock:&v15];

  v13 = *(a1 + 32);
  v14 = [v5 allObjects];
  [v13 _indexArticleIDs:v14 searchableIndex:*(a1 + 40) acknowledgementHandler:*(a1 + 48)];
}

void sub_100060B90(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v7 = a2;
  if ([*(a1 + 32) _shouldIndexArticleWithDate:a4])
  {
    if ([*(a1 + 32) _shouldIndexArticleID:v7])
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  else
  {
    *a3 = 1;
  }
}

void sub_100060C1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 readingHistory];
  v6 = [v5 lastVisitedDateForArticleID:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_100060CB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 readingList];
  v6 = [v5 dateArticleWasAdded:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_100060E2C(id *a1)
{
  v5 = a1[4];
  v2 = a1[6];
  v3 = a1[7];
  *&v4 = v2;
  *(&v4 + 1) = v3;
  v6 = v4;
  FCPerformBlockOnMainThread();
}

void sub_100060EF4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060FE8;
  v8[3] = &unk_1000C4448;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v11 = v2;
  v6 = v2;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
  [*(a1 + 40) _indexTags:v6 searchableIndex:*(a1 + 48)];
  [*(a1 + 40) _indexArticleIDs:v7 searchableIndex:*(a1 + 48) acknowledgementHandler:*(a1 + 56)];
}

void sub_100060FE8(id *a1, void *a2)
{
  v5 = a2;
  if ([v5 fc_isValidArticleID])
  {
    [a1[4] addObject:v5];
  }

  else if ([v5 fc_isValidTagID])
  {
    v3 = [a1[5] subscriptionController];
    v4 = [v3 subscribedTagForTagID:v5];

    if (v4)
    {
      [a1[6] addObject:v4];
    }
  }
}

void sub_100061148(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [objc_opt_class() _spotlightFolder];
  v4 = [v3 path];
  v29 = 0;
  v5 = [v2 contentsOfDirectoryAtPath:v4 error:&v29];
  v6 = v29;
  v7 = v6;
  if (v5)
  {
    v20 = v6;
    v21 = v4;
    v22 = a1;
    v23 = v3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v24 = 0;
          v14 = [v2 removeItemAtPath:v13 error:&v24];
          v15 = v24;
          if ((v14 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v16 = [v15 code];
            v17 = [v15 description];
            *buf = 138412802;
            v31 = v13;
            v32 = 2048;
            v33 = v16;
            v34 = 2112;
            v35 = v17;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't delete file at path %@ - %ld - %@", buf, 0x20u);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v10);
    }

    a1 = v22;
    v3 = v23;
    v7 = v20;
    v4 = v21;
    v5 = v19;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074DE4(v7);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

void sub_100061A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[NSFileManager defaultManager];
    v11 = NSFileModificationDate;
    v7 = +[NSDate date];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [*(a1 + 32) path];
    [v6 setAttributes:v8 ofItemAtPath:v9 error:0];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void sub_100061DF8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"FRAppCacheSnapshotterShouldRestoreOldCacheSnapshotDefaultsKey"];
  [v2 synchronize];
  dispatch_group_leave(*(a1 + 32));
}

void sub_100062134(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v2 copyItemAtURL:v3 toURL:v4 error:&v13];
  v6 = v13;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006221C;
  v9[3] = &unk_1000C6130;
  v7 = *(a1 + 48);
  v12 = v5;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);
}

uint64_t sub_10006221C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_1000629E0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 editorialItemID];
  v5 = [v4 fc_isValidArticleID];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 editorialItemID];
    [v6 addObject:v7];
  }
}

FRToCEditorialManager *__cdecl sub_100062FC4(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

TSEditorialItemProvider *__cdecl sub_100063024(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

NUFontRegistration *__cdecl sub_100063084(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FREditorialFontManager);

  return v2;
}

FREditorialItemDownloader *__cdecl sub_1000630B4(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRTagEditorialItemDownloader alloc];
  v4 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager];

  v6 = [(FRTagEditorialItemDownloader *)v3 initWithTagController:v4 editorialItemEntryManager:v5];

  return v6;
}

FRArticleEditorialItemDownloader *sub_100063160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FRArticleEditorialItemDownloader alloc];
  v5 = [v3 resolveClass:objc_opt_class()];
  v6 = [*(a1 + 32) dataProviderFactory];
  v7 = [v3 resolveProtocol:&OBJC_PROTOCOL___FRArticleEditorialItemProvider];
  v8 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager];
  v9 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator];
  v10 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemCreator];

  v11 = [(FRArticleEditorialItemDownloader *)v4 initWithArticleController:v5 dataProviderFactory:v6 articleEditorialItemProvider:v7 editorialItemEntryManager:v8 thumbnailCreator:v9 editorialItemCreator:v10];

  return v11;
}

FRArticleEditorialItemProvider *__cdecl sub_100063298(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRArticleEditorialItemProvider alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator];
  v6 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemCreator];

  v7 = [(FRArticleEditorialItemProvider *)v3 initWithEditorialItemEntryManager:v4 thumbnailCreator:v5 editorialItemCreator:v6];

  return v7;
}

FREditorialItemEntryManager *__cdecl sub_100063364(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class() name:@"editorialLocalStore"];

  v4 = [[FREditorialItemEntryManager alloc] initWithLocalStore:v3];

  return v4;
}

FREditorialItemCreator *__cdecl sub_1000633F0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FREditorialItemCreator alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator];

  v5 = [(FREditorialItemCreator *)v3 initWithThumbnailCreator:v4];

  return v5;
}

FREditorialItemThumbnailCreator *__cdecl sub_100063474(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FREditorialItemThumbnailCreator);

  return v2;
}

FREditorialConfigurationProvider *__cdecl sub_1000634A4(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [FREditorialConfigurationProvider alloc];
  v5 = [v3 appConfigurationManager];
  v6 = [(FREditorialConfigurationProvider *)v4 initWithAppConfigurationManager:v5];

  return v6;
}

id sub_100063544(uint64_t a1)
{
  v2 = [FCKeyValueStore alloc];
  v3 = [*(a1 + 32) feldsparContext];
  v4 = [v3 cloudContext];
  v5 = [v4 contentDirectory];
  v6 = [v2 initWithName:@"EditorialManager" directory:v5 version:1 options:0 classRegistry:0];

  return v6;
}

FRToCEditorialManager *sub_1000635E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = [FRToCEditorialManager alloc];
  v4 = [v3 resolveClass:objc_opt_class()];
  v5 = [*(a1 + 32) feldsparContext];
  v6 = [v5 appActivityMonitor];
  v7 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager];
  v8 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialArticleDownloader"];
  v9 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialTagDownloader"];
  v10 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialConfigurationProvider];
  v11 = [v3 resolveProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator];
  v12 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCANFHelper];

  v13 = [(FRToCEditorialManager *)v15 initWithCloudContext:v4 activityMonitor:v6 editorialItemEntryManager:v7 articleEditorialItemDownloader:v8 tagEditorialItemDownloader:v9 editorialConfigurationProvider:v10 thumbnailCreator:v11 ANFHelper:v12];

  return v13;
}

id FRURLForInternalExtrasBundle()
{
  v0 = FCURLForAppleInternalLibraryBundlesDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"NewsInternalExtras"];
  v2 = [v1 URLByAppendingPathExtension:@"bundle"];

  return v2;
}

id FRURLForLocalInternalExtrasBundle()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 pathForResource:@"NewsInternalExtras" ofType:@"bundle"];
  if (v1)
  {
    v2 = [NSURL fileURLWithPath:v1 isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100063FC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 feedNavigationConfigJSON];
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000758F8();
  }

  v7 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Editorial Manager: AppConfiguration fetched with feed navigation config=%@ error=%@", &v8, 0x16u);
  }

  if (v6)
  {
    [*(a1 + 32) processConfigurationWithJSON:v6 completion:*(a1 + 40)];
  }
}

uint64_t sub_10006457C(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000759D8(a1, v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct, *(a1 + 32));
  }

  return result;
}

FRArticlePrefetchManager *__cdecl sub_100064664(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRArticlePrefetchManager alloc];
  v4 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v5 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v6 = [(FRArticlePrefetchManager *)v3 initWithCloudContext:v4 articleContentPool:v5];

  return v6;
}

void sub_100064994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000649B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSDictionary0__struct);
  }

  return result;
}

void sub_1000649D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = v3;
  FCPerformIfNonNil();
}

void sub_100064A9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100064B70;
  v8[3] = &unk_1000C6490;
  v8[4] = v3;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_100064B70(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v4 = [v25 identifier];
  v5 = [*(a1 + 32) editorialItemEntryManager];
  v6 = [v5 editorialItemsByID];
  v7 = [v25 identifier];
  v8 = [v6 objectForKey:v7];

  v9 = [v25 identifier];
  v10 = [NSString stringWithFormat:@"https://apple.news/%@", v9];

  v11 = +[NSMutableArray array];
  if (v8)
  {
    if (![v8 showBadge])
    {
      goto LABEL_6;
    }

    v12 = [NSNumber numberWithInteger:0];
    [v11 addObject:v12];
  }

  else
  {
    v13 = [NSNumber numberWithInteger:0];
    [v11 addObject:v13];

    v14 = [FREditorialItemEntry alloc];
    v15 = [v25 identifier];
    v16 = [v25 name];
    v17 = [v25 subtitle];
    LOBYTE(v24) = 1;
    v12 = [(FREditorialItemEntry *)v14 initWithEditorialItemID:v15 title:v16 subtitle:v17 subtitleColorString:0 image:0 actionUrlString:v10 lastModifiedDate:0 documentVersion:0 lastSeenDocumentVersion:0 showBadge:v24];

    v18 = [*(a1 + 32) editorialItemEntryManager];
    [v18 addEditorialItem:v12];
  }

LABEL_6:
  v19 = [TSEditorialItem alloc];
  v20 = [v25 name];
  v21 = [v25 subtitle];
  v22 = [NSURL URLWithString:v10];
  v23 = [v19 initWithIdentifier:v4 title:v20 subtitle:v21 subtitleColor:0 attributes:v11 actionURL:v22 thumbnailImage:0 backingTag:v25 headline:0];

  [*(a1 + 40) setObject:v23 forKey:v4];
}

void sub_100065B6C(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:*(a1 + 40) forKeyPath:*(a1 + 48)];

  v3 = [*(a1 + 32) layer];
  [v3 removeAnimationForKey:*(a1 + 48)];

  v4 = *(a1 + 72);
  v5 = [*(a1 + 32) layer];
  [v5 setShouldRasterize:v4];

  v6 = 64;
  if (*(a1 + 72))
  {
    v6 = 56;
  }

  v7 = *(a1 + v6);
  v8 = [*(a1 + 32) layer];
  [v8 setRasterizationScale:v7];

  if ((*(a1 + 72) & 1) == 0)
  {
    v9 = [*(a1 + 32) layer];
    [v9 setFilters:&__NSArray0__struct];
  }
}

unint64_t sub_1000663B4()
{
  result = qword_1000E59E8;
  if (!qword_1000E59E8)
  {
    sub_100066418(&unk_1000E59F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E59E8);
  }

  return result;
}

uint64_t sub_100066418(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100066460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = type metadata accessor for AudioAppIntentHandler();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100066524, 0, 0);
}

uint64_t sub_100066524()
{
  v0[16] = objc_opt_self();
  v0[17] = type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000665CC, v2, v1);
}

uint64_t sub_1000665CC()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = [v1 sharedApplication];

  return _swift_task_switch(sub_100066654, 0, 0);
}

uint64_t sub_100066654()
{
  object = v0[9]._object;
  v2 = String._bridgeToObjectiveC()();
  v0[10]._countAndFlagsBits = [object beginBackgroundTaskWithName:v2 expirationHandler:0];

  v3 = NewsCoreUserDefaults();
  v4 = [v3 stringForKey:FCAudioPlaybackArticleIDSharedPreferenceKey];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = NewsCoreUserDefaults();
  v9 = [v8 integerForKey:FCAudioPlaybackStateSharedPreferenceKey];

  IntentParameter.wrappedValue.getter();
  if (v7)
  {
    if (v5 == v0[1]._countAndFlagsBits && v7 == v0[1]._object)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v9 == 1)
    {
      IntentParameter.wrappedValue.getter();
      v11 = String._bridgeToObjectiveC()();

      FCUpdateSharedAudioPlaybackState();

      AppDependency.wrappedValue.getter();
      AudioAppIntentHandler.pause()();
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_12:
  IntentParameter.wrappedValue.getter();
  v12 = String._bridgeToObjectiveC()();

  FCUpdateSharedAudioPlaybackState();

  AppDependency.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  AudioAppIntentHandler.handleAudioPlayback(for:)(v0[3]);

LABEL_13:
  (*(v0[7]._countAndFlagsBits + 8))(v0[7]._object, v0[6]._object);
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();

  v0[10]._object = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100066930, v14, v13);
}

uint64_t sub_100066930()
{
  v1 = *(v0 + 128);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_1000669B8, 0, 0);
}

uint64_t sub_1000669B8()
{
  v1 = v0[22];
  [v1 endBackgroundTask:v0[20]];

  static IntentResult.result<>()();

  v2 = v0[1];

  return v2();
}

id sub_100066A50()
{
  type metadata accessor for Logger();
  (__chkstk_darwin)();
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v3 = __chkstk_darwin(v2);
  v5 = &v12 - v4;
  __chkstk_darwin(v3);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();
  (*(v1 + 8))(v5, v0);
  result = FRDiagnosticFileListURL();
  if (result)
  {
    v9 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = FCDiagnosticsLog;
    Logger.init(_:)();
    v11 = objc_allocWithZone(type metadata accessor for DiagnosticFileCollector());
    return DiagnosticFileCollector.init(diagnosticDumpDir:diagnosticFileListURL:logger:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BundleSessionDebugDataSource()
{
  result = qword_1000E5B70;
  if (!qword_1000E5B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066D54()
{
  sub_1000073C4(v0 + qword_1000E5B58);

  v1 = v0 + qword_1000E5B68;

  return sub_1000073C4(v1);
}

uint64_t sub_100066DA4()
{
  v0 = DebugDataSource.deinit();
  v1 = qword_1000E5B58;

  sub_1000073C4(v2 + v1);

  sub_1000073C4(v0 + qword_1000E5B68);

  return _swift_deallocClassInstance(v0, 104, 7);
}

id sub_100066E40(SEL *a1)
{
  result = [v1 bridgedAppDelegate];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    _bridgeAnyObjectToAny(_:)();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066EC8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100066F1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100066EC8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100066F7C()
{
  sub_1000671E4(v0 + OBJC_IVAR____TtC4News32BundleSubscriptionDebugViewModel__initialPurchaseTimestamp);
  sub_1000671E4(v0 + OBJC_IVAR____TtC4News32BundleSubscriptionDebugViewModel__newSubscriptionDetectionTimestamp);
  swift_unknownObjectRelease();
  sub_1000073C4(v0 + OBJC_IVAR____TtC4News32BundleSubscriptionDebugViewModel_bundleSubscriptionDetectionManager);
  v1 = OBJC_IVAR____TtC4News32BundleSubscriptionDebugViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for BundleSubscriptionDebugViewModel()
{
  result = qword_1000E5CE0;
  if (!qword_1000E5CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000670AC()
{
  sub_10006718C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10006718C()
{
  if (!qword_1000E5CF0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E5CF0);
    }
  }
}

uint64_t sub_1000671E4(uint64_t a1)
{
  v2 = sub_100066EC8(&unk_1000E5DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100067250()
{
  result = qword_1000E5E00;
  if (!qword_1000E5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5E00);
  }

  return result;
}

unint64_t sub_1000672A8()
{
  result = qword_1000E5E08;
  if (!qword_1000E5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5E08);
  }

  return result;
}

unint64_t sub_100067300()
{
  result = qword_1000E5E10;
  if (!qword_1000E5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5E10);
  }

  return result;
}

unint64_t sub_100067358()
{
  result = qword_1000E5E18;
  if (!qword_1000E5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5E18);
  }

  return result;
}

uint64_t sub_100067418()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100067EFC(v6, qword_1000E6888);
  sub_100067EC4(v6, qword_1000E6888);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000675F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000E59E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100067EC4(v2, qword_1000E6888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000676B8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100067764;

  return sub_100066460(a1, v5, v4);
}

uint64_t sub_100067764()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100067858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006795C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100067880(uint64_t a1)
{
  v2 = sub_1000672A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_1000678BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000678C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100067910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006795C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100066EC8(&qword_1000E5E20);
  __chkstk_darwin(v2 - 8);
  v26 = v23 - v3;
  v4 = sub_100066EC8(&qword_1000E5E28);
  __chkstk_darwin(v4 - 8);
  v25 = v23 - v5;
  v6 = sub_100066EC8(&qword_1000E5E30);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_100066EC8(&qword_1000E5E38);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v30 = 0uLL;
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  v21 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100066EC8(&qword_1000E5E40);
  type metadata accessor for AppDependencyManager();
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

uint64_t sub_100067EC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100067EFC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100067F60()
{
  sub_10006819C(v0 + OBJC_IVAR____TtC4News27BundleSessionDebugViewModel__session);
  sub_1000073C4(v0 + OBJC_IVAR____TtC4News27BundleSessionDebugViewModel_bundleSessionManager);
  v1 = OBJC_IVAR____TtC4News27BundleSessionDebugViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for BundleSessionDebugViewModel()
{
  result = qword_1000E5E88;
  if (!qword_1000E5E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068070()
{
  sub_100068144();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100068144()
{
  if (!qword_1000E5E98)
  {
    type metadata accessor for BundleSession();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E5E98);
    }
  }
}

uint64_t sub_10006819C(uint64_t a1)
{
  v2 = sub_100066EC8(&qword_1000E5F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100068228()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "cloudContext", v6, 2u);
}

void sub_1000682EC()
{
  v0 = [[NSString alloc] initWithFormat:@"Case not implemented"];
  v1 = 136315906;
  v2 = "[FRAnalyticsController currentSession]";
  v3 = 2080;
  v4 = "FRAnalyticsController.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000683C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "block", v6, 2u);
}

void sub_100068484()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.lastAppOpenDate", v6, 2u);
}

void sub_100068548()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.lastAppOpenDate", v6, 2u);
}

void sub_10006860C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "userIDDeterminationGroup", v6, 2u);
}

void sub_1000686D0()
{
  v0 = [[NSString alloc] initWithFormat:@"ending a session when none is in progress"];
  v1 = 136315906;
  v2 = "[FRAnalyticsController endSessionForReason:byStartingNewSession:resetUserID:forSceneID:]";
  v3 = 2080;
  v4 = "FRAnalyticsController.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000687A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Expecting a resource identifier for the embed configuration"];
  v1 = 136315906;
  v2 = "[FREmbedConfigurationOperation performOperation]_block_invoke";
  v3 = 2080;
  v4 = "FREmbedConfigurationOperation.m";
  v5 = 1024;
  v6 = 40;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_100068884()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appActivityMonitor", v6, 2u);
}

void sub_100068948()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URL", v6, 2u);
}

void sub_100068A0C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URL", v6, 2u);
}

void sub_100068AD0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[URL nss_isNewsURL]", v6, 2u);
}

void sub_100068B94()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "analyticsReferralFactory"];
  *buf = 136315906;
  v2 = "[FRUnrecognizedURLRouter initWithAnalyticsReferralFactory:redirectService:]";
  v3 = 2080;
  v4 = "FRUnrecognizedURLRouter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100068C74()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "redirectService"];
  *buf = 136315906;
  v2 = "[FRUnrecognizedURLRouter initWithAnalyticsReferralFactory:redirectService:]";
  v3 = 2080;
  v4 = "FRUnrecognizedURLRouter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100068D68()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid condensed font given"];
  v1 = 136315906;
  v2 = "+[UIFont(FRAdditions) fr_fontWithName:size:]";
  v3 = 2080;
  v4 = "UIFont+FRAdditions.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_100068E3C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "font", v6, 2u);
}

void sub_100068F00()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "font", v6, 2u);
}

void sub_100068FC4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "font", v6, 2u);
}

void sub_100069088()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "map[UIContentSizeCategoryLarge]", v6, 2u);
}

void sub_10006914C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid dynamic type mapping"];
  v1 = 136315906;
  v2 = "+[UIFont(FRAdditions) fr_appropriateValueForCurrentContentSizeCategoryUsingMap:]";
  v3 = 2080;
  v4 = "UIFont+FRAdditions.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_100069220()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "referralItem", v6, 2u);
}

void sub_1000692E4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sharedDirectoryFileURL", v6, 2u);
}

void sub_1000693A8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceFilePath", v6, 2u);
}

void sub_10006946C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_100069530()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemClass", v6, 2u);
}

void sub_1000695F4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryValue", v6, 2u);
}

void sub_1000696B8()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires configurable values"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069770()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires a subscription controller"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069828()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires a tag controller"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000698E0()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires user info"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069998()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires a tag ranker"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069A50()
{
  v0 = [[NSString alloc] initWithFormat:@"auto-favorites operation requires an aggregate store"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069B08()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_100069BD0()
{
  v0 = [[NSString alloc] initWithFormat:@"We can't process signals without a whitelist"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100069C8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shortOperationDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ failed to process signals because there's no whitelist", &v5, 0xCu);
}

void sub_100069D34()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "defaultCandidates", v6, 2u);
}

void sub_100069E04()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "internalSignalAutoFavoriteCandidates", v6, 2u);
}

void sub_100069ED4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "existingInternalSignalAutoFavoriteCandidates", v6, 2u);
}

void sub_100069FA4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "internalSignalGroupableFavoriteCandidates", v6, 2u);
}

void sub_10006A074()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "existingInternalSignalGroupableFavoriteCandidates", v6, 2u);
}

void sub_10006A144()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "portraitAutoFavoriteCandidates", v6, 2u);
}

void sub_10006A214()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appUsageAutoFavoriteCandidates", v6, 2u);
}

void sub_10006A2E4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "safariAutoFavoriteCandidates", v6, 2u);
}

void sub_10006A3B4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "locationAutoFavoriteCandidates", v6, 2u);
}

void sub_10006A484()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_10006A548()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_10006A680()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appSignals", v6, 2u);
}

void sub_10006A744()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "safariSignals", v6, 2u);
}

void sub_10006A808()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "unwrappedCompletion", v6, 2u);
}

void sub_10006A8CC()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "urlMapping", v6, 2u);
}

void sub_10006A990()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleIDMapping", v6, 2u);
}

void sub_10006AA54()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "favorabilityScores", v6, 2u);
}

void sub_10006AB50()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_10006AC14()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_10006ACD8()
{
  v0 = [[NSString alloc] initWithFormat:@"This condition should never happen as we are using siri preferences to manage this now"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006AD90(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found a favorability multiplier of %@ for tag %@", &v3, 0x16u);
}

void sub_10006AE18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No favorability multiplier specified for %@", &v2, 0xCu);
}

void sub_10006AE90()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID", v6, 2u);
}

void sub_10006AF54()
{
  sub_100018E8C(__stack_chk_guard);
  sub_100009C40();
  sub_100009CA0(&_mh_execute_header, v0, v1, "Error in submitting portrait feedback for explicit engagement: %{public}@ with articleID: %{public}@ and topicIDs: %{public}@");
}

void sub_10006AFBC()
{
  sub_100018E8C(__stack_chk_guard);
  sub_100009C40();
  sub_100009CA0(&_mh_execute_header, v0, v1, "Error in submitting portrait feedback for explicit rejection: %{public}@ with articleID: %{public}@ and topicIDs: %{public}@");
}

void sub_10006B024()
{
  sub_100018E8C(__stack_chk_guard);
  sub_100009C40();
  sub_100009CA0(&_mh_execute_header, v0, v1, "Error in submitting portrait feedback for implicit engagement: %{public}@ with articleID: %{public}@ and topicIDs: %{public}@");
}

void sub_10006B08C()
{
  sub_100018E8C(__stack_chk_guard);
  sub_100009C40();
  sub_100009CA0(&_mh_execute_header, v0, v1, "Error in submitting portrait feedback for implicit rejection: %{public}@ with articleID: %{public}@ and topicIDs: %{public}@");
}

void sub_10006B0F4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "application"];
  *buf = 136315906;
  v2 = "[FRNewsBridgeDeeplinkRouter initWithApplication:bridgedAppDelegate:]";
  v3 = 2080;
  v4 = "FRNewsBridgeDeeplinkRouter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006B1D4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
  *buf = 136315906;
  v2 = "[FRNewsBridgeDeeplinkRouter handleOpenURL:options:analyticsReferral:]";
  v3 = 2080;
  v4 = "FRNewsBridgeDeeplinkRouter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006B2B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "thumbnailCreator != nil"];
  *buf = 136315906;
  v2 = "[FREditorialItemCreator initWithThumbnailCreator:]";
  v3 = 2080;
  v4 = "FREditorialItemCreator.m";
  v5 = 1024;
  v6 = 32;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006B3A0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_10006B464()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "flintDocumentURLAssetHandlesByRemoteURL", v6, 2u);
}

void sub_10006B528()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_10006B5EC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "encodableElement", v6, 2u);
}

void sub_10006B6B0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_10006B774()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_10006B838()
{
  sub_10001E120();
  *v1 = 136315906;
  sub_10001E110(v1, "[UIImage(FRAdditions) fr_imageAspectFitToSize:targetScale:croppedToCornerRadius:withMargin:withBackgroundColor:borderColor:]");
  sub_100009CC0(v2, "UIImage+FRAdditions.m");
  sub_100009C60(v3, v4, 236);
  sub_100009700(&_mh_execute_header, &_os_log_default, v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v6);
}

void sub_10006B8A4()
{
  sub_10001E120();
  *v1 = 136315906;
  sub_10001E110(v1, "[UIImage(FRAdditions) fr_bannerImageWithLogo:]");
  sub_100009CC0(v2, "UIImage+FRAdditions.m");
  sub_100009C60(v3, v4, 420);
  sub_100009700(&_mh_execute_header, &_os_log_default, v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v6);
}

void sub_10006B910(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "*** error: maskImage must be backed by a CGImage: %{public}@", &v2, 0xCu);
}

void sub_10006B988()
{
  sub_10001E120();
  *v1 = 136315906;
  sub_10001E110(v1, "[UIImage(FRAdditions) applyBlurWithRadius:tintColor:saturationDeltaFactor:maskImage:targetSize:screenScale:opaque:logoRect:logoImage:logoText:cornerRadius:punchThroughBanner:allowAldenTint:]");
  sub_100009CC0(v2, "UIImage+FRAdditions.m");
  sub_100009C60(v3, v4, 717);
  sub_100009700(&_mh_execute_header, &_os_log_default, v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v6);
}

void sub_10006B9F4()
{
  sub_10001E120();
  *v1 = 136315906;
  sub_10001E110(v1, "[UIImage(FRAdditions) applyBlurWithRadius:tintColor:saturationDeltaFactor:maskImage:targetSize:screenScale:opaque:logoRect:logoImage:logoText:cornerRadius:punchThroughBanner:allowAldenTint:]");
  sub_100009CC0(v2, "UIImage+FRAdditions.m");
  sub_100009C60(v3, v4, 852);
  sub_100009700(&_mh_execute_header, &_os_log_default, v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v6);
}

void sub_10006BA60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "*** error: image must be backed by a CGImage: %{public}@", &v2, 0xCu);
}

void sub_10006BAD8(void *a1, void *a2)
{
  v3 = a1;
  [a2 size];
  v5 = v4;
  [a2 size];
  v7 = 134218498;
  v8 = v5;
  v9 = 2048;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "*** error: invalid size: (%.2f x %.2f). Both dimensions must be >= 1: %{public}@", &v7, 0x20u);
}

void sub_10006BBF4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "applicationProxy", v6, 2u);
}

void sub_10006BCB8(uint64_t a1)
{
  v1 = [[NSString alloc] initWithFormat:@"Can't get version from LSApplicationProxy (current value: %@)"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v2, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v3, v4, v5, v6, a1, v8, 2u);
}

void sub_10006BD8C(uint64_t a1)
{
  v1 = [[NSString alloc] initWithFormat:@"Operating system version string is missing or not valid (current value: %@)"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v2, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v3, v4, v5, v6, a1, v8, 2u);
}

void sub_10006BE4C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "sizeCategory.length > 0"];
  *buf = 136315906;
  v2 = "[FRDynamicTypeValueScaler scaledValueForSizeCategory:]";
  v3 = 2080;
  v4 = "FRDynamicTypeValueScaler.m";
  v5 = 1024;
  v6 = 106;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006BF38()
{
  v0 = [[NSString alloc] initWithFormat:@"BOGUS: Dynamic type interpolation code could not determine a valid value. Investigate!"];
  v1 = 136315906;
  v2 = "[FRDynamicTypeValueScaler scaledValueForSizeCategory:]";
  v3 = 2080;
  v4 = "FRDynamicTypeValueScaler.m";
  v5 = 1024;
  v6 = 148;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006C05C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR: Failed to fetch tags for the Notifications Manager with error: %{public}@", &v2, 0xCu);
}

void sub_10006C0E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Failed to clear personalization debug data with error %@", &v5, 0xCu);
}

void sub_10006C300()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "cloudContext", v6, 2u);
}

void sub_10006C3C4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleIDMappingResource", v6, 2u);
}

void sub_10006C488()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "urlMappingResource", v6, 2u);
}

void sub_10006C54C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "whitelistResource", v6, 2u);
}

void sub_10006C610()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "favorabilityResource", v6, 2u);
}

void sub_10006C6D4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleIDMappingResourceFileURL", v6, 2u);
}

void sub_10006C798()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "urlMappingResourceFileURL", v6, 2u);
}

void sub_10006C85C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "whitelistResourceFileURL", v6, 2u);
}

void sub_10006C920()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "favorabilityResourceFileURL", v6, 2u);
}

void sub_10006C9E4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleIDMappingResourceData", v6, 2u);
}

void sub_10006CAA8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "urlMappingResourceData", v6, 2u);
}

void sub_10006CB6C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "whitelistResourceData", v6, 2u);
}

void sub_10006CC30()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "favorabilityResourceData", v6, 2u);
}

void sub_10006CCF4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "resourceIdentifier", v6, 2u);
}

void sub_10006CDB8()
{
  v0 = [[NSString alloc] initWithFormat:@"This operation must not be performed on the main thread."];
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10006CE88(uint64_t a1)
{
  v2 = [NSString alloc];
  v9 = *(a1 + 32);
  v3 = [v2 initWithFormat:@"Found a subscription with no tagID: %@"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v4, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v5, v6, v7, v8, v9, v10, 2u);
}

void sub_10006CF4C()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagAdditionError", v6, 2u);
}

void sub_10006D010()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagToRemove", v6, 2u);
}

void sub_10006D0D4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagToAdd", v6, 2u);
}

void sub_10006D198()
{
  v0 = [[NSString alloc] initWithFormat:@"Asked for origin of a TagID I didn't ask to subscribe to"];
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10006D268(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "remove personalization store error: %{public}@", &v5, 0xCu);
}

void sub_10006D310()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "versionHelpers"];
  *buf = 136315906;
  v2 = "[FRApplicationUpdateNotifier initWithVersionHelpers:appActivityMonitor:]";
  v3 = 2080;
  v4 = "FRApplicationUpdateNotifier.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006D3F0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "appActivityMonitor"];
  *buf = 136315906;
  v2 = "[FRApplicationUpdateNotifier initWithVersionHelpers:appActivityMonitor:]";
  v3 = 2080;
  v4 = "FRApplicationUpdateNotifier.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006D4D0()
{
  v0 = [[NSString alloc] initWithFormat:@"The notifier needs a view controller to present the alert"];
  v1 = 136315906;
  v2 = "[FRApplicationUpdateNotifier showAppUpdateAlert]";
  v3 = 2080;
  v4 = "FRApplicationUpdateNotifier.m";
  v5 = 1024;
  v6 = 106;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006D5B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryItemName", v6, 2u);
}

void sub_10006D678()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryItemName", v6, 2u);
}

void sub_10006D740()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID != nil", v6, 2u);
}

void sub_10006D804()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID.length != 0", v6, 2u);
}

void sub_10006D8C8()
{
  v0 = [[NSString alloc] initWithFormat:@"tag IDs with slashes won't be handled properly"];
  v1 = 136315906;
  v2 = "+[NSURL(FRAdditions) _urlForTagID:internal:]";
  v3 = 2080;
  v4 = "NSURL+FRAdditions.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006D99C()
{
  v0 = [[NSString alloc] initWithFormat:@"Path components count has to be atleast two"];
  v1 = 136315906;
  v2 = "[NSURL(FRAdditions) _caseInsensitiveCompareWithFirstPathComponent:]";
  v3 = 2080;
  v4 = "NSURL+FRAdditions.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006DA70()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "pathComponent", v6, 2u);
}

void sub_10006DB34()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID != nil", v6, 2u);
}

void sub_10006DBF8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID.length != 0", v6, 2u);
}

void sub_10006DCBC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "tagRanker"];
  *buf = 136315906;
  v2 = "[FRSubscribedTagRanker initWithTagRanker:]";
  v3 = 2080;
  v4 = "FRSubscribedTagRanker.m";
  v5 = 1024;
  v6 = 26;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006DDA8()
{
  v0 = [[NSString alloc] initWithFormat:@"can't onboard user without a cloud context"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006DE60()
{
  v0 = [[NSString alloc] initWithFormat:@"can't onboard user without an analytics controller"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006DF18()
{
  v0 = [[NSString alloc] initWithFormat:@"can't onboard user without a presubscribe service"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006DFD0()
{
  v0 = [[NSString alloc] initWithFormat:@"expected inequality between %s and %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "index", "NSNotFound", 2u);
}

void sub_10006E09C()
{
  v0 = [[NSString alloc] initWithFormat:@"expected equality between %s and %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "alphabeticalCount", "self.recentlyOpenedTags.count", 2u);
}

void sub_10006E168()
{
  v0 = [[NSString alloc] initWithFormat:@"expected equality between %s and %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "alphabeticalCount", "self.mostFrequentlyVisitedTags.count", 2u);
}

void sub_10006E234()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
  *buf = 136315906;
  v2 = "[FRAppDelegate(FRAdditions) _extractWidgetEngagementFromReferralURL:]";
  v3 = 2080;
  v4 = "FRAppDelegate+FRAdditions.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006E314()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "[URL nss_isNewsURL]"];
  *buf = 136315906;
  v2 = "[FRAppDelegate(FRAdditions) _extractWidgetEngagementFromReferralURL:]";
  v3 = 2080;
  v4 = "FRAppDelegate+FRAdditions.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006E3F4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "resolver", v6, 2u);
}

void sub_10006E4B8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfigManager", v6, 2u);
}

void sub_10006E57C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "privateDataContext", v6, 2u);
}

void sub_10006E640()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "subscriptionController", v6, 2u);
}

void sub_10006E704()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "privateDataUpdateCoordinator", v6, 2u);
}

void sub_10006E7C8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todayAgent", v6, 2u);
}

void sub_10006E88C()
{
  v0 = [[NSString alloc] initWithFormat:@"fetchables should only be added from the main thread "];
  v1 = 136315906;
  v2 = "[FRBackgroundFetchManager addFetchable:]";
  v3 = 2080;
  v4 = "FRBackgroundFetchManager.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: AddFetchableOffMain) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006E960()
{
  v0 = [[NSString alloc] initWithFormat:@"fetchables should be added before background fetch begins"];
  v1 = 136315906;
  v2 = "[FRBackgroundFetchManager addFetchable:]";
  v3 = 2080;
  v4 = "FRBackgroundFetchManager.m";
  v5 = 1024;
  sub_1000096DC();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: AddFetchableWhileEnumerating) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10006EA34()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "feldsparContext"];
  *buf = 136315906;
  v2 = "[FRPrefetchedArticlesService initWithFeldsparContext:assetManager:]";
  v3 = 2080;
  v4 = "FRPrefetchedArticlesService.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006EB14()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "assetManager"];
  *buf = 136315906;
  v2 = "[FRPrefetchedArticlesService initWithFeldsparContext:assetManager:]";
  v3 = 2080;
  v4 = "FRPrefetchedArticlesService.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006EBF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 articleID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to unpack referred article headline, articleID=%{public}@", &v5, 0xCu);
}

void sub_10006EC9C(uint64_t a1)
{
  v1 = [[NSString alloc] initWithFormat:@"%p is already an observer"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v2, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v3, v4, v5, v6, a1, v8, 2u);
}

void sub_10006ED5C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "observer != nil", v6, 2u);
}

void sub_10006EE20()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "observer != nil", v6, 2u);
}

void sub_10006EEE4()
{
  v0 = [[NSString alloc] initWithFormat:@"We only support one observer with this guarantee of being called last at this time"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006EF9C()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot be notified of app launch twice"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F054()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F10C()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F1C4()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F27C()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F334()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F3EC()
{
  v0 = [[NSString alloc] initWithFormat:@"cannot react to other application lifecycle events without first being notified of app launch"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10006F4A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialItemEntryManager", v6, 2u);
}

void sub_10006F568()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "thumbnailCreator", v6, 2u);
}

void sub_10006F62C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialItemCreator", v6, 2u);
}

void sub_10006F6F0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Editorial Item Provider: ERROR: Document version is missing for editorial articleID: %{public}@, no badge", &v3, 0xCu);
}

void sub_10006F76C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsReferralFactory", v6, 2u);
}

void sub_10006F830()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "redirectService", v6, 2u);
}

void sub_10006F8F4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "routerManager", v6, 2u);
}

void sub_10006F9B8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "bridgedAppDelegate"];
  *buf = 136315906;
  v2 = "[FRRoutingAssembly initWithFeldsparContext:bridgedAppDelegate:window:]";
  v3 = 2080;
  v4 = "FRRoutingAssembly.m";
  v5 = 1024;
  v6 = 35;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006FAA4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to schedule a local notification with error : %{public}@", &v2, 0xCu);
}

void sub_10006FB1C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "window"];
  *buf = 136315906;
  v2 = "[FRFeedSubscriptionAssembly initWithWindow:]";
  v3 = 2080;
  v4 = "FRFeedSubscriptionAssembly.m";
  v5 = 1024;
  v6 = 31;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10006FC08()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "cloudContext != nil", v6, 2u);
}

void sub_10006FCCC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialItemEntryManager != nil", v6, 2u);
}

void sub_10006FD90()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleEditorialItemDownloader != nil", v6, 2u);
}

void sub_10006FE54()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagEditorialItemDownloader != nil", v6, 2u);
}

void sub_10006FF18()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialConfigurationProvider != nil", v6, 2u);
}

void sub_10006FFDC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "thumbnailCreator != nil", v6, 2u);
}

void sub_1000700A0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "ANFHelper != nil", v6, 2u);
}

void sub_100070164(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 error];
  sub_100009724(&_mh_execute_header, v5, v6, "ToC Editorial Manager: Error while fetching editorial item headline=%@", v7, v8, v9, v10, 2u);
}

void sub_1000701FC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID", v6, 2u);
}

void sub_1000702C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_100070384(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ToC Editorial Manager: Error while parsing feed navigation configuration error=%@", &v3, 0xCu);
}

void sub_100070400(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = 134218240;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error marking %lu IDs saved and %lu IDs unsaved…", &v4, 0x16u);
}

void sub_10007058C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "fetchOp"];
  *buf = 136315906;
  v2 = "[FRGizmoSyncManager _syncSeenIdentifiers:withCompletion:]_block_invoke";
  v3 = 2080;
  v4 = "FRGizmoSyncManager.m";
  v5 = 1024;
  v6 = 223;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000708BC()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "resourceManager"];
  *buf = 136315906;
  v2 = "[FRFlintDataProvider initWithANFContent:headline:resourceManager:cloudContext:embedConfigurationManager:]";
  v3 = 2080;
  v4 = "FRFlintDataProvider.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10007099C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 134218242;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%p failed to download Flint JSON with error: %{public}@", &v4, 0x16u);
}

void sub_100070A28()
{
  v0 = [[NSString alloc] initWithFormat:@"must have a context to fetch resources"];
  v1 = 136315906;
  v2 = "[FRFlintDataProvider _loadAssetURLsWithCompletionBlock:]";
  v3 = 2080;
  v4 = "FRFlintDataProvider.m";
  v5 = 1024;
  v6 = 464;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_100070B08(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%p will not load asset URLs because there's no context", &v2, 0xCu);
}

void sub_100070B80()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "imageRequest"];
  *buf = 136315906;
  v2 = "[FRFlintDataProvider loadImagesForImageRequest:completionBlock:]";
  v3 = 2080;
  v4 = "FRFlintDataProvider.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100070C64()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
  *buf = 136315906;
  v2 = "[FREnableNotificationsAlertPresenter presentEnableNotificationsAlertWithEnableNotificationsContext:channelID:channelName:window:completionBlock:]";
  v3 = 2080;
  v4 = "FREnableNotificationsAlertPresenter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100070D44()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "channelName"];
  *buf = 136315906;
  v2 = "[FREnableNotificationsAlertPresenter presentEnableNotificationsAlertWithEnableNotificationsContext:channelID:channelName:window:completionBlock:]";
  v3 = 2080;
  v4 = "FREnableNotificationsAlertPresenter.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100070E4C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "rowIndexes"];
  *buf = 136315906;
  v2 = "+[NSIndexPath(FRAdditions) fr_indexPathsForRows:inSection:]";
  v3 = 2080;
  v4 = "NSIndexPath+FRAdditions.m";
  v5 = 1024;
  v6 = 34;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100070F38()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "_resolver"];
  *buf = 136315906;
  v2 = "[FRAppDelegate resolver]";
  v3 = 2080;
  v4 = "FRAppDelegate.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10007110C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "self.backgroundFetchManager"];
  *buf = 136315906;
  v2 = "[FRAppDelegate _configureBackgroundFetch]";
  v3 = 2080;
  v4 = "FRAppDelegate.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000711EC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "dataProviderFactory", v6, 2u);
}

void sub_1000712B0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialItemEntryManager", v6, 2u);
}

void sub_100071374()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleEditorialItemProvider", v6, 2u);
}

void sub_100071438()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "thumbnailCreator", v6, 2u);
}

void sub_1000714FC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "editorialItemCreator", v6, 2u);
}

void sub_1000715C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 articleID];
  v6 = *(a1 + 40);
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ToC Editorial Manager: Error while loading articleID: %{public}@ with error: %{error}@", &v7, 0x16u);
}

void sub_100071684(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 articleID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ToC Editorial Manager: Content is nil after downloading articleID: %{public}@", &v5, 0xCu);
}

void sub_10007172C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "feldsparContext"];
  *buf = 136315906;
  v2 = "[FRFeldsparContextAssembly initWithContext:privateDataUpdateCoordinator:]";
  v3 = 2080;
  v4 = "FRFeldsparContextAssembly.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10007180C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "privateDataUpdateCoordinator"];
  *buf = 136315906;
  v2 = "[FRFeldsparContextAssembly initWithContext:privateDataUpdateCoordinator:]";
  v3 = 2080;
  v4 = "FRFeldsparContextAssembly.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100071914()
{
  v0 = [[NSString alloc] initWithFormat:@"Unknown header type is not supported."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000719CC()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "font"];
  *buf = 136315906;
  v2 = "+[NSString(FRFeedAdditions) fr_fontForFeedHeaderType:]";
  v3 = 2080;
  v4 = "UIFont+FRFeedAdditions.m";
  v5 = 1024;
  v6 = 110;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100071AB8()
{
  v0 = [[NSString alloc] initWithFormat:@"Unknown not handled."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100071B70()
{
  v0 = [[NSString alloc] initWithFormat:@"Unknown not handled."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100071C28()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizer", v6, 2u);
}

void sub_100071CEC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "purchaseController", v6, 2u);
}

void sub_100071DB0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "subscriptionController", v6, 2u);
}

void sub_100071E74()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "localNewsChannelService", v6, 2u);
}

void sub_100071F38()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "personalizationDataGenerator", v6, 2u);
}

void sub_100071FFC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "privateDataContext", v6, 2u);
}

void sub_1000720C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "userEmbeddingGenerator", v6, 2u);
}

void sub_100072184()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "userInfo"];
  *buf = 136315906;
  v2 = "[FRUserInfoUserIDProvider initWithUserInfo:]";
  v3 = 2080;
  v4 = "FRUserInfoUserIDProvider.m";
  v5 = 1024;
  v6 = 28;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100072270()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "consumptionBlock", v6, 2u);
}

void sub_100072334()
{
  v0 = [[NSString alloc] initWithFormat:@"must not have consumed destructive"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000723EC()
{
  v0 = [[NSString alloc] initWithFormat:@"must not have consumed non-destructive"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000724A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "consumptionBlock", v6, 2u);
}

void sub_100072568()
{
  v0 = [[NSString alloc] initWithFormat:@"must have consumed destructive"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100072620()
{
  v0 = [[NSString alloc] initWithFormat:@"must not have consumed non-destructive"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000726D8()
{
  v0 = [[NSString alloc] initWithFormat:@"must have consumed destructive and non-destructive"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100072790()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "test", v6, 2u);
}

void sub_100072854()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "consumptionBlock", v6, 2u);
}

void sub_100072918()
{
  v0 = [[NSString alloc] initWithFormat:@"Editorial Item entry must have an editorial item ID"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000729D0()
{
  v0 = [[NSString alloc] initWithFormat:@"Editorial Item entry must have an entryID"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100072A88()
{
  v0 = [[NSString alloc] initWithFormat:@"Editorial Item entry must have an entryID"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100072B40(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
}

void sub_100072BD0()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100072C98()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100072D5C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100072E20()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100072EE4()
{
  v0 = [[NSString alloc] initWithFormat:@"Failed to unregister font while reference count was 0"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100072F9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "_decreaseReferenceCountForFontWithFileURL %{public}@", &v5, 0xCu);
}

void sub_100073044()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100073108()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_1000731CC()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100073290()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "*error", v6, 2u);
}

void sub_100073354()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fontFileURL", v6, 2u);
}

void sub_100073418()
{
  v0 = [[NSString alloc] initWithFormat:@"Could not create, or found to many, font descriptors for font file"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000734D0()
{
  v0 = [[NSString alloc] initWithFormat:@"Attribute returned by font descriptor is not a CFStringRef"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000735B0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "generator"];
  *buf = 136315906;
  v2 = "[FRTimeAndCountAwareLimitedPersonalizationDataGenerator initWithGenerator:configurationManager:]";
  v3 = 2080;
  v4 = "FRLimitedPersonalizationDataGenerator.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100073690()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
  *buf = 136315906;
  v2 = "[FRTimeAndCountAwareLimitedPersonalizationDataGenerator initWithGenerator:configurationManager:]";
  v3 = 2080;
  v4 = "FRLimitedPersonalizationDataGenerator.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100073770(uint64_t *a1, __CFError **a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a3;
  v6 = 138412546;
  v7 = v3;
  v8 = 2048;
  Code = CFErrorGetCode(v4);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: Couldn't load image at path %@ - %ld", &v6, 0x16u);
}

void sub_100073824(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to delete cached image.", buf, 2u);
}

void sub_100073864(__CFError **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = 134217984;
  Code = CFErrorGetCode(v2);
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error writing image to disk: %ld", &v4, 0xCu);
}

void sub_100073900()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "error", v6, 2u);
}

void sub_1000739C4()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "error", v6, 2u);
}

void sub_100073A88()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "error", v6, 2u);
}

void sub_100073B4C()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "error", v6, 2u);
}

void sub_100073C10()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "privateDataActionProvider"];
  *buf = 136315906;
  v2 = "[FRDestructiveDataMigrationHandler initWithPrivateDataActionProvider:defaultsDataDestructionItems:]";
  v3 = 2080;
  v4 = "FRDestructiveDataMigrationHandler.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100073CF0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "defaultsDataDestructionItems"];
  *buf = 136315906;
  v2 = "[FRDestructiveDataMigrationHandler initWithPrivateDataActionProvider:defaultsDataDestructionItems:]";
  v3 = 2080;
  v4 = "FRDestructiveDataMigrationHandler.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100073DD0()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}

void sub_100073E94()
{
  v0 = [[NSString alloc] initWithFormat:@"Cannot be zero capacity"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100073F4C()
{
  v0 = [[NSString alloc] initWithFormat:@"Initializing FRRingBuffer with a dictionay with no values"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100074004()
{
  v0 = [[NSString alloc] initWithFormat:@"Initializing FRRingBuffer with a dictionay with no position"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000740BC()
{
  v0 = [[NSString alloc] initWithFormat:@"Initializing FRRingBuffer with a dictionay with no min"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100074174()
{
  v0 = [[NSString alloc] initWithFormat:@"Initializing FRRingBuffer with a dictionay with no max"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10007422C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline != nil", v6, 2u);
}

void sub_1000742F0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline != nil", v6, 2u);
}

void sub_1000743B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID != nil", v6, 2u);
}

void sub_100074478()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline != nil", v6, 2u);
}

void sub_10007453C()
{
  v0 = [[NSString alloc] initWithFormat:@"imbalanced calls to push/pop prefetch suspended"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000745F4()
{
  v0 = [[NSString alloc] initWithFormat:@"unsupported prefetch component for Flint articles"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000746AC()
{
  v0 = [[NSString alloc] initWithFormat:@"unsupported prefetch component for web articles"];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100017954(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100074778()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[CSSearchableIndex defaultSearchableIndex].indexDelegate", v6, 2u);
}

void sub_10007483C()
{
  v0 = [[NSString alloc] initWithFormat:@"File is not a directory."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1000748FC()
{
  v1 = [NSString alloc];
  v2 = [sub_100061960() description];
  v3 = [v0 initWithFormat:@"Couldn't remove the spotlight file. %@"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v4, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v5, v6, v7, v8, v2, v9, 2u);
}

void sub_1000749D4()
{
  v0 = [[NSString alloc] initWithFormat:@"Problem making spotlight directory."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100074B10()
{
  v0 = [[NSString alloc] initWithFormat:@"Could not exclude spotlight thumbnails from backup."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100074BD0(void *a1)
{
  [a1 lastPathComponent];
  objc_claimAutoreleasedReturnValue();
  [sub_100061960() code];
  sub_10006196C();
  sub_100009718();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100074C78()
{
  sub_10006193C();
  sub_100009718();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100074CB4()
{
  sub_10006193C();
  sub_100009718();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100074CF0()
{
  sub_10006193C();
  sub_100009718();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100074D2C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Deleting items from CoreSpotlight %@", &v3, 0xCu);
}

void sub_100074DA8()
{
  sub_10006193C();
  sub_100009718();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100074DE4(void *a1)
{
  [a1 code];
  v1 = [sub_100061960() description];
  sub_100061948();
  sub_100009718();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100074E80()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_100074F44()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID", v6, 2u);
}

void sub_100075008()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID", v6, 2u);
}

void sub_1000750CC()
{
  v0 = [[NSString alloc] initWithFormat:@"This operation must not be performed on the main thread."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10007518C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "thumbnail", v6, 2u);
}

void sub_100075250()
{
  v0 = [[NSString alloc] initWithFormat:@"No file path specified."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100075310()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_1000753D4(void *a1)
{
  [a1 code];
  v1 = [sub_100061960() description];
  sub_100061948();
  sub_100009718();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100075470()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_10000C2E0();
  sub_1000096B0();
  sub_10000969C();
  sub_1000096C0(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID", v6, 2u);
}

void sub_100075534()
{
  v0 = [[NSString alloc] initWithFormat:@"This operation must not be performed on the main thread."];
  sub_100009C90();
  sub_1000096F0();
  sub_1000096DC();
  sub_100009718();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1000755F4(uint64_t a1, void *a2)
{
  [a2 code];
  v3 = [a2 description];
  sub_10006196C();
  sub_100009718();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1000756B4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to restore cache snapshot: %{public}@", &v2, 0xCu);
}

void sub_10007572C()
{
  v0 = [[NSString alloc] initWithFormat:@"Override editorial data must have an identifier"];
  v1 = 136315906;
  v2 = "[FREditorialOverrideItem initWithIdentifier:title:subtitle:subtitleColorString:actionUrlString:]";
  v3 = 2080;
  v4 = "FREditorialOverrideItem.m";
  v5 = 1024;
  v6 = 15;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10007580C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "appConfigurationManager != nil"];
  *buf = 136315906;
  v2 = "[FREditorialConfigurationProvider initWithAppConfigurationManager:]";
  v3 = 2080;
  v4 = "FREditorialConfigurationProvider.m";
  v5 = 1024;
  v6 = 26;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000758F8()
{
  v0 = [[NSString alloc] initWithFormat:@"Feed navigation config cannot be nil"];
  v1 = 136315906;
  v2 = "[FREditorialConfigurationProvider fetchEditorialConfiguration:]_block_invoke";
  v3 = 2080;
  v4 = "FREditorialConfigurationProvider.m";
  v5 = 1024;
  v6 = 41;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000759D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Editorial Manager: Error while parsing feed navigation configuration error=%@", &v3, 0xCu);
}

void sub_100075A54()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "tagController"];
  *buf = 136315906;
  v2 = "[FRTagEditorialItemDownloader initWithTagController:editorialItemEntryManager:]";
  v3 = 2080;
  v4 = "FRTagEditorialItemDownloader.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100075B34()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "editorialItemEntryManager"];
  *buf = 136315906;
  v2 = "[FRTagEditorialItemDownloader initWithTagController:editorialItemEntryManager:]";
  v3 = 2080;
  v4 = "FRTagEditorialItemDownloader.m";
  v5 = 1024;
  sub_10000969C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

uint64_t Assembly.init()()
{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}