void sub_100001688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v5 = sub_100001928();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000D538(v5);
    }
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_autoreleasePoolPop(v4);
  v10 = UIApplicationMain(a1, a2, v9, v7);

  return v10;
}

id sub_100001928()
{
  if (qword_10002B7F0 != -1)
  {
    sub_1000018F4();
  }

  v1 = qword_10002B7E8;

  return v1;
}

void sub_10000197C()
{
  if (!qword_10002B810)
  {
    qword_10002B810 = _sl_dlopen();
  }
}

void sub_100002318(id a1)
{
  qword_10002B7E8 = os_log_create("com.apple.InputUI", "General");

  _objc_release_x1();
}

id sub_10000235C()
{
  if (qword_10002B800 != -1)
  {
    sub_10000C3E8();
  }

  v1 = qword_10002B7F8;

  return v1;
}

void sub_1000023A0(id a1)
{
  qword_10002B7F8 = os_log_create("com.apple.InputUI", "InputSessionChange");

  _objc_release_x1();
}

void sub_100002528(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.inputservice.teletype"];
  [v3 setService:@"com.apple.inputservice.teletype"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100002798(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.inputservice.keyboardui"];
  [v3 setService:@"com.apple.inputservice.teletype.appKeyboard"];
  [v3 setDelegate:*(a1 + 32)];
}

Class sub_100003230(uint64_t a1)
{
  sub_10000197C();
  result = objc_getClass("AFUIServiceDelegate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10002B808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003280(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10002B810 = result;
  return result;
}

Class sub_1000032F4(uint64_t a1)
{
  sub_10000197C();
  result = objc_getClass("AFUIServiceListener");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10002B818 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *sub_1000038A4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NSString stringWithFormat:@"<%@: %p>", objc_opt_class(), v1];
  }

  else
  {
    v2 = @"(nil)";
  }

  return v2;
}

void sub_100003FE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100004904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000049C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [*(a1 + 32) handleTeardownExistingDelegate:v6];

  [v7 returnExecutionToParent];
}

void sub_100004AD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [*(a1 + 32) handleSetupNewDelegate:v6];

  [v7 returnExecutionToParent];
}

uint64_t sub_1000059CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000059E4(id a1, IUISessionChangeResponse *a2)
{
  v2 = sub_10000235C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[IUISessionCoordinator _main_handleSessionChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s  Placeholder service session and input source are (or were) removed.", &v3, 0xCu);
  }
}

void sub_100005A8C(uint64_t a1)
{
  v2 = sub_10000235C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionChange];
    *buf = 136315394;
    v6 = "[IUISessionCoordinator _main_handleSessionChange:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s  Will remove placeholder input source, if not already removed: %@", buf, 0x16u);
  }

  [*(a1 + 40) _queue_queueSessionChange:*(a1 + 32)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BC4;
  block[3] = &unk_100020528;
  block[4] = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100005BC4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100005D38(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005DE0;
  block[3] = &unk_100020660;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100005DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) didCreateInputSession:*(a1 + 48)];
  }
}

void sub_100006244(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000630C;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000630C(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSessionDidBegin:*(a1 + 48) options:*(a1 + 56)];
  }
}

void sub_1000063B8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006460;
  block[3] = &unk_100020660;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006460(uint64_t a1)
{
  v14 = [*(a1 + 32) textInputSource];
  if ([*(a1 + 32) needsToReloadInputSource])
  {
    [*(a1 + 32) setNeedsToReloadInputSource:0];
    [*(a1 + 32) reloadInputSource];
  }

  [*(a1 + 32) setCurrentSession:*(a1 + 40)];
  v2 = [RTIInputSystemDataPayload payloadWithData:0];
  v3 = [*(a1 + 40) documentTraits];
  v4 = [v3 copy];
  [v2 setDocumentTraits:v4];

  v5 = [*(a1 + 40) documentState];
  v6 = [v5 copy];
  [v2 setDocumentState:v6];

  v7 = [*(a1 + 40) uuid];
  v8 = [v7 copy];
  [v2 setSessionUUID:v8];

  [v2 updateData];
  v9 = [*(a1 + 32) textInputSource];
  [v9 ingestDataPayload:v2];

  v10 = [*(a1 + 32) textInputSource];
  [v10 setCanBecomeFirstResponder:1];

  v11 = [*(a1 + 32) assertionForOptions:*(a1 + 48)];
  v12 = [*(a1 + 32) textInputSource];
  [v12 becomeFirstResponder];

  [*(a1 + 32) invalidateAssertionIfNeeded:v11 resetKeyboardAlpha:1];
  [*(a1 + 32) handlePendingSuggestionsDataIfNecessary];
  v13 = [*(a1 + 32) textInputSource];

  if (v14 != v13)
  {
    [v14 removeFromSuperview];
  }
}

