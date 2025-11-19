double sub_100051764(void *a1, void *a2)
{
  v33 = a2;
  if (a1)
  {
    [a1 layoutMargins];
    [a1 bounds];
    MaxX = CGRectGetMaxX(v50);
    [a1 bounds];
    MidX = CGRectGetMidX(v51);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = v33;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    height = CGRectZero.size.height;
    r1 = CGRectZero.size.width;
    if (v5)
    {
      v9 = *v45;
      v37 = 0.0;
      v38 = 0.0;
      v36 = 0.0;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v44 + 1) + 8 * i) CGRectValue];
          v11 = v52.origin.x;
          v12 = v52.origin.y;
          width = v52.size.width;
          v14 = v52.size.height;
          if (CGRectGetMaxX(v52) >= MidX)
          {
            v55.origin.y = v38;
            v55.origin.x = MaxX;
            v55.size.height = v36;
            v55.size.width = v37;
            v61.origin.x = v11;
            v61.origin.y = v12;
            v61.size.width = width;
            v61.size.height = v14;
            v56 = CGRectUnion(v55, v61);
            v38 = v56.origin.y;
            MaxX = v56.origin.x;
            v36 = v56.size.height;
            v37 = v56.size.width;
          }

          else
          {
            v53.origin.x = x;
            v53.origin.y = y;
            v53.size.width = r1;
            v53.size.height = height;
            v60.origin.x = v11;
            v60.origin.y = v12;
            v60.size.width = width;
            v60.size.height = v14;
            v54 = CGRectUnion(v53, v60);
            r1 = v54.size.width;
            x = v54.origin.x;
            y = v54.origin.y;
            height = v54.size.height;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v5);
    }

    else
    {
      v37 = 0.0;
      v38 = 0.0;
      v36 = 0.0;
    }

    v15 = a1;
    if ([a1 mf_debugModeEnabled])
    {
      v16 = qword_1006DCDF0;
      if (!qword_1006DCDF0)
      {
        v17 = objc_alloc_init(NSMutableArray);
        v18 = qword_1006DCDF0;
        qword_1006DCDF0 = v17;

        v16 = qword_1006DCDF0;
      }

      [v16 makeObjectsPerformSelector:"removeFromSuperview"];
      [qword_1006DCDF0 removeAllObjects];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v4;
      v19 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v19)
      {
        v20 = *v41;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(obj);
            }

            [*(*(&v40 + 1) + 8 * j) CGRectValue];
            v26 = [[UIView alloc] initWithFrame:{v22, v23, v24, v25}];
            v27 = +[UIColor greenColor];
            v28 = v27;
            v29 = [v27 CGColor];
            v30 = [v26 layer];
            [v30 setBorderColor:v29];

            v31 = [v26 layer];
            [v31 setBorderWidth:1.0];

            [a1 addSubview:v26];
            [qword_1006DCDF0 addObject:v26];
          }

          v19 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v19);
      }

      v15 = a1;
    }

    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = r1;
    v57.size.height = height;
    CGRectGetMaxX(v57);
    [v15 bounds];
    CGRectGetWidth(v58);
    v59.origin.y = v38;
    v59.origin.x = MaxX;
    v59.size.height = v36;
    v59.size.width = v37;
    CGRectGetMinX(v59);
  }

  return 0.0;
}

void sub_100051E28(void *a1)
{
  if (a1)
  {
    v2 = [a1 contentView];
    [v2 layoutMargins];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [a1 contentOverlayRects];
    sub_100051764(a1, v11);
    v13 = v12;
    v15 = v14;

    if (v13 != v6 || v4 != 0.0 || v15 != v10 || v8 != 0.0)
    {
      v16 = [a1 contentView];
      [v16 setLayoutMargins:{0.0, v13, 0.0, v15}];
      sub_100482CAC(v16, a1);
    }
  }
}

id sub_100051F20(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result contentView];
    [v2 bounds];
    CGRectGetHeight(v4);

    UIRoundToViewScale();

    return [v1 setHeight:?];
  }

  return result;
}

void sub_1000522A8(_Unwind_Exception *a1)
{
  v6 = v1;

  _Unwind_Resume(a1);
}

double sub_100052308(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 contentHeight];
  v3 = v2;
  v4 = [a1 contentView];
  [v4 bounds];
  v5 = v3 - CGRectGetHeight(v7);

  return v5;
}

id sub_100052470(uint64_t a1)
{
  [*(a1 + 32) targetProgress];
  v3 = v2;
  [*(a1 + 32) setCurrentProgress:?];
  [*(a1 + 32) setPreviousProgress:v3];
  v4 = *(a1 + 32);

  return sub_100051F20(v4);
}

double sub_1000525A0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 delegate];
    v5 = v4;
    if (v4)
    {
      [v4 stickySubjectViewMaxYForConversationHeaderView:a1];
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    [v3 contentInset];
    v9 = v8 - v7 + sub_100052308(a1);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

double sub_100052654(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 delegate];
  v3 = v2;
  if (v2)
  {
    [v2 stickySubjectViewFirstBaselineForConversationHeaderView:a1];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void sub_100052AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100052B30(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processProgressUpdatesWithTargetTimestamp:a2];
}

id *sub_10005387C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = _MessageSearchAggregationContext;
    v10 = objc_msgSendSuper2(&v16, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      v11 = objc_alloc_init(EFManualCancelationToken);
      v12 = a1[1];
      a1[1] = v11;

      a1[3] = a3;
      objc_storeWeak(a1 + 4, v9);
      v13 = +[NSMutableOrderedSet orderedSet];
      v14 = a1[5];
      a1[5] = v13;
    }
  }

  return a1;
}

void sub_1000539D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MessageSearchAggregationContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000539FC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    objc_storeStrong(a1 + 7, a2);
    objc_storeStrong(a1 + 8, a3);
    [v12 setWebProcessDelegate:a1];
    objc_storeStrong(a1 + 6, a4);
    objc_initWeak(&location, a1);
    v14 = a1[1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100053C6C;
    v22[3] = &unk_10064C838;
    v15 = v14;
    objc_copyWeak(&v23, &location);
    [v15 addCancelationBlock:v22];

    if (([a1[1] isCanceled] & 1) == 0)
    {
      v16 = a1[1];
      v17 = +[EFScheduler mainThreadScheduler];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100053E14;
      v19[3] = &unk_10064C860;
      v19[4] = a1;
      v20 = v12;
      v21 = v13;
      v18 = [v17 performCancelableBlock:v19];
      [v16 addCancelable:v18];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void sub_100053C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100053C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[EFScheduler mainThreadScheduler];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100053D30;
    v3[3] = &unk_10064C7E8;
    v3[4] = WeakRetained;
    [v2 performBlock:v3];
  }
}

void sub_100053D3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6 = *(a1 + 48);
    [v6 setWebProcessDelegate:0];
    [*(a1 + 48) stopLoading];
    v4 = *(a1 + 48);
    *(a1 + 48) = 0;

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained aggregationContextDidFinish:a1 withLoadingController:v6 successfully:a2];

    objc_storeWeak((a1 + 32), 0);
  }
}

id sub_100053E14(uint64_t a1)
{
  v2 = sub_100053E68();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_100483C54(a1, v2, v3);
  }

  return [*(a1 + 40) requestWebViewLoadWithContentRepresentation:*(a1 + 48)];
}

id sub_100053E68()
{
  if (qword_1006DCE00 != -1)
  {
    sub_100483CE8();
  }

  v1 = qword_1006DCDF8;

  return v1;
}

void sub_100054714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ConversationSearchHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_100054744(uint64_t a1)
{
  if (a1 && pthread_main_np() != 1)
  {
    v3 = +[NSAssertionHandler currentHandler];
    [v3 handleFailureInMethod:"canSearchInDirection:" object:a1 file:@"ConversationSearchHandler.m" lineNumber:264 description:@"Current thread must be main"];
  }

  return a1 != 0;
}

void sub_1000547D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (pthread_main_np() != 1)
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:"beginSearchWithString:usingOptions:resultAggregator:" object:a1 file:@"ConversationSearchHandler.m" lineNumber:270 description:@"Current thread must be main"];
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000549C8;
    v21 = sub_1000549D8;
    v22 = 0;
    v10 = *(a1 + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004831B4;
    block[3] = &unk_10064C888;
    block[4] = a1;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = &v17;
    dispatch_sync(v10, block);
    [v18[5] cancel];

    _Block_object_dispose(&v17, 8);
  }
}

uint64_t sub_1000549C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000549E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 96));
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained conversationSearchMessageListForConversationSearchHandler:a1];
    v5 = v4;
    v31 = v4;
    if (!WeakRetained || !v4)
    {
      v29 = +[NSAssertionHandler currentHandler];
      [v29 handleFailureInMethod:"_beginNewSearchWithSearchID:" object:a1 file:@"ConversationSearchHandler.m" lineNumber:303 description:@"Expected message list and delegate."];
    }

    v6 = [v5 allItemIDs];
    v7 = [v6 result];
    v8 = *(a1 + 112);
    *(a1 + 112) = v7;

    v33 = [*(a1 + 112) count];
    v9 = objc_opt_new();
    v10 = *(a1 + 8);
    *(a1 + 8) = v9;

    v11 = objc_opt_new();
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;

    *(a1 + 24) = 0;
    v13 = sub_100053E68();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v43 = "[ConversationSearchHandler _beginNewSearchWithSearchID:]";
      v44 = 2048;
      v45 = a1;
      v46 = 2048;
      v47 = a2;
      v48 = 2048;
      v49 = v33;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %p: Starting search %lu with %lu items\n", buf, 0x2Au);
    }

    *(a1 + 128) = 0;
    *(a1 + 136) = v33;
    v14 = *(a1 + 48);
    *(a1 + 48) = 0;

    v15 = objc_alloc_init(EFManualCancelationToken);
    if (v33)
    {
      v17 = 0;
      *&v16 = 138543618;
      v30 = v16;
      do
      {
        v18 = [*(a1 + 112) objectAtIndexedSubscript:{v17, v30}];
        v19 = [WeakRetained conversationSearchHandler:a1 contentRepresentationRequestForItemID:v18];
        v20 = [WeakRetained conversationSearchHandler:a1 shouldConsiderQuotedContentForItemID:v18];
        if (v19)
        {
          v21 = v20;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = nullsub_12;
          v40[3] = &unk_10064C7E8;
          v22 = v19;
          v41 = v22;
          [v15 addCancelationBlock:v40];
          v23 = v21 ^ 1;
          v24 = *(a1 + 104);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100054F60;
          v34[3] = &unk_10064C8D8;
          v25 = v15;
          v35 = v25;
          v36 = a1;
          v37 = v18;
          v38 = a2;
          v39 = v23;
          v26 = [v22 onScheduler:v24 addLoadObserver:v34];
          [v25 addCancelable:v26];

          [v22 start];
        }

        else
        {
          v27 = sub_100053E68();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v43 = v18;
            v44 = 2048;
            v45 = a2;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No content request returned for item %{public}@, search id: %lu", buf, 0x16u);
          }

          sub_100054ED8(a1, v18, a2, 0);
        }

        ++v17;
      }

      while (v33 != v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_100054ED8(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  if (a1)
  {
    sub_1000555A4(a1, v7, a3, 0, a4);
  }
}

void sub_100054F60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = sub_100055144(*(a1 + 40), v5, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    [v7 addCancelable:v8];
  }

  else
  {
    v9 = sub_100053E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      v11 = [v6 ef_publicDescription];
      sub_100483CFC(v11, buf, v10, v9);
    }

    objc_initWeak(&location, *(a1 + 40));
    v12 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100055530;
    v15[3] = &unk_10064C8B0;
    objc_copyWeak(v17, &location);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16 = v13;
    v17[1] = v14;
    [v12 addCancelationBlock:v15];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

id sub_100055144(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    [*(a1 + 104) assertIsExecuting:1];
    v11 = objc_alloc_init(EFManualCancelationToken);
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1000549C8;
    v41 = sub_1000549D8;
    v42 = 0;
    v12 = *(a1 + 96);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100483464;
    v30 = &unk_10064C928;
    v31 = a1;
    v34 = &v43;
    v35 = &v37;
    v36 = a4;
    v13 = v10;
    v32 = v13;
    v14 = v11;
    v33 = v14;
    dispatch_sync(v12, &v27);
    if (v44[3])
    {
      v19 = sub_100053E68();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v44 + 24);
        *buf = 134218498;
        v48 = a4;
        v49 = 1024;
        v50 = v20;
        v51 = 2114;
        v52 = v13;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Content representation for search %lu arrived: shouldStartSearch:%{BOOL}d, itemID:%{public}@", buf, 0x1Cu);
      }

      v21 = sub_10048360C(a1, a5, a4);
      if (v21)
      {
        v22 = v38[5];
        v23 = *(a1 + 88);
        v24 = *(a1 + 72);
        sub_1000539FC(v22, v24, v23, v21, v9);
      }

      else
      {
        v25 = sub_100053E68();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100483D64(v13, a4, v25);
        }

        sub_100054ED8(a1, v13, a4, 1);
        [v14 cancel];
      }

      v26 = v14;
    }

    else
    {
      [v14 cancel];
      v15 = sub_100053E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v44 + 24);
        *buf = 134218498;
        v48 = a4;
        v49 = 1024;
        v50 = v16;
        v51 = 2114;
        v52 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Content representation for search %lu arrived too late: shouldStartSearch:%{BOOL}d, itemID:%{public}@", buf, 0x1Cu);
      }

      v17 = v14;
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1000554BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_100055530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    sub_100054ED8(WeakRetained, *(a1 + 32), *(a1 + 48), 1);
  }
}

void sub_1000555A4(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000556F8;
    v15 = &unk_10064C900;
    v16 = a1;
    v19 = a3;
    v17 = v9;
    v18 = v10;
    v11 = objc_retainBlock(&v12);
    if (a5)
    {
      [*(a1 + 104) assertIsExecuting:{1, v12, v13, v14, v15, v16, v17}];
      dispatch_sync(*(a1 + 96), v11);
    }

    else
    {
      dispatch_assert_queue_V2(*(a1 + 96));
      (v11[2])(v11);
    }
  }
}

void sub_1000556F8(void *a1)
{
  v1 = a1[4];
  if (v1 && *(v1 + 56) == a1[7])
  {
    --*(v1 + 136);
    v3 = a1[4];
    v4 = *(v3 + 16);
    v5 = *(v3 + 112);
    [v4 addIndex:{objc_msgSend(v5, "indexOfObject:", a1[5])}];

    v6 = a1[4];
    v7 = a1[6];

    sub_1000557A8(v6, v7);
  }
}

void sub_1000557A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 96));
    if (v3)
    {
      [*(a1 + 152) addObject:v3];
      dispatch_semaphore_signal(*(a1 + 144));
    }

    if (*(a1 + 128) == *(a1 + 136))
    {
      [*(a1 + 152) removeAllObjects];
      sub_100483DEC(&block, a1);
    }
  }
}

void sub_10005583C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[20];
  }

  v3 = v2;
  v4 = [v3 lastObject];
  v5 = a1[6];
  *(*(a1[5] + 8) + 24) = v5 < [v4 unsignedIntegerValue];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v6 = sub_100053E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      v11 = 138412546;
      v12 = v3;
      v13 = 2050;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No loading controllers are available, searches: %@ are waiting, will ignore searchID: %{public}lu", &v11, 0x16u);
    }

    v8 = a1[4];
    if (v8)
    {
      v8 = v8[20];
    }

    v9 = v8;
    v10 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v9 removeObject:v10];
  }
}

void sub_100055990(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_1000559D0(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[20];
  }

  v4 = v2;
  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  [v4 removeObject:v5];

  v6 = sub_100053E68();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_100483E58();
  }

  if (*v3)
  {
    v7 = *(*v3 + 152);
  }

  else
  {
    v7 = 0;
  }

  result = [v7 count];
  if (result)
  {
    v9 = *v3;
    if (*v3)
    {
      v9 = v9[19];
    }

    v10 = v9;
    v11 = [v10 lastObject];
    return sub_100483EE0(v11, a1, v10, v3);
  }

  return result;
}

void sub_100055AE4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((v6 + 40));
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
      WeakRetained = 0;
    }

    v18 = WeakRetained;
    [WeakRetained widthForConversationViewCellsForConversationSearchHandler:v8];
    v10 = v9;

    v19 = [*(*(*(a1 + 40) + 8) + 40) webView];
    [v19 frame];
    v12 = v11;
    v14 = v13;

    v20 = [*(*(*(a1 + 40) + 8) + 40) webView];
    [v20 setFrame:{v12, v14, v10, 1.79769313e308}];

    v21 = [*(*(*(a1 + 40) + 8) + 40) webView];
    v15 = [v21 configuration];
    v16 = [v15 userContentController];
    [v16 removeAllScriptMessageHandlers];

    v22 = [*(*(*(a1 + 40) + 8) + 40) webView];
    [EMWebViewScriptHandler addScriptHandlerForWebView:"addScriptHandlerForWebView:key:handler:" key:? handler:?];

    v23 = [*(*(*(a1 + 40) + 8) + 40) webView];
    [EMWebViewScriptHandler addScriptHandlerForWebView:"addScriptHandlerForWebView:key:handler:" key:? handler:?];

    v24 = [*(*(*(a1 + 40) + 8) + 40) webView];
    [EMWebViewScriptHandler addScriptHandlerForWebView:"addScriptHandlerForWebView:key:handler:" key:? handler:?];

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v25 = [v2 webViewConstants];
  [v25 setObject:&__kCFBooleanTrue forKeyedSubscript:@"shouldSkipReformatting"];

  v26 = [NSNumber numberWithBool:*(a1 + 48)];
  v17 = [*(*(*(a1 + 40) + 8) + 40) webViewConstants];
  [v17 setObject:v26 forKeyedSubscript:@"collapseQuotedContent"];
}

