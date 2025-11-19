void sub_1000013D8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_10001F1F0;
  qword_10001F1F0 = v1;
}

id sub_100001650(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  v8 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyPreferredSendingEmailAddress];
  if (!v7 || (+[MSAutosave autosave](MSAutosave, "autosave"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasAutosavedMessageWithIdentifier:v7], v9, !v10))
  {
    v17 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = v5;
  v11 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
  v12 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
  v13 = [EMObjectID objectIDFromSerializedRepresentation:v12];
  v14 = [_MFMailCompositionContext alloc];
  v15 = [v5 daemonInterface];
  v16 = [v15 messageRepository];
  v17 = [v14 initRecoveredAutosavedMessageWithIdentifier:v7 draftSubject:v11 messageRepository:v16 originalMessageObjectID:v13];

  v5 = v21;
  if (v8)
  {
LABEL_6:
    [v17 setPreferredSendingEmailAddress:v8];
  }

LABEL_7:
  v18 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredAction];
  [v17 setDeferredAction:{objc_msgSend(v18, "integerValue")}];

  v19 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredActionUserInfo];
  [v17 setDeferredActionUserInfo:v19];

  return v17;
}

void sub_100001A40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100001FF4(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

BOOL sub_1000020A0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _mailComposeController];
  v2 = [v1 subject];
  v3 = [v2 length] != 0;

  return v3;
}

void sub_100002278(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_1000022B4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = v1, [v1 isEqualToString:&stru_1000188C0]))
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      sub_100002FB0(@"NEW_MESSAGE_LONG");
    }

    else
    {
      sub_100002FB0(@"NEW_MESSAGE");
    }
    v3 = ;
  }

  return v3;
}

void sub_100002694(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = +[UIApplication sharedApplication];
    v3 = [*(a1 + 32) view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v6 = [v5 session];
    [v7 requestSceneSessionRefresh:v6];
  }
}

void sub_100002754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_10000279C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100002970;
      v6[3] = &unk_100018538;
      v7 = v3;
      [a1 dismissViewControllerAnimated:1 completion:v6];
    }

    else
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

id sub_100002FB0(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000188C0 table:@"Main"];

  return v3;
}

void sub_1000045A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v29 + 40));

  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v30 - 88));

  _Unwind_Resume(a1);
}

id sub_100004644(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateHeadersWithModel:v3];
  [*(a1 + 32) setNavigationDelegate:WeakRetained];
  v5 = [WeakRetained snapshotImageView];
  [v5 frame];
  [*(a1 + 32) setFrame:?];

  v6 = *(a1 + 32);
  v7 = [WeakRetained snapshotImageView];
  [WeakRetained insertSubview:v6 below:v7];

  v8 = +[EFPromise promise];
  [WeakRetained setContentLoadingPromise:v8];

  v9 = *(a1 + 32);
  v10 = [v3 htmlContent];
  v11 = [v9 loadHTMLString:v10 baseURL:0];
  [WeakRetained setExpectedContentNavigation:v11];

  v12 = [WeakRetained contentLoadingPromise];
  v13 = [v12 future];

  return v13;
}

id sub_1000047C4(uint64_t a1)
{
  v2 = +[EFPromise promise];
  v3 = *(a1 + 32);
  v4 = [v2 completionHandlerAdapter];
  [v3 takeSnapshotWithConfiguration:0 completionHandler:v4];

  v5 = [v2 future];

  return v5;
}

id sub_100004868(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setNavigationDelegate:0];
  [*(a1 + 32) removeFromSuperview];
  v5 = [WeakRetained snapshotImageView];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000049F0;
  v13 = &unk_100018600;
  v14 = WeakRetained;
  v6 = v3;
  v15 = v6;
  [UIView transitionWithView:v5 duration:5242880 options:&v10 animations:0 completion:0.25];

  v7 = [NSNull null:v10];
  v8 = [EFFuture futureWithResult:v7];

  return v8;
}

void sub_1000049F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) snapshotImageView];
  [v2 setImage:v1];
}

void sub_100004F28(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100005148(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) webview];
  v4 = [v1 snapshotContentUsingWebView:v2];

  v3 = [v4 result];
}

void sub_100005368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_1000053DC(uint64_t a1)
{
  v2 = +[MSAutosave autosave];
  v3 = [v2 autosavedMessageDataWithIdentifier:*(a1 + 32)];

  v8 = 0;
  v4 = [v3 result:&v8];
  v5 = v8;
  if (v5)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    v6 = [MFMailMessage messageWithRFC822Data:v4];
    v7 = [*(a1 + 48) _placeholderContentWithMessage:v6];
    [*(a1 + 40) finishWithResult:v7];
  }
}

id sub_100005710(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 ef_map:&stru_100018690];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100005840(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[CNComposeRecipient alloc] initWithContact:0 address:v2 kind:0];

  return v3;
}

void sub_100005AF4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100005C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ComposeServiceRemoteViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000072F8(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007390(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#CompositionServices Background task expired (framesForAttachmentsWithIdentifiers)", v4, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100007584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_1000075BC(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#CompositionServices Background task expired (autosaveWithReply)", v4, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100007660(void *a1, void *a2)
{
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#CompositionServices %p: Identifier for autosaved composition: %@", &v7, 0x16u);
  }

  (*(a1[5] + 16))();
  v6 = +[UIApplication sharedApplication];
  [v6 endBackgroundTask:*(*(a1[6] + 8) + 24)];
}

_CDContact *__cdecl sub_100007EBC(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [(NSString *)v2 emailAddressValue];
  v4 = [v3 simpleAddress];

  if (v4)
  {
    v5 = [_CDContact alloc];
    v6 = [(NSString *)v2 emailAddressValue];
    v7 = [v6 simpleAddress];
    v4 = [v5 initWithIdentifier:v7 type:2 displayName:0 personId:0 personIdType:0];
  }

  return v4;
}

_CDAttachment *__cdecl sub_100007FA4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_CDAttachment);
  [v3 setUti:v2];

  return v3;
}

id sub_10000801C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_CDAttachment);
  v4 = [[NSUUID alloc] initWithUUIDString:v2];
  [v3 setIdentifier:v4];

  return v3;
}

void sub_100008098(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1000080C4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_CDAttachment);
  v4 = [[NSUUID alloc] initWithUUIDString:v2];
  [v3 setIdentifier:v4];

  return v3;
}

void sub_100008140(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

_CDAttachment *__cdecl sub_10000816C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_CDAttachment);
  v4 = [NSURL URLWithString:v2];
  [v3 setContentURL:v4];

  [v3 setUti:@"public.url"];

  return v3;
}

void sub_1000081F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

_CDAttachment *__cdecl sub_100008224(id a1, NSString *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_CDAttachment);
  [v3 setContentText:v2];
  [v3 setUti:@"public.plain-text"];

  return v3;
}

void sub_1000082AC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) _hostApplicationBundleIdentifier];
    v8 = [v5 description];
    v9 = v8;
    v10 = @"No";
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    if (a2)
    {
      v10 = @"Yes";
    }

    v14 = v10;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#CompositionServices Recorded interaction from %@ with success %@, error %@.", &v11, 0x20u);
  }
}

void sub_100008768(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100009324(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100009840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#CompositionServices MailCompositionService exiting...", v8, 2u);
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

id sub_10000A69C(uint64_t a1)
{
  [*(a1 + 32) setDocked:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_10000ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}