void sub_100006E38(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006F00;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006F00(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSessionDidEnd:*(a1 + 48) options:*(a1 + 56)];
  }
}

uint64_t sub_100006F9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100006FC0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000070AC;
  block[3] = &unk_100020720;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v9 = v6;
  v8 = v5;
  v10 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000070AC(uint64_t a1)
{
  v2 = sub_100001928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CE84(a1);
  }

  return [*(a1 + 48) _endSession:*(a1 + 32) options:*(a1 + 56) completion:*(a1 + 64)];
}

void sub_100007268(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007310;
  block[3] = &unk_100020660;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100007310(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSessionDidDie:*(a1 + 48)];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _endSession:v6 options:0 completion:0];
}

void sub_1000074FC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000075A4;
  block[3] = &unk_100020660;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000075A4(uint64_t a1)
{
  v2 = sub_100001928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CEEC(a1);
  }

  v3 = (a1 + 48);
  v4 = [*(a1 + 48) autofillUIServiceDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 48) autofillUIServiceDelegate];
    [v6 inputSystemService:*(a1 + 40) inputSessionDocumentDidChange:*(a1 + 32)];
  }

  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 uuid];
  v10 = [v7[2] currentSession];
  v11 = [v10 uuid];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [*v3 textInputSource];
    v14 = [*v7 currentDataPayload];
    [v13 ingestDataPayload:v14];
  }

  else
  {
    v13 = sub_100001928();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF54();
    }
  }
}

void sub_100007880(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007954;
  block[3] = &unk_100020688;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100007954(uint64_t a1)
{
  v2 = sub_100001928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D000(a1);
  }

  v3 = [*(a1 + 48) autofillUIServiceDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 48) autofillUIServiceDelegate];
    [v5 inputSystemService:*(a1 + 40) inputSession:*(a1 + 32) documentTraitsDidChange:*(a1 + 56)];
  }

  v6 = [*(a1 + 32) uuid];
  v7 = [*(a1 + 48) currentSession];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [*(a1 + 48) textInputSource];
    [v10 ingestDocumentTraits:*(a1 + 56)];
  }

  else
  {
    v10 = sub_100001928();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D068();
    }
  }
}

void sub_100007C28(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007CFC;
  block[3] = &unk_100020688;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100007CFC(uint64_t a1)
{
  v2 = sub_100001928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D114(a1);
  }

  v3 = [*(a1 + 48) autofillUIServiceDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 48) autofillUIServiceDelegate];
    [v5 inputSystemService:*(a1 + 40) inputSession:*(a1 + 32) documentStateDidChange:*(a1 + 56)];
  }

  v6 = [*(a1 + 32) uuid];
  v7 = [*(a1 + 48) currentSession];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [*(a1 + 48) textInputSource];
    [v10 ingestDocumentState:*(a1 + 56)];
  }

  else
  {
    v10 = sub_100001928();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D17C();
    }
  }
}

void sub_100007FD0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008098;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100008098(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) autofillUIServiceDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) autofillUIServiceDelegate];
    [v5 inputSystemService:*(a1 + 40) inputSession:*(a1 + 48) textSuggestionsChanged:*(a1 + 56)];
  }

  v6 = [*(a1 + 48) uuid];
  v7 = [*(a1 + 32) currentSession];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [*v2 textInputSource];
    v11 = [v10 inputDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v19 = [UITextSuggestion decodeTextSuggestions:*(a1 + 56)];
      v13 = [*(a1 + 32) textInputSource];
      v14 = [v13 inputDelegate];
      [v14 setSuggestions:v19];
    }

    else
    {
      if (!*(a1 + 56))
      {
        return;
      }

      v16 = [*v2 pendingSuggestions];

      if (!v16)
      {
        v17 = +[NSMutableDictionary dictionary];
        [*v2 setPendingSuggestions:v17];
      }

      v19 = [*(a1 + 32) pendingSuggestions];
      v18 = *(a1 + 56);
      v13 = [*(a1 + 48) uuid];
      [v19 setObject:v18 forKey:v13];
    }
  }

  else
  {
    v15 = sub_100001928();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000D228();
    }
  }
}