void sub_100055DD0(id a1, id a2)
{
  v2 = a2;
  v3 = sub_100053E68();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100483F34(v2, v3);
  }
}

void sub_100055E24(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_100053E68();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = [(NSDictionary *)v2 objectForKeyedSubscript:@"name"];
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:@"message"];
    v6 = [(NSDictionary *)v2 objectForKeyedSubscript:@"stack"];
    v7 = 138543874;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "[MCVError] Unhandled JS Exception: %{public}@ %@ - callstack: %{public}@", &v7, 0x20u);
  }
}

dispatch_queue_t *sub_100055F94(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[12]);
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1000549C8;
    v9 = sub_1000549D8;
    v10 = +[NSMutableDictionary dictionary];
    v2 = v1[12];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000560C4;
    v4[3] = &unk_10064CA60;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = [v6[5] copy];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1000560A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1000560C4(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[15];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [v7 allFoundRanges];
        if (v7)
        {
          v9 = v7[2];
        }

        else
        {
          v9 = 0;
        }

        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = v9;
        [v10 setObject:v8 forKeyedSubscript:v11];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v12 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v4 = v12;
    }

    while (v12);
  }
}

id sub_100056248(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_100483158(a1);
    v10 = sub_100483FD0(v7);
    v11 = sub_100483FD0(v8);
    v12 = [v9 compareFoundRange:v10 toRange:v11 inDocument:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100056440(id a1)
{
  v1 = os_log_create("com.apple.email", "ConversationSearchHandler");
  v2 = qword_1006DCDF8;
  qword_1006DCDF8 = v1;
}

void sub_100056484(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

ConversationSearchTextRange *sub_10005649C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [[ConversationSearchTextRange alloc] initWithWebkitRange:v4 documentID:v5];

  return v6;
}

void sub_1000566A4(id a1, MFExpandedMessageCell *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(MFExpandedMessageCell *)a2 messageViewController:a3];
  v4 = [v5 messageContentView];
  [v4 reloadTimeSensitiveBanner];
}

OS_os_log *__cdecl sub_100056720(id a1, SEL a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000567C0;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCE20 != -1)
  {
    dispatch_once(&qword_1006DCE20, block);
  }

  v2 = qword_1006DCE18;

  return v2;
}

void sub_1000567C0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCE18;
  qword_1006DCE18 = v1;
}

void sub_100056DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v29 + 40));

  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100056E8C(id a1, MessageContentRepresentationRequest *a2, EFManualCancelationToken *a3)
{
  v6 = a2;
  v4 = a3;
  [(EFManualCancelationToken *)v4 addCancelable:v6];
  v5 = [(MessageContentRepresentationRequest *)v6 waitForResult];
}

void sub_100056F0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setHideFollowUp:{objc_msgSend(*(a1 + 32), "BOOLForKey:", EMUserDefaultDisableFollowUp)}];
    v3 = [v5 collectionView];
    v4 = [v3 mui_indexPathsForPreparedItems];

    if ([v4 count])
    {
      [v5 _reloadCellsAtIndexPaths:v4 animated:1];
    }

    WeakRetained = v5;
  }
}

void sub_100056FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100056FEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setMarkAsReadBehavior:{objc_msgSend(*(a1 + 32), "integerForKey:", EMUserDefaultMarkAsReadBehavior)}];
    if ([WeakRetained markAsReadBehavior] != 2)
    {
      [WeakRetained scheduleAutomaticMarkAsReadForReferenceMessage];
    }
  }
}

void sub_100057124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ConversationViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10005721C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained cellConfigurator];
  v10 = [v9 unconfiguredCellForItemAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setDelegate:WeakRetained];
    v11 = [WeakRetained _manualSummaryViewModelForItemID:v7];
    [v9 configureCell:v10 forItemAtIndexPath:v6 itemID:v7 manualSummaryViewModel:v11];
  }

  else
  {
    v11 = v7;
    v12 = [WeakRetained cellConfigurator];
    v13 = [v12 expansionTracker];
    v14 = [v13 expansionStatusForCellWithItemID:v11];

    if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v15 = [WeakRetained _contentRequestForMessageWithItemID:v11];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 messageFuture];
    if (!v16)
    {
      v17 = [WeakRetained _messageFutureForItemID:v11];
      v16 = [v17 then:&stru_10064CBB0];
    }

    [v9 configureCell:v10 forItemAtIndexPath:v6 itemID:v11 messageFuture:v16 contentRequest:v15];
  }

  return v10;
}

EFFuture *__cdecl sub_10005744C(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 displayMessage];

  return v2;
}

void sub_100057584(void *a1)
{
  if (a1)
  {
    if (([a1 didNotifyExtendedLaunchTracker] & 1) == 0)
    {
      [a1 setDidNotifyExtendedLaunchTracker:1];
      v2 = [a1 scene];
      v3 = +[EFScheduler mainThreadScheduler];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10005E03C;
      v5[3] = &unk_10064C660;
      v4 = v2;
      v6 = v4;
      v7 = a1;
      [v3 performBlock:v5];
    }
  }
}

void sub_100057B54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100058498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_100058634(uint64_t a1)
{
  sub_100058788(*(a1 + 32), 1);
  v2 = [*(a1 + 32) blankConversationController];
  [v2 conversationViewIsBlankWithReason:1];

  v3 = [NSString stringWithFormat:@"Blank Conversation View displayed for %fl seconds", 0x3FF8000000000000];
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) ef_publicDescription];
    *buf = 134218498;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%p: %@ (itemID=%@)", buf, 0x20u);
  }
}

void sub_100058788(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [NSString stringWithFormat:@"Blank Conversation View - Reason %ld", a2];
    EFSaveTailspin();
  }
}

void sub_100058E6C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v7 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    v4 = sub_1004852D0(*(a1 + 32));
    v5 = sub_100055F94(v4);
    v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

    if ([v6 count])
    {
      [*(a1 + 32) _decorateFoundRanges:v6 inExpandedCell:v3];
    }
  }
}

void sub_100059984(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained isSwappingMessageList])
  {
    v4 = +[ConversationViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) ef_publicDescription];
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Enqueuing empty data source update on message list %@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100059B24;
    v7[3] = &unk_10064CC50;
    v7[4] = v3;
    v8 = v6;
    [v3 _performDataSourceUpdateAnimated:0 collection:v8 update:v7 completion:0];
  }
}

void sub_100059B24(uint64_t a1)
{
  v2 = +[ConversationViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ef_publicDescription];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Performing empty data source update on message list %@", &v5, 0x16u);
  }
}

void sub_100059C10(uint64_t a1, void *a2)
{
  [a2 deleteAllItems];
  v3 = +[ConversationViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: New message list is nil, deleting all items in snapshot and updating data source", &v5, 0xCu);
  }
}

void sub_10005A180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_10005A1C0(uint64_t a1)
{
  if ([*(a1 + 32) isPerformingDataSourceUpdate] && (objc_msgSend(*(a1 + 32), "_updateQueue"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) ef_publicDescription];
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Perform data source update in the next run loop to avoid deadlock:%@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005A3B8;
    block[3] = &unk_10064CCC8;
    v18 = *(a1 + 64);
    v14 = *(a1 + 32);
    v10 = *(&v14 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v16 = v14;
    v17 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    [v4 _nts_performDataSourceUpdateAnimated:v3 collection:v5 update:v6 completion:v7];
  }
}

void sub_10005A7C8(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 73) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 74))
  {
    v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  }

  else
  {
    v3 = [*(a1 + 32) snapshot];
  }

  v4 = v3;
  v5 = [v3 sectionIdentifiers];
  v6 = [v5 count];

  if (!v6)
  {
    v11 = *(a1 + 40);
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    [v4 appendSectionsWithIdentifiers:v7];
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) populateSummaryItemForSnapshot:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005A9C0;
  v10[3] = &unk_10064C7E8;
  v10[4] = *(a1 + 48);
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v10];

  v9 = *(a1 + 32);
  if (v2)
  {
    [v9 applySnapshot:v4 animatingDifferences:1 completion:*(a1 + 64)];
  }

  else
  {
    [v9 applySnapshotUsingReloadData:v4 completion:*(a1 + 64)];
  }
}

void sub_10005A9C0(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationLayout];
  [v1 invalidateLayout];
}

id sub_10005B5B0(uint64_t a1, void *a2)
{
  v3 = [a2 itemID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10005B604(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    if (WeakRetained)
    {
      v4 = [*(a1 + 32) handoffMessageRequest];
      v5 = [v4 itemID];
      v6 = [WeakRetained itemID];
      v7 = [v5 isEqual:v6];

      if (v7)
      {
        [*(a1 + 32) updateUserActivityState];
      }
    }
  }
}

id sub_10005B90C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) indexPathForItemIdentifier:a2];

  return v2;
}

id sub_10005B940(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [NSIndexPath indexPathForItem:0 inSection:0];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_10005B9B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = [a2 itemID];
  v8 = (*(v6 + 16))(v6, v7);

  v9 = *(a1 + 40);
  v10 = [v5 itemID];
  v11 = (*(v9 + 16))(v9, v10);

  v12 = [*(a1 + 32) result:0];
  v13 = [v8 mui_distanceTo:v12];
  v14 = [v11 mui_distanceTo:v12];
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = -v13;
  }

  if (v14 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = -v14;
  }

  if (v13 < v14)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  v18 = v15 == v16;
  if (v15 < v16)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  if (v18)
  {
    v19 = v17;
  }

  if (v13 == v14)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

void sub_10005BEA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_10005BF0C(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isShowingGroupedSenderMessageList])
  {
    v4 = [v12 senderList];
    v5 = [v4 firstObject];
    v6 = [v5 emailAddressValue];
    v7 = [v6 displayName];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 stringValue];
    }

    v10 = v9;

    v11 = [[ECSubject alloc] initWithString:v10];
    [WeakRetained setConversationSubject:v11];
  }

  else
  {
    v10 = [v12 subject];
    [WeakRetained setConversationSubject:v10];
  }

  [WeakRetained _updateTitle];
}

void sub_10005C0A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100484120();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10005C620(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = EMMessageListQueryOptionPrecacheAndIncludeItemWithObjectIDInInitialBatch;
  v4 = [*(a1 + 32) _displayObjectIDForPreCacheWithPredicate:*(a1 + 40)];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 setTargetClassOptions:v5];

  [v3 setLabel:@"sender"];
}

void sub_10005C6F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10005CDCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 ef_map:&stru_10064CE70];
    v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];
    v7 = +[EFPromise promise];
    v8 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:&__NSArray0__struct];
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 daemonInterface];
    v11 = [v10 mailboxRepository];

    if (v11)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10005D0AC;
      v18[3] = &unk_10064CE98;
      v19 = v7;
      [v11 performQuery:v8 completionHandler:v18];
    }

    else
    {
      [v7 finishWithResult:&__NSArray0__struct error:0];
    }

    v12 = [v7 future];
    v13 = [v12 result:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &__NSArray0__struct;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_10005D040(id a1, NSNumber *a2)
{
  v2 = a2;
  v3 = [EMMailbox predicateForMailboxType:[(NSNumber *)v2 integerValue]];

  return v3;
}

BOOL sub_10005D23C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = +[NSUserDefaults em_userDefaults];
  v2 = [v1 objectForKey:EMUserDefaultUndoSendDelayTime];

  if (v2)
  {
    v3 = [v2 integerValue] > 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t sub_10005D2DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_10005D514(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) messageList];

  if (v3 != v4 || ![*(a1 + 40) isShowingGroupedSenderMessageList])
  {
    goto LABEL_19;
  }

  v5 = [*(a1 + 40) lastSeenDate];
  v6 = [*(a1 + 40) lastSeenDisplayDate];
  if (v5 && ([v18 date], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "ef_isEarlierThanOrEqualDate:", v7), v7, !v8))
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [v18 date];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v10 = [v18 displayDate];
  v11 = [v6 ef_isEarlierThanOrEqualDate:v10];

  if (!v11)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v12 = [v18 displayDate];
LABEL_11:
  if (v9 | v12)
  {
    if (v9)
    {
      [*(a1 + 40) setLastSeenDate:v9];
    }

    if (v12)
    {
      [*(a1 + 40) setLastSeenDisplayDate:v12];
    }

    v13 = [*(a1 + 32) allItemIDs];
    v14 = [v13 resultIfAvailable];

    if (v14)
    {
      v15 = [v18 senderList];
      v16 = [v15 firstObject];

      v17 = [*(a1 + 40) messageRepository];
      [v17 updateLastSeenDate:v9 andDisplayDate:v12 forBusinessWithEmailAddress:v16 category:*(a1 + 48)];
    }
  }

LABEL_19:
}

void sub_10005DA24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) groupedSenderUnreadCountQuery];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 setGroupedSenderUnreadCount:v5];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) totalUnfilteredMessageCountQuery];
    LODWORD(v6) = [v6 isEqual:v7];

    if (v6)
    {
      [*(a1 + 40) setTotalUnfilteredMessageCount:*(a1 + 48)];
      v8 = *(a1 + 40);

      [v8 _updateTitle];
    }
  }
}

id sub_10005DF8C(id result)
{
  if (result)
  {
    v1 = result;
    if (pthread_main_np() != 1)
    {
      v2 = +[NSAssertionHandler currentHandler];
      [v2 handleFailureInMethod:"_shouldAnimateDataSourceUpdate" object:v1 file:@"ConversationViewController.m" lineNumber:1273 description:@"Current thread must be main"];
    }

    return [v1 didFinishInitialLoad];
  }

  return result;
}

void sub_10005E03C(uint64_t a1)
{
  v2 = [*(a1 + 32) extendedLaunchTracker];
  [v2 didFinishLoadViewController:*(a1 + 40) scene:*(a1 + 32)];
}

void sub_10005E68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_10005E6E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10005DF8C(v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E8CC;
  v7[3] = &unk_10064CF38;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005E9AC;
  v6[3] = &unk_10064C7E8;
  v6[4] = *(a1 + 32);
  [v2 _performDataSourceUpdateAnimated:v3 collection:v4 update:v7 completion:v6];
  if (![*(a1 + 64) count])
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 72));
      objc_claimAutoreleasedReturnValue();
      sub_1004842D8();
    }

    [*(a1 + 32) _autoReloadDataSourceForEmptyAddIfNeeded];
  }
}

void sub_10005E8CC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) _updateInitiallyUnreadItemIDs:*(a1 + 40)];
  v6 = [*(a1 + 32) _adjustedExistingItemIDForInlineSummaryItem:*(a1 + 48) snapshot:v8];
  v7 = [*(a1 + 32) messageListCollectionHelper];
  [v7 addItemIDs:*(a1 + 56) before:v6 snapshot:v8 section:v5 validateOtherSections:0];
}

void sub_10005E9AC(uint64_t a1)
{
  [*(a1 + 32) _updateForDataSourceChanges:1];
  v2 = *(a1 + 32);

  sub_100057584(v2);
}

void sub_10005EB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_10005EBB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10005DF8C(v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005EDA0;
  v7[3] = &unk_10064CF38;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005F008;
  v6[3] = &unk_10064C7E8;
  v6[4] = *(a1 + 32);
  [v2 _performDataSourceUpdateAnimated:v3 collection:v4 update:v7 completion:v6];
  if (![*(a1 + 64) count])
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 72));
      objc_claimAutoreleasedReturnValue();
      sub_1004842D8();
    }

    [*(a1 + 32) _autoReloadDataSourceForEmptyAddIfNeeded];
  }
}

void sub_10005EDA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _updateInitiallyUnreadItemIDs:*(a1 + 40)];
  v7 = [v5 mui_validItemIDFromExistingItemID:*(a1 + 48) updateReason:@"Adding items after existing item"];
  if (!v7)
  {
    v11 = [v5 itemIdentifiersInSectionWithIdentifier:v6];
    v10 = [v11 firstObject];

    if (v10)
    {
      [v5 insertItemsWithIdentifiers:*(a1 + 56) beforeItemWithIdentifier:v10];
    }

    else
    {
      v12 = +[ConversationViewController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 56);
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Appending identifiers %@", &v14, 0xCu);
      }

      [v5 appendItemsWithIdentifiers:*(a1 + 56) intoSectionWithIdentifier:v6];
    }

    goto LABEL_12;
  }

  v8 = +[ConversationViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inserting identifiers %@ after identifier %@", &v14, 0x16u);
  }

  if ([*(a1 + 56) count])
  {
    [v5 insertItemsWithIdentifiers:*(a1 + 56) afterItemWithIdentifier:*(a1 + 48)];
    v10 = [*(a1 + 32) _itemIDsForReloadAfterInsertingObjectsAfterItemID:*(a1 + 48) snapshot:v5];
    if ([v10 count])
    {
      [v5 reloadItemsWithIdentifiers:v10];
    }

LABEL_12:
  }
}

