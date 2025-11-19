uint64_t start()
{
  v0 = _SFSafariContainerPath();
  [v0 fileSystemRepresentation];
  v1 = __strlcpy_chk();

  if (v1 >= 0x400 || (setenv("HOME", __value, 1), setenv("CFFIXED_USER_HOME", __value, 1), __strlcat_chk() >= 0x400))
  {
    exit(1);
  }

  setenv("TMPDIR", __value, 1);
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(ContentBlockerLoaderServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  objc_autoreleasePoolPop(v2);
  [v4 resume];

  return 0;
}

void sub_10000130C(id a1)
{
  qword_10000CA60 = os_log_create("com.apple.mobilesafari", "ContentBlockers");

  _objc_release_x1();
}

void sub_100001350(id a1)
{
  qword_10000CA70 = os_log_create("com.apple.mobilesafari", "Extensions");

  _objc_release_x1();
}

void sub_1000013D8(id a1)
{
  v1 = [WBTabCollection alloc];
  v4 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  v2 = [v1 initWithConfiguration:? openDatabase:?];
  v3 = qword_10000CA80;
  qword_10000CA80 = v2;
}

void sub_100001508(uint64_t a1)
{
  v2 = [WBTabGroupManager alloc];
  v3 = *(a1 + 32);
  v6 = [objc_opt_class() _tabCollection];
  v4 = [v2 initWithCollection:?];
  v5 = qword_10000CA90;
  qword_10000CA90 = v4;
}

void sub_1000015DC(id a1)
{
  qword_10000CAA0 = objc_alloc_init(SafariProfileDelegate);

  _objc_release_x1();
}

void sub_10000165C(id a1)
{
  v1 = [SFWebExtensionsController alloc];
  v2 = [v1 initWithProfileServerID:WBSDefaultProfileIdentifier userContentController:0];
  v3 = qword_10000CAB0;
  qword_10000CAB0 = v2;

  v4 = +[ContentBlockerLoader _sharedProfileDelegate];
  [qword_10000CAB0 setProfileDelegate:?];
}

void sub_100001798(uint64_t a1)
{
  v2 = [SFContentBlockerManager alloc];
  v5 = [*(a1 + 32) defaultWebExtensionsController];
  v3 = [v2 initWithUserContentController:0 webExtensionsController:?];
  v4 = qword_10000CAC0;
  qword_10000CAC0 = v3;
}

void sub_1000018D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ContentBlockerLoader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_100001B98(id a1, _EXExtensionIdentity *a2)
{
  v2 = [NSExtension extensionWithIdentity:a2 error:0];

  return v2;
}

id sub_100001BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 _plugIn];
    v6 = [v5 containingUrl];
    v7 = [v6 path];
    v8 = [v7 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100001E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001F34;
  v6[3] = &unk_100008460;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100001F34(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
  (*(v1 + 16))(v1);
}

void sub_1000022CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [NSExtension extensionWithIdentifier:v2 error:&v8];
  v4 = v8;
  if (v3)
  {
    [*(a1 + 40) _loadContentBlockerExtension:v3 reply:*(a1 + 48)];
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044E8();
    }

    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
    {
      sub_100004554((a1 + 32));
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v9 = NSUnderlyingErrorKey;
      v10 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSError errorWithDomain:SFErrorDomain code:1 userInfo:v6];
    (*(v5 + 16))(v5, v7);

    if (v4)
    {
    }
  }
}

void sub_10000244C(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100002484(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = [*(a1 + 32) _extensionWithIdentifier:*(a1 + 40) inAppWithDisplayIdentifier:a2];
  if (v4)
  {
    if ([*(a1 + 32) _extensionIsEnabledInAnyProfile:v4])
    {
      [*(a1 + 32) _loadContentBlockerExtension:v4 reply:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
    {
      sub_100004554(v3);
    }

    v5 = *(a1 + 48);
    v6 = [NSError errorWithDomain:SFErrorDomain code:1 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

void sub_100002A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34)
{
  objc_destroyWeak((v38 + 48));

  objc_destroyWeak((v39 + 48));
  objc_destroyWeak((v40 - 192));

  _Unwind_Resume(a1);
}

void sub_100002AC4(void *a1, void *a2)
{
  v3 = a2;
  [*(a1[4] + 16) removeObject:a1[5]];
  (*(a1[6] + 16))();
}

void sub_100002B3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_10000CA68 != -1)
  {
    sub_1000044D4();
  }

  v7 = qword_10000CA60;
  if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138477827;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "In requestCompletionBlock for content blocker: %{private}@", buf, 0xCu);
  }

  v9 = [v6 firstObject];
  v10 = [v9 attachments];
  v11 = [v10 firstObject];

  if (v11)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002DC8;
    v15[3] = &unk_100008578;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    [v11 loadItemForTypeIdentifier:kUTTypeText options:0 completionHandler:v15];

    v12 = v16;
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044E8();
    }

    v13 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
    {
      sub_1000045C0(v13);
    }

    v14 = *(a1 + 40);
    v12 = [NSError errorWithDomain:SFErrorDomain code:2 userInfo:0];
    (*(v14 + 16))(v14, v12);
  }
}