void sub_100008450(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008524;
  block[3] = &unk_100020688;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100008524(uint64_t a1)
{
  v2 = sub_100001928();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D2D4(a1);
  }

  v3 = (a1 + 48);
  v4 = [*(a1 + 48) autofillUIServiceDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 48) autofillUIServiceDelegate];
    [v6 inputSystemService:*(a1 + 40) inputSession:*(a1 + 32) performInputOperation:*(a1 + 56)];
  }

  v7 = [*(a1 + 32) uuid];
  v8 = [*(a1 + 48) currentSession];
  v9 = [v8 uuid];
  v10 = [v7 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [*(a1 + 56) keyboardInput];

    v12 = sub_100001928();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000D33C();
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) uuid];
      v15 = [*v3 currentSession];
      v16 = [v15 uuid];
      v21 = 138412546;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: allowing performInputOperation received for sessionID=%@ while current sessionID=%@", &v21, 0x16u);
    }
  }

  v17 = [*v3 textInputSource];
  v18 = [v17 sourceSessionDelegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    return;
  }

  v13 = [*(a1 + 48) textInputSource];
  v20 = [v13 sourceSessionDelegate];
  [v20 inputSession:*(a1 + 32) performInputOperation:*(a1 + 56)];

LABEL_14:
}

void sub_100008938(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A18;
  block[3] = &unk_100020720;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100008A18(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) autofillUIServiceDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) autofillUIServiceDelegate];
    [v5 inputSystemService:*(a1 + 40) inputSession:*(a1 + 48) performInputOperation:*(a1 + 56) withResponse:*(a1 + 64)];
  }

  v6 = [*(a1 + 48) uuid];
  v7 = [*(a1 + 32) currentSession];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 56) keyboardInput];

    v11 = sub_100001928();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000D3E8();
      }

      v13 = *(a1 + 64);
      if (v13)
      {
        v14 = *(v13 + 16);
LABEL_16:
        v14();
        return;
      }

      return;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 48) uuid];
      v16 = [*v2 currentSession];
      v17 = [v16 uuid];
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: allowing performInputOperation without keyboardInput received for sessionID=%@ while current sessionID=%@", &v24, 0x16u);
    }
  }

  v18 = [*v2 textInputSource];
  v19 = [v18 sourceSessionDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [*(a1 + 32) textInputSource];
    v22 = [v21 sourceSessionDelegate];
    [v22 inputSession:*(a1 + 48) performInputOperation:*(a1 + 56) withResponse:*(a1 + 64)];

    return;
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    v14 = *(v23 + 16);
    goto LABEL_16;
  }
}

void sub_100008E14(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008EDC;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100008EDC(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSessionDidPause:*(a1 + 48) withReason:*(a1 + 56)];
  }
}

void sub_100009100(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000091C8;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000091C8(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSessionDidUnpause:*(a1 + 48) withReason:*(a1 + 56)];
  }
}

void sub_1000093EC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000094B4;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000094B4(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSession:*(a1 + 48) didAddRTISupplementalLexicon:*(a1 + 56)];
  }

  v5 = [*(a1 + 48) uuid];
  v6 = [*(a1 + 32) currentSession];
  v7 = [v6 uuid];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = sub_100001928();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 48) uuid];
      v11 = [*(a1 + 32) currentSession];
      v12 = [v11 uuid];
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: allowing didAddRTISupplementalLexicon received for sessionID=%@ while current sessionID=%@", &v18, 0x16u);
    }
  }

  v13 = [*(a1 + 32) textInputSource];
  v14 = [v13 sourceSessionDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [*(a1 + 32) textInputSource];
    v17 = [v16 sourceSessionDelegate];
    [v17 inputSession:*(a1 + 48) didAddRTISupplementalLexicon:*(a1 + 56)];
  }
}