void sub_10005F108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _adjustedExistingItemIDForInlineSummaryItem:*(a1 + 40) snapshot:v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [*(a1 + 32) messageListCollectionHelper];
        [v13 moveItemID:v12 before:v7 snapshot:v5 section:v6];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_10005F398(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 40) messageListCollectionHelper];
        [v12 moveItemID:v11 after:*(a1 + 48) snapshot:v5 section:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_10005F648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  _Block_object_dispose((v20 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10005F674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005F68C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mui_validItemIDsFromExistingItemIDs:*(a1 + 32) updateReason:@"Changing itemIDs"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005F70C(uint64_t a1)
{
  v2 = (a1 + 32);
  v11 = [*(a1 + 32) collectionViewDataSource];
  v3 = [*v2 collectionView];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [*(a1 + 32) _messageFutureForItemID:v7];
        v9 = +[EFScheduler mainThreadScheduler];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10005F9D4;
        v13[3] = &unk_10064D000;
        v14 = v3;
        v15 = v11;
        v16 = v7;
        v17 = *(a1 + 32);
        [v8 onScheduler:v9 addSuccessBlock:v13];

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10005FF18;
        v12[3] = &unk_10064D028;
        v12[4] = v7;
        [v8 addFailureBlock:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_10005F9D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 itemID];
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Changing itemID - %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) indexPathForItemIdentifier:*(a1 + 48)];
  v8 = [v6 cellForItemAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 messageViewController];
    v11 = [v10 messageContentView];
    v12 = [v11 headerView];

    v13 = *(a1 + 56);
    v14 = [v12 viewModel];
    v15 = [v14 updatedModelWithMessage:v3];
    [v13 _headerView:v12 displayWithBannerForViewModel:v15 message:v3];

    [*(a1 + 56) _updateFooterToShowUndoSendForCell:v9];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v16 = v8;
    v17 = [v3 flags];
    v18 = [v16 viewModel];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10005FD44;
    v23 = &unk_10064CFD8;
    v12 = v17;
    v24 = v12;
    v25 = v3;
    v19 = [v18 copyWithBuilder:&v20];
    [v16 setViewModel:{v19, v20, v21, v22, v23}];

    goto LABEL_8;
  }

LABEL_9:
}

void sub_10005FD44(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setRead:{objc_msgSend(*(a1 + 32), "read")}];
  [v7 setFlagged:{objc_msgSend(*(a1 + 32), "flagged")}];
  v3 = [*(a1 + 40) flagColors];
  [v7 setFlagColors:v3];

  [v7 setReplied:{objc_msgSend(*(a1 + 32), "replied")}];
  [v7 setForwarded:{objc_msgSend(*(a1 + 32), "forwarded")}];
  [v7 setRedirected:{objc_msgSend(*(a1 + 32), "redirected")}];
  [v7 setJunk:{objc_msgSend(*(a1 + 32), "isJunk")}];
  [v7 setVIP:{objc_msgSend(*(a1 + 40), "isVIP")}];
  [v7 setNotify:{objc_msgSend(*(a1 + 40), "conversationNotificationLevel") == 2}];
  [v7 setMute:{objc_msgSend(*(a1 + 40), "conversationNotificationLevel") == 1}];
  [v7 setBlockedSender:{objc_msgSend(*(a1 + 40), "isBlocked")}];
  [v7 setHasAttachments:{objc_msgSend(*(a1 + 40), "hasAttachments")}];
  v4 = [*(a1 + 40) date];
  [v7 setDate:v4];

  v5 = [*(a1 + 40) senderList];
  [v7 setSenderList:v5];

  v6 = [*(a1 + 40) summary];
  [v7 setSummary:v6];
}

void sub_10005FF18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ConversationViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100484390();
  }
}

void sub_10006038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100060410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mui_validItemIDsFromExistingItemIDs:*(a1 + 32) updateReason:@"Deleting itemIDs"];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v7 = [NSSet setWithArray:*(*(*(a1 + 48) + 8) + 40)];
    v8 = [*(a1 + 40) _messageItemIDsFromSnapshot:v3];
    v9 = [NSSet setWithArray:v8];

    if ([v9 isEqualToSet:v7])
    {
      v10 = +[ConversationViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted all itemIDs - set reference message list item to nil", v25, 2u);
      }

      [*(a1 + 40) setReferenceMessageListItem:0];
      v11 = [*(a1 + 40) topSummaryItemID];

      if (v11)
      {
        v12 = [*(a1 + 40) topSummaryItemID];
        v27 = v12;
        v13 = [NSArray arrayWithObjects:&v27 count:1];
        [v3 deleteItemsWithIdentifiers:v13];
      }

      v14 = [*(a1 + 40) inlineSummaryItemID];

      if (v14)
      {
        v15 = [*(a1 + 40) inlineSummaryItemID];
        v26 = v15;
        v16 = [NSArray arrayWithObjects:&v26 count:1];
        [v3 deleteItemsWithIdentifiers:v16];
      }
    }

    v17 = [*(a1 + 40) _shouldRecalculateStickySubjectBeforeDeletedItemIDs:*(*(*(a1 + 48) + 8) + 40)];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [v3 deleteItemsWithIdentifiers:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v20 = [*(a1 + 32) firstObject];
    v21 = [*(a1 + 40) referenceMessageListItem];
    v22 = [v21 itemID];
    v23 = [v20 isEqual:v22];

    if (v23)
    {
      v24 = +[ConversationViewController log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleted reference message - set reference message list item to nil", v25, 2u);
      }

      [*(a1 + 40) setReferenceMessageListItem:0];
      [v3 deleteAllItems];
    }
  }
}

uint64_t sub_1000607C0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) count];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _updateForDataSourceChanges:0];
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) _recalculateStickySubjectForDeletedIndexPath:?];
    }

    [*(a1 + 32) _updateFooterViewFrameForVisibleCells];
    sub_100060860(*(a1 + 32));
  }

  else
  {
    [v3 _updateCells];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100060860(void *a1)
{
  if (a1)
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 userInterfaceIdiom])
    {
    }

    else
    {
      v2 = [a1 referenceMessageListItem];

      if (!v2)
      {
        objc_initWeak(&location, a1);
        v3 = +[EFScheduler mainThreadScheduler];
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_1000609E8;
        v6[3] = &unk_10064C838;
        objc_copyWeak(&v7, &location);
        v4 = [v3 afterDelay:v6 performBlock:1.5];
        [a1 setBlankConversationTailspinToken:v4];

        objc_destroyWeak(&v7);
        objc_destroyWeak(&location);
      }
    }
  }
}

void sub_1000609A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_destroyWeak((v12 + 32));

  objc_destroyWeak((v13 - 40));
  _Unwind_Resume(a1);
}

void sub_1000609E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1004852B8(WeakRetained);
  v3 = [WeakRetained referenceMessageListItem];
  v4 = [WeakRetained countOfMessages];
  v5 = v4;
  if (!v2 || v3 && v4)
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 ef_publicDescription];
      v9[0] = 67109634;
      v9[1] = v2;
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skip blank conversation view tailspin (visible:%{BOOL}d, message count:%ld, reference message:%@)", v9, 0x1Cu);
    }
  }

  else
  {
    sub_100058788(WeakRetained, 2);
    v8 = [WeakRetained blankConversationController];
    [v8 conversationViewIsBlankWithReason:2];
  }
}

BOOL sub_100060D8C(id a1, EMCollectionItemID *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000612B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexOfItemIdentifier:*(a1 + 32)];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [NSIndexPath indexPathForItem:v4 inSection:0];
    v6 = [*(a1 + 40) cellConfigurator];
    v7 = [v6 expansionStatusForMessageAtIndexPath:v5];

    v21 = *(a1 + 48);
    v8 = [NSArray arrayWithObjects:&v21 count:1];
    [v3 insertItemsWithIdentifiers:v8 beforeItemWithIdentifier:*(a1 + 32)];

    v20 = *(a1 + 32);
    v9 = [NSArray arrayWithObjects:&v20 count:1];
    [v3 deleteItemsWithIdentifiers:v9];

    v10 = [*(a1 + 40) cellConfigurator];
    v11 = [v10 expansionTracker];
    [v11 setMessageWithItemID:*(a1 + 48) expansionStatus:v7];

    v12 = [*(a1 + 40) contentRequestCache];
    v13 = [v12 objectForKey:*(a1 + 32)];

    if (v13)
    {
      v14 = [*(a1 + 40) contentRequestCache];
      v15 = [v14 objectForKey:*(a1 + 48)];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = *(a1 + 48);
        v18 = [*(a1 + 40) messageList];
        [v13 updateItemID:v17 messageList:v18];

        v19 = [*(a1 + 40) contentRequestCache];
        [v19 addObject:v13 forKey:*(a1 + 48)];
      }
    }
  }
}

void sub_1000617C8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_100061BD0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 collectionViewDataSource];
    v5 = [v4 indexPathForItemIdentifier:v3];

    v6 = [a1 collectionView];
    v7 = [v6 cellForItemAtIndexPath:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100061CA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100061EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100061F08(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained messageList];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100062020;
    v5[3] = &unk_10064CC50;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    [WeakRetained _performDataSourceUpdateAnimated:0 collection:v4 update:v5];
  }

  else
  {
    WeakRetained = +[MessageListViewController log];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_1004844BC();
    }
  }
}

void sub_100062020(uint64_t a1)
{
  v2 = +[ConversationViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Performing data source update after undo send button tapped on message %@", &v5, 0x16u);
  }
}

void sub_100062724(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setMessageContentRequest:*(a1 + 32)];
  v3 = [*(a1 + 40) senderList];
  [v8 setSenderList:v3];

  v4 = [*(a1 + 40) summary];
  [v8 setSummary:v4];

  v5 = [*(a1 + 40) generatedSummary];
  [v8 setGeneratedSummary:v5];

  v6 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 40) reducePlaceholderImage:1];
  [v8 setAvatarContext:v6];

  v7 = [*(a1 + 48) avatarGenerator];
  [v8 setAvatarGenerator:v7];
}

void sub_10006284C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSelectedMessage:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

double sub_100062EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _containerTraitCollection];
  v5 = [v4 verticalSizeClass];

  if (v5 == 1)
  {
    v6 = _UISheetDetentInactive;
  }

  else
  {
    [v3 _containerBounds];
    Height = CGRectGetHeight(v18);
    [*(a1 + 32) mailActionCardMaximumContainerViewHeightForLargerMediumDetent];
    v8 = *(a1 + 32);
    if (Height <= v9)
    {
      [v8 mailActionCardLargerMediumDetentCoverage];
    }

    else
    {
      [v8 mailActionCardSmallerMediumDetentCoverage];
    }

    v11 = v10;
    [v3 _containerSafeAreaInsets];
    v13 = -(v12 - Height * v11);
    if (*(a1 + 56))
    {
      v14 = *(a1 + 48);
      [v3 _containerSafeAreaInsets];
      v6 = fmin(v13, v14 + v15);
    }

    else
    {
      [*(a1 + 40) approximateHeightNeededForAccessibilityContentSizeCategory];
      v6 = fmax(v13, v16);
    }
  }

  return v6;
}

void sub_100063374(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) scene];
  [v7 setScene:v3];

  [v7 setDelegate:*(a1 + 32)];
  v4 = [*(a1 + 40) navigationController];
  v5 = [v4 popoverPresentationController];
  v6 = [v5 sourceItem];
  [v7 setPresentationSource:v6];

  [v7 setTarget:*(a1 + 48)];
  [v7 setPreparation:*(a1 + 72)];
  [v7 setCompletion:*(a1 + 80)];
  [v7 setPredictedMailbox:*(a1 + 56)];
  [v7 setMoveToPredictionTriageInteractionDelegate:*(a1 + 32)];
  [v7 setPresentingViewControllerForTransferUI:*(a1 + 32)];
  [v7 setPrinterDelegate:*(a1 + 32)];
  [v7 setIncludeReadLaterAction:{objc_msgSend(*(a1 + 64), "conversationViewControllerAllowsRemindMeAction:", *(a1 + 32))}];
  [v7 setIncludeCategorizationAction:{objc_msgSend(*(a1 + 64), "conversationViewControllerAllowsCategorizationAction:", *(a1 + 32))}];
  [v7 setIncludeICloudUnsubscribeAction:{objc_msgSend(*(a1 + 64), "conversationViewControllerAllowsICloudUnsubscribeAction:", *(a1 + 32))}];
  [v7 setOrigin:3];
}

void sub_1000635CC(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 needShrinkAnimationAfterCompletion])
  {
    if ([*(a1 + 32) _isDisplayingSingleMessage])
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 32);
        v5 = [v3 popoverPresentationController];
        v6 = [v5 sourceView];
        [v4 _shrinkMessagesToView:v6 withInteraction:v7 completionHandler:0];
      }
    }
  }
}

void sub_10006377C(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 32);
      v6 = [v9 messageListItemSelection];
      v7 = [v6 messageListItems];
      [v5 disableAutomaticMarkAsReadForMessages:v7];

LABEL_6:
LABEL_7:
      [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v6 = [*(a1 + 40) itemID];
      [v8 _clearSelectedMessageContentForMessageItemID:v6];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _deleteMessageListItemsForMoveOrDestructiveInteraction:v9 completion:0];
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v9];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_100063A4C(id *a1, void *a2, int a3)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = a1[4];
      v7 = [v14 messageListItemSelection];
      v8 = [v7 messageListItems];
      [v6 disableAutomaticMarkAsReadForMessages:v8];

LABEL_4:
      goto LABEL_14;
    }

    if ([v14 needShrinkAnimationAfterCompletion] && ((v11 = objc_msgSend(a1[4], "_isDisplayingSingleMessage"), WeakRetained) ? (v12 = v11) : (v12 = 0), (v12 & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [a1[4] _deleteMessageListItemsForMoveOrDestructiveInteraction:v14 completion:0];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = a1[4];
      v7 = [a1[5] itemID];
      [v13 _clearSelectedMessageContentForMessageItemID:v7];
      goto LABEL_4;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1[4] _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v14];
      }

      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_14:
      [a1[4] dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v14;
      v10 = [WeakRetained didDismissHandler];
      [v9 setDidDismissHandler:v10];

      [WeakRetained setDidDismissHandler:0];
    }
  }
}

uint64_t sub_100063D98(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 topViewController];

      v4 = v2;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && ([v4 delegate], v2 = objc_claimAutoreleasedReturnValue(), v2 == a1))
    {
      a1 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [a1 transferController];
        a1 = v6 == v4;

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        a1 = 0;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

LABEL_13:

  return a1;
}

void sub_100063E90(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

id sub_100063EB0(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentedViewController];
    if (v2)
    {
      v1 = v1;
    }

    else
    {
      v3 = [v1 scene];
      v1 = [v3 mf_rootViewController];
    }
  }

  return v1;
}

void sub_100064648(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 mui_validItemIDsFromIndexPaths:*(a1 + 32)];
  [v4 reloadItemsWithIdentifiers:v3];
}

void sub_100064F00(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) collectionViewDataSource];
  v10 = [v9 indexPathForItemIdentifier:v7];

  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = *(a1 + 32);
    if (isKindOfClass)
    {
      [v12 _scrollToItemAtIndexPath:v10 dynamicOffset:v8 shouldAdjustToShowPreviousMessage:a4 animated:0 pin:1 completion:0];
      v13 = [*(a1 + 32) previewState];
      [v13 transitionAfterScrollingToReferenceMessage];
    }

    else
    {
      v14 = [v12 _contentRequestForMessageWithItemID:v7];
      v15 = [*(a1 + 32) handoffCoordinator];
      [v15 setHandoffMessageRequest:v14];

      v16 = [*(a1 + 32) _messageFutureForItemID:v7];
      objc_initWeak(&location, *(a1 + 32));
      v17 = +[EFScheduler mainThreadScheduler];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100065170;
      v18[3] = &unk_10064D220;
      objc_copyWeak(&v21, &location);
      v19 = v10;
      v20 = v8;
      v22 = a4;
      [v16 onScheduler:v17 addSuccessBlock:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1000650E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v23 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100065170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _scrollToItemAtIndexPath:*(a1 + 32) dynamicOffset:*(a1 + 40) shouldAdjustToShowPreviousMessage:*(a1 + 56) animated:0 pin:1 completion:0];
  v2 = [WeakRetained previewState];
  [v2 transitionAfterScrollingToReferenceMessage];
}

void sub_100065340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching conversation attachment data for message IDs: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) messageRepository];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000654AC;
  v6[3] = &unk_10064D298;
  v7 = *(a1 + 40);
  [v5 requestAttachmentURLsForMessageIDs:v3 completionHandler:v6];
}

void sub_1000654AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100065558;
  v6[3] = &unk_10064D270;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100065618(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching conversation rich link data for message IDs: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) messageRepository];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100065784;
  v6[3] = &unk_10064D298;
  v7 = *(a1 + 40);
  [v5 requestRichLinkURLsForMessageIDs:v3 completionHandler:v6];
}

void sub_100065784(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100065830;
  v6[3] = &unk_10064D270;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10006590C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v12 = v3;
  v5 = [v3 messageViewController];
  v6 = [v5 messageContentView];
  [v6 setShowMessageFooter:(v4 ^ 1) & 1];

  v7 = [v12 messageViewController];
  v8 = [v7 messageContentView];
  v9 = [v8 headerView];
  v10 = [v9 headerBlocks];
  v11 = [v10 ef_firstObjectPassingTest:&stru_10064D300];

  if (v11)
  {
    [v11 setDisplayOptions:{objc_msgSend(*(a1 + 32), "_headerDisplayOptionsForCell:displayedAsSingleMessage:", v12, objc_msgSend(*(a1 + 32), "_isDisplayingSingleMessage"))}];
  }
}

BOOL sub_100065A74(id a1, MFMessageHeaderViewBlock *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_100066B90(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 sendLaterDate];

    if (v7)
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 ef_publicDescription];
        v10 = [v5 ef_publicDescription];
        v28 = 134218498;
        v29 = a1;
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%p: Add send later banner at indexPath (%{public}@) for message %{public}@", &v28, 0x20u);
      }

      v11 = [MFBannerView alloc];
      v12 = [v5 itemID];
      v13 = [v11 initWithType:0 itemID:v12 delegate:a1];