void sub_100002DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  v5 = &stru_1000086A8;
LABEL_7:
  if (qword_10000CA68 != -1)
  {
    sub_1000044D4();
  }

  v6 = qword_10000CA60;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 138478083;
    v14 = v7;
    v15 = 2048;
    v16 = [(__CFString *)v5 length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Content blocker rule list for %{private}@ has length: %llu", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002FE4;
  block[3] = &unk_100008550;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100002FE4(uint64_t a1)
{
  v2 = +[SFContentBlockerManager contentBlockerStore];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000030D0;
  v5[3] = &unk_100008528;
  v6 = v3;
  v7 = *(a1 + 48);
  [v2 compileContentRuleListForIdentifier:v6 encodedContentRuleList:v4 completionHandler:v5];
}

void sub_1000030D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v7 = qword_10000CA60;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:NSHelpAnchorErrorKey];
      v14 = 138478339;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Compiling content blocker with identifier '%{private}@' failed with error: %{public}@, %{public}@", &v14, 0x20u);
    }
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v8 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v14 = 138477827;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Compiling content blocker with identifier '%{private}@' succeeded", &v14, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000032DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_10000CA68 != -1)
  {
    sub_1000044D4();
  }

  v7 = qword_10000CA60;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    [v6 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100004604();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000033F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10000CA68 != -1)
  {
    sub_1000044D4();
  }

  if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
  {
    sub_100004648(a1);
  }

  v4 = *(a1 + 40);
  v5 = [NSError errorWithDomain:SFErrorDomain code:3 userInfo:0];
  (*(v4 + 16))(v4, v5);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExtensionRequestWithIdentifier:*(a1 + 32)];
  }
}

void sub_1000034F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v7 = qword_10000CA60;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000046B4();
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    if (v5 && WeakRetained)
    {
      [WeakRetained cancelExtensionRequestWithIdentifier:v5];
    }
  }
}

void sub_100003874(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000038AC(uint64_t a1)
{
  v2 = +[SFContentBlockerManager contentBlockerStore];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000396C;
  v4[3] = &unk_100008640;
  v5 = v3;
  [v2 removeContentRuleListForIdentifier:v5 completionHandler:v4];
}

void sub_10000396C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v4 = qword_10000CA60;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10000473C();
    }
  }

  xpc_transaction_end();
}

void sub_100003B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _extensionWithIdentifier:*(a1 + 40) inAppWithDisplayIdentifier:v3];
  if (v4)
  {
    v5 = objc_alloc_init(SFContentBlockerState);
    v6 = [*(a1 + 32) _extensionIsEnabledInAnyProfile:v4];
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v7 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
    {
      v8 = @"off";
      v9 = *(a1 + 40);
      if (v6)
      {
        v8 = @"on";
      }

      v11 = 138478083;
      v12 = v9;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[SFContentBlockerManager getStateOfContentBlockerWithIdentifier] for %{private}@ is %{public}@ in at least one profile", &v11, 0x16u);
    }

    [v5 setEnabled:v6];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
    {
      sub_100004554((a1 + 40));
    }

    v10 = *(a1 + 48);
    v5 = [NSError errorWithDomain:SFErrorDomain code:1 userInfo:0];
    (*(v10 + 16))(v10, 0, v5);
  }
}

void sub_100004048(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_100004398(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000043C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000043DC(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_100004554(uint64_t *a1)
{
  v1 = *a1;
  sub_1000043F8();
  sub_1000043C0(&_mh_execute_header, v2, v3, "A content blocker with identifier '%{private}@' could not be found", v4, v5, v6, v7, v8);
}

void sub_100004604()
{
  sub_1000043B0();
  sub_100004398(v1, v2, v3, 5.8081e-34);
  sub_1000043DC(&_mh_execute_header, "Content blocker with identifier '%{private}@' compilation cancelled due to error: %{public}@", v4, v5);
}

void sub_100004648(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000043F8();
  sub_1000043C0(&_mh_execute_header, v2, v3, "Failed to load content blocker '%{private}@' because the load was interrupted", v4, v5, v6, v7, v8);
}

void sub_1000046B4()
{
  sub_1000043B0();
  sub_100004398(v1, v2, v3, 5.8081e-34);
  sub_1000043DC(&_mh_execute_header, "beginExtensionRequestWithInputItems for content blocker '%{private}@' failed with error: %{public}@", v4, v5);
}

void sub_1000046F8()
{
  sub_1000043B0();
  sub_100004398(v1, v2, v3, 5.8081e-34);
  sub_1000043DC(&_mh_execute_header, "Error finding content blocker extension (%{private}@): %{public}@", v4, v5);
}

void sub_10000473C()
{
  sub_1000043B0();
  sub_100004398(v1, v2, v3, 5.8081e-34);
  sub_1000043DC(&_mh_execute_header, "Error removing content blocker (%{private}@): %{public}@", v4, v5);
}