void sub_10000982C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000098F4;
  block[3] = &unk_100020688;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000098F4(uint64_t a1)
{
  v2 = [*(a1 + 32) autofillUIServiceDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) autofillUIServiceDelegate];
    [v4 inputSystemService:*(a1 + 40) inputSession:*(a1 + 48) didRemoveRTISupplementalLexicon:*(a1 + 56)];
  }

  v5 = [*(a1 + 48) uuid];
  v6 = [*(a1 + 32) currentSession];
  v7 = [v6 uuid];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = sub_100001928();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 48) uuid];
      v11 = [*(a1 + 32) currentSession];
      v12 = [v11 uuid];
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: allowing didRemoveRTISupplementalLexicon received for sessionID=%@ while current sessionID=%@", &v18, 0x16u);
    }
  }

  v13 = [*(a1 + 32) textInputSource];
  v14 = [v13 sourceSessionDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [*(a1 + 32) textInputSource];
    v17 = [v16 sourceSessionDelegate];
    [v17 inputSession:*(a1 + 48) didRemoveRTISupplementalLexicon:*(a1 + 56)];
  }
}

void sub_100009BCC(id a1)
{
  byte_10002B830 = +[UIKeyboard usingEndInputSessionCompletion];
  v1 = sub_10000235C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D494(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

Class sub_100009C24(uint64_t a1)
{
  if (!qword_10002B848)
  {
    qword_10002B848 = _sl_dlopen();
  }

  result = objc_getClass("AFUIServiceDelegate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10002B840 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100009D24(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10002B848 = result;
  return result;
}

void sub_100009DC8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100009DE8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_100009E1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

id sub_10000A9D0()
{
  if (qword_10002B858 != -1)
  {
    sub_10000D57C();
  }

  v1 = qword_10002B850;

  return v1;
}

__n128 sub_10000AA14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  BKSHIDServicesGetCALayerTransform();
  v4 = *(*(a1 + 32) + 8);
  result = v9;
  v4[2] = v6;
  v4[3] = v7;
  v4[6] = v10;
  v4[7] = v11;
  v4[8] = v12;
  v4[9] = v13;
  v4[4] = v8;
  v4[5] = v9;
  return result;
}

__n128 sub_10000AA74(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  BKSHIDServicesGetCALayerTransform();
  v4 = *(*(a1 + 32) + 8);
  result = v9;
  v4[2] = v6;
  v4[3] = v7;
  v4[6] = v10;
  v4[7] = v11;
  v4[8] = v12;
  v4[9] = v13;
  v4[4] = v8;
  v4[5] = v9;
  return result;
}

void sub_10000AAD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    y = CGPointZero.y;
    v4 = *(*(a1 + 32) + 8);
    v5 = v4[7];
    *&v19.m31 = v4[6];
    *&v19.m33 = v5;
    v6 = v4[9];
    *&v19.m41 = v4[8];
    *&v19.m43 = v6;
    v7 = v4[3];
    *&v19.m11 = v4[2];
    *&v19.m13 = v7;
    v8 = v4[5];
    *&v19.m21 = v4[4];
    *&v19.m23 = v8;
    CA_CGPointApplyTransform();
    v9 = *(*(a1 + 40) + 8);
    v10 = v9[7];
    *&v18.m31 = v9[6];
    *&v18.m33 = v10;
    v11 = v9[9];
    *&v18.m41 = v9[8];
    *&v18.m43 = v11;
    v12 = v9[3];
    *&v18.m11 = v9[2];
    *&v18.m13 = v12;
    v13 = v9[5];
    *&v18.m21 = v9[4];
    *&v18.m23 = v13;
    CATransform3DInvert(&v19, &v18);
    CA_CGPointApplyTransform();
    v15 = v14;
    v17 = v16;
    [WeakRetained frame];
    [WeakRetained setFrame:{v17, v15}];
  }
}