LABEL_6:
      a1 = v13;

      goto LABEL_7;
    }

    v15 = [v5 readLater];
    if (v15)
    {
      v16 = [a1 delegate];
      v17 = [v16 conversationViewControllerAllowsRemindMeAction:a1];

      if (v17)
      {
        v18 = +[ConversationViewController log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v6 ef_publicDescription];
          v20 = [v5 ef_publicDescription];
          v28 = 134218498;
          v29 = a1;
          v30 = 2114;
          v31 = v19;
          v32 = 2114;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%p: Add read later banner at indexPath (%{public}@) for message %{public}@", &v28, 0x20u);
        }

        v21 = [MFBannerView alloc];
        v12 = [v5 itemID];
        v13 = [v21 initWithType:1 itemID:v12 delegate:a1];
        goto LABEL_6;
      }
    }

    v22 = [v5 followUp];
    if (v22)
    {
      v23 = [a1 shouldHideFollowUp];

      if ((v23 & 1) == 0)
      {
        v24 = +[ConversationViewController log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v6 ef_publicDescription];
          v26 = [v5 ef_publicDescription];
          v28 = 134218498;
          v29 = a1;
          v30 = 2114;
          v31 = v25;
          v32 = 2114;
          v33 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%p: Add follow up banner at indexPath (%{public}@) for message %{public}@", &v28, 0x20u);
        }

        v27 = [MFBannerView alloc];
        v12 = [v5 itemID];
        v13 = [v27 initWithType:2 itemID:v12 delegate:a1];
        goto LABEL_6;
      }
    }

    a1 = 0;
  }

LABEL_7:

  return a1;
}

id sub_100066F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained contactStore];
  v5 = [v4 cnStore];
  v6 = [v3 participantHeaderForContactStore:v5];

  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 setDisplayOptions:{objc_msgSend(WeakRetained, "_headerDisplayOptionsForCell:displayedAsSingleMessage:", v7, *(a1 + 56))}];

  return v6;
}

void sub_100067098(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (*(*(a1 + 32) + 16))();
  [WeakRetained insertHeaderBlock:v4 before:v5 animated:1];
}

BOOL sub_100067148(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() shouldDisplayBannerIfIsShowingGroupedSenderMessageList:{objc_msgSend(*(a1 + 32), "isShowingGroupedSenderMessageList")}] && objc_msgSend(*(a1 + 40), "indexOfObject:", v3) == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

void sub_1000671F4(id *a1)
{
  v2 = [a1[4] isEditable] ^ 1;
  v3 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100067358;
  v10[3] = &unk_10064D3C8;
  objc_copyWeak(&v13, a1 + 9);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v14 = v2;
  v7 = a1[8];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [v3 performBlock:v10];

  objc_destroyWeak(&v13);
}

void sub_100067320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16)
{
  objc_destroyWeak((v17 + 64));

  _Unwind_Resume(a1);
}

void sub_100067358(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) itemID];
    v3 = [v2 isEqual:*(a1 + 40)];

    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = [*(a1 + 48) revealActionsButton];
      [v5 setEnabled:v4];

      [WeakRetained _updateFooterViewFrameForCell:*(a1 + 32) atIndexPath:*(a1 + 56)];
      [*(a1 + 48) setNeedsLayout];
    }
  }
}

void sub_100067908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  v3 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v2];
  [v1 finishWithFuture:v3];
}

void sub_100067D14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100067DDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100068158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v28 = v24;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

EFPair *__cdecl sub_100068228(id a1, EMMessage *a2)
{
  v2 = [EFPair pairWithFirst:0 second:a2];

  return v2;
}

EFPair *__cdecl sub_100068264(id a1, EMCollectionItemID *a2)
{
  v2 = [EFPair pairWithFirst:a2 second:0];

  return v2;
}

void sub_1000682A0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v6 = [v19 messageViewController];
  v7 = [v6 messageContentView];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 mailboxProvider];
  [v7 setMailboxProvider:v9];

  v10 = [v7 selectedHTML];
  if ([v10 length])
  {

LABEL_4:
    if (*(a1 + 57) == 1)
    {
      v12 = *(a1 + 32);
      v13 = [v19 viewModel];
      v14 = [v13 messageContentRequest];
      [v14 message];
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = [v19 viewModel];
      v14 = [v13 messageContentRequest];
      [v14 itemID];
    }
    v15 = ;
    v16 = (*(v12 + 16))(v12, v15);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
    goto LABEL_8;
  }

  v11 = *(a1 + 56);

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_8:
}

id sub_100068B94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionViewDataSource];
  v6 = [v3 itemID];
  v7 = [v5 indexPathForItemIdentifier:v6];

  return v7;
}

void sub_100068D00(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1000697D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ef_map:&stru_10064D588];
  (*(v2 + 16))(v2);
}

NSNumber *__cdecl sub_100069850(id a1, EMMessageCollectionItemID *a2)
{
  v2 = a2;
  v3 = [NSNumber numberWithLongLong:[(EMMessageCollectionItemID *)v2 globalMessageID]];

  return v3;
}

void sub_1000698BC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[ConversationViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1004846A4();
  }
}

id sub_100069A50(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 selectionDataSource];
    if ([v2 shouldUseSelectionDataSourceForConversationViewController:v1])
    {
      v1 = [v2 messageListItemSelectionForConversationViewController:v1];
    }

    else
    {
      v3 = [MSMessageListItemSelection alloc];
      v4 = [v1 _messageListItemsForBarButtonTriage];
      v1 = [v3 initWithMessageListItems:v4];
    }
  }

  return v1;
}

void sub_10006A34C(uint64_t a1)
{
  v2 = +[ConversationViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) referenceMessageListItem];
    [objc_claimAutoreleasedReturnValue() itemID];
    objc_claimAutoreleasedReturnValue();
    sub_10048477C();
  }

  v3 = [*(a1 + 32) referenceMessageListItem];

  if (v3)
  {
    v4 = [*(a1 + 32) predictedMailboxForConversation];
    [v4 cancel];

    v5 = [*(a1 + 32) referenceMessageListItem];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    v7 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v6];
    [*(a1 + 32) setPredictedMailboxForConversation:v7];
  }

  else
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [*(a1 + 32) referenceMessageList];
      objc_claimAutoreleasedReturnValue();
      [*(a1 + 32) referenceMessageListQuery];
      objc_claimAutoreleasedReturnValue();
      sub_1004847CC();
    }
  }
}

id sub_10006A63C(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_10006B4A8(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_10006B974(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 webView];
  [v5 _viewScale];
  v6 = [v4 _zoomStepForViewScale:?];

  if ([*(a1 + 32) _canChangePageZoom:*(a1 + 40) fromStep:v6])
  {
    if (*(a1 + 40))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 - 1;
    }

    v8 = [&off_100674E80 objectAtIndexedSubscript:v7];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v3 webView];
    [v11 _setViewScale:v10];

    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v19 = 138412802;
      if (v13)
      {
        v14 = @"in";
      }

      else
      {
        v14 = @"out";
      }

      v20 = v14;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v15 = "Zooming %@: %lu → %lu";
      v16 = v12;
      v17 = 32;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v19, v17);
    }
  }

  else
  {
    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"below";
      if (*(a1 + 40))
      {
        v18 = @"beyond";
      }

      v19 = 138412546;
      v20 = v18;
      v21 = 2048;
      v22 = v6;
      v15 = "Cannot zoom %@ step %lu";
      v16 = v12;
      v17 = 22;
      goto LABEL_14;
    }
  }
}

void sub_10006BBC8(id *a1, void *a2, void *a3, id *a4, void *a5, void *a6)
{
  v22 = a3;
  v11 = a5;
  v12 = a6;
  if (a1)
  {
    v13 = [a1 targetMessageForBarButtonTriage];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 itemID];
      v16 = [a1 _contentRequestForMessageWithItemID:v15];
      if (v16)
      {
        v17 = [a1 scene];
        v18 = [a2 interactionWithContentRequest:v16 scene:v17];
        if (a4)
        {
          v19 = [a1 _getCurrentlySelectedMessageContentForMessageItemID:v15];
          if (v19)
          {
            [v18 setOriginalContent:v19];
          }
        }

        [v18 setDelegate:a1];
        [v18 setShouldPromptToLoadRestOfMessage:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setPresentationSource:v22];
        }

        else
        {
          [v18 setAttachmentPolicy:3];
        }

        v20 = [v14 mailboxes];
        [v18 setMessageSourceMailboxes:v20];

        if (v11)
        {
          v11[2](v11, v18);
        }

        if (v12)
        {
          v21 = v23;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10006BF64;
          v23[3] = &unk_10064D658;
          a4 = &v25;
          v25 = v12;
          a1 = &v24;
          v24 = v15;
        }

        else
        {
          v21 = 0;
        }

        [v18 performInteractionWithCompletion:v21];
        if (v12)
        {
        }
      }

      else
      {
        v17 = +[ConversationViewController log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector("_handleKeyboardInteractionFor:sender:useSelection:triageSetup:completion:");
          objc_claimAutoreleasedReturnValue();
          sub_1004848B0();
        }
      }
    }

    else
    {
      v15 = +[ConversationViewController log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector("_handleKeyboardInteractionFor:sender:useSelection:triageSetup:completion:");
        objc_claimAutoreleasedReturnValue();
        sub_1004848F4();
      }
    }
  }
}

void sub_10006BF78(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = objc_opt_class();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006C054;
    v6[3] = &unk_10064D680;
    v6[4] = a1;
    sub_10006BBC8(a1, v5, v4, 1, 0, v6);
  }
}

void sub_10006C054(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    [*(a1 + 32) _clearSelectedMessageContentForMessageItemID:v6];
  }
}

id *sub_10006C654(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _clearSelectedMessageContentForMessageItemID:result[5]];
  }

  return result;
}

void sub_10006C81C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) conversationViewController:WeakRetained didPerform:a3 triageInteraction:v6];
  }
}

void sub_10006CB30(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      [WeakRetained _deleteMessageListItemsForMoveOrDestructiveInteraction:v8 completion:0];
    }

    v7 = [v6 selectionDataSource];
    [v7 conversationViewController:v6 didPerform:a3 triageInteraction:v8];
  }
}

void sub_10006CD18(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10006CF94(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) selectionDataSource];
  [v5 conversationViewController:*(a1 + 32) didPerform:a3 triageInteraction:v6];
}

void sub_10006D4A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) selectionDataSource];
  [v5 conversationViewController:*(a1 + 32) didPerform:a3 triageInteraction:v6];
}

void sub_10006D754(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = [v10 flagState];
      v7 = [WeakRetained barItemsManager];
      v8 = [v7 muteButtonItem];
      sub_10006D860(WeakRetained, v8, v6 ^ 1);
    }

    v9 = [WeakRetained selectionDataSource];
    [v9 conversationViewController:WeakRetained didPerform:a3 triageInteraction:v10];
  }
}

void sub_10006D860(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  if (a1)
  {
    v5 = &MFImageGlyphUnMute;
    if (a3)
    {
      v5 = &MFImageGlyphMute;
    }

    v6 = [UIImage systemImageNamed:*v5];
    [v8 setImage:v6];

    v7 = _EFLocalizedString();
    [v8 setTitle:v7];
  }
}

void sub_10006DC34(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = [v13 messageListItemSelection];
      v7 = [v6 messageListItems];
      [WeakRetained disableAutomaticMarkAsReadForMessages:v7];

      sub_10006DDC8(WeakRetained, [v13 flagState]);
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 appStoreReviewManager];
      [v9 notifyCriterionMet:5];

      v10 = [WeakRetained scene];
      if (v10)
      {
        v11 = +[UIApplication sharedApplication];
        v12 = [v11 appStoreReviewManager];
        [v12 attemptToShowPromptIn:v10 reason:5];
      }
    }

    [*(a1 + 32) conversationViewController:WeakRetained didPerform:a3 triageInteraction:v13];
  }
}

void sub_10006DDC8(void *a1, int a2)
{
  if (a1)
  {
    v6 = [a1 barItemsManager];
    v4 = [v6 unreadButtonItem];
    v5 = [v6 readButtonItem];
    sub_10006E008(a1, v4, v5, a2, 1);
  }
}

void sub_10006DF2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10006DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10006E008(void *a1, void *a2, void *a3, int a4, int a5)
{
  v12 = a2;
  v9 = a3;
  if (a1)
  {
    v10 = [a1 referenceMessageListItem];
    v11 = [v10 isEditable];

    [v12 setEnabled:a5 & ~v11 & a4];
    [v9 setEnabled:a5 & ~(v11 | a4)];
  }
}

void sub_10006E2BC(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = [v10 flagState];
      v7 = [WeakRetained barItemsManager];
      v8 = [v7 flagButtonItem];

      v9 = [v8 tintColor];
      sub_10006E3DC(WeakRetained, v8, v6 ^ 1, v9);
    }

    [*(a1 + 32) conversationViewController:WeakRetained didPerform:a3 triageInteraction:v10];
  }
}

void sub_10006E3DC(uint64_t a1, void *a2, int a3, void *a4)
{
  v12 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = &MFImageGlyphToolbarFlag;
    if (a3)
    {
      v8 = &MFImageGlyphToolbarUnflag;
    }

    v9 = [UIImage systemImageNamed:*v8];
    [v12 setImage:v9];

    v10 = v7;
    if (a3)
    {
      v10 = +[UIColor mf_colorFromFlagColor:](UIColor, "mf_colorFromFlagColor:", +[MFFlagTriageInteraction defaultColor]);
    }

    [v12 setTintColor:v10];
    if (a3)
    {
    }

    v11 = _EFLocalizedString();
    [v12 setTitle:v11];
  }
}

void sub_10006E8B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v12 = v5;
  if (a3)
  {
    v7 = [v5 flagState];
    v8 = [*(a1 + 32) barItemsManager];
    v9 = [v8 flagButtonItem];

    v10 = *(a1 + 32);
    v11 = [v9 tintColor];
    sub_10006E3DC(v10, v9, v7 ^ 1, v11);

    v6 = v12;
  }

  [*(a1 + 40) conversationViewController:*(a1 + 32) didPerform:a3 triageInteraction:v6];
}

BOOL sub_10006EBE8(id a1, EMCollectionItemID *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_10006EE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_10006EEB8(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _summarizableMessageItemIDsForSummaryItemID:*(a1 + 32)];
  if ([v5 count])
  {
    v6 = [WeakRetained messageList];
    v7 = [v6 messageListItemsForItemIDs:v5];

    v8 = [EFFuture combine:v7];
    v9 = [v8 result:0];
    v10 = [v9 ef_filter:EFIsNotNull];

    v11 = [[MUIManualSummaryController alloc] initWithMessages:v10 sourceViewController:WeakRetained];
  }

  else
  {
    [MFError errorWithDomain:MFMessageErrorDomain code:1030 localizedDescription:0];
    *a2 = v11 = 0;
  }

  return v11;
}

void sub_10006F378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

NSArray *__cdecl sub_10006FEAC(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 emailAddressStrings];

  return v2;
}

id sub_100070078(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) supplementaryViewForElementKind:*(a1 + 40) atIndexPath:a2];

  return v2;
}

BOOL sub_1000700B0(id a1, UICollectionReusableView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100070350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100070394(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v15 && WeakRetained)
  {
    v4 = [WeakRetained collectionViewDataSource];
    v5 = [v4 indexPathForItemIdentifier:v15];

    v6 = [WeakRetained collectionView];
    v7 = [v6 cellForItemAtIndexPath:v5];

    v8 = [v7 contentView];
    if (v8)
    {
      [*(a1 + 32) contentOffset];
      v10 = v9;
      [*(a1 + 32) contentInset];
      v12 = v11;
      [v7 frame];
      MinY = CGRectGetMinY(v17);
      [v7 frame];
      v14 = fmin((v10 + v12 - MinY) / (CGRectGetMaxY(v18) - MinY), 1.0);
      if (v14 < 0.0)
      {
        v14 = 0.0;
      }

      [v8 setAlpha:1.0 - v14];
    }
  }
}

void sub_1000707BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100070C0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _quickReplyView];
    [v3 setHidden:1];

    WeakRetained = v4;
  }
}

void sub_100070C9C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_5;
  }

  if ([v6 isCancelled])
  {
LABEL_6:
    v4 = [WeakRetained _quickReplyView];
    [v4 setHidden:0];

    goto LABEL_7;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_5:
    if (([v6 isCancelled] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  if (*(a1 + 40) == 1 && ([v6 isCancelled] & 1) == 0)
  {
    [WeakRetained _resetQuickReplyViewControllerWithReason:3 resetCompose:1 override:0];
    v5 = [WeakRetained _quickReplyView];
    [v5 setHidden:0];
  }

LABEL_10:
}

void sub_100070FC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100071024(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v7 = v13;
  [v7 setDelegate:WeakRetained];
  [WeakRetained _quickReplyHorizontalPadding];
  [v7 setHorizontalInset:?];
  if (UICollectionElementKindSectionHeader == v5)
  {
    [v7 setTopInset:0.0];
    [WeakRetained _itemSpacing];
    v8 = v9;
    goto LABEL_6;
  }

  if (UICollectionElementKindSectionFooter == v5)
  {
    [WeakRetained _itemSpacing];
    v8 = 0.0;
    [v7 setTopInset:?];
LABEL_6:
    [v7 setBottomInset:v8];
  }

  [WeakRetained _updateQuickReplyLabelIfNeeded:v7];
  v10 = [WeakRetained quickReplyMailComposeController];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 view];
    [v7 addComposeView:v12];

    [v7 setQuickReplyPlaceholderLabelState:{objc_msgSend(WeakRetained, "quickReplyHasContent") ^ 1}];
  }

LABEL_10:
}