void sub_10000AE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_10000AED0(void *a1, NSUInteger a2, NSUInteger a3, int a4, _BYTE *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (!CGRectIsNull(*(*(a1[4] + 8) + 32)))
  {
    if (*(*(a1[5] + 8) + 24) & 1) != 0 || (a4)
    {
      if (*(*(a1[5] + 8) + 24))
      {
        v22 = a4 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        MinX = CGRectGetMinX(*(*(a1[4] + 8) + 32));
        v29.origin.x = a6;
        v29.origin.y = a7;
        v29.size.width = a8;
        v29.size.height = a9;
        if (MinX <= CGRectGetMidX(v29))
        {
          v30.origin.x = a6;
          v30.origin.y = a7;
          v30.size.width = a8;
          v30.size.height = a9;
          MidX = CGRectGetMidX(v30);
          MaxX = CGRectGetMaxX(*(*(a1[4] + 8) + 32));
LABEL_13:
          if (MidX <= MaxX)
          {
            v31.origin.x = a6;
            v31.origin.y = a7;
            v31.size.width = a8;
            v31.size.height = a9;
            *(*(a1[4] + 8) + 32) = CGRectUnion(*(*(a1[4] + 8) + 32), v31);
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      MinY = CGRectGetMinY(*(*(a1[4] + 8) + 32));
      v27.origin.x = a6;
      v27.origin.y = a7;
      v27.size.width = a8;
      v27.size.height = a9;
      if (MinY <= CGRectGetMidY(v27))
      {
        v28.origin.x = a6;
        v28.origin.y = a7;
        v28.size.width = a8;
        v28.size.height = a9;
        MidX = CGRectGetMidY(v28);
        MaxX = CGRectGetMaxY(*(*(a1[4] + 8) + 32));
        goto LABEL_13;
      }
    }

    *a5 = 1;
    goto LABEL_15;
  }

  v18 = *(a1[4] + 8);
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a9;
  *(*(a1[5] + 8) + 24) = a4;
LABEL_15:
  v26.location = a2;
  v26.length = a3;
  v25 = NSUnionRange(*(*(a1[6] + 8) + 32), v26);
  result = v25.location;
  *(*(a1[6] + 8) + 32) = v25;
  return result;
}

void sub_10000B1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [IUIRemoteSelectionRect rectWithCGRect:a4 isVertical:?];
  [*(a1 + 32) addObject:v5];
}

void sub_10000C0A8(id a1)
{
  qword_10002B850 = os_log_create("com.apple.InputUI", "IUIRTIInputSource");

  _objc_release_x1();
}

void sub_10000C388(id a1)
{
  v1 = +[TIPreferencesController sharedPreferencesController];
  [v1 _configureKey:@"InputUIWindowDebug" domain:@"com.apple.keyboard" defaultValue:&__kCFBooleanFalse];
}

void sub_10000C3FC()
{
  sub_100004008();
  sub_1000038A4(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() outgoingInputSource];
  v3 = sub_1000038A4(v2);
  sub_100003FCC();
  sub_100004020();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10000C4BC()
{
  sub_100004008();
  [v1 endSessionID];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() sourceSession];
  v3 = [v2 uuid];
  sub_100003FCC();
  sub_100003FE8(&_mh_execute_header, v4, v5, "%s  sessionChange's endSessionID: %@ does not match lastInputSource sourceSession ID: %@", v6, v7, v8, v9, 2u);
}

void sub_10000C574(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IUISessionChangeAssistant handleTeardownExistingDelegate:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s  Removed input source placeholder", &v1, 0xCu);
}

void sub_10000C5F8(void *a1)
{
  v6 = sub_1000038A4(a1);
  sub_100004020();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000C69C()
{
  sub_100004008();
  sub_1000038A4(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() sessionChangeContext];
  v3 = [v2 sessionChange];
  sub_100003FCC();
  sub_100003FE8(&_mh_execute_header, v4, v5, "%s  Called before handling outgoing input source (newDelegate: %@, sessionChange: %@)", v6, v7, v8, v9, 2u);
}

void sub_10000C754()
{
  sub_100004008();
  sub_1000038A4(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() incomingInputSource];
  v3 = sub_1000038A4(v2);
  sub_100003FCC();
  sub_100004020();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10000C814()
{
  sub_100004008();
  [v1 beginSessionID];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() sourceSession];
  v3 = [v2 uuid];
  sub_100003FCC();
  sub_100003FE8(&_mh_execute_header, v4, v5, "%s  sessionChange's beginSessionID (%@) does not match inputSource sourceSession ID (%@)", v6, v7, v8, v9, 2u);
}

void sub_10000C8CC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IUISessionChangeAssistant handleSetupNewDelegate:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s  Installed an input source placeholder", &v1, 0xCu);
}

void sub_10000C950()
{
  sub_100004008();
  sub_1000038A4(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100004014() sessionChangeContext];
  v3 = [v2 sessionChange];
  sub_100003FCC();
  sub_100003FE8(&_mh_execute_header, v4, v5, "%s  Called again after handling incoming input source (newDelegate: %@, sessionChange: %@)", v6, v7, v8, v9, 2u);
}

void sub_10000CA08(void *a1, NSObject *a2)
{
  v4 = [a1 sessionChangeContext];
  v5 = [v4 sessionChange];
  v6 = [a1 outgoingInputSource];
  v7 = sub_1000038A4(v6);
  v8 = [a1 incomingInputSource];
  v9 = sub_1000038A4(v8);
  v10 = 136315906;
  v11 = "[IUISessionChangeAssistant finalizeSessionChange]";
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s  Outgoing or incoming input source not handled during -become/resignFirstResponder for unknown reason: unknown. Handling now. (sessionChange: %@, outgoingInputSource: %@, incomingInputSource: %@)", &v10, 0x2Au);
}

void sub_10000CB60(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IUISessionCoordinator inputSource:didGenerateTextActionPayload:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s dropping payload: there is no current service session", &v1, 0xCu);
}

void sub_10000CBE4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IUISessionCoordinator serviceSessionPayloadDelegate]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s returning nil: there is no current service session", &v1, 0xCu);
}