void sub_100071188(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1000711C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (!WeakRetained || ![WeakRetained allowQuickReply] || (objc_msgSend(v11, "didCompleteFirstPaint") & 1) == 0)
  {
    goto LABEL_6;
  }

  if (UICollectionElementKindSectionHeader == v8)
  {
    v14 = [v11 quickReplyHeaderSupplementaryRegistration];
    v15 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:v14 forIndexPath:v9];
  }

  else
  {
    if (UICollectionElementKindSectionFooter != v8)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_7;
    }

    v14 = [v11 quickReplyFooterSupplementaryRegistration];
    v15 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:v14 forIndexPath:v9];
  }

  v12 = v15;

  v16 = +[ConversationViewController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = v11;
    v22 = 2112;
    v23 = v9;
    v17 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Will create quick-reply at index path:%@", &v18, 0x20u);
  }

LABEL_7:

  return v12;
}

void sub_1000716CC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v6 || v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100071A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Quick Reply] Caret Position: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) quickReplyMailComposeController];
  v7 = MSMailActivityHandoffComposeKeyInsertionPoint;
  v8 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v5 expandQuickReplyToFullComposeAndPerformAction:1 additionalUserInfo:v6];
}

void sub_100071B28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100071D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100071DE4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071EAC;
  v2[3] = &unk_10064C838;
  objc_copyWeak(&v3, (a1 + 32));
  v1 = +[EFScheduler mainThreadScheduler];
  [v1 performBlock:v2];

  objc_destroyWeak(&v3);
}

void sub_100071EAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _resetQuickReplyViewControllerWithReason:1 resetCompose:1 override:0];
    v3 = +[ConversationViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412546;
      v6 = objc_opt_class();
      v7 = 2048;
      v8 = v2;
      v4 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply][Send Animation] Did complete quick-reply send animation", &v5, 0x16u);
    }
  }
}

void sub_1000728EC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    [WeakRetained _resetQuickReplyViewControllerWithReason:3 resetCompose:1 override:0];
  }
}

void sub_100072964(uint64_t a1)
{
  v3 = [[MFActiveDraft alloc] initWithIdentifier:*(a1 + 40) andOriginalMessageIdentifier:*(a1 + 48)];
  v2 = [*(a1 + 32) session];
  [v2 mf_setActiveDraft:v3];
}

void sub_1000730D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10007313C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) flags];
    v4 = [v3 read];

    if (v4)
    {
      v5 = +[ConversationViewController log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) itemID];
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - remove scheduled auto-mark-as-read since message is already read", buf, 0xCu);
      }

      v7 = *(WeakRetained + 596);
      v8 = [*(a1 + 32) itemID];
      [v7 removeObjectForKey:v8];
    }

    else
    {
      v9 = +[ConversationViewController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) itemID];
        v11 = [WeakRetained markAsReadBehavior];
        v12 = *(a1 + 48);
        *buf = 138412802;
        v19 = v10;
        v20 = 2048;
        v21 = v11;
        v22 = 2048;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ - Execute mark-as-read after delay (%lu): %.2f", buf, 0x20u);
      }

      v8 = [WeakRetained _itemsForMessage:*(a1 + 32) changeAction:2];
      v13 = [WeakRetained undoManager];
      v14 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v8 undoManager:v13 origin:3 actor:1 reason:3];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10007344C;
      v15[3] = &unk_10064D6D0;
      objc_copyWeak(&v17, (a1 + 40));
      v16 = *(a1 + 32);
      [v14 performInteractionWithCompletion:v15];

      objc_destroyWeak(&v17);
    }
  }
}

void sub_10007344C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v8 = [WeakRetained referenceMessageListItem];
      if ([v8 count]< 2)
      {
        sub_10006DDC8(v7, [v5 flagState]);
      }

      else
      {
        v9 = +[ConversationViewController log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134218240;
          v13 = v7;
          v14 = 2048;
          v15 = [v8 count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%p: Skip updating (un)read toolbar button items - thread contains %ld messages", &v12, 0x16u);
        }
      }
    }

    else
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) itemID];
        objc_claimAutoreleasedReturnValue();
        sub_100484D30();
      }
    }

    v10 = *(v7 + 596);
    v11 = [*(a1 + 32) itemID];
    [v10 removeObjectForKey:v11];
  }
}

void sub_100073968(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleAutomaticMarkAsReadForMessage:v3];
}

void sub_1000739DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) displayMessageItemID];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to fetch item with ID %@, cannot schedule auto-mark-as-read. Error: %@", &v6, 0x16u);
  }
}

void sub_10007469C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000754A4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    v14 = v5;
    v7 = [v5 messageListItemSelection];
    v8 = [v7 messageListItems];
    [v6 disableAutomaticMarkAsReadForMessages:v8];

    v9 = +[UIApplication sharedApplication];
    v10 = [v9 appStoreReviewManager];
    [v10 notifyCriterionMet:5];

    v11 = [*(a1 + 32) scene];
    if (v11)
    {
      v12 = +[UIApplication sharedApplication];
      v13 = [v12 appStoreReviewManager];
      [v13 attemptToShowPromptIn:v11 reason:5];
    }

    v5 = v14;
  }
}

void sub_1000755A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1000756D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

id sub_1000756FC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_100069A50(a1);
    v7 = [a1 undoManager];
    v8 = [MFReadLaterTriageInteraction interactionWithMessageListItemSelection:v6 undoManager:v7 origin:3 actor:2];

    [v8 setDelegate:a1];
    [v8 setPresentationSource:v5];
    [v8 setDatePickerPresentationStyle:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100075804(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = [v15 hasReadLater];
      v7 = [WeakRetained barItemsManager];
      v8 = [v7 laterButtonItem];
      sub_1000759B0(WeakRetained, v8, v6 ^ 1);

      v9 = +[UIApplication sharedApplication];
      v10 = [v9 appStoreReviewManager];
      [v10 notifyCriterionMet:5];

      v11 = [WeakRetained scene];
      if (v11)
      {
        v12 = +[UIApplication sharedApplication];
        v13 = [v12 appStoreReviewManager];
        [v13 attemptToShowPromptIn:v11 reason:5];
      }
    }

    v14 = [WeakRetained selectionDataSource];
    [v14 conversationViewController:WeakRetained didPerform:a3 triageInteraction:v15];
  }
}

void sub_1000759B0(void *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = &MFImageGlyphUpdateReadLater;
    if (a3)
    {
      v6 = &MFImageGlyphReadLater;
    }

    v7 = [UIImage systemImageNamed:*v6];
    [v5 setImage:v7];

    v8 = _EFLocalizedString();
    [v5 setTitle:v8];
    if (a3)
    {

      v9 = [a1 referenceMessageListItem];

      if (v9)
      {
        [v5 setTarget:0];
        [v5 setAction:0];
        objc_initWeak(&location, a1);
        v10 = sub_1000756FC(a1, v5, 7);
        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = sub_100075ED8;
        v15 = &unk_10064D6F8;
        objc_copyWeak(&v16, &location);
        v11 = [v10 menuWithCompletion:&v12];
        [v5 setMenu:{v11, v12, v13, v14, v15}];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        goto LABEL_9;
      }
    }

    else
    {
    }

    [v5 setTarget:a1];
    [v5 setAction:"laterButtonTapped:"];
    [v5 setMenu:0];
  }

LABEL_9:
}

void sub_100075BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100075C64(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 selectionDataSource];
  if ([v2 shouldUseSelectionDataSourceForConversationViewController:a1])
  {
    v3 = sub_100069A50(a1);
    v4 = [v2 messageTriageInteractionHelperForConversationViewController:a1];
    v5 = [v3 messageListItems];
    v6 = [v4 flagStateForTriageAction:6 messageListItems:v5 isSelectAll:objc_msgSend(v3 supportsSelectAll:{"isSelectAll"), 1}];
  }

  else
  {
    if (![a1 _messageListItemCount])
    {
      v6 = 1;
      goto LABEL_7;
    }

    v3 = [a1 _messageListItemsForBarButtonTriage];
    v6 = [v3 ef_any:&stru_10064D968];
  }

LABEL_7:
  return v6;
}

uint64_t sub_100075DA0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 selectionDataSource];
    v3 = [v2 shouldUseSelectionDataSourceForConversationViewController:v1];

    if (v3)
    {
      v4 = sub_100069A50(v1);
      v5 = v4;
      if (v4 && ([v4 isSelectAll] & 1) == 0)
      {
        v6 = [v5 messageListItems];
        v1 = [v6 ef_any:&stru_10064D988];
      }

      else
      {
        v1 = 1;
      }

      goto LABEL_10;
    }

    if ([v1 _messageListItemCount])
    {
      v5 = [v1 _messageListItemsForBarButtonTriage];
      v1 = [v5 ef_any:&stru_10064D988];
LABEL_10:

      return v1;
    }

    return 1;
  }

  return v1;
}

BOOL sub_100075EA0(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 readLater];
  v3 = v2 == 0;

  return v3;
}

void sub_100075ED8(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained selectionDataSource];
    [v7 conversationViewController:v6 didPerform:a3 triageInteraction:v13];

    if (a3)
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 appStoreReviewManager];
      [v9 notifyCriterionMet:0];

      v10 = [v6 scene];
      if (v10)
      {
        v11 = +[UIApplication sharedApplication];
        v12 = [v11 appStoreReviewManager];
        [v12 attemptToShowPromptIn:v10 reason:3];
      }
    }
  }
}

void sub_100075FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_100076780(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isShowingGroupedSenderMessageList])
  {
    [*(a1 + 40) setEnabled:0];
  }

  else
  {
    v3[2]();
  }
}

void sub_100076818(uint64_t a1)
{
  v2 = sub_100075C64(*(a1 + 32));
  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 40) messageListItems];
    v4 = [v3 firstObject];
    v5 = [v4 flagColors];
    v6 = +[UIColor mf_colorFromFlagColor:](UIColor, "mf_colorFromFlagColor:", [v5 firstIndex]);
  }

  else
  {
    v3 = [*(a1 + 32) referenceMessageListItem];
    v4 = [v3 flagColors];
    v6 = +[UIColor mf_colorFromFlagColor:](UIColor, "mf_colorFromFlagColor:", [v4 firstIndex]);
  }

  sub_10006E3DC(*(a1 + 32), *(a1 + 48), v2, v6);
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) setEnabled:*(a1 + 57)];
  }
}

void sub_100076978(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (([*(a1 + 32) isSelectAll] & 1) == 0)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
      v4 = sub_100075DA0(v2);
      sub_1000759B0(v2, v3, v4);
    }

    v5 = [*(a1 + 32) isSelectAll];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v10 = [*(a1 + 32) messageListItems];
      v6 = [v10 count] == 1;
    }

    [*(a1 + 48) setEnabled:v6];
    if ((v5 & 1) == 0)
    {
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = sub_100075DA0(v8);

    sub_1000759B0(v8, v7, v9);
  }
}

void sub_100076AA0(uint64_t a1)
{
  v3 = [*(a1 + 32) referenceMessageListItem];
  v2 = [v3 conversationNotificationLevel] == 1;

  sub_10006D860(*(a1 + 32), *(a1 + 40), v2);
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 48) messageListItems];
    [*(a1 + 40) setEnabled:{objc_msgSend(v4, "count") == 1}];
  }
}

void *sub_100076CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedMessage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) targetMessageForBarButtonTriage];
  }

  v7 = v6;

  objc_initWeak(&location, v3);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100076DEC;
  v13[3] = &unk_10064DA50;
  objc_copyWeak(&v16, &location);
  v8 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = objc_retainBlock(v13);
  v11 = objc_retainBlock(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void sub_100076DEC(uint64_t a1, void *a2, int a3)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 32);
      v7 = [v19 messageListItemSelection];
      v8 = [v7 messageListItems];
      [v6 disableAutomaticMarkAsReadForMessages:v8];

      v9 = +[UIApplication sharedApplication];
      v10 = [v9 appStoreReviewManager];
      [v10 notifyCriterionMet:5];

      v11 = [*(a1 + 32) scene];
      if (v11)
      {
        v12 = +[UIApplication sharedApplication];
        v13 = [v12 appStoreReviewManager];
        [v13 attemptToShowPromptIn:v11 reason:5];
      }

      goto LABEL_13;
    }

    if ([v19 needShrinkAnimationAfterCompletion])
    {
      v14 = [*(a1 + 32) _isDisplayingSingleMessage];
      v15 = WeakRetained ? v14 : 0;
      if (v15 == 1)
      {
        v16 = [*(a1 + 32) delegate];
        v17 = [v16 conversationViewControllerShouldDismissOnDestructiveAction:*(a1 + 32)];

        if ((v17 & 1) == 0)
        {
          [*(a1 + 32) _shrinkMessagesToBarButton:*(a1 + 40) withInteraction:v19 completionHandler:0];
          goto LABEL_14;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = *(a1 + 32);
      v11 = [*(a1 + 48) itemID];
      [v18 _clearSelectedMessageContentForMessageItemID:v11];
LABEL_13:

LABEL_14:
      [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _deleteMessageListItemsForMoveOrDestructiveInteraction:v19 completion:0];
      goto LABEL_14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v19];
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

void sub_1000775AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBarButtonsEnabled];
}

void sub_100077608(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = +[ConversationViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Delete";
    if (*(a1 + 64))
    {
      v8 = @"Archive";
    }

    v9 = @"failed";
    *v12 = 134218498;
    *&v12[4] = WeakRetained;
    *&v12[14] = v8;
    *&v12[12] = 2112;
    if (a3)
    {
      v9 = @"succeeded";
    }

    *&v12[22] = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%p> %@ messages %@!", v12, 0x20u);
  }

  if (a3)
  {
    [WeakRetained _shrinkMessagesToBarButton:*(a1 + 32) withInteraction:v5 completionHandler:*(a1 + 48)];
    [WeakRetained _deleteMessageListItemsForMoveOrDestructiveInteraction:*(a1 + 40) completion:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), 1, v10);
  }

  v11 = [WeakRetained selectionDataSource];
  [v11 conversationViewController:WeakRetained didPerform:a3 triageInteraction:v5];
}

void sub_100077968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000779A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MSMessageListItemSelection alloc];
  v6 = [WeakRetained referenceMessageListItem];
  v16 = v6;
  v7 = [NSArray arrayWithObjects:&v16 count:1];
  v8 = [v5 initWithMessageListItems:v7];

  v9 = [WeakRetained undoManager];
  v10 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v8 undoManager:v9 origin:3 actor:2];

  [v10 setDelegate:WeakRetained];
  v11 = [WeakRetained view];
  [v10 setPresentationSource:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100077C08;
  v14[3] = &unk_10064D720;
  v14[4] = WeakRetained;
  v12 = [v10 menuActionWithPreparation:0 completion:v14];
  v15 = v12;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  v3[2](v3, v13);
}

void sub_100077B84(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_100077C08(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v5];
  }
}

void sub_100077E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100077EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100069A50(WeakRetained);
    v7 = [v5 _readActionForMessageListItemSelection:v6];
    v8 = [v5 referenceMessageListItem];
    v9 = [v8 shouldArchiveByDefault];

    v10 = *(a1 + 32);
    if (v9)
    {
      [v5 _archiveActionForMessageListItemSelection:v6 menuOwner:v10];
    }

    else
    {
      [v5 _deleteActionForMessageListItemSelection:v6 menuOwner:v10];
    }
    v11 = ;
    v13[0] = v7;
    v13[1] = v11;
    v12 = [NSArray arrayWithObjects:v13 count:2];
    v3[2](v3, v12);
  }
}

void sub_100077FF8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id sub_100078180(uint64_t a1)
{
  v2 = (a1 + 32);
  v30 = [*(a1 + 32) referenceMessageListItem];
  v3 = [*v2 contactStore];
  v4 = [v30 preferredSenderDisplayNameWithContactStore:v3];

  v29 = v4;
  v5 = [[MUIAvatarImageContext alloc] initWithMessageListItem:v30];
  v28 = v5;
  if (MUISolariumFeatureEnabled())
  {
    v6 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    v7 = [v6 view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [*(a1 + 32) avatarGenerator];
    v9 = [v6 displayPersonForContext:v5 avatarGenerator:v8];

    v10 = [v6 view];
  }

  else
  {
    v11 = [[UIImageView alloc] initWithImage:0];
    v12 = [*(a1 + 32) avatarGenerator];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000786F8;
    v31[3] = &unk_10064DB18;
    v10 = v11;
    v32 = v10;
    v13 = [v12 contactForContext:v5 handler:v31];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [MUIAvatarImageGenerator roundAvatarView:v10 withBorder:0 size:40.0];
  }

  v14 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v18 setText:v4];
  v19 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightBold];
  [v18 setFont:v19];

  v20 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v20 setAxis:1];
  [v20 setAlignment:1];
  [v20 addArrangedSubview:v18];
  [v20 setCustomSpacing:v18 afterView:2.0];
  v21 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAxis:0];
  [v21 setAlignment:3];
  [v21 setLayoutMarginsRelativeArrangement:1];
  [v21 setDirectionalLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  [v21 addArrangedSubview:v10];
  [v21 setCustomSpacing:v10 afterView:9.0];
  [v21 addArrangedSubview:v20];
  v22 = [v10 widthAnchor];
  v23 = [v22 constraintEqualToConstant:40.0];
  v33[0] = v23;
  v24 = [v10 heightAnchor];
  v25 = [v24 constraintEqualToConstant:40.0];
  v33[1] = v25;
  v26 = [NSArray arrayWithObjects:v33 count:2];
  [NSLayoutConstraint activateConstraints:v26];

  return v21;
}

void sub_1000786F8(uint64_t a1, void *a2)
{
  v3 = [a2 image];
  [*(a1 + 32) setImage:?];
}

void sub_1000789B4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 intValue]);
}

void sub_100078A28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100484DF4();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100078BFC(id *a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained toolbarItems];
    v7 = [v6 firstObject];

    if ([v10 isDestructive])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [a1[4] destructiveButtonItem];

        v7 = v8;
      }
    }

    [WeakRetained _shrinkMessagesToBarButton:v7 withInteraction:v10 completionHandler:0];
    [WeakRetained _deleteMessageListItemsForMoveOrDestructiveInteraction:v10 completion:0];
  }

  v9 = [a1[5] selectionDataSource];
  [v9 conversationViewController:a1[5] didPerform:a3 triageInteraction:v10];
}

void *sub_1000797F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000798C4;
  v9[3] = &unk_10064DBB8;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = v3;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  return v7;
}

void sub_1000798C4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    if ([v5 needShrinkAnimationAfterCompletion] && objc_msgSend(*(a1 + 32), "_isDisplayingSingleMessage") && *(a1 + 40))
    {
      [*(a1 + 32) _shrinkMessagesToBarButton:*(a1 + 48) withInteraction:v5 completionHandler:0];
    }

    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100079968(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v7 = +[UIApplication sharedApplication];
    v4 = [v7 appStoreReviewManager];
    [v4 notifyCriterionMet:7];

    v8 = [*(a1 + 32) scene];
    if (v8)
    {
      v5 = +[UIApplication sharedApplication];
      v6 = [v5 appStoreReviewManager];
      [v6 attemptToShowPromptIn:v8 reason:7];
    }

    [*(a1 + 32) _shrinkMessagesToBarButton:*(a1 + 40) withInteraction:*(a1 + 48) completionHandler:0];
  }
}

void sub_100079B70(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10007A320(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) senderList];
  [v8 setSenderList:v3];

  v4 = [*(a1 + 32) summary];
  [v8 setSummary:v4];

  v5 = [*(a1 + 32) generatedSummary];
  [v8 setGeneratedSummary:v5];

  v6 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 32)];
  [v8 setAvatarContext:v6];

  v7 = [*(a1 + 40) avatarGenerator];
  [v8 setAvatarGenerator:v7];
}

void sub_10007A43C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedMessage:0];
}

void sub_10007A49C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) scene];
  [v5 setScene:v3];

  [v5 setDelegate:*(a1 + 32)];
  [v5 setPresentationSource:*(a1 + 40)];
  [v5 setTarget:*(a1 + 48)];
  [v5 setCompletion:*(a1 + 64)];
  v4 = [*(a1 + 32) predictedMailboxForConversation];
  [v5 setPredictedMailbox:v4];

  [v5 setMoveToPredictionTriageInteractionDelegate:*(a1 + 32)];
  [v5 setPresentingViewControllerForTransferUI:*(a1 + 32)];
  [v5 setIncludeReadLaterAction:{objc_msgSend(*(a1 + 56), "conversationViewControllerAllowsRemindMeAction:", *(a1 + 32))}];
  [v5 setIncludeCategorizationAction:{objc_msgSend(*(a1 + 56), "conversationViewControllerAllowsCategorizationAction:", *(a1 + 32))}];
  [v5 setIncludeICloudUnsubscribeAction:{objc_msgSend(*(a1 + 56), "conversationViewControllerAllowsICloudUnsubscribeAction:", *(a1 + 32))}];
}

void sub_10007A7EC(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v15 = a2;
  v38 = a3;
  v37 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (a1)
  {
    v35 = v17;
    v36 = v15;
    v19 = [a1 scene];
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v53 = 0;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10007ACB4;
    v47[3] = &unk_10064DC30;
    v50 = v17;
    v51 = v52;
    v20 = v15;
    v48 = v20;
    v49 = a1;
    v21 = objc_retainBlock(v47);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10007AE38;
    v42[3] = &unk_10064DCC8;
    v42[4] = a1;
    v22 = v19;
    v46 = a6;
    v43 = v22;
    v45 = v52;
    v23 = v20;
    v44 = v23;
    v24 = objc_retainBlock(v42);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();
    v27 = [[MFTransferSplitViewController alloc] initWithItems:v23 scene:v22 options:2 didDismissHandler:v18];
    v28 = [(MFTransferSplitViewController *)v27 transferNavigationController];
    [v28 setMailboxPrediction:v38];

    v29 = [(MFTransferSplitViewController *)v27 stackViewController];
    [v29 setDataSource:a1];

    [(MFTransferSplitViewController *)v27 setModalPresentationStyle:7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [(MFTransferSplitViewController *)v27 popoverPresentationController];
      [v30 setBarButtonItem:v16];

      v31 = [(MFTransferSplitViewController *)v27 transferNavigationController];
      [v31 setWillTransferMessagesToMailbox:v21];

      v32 = [(MFTransferSplitViewController *)v27 transferNavigationController];
      [v32 setDidFinish:v24];
    }

    else if ((isKindOfClass | v26))
    {
      v33 = [(MFTransferSplitViewController *)v27 popoverPresentationController];
      [v33 setSourceItem:v16];

      v34 = [(MFTransferSplitViewController *)v27 transferNavigationController];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10007B254;
      v39[3] = &unk_10064DCF0;
      v40 = v21;
      v41 = v24;
      [v34 setDidFinish:v39];

      v32 = v40;
    }

    else
    {
      v32 = +[ConversationViewController log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100484FA0();
      }
    }

    [v37 presentViewController:v27 animated:1 completion:0];
    [a1 setTransferController:v27];

    _Block_object_dispose(v52, 8);
    v17 = v35;
    v15 = v36;
  }
}

void sub_10007ABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34)
{
  _Block_object_dispose((v41 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_10007ACB4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v13, v5);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v7 = [*(a1 + 32) ef_mapSelector:"itemID"];
  v8 = *(a1 + 40);
  v9 = [v8 messageList];
  [v8 _deleteItemsWithIDs:v7 fromCollection:v9 completionHandler:0];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) referenceMessageListItem];
  LODWORD(v10) = [v10 containsObject:v11];

  if (v10)
  {
    v12 = [*(a1 + 40) delegate];
    if ([*(a1 + 40) shownAsConversation] & 1) == 0 && (objc_opt_respondsToSelector())
    {
      [v12 conversationViewController:*(a1 + 40) willRemoveAllVisibleMessagesWithItemIDs:v7];
    }
  }
}

void sub_10007AE38(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10005F674;
  v15[4] = sub_10005F684;
  v16 = [*(a1 + 32) transferController];
  v2 = [*(a1 + 32) transferController];
  v3 = [v2 stackViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007AFC4;
  v8[3] = &unk_10064DCA0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v14 = *(a1 + 64);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v15;
  v13 = v6;
  v11 = v7;
  [v3 removeStackedViewsAnimated:1 completion:v8];

  _Block_object_dispose(v15, 8);
}

void sub_10007AF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_10007AFC4(uint64_t a1)
{
  v2 = [*(a1 + 32) mf_rootViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B0A4;
  v7[3] = &unk_10064DC78;
  v3 = *(a1 + 40);
  v10 = *(a1 + 72);
  v4 = *(a1 + 64);
  v7[4] = v3;
  v9 = v4;
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  [v2 dismissViewControllerAnimated:1 completion:v7];
}

void sub_10007B0A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) transferController];

  if (v3 == v4)
  {
    [*v2 setTransferController:0];
  }

  else
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      sub_100485014(v7, v2, &v10, v5);
    }
  }

  if (*(a1 + 64) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v8 = [*v2 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 40) ef_map:&stru_10064DC50];
      [v8 conversationViewController:*v2 didRemoveAllVisibleMessagesWithItemIDs:v9];
    }
  }
}

id sub_10007B224(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_10007B254(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10007B6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10007BA60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 unsignedIntegerValue];
  v7 = [v8 objectAtIndexedSubscript:1];
  (*(v4 + 16))(v4, v6, [v7 unsignedIntegerValue]);
}

void sub_10007BB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100485074();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007BDEC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) senderList];
  [v6 setSenderList:v3];

  [v6 setSummary:*(a1 + 40)];
  v4 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 32) reducePlaceholderImage:1];
  [v6 setAvatarContext:v4];

  v5 = [*(a1 + 48) avatarGenerator];
  [v6 setAvatarGenerator:v5];
}

void sub_10007BF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

void sub_10007BFA8(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && a3)
  {
    [WeakRetained _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v7];
  }
}

void sub_10007C684(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 scene];
    v8 = [v7 daemonInterface];
    v9 = [v8 outgoingMessageRepository];

    if (v5)
    {
      v10 = [v9 updateSendLaterDate:v5 message:v6];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10007CEB8;
      v27[3] = &unk_10064DD58;
      v28 = v5;
      sub_10007CCA0(a1, v6, v27);
      v11 = v28;
    }

    else
    {
      v12 = [v6 senderAddress];
      v13 = [v12 stringValue];
      v11 = [MailAccount accountContainingEmailAddress:v13];

      v24 = [v11 mailboxUidOfType:5 createIfNeeded:1];
      v14 = [EMMailboxObjectID alloc];
      v15 = [v24 URL];
      v16 = [v14 initWithURL:v15];

      v17 = [v9 removeSendLaterDateFromMessage:v6 draftsMailboxObjectID:v16];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10007CEC4;
      v25[3] = &unk_10064DD80;
      v25[4] = a1;
      v18 = v6;
      v26 = v18;
      [v17 addFailureBlock:v25];
      v19 = [a1 countOfMessages];
      v20 = [v18 itemID];
      v29 = v20;
      v21 = [NSArray arrayWithObjects:&v29 count:1];

      v22 = [a1 messageList];
      [a1 _deleteItemsWithIDs:v21 fromCollection:v22 completionHandler:0];

      v23 = [a1 delegate];
      if ((objc_opt_respondsToSelector() & (v19 == 1)) == 1)
      {
        [v23 conversationViewController:a1 willRemoveAllVisibleMessagesWithItemIDs:v21];
      }
    }
  }
}

void sub_10007CCA0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 collectionViewDataSource];
    v8 = [v5 itemID];
    v9 = [v7 indexPathForItemIdentifier:v8];

    if (v9)
    {
      v10 = [a1 collectionView];
      v11 = [v10 cellForItemAtIndexPath:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 messageViewController];
        v13 = [v12 messageContentView];
        v14 = [v13 headerView];

        v15 = [v14 viewModel];
        v16 = [v15 updatedModelWithBuilder:v6];

        [a1 _headerView:v14 displayWithBannerForViewModel:v16 message:v5];
      }

      else
      {
        v17 = +[ConversationViewController log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10048515C();
        }
      }
    }
  }
}

void sub_10007CEC4(uint64_t a1)
{
  v2 = +[ConversationViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) itemID];
    v7 = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to remove send later date from message (id=%@)", &v7, 0x20u);
  }
}

BOOL sub_10007D384(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_10007D3DC(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void sub_10007D70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_10007D9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007DA1C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained scene];
  v5 = [v4 daemonInterface];
  v6 = [v5 interactionLogger];
  [v6 scrolledToEndOfMessage:v7];
}

void sub_10007DAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_10007E47C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:v1];
}

void sub_10007E650(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _updateFooterViewFrameForCell:v3];
  }
}

void sub_10007E7B4(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) referenceMessageList];
  [v16 setReferenceMessageList:v3];

  v4 = [*(a1 + 32) referenceMessageListItem];
  [v16 setReferenceMessageListItem:v4];

  [v16 setShowAsConversation:{objc_msgSend(*(a1 + 32), "shownAsConversation")}];
  v5 = [*(a1 + 32) pinnedItem];
  v6 = [v5 itemID];
  [v16 setScrolledItemID:v6];

  v7 = [*(a1 + 32) pinnedItem];
  v8 = [v7 dynamicOffset];
  [v16 setScrolledItemOffset:v8];

  v9 = [*(a1 + 32) cellConfigurator];
  v10 = [v9 expansionTracker];
  v11 = [v10 dictionaryRepresentation];
  [v16 setExpansionTrackerState:v11];

  v12 = [*(a1 + 32) disabledMarkAsReadMessageItemIDs];
  v13 = [v12 copy];
  [v16 setDisabledMarkAsReadMessageItemIDs:v13];

  v14 = [*(a1 + 32) expandedContentItemIDs];
  v15 = [v14 copy];
  [v16 setExpandedContentItemIDs:v15];
}

void sub_10007EB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 64));

  _Unwind_Resume(a1);
}

void sub_10007EBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 referenceMessageList];
    v6 = [v3 referenceMessageListItem];
    v27 = 138412546;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "State is available. Setting message list and reference item. messageList=%@ referenceItem=%@", &v27, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[36];
    v10 = [v3 referenceMessageListItem];
    v11 = [v3 referenceMessageList];
    [v8 setReferenceMessageListItem:v10 referenceMessageList:v11 showAsConversation:objc_msgSend(v3 animated:{"showAsConversation"), (v9 >> 4) & 1}];

    v12 = [v3 scrolledItemID];

    if (v12)
    {
      v13 = [v3 scrolledItemID];
      v14 = [v3 scrolledItemOffset];
      v15 = [v8 pinnedIndexPathProvider];
      v16 = [PinnedConversationItem pinnedItemWithID:v13 dynamicOffset:v14 indexPathProvider:v15];
      [v8 setPinnedItem:v16];
    }

    v17 = [v3 expansionTrackerState];
    if ([v17 count])
    {
      v18 = +[ConversationViewController log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Restoring expansion tracker.", &v27, 2u);
      }

      v19 = [v8 cellConfigurator];
      v20 = [v19 expansionTracker];
      [v20 restoreDictionaryRepresentation:v17];
    }

    v21 = [v3 disabledMarkAsReadMessageItemIDs];
    if ([v21 count])
    {
      v22 = +[ConversationViewController log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Restoring disabled auto mark-as-read item IDs.", &v27, 2u);
      }

      v23 = [v21 mutableCopy];
      [v8 setDisabledMarkAsReadMessageItemIDs:v23];
    }

    v24 = [v3 expandedContentItemIDs];
    if ([v24 count])
    {
      v25 = +[ConversationViewController log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Restoring expanded content item IDs.", &v27, 2u);
      }

      v26 = [v24 mutableCopy];
      [v8 setExpandedContentItemIDs:v26];
    }
  }
}

void sub_10007EF80(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_10007F078(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100485198();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRestorationFuture:0];
}

EMMessage *__cdecl sub_10007F2BC(id a1, MFConversationViewCell *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MFConversationViewCell *)v2 viewModel];
    v4 = [v3 messageContentRequest];
    v5 = [v4 messageFuture];
    v6 = [v5 resultIfAvailable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10007F92C(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationHeaderView];
  [v1 resetStateBasedOnCurrentStickySubjectPosition];
}

void sub_10007FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_10007FE08(uint64_t a1, uint64_t a2)
{
  v3 = [NSIndexPath indexPathForItem:a2 inSection:0];
  v4 = [*(a1 + 32) cellConfigurator];
  v5 = [v4 messageAtIndexPathIsExpanded:v3];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }

  return v5;
}

BOOL sub_10008034C(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = [(EMMailbox *)v2 type]== 5 || [(EMMailbox *)v2 type]== 6;

  return v3;
}

void sub_100080778(id a1, MFExpandedMessageCell *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(MFExpandedMessageCell *)a2 messageViewController:a3];
  v5 = [v4 messageContentView];

  [v5 clearAllDecoratedFoundText];
}

void sub_100080CC4(void *a1, char a2)
{
  if (a1)
  {
    v4 = [a1 cellConfigurator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000813D8;
    v8[3] = &unk_10064DF98;
    v9 = a2;
    [v4 enumerateExpandedCellsWithBlock:v8];

    v5 = [a1 cellConfigurator];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000814A4;
    v6[3] = &unk_10064DFB8;
    v7 = a2;
    [v5 enumerateCollapsedCellsWithBlock:v6];
  }
}

void sub_10008122C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!CGRectIsNull(*&a2))
  {
    v10 = +[ConversationViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v30.origin.x = a2;
      v30.origin.y = a3;
      v30.size.width = a4;
      v30.size.height = a5;
      v11 = NSStringFromCGRect(v30);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v24 = 138412802;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "found rect: %@ for range: %@, document: %@", &v24, 0x20u);
    }

    v14 = [*(a1 + 48) collectionView];
    [v14 convertRect:*(a1 + 56) fromView:{a2, a3, a4, a5}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [*(a1 + 48) collectionView];
    [v23 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];
  }
}

void sub_1000813D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == 1)
  {
    v4 = [v3 messageViewController];
    v5 = [v4 messageContentView];
    [v5 didBeginTextSearch];
  }

  else
  {
    v4 = [v3 messageViewController];
    v5 = [v4 messageContentView];
    [v5 didEndTextSearch];
  }
}

void sub_10008146C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000814A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    [v3 addConversationSearchOverlay];
  }

  else
  {
    [v3 removeConversationSearchOverlay];
  }
}