void sub_10000CC68(void *a1)
{
  v1 = [a1 sessionChange];
  sub_100009E28();
  sub_100009DC8(&_mh_execute_header, v2, v3, "%s  Session change does nothing (sessionChange=%@)", v4, v5, v6, v7, 2u);
}

void sub_10000CCF8(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[IUISessionCoordinator _main_handleSessionChange:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s  Ending currentSession: %@ as a side-effect of this sessionChange: %@", buf, 0x20u);
}

void sub_10000CD70(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[IUISessionCoordinator _main_handleSessionChange:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s  Nothing to do: change ends a session that is not current: %@", buf, 0x16u);
}

void sub_10000CDDC()
{
  v1[0] = 136315394;
  sub_100009E28();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s  inputSource is not becoming first responder and lastInputSource is not resigning (sessionChange: %@)", v1, 0x16u);
}

void sub_10000CE84(uint64_t a1)
{
  sub_100009E1C(a1, __stack_chk_guard);
  sub_100009DB0();
  sub_100009DE8(&_mh_execute_header, v1, v2, "(MAIN) did end session %@, service: %@", v3, v4, v5, v6, v7);
}

void sub_10000CEEC(uint64_t a1)
{
  sub_100009E1C(a1, __stack_chk_guard);
  sub_100009DB0();
  sub_100009DE8(&_mh_execute_header, v1, v2, "(MAIN) did change document for session %@, service: %@", v3, v4, v5, v6, v7);
}

void sub_10000CF54()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring inputSessionDocumentDidChange received for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

void sub_10000D000(uint64_t a1)
{
  sub_100009E1C(a1, __stack_chk_guard);
  sub_100009DB0();
  sub_100009DE8(&_mh_execute_header, v1, v2, "(MAIN) did change document traits for session %@, service: %@", v3, v4, v5, v6, v7);
}

void sub_10000D068()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring documentTraitsDidChange received for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

void sub_10000D114(uint64_t a1)
{
  sub_100009E1C(a1, __stack_chk_guard);
  sub_100009DB0();
  sub_100009DE8(&_mh_execute_header, v1, v2, "(MAIN) did change document state for session %@, service: %@", v3, v4, v5, v6, v7);
}

void sub_10000D17C()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring documentStateDidChange received for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

void sub_10000D228()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring textSuggestionsChanged received for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

void sub_10000D2D4(uint64_t a1)
{
  sub_100009E1C(a1, __stack_chk_guard);
  sub_100009DB0();
  sub_100009DE8(&_mh_execute_header, v1, v2, "(MAIN) did receive input operation from session %@, service: %@", v3, v4, v5, v6, v7);
}

void sub_10000D33C()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring performInputOperation received for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

void sub_10000D3E8()
{
  sub_100004008();
  [sub_100009E04(v1) uuid];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009E10() currentSession];
  v3 = [v2 uuid];
  sub_100009D98();
  sub_100009DC8(&_mh_execute_header, v4, v5, "Ignoring performInputOperation received with keyboardInput for sessionID=%@ while current sessionID=%@", v6, v7, v8, v9, v10);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}