void sub_100081D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100081E0C(id *a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a3)
  {
    if ([a1[4] isRemoveReadLater])
    {
      v6 = [a1[5] message];
      sub_10007CCA0(WeakRetained, v6, &stru_10064DFD8);
    }

    else
    {
      v7 = [a1[4] selectedDate];

      if (v7)
      {
        v8 = [a1[5] message];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100081F5C;
        v9[3] = &unk_10064DD58;
        v10 = a1[4];
        sub_10007CCA0(WeakRetained, v8, v9);
      }
    }
  }
}

void sub_100081F5C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) selectedDate];
  [v4 setReadLaterDate:v3];
}

void sub_100082164(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewDataSource];
  v3 = [v2 indexPathForItemIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 72) - *(a1 + 56);
    v5 = -v4;
    if (v4 >= 0.0)
    {
      v5 = *(a1 + 72) - *(a1 + 56);
    }

    if (v5 >= 2.22044605e-16)
    {
      v6 = [*(a1 + 32) cellConfigurator];
      v7 = [v6 sizeTracker];
      [v7 setIntrinsicSize:*(a1 + 40) forCellWithItemID:{*(a1 + 64), *(a1 + 72)}];

      v8 = objc_alloc_init(UICollectionViewFlowLayoutInvalidationContext);
      [v8 setContentSizeAdjustment:{0.0, v4}];
      v9 = [*(a1 + 32) collectionView];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000823B4;
      v20 = &unk_10064C660;
      v10 = v8;
      v21 = v10;
      v11 = v9;
      v22 = v11;
      v12 = objc_retainBlock(&v17);
      v13 = [*(a1 + 32) cellConfigurator];
      v14 = [v13 animatePendingHeightChangesIfNecessary];

      if ((v14 & 1) == 0)
      {
        (v12[2])(v12);
      }
    }
  }

  else
  {
    v15 = [*(a1 + 32) collectionView];
    v16 = [v15 collectionViewLayout];
    [v16 invalidateLayout];
  }
}

void sub_10008233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v19 = v15;

  _Unwind_Resume(a1);
}

void sub_1000823B4(uint64_t a1)
{
  v2 = +[ConversationViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) contentSizeAdjustment];
    v3 = NSStringFromSize(v10);
    [*(a1 + 32) contentOffsetAdjustment];
    v4 = NSStringFromPoint(v11);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidate collection view layout (cSA=%@, cOA=%@)", &v6, 0x16u);
  }

  v5 = [*(a1 + 40) collectionViewLayout];
  [v5 invalidateLayoutWithContext:*(a1 + 32)];
}

void sub_10008260C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"conversationID"];

  if (v3)
  {
    v4 = [*(a1 + 40) referenceMessageListItem];
    v5 = [v4 conversationID];
    v6 = [v3 longLongValue];

    if (v5 == v6)
    {
      v7 = [*(a1 + 40) collectionViewDataSource];
      v8 = [*(a1 + 40) topSummaryItemID];
      v9 = [v7 indexPathForItemIdentifier:v8];

      if (v9)
      {
        v10 = *(a1 + 40);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10008286C;
        v12[3] = &unk_10064C660;
        v12[4] = v10;
        v13 = v9;
        [v10 _scrollToItemAtIndexPath:v13 dynamicOffset:0 shouldAdjustToShowPreviousMessage:0 animated:1 pin:0 completion:v12];
      }

      else
      {
        v11 = +[ConversationViewController log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 32) userInfo];
          [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"mailMessageIDs"];
          objc_claimAutoreleasedReturnValue();
          sub_1004851DC();
        }
      }
    }
  }
}

void sub_1000827E8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10008286C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

  if (v3 && ([v3 itemID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "topSummaryItemID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqual:", v5), v5, v4, v6))
  {
    [v3 beginSummarizing];
  }

  else
  {
    v7 = [*(a1 + 32) summaryCellPromiseForAppIntent];
    [v7 cancel];

    v8 = +[EFPromise promise];
    [*(a1 + 32) setSummaryCellPromiseForAppIntent:v8];

    objc_initWeak(&location, *(a1 + 32));
    v9 = [*(a1 + 32) summaryCellPromiseForAppIntent];
    v10 = [v9 future];
    v11 = +[EFScheduler mainThreadScheduler];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100082A8C;
    v12[3] = &unk_10064E028;
    objc_copyWeak(&v13, &location);
    [v10 onScheduler:v11 addSuccessBlock:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void sub_100082A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_100082A8C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v7 itemID];
  v5 = [WeakRetained topSummaryItemID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v7 beginSummarizing];
  }
}

void sub_100082B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100082C38(uint64_t a1)
{
  v2 = [*(a1 + 32) _referenceMessageListItemIDIfMatchingNotification:*(a1 + 40)];
  if (v2)
  {
    v3 = +[ConversationViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoked _appIntentDidSetReminder, calling _updateBannerForMessage for ID: %{public}@", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [v4 referenceMessageListItem];
    v6 = [v5 displayMessage];
    v7 = [v6 result];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100082DF8;
    v8[3] = &unk_10064DD58;
    v9 = *(a1 + 40);
    sub_10007CCA0(v4, v7, v8);
  }
}

void sub_100082DF8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"date"];
  [v5 setReadLaterDate:v4];
}

void sub_100082E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100082F7C(uint64_t a1)
{
  v2 = [*(a1 + 32) _referenceMessageListItemIDIfMatchingNotification:*(a1 + 40)];
  if (v2)
  {
    v3 = +[ConversationViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoked _appIntentDidDeleteReminder, calling _updateBannerForMessage for ID: %{public}@", &v8, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [v4 referenceMessageListItem];
    v6 = [v5 displayMessage];
    v7 = [v6 result];
    sub_10007CCA0(v4, v7, &stru_10064E048);
  }
}

void sub_1000831C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _referenceMessageListItemIDIfMatchingNotification:*(a1 + 40)];
  if (v2)
  {
    v3 = +[ConversationViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoked _appIntentDidRemoveFollowUp, calling _updateBannerForMessage for ID: %{public}@", &v8, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [v4 referenceMessageListItem];
    v6 = [v5 displayMessage];
    v7 = [v6 result];
    sub_10007CCA0(v4, v7, &stru_10064E068);
  }
}

void sub_100084228(id a1)
{
  v1 = os_log_create("com.apple.mobilemail", [@"ConversationViewController" UTF8String]);
  v2 = qword_1006DCE28;
  qword_1006DCE28 = v1;
}

void sub_10008487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v23 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100084904(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateForceCollapsedSenderHeader];
  }
}

void sub_1000849D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ConversationViewControllerBase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100084A18(void *a1, int a2)
{
  if (a1)
  {
    v4 = [a1 scene];
    v5 = [a1 viewIfLoaded];
    v6 = [v5 window];

    if (v4)
    {
      if ([v4 activationState])
      {
        v7 = [v4 activationState] == 1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134219264;
      v11 = a1;
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = v6 != 0;
      v16 = 1024;
      v17 = v7;
      v18 = 2048;
      v19 = [v4 activationState];
      v20 = 1024;
      v21 = [v4 _isPerformingSystemSnapshot];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%p: _updatePreviewStateForAppearingTransition:%{BOOL}d (hasWindow:%{BOOL}d, isSceneActive:%{BOOL}d, activationState:%ld, isPerformingSystemSnapshot=%{BOOL}d)", &v10, 0x2Eu);
    }

    if (!v7)
    {
      goto LABEL_16;
    }

    if (a2 && v6)
    {
      v9 = [a1 previewState];
      [v9 transitionAfterViewDidAppear];
    }

    else
    {
      if (a2)
      {
LABEL_16:

        return;
      }

      v9 = [a1 previewState];
      [v9 transitionAfterViewDidDisappear];
    }

    goto LABEL_16;
  }
}

void sub_1000853D0(uint64_t a1, void *a2)
{
  v3 = [a2 messageViewController];
  v4 = [v3 messageContentView];

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) removeObject:v4];
}

void sub_100085758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v28 - 112));

  _Unwind_Resume(a1);
}

void sub_1000857C4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained cellConfigurator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085880;
  v5[3] = &unk_10064E150;
  v6 = a2;
  [v4 enumeratePreparedCellsWithBlock:v5];
}

void sub_100085880(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setInteractivelyResizing:*(a1 + 32)];
  }
}

uint64_t sub_100085910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100085928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

id sub_100085E0C(uint64_t a1)
{
  if ([*(a1 + 32) resizingState] != 3)
  {
    [*(a1 + 32) _calculateCollectionViewInsets];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [*(a1 + 32) collectionView];
    [v10 contentInset];
    if (v14 == v5 && v11 == v3 && v13 == v9)
    {
      v17 = v12;

      if (v17 == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v18 = [*(a1 + 32) collectionView];
    [v18 setContentInset:{v3, v5, v7, v9}];
  }

LABEL_12:
  v19 = *(a1 + 32);

  return [v19 _updateCollectionViewMargins];
}

void sub_100086094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100086710(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 messageViewController];
  v4 = [*(a1 + 32) contactStore];
  v5 = [v4 cnStore];
  v6 = [v3 participantHeaderForContactStore:v5];

  [v6 setDisplayOptions:{objc_msgSend(*(a1 + 32), "_headerDisplayOptionsForCell:displayedAsSingleMessage:", v7, objc_msgSend(*(a1 + 32), "_isDisplayingSingleMessage"))}];
}

id sub_1000869C4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100086A6C;
  v3[3] = &unk_10064C7E8;
  v3[4] = *(a1 + 32);
  [UIView performWithoutAnimation:v3];
  [*(a1 + 32) _updateLayout];
  result = [*(a1 + 32) shouldShowNoMessageSelectedView];
  if (result)
  {
    return [*(a1 + 32) setNeedsUpdateContentUnavailableConfiguration];
  }

  return result;
}

void sub_100086A6C(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];

  v4 = [*(a1 + 32) collectionView];
  [v4 setNeedsLayout];
}

void sub_100086B0C(uint64_t a1)
{
  [*(a1 + 32) _endResizingConversationView];
  if ((+[UIDevice mf_isPadIdiom]& 1) == 0)
  {
    v7 = [*(a1 + 32) traitCollection];
    v2 = [v7 horizontalSizeClass];

    if (v2 == 1)
    {
      v8 = [*(a1 + 32) collectionView];
      v3 = [v8 window];
      v4 = [v3 windowScene];
      v5 = [v4 effectiveGeometry];
      v6 = [v5 interfaceOrientation];

      v9 = [*(a1 + 32) collectionView];
      [v9 _setHiddenPocketEdges:4 * ((v6 - 3) < 2)];
    }
  }
}

void sub_100086DDC(uint64_t a1)
{
  v2 = sub_10001F2A0(*(a1 + 32));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) collectionView];
  [v9 setFrame:{v2, v4, v6, v8}];
}

void sub_1000879FC(uint64_t a1)
{
  CGAffineTransformMakeRotation(&v15, 0.420624356);
  v2 = *(a1 + 32);
  v14 = v15;
  [v2 setTransform:&v14];
  v3 = *(a1 + 40);
  [*(a1 + 48) frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 48) superview];
  [v3 convertRect:v12 fromView:{v5, v7, v9, v11}];
  [*(a1 + 32) setFrame:?];

  [*(a1 + 56) setAlpha:0.0];
  [*(a1 + 32) setAlpha:0.0];
  if (*(a1 + 72) == 1)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"MFMailConversationViewWillBeginDeleteAnimation" object:*(a1 + 64)];
  }
}

uint64_t sub_100087B18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"MFMailConversationViewDidFinishDeleteAnimationNotification" object:*(a1 + 32)];
  }

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

EMCollectionItemID *__cdecl sub_100087CB8(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_100088508(id *a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = [a1[4] viewModel];
    v5 = a1[5];

    if (v4 == v5)
    {
      v6 = [v9 avatarType];
      v7 = [a1[5] avatarResult];
      v8 = [v7 avatarType];

      if (v6 > v8)
      {
        [a1[5] setAvatarResult:v9];
        [WeakRetained _updateSenderHeaderView:a1[4] viewModel:a1[5] expansionStatus:0];
      }
    }
  }
}

void sub_1000896D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1000896FC(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isCollapsed])
  {
    v3 = [v7 mailboxPickerNavController];
    v4 = [v3 navigationBar];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_100089BDC(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationItem];
  [v1 setStandardAppearance:0];
  [v1 setScrollEdgeAppearance:0];
  [v1 setCompactAppearance:0];
  [v1 setCompactScrollEdgeAppearance:0];
}

void sub_100089FB0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:v5];

  [*(a1 + 40) addObject:v4];
}

void sub_10008A354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008A418(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v5 = v3;
  v4 = [*(a1 + 32) indexPathForCell:?];
  if (*(a1 + 56) != [v5 isConfiguredForSingleMessageDisplay])
  {
    [*(a1 + 40) addObject:v4];
  }
}

void sub_10008A6DC(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 invalidateLayoutWithContext:*(a1 + 40)];
}

void sub_10008AF30(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    if ([v3 hasVisibleContent])
    {
      v4 = *(a1 + 32);
      v5 = [v3 viewModel];
      [v4 scheduleAutomaticMarkAsReadForViewModel:v5];
    }
  }

  v6 = *(a1 + 32);
  if ((v6[32] & 1) == 0)
  {
    [v6 _updateFooterViewFrameForCell:v7];
  }
}

void sub_10008B3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10008B968(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v7 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    if ([v3 hasVisibleContent])
    {
      v4 = *(a1 + 32);
      v5 = [v3 viewModel];
      [v4 scheduleAutomaticMarkAsReadForViewModel:v5];
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_10008C458(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _reloadCellsAtIndexPaths:*(a1 + 32) animated:0];
  }

  else
  {
    v6 = [v3 collectionView];
    [v6 reloadData];
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(a1 + 56) dynamicOffset];
  [v4 _scrollToItemAtIndexPath:v5 dynamicOffset:? shouldAdjustToShowPreviousMessage:? animated:? pin:? completion:?];
}

void sub_10008CC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10008D190(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_10008E14C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _layoutAttributesForItemAtIndexPath:v3];
  v5 = [EFPair pairWithFirst:v3 second:v4];

  return v5;
}

id sub_10008E1E8(uint64_t a1)
{
  if ((*(*(a1 + 32) + 36) & 8) != 0)
  {
    v5 = 0;
    v4 = *(a1 + 64);
  }

  else
  {
    v2 = [*(a1 + 40) row];
    v3 = [*(a1 + 32) countOfMessages];
    v4 = *(a1 + 64);
    v5 = v2 == v3;
    if (v2 == v3 && v4 < 0.0)
    {
      [*(a1 + 32) _updateBottomPaddingWithLastItemHeight:*(a1 + 72)];
      v5 = 1;
    }
  }

  v6 = +[ConversationViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 48) contentSizeAdjustment];
    v7 = NSStringFromSize(v15);
    [*(a1 + 48) contentOffsetAdjustment];
    v8 = NSStringFromPoint(v16);
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidate collection view layout (cSA=%@, cOA=%@)", &v11, 0x16u);
  }

  *(*(a1 + 32) + 32) = 1;
  v9 = [*(a1 + 56) collectionViewLayout];
  [v9 invalidateLayoutWithContext:*(a1 + 48)];

  result = [*(a1 + 56) layoutIfNeeded];
  *(*(a1 + 32) + 32) = 0;
  if (v5 && v4 >= 0.0)
  {
    return [*(a1 + 32) _updateBottomPaddingWithLastItemHeight:*(a1 + 72)];
  }

  return result;
}

void sub_10008ECB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008ED5C;
  v2[3] = &unk_10064E3C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _executeIfSplitViewIsAvailable:v2];
}

void sub_10008ED5C(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 displayMode] == 1)
  {
    [v9 showMessageListViewController:1 animated:0 completion:0];
  }

  v3 = [*(a1 + 32) splitViewController];
  v4 = [v3 viewControllerForColumn:0];

  v5 = [v4 popViewControllerAnimated:0];
  v6 = [*(a1 + 32) delegate];
  v7 = [*(a1 + 40) firstObject];
  v8 = [CSSuggestion mui_spotlightSuggestionForEmailAddress:v7 scope:0 currentSuggestion:0];

  [v6 conversationViewController:*(a1 + 32) beginSearchWithSuggestion:v8 scope:@"allMailboxes"];
}

void sub_100090008(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t sub_100090084(uint64_t *a1, char *a2)
{
  v2 = a1;
  if (a1)
  {
    if ((*(a1 + 36) & 0x10) == 0)
    {
      return 0;
    }

    v4 = [a1 view];
    v5 = [v4 window];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = sub_10048C8C4(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v2 presentedViewController];
    if (v7)
    {
      v8 = sub_100090254(v2);

      if (v6 & 1 | !v8)
      {
        goto LABEL_18;
      }
    }

    else if (v6)
    {
      goto LABEL_18;
    }

    v9 = [v2 referenceMessageListItem];

    if (v9)
    {
      if ("_selectNextMessageCommandInvoked:" == a2)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        if ("_selectPreviousMessageCommandInvoked:" != a2)
        {
          if ("find:" == a2 || "findNext:" != a2 && "findPrevious:" != a2)
          {
            v2 = 1;
LABEL_23:

            return v2;
          }

          v11 = sub_100054744(*(v2 + 368));
LABEL_22:
          v2 = v11;
          goto LABEL_23;
        }

        v10 = 1;
      }

      v11 = [v2 _canBrowseInDirection:v10];
      goto LABEL_22;
    }

LABEL_18:
    v2 = 0;
    goto LABEL_23;
  }

  return v2;
}

BOOL sub_100090254(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_100090894(a1);
  v2 = [v1 navigationItem];
  v3 = [v2 style] == 1;

  return v3;
}

void sub_100090418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100090440(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = [v3 conversationViewControllerCanPerformAction:a1[6] withSender:a1[4]];
}

id sub_100090894(void *a1)
{
  if (a1)
  {
    v1 = [a1 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 topViewController];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100090924(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100090894(a1);
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v3 = [v2 wantsDesktopClassNavigationBar], v4 = v2, (v3 & 1) == 0))
    {
      v4 = v1;
    }

    v1 = v4;
  }

  return v1;
}

void sub_100090B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100090B64(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 isCollapsed] ^ 1;
}

void sub_1000919AC(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  if (*(a1 + 64) == 1 && (*(a1 + 65) & 1) == 0 && *(a1 + 56) == a3)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  [*(a1 + 32) addObject:v5];
  if (*(a1 + 64) != 1 || *(a1 + 65) == 1 && *(a1 + 56) == a3 && ([*(a1 + 32) addObject:*(a1 + 40)], (*(a1 + 64) & 1) == 0))
  {
    if (*(a1 + 65) == 1)
    {
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    else if ([*(*(a1 + 48) + 280) count] - 1 <= a3)
    {
      goto LABEL_14;
    }

    [*(a1 + 32) addObject:*(a1 + 40)];
  }

LABEL_14:
}

void sub_100091D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100091D74(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 supplementaryButtonItem];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000921DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_1000927A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = ConversationViewControllerBase;
  return objc_msgSendSuper2(&v5, "presentViewController:animated:completion:", v1, v2, v3);
}

void sub_100092A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1000930CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100093394(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1000935B0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(*(a1 + 32) + 36) = v3 & 0x80 | *(*(a1 + 32) + 36) & 0x7F;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v10 + 1) + 8 * i) layer];
        [v9 setAllowsGroupOpacity:a2 ^ 1u];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000943C8(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1000946E4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100094734(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellConfigurator];
  [v3 setCellAtIndexPath:qword_1006DCE40 highlighted:a2 animated:1];
}

void sub_100095B18(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCE48;
  qword_1006DCE48 = v1;
}

void sub_100095C3C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DCE58;
  qword_1006DCE58 = v1;
}

void sub_1000967E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose((v27 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000969A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSObject *sub_1000969B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004855E4(v5, v9);
    }

    goto LABEL_8;
  }

  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(*(*(a1 + 40) + 8) + 40) ef_publicDescription];
      sub_10048565C(v5, v11, v15);
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v9 = v9;
  v12 = v9;
LABEL_9:

  return v12;
}

void sub_100097064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak((v38 - 160));

  _Unwind_Resume(a1);
}

id sub_10009711C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  v3 = *(a1 + 32);

  return [v3 stopObserving:WeakRetained];
}

id sub_100097164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Message list loaded reference item into collection: %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) setReferenceMessageList:v3];
  v5 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Querying reference item...", &v8, 2u);
  }

  [*(a1 + 32) _logSignpostForReferenceItemRequest];
  v6 = [v3 messageListItemForItemID:*(a1 + 40)];

  return v6;
}

EFFuture *__cdecl sub_1000972C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_1004856B4(v4, v8, v3);
  }

  v5 = [NSError mf_restorationMessageNotAvailableErrorWithUnderlyingError:v2];
  v6 = [EFFuture futureWithError:v5];

  return v6;
}

id sub_1000973EC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logSignpostForReferenceItemLoadCompleteWithSuccess:1];
  v4 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Message list returned reference item: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) setReferenceMessageListItem:v3];
  v5 = [EFFuture futureWithResult:*(a1 + 32)];

  return v5;
}

void sub_10009750C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logSignpostForReferenceItemLoadCompleteWithSuccess:0];
  if ([v3 ef_isCancelledError])
  {
    v4 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      v5 = "State restoration future was cancelled.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v7, 2u);
    }
  }

  else if ([v3 em_isItemNotFoundError])
  {
    v4 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      v5 = "State restoration reference item is no longer available.";
      goto LABEL_7;
    }
  }

  else
  {
    v4 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 ef_publicDescription];
      sub_10048570C(v6, v7, v4);
    }
  }
}

BOOL sub_1000979B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 ef_publicDescription];
      sub_100485764(v5, v9, v12);
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  return v7 == 0;
}

void sub_100097AC4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100098494(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 delegate];
  v4 = [v3 presentingViewControllerForDebugButtonCell:v6];

  v5 = [*(a1 + 32) new];
  [v4 showViewController:v5 sender:v6];
}

void sub_100098778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000987A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained methodSignatureForSelector:*(a1 + 40)];
    v4 = [NSInvocation invocationWithMethodSignature:v3];
    [v4 setTarget:v5];
    [v4 setSelector:*(a1 + 40)];
    [v4 invoke];

    WeakRetained = v5;
  }
}

void sub_100098A44(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_100098DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) selectionSwitch];
  v5 = [v6 isOn];

  if (v5 != a3)
  {
    v7 = [*(a1 + 32) selectionSwitch];
    [v7 setOn:a3 animated:1];
  }
}

id sub_100099784(uint64_t a1)
{
  v1 = [*(a1 + 32) dockedStates];
  v2 = [v1 copy];

  return v2;
}

id sub_1000999F8(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) dockIdentifier];
  v5 = v4;
  if (!a2 || v4)
  {
    v7 = [*(a1 + 40) dockedStates];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100099BB0;
    v13[3] = &unk_10064E678;
    v14 = v5;
    v8 = [v7 ef_any:v13];

    v9 = v8 ^ 1;
    if (!a2)
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = [*(a1 + 40) dockedStates];
      [v10 insertObject:*(a1 + 32) atIndex:0];

      v11 = [*(a1 + 40) dockedStates];
      v6 = [v11 copy];
    }

    else
    {
      +[NSError ef_notSupportedError];
      *a2 = v6 = 0;
    }
  }

  else
  {
    +[NSError ef_notSupportedError];
    *a2 = v6 = 0;
  }

  return v6;
}

id sub_100099BB0(uint64_t a1, void *a2)
{
  v3 = [a2 dockIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100099E2C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) dockedStates];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100099F98;
  v10[3] = &unk_10064E678;
  v11 = *(a1 + 40);
  v5 = [v4 ef_firstObjectPassingTest:v10];

  if (v5)
  {
    v6 = [*(a1 + 32) dockedStates];
    [v6 removeObject:v5];

    v7 = [*(a1 + 32) dockedStates];
    v8 = [v7 copy];
  }

  else if (a2)
  {
    +[NSError ef_notSupportedError];
    *a2 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100099F98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dockIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_10009A0E4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) observers];
    [v4 addObject:*(a1 + 40)];

    v5 = [*(a1 + 32) dockedStates];
    v6 = [v5 copy];

    v7 = +[EFScheduler mainThreadScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009A248;
    v11[3] = &unk_10064C6B0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    v10 = v6;
    v14 = v10;
    [v7 performBlock:v11];
  }
}

void sub_10009A338(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

uint64_t sub_10009A3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 autosaveIdentifier];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 autosaveIdentifier];
    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10009A41C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10009A448(id a1, MSIdleAutosaveItem *a2)
{
  v2 = a2;
  v3 = [(MSIdleAutosaveItem *)v2 autosaveIdentifier];
  v4 = [(MSIdleAutosaveItem *)v2 subject];
  v5 = [DockedViewControllerState withID:v3 title:v4];

  return v5;
}

void sub_10009A66C(uint64_t a1)
{
  v2 = +[DockContainerPersistence log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Notifying observers of change originating from sender: %{public}@.", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v7 = *v13;
    *&v6 = 138543362;
    v11 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [DockContainerPersistence log:v11];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v11;
          v18 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Notifying %{public}@ of change.", buf, 0xCu);
        }

        [v9 dockContainerPersistence:*(a1 + 48) observer:*(a1 + 32) updatedDockedStates:*(a1 + 56)];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_10009A9BC(uint64_t a1, void *a2)
{
  if ([a2 isCanceled])
  {
    v3 = +[DockContainerPersistence log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Write to disk cancelled.", buf, 2u);
    }
  }

  else
  {
    v6 = [DockPersistenceSerialization dictionaryFromDockedStates:*(a1 + 32)];
    v4 = +[MailPersistentStorage sharedStorage];
    [v4 setSceneRestorationDictionary:v6];

    v5 = +[MailPersistentStorage sharedStorage];
    [v5 save];
  }
}

void sub_10009AAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10009AC44(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = *v16;
    *&v6 = 138543362;
    v14 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (([v3 containsObject:{v9, v14, v15}] & 1) == 0)
        {
          v10 = +[DockContainerPersistence log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v9 dockIdentifier];
            *buf = v14;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Migration successful for %{public}@. Removing corresponding dock draft next.", buf, 0xCu);
          }

          v12 = *(a1 + 40);
          v13 = [v9 dockIdentifier];
          [v12 removeDockedStateWithIdentifier:v13 sender:0];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

id sub_10009B1B4(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___DockableViewController])
    {
      a1 = [v4 canBeDocked];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_10009BB78(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  [*(a1 + 40) setActiveTiltedTabViewController:0];
  [*(a1 + 40) _cleanupOffscreenDockedViews];
  v3 = *(a1 + 40);

  return [v3 setNeedsFocusUpdate];
}

void sub_10009BBFC(uint64_t a1)
{
  [*(a1 + 32) dismiss];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];
}

id sub_10009BC68(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setNextPresentationAnimation:0];
}

void sub_10009BCB0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

id sub_10009BD24(uint64_t a1)
{
  v2 = [*(a1 + 40) dockView];
  v3 = [v2 backgroundColor];
  v4 = [*(a1 + 32) view];
  [v4 setBackgroundColor:v3];

  v5 = *(a1 + 32);

  return [v5 dismiss];
}

void sub_10009C2C0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

id sub_10009CE40(uint64_t a1, void *a2)
{
  v3 = [a2 dockIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10009D358(uint64_t a1)
{
  result = [*(a1 + 32) isExposeModeActivated];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 deactivateExposeModeAnimated:v4];
  }

  return result;
}

void sub_10009DC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = +[DockContainerViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100485BC8();
    }

    [*(a1 + 32) setDockingTransitionState:0];
    v5 = [*(a1 + 32) view];
    [v5 setNeedsLayout];

    [*(a1 + 40) setTransitioningDelegate:0];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) didCancelDocking];
    }
  }
}

void sub_10009DF2C(uint64_t a1)
{
  [*(a1 + 32) setDockingTransitionState:0];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_10009E558(id *a1)
{
  [a1[4] addSubview:a1[5]];
  [a1[5] setAlpha:1.0];
  v2 = [a1[6] view];
  [v2 setNeedsLayout];

  v3 = [a1[6] view];
  [v3 layoutIfNeeded];
}

id sub_10009E5F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (([*(a1 + 32) draftWasTornOff] & 1) == 0)
    {
      v3 = [*(a1 + 32) persistence];
      [v3 pushNewDockedState:*(a1 + 40) sender:*(a1 + 32)];

      v4 = [*(a1 + 32) dockedViews];
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) dockIdentifier];
      [v4 setObject:v5 forKey:v6];

      v7 = [*(a1 + 32) delegate];
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) dockIdentifier];
      [v7 dockContainer:v8 dockedViewControllerWithIdentifier:v9];

      [*(a1 + 56) setShadowVisible:0];
      v10 = [*(a1 + 32) view];
      [v10 addSubview:*(a1 + 48)];

      [*(a1 + 32) _configureNewDockedView:*(a1 + 48)];
      [*(a1 + 32) _cleanupOffscreenDockedViews];
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 64) didCompleteDocking];
      }
    }
  }

  v11 = *(a1 + 32);

  return [v11 setDockingTransitionState:2];
}

void sub_10009E8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v17;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10009E8F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dockViewTapped];
}

void sub_10009EB18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10009EE90(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_10009F0B0(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_10009F614(uint64_t a1)
{
  [*(a1 + 32) setDockingTransitionState:1];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

uint64_t sub_10009F6A4(uint64_t a1)
{
  [*(a1 + 32) _cleanupOffscreenDockedViews];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10009FA9C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000A0658(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000A0B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1000A1BD8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCE90;
  qword_1006DCE90 = v1;
}

void sub_1000A20BC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1000A2740(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

BOOL sub_1000A27C0(id a1, DockedViewControllerState *a2)
{
  v2 = a2;
  v3 = [(RestorableViewControllerState *)v2 storedUserActivity];
  v4 = [v3 userInfo];
  v5 = [v4 ef_objectOfClass:objc_opt_class() forKey:MSMailActivityHandoffComposeKeyAutosaveID];

  if (v5)
  {
    v6 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found ID (%@) in stored user activity. Setting on state object.", &v9, 0xCu);
    }

    [(DockedViewControllerState *)v2 setDockIdentifier:v5];
  }

  else
  {
    v7 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100485ED8();
    }
  }

  return v5 != 0;
}

void sub_1000A2B28(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

BOOL sub_1000A2B8C(id a1, DockedViewControllerState *a2)
{
  v2 = a2;
  v3 = [(RestorableViewControllerState *)v2 storedUserActivity];
  v4 = [v3 userInfo];
  v5 = [v4 ef_objectOfClass:objc_opt_class() forKey:MSMailActivityHandoffComposeKeyAutosaveID];

  if (v5)
  {
    v6 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dock state identifier: %@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100485F40();
    }
  }

  return v5 != 0;
}

void sub_1000A4A3C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000A4C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1000A51F8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1000A5980(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = [*(a1 + 32) _messageContentViewForVisibleMessage];
    [v3 clearSelectedHTML];
  }
}

id sub_1000A59F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = objc_opt_class();
    v6 = [a1 scene];
    v7 = [a1 contentRepresentationRequest];
    v8 = [v5 interactionWithContentRequest:v7 scene:v6];

    [v8 setIsActingOnEML:1];
    if (v4)
    {
      [v8 setOriginalContent:v4];
    }

    [v8 setDelegate:a1];
    [v8 setShouldPromptToLoadRestOfMessage:0];
    [v8 setAttachmentPolicy:3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1000A5B30(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 contentRepresentationRequest];
    v5 = [a1 scene];
    v6 = [(MFMessageCompositionTriageInteraction *)MFForwardTriageInteraction interactionWithContentRequest:v4 scene:v5];

    [v6 setIsActingOnEML:1];
    if (v3)
    {
      [v6 setOriginalContent:v3];
    }

    [v6 setDelegate:a1];
    [v6 setShouldPromptToLoadRestOfMessage:0];
    [v6 setAttachmentPolicy:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000A5F14(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 _getCurrentlySelectedMessageContentForVisibleMessage];
    v5 = sub_1000A59F4(a1, a2, v4);

    sub_1000A609C(a1, v5);
  }
}

void sub_1000A609C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A61C0;
    v5[3] = &unk_10064D720;
    v5[4] = a1;
    [v3 performInteractionWithCompletion:v5];
  }
}

void sub_1000A61C0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = [*(a1 + 32) _messageContentViewForVisibleMessage];
    [v3 clearSelectedHTML];
  }
}

id sub_1000A639C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 icon];
  }

  else
  {
    [MFMailboxUid iconForType:0];
  }
  v2 = ;

  return v2;
}

id sub_1000A6D20(uint64_t a1)
{
  if (*(a1 + 32) == 7)
  {
    v1 = qword_1006DCEA0;
    if (!qword_1006DCEA0)
    {
      v2 = [UIImage mf_systemImageNamed:MFImageGlyphFavoriteInboxUnifiedMailbox forView:7];
      v3 = qword_1006DCEA0;
      qword_1006DCEA0 = v2;

      v1 = qword_1006DCEA0;
    }

    v4 = v1;
  }

  else
  {
    v4 = [MFMailboxUid iconForType:?];
  }

  return v4;
}

id sub_1000A704C(uint64_t a1, void *a2)
{
  v2 = [a2 mailboxUidOfType:*(*(a1 + 32) + 96) createIfNeeded:0];

  return v2;
}

id sub_1000A7280(uint64_t a1)
{
  v1 = [SharedMailboxController sharedInstanceForSourceType:*(a1 + 32)];
  v2 = [v1 icon];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

void sub_1000A7A64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000A7E18(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCEA8;
  qword_1006DCEA8 = v1;
}

void sub_1000A8590(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000A92FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1000A9458(void *a1)
{
  v1 = a1;
  if (qword_1006DCEC0 != -1)
  {
    sub_100486094();
  }

  v2 = [qword_1006DCEB8 objectForKey:v1];
  if (!v2)
  {
    v2 = [v1 uniqueID];
    [qword_1006DCEB8 setObject:v2 forKey:v1];
  }

  return v2;
}

void sub_1000A96C4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_1000AA000()
{
  if (qword_1006DCED0 != -1)
  {
    sub_1004860A8();
  }

  v1 = qword_1006DCEC8;

  return v1;
}

void sub_1000AA044(uint64_t a1)
{
  v3 = [*(a1 + 32) account];
  v2 = [NSSet setWithObject:*(a1 + 40)];
  [v3 changePushedMailboxUidsAdded:v2 deleted:0];
}

void sub_1000AA25C(uint64_t a1)
{
  v3 = [*(a1 + 32) account];
  v2 = [NSSet setWithObject:*(a1 + 40)];
  [v3 changePushedMailboxUidsAdded:0 deleted:v2];
}

void sub_1000AA3E0(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  v2 = [*(a1 + 32) account];
  [v3 postNotificationName:@"MailApplicationAccountFavoritesDidChange" object:v2];
}

id sub_1000AB6D4(FavoriteItem_SharedMailbox *self, SEL a2)
{
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v3 = &stru_100662A88;
  switch(v2)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
      v3 = MFLookupLocalizedString();
      break;
    default:
      break;
  }

  return v3;
}