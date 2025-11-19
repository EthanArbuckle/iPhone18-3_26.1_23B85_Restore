void sub_25D4(uint64_t a1)
{
  v2 = [*(a1 + 32) windowProvider];
  v3 = [v2 keyWindow];

  [*(a1 + 32) setKeyWindow:v3];
  v4 = [v3 windowScene];
  v5 = [v4 _sceneIdentifier];
  [*(a1 + 32) setKeyWindowSceneIdentifier:v5];

  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) keyWindowSceneIdentifier];
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "JSAWindowManager: Update keyWindow: %@, sceneIdentifier: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [v8 keyWindow];
  [v8 updateWindowSizeIfNeeded:v9];
}

void sub_2858(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) keyWindow];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) keyWindow];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    [*(a1 + 40) setKeyWindowSize:{v6, v8}];
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = v6;
      *&v11[1] = v8;
      v10 = [NSValue valueWithBytes:v11 objCType:"{CGSize=dd}"];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "JSAWindowManager: Update keyWindowSize: %@", buf, 0xCu);
    }
  }
}

void sub_2E38(id a1)
{
  qword_CC048 = objc_alloc_init(JSAUserDefaults);

  _objc_release_x1();
}

id sub_309C(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = +[JSABridge sharedInstance];
  v5 = [v4 environment];
  v6 = [v5 appForOwnership];
  v7 = [JSManagedValue managedValueWithValue:v2 andOwner:v6];
  [v3 setObject:v7 forKey:a1[6]];

  [*(a1[4] + 16) setObject:a1[7] forKey:a1[6]];
  v8 = *(a1[4] + 24);
  v9 = a1[8];
  v10 = a1[6];

  return [v8 setObject:v9 forKey:v10];
}

id sub_3378(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObjectForKey:v2];
}

void sub_355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3574(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_358C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (*(a1 + 48))
  {
    v3 = +[BUAppGroup books];
    v7 = [v3 userDefaults];
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
  }

  v4 = [v2 objectForKey:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_3784(os_unfair_lock_s *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[JSAUserDefaults _defaultsDidChange:value:fromGroup:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s _defaultsDidChange %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = sub_3574;
    v32 = sub_3584;
    v33 = objc_alloc_init(NSMutableDictionary);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_3574;
    v27 = sub_3584;
    v28 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v15 = sub_3A7C;
    v16 = &unk_B21E0;
    v17 = a1;
    v22 = a4;
    v18 = v7;
    v19 = v8;
    v20 = buf;
    v21 = &v23;
    v10 = v14;
    os_unfair_lock_lock_with_options();
    v15(v10);
    os_unfair_lock_unlock(a1 + 8);

    if (v24[5] && *(*&buf[8] + 40))
    {
      v11 = +[JSABridge sharedInstance];
      v12 = v24[5];
      v29 = *(*&buf[8] + 40);
      v13 = [NSArray arrayWithObjects:&v29 count:1];
      [v11 enqueueManagedValueCall:v12 arguments:v13 file:@"JSAUserDefaults.m" line:155];
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_3A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_3A7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (*(a1 + 72))
  {
    v3 = +[BUAppGroup books];
    v4 = [v3 userDefaults];
  }

  else
  {
    v4 = +[NSUserDefaults standardUserDefaults];
  }

  v13 = [v2 objectForKey:v4];

  v5 = [v13 objectForKey:*(a1 + 40)];
  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = +[NSNull null];
  }

  if (v5 != v6 || ([v5 isEqual:v6] & 1) == 0)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:v6 forKey:*(a1 + 40)];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    [v13 addEntriesFromDictionary:*(*(*(a1 + 56) + 8) + 40)];
    v7 = *(*(a1 + 32) + 8);
    if (*(a1 + 72))
    {
      v8 = +[BUAppGroup books];
      v9 = [v8 userDefaults];
    }

    else
    {
      v9 = +[NSUserDefaults standardUserDefaults];
    }

    v10 = [v7 objectForKey:v9];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_3F28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_3F48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  sub_3784(WeakRetained, v2, v3, 0);
}

void sub_3FD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  sub_3784(WeakRetained, v2, v3, 1);
}

uint64_t sub_4580(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if ([v2 isEqualToString:@"full"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"long"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"medium"])
  {
    v3 = 2;
  }

  else
  {
    v3 = [v2 isEqualToString:@"short"];
  }

  return v3;
}

void sub_47BC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_CC050;
  qword_CC050 = v1;

  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_CC050 setTimeZone:v3];
}

void sub_497C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_CC060;
  qword_CC060 = v1;

  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_CC060 setTimeZone:v3];
}

void sub_4C84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[JSABridge sharedInstance];
  v8 = *(a1 + 32);
  v9 = v5;
  if (!v5)
  {
    v9 = +[NSNull null];
  }

  v12[0] = v9;
  if (v6)
  {
    [v6 localizedDescription];
  }

  else
  {
    +[NSNull null];
  }
  v10 = ;
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [v7 enqueueValueCall:v8 arguments:v11 file:@"JSAAssetRequest.m" line:41];

  if (!v5)
  {
  }
}

void sub_4E60(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
LABEL_3:
    v7 = objc_retainBlock(*(a1 + 32));
    v8 = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = v7[2];
    goto LABEL_10;
  }

  if (!v11 || (v6 = [[NSString alloc] initWithData:v11 encoding:4]) == 0)
  {
    v6 = [NSError errorWithDomain:@"JSAErrorDomain" code:0 userInfo:&off_BA6E0];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = objc_retainBlock(*(a1 + 32));
  v8 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  v9 = v10[2];
LABEL_10:
  v9();
LABEL_11:
}

void sub_50D8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v6);
  }
}

void sub_52AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [v3 value];
    v6 = +[JSABridge sharedInstance];
    v12[0] = &__kCFBooleanTrue;
    v7 = [NSNumber numberWithInt:a2 != 0, @"didAttemptApproval", @"requestWasApproved"];
    v11[2] = @"itemIdentifier";
    v8 = *(a1 + 40);
    v12[1] = v7;
    v12[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v6 enqueueValueCall:v5 arguments:v10 file:@"JSAParentalApproval.m" line:45];

    [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
  }

  else
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_7F004(v5);
    }
  }
}

void sub_5684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_56A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained context];

  if (v2)
  {
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[JSAEnvironment init]_block_invoke";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: JSGarbageCollect() due to memory warning", &v5, 0xCu);
    }

    v4 = [WeakRetained context];
    JSGarbageCollect([v4 JSGlobalContextRef]);
  }
}

void sub_578C(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = [val thread];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5C20;
    v3[3] = &unk_B23B0;
    objc_copyWeak(&v4, &location);
    [v2 enqueueBlockSync:v3];

    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void sub_5844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_5868(id a1)
{
  v1 = JSALog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"ScriptingLocalStorage";
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "--- Persisting state for %@ ---", &v8, 0xCu);
  }

  v2 = +[JSALocalStorage sharedInstance];
  v3 = [v2 values];
  v4 = [v3 copy];

  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"ScriptingLocalStorage";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "--- End Persisting state for %@ ---", &v8, 0xCu);
  }

  return v4;
}

void sub_5C20(uint64_t a1)
{
  v2 = JSASignpostExecution();
  v3 = os_signpost_id_generate(v2);

  v4 = JSASignpostExecution();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Init JSContext", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_alloc_init(JSContext);
    v8 = WeakRetained[2];
    WeakRetained[2] = v7;

    v9 = +[NSBundle mainBundle];
    v10 = [v9 bundleIdentifier];
    [WeakRetained[2] setName:v10];

    [WeakRetained[2] setInspectable:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5F00;
    v21[3] = &unk_B2388;
    objc_copyWeak(&v22, (a1 + 32));
    [WeakRetained[2] setExceptionHandler:v21];
    if (MGGetBoolAnswer())
    {
      JSRemoteInspectorSetLogToSystemConsole();
    }

    v11 = [WeakRetained context];
    [JSAEnvironment _exposeObjectsAndClassesToContext:v11];

    v12 = [WeakRetained context];
    v13 = [v12 objectForKeyedSubscript:@"native"];

    v14 = [WeakRetained[4] value];
    v15 = [v14 context];
    v16 = [v15 virtualMachine];
    [v16 removeManagedReference:WeakRetained[4] withOwner:WeakRetained];

    if ([v13 isObject])
    {
      v17 = [JSManagedValue managedValueWithValue:v13 andOwner:WeakRetained];
    }

    else
    {
      v17 = 0;
    }

    v18 = WeakRetained[4];
    WeakRetained[4] = v17;

    v19 = JSASignpostExecution();
    v20 = v19;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_END, v3, "Init JSContext", "", buf, 2u);
    }

    objc_destroyWeak(&v22);
  }
}

void sub_5F00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _exceptionHandlerReentrantCountPtr];
  v9 = atomic_load(v8);
  if (v9 < 4)
  {
    v11 = v8;
    atomic_fetch_add(v8, 1u);
    v10 = [v6 valueForProperty:@"message"];
    v12 = [v6 valueForProperty:@"userInfo"];
    v13 = [v6 valueForProperty:@"line"];
    v14 = [v6 valueForProperty:@"column"];
    v15 = [v6 valueForProperty:@"sourceURL"];
    if ([v10 isString])
    {
      v35 = [v10 toString];
    }

    else
    {
      v35 = @"<Unknown>";
    }

    v32 = v12;
    if ([v12 isObject])
    {
      v16 = [v12 toObject];
      v34 = [v16 description];
    }

    else
    {
      v34 = @"<Unknown>";
    }

    if ([v13 isNumber])
    {
      v17 = [v13 toNumber];
      v33 = [v17 stringValue];
    }

    else
    {
      v33 = @"<Unknown>";
    }

    if ([v14 isNumber])
    {
      v18 = [v14 toNumber];
      v19 = [v18 stringValue];
    }

    else
    {
      v19 = @"<Unknown>";
    }

    v31 = v13;
    v29 = v15;
    v30 = v14;
    if ([v15 isString])
    {
      v20 = [v15 toString];
    }

    else
    {
      v20 = @"<Unknown>";
    }

    v21 = [NSString stringWithFormat:@"message: %@, userInfo: %@, line: %@, column: %@, sourceURL: %@", v35, v34, v33, v19, v20];
    v22 = v21;
    if (!v21)
    {
      v28 = v5;
      v23 = [v5 globalObject];
      v24 = [v23 objectForKeyedSubscript:@"RangeError"];
      v25 = [v6 isInstanceOf:v24];

      if (v25)
      {
        v26 = [v6 objectForKeyedSubscript:@"message"];
        v22 = [v26 description];
      }

      else
      {
        v22 = 0;
      }

      v5 = v28;
    }

    v27 = JSALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_7F0E0();
    }

    atomic_fetch_add(v11, 0xFFFFFFFF);
  }

  else
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_7F154();
    }
  }
}

void sub_6520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_654C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = JSASignpostExecution();
    v4 = os_signpost_id_generate(v3);

    v5 = JSASignpostExecution();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v29 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Evaluate Script", "", v29, 2u);
    }

    v7 = JSStringCreateWithUTF8CString([*(a1 + 32) bytes]);
    v8 = JSStringCreateWithCFString(*(a1 + 40));
    if (v7 && (v9 = v8) != 0)
    {
      v10 = [WeakRetained context];
      v11 = [v10 JSGlobalContextRef];

      *v29 = 0;
      JSEvaluateScript(v11, v7, 0, v9, 0, v29);
      v12 = *v29;
      if (*v29)
      {
        v13 = [WeakRetained context];
        v14 = [JSValue valueWithJSValueRef:v12 inContext:v13];

        v15 = JSALog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_7F214();
        }
      }

      JSStringRelease(v9);
      JSStringRelease(v7);
    }

    else
    {
      v16 = JSALog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_7F194();
      }
    }

    v17 = JSALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      *v29 = 138543618;
      *&v29[4] = v18;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "JSAEnvironment javascript loaded with version=%{public}@, name=%{public}@", v29, 0x16u);
    }

    v20 = *(a1 + 48);
    v21 = [WeakRetained context];
    v22 = [v21 objectForKeyedSubscript:@"config"];
    [v22 setObject:v20 forKeyedSubscript:@"version"];

    if (*(a1 + 72) == 1)
    {
      v23 = [WeakRetained context];
      v24 = [v23 objectForKeyedSubscript:@"config"];
      [v24 setObject:@"iosbundle" forKeyedSubscript:@"environment"];
    }

    objc_storeStrong(WeakRetained + 3, *(a1 + 48));
    v25 = JSASignpostExecution();
    v26 = v25;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v29 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v26, OS_SIGNPOST_INTERVAL_END, v4, "Evaluate Script", "", v29, 2u);
    }

    v27 = objc_retainBlock(*(a1 + 56));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27);
    }
  }
}

void sub_6990(uint64_t a1)
{
  v2 = JSASignpostExecution();
  v3 = os_signpost_id_generate(v2);

  v4 = JSASignpostExecution();
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Register Objects", "", buf, 2u);
  }

  v7 = [*(a1 + 32) nativeJSObject];
  v8 = [v7 value];

  v24 = v8;
  if ([v8 isObject])
  {
    v22 = v3 - 1;
    v23 = v3;
    v9 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [*(a1 + 40) objectForKeyedSubscript:v15];
          [v24 setObject:v16 forKeyedSubscript:v15];
          v17 = [NSString stringWithFormat:@"%@=%@", v15, v16];
          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v12);
    }

    v18 = JSALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 componentsJoinedByString:@", "];
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "JSAEnvironment registered: %{public}@", buf, 0xCu);
    }

    v6 = v22;
    v3 = v23;
  }

  else
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_7F29C();
    }
  }

  v20 = JSASignpostExecution();
  v21 = v20;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_INTERVAL_END, v3, "Register Objects", "", buf, 2u);
  }
}

JSAPackage *__cdecl sub_746C(id a1)
{
  v1 = +[JSABridge sharedInstance];
  v2 = [v1 currentPackage];

  return v2;
}

id sub_74C0(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3 = [v2 templateRegistrationPromise];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [NSError bu_errorWithDomain:@"JSAErrorDomain" code:111 description:@"templateRegistrationPromise is not set" underlyingError:0];
    v5 = [AMSPromise promiseWithError:v6];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"Promise"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7680;
  v13[3] = &unk_B24B8;
  v14 = v5;
  v8 = v5;
  v9 = objc_retainBlock(v13);
  v15 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [v7 constructWithArguments:v10];

  return v11;
}

void sub_7680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7740;
  v10[3] = &unk_B2490;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 resultWithCompletion:v10];
}

void sub_7740(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[JSABridge sharedInstance];
  v8 = v7;
  if (v5)
  {
    v9 = *(a1 + 32);
    v17 = v5;
    v10 = [NSArray arrayWithObjects:&v17 count:1];
    v11 = v8;
    v12 = v9;
    v13 = v10;
    v14 = 345;
  }

  else
  {
    v15 = *(a1 + 40);
    if (!v6)
    {
      [v7 enqueueValueCall:v15 arguments:&__NSArray0__struct file:@"JSAEnvironment.m" line:347];
      goto LABEL_6;
    }

    v16 = v6;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = v8;
    v12 = v15;
    v13 = v10;
    v14 = 347;
  }

  [v11 enqueueValueCall:v12 arguments:v13 file:@"JSAEnvironment.m" line:v14];

LABEL_6:
}

void sub_7A98(uint64_t a1)
{
  v2 = [*(a1 + 32) records];
  [v2 addObject:*(a1 + 40)];
}

uint64_t sub_7BDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) records];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) records];
  [v6 removeAllObjects];
}

void sub_7D6C(id a1)
{
  qword_CC078 = objc_alloc_init(JSATasteManager);

  _objc_release_x1();
}

void sub_7E04(id a1, JSContext *a2)
{
  v3 = [(JSContext *)a2 objectForKeyedSubscript:@"TasteManager"];
  if ([v3 isObject])
  {
    v2 = [v3 invokeMethod:@"syncTastes" withArguments:&__NSArray0__struct];
  }
}

double sub_803C()
{
  objc_opt_self();
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  return v2;
}

void sub_8340(id a1)
{
  *v6 = 0xE00000001;
  v7 = 1;
  v8 = getpid();
  memset(v5, 0, 512);
  v4 = 648;
  v1 = sysctl(v6, 4u, v5, &v4, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_7F390(v2, v3);
    }
  }

  else
  {
    *&qword_CC090 = SDWORD2(v5[0]) / 1000000.0 + *&v5[0];
  }
}

uint64_t sub_859C(uint64_t a1)
{
  qword_CC0A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_9568(uint64_t a1)
{
  qword_CC0B8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_97F4(uint64_t a1)
{
  v2 = [*(a1 + 32) getItem:*(a1 + 40)];
  v3 = +[JSABridge sharedInstance];
  v4 = v3;
  v5 = *(a1 + 48);
  if (v2)
  {
    v7 = v2;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 enqueueValueCall:v5 arguments:v6 file:@"JSAKeychainStorage.m" line:67];
  }

  else
  {
    [v3 enqueueValueCall:v5 arguments:0 file:@"JSAKeychainStorage.m" line:67];
  }
}

void sub_9AFC(uint64_t a1)
{
  [*(a1 + 32) setItem:*(a1 + 40) :*(a1 + 48)];
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 56) arguments:0 file:@"JSAKeychainStorage.m" line:97];
}

void sub_9C78(uint64_t a1)
{
  [*(a1 + 32) removeItem:*(a1 + 40)];
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 48) arguments:0 file:@"JSAKeychainStorage.m" line:121];
}

void sub_9DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = BUDynamicCast();
  objc_opt_class();
  v8 = BUDynamicCast();
  if ([v7 length])
  {
    if (v8)
    {
LABEL_3:
      if ([v7 length])
      {
        [*(a1 + 32) setObject:v8 forKey:v7];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_7F6AC(v5, v9);
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_7F724(v6, v10);
  }

  [v7 length];
LABEL_11:
}

void sub_A0B8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  v7 = BUDynamicCast();

  if (v7)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_A224(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) diskUsage];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v2 enqueueValueCall:v3 arguments:v5 file:@"JSADevice.m" line:53];
}

id sub_A470()
{
  objc_opt_self();
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = [NSString stringWithString:v1];
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_AD08(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v12 = objc_opt_new();
  [v12 setCallback:v8];

  [v12 setPresentingViewController:v10];
  [v12 setActivityItem:v11];

  [v12 setOptions:v9];
  sub_7F79C(v12);
}

void sub_AED0(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  v3 = [v2 objectForKeyedSubscript:@"linkPresentation"];
  if (v3)
  {
    v26 = *(a1 + 32);
    v4 = [NSArray arrayWithObjects:&v26 count:1];
  }

  else
  {
    v5 = [*(a1 + 32) activityItem];
    v25 = v5;
    v4 = [NSArray arrayWithObjects:&v25 count:1];
  }

  v6 = [[UIActivityViewController alloc] initWithActivityItems:v4 applicationActivities:0];
  objc_opt_class();
  v7 = [*(a1 + 32) options];
  v8 = [v7 objectForKeyedSubscript:@"excludedActivityTypes"];
  v9 = BUDynamicCast();
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 32) options];
    v12 = [v11 objectForKeyedSubscript:@"excludedActivityTypes"];
    [v6 setExcludedActivityTypes:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    v13 = [*(a1 + 32) options];
    v14 = [v13 objectForKeyedSubscript:@"sourceView"];
    v15 = BUDynamicCast();

    objc_opt_class();
    v16 = [*(a1 + 32) options];
    v17 = [v16 objectForKeyedSubscript:@"sourceBarButtonItem"];
    v18 = BUDynamicCast();

    if (v15)
    {
      v19 = [v6 popoverPresentationController];
      [v19 setSourceView:v15];
    }

    else
    {
      if (!v18)
      {
LABEL_12:

        goto LABEL_13;
      }

      v19 = [v6 popoverPresentationController];
      [v19 setBarButtonItem:v18];
    }

    goto LABEL_12;
  }

LABEL_13:
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_B238;
  v24[3] = &unk_B2700;
  v24[4] = *(a1 + 32);
  [v6 setCompletionWithItemsHandler:v24];
  v20 = [*(a1 + 32) presentingViewController];
  v21 = [v20 view];
  v22 = [v21 window];

  if (([v22 isKeyWindow] & 1) == 0)
  {
    [v22 makeKeyWindow];
  }

  v23 = [*(a1 + 32) presentingViewController];
  [v23 presentViewController:v6 animated:1 completion:0];
}

void sub_B238(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) callback];
  v13 = [v12 isObject];

  if (v13)
  {
    v14 = objc_opt_new();
    [v14 setObject:v9 forKeyedSubscript:@"activityType"];
    v15 = [NSNumber numberWithBool:a3];
    [v14 setObject:v15 forKeyedSubscript:@"completed"];

    if (v10 && [v10 count])
    {
      [v14 setObject:v10 forKeyedSubscript:@"returnedItems"];
    }

    if (v11)
    {
      v16 = [v11 localizedDescription];
      [v14 setObject:v16 forKeyedSubscript:@"activityError"];
    }

    v17 = +[JSABridge sharedInstance];
    v18 = [*(a1 + 32) callback];
    v20 = v14;
    v19 = [NSArray arrayWithObjects:&v20 count:1];
    [v17 enqueueValueCall:v18 arguments:v19 file:@"JSAShare.m" line:105];
  }
}

id sub_B54C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = objc_alloc_init(NSItemProvider);
    v6 = [UTTypePNG identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_B638;
    v8[3] = &unk_B2750;
    v9 = v4;
    [v5 registerItemForTypeIdentifier:v6 loadHandler:v8];
  }

  return v5;
}

void sub_B638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B700;
  v6[3] = &unk_B2728;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_B700(uint64_t a1)
{
  [NSData dataWithContentsOfURL:*(a1 + 32)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B7C0;
  v4 = v3[3] = &unk_B2728;
  v5 = *(a1 + 40);
  v2 = v4;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_B7C0(uint64_t a1)
{
  v4 = [UIImage imageWithData:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = UIImagePNGRepresentation(v4);
  (*(v2 + 16))(v2, v3, 0);
}

uint64_t sub_C014(uint64_t a1)
{
  qword_CC0C8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_C574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_CC04(id a1)
{
  qword_CC0D8 = objc_alloc_init(JSANetwork);

  _objc_release_x1();
}

void sub_CE18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setReachabilityRef:a1];
  v5 = +[JSABridge sharedInstance];
  v6 = [v4 networkCallbackValue];
  v7 = [v4 isReachable];

  v8 = [NSNumber numberWithBool:v7];
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v5 enqueueManagedValueCall:v6 arguments:v9 file:@"JSANetwork.m" line:74];
}

id JSALog()
{
  if (qword_CC0E8 != -1)
  {
    sub_80048();
  }

  v1 = qword_CC0E0;

  return v1;
}

void sub_D114(id a1)
{
  qword_CC0E0 = os_log_create("com.apple.iBooks", "JSApp");

  _objc_release_x1();
}

id sub_D3F8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    if ([v7 isObject])
    {
      if (a4 > 0.0)
      {
        v9 = a4 / 1000.0;
LABEL_11:
        v10 = +[JSContext currentArguments];
        if ([v10 count]< 3)
        {
          v26 = 0;
        }

        else
        {
          v26 = [v10 subarrayWithRange:2, [v10 count]- 2];
        }

        v27 = [NSTimer timerWithTimeInterval:a1 target:"_jsTimerFired:" selector:0 userInfo:a3 repeats:v9];
        v28 = [JSATimerContext alloc];
        v29 = +[JSABridge sharedInstance];
        v30 = [v29 environment];
        v31 = [v30 appForOwnership];
        v32 = [(JSATimerContext *)v28 initWithCallback:v8 callbackArgs:v26 ownerObject:v31 repeating:a3 interval:v27 timer:v9];

        v25 = [NSString stringWithFormat:@"%p", v27];
        v33 = *(a1 + 8);
        objc_sync_enter(v33);
        [*(a1 + 8) setObject:v32 forKey:v25];
        objc_sync_exit(v33);

        v34 = JSALog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = v25;
          v41 = 2112;
          v42 = v32;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Scheduled timer %@: %@", buf, 0x16u);
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_D948;
        block[3] = &unk_B20D8;
        v38 = v27;
        v35 = v27;
        dispatch_async(&_dispatch_main_q, block);

        goto LABEL_17;
      }

      v9 = 0.0;
      if (!a3)
      {
        goto LABEL_11;
      }

      v10 = JSALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_800D4(v10, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      v10 = JSALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_8005C(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v25 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v25 = 0;
LABEL_18:

  return v25;
}

void sub_D744(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isString] && (objc_msgSend(v4, "toString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
    {
      v7 = [v4 toString];
      v8 = *(a1 + 8);
      objc_sync_enter(v8);
      v9 = [*(a1 + 8) objectForKey:v7];
      [*(a1 + 8) removeObjectForKey:v7];
      objc_sync_exit(v8);

      v10 = JSALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Cancelling timer %@: %@", buf, 0x16u);
      }

      if (v9)
      {
        v11 = v9;
        objc_sync_enter(v11);
        v12 = [v11 timer];
        v13 = [v11 managedCallback];

        if (v13)
        {
          [v11 removeManagedReferences];
        }

        sub_801B8(v12, v11, &v20);
      }
    }

    else
    {
      v7 = JSALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_8014C(v4, v7, v14, v15, v16, v17, v18, v19);
      }
    }
  }
}

void sub_D948(uint64_t a1)
{
  v2 = +[NSRunLoop currentRunLoop];
  [v2 addTimer:*(a1 + 32) forMode:NSDefaultRunLoopMode];
}

void sub_DBA0(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) managedCallback];

  if (v4)
  {
    v5 = [*(a1 + 32) managedCallback];
    v4 = [v5 value];

    v6 = [*(a1 + 32) managedArgs];
    if (([*(a1 + 32) isRepeating] & 1) == 0)
    {
      [*(a1 + 32) removeManagedReferences];
    }
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v3);

  if (v4)
  {
    v7 = +[JSABridge sharedInstance];
    v8 = [v6 jsValuesWithContext:v9];
    [v7 enqueueValueCall:v4 arguments:v8 file:@"JSAFoundation.m" line:184];
  }
}

void sub_DD44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_DF3C(uint64_t a1)
{
  v3 = +[BUAccountsProvider sharedProvider];
  v2 = [v3 currentStorefront];
  [*(a1 + 32) setLastBagStorefront:v2];
}

void sub_DFA8(os_unfair_lock_s *val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = sub_F1DC;
    v10 = &unk_B2508;
    v11 = val;
    v12 = &v13;
    v2 = v8;
    os_unfair_lock_lock(val + 2);
    v9(v2);
    os_unfair_lock_unlock(val + 2);

    if (*(v14 + 24) == 1)
    {
      v3 = [(os_unfair_lock_s *)val updateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F1F8;
      block[3] = &unk_B23B0;
      v4 = &v7;
      objc_copyWeak(&v7, &location);
      dispatch_async(v3, block);
    }

    else
    {
      v3 = [(os_unfair_lock_s *)val updateQueue];
      sub_80578(v3, v5, &location, &v18);
      v4 = v18;
    }

    objc_destroyWeak(v4);
    _Block_object_dispose(&v13, 8);
    objc_destroyWeak(&location);
  }
}

void sub_E138(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  objc_destroyWeak((v1 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_E25C(uint64_t a1)
{
  qword_CC0F8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_E3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E3C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastBagStorefront];
  LOBYTE(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = JSALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      v5 = "JSAProfileBagManager: Skipped resetting bag value cache for storefront change because the new bag has already arrived.";
LABEL_6:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, v7, 2u);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E654;
    v8[3] = &unk_B20D8;
    v8[4] = v6;
    os_unfair_lock_lock(v6 + 2);
    sub_E654(v8);
    os_unfair_lock_unlock(v6 + 2);
    v4 = JSALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      v5 = "JSAProfileBagManager: Reset bag value cache due to storefront change.";
      goto LABEL_6;
    }
  }
}

void sub_E654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E7CC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_E97C(uint64_t a1)
{
  v2 = [*(a1 + 32) keyEntries];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138412290;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 valueType]);
        v11 = [v9 key];
        v12 = [v2 objectForKey:v11];
        v13 = [v12 isEqualToNumber:v10];

        if ((v13 & 1) == 0)
        {
          v14 = JSALog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v9 key];
            *buf = v17;
            v24 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "JSAProfileBagManager: registered bag key %@ from JS", buf, 0xCu);
          }

          v16 = [v9 key];
          [v2 setObject:v10 forKeyedSubscript:v16];

          *(*(*(v18 + 48) + 8) + 24) = 1;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }
}

void sub_ED50(uint64_t a1)
{
  v3 = +[BUAccountsProvider sharedProvider];
  v2 = [v3 currentStorefront];
  [*(a1 + 32) setLastBagStorefront:v2];
}

void sub_F1F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_F238(WeakRetained);
}

void sub_F238(uint64_t a1)
{
  if (a1)
  {
    v24 = objc_opt_new();
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_E3C0;
    v46 = sub_E3D0;
    v47 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v38 = sub_F7D0;
    v39 = &unk_B2508;
    v40 = a1;
    v41 = &v42;
    v3 = v37;
    os_unfair_lock_lock((a1 + 8));
    v38(v3);
    os_unfair_lock_unlock((a1 + 8));

    v4 = JSALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v43[5] allKeys];
      v6 = [v5 sortedArrayUsingSelector:"compare:"];
      v1 = [v6 componentsJoinedByString:{@", "}];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "JSAProfileBagManager: keyEntries: %@", &buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v43[5];
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v51 count:16];
    if (v8)
    {
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v43[5] objectForKeyedSubscript:{v11, v24}];
          v13 = sub_8025C(a1, v11, [v12 integerValue]);

          if (v13)
          {
            objc_opt_class();
            v14 = BUDynamicCast();
            v15 = v14;
            v16 = v13;
            if (v14)
            {
              v1 = [v14 absoluteString];
              v16 = v1;
            }

            [v24 setObject:v16 forKeyedSubscript:v11];
            if (v15)
            {
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v33 objects:v51 count:16];
      }

      while (v8);
    }

    if (![v24 count] || (objc_msgSend(*(a1 + 16), "isEqual:", v24) & 1) != 0)
    {
      goto LABEL_26;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x2020000000;
    v50 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v28 = sub_F834;
    v29 = &unk_B2818;
    p_buf = &buf;
    v30 = a1;
    v31 = v24;
    v17 = v27;
    os_unfair_lock_lock((a1 + 8));
    v28(v17);
    os_unfair_lock_unlock((a1 + 8));

    if (*(*(&buf + 1) + 24) == 1)
    {
      v18 = JSALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        v19 = "JSAProfileBagManager: notifying JS with initial bag values (or after storefront change)";
LABEL_24:
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v19, v26, 2u);
      }
    }

    else
    {
      v18 = JSALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        v19 = "JSAProfileBagManager: notifying JS with updated bag values";
        goto LABEL_24;
      }
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 postNotificationName:@"JSAProfileBagChangedNotification" object:a1];

    v21 = +[JSABridge sharedInstance];
    v22 = [v21 environment];
    v23 = [v22 thread];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_F894;
    v25[3] = &unk_B20D8;
    v25[4] = a1;
    [v23 enqueueBlock:v25];

    _Block_object_dispose(&buf, 8);
LABEL_26:
    _Block_object_dispose(&v42, 8);
  }
}

void sub_F734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_F790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_F238(WeakRetained);
}

void sub_F7D0(uint64_t a1)
{
  v5 = [*(a1 + 32) keyEntries];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_F834(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 16) == 0;
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

void sub_F894(uint64_t a1)
{
  v3 = +[JSABridge sharedInstance];
  v2 = [*(a1 + 32) bagChangeHandler];
  [v3 enqueueManagedValueCall:v2 arguments:0 file:@"JSAProfileBagManager.m" line:346];
}

void sub_FFF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithBool:a2];
  v11[0] = v8;
  v9 = v5;
  if (!v5)
  {
    v9 = +[NSNull null];
  }

  v11[1] = v9;
  v10 = [NSArray arrayWithObjects:v11 count:2];
  [v6 enqueueValueCall:v7 arguments:v10 file:@"JSAAccount.m" line:80];

  if (!v5)
  {
  }
}

void sub_10234(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) delegate];
  [v5 accountDidAttemptSignOut:*(a1 + 32)];

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

id sub_103BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (*(v2 + 16))();
    v4 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v4 = [AMSPromise promiseWithResult:a2];
  }

  return v4;
}

void sub_106F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    *(*(*(a1 + 40) + 8) + 24) = [WeakRetained state];
    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      [v5 setState:1];
    }

    v3 = [v5 pendingBlocks];
    v4 = objc_retainBlock(*(a1 + 32));
    [v3 addObject:v4];

    WeakRetained = v5;
  }
}

intptr_t sub_10928(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_10B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10B74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10B8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 40);

  return [v5 removeAllObjects];
}

void sub_10DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10DF0(uint64_t a1)
{
  [*(a1 + 32) setState:2];
  v2 = [*(a1 + 32) pendingBlocks];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

void sub_10E60(uint64_t a1)
{
  [*(a1 + 32) setState:0];
  v2 = [*(a1 + 32) pendingBlocks];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);

    [v3 setState:1];
  }
}

void sub_11344(id a1)
{
  qword_CC100 = objc_opt_new();

  _objc_release_x1();
}

void sub_11AB8(uint64_t a1)
{
  if (+[JSAOfflineCache runFromCache])
  {
    v2 = *(a1 + 32);
    if ((v2[3] & 0x8000000000000000) != 0)
    {
      [v2 _aq_loadPostLaunchCaches];
    }
  }

  else if (+[JSAOfflineCache generateCache])
  {
    [*(a1 + 32) _aq_saveOfflineCache];
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;
  }

  ++*(*(a1 + 32) + 24);
}

uint64_t sub_11DF4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = [*(a1 + 32) fileExistsAtPath:a2 isDirectory:&v4];
  return (v2 & v4);
}

uint64_t sub_12514(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1252C(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_1257C(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    return [v3 setObject:v2 forKeyedSubscript:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

void sub_12640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 toDictionary];
  v13 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
LABEL_4:
    v11 = [v7 bu_gzipDeflate];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];

    goto LABEL_5;
  }

  v12 = v8;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v10 = v12;

  if (v7)
  {
    goto LABEL_4;
  }

  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_81300();
  }

LABEL_5:
}

id sub_12AD4()
{
  objc_opt_self();
  if (qword_CC118 != -1)
  {
    sub_81450();
  }

  v0 = qword_CC110;

  return v0;
}

void sub_12B1C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_CC110;
  qword_CC110 = v1;

  [qword_CC110 setName:@"JSAStoreHTTPRequest"];
  v3 = qword_CC110;

  [v3 setMaxConcurrentOperationCount:4];
}

void sub_12B94(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v23 = [v2 jsa_parametrize:*(a1 + 80)];
      if (+[JSAOfflineCache runFromCache])
      {
        sub_81464(&v28, v23, a1, &location);
        v20 = location;
      }

      else
      {
        v3 = objc_opt_new();
        [v3 addBagKey:@"sf-api-token-service-url" valueType:5 defaultValue:@"https://sf-api-token-service.itunes.apple.com/apiToken/"];
        [AMSBagKeySet registerBagKeySet:v3 forProfile:@"iBooks" profileVersion:@"1"];
        v4 = +[BUBag defaultBag];
        v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
        if (([a1 disableATS] & 1) == 0)
        {
          v6 = [NSPropertyListSerialization dataWithPropertyList:&off_BA780 format:200 options:0 error:0];
          if (v6)
          {
            [v5 set_atsContext:v6];
          }
        }

        v7 = [AMSURLSession alloc];
        objc_opt_class();
        v8 = sub_12AD4();
        v9 = [v7 initWithConfiguration:v5 delegate:a1 delegateQueue:v8];

        v10 = [[AMSMediaTokenService alloc] initWithClientIdentifier:@"ibooks" bag:v4];
        [v10 setSession:v9];
        v11 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v10];
        [v9 setProtocolHandler:v11];
        v12 = [JSARequestEncoder alloc];
        v13 = [a1 cookiesToSuppress];
        v14 = [(JSARequestEncoder *)v12 initWithTokenService:v10 bag:v4 cookiesToSuppress:v13];

        v21 = v3;
        v15 = v5;
        if ([a1 personalized])
        {
          v16 = +[BUAccountsProvider sharedProvider];
          v17 = [v16 activeStoreAccount];
          [(JSARequestEncoder *)v14 setAccount:v17];
        }

        else
        {
          [(JSARequestEncoder *)v14 setAccount:0];
        }

        v18 = [(JSARequestEncoder *)v14 requestWithURL:v23, v21];
        objc_initWeak(&location, a1);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_13738;
        v24[3] = &unk_B2BD8;
        objc_copyWeak(&v27, &location);
        v25 = v23;
        v19 = v9;
        v26 = v19;
        [v18 addFinishBlock:v24];

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);

        v20 = v22;
      }
    }
  }
}

void sub_12EDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id sub_133DC()
{
  objc_opt_self();
  if (qword_CC128 != -1)
  {
    sub_81514();
  }

  v0 = qword_CC120;

  return v0;
}

void sub_13424(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("JSAStoreHTTPRequest.offlineCache", v1);
  v3 = qword_CC120;
  qword_CC120 = v2;
}

void sub_134A8(uint64_t a1)
{
  v2 = JSASignpostExecution();
  v3 = os_signpost_id_generate(v2);

  v4 = JSASignpostExecution();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "HTTP Offline Cache", "", v22, 2u);
  }

  v6 = +[_JSAStoreHTTPReqestOfflineCache sharedOfflineCache];
  v7 = [*(a1 + 32) absoluteString];
  v8 = [v6 responseForKey:v7];

  if (!v8)
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_81528((a1 + 32), v9);
    }

    v8 = objc_alloc_init(JSAStoreHTTPResponse);
    [(JSAStoreHTTPResponse *)v8 setStatusCode:404];
    [(JSAStoreHTTPResponse *)v8 set_error:&off_BA758];
  }

  v10 = JSASignpostExecution();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, v3, "HTTP Offline Cache", "", v22, 2u);
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 32);
  *(v12 + 32) = 0;

  v14 = *(a1 + 40);
  if (*(v14 + 96))
  {
    v15 = +[JSABridge sharedInstance];
    v16 = *(*(a1 + 40) + 96);
    v23 = v8;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    [v15 enqueueValueCall:v16 arguments:v17 file:@"JSAStoreHTTPRequest.m" line:579];

    v18 = *(a1 + 40);
    v19 = *(v18 + 96);
    *(v18 + 96) = 0;

    v14 = *(a1 + 40);
  }

  v20 = objc_retainBlock(*(v14 + 112));
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20, v8);
  }
}

void sub_13738(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [v3 setHTTPMethod:*(WeakRetained + 8)];
  [v3 setTimeoutInterval:*(WeakRetained + 2) * 1000.0];
  if (*(WeakRetained + 9))
  {
    if (([*(WeakRetained + 8) isEqualToString:@"GET"] & 1) == 0 && (objc_msgSend(*(WeakRetained + 8), "isEqualToString:", @"HEAD") & 1) == 0 && (objc_msgSend(*(WeakRetained + 8), "isEqualToString:", @"POST") & 1) == 0 && (objc_msgSend(*(WeakRetained + 8), "isEqualToString:", @"PUT") & 1) == 0 && !objc_msgSend(*(WeakRetained + 8), "isEqualToString:", @"PATCH"))
    {
      v6 = JSALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = a1[4];
        v15 = *(WeakRetained + 8);
        v16 = *(WeakRetained + 9);
        *buf = 136446978;
        v24 = "[JSAStoreHTTPRequest _enqueue]_block_invoke";
        v25 = 2114;
        v26 = v15;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v16;
        _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}s unexpected body for %{public}@ %@ %@", buf, 0x2Au);
      }

      goto LABEL_9;
    }

    v5 = *(WeakRetained + 9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(WeakRetained + 9) dataUsingEncoding:4];
      [v3 setHTTPBody:v6];
LABEL_9:

      goto LABEL_15;
    }

    v7 = *(WeakRetained + 9);
    v22 = 0;
    v8 = [NSJSONSerialization dataWithJSONObject:v7 options:1 error:&v22];
    v9 = v22;
    if (v9)
    {
      v10 = [[NSString alloc] initWithData:*(WeakRetained + 9) encoding:4];

      if (!v10)
      {
        [v3 setHTTPBody:v8];
      }
    }

    else
    {
      [v3 setHTTPBody:v8];
      [v3 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }
  }

LABEL_15:
  v11 = *(WeakRetained + 11);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_13AD8;
  v20[3] = &unk_B2B60;
  v21 = v3;
  v12 = v3;
  [v11 enumerateKeysAndObjectsUsingBlock:v20];
  objc_storeStrong(WeakRetained + 5, a1[5]);
  v13 = *(WeakRetained + 5);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_13AE4;
  v19[3] = &unk_B2B88;
  v19[4] = WeakRetained;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_809C8;
  v17[3] = &unk_B2BB0;
  v17[4] = WeakRetained;
  v18 = a1[4];
  [v13 createDataTaskWithRequest:v12 activity:0 dataTaskCreationCompletionHandler:v19 requestCompletionHandler:v17];
}

void sub_13AE4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  [*(*(a1 + 32) + 32) resume];
}

void sub_13EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_13EC0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 lowercaseString];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained lowercaseRestrictedHeaders];
  v9 = [v8 containsObject:v6];

  if ((v9 & 1) == 0 && ([v6 hasPrefix:@"proxy-"] & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"sec-") & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v10];
  }
}

void sub_142B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id JSASignpost()
{
  if (qword_CC138 != -1)
  {
    sub_816C8();
  }

  v1 = qword_CC130;

  return v1;
}

void sub_14314(id a1)
{
  qword_CC130 = os_log_create("com.apple.iBooks", "JSA.Signpost");

  _objc_release_x1();
}

id JSASignpostExecution()
{
  if (qword_CC148 != -1)
  {
    sub_816DC();
  }

  v1 = qword_CC140;

  return v1;
}

void sub_1439C(id a1)
{
  qword_CC140 = os_log_create("com.apple.iBooks", "JSA.Execution");

  _objc_release_x1();
}

id JSASignpostFeedController()
{
  if (qword_CC158 != -1)
  {
    sub_816F0();
  }

  v1 = qword_CC150;

  return v1;
}

void sub_14424(id a1)
{
  qword_CC150 = os_log_create("com.apple.iBooks", "JSA.FeedController");

  _objc_release_x1();
}

id JSASignpostJS()
{
  if (qword_CC168 != -1)
  {
    sub_81704();
  }

  v1 = qword_CC160;

  return v1;
}

void sub_144AC(id a1)
{
  qword_CC160 = os_log_create("com.apple.iBooks", "JSA.JS");

  _objc_release_x1();
}

void sub_1470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 feedController:WeakRetained wantsToUpdateSearchText:*(a1 + 32)];
}

void sub_149A0(id a1)
{
  v2 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v1 = objc_alloc_init(FAFamilySettings);
  if (objc_opt_respondsToSelector())
  {
    [v1 setPresentingViewController:v2];
    [v1 launchiCloudFamilySettings];
  }
}

void sub_15550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_15574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSASignpostFeedController();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v6, "Request Entries", "", v9, 2u);
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v3);
  }
}

void sub_15638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136446466;
    v14 = "[JSAFeedController requestEntriesWithCompletion:]_block_invoke";
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %p: got callback from JS", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setRequestEntriesCompletionBlock:0];

  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_157B0;
  block[3] = &unk_B2D30;
  objc_copyWeak(&v12, (a1 + 56));
  v10 = v3;
  v11 = *(a1 + 48);
  v8 = v3;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
}

void sub_157B0(id *a1)
{
  val = objc_loadWeakRetained(a1 + 6);
  if (val)
  {
    objc_storeStrong(val + 4, a1[4]);
  }

  v2 = objc_retainBlock(a1[5]);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, a1[4]);
  }

  v4 = val;
  if (val)
  {
    sub_15844(val);
    v4 = val;
  }
}

void sub_15844(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = +[JSABridge sharedInstance];
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1DF04;
    v2[3] = &unk_B31E0;
    objc_copyWeak(&v3, &location);
    [v1 enqueueBlock:v2 file:@"JSAFeedController.m" line:1076];

    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void sub_15908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1592C(id *a1)
{
  v2 = (a1 + 4);
  v3 = [a1[4] feed];
  v4 = [v3 isObject];

  if (v4)
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      *buf = 136446466;
      v24 = "[JSAFeedController requestEntriesWithCompletion:]_block_invoke_2";
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: bridged, now call getContentAsynchronously", buf, 0x16u);
    }

    v7 = +[JSABridge sharedInstance];
    v8 = [a1[4] feed];
    v9 = objc_retainBlock(a1[5]);
    v22 = v9;
    v10 = [NSArray arrayWithObjects:&v22 count:1];
    [v7 enqueueValueInvocation:v8 method:@"getContentAsynchronously" arguments:v10 file:@"JSAFeedController.m" line:157];
  }

  else if ([*v2 feedBridged])
  {
    v11 = JSALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_81FE8(v2, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = objc_retainBlock(a1[6]);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }
  }

  else
  {
    v20 = a1[6];
    v21 = a1[4];

    [v21 setRequestEntriesCompletionBlock:v20];
  }
}

void sub_15DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_15DEC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 isObject])
  {
    if (v10)
    {
      v18 = v9;
      v19 = v8;
      v20 = v10;
      v11 = &v18;
      v12 = 3;
    }

    else
    {
      v16 = v9;
      v17 = v8;
      v11 = &v16;
      v12 = 2;
    }

    v13 = [NSArray arrayWithObjects:v11 count:v12, v16, v17, v18, v19, v20];
    v14 = [v7 invokeMethod:@"executeEntryBehavior" withArguments:v13];
    if ([v14 isBoolean] && (objc_msgSend(v14, "toBool") & 1) == 0)
    {
      v15 = JSALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_8206C();
      }
    }
  }
}

void sub_15F44(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v2 = [WeakRetained feed];
  sub_15DEC(v2, a1[4], a1[5], a1[6]);
}

void sub_15FB0(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136446466;
    v14 = "[JSAFeedController _reloadWithCompletion:]_block_invoke";
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload step 0: current feed disappear", buf, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 feedControllerIsOnScreen:*(a1 + 32)];

  if (v5)
  {
    sub_819C8(*(a1 + 32));
    sub_81A4C(*(a1 + 32));
  }

  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136446466;
    v14 = "[JSAFeedController _reloadWithCompletion:]_block_invoke";
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload step 1: teardown current feed", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_161D4;
  v9[3] = &unk_B2E20;
  objc_copyWeak(&v11, buf);
  v10 = *(a1 + 40);
  v12 = v5;
  [v8 tearDownWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void sub_161B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_161D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained abandoned];
  if (!WeakRetained || v3)
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_820FC();
    }

    v6 = objc_retainBlock(*(a1 + 32));
    v4 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_16320;
    v7[3] = &unk_B2DF8;
    v8 = WeakRetained;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = *(a1 + 48);
    v9 = *(a1 + 32);
    sub_81784(v8, v7);

    objc_destroyWeak(&v10);
    v4 = v8;
  }
}

void sub_16320(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_163E0;
  v2[3] = &unk_B2DF8;
  v3 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 48));
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v5);
}

void sub_163E0(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136446466;
    v11 = "[JSAFeedController _reloadWithCompletion:]_block_invoke_2";
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload step 3: new feed appear", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 56) == 1)
  {
    sub_81AD0(WeakRetained);
    sub_81B54(v5);
    sub_81BD8(v5);
  }

  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[JSAFeedController _reloadWithCompletion:]_block_invoke";
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload step 4: request entries", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_165D4;
  v7[3] = &unk_B2DD0;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  [v5 requestEntriesWithCompletion:v7];

  objc_destroyWeak(&v9);
}

void sub_165D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v13 = "[JSAFeedController _reloadWithCompletion:]_block_invoke";
      v14 = 2048;
      v15 = WeakRetained;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload step 5: updateContentWithData", buf, 0x16u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_167C8;
    v10[3] = &unk_B20D8;
    v6 = WeakRetained;
    v11 = v6;
    os_unfair_lock_lock_with_options();
    sub_167C8(v10);
    os_unfair_lock_unlock(WeakRetained + 3);
    [(os_unfair_lock_s *)v6 updateContentWithData:v3];
  }

  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[JSAFeedController _reloadWithCompletion:]_block_invoke_2";
    v14 = 2048;
    v15 = WeakRetained;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload done", buf, 0x16u);
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

void sub_16930(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 feedController:WeakRetained wantsToUpdateContentWithData:*(a1 + 32)];
}

void sub_16B00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 feedController:WeakRetained viewStateDidUpdate:objc_msgSend(WeakRetained fromPreviousState:{"viewState"), *(a1 + 40)}];
}

void sub_16E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_16E74(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    sub_16F1C(*(a1 + 32), *(a1 + 40), v5);
    [v4 feedController:WeakRetained wantsToPushViewController:v5 animated:*(a1 + 56)];
  }
}

void sub_16F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = [v7 objectForKeyedSubscript:@"sourceView"];
    objc_initWeak(&location, v8);

    objc_opt_class();
    v9 = [v7 objectForKeyedSubscript:@"shouldZoomAnimate"];
    v10 = BUDynamicCast();
    v11 = [v10 BOOLValue];

    v12 = objc_loadWeakRetained(&location);
    if (v12 && _os_feature_enabled_impl())
    {

      if (v11)
      {
        v14 = _NSConcreteStackBlock;
        v15 = 3221225472;
        v16 = sub_1E550;
        v17 = &unk_B3278;
        objc_copyWeak(&v18, &location);
        v13 = [_UIViewControllerTransition zoomWithSourceViewProvider:&v14];
        [v6 _setPreferredTransition:{v13, v14, v15, v16, v17}];

        objc_destroyWeak(&v18);
      }
    }

    else
    {
    }

    objc_destroyWeak(&location);
  }
}

void sub_170C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1726C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 feedController:WeakRetained wantsToReplaceCurrentViewController:v5 animated:*(a1 + 40)];
  }
}

void sub_17490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_174B4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 feedController:WeakRetained wantsToPresentViewController:v5 animated:*(a1 + 48) params:*(a1 + 32)];
  }
}

void sub_176B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:*(a1 + 32) :1 :&off_BA7A8];
}

void sub_17874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17898(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 feedController:WeakRetained wantsToSlideInFeedViewController:v5];
  }
}

void sub_17ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17AE0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 feedController:WeakRetained wantsToPresentViewControllerInPopover:v5 withParams:*(a1 + 32)];
  }
}

void sub_17D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained wantsToPopViewController:*(a1 + 48) completion:*(a1 + 32)];
  }

  else
  {
    v3 = +[JSABridge sharedInstance];
    [v3 enqueueValueCall:*(a1 + 32) arguments:&off_BA908 file:@"JSAFeedController.m" line:406];
  }
}

void sub_18064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18088(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained wantsToPopToRootViewControllerAnimated:*(a1 + 48) completion:*(a1 + 32)];
  }

  else
  {
    v3 = +[JSABridge sharedInstance];
    [v3 enqueueValueCall:*(a1 + 32) arguments:&off_BA920 file:@"JSAFeedController.m" line:421];
  }
}

void sub_18350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 48);
    if ([*(a1 + 32) isObject])
    {
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    [v2 feedController:WeakRetained wantsToDismissViewControllerAnimated:v3 completion:v4];
  }
}

void sub_186E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_187F4;
      v6[3] = &unk_B20D8;
      v7 = v4;
      v5 = objc_retainBlock(v6);
    }

    else
    {
      v5 = 0;
    }

    [v3 feedController:WeakRetained wantsToPresentCardsWithCardArray:*(a1 + 40) focusedIndex:*(a1 + 64) animated:*(a1 + 72) options:*(a1 + 48) completion:v5];
  }
}

void sub_187F4(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"JSAFeedController.m" line:453];
}

void sub_18B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_18C30;
      v6[3] = &unk_B20D8;
      v7 = v4;
      v5 = objc_retainBlock(v6);
    }

    else
    {
      v5 = 0;
    }

    [v3 feedController:WeakRetained wantsToPresentCardsWithCardArray:*(a1 + 40) focusedIndex:*(a1 + 64) animated:*(a1 + 72) options:*(a1 + 48) completion:v5];
  }
}

void sub_18C30(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"JSAFeedController.m" line:475];
}

void sub_18EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained wantsToAppendCards:*(a1 + 32) options:*(a1 + 40)];
  }
}

void sub_1915C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_19180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 feedControllerWantsToOpenAccountSummaryWindow:WeakRetained];
  }
}

void sub_193F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained didLoadCardResource:*(a1 + 32)];
  }
}

void sub_1969C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_196C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained wantsToPerformRawActionModel:*(a1 + 32) shouldReportFigaro:*(a1 + 48)];
  }
}

void sub_1998C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_199C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (v3 = *(a1 + 32), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = *(a1 + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_19AF0;
    v9[3] = &unk_B2FB0;
    v9[4] = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    [v5 feedController:WeakRetained collectAndFlush:v4 accumulatedImpressionsWithCompletion:v9];
  }

  else
  {
    v8 = +[JSABridge sharedInstance];
    [v8 enqueueValueCall:*(a1 + 40) arguments:&__NSArray0__struct file:@"JSAFeedController.m" line:574];

    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }
}

void sub_19AF0(void *a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 136446466;
    v12 = "[JSAFeedController collectAndFlush:accumulatedImpressionsWithCompletion:]_block_invoke_2";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %p callback", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = a1[5];
  v10 = v3;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v6 enqueueValueCall:v7 arguments:v8 file:@"JSAFeedController.m" line:568];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_19C80;
  v9[3] = &unk_B2F88;
  v9[4] = a1[6];
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_19E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19EC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_19FE0;
    v8[3] = &unk_B2FB0;
    v4 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v5 = v4;
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    [v3 feedController:WeakRetained collectVisibleImpressionsWithCompletion:v8];
  }

  else
  {
    v7 = +[JSABridge sharedInstance];
    [v7 enqueueValueCall:*(a1 + 40) arguments:&__NSArray0__struct file:@"JSAFeedController.m" line:604];

    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }
}

void sub_19FE0(void *a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 136446466;
    v12 = "[JSAFeedController collectVisibleImpressionsWithCompletion:]_block_invoke_2";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %p callback", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = a1[5];
  v10 = v3;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v6 enqueueValueCall:v7 arguments:v8 file:@"JSAFeedController.m" line:598];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1A170;
  v9[3] = &unk_B2F88;
  v9[4] = a1[6];
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1A340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A364(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 resetImpressionsForFeedController:WeakRetained];
  }
}

void sub_1A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A61C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1A734;
    v8[3] = &unk_B3028;
    v4 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v5 = v4;
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    [v3 feedController:WeakRetained collectStatsWithCompletion:v8];
  }

  else
  {
    v7 = +[JSABridge sharedInstance];
    [v7 enqueueValueCall:*(a1 + 40) arguments:&__NSArray0__struct file:@"JSAFeedController.m" line:648];

    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }
}

void sub_1A734(void *a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 136446466;
    v12 = "[JSAFeedController collectStatsWithCompletion:]_block_invoke_2";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %p callback", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = a1[5];
  v10 = v3;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v6 enqueueValueCall:v7 arguments:v8 file:@"JSAFeedController.m" line:642];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1A8C4;
  v9[3] = &unk_B2F88;
  v9[4] = a1[6];
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1AA94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1AAB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 feedController:WeakRetained dismissKeyboard:0];
  }
}

void sub_1AD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v2 feedController:WeakRetained scrollToItem:v3 animated:*(a1 + 48) skipVoiceOverFocus:*(a1 + 49)];
    }
  }
}

void sub_1AFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained requestToSetNavigationBarHidden:*(a1 + 40) animated:*(a1 + 41)];
  }
}

void sub_1B2A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B2C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 feedController:WeakRetained requestToRenderSharableImage:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_1B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B590(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v2 feedController:WeakRetained addAlphaOverrideToItem:v3 alpha:*(a1 + 64) animated:*(a1 + 48) duration:*(a1 + 56)];
    }
  }
}

void sub_1B828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B84C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v2 feedController:WeakRetained removeAlphaOverrideFromItem:v3 animated:*(a1 + 56) duration:*(a1 + 48)];
    }
  }
}

void sub_1BAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BAC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 showLoadingViewForFeedController:WeakRetained];
  }
}

void sub_1BD04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BD28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 hideLoadingViewForFeedController:WeakRetained];
  }
}

void sub_1BFB8(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3042000000;
  v16 = sub_1C108;
  v17 = sub_1C114;
  v18 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1C11C;
  v8 = &unk_B3140;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 48);
  v12 = &v13;
  v3 = objc_retainBlock(&v5);
  objc_storeWeak(v14 + 5, v3);
  v4 = [*(a1 + 32) delegate];
  [v4 feedController:*(a1 + 32) addObserver:v3 forTrigger:*(a1 + 40)];

  _Block_object_dispose(&v13, 8);
  objc_destroyWeak(&v18);
}

void sub_1C0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1C11C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JSABridge sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C210;
  v7[3] = &unk_B3118;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v6 = v3;
  [v4 enqueueBlock:v7 file:@"JSAFeedController.m" line:786];
}

void sub_1C210(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136446722;
    v16 = "[JSAFeedController addWeakTriggerObserver::]_block_invoke_2";
    v17 = 2048;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@ triggered", buf, 0x20u);
  }

  v5 = [*(a1 + 48) value];

  if (v5)
  {
    v6 = +[JSABridge sharedInstance];
    v7 = [*(a1 + 48) value];
    v14 = *(a1 + 56);
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    [v6 enqueueValueCall:v7 arguments:v8 file:@"JSAFeedController.m" line:780];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1C3E0;
    v11[3] = &unk_B30F0;
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v13 = v9;
    v12 = v10;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_1C3E0(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  [v4 feedController:v2 removeObserver:WeakRetained forTrigger:*(a1 + 40)];
}

void sub_1C514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C530(uint64_t a1)
{
  v4 = +[JSABridge sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained feed];
  [v4 enqueueValueInvocation:v3 method:@"nativeScrollViewReachedTheBottom" arguments:0 file:@"JSAFeedController.m" line:799];
}

void sub_1C664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C7DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C978(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 8) ^ 1;
  *(*(result + 32) + 8) = 1;
  return result;
}

void sub_1C99C(uint64_t a1)
{
  v4 = +[JSABridge sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained feed];
  [v4 enqueueValueInvocation:v3 method:@"initialContentReady" arguments:0 file:@"JSAFeedController.m" line:853];
}

void sub_1CB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CB44(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained feed];
  v5 = *(a1 + 32);
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v10[0] = v6;
  v7 = *(a1 + 40);
  v8 = v7;
  if (!v7)
  {
    v8 = +[NSNull null];
  }

  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v2 enqueueValueInvocation:v4 method:@"parentCardWillDismiss" arguments:v9 file:@"JSAFeedController.m" line:867];

  if (!v7)
  {

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
}

void sub_1CD2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1CE24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1CE40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1CEDC;
  v3[3] = &unk_B20D8;
  v4 = *(a1 + 32);
  sub_81F30(WeakRetained, v3);
}

void sub_1CEDC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CF60;
  block[3] = &unk_B20D8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1CF68(uint64_t a1)
{
  v2 = [*(a1 + 32) feed];
  v3 = [v2 invokeMethod:@"analyticsVisibilityWillDisappear" withArguments:0];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1D768(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 feedControllerWillHotReload:*(a1 + 32)];
  }

  v5 = objc_retainBlock(*(a1 + 40));
  if (v5)
  {
    v6 = v5;
    v5[2]();
    v5 = v6;
  }
}

void sub_1D80C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"FeedFactory"];
  if ([v4 isObject])
  {
    objc_initWeak(&location, a1[4]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1DA6C;
    v15[3] = &unk_B3190;
    v17[1] = a1[6];
    objc_copyWeak(v17, &location);
    v16 = a1[5];
    v5 = objc_retainBlock(v15);
    v6 = +[JSABridge sharedInstance];
    v7 = [a1[4] options];
    v8 = v7;
    v9 = &__NSDictionary0__struct;
    if (v7)
    {
      v9 = v7;
    }

    v19[0] = v9;
    v10 = objc_retainBlock(v5);
    v19[1] = v10;
    v11 = [NSArray arrayWithObjects:v19 count:2];
    [v6 enqueueValueInvocation:v4 method:@"createFeed" arguments:v11 file:@"JSAFeedController.m" line:1025];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = JSASignpostFeedController();
    v13 = v12;
    v14 = a1[6];
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(location) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v14, "Bridge Feed", "", &location, 2u);
    }

    [a1[4] setFeedBridged:1];
  }
}

void sub_1DA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSASignpostFeedController();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v6, "Bridge Feed", "", v15, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v3 isObject])
    {
      [WeakRetained setFeed:v3];
      [WeakRetained setFeedBridged:1];
      [v3 setValue:WeakRetained forProperty:@"feedController"];
      v8 = [WeakRetained requestEntriesCompletionBlock];

      if (v8)
      {
        v9 = [WeakRetained requestEntriesCompletionBlock];
        [WeakRetained requestEntriesWithCompletion:v9];
      }

      sub_1DC10(WeakRetained, 1);
    }

    else
    {
      v10 = [WeakRetained requestEntriesCompletionBlock];

      if (v10)
      {
        v11 = [WeakRetained requestEntriesCompletionBlock];
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11, 0);
        }

        [WeakRetained setRequestEntriesCompletionBlock:0];
      }
    }
  }

  v13 = objc_retainBlock(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13);
  }
}

void sub_1DC10(void *a1, char a2)
{
  if (a1)
  {
    v4 = JSASignpostFeedController();
    v5 = os_signpost_id_generate(v4);

    v6 = JSASignpostFeedController();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Reload Metadata", "", buf, 2u);
    }

    v8 = [a1 feed];
    v9 = [v8 hasProperty:@"metadata"];

    if (v9)
    {
      v10 = [a1 feed];
      v11 = [v10 valueForProperty:@"metadata"];

      v12 = [v11 toDictionary];
      if (v12)
      {
        sub_81718(a1, v12);
        v13 = [a1 delegate];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          objc_initWeak(buf, a1);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1DE50;
          v17[3] = &unk_B2F38;
          objc_copyWeak(&v18, buf);
          v19 = a2;
          v17[4] = a1;
          v15 = objc_retainBlock(v17);
          if (v15)
          {
            if (+[NSThread isMainThread])
            {
              (v15[2])(v15);
            }

            else
            {
              sub_822F0(&v16, v15);
            }
          }

          objc_destroyWeak(&v18);
          objc_destroyWeak(buf);
        }
      }
    }

    sub_82370(v5 - 1 < 0xFFFFFFFFFFFFFFFELL, v5);
  }
}

void sub_1DE34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1DE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 feedControllerDidUpdateMetadata:WeakRetained];

  if (*(a1 + 48) == 1)
  {
    v3 = [WeakRetained delegate];
    v4 = [*(a1 + 32) metadata];
    [v4 navigationBarInitialBackgroundOpacity];
    [v3 feedController:WeakRetained wantsToUpdateNavBarBackgroundOpacity:?];
  }
}

void sub_1DF04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1DC10(WeakRetained, 0);
}

void sub_1DF48(id a1)
{
  v3[0] = @"NORMAL";
  v3[1] = @"OFFLINE";
  v4[0] = &off_BA830;
  v4[1] = &off_BA848;
  v3[2] = @"GENERIC_ERROR";
  v3[3] = @"SERVER_ERROR";
  v4[2] = &off_BA860;
  v4[3] = &off_BA878;
  v3[4] = @"PRODUCT_UNAVAILABLE";
  v3[5] = @"CONTENT_UNAVAILABLE";
  v4[4] = &off_BA818;
  v4[5] = &off_BA890;
  v3[6] = @"DISABLED_STOREFRONT";
  v3[7] = @"FOR_YOU_INELIGIBLE";
  v4[6] = &off_BA8A8;
  v4[7] = &off_BA8C0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_CC170;
  qword_CC170 = v1;
}

void sub_1E27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E29C(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1E384;
  v3[3] = &unk_B3228;
  v5 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 48));
  v4 = *(a1 + 32);
  [v2 enqueueBlock:v3 file:@"JSAFeedController.m" line:1135];

  objc_destroyWeak(&v6);
}

void sub_1E384(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  if ([v2 hasProperty:@"willUnload"])
  {
    v5 = [v2 invokeMethod:@"willUnload" withArguments:0];
  }

  [v2 setValue:0 forProperty:@"feedController"];
  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = 136446466;
    v12 = "[JSAFeedController tearDownWithCompletion:]_block_invoke_2";
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %p JSGarbageCollect()", &v11, 0x16u);
  }

  v8 = [v2 context];
  JSGarbageCollect([v8 JSGlobalContextRef]);

  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_1E504(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

id sub_1E550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained window];
  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1E7BC(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_1E818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1E92C;
    v8[3] = &unk_B32A0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v3 feedController:v4 wantsToCreateNewFeedWithOptions:v5 completion:v8];
  }

  else
  {
    v6 = objc_retainBlock(*(a1 + 56));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_1E92C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_82470(a1);
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5);
  }
}

void sub_1EBD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_1EDE4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_CC188;
  qword_CC188 = v1;

  return +[JSAMetricsAppLaunchEvent createPendingLaunchEvent];
}

void sub_1EF78(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  [v2 registerObjects:*(a1 + 40)];
}

void sub_1F220(id *a1)
{
  v2 = [a1[4] hasStarted];
  [a1[4] setHasStarted:1];
  if (v2)
  {
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_82BD4();
    }

    v4 = objc_retainBlock(a1[6]);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }

  else
  {
    v7 = [a1[5] objectRegistrationsForBridge:a1[4]];
    v6 = [a1[4] environment];
    [v6 registerObjects:v7];

    sub_824F4(a1[4], a1[6]);
  }
}

void sub_1F398(id a1, JSAPackage *a2)
{
  v2 = a2;
  v3 = JSALog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(JSAPackage *)v2 version];
      v6 = [(JSAPackage *)v2 isBundled];
      v7 = &stru_B7300;
      if (v6)
      {
        v7 = @" (bundled)";
      }

      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Provisioned package of version: %@%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_82C08();
  }
}

void sub_1F4AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setLastScriptCacheDate:v4];

  if (v3)
  {
    [*(a1 + 32) setupWithPackage:v3 completion:*(a1 + 40)];
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F5B0;
    block[3] = &unk_B20D8;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  else
  {
    v6 = JSALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_82C48();
    }
  }
}

void sub_1F678(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setLastScriptCacheDate:v4];

  if (v3)
  {
    v5 = [v3 version];
    v6 = v5;
    v7 = @"0.0.0";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [*(a1 + 32) currentPackage];
    v10 = [v9 version];

    v11 = [*(a1 + 32) currentPackage];
    if (([v11 isBundled] & 1) != 0 || !-[__CFString isEqualToString:](v10, "isEqualToString:", v8))
    {
    }

    else
    {
      v12 = [(__CFString *)v10 isEqualToString:@"0.0.0"];

      if ((v12 & 1) == 0)
      {
        v13 = JSALog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136446466;
          v29 = "[JSABridge checkForUpgradeWithCompletion:]_block_invoke";
          v30 = 2114;
          v31 = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s no pending package for later, current=%{public}@", &v28, 0x16u);
        }

        v14 = *(a1 + 32);
        v15 = 0;
LABEL_14:
        [v14 setPendingPackageVersion:v15];
        v17 = objc_retainBlock(*(a1 + 40));
        v18 = v17;
        if (v17)
        {
          (*(v17 + 2))(v17, v3);
        }

        goto LABEL_21;
      }
    }

    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446722;
      v29 = "[JSABridge checkForUpgradeWithCompletion:]_block_invoke";
      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}s pending package with version=%{public}@ for later, current=%{public}@", &v28, 0x20u);
    }

    v14 = *(a1 + 32);
    v15 = v8;
    goto LABEL_14;
  }

  v19 = JSALog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_82C7C(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  v27 = objc_retainBlock(*(a1 + 40));
  v8 = v27;
  if (v27)
  {
    (v27->data)(v27, 0);
  }

LABEL_21:
}

void sub_1FB74(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) version];
    v6 = 136446466;
    v7 = "[JSABridge upgradePackage:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s successfully upgraded to %{public}@", &v6, 0x16u);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 32));
  }
}

void sub_1FC70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 version];
      *buf = 136446466;
      v21 = "[JSABridge upgradePackage:completion:]_block_invoke";
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s successfully obtained pending package version %{public}@ for upgrade", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1FE18;
    v17[3] = &unk_B2728;
    v18 = v3;
    v19 = *(a1 + 40);
    [v7 setupWithPackage:v18 completion:v17];

    v8 = v18;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_82CF4(v5, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = objc_retainBlock(*(a1 + 40));
    v8 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }
}

void sub_1FE18(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) version];
    v6 = 136446466;
    v7 = "[JSABridge upgradePackage:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s successfully upgraded to %{public}@", &v6, 0x16u);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 32));
  }
}

void sub_2022C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"JSABridgeWillReloadNotification" object:0];
}

void sub_20280(uint64_t a1)
{
  v2 = [*(a1 + 32) templateBundleRegistrar];
  [v2 registerTemplateBundlesFromPackage:*(a1 + 40)];

  v3 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  v3[2](v3, 0);
}

void sub_202F8(id *a1)
{
  if ([a1[4] isScriptLoaded])
  {
    [JSAApplication didFinishLaunchingWithMetrics:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2088C;
    block[3] = &unk_B20D8;
    v9 = a1[5];
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    +[JSAMetricsAppLaunchEvent markJSBootstrapEndTime];
    if (BUIsRunningTests())
    {
      v2 = [a1[4] _beforeJSAppLaunchBlock];
      v3 = v2;
      if (v2)
      {
        (*(v2 + 16))(v2);
      }
    }

    [a1[4] setIsScriptLoaded:1];
    sub_20480(a1[4], 0);
    [JSAApplication didFinishLaunchingWithMetrics:1];
  }

  [a1[4] setIsLoadingScript:0];
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "JSABridge loadScriptFromPackage: done", v7, 2u);
  }

  v5 = objc_retainBlock(a1[6]);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
  }
}

void sub_20480(void *a1, int a2)
{
  if (a1 && [a1 isScriptLoaded])
  {
    objc_initWeak(&location, a1);
    v4 = [a1 launchExecutionRecordQueue];

    if (v4)
    {
      if (a2)
      {
        v5 = dispatch_semaphore_create(0);
      }

      else
      {
        v5 = 0;
      }

      v8 = [a1 environment];
      v9 = [v8 thread];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_21384;
      v36[3] = &unk_B3400;
      v39 = a2;
      objc_copyWeak(&v38, &location);
      v36[4] = a1;
      v10 = v5;
      v37 = v10;
      [v9 enqueueBlock:v36];

      if (v10)
      {
        v11 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v10, v11))
        {
          v12 = JSALog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_82DA0(v12, v13, v14, v15, v16, v17, v18, v19);
          }
        }
      }

      objc_destroyWeak(&v38);
    }

    else if (+[NSThread isMainThread])
    {
      v6 = [a1 environment];
      v7 = [v6 thread];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_8293C;
      v34[3] = &unk_B3428;
      v35 = a2;
      v34[4] = a1;
      [v7 enqueueBlock:v34];
    }

    else
    {
      v20 = [a1 environment];
      v21 = [v20 thread];
      v22 = [v21 isRunningOnThread];

      if (v22)
      {
        v23 = JSASignpostExecution();
        v24 = os_signpost_id_generate(v23);

        v25 = JSASignpostExecution();
        v26 = v25;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          v27 = @"NO";
          if (a2)
          {
            v27 = @"YES";
          }

          *buf = 138412290;
          v42 = v27;
          _os_signpost_emit_with_name_impl(&dword_0, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "JSAThread Block", "sync: %@", buf, 0xCu);
        }

        v28 = [a1 generalExecutionRecordQueue];
        sub_8268C(a1, v28);

        v29 = JSASignpostExecution();
        sub_82E18(v29, v24 - 1 < 0xFFFFFFFFFFFFFFFELL, v24);
      }

      else
      {
        v30 = [a1 environment];
        v31 = [v30 thread];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_82A88;
        v32[3] = &unk_B3428;
        v33 = a2;
        v32[4] = a1;
        [v31 enqueueBlockSync:v32];
      }
    }

    objc_destroyWeak(&location);
  }
}

void sub_2088C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"package";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"JSABridgeDidReloadNotification" object:0 userInfo:v4];
}

void sub_21348(id a1)
{
  qword_CC198 = objc_alloc_init(JSAEnvironment);

  _objc_release_x1();
}

void sub_21384(uint64_t a1)
{
  v2 = JSASignpostExecution();
  v3 = os_signpost_id_generate(v2);

  v4 = JSASignpostExecution();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    if (*(a1 + 56))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v14 = 138412290;
    v15 = v6;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Launch Block", "sync: %@", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) debugAssertRunningOnJSAThread];
  v8 = [WeakRetained launchExecutionRecordQueue];

  if (v8)
  {
    v9 = [WeakRetained launchExecutionRecordQueue];
    sub_8268C(WeakRetained, v9);

    [WeakRetained setLaunchExecutionRecordQueue:0];
  }

  v10 = [WeakRetained generalExecutionRecordQueue];
  sub_8268C(WeakRetained, v10);

  v11 = *(a1 + 40);
  if (v11)
  {
    dispatch_semaphore_signal(v11);
  }

  v12 = JSASignpostExecution();
  v13 = v12;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v3, "Launch Block", "", &v14, 2u);
  }
}

void sub_217C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_217DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, a5, a6, &a9, 0xCu);
}

void sub_21800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_INTERVAL_END, v9, a5, a6, &a9, 2u);
}

void sub_22688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 version];
    *buf = 136446466;
    v13 = "[JSAApplication downloadAndCacheScript:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s done, version=%@", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [v3 version];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 enqueueValueCall:v7 arguments:v10 file:@"JSAApplication.m" line:127];

  if (!v8)
  {
  }
}

void sub_22920(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3 = [v2 pendingPackageVersion];

  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_22A98;
    v6[3] = &unk_B3478;
    v7 = *(a1 + 32);
    [v2 upgradePackage:0 completion:v6];
    v4 = v7;
  }

  else
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[JSAApplication reloadWithNewCacheIfAvailable:]_block_invoke";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s nothing to upgrade", buf, 0xCu);
    }

    v4 = +[JSABridge sharedInstance];
    [v4 enqueueValueCall:*(a1 + 32) arguments:&off_BA938 file:@"JSAApplication.m" line:143];
  }
}

void sub_22A98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 version];
    *buf = 136446466;
    v13 = "[JSAApplication reloadWithNewCacheIfAvailable:]_block_invoke_2";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s done, version=%@", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [v3 version];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 enqueueValueCall:v7 arguments:v10 file:@"JSAApplication.m" line:139];

  if (!v8)
  {
  }
}

void sub_22D30(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_22DD8;
  v3[3] = &unk_B3478;
  v4 = *(a1 + 32);
  [v2 upgradePackage:0 completion:v3];
}

void sub_22DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 version];
    *buf = 136446466;
    v13 = "[JSAApplication reloadWithNewCache:]_block_invoke_2";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s done, version=%@", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [v3 version];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 enqueueValueCall:v7 arguments:v10 file:@"JSAApplication.m" line:155];

  if (!v8)
  {
  }
}

void sub_230D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "JSAApplication invoking launch block", v12, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v14 = @"metrics";
    v15 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = v6;
    if (v6)
    {
      v13 = v6;
      v8 = [NSArray arrayWithObjects:&v13 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = sub_23278(JSAApplication, @"onLaunch", v8, v3);
  v10 = sub_23278(JSAApplication, @"$bootstrap", &__NSArray0__struct, v3);
  if ((BUIsRunningTests() & 1) == 0)
  {
    v11 = [v3 globalObject];
    [v11 setObject:v10 forKeyedSubscript:@"$runtime"];
  }
}

id sub_23278(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (BUIsRunningTests())
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 objectForKeyedSubscript:@"App"];
    v9 = [v10 invokeMethod:v6 withArguments:v7];
  }

  return v9;
}

void sub_23348(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    v12 = objc_retainBlock(v8);
    *buf = 138543874;
    v27 = v6;
    v28 = 2048;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSAApplication invoke '%{public}@' with %lu args, completion: %@", buf, 0x20u);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_24AF8;
  v21 = &unk_B3558;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = objc_retainBlock(&v18);
  v17 = [JSABridge sharedInstance:v18];
  [v17 enqueueBlock:v16 file:@"JSAApplication.m" line:383];
}

void sub_2388C(uint64_t a1, void *a2, uint64_t a3)
{
  v9[0] = @"storeId";
  v9[1] = @"type";
  v10[0] = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 addObject:v8];
}

id sub_2395C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [NSMutableArray arrayWithArray:v5];

  if (v4)
  {
    [v6 addObject:v4];
  }

  return v6;
}

void sub_245EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2461C(void *a1, void *a2)
{
  v17 = a2;
  v3 = a1[9];
  v4 = a1[4];
  v5 = v4;
  if (!v4)
  {
    v5 = +[NSNull null];
  }

  v16 = v5;
  v18[0] = v5;
  v6 = a1[5];
  v7 = v6;
  if (!v6)
  {
    v7 = +[NSNull null];
  }

  v18[1] = v7;
  v8 = a1[6];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v18[2] = v9;
  v10 = a1[7];
  v11 = v10;
  if (!v10)
  {
    v11 = +[NSNull null];
  }

  v18[3] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:4];
  v13 = sub_23278(v3, @"purchaseEventFields", v12, v17);

  if (v10)
  {
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v8)
    {
LABEL_11:
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_21:

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_22:

LABEL_13:
  v14 = [v13 isString];
  if (v14)
  {
    v15 = [v13 toString];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong((*(a1[8] + 8) + 40), v15);
  if (v14)
  {
  }
}

void sub_24894(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3 && ([v3 isNull] & 1) == 0)
  {
    v4 = [v7 toNumber];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4);
  }
}

void sub_24A38(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isArray])
  {
    v3 = [v7 toArray];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = [v3 bu_objectsMatching:&stru_B3530];

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4);
  }
}

void sub_24AF8(uint64_t a1, void *a2)
{
  v5 = sub_23278(*(a1 + 56), *(a1 + 32), *(a1 + 40), a2);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_24F64(id a1)
{
  qword_CC1A8 = objc_alloc_init(JSAStore);

  _objc_release_x1();
}

uint64_t sub_25138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_25150(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_255AC(uint64_t a1)
{
  v2 = [*(a1 + 32) accountHandlers];
  v3 = [v2 mutableCopy];

  if (*(a1 + 40))
  {
    [v3 addObject:?];
  }

  [*(a1 + 32) setAccountHandlers:v3];
}

void sub_256D4(uint64_t a1)
{
  v2 = [*(a1 + 32) accountHandlers];
  v3 = [v2 mutableCopy];

  if (*(a1 + 40))
  {
    [v3 removeObject:?];
  }

  [*(a1 + 32) setAccountHandlers:v3];
}

void sub_25AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[BURestrictionsProvider sharedInstance];
    v3 = [v2 isAccountModificationAllowed];

    v4 = WeakRetained[40];
    v5 = v4 != v3;
    if (v4 != v3)
    {
      WeakRetained[40] = v3;
    }

    v6 = +[BURestrictionsProvider sharedInstance];
    v7 = [v6 isExplicitContentAllowed];

    if (WeakRetained[41] != v7)
    {
      WeakRetained[41] = v7;
      v5 = 1;
    }

    v8 = +[BURestrictionsProvider sharedInstance];
    v9 = [v8 isBookStoreAllowed];

    if (WeakRetained[42] != v9)
    {
      WeakRetained[42] = v9;
      v5 = 1;
    }

    v10 = +[UIApplication isRunningInStoreDemoMode];
    v11 = v10;
    if (WeakRetained[43] != v10)
    {
      WeakRetained[43] = v10;
      v5 = 1;
    }

    v12 = JSALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67110144;
      v15[1] = v5;
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[Store] changed: %i, allowsAccountModification: %i, allowsErotica: %i, allowsStore: %i, isRunningInStoreDemoMode: %i", v15, 0x20u);
    }

    if (v5)
    {
      v13 = +[JSABridge sharedInstance];
      v14 = [WeakRetained restrictionHandler];
      [v13 enqueueManagedValueCall:v14 arguments:0 file:@"JSAStore.m" line:295];
    }
  }
}

void sub_25C9C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v2 = [*(a1 + 16) uniqueIdentifier];
    if (v2)
    {
      v3 = [*(a1 + 16) uniqueIdentifier];
      v8 = v3;
      v4 = [NSArray arrayWithObjects:&v8 count:1];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }

    objc_initWeak(&location, a1);
    v5 = [a1 callbackQueue];
    sub_83220(v5, v6, &location, v4);
  }
}

void sub_25DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [WeakRetained accountHandlers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = +[JSABridge sharedInstance];
          v10 = v9;
          if (*(a1 + 32))
          {
            v17 = *(a1 + 32);
            v11 = [NSArray arrayWithObjects:&v17 count:1];
            [v10 enqueueValueCall:v8 arguments:v11 file:@"JSAStore.m" line:321];
          }

          else
          {
            [v9 enqueueValueCall:v8 arguments:0 file:@"JSAStore.m" line:321];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v5);
    }

    WeakRetained = v12;
  }
}

void sub_25F34(dispatch_queue_t *a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[6]);
    objc_initWeak(&location, a1);
    v2 = [(dispatch_queue_t *)a1 callbackQueue];
    sub_832C4(v2, &v3, &location);
  }
}

void sub_25FA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = JSALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[Store] Notifiying JS of storefront change", v7, 2u);
    }

    v3 = +[JSABridge sharedInstance];
    v4 = v3;
    v5 = WeakRetained[11];
    if (WeakRetained[1])
    {
      v8 = WeakRetained[1];
      v6 = [NSArray arrayWithObjects:&v8 count:1];
      [v4 enqueueManagedValueCall:v5 arguments:v6 file:@"JSAStore.m" line:341];
    }

    else
    {
      [v3 enqueueManagedValueCall:WeakRetained[11] arguments:0 file:@"JSAStore.m" line:341];
    }
  }
}

void sub_261C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v4 = +[BUAccountsProvider sharedProvider];
    v5 = [v4 currentStorefront];

    if (v3 | v5 && ([v3 isEqualToString:v5] & 1) == 0)
    {
      v6 = JSALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Store] New account store front identifier from %@ to %@", &v10, 0x16u);
      }

      objc_storeStrong((v2 + 8), v5);
      sub_25F34(v2);
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:@"JSAStorefrontDidChangeNotification" object:0];
    }

    v8 = [[JSAAccount alloc] initWithDelegate:v2];
    v9 = *(v2 + 16);
    *(v2 + 16) = v8;

    sub_25C9C(v2);
  }
}

void sub_263F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [[JSAAccount alloc] initWithDelegate:WeakRetained];
    v3 = v4[2];
    v4[2] = v2;

    sub_25C9C(v4);
    WeakRetained = v4;
  }
}

id sub_265BC(uint64_t a1)
{
  v2 = *(a1 + 32);

  return v2;
}

uint64_t sub_265EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v10);

  return objc_opt_respondsToSelector();
}

uint64_t sub_266AC(uint64_t a1)
{
  qword_CC1B8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_2690C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26934(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[JSACookieStorage] Updating cookies now after coalescing delay", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_26A28;
  v7[3] = &unk_B2100;
  v8 = v3;
  v6 = v3;
  sub_8334C(WeakRetained, v7);
}

void sub_26DF8(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"JSACookieStorage.m" line:122];
}

void sub_26E60(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"JSACookieStorage.m" line:127];
}

void sub_270F0(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"JSACookieStorage.m" line:143];
}

void sub_27208(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 localStoreAccount];
  v6 = [v5 ams_cookies];
  v7 = [*(a1 + 32) defaultURL];
  v38 = sub_8353C(v3, v6, v7);

  v8 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v9 = [*(a1 + 32) defaultURL];
  v37 = [v8 cookiesForURL:v9];

  [v38 arrayByAddingObjectsFromArray:v37];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v10 = v54 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v11)
  {
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [v2 objectForKeyedSubscript:v15];
        v17 = v16 == 0;

        if (v17)
        {
          v18 = [[JSACookie alloc] initWithNativeCookie:v14];
          [v2 setObject:v18 forKeyedSubscript:v15];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v11);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v19 = [v2 mutableCopy];
  v20 = [*(a1 + 32) indexedCookies];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_27748;
  v46[3] = &unk_B35F8;
  v21 = v19;
  v47 = v21;
  v48 = &v49;
  [v20 enumerateKeysAndObjectsUsingBlock:v46];

  if (*(v50 + 24) != 1 || (v22 = [v21 count], *(v50 + 24) = v22 == 0, v22))
  {
    [*(a1 + 32) setIndexedCookies:{v2, v37}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = [*(a1 + 32) invalidationTimers];
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v57 count:16];
    if (v24)
    {
      v25 = *v43;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v43 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v42 + 1) + 8 * j) invalidate];
        }

        v24 = [v23 countByEnumeratingWithState:&v42 objects:v57 count:16];
      }

      while (v24);
    }

    v27 = objc_opt_new();
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_277FC;
    v40[3] = &unk_B26B0;
    v40[4] = *(a1 + 32);
    v28 = v27;
    v41 = v28;
    [v2 enumerateKeysAndObjectsUsingBlock:v40];
    [*(a1 + 32) setInvalidationTimers:v28];
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = [v2 copy];
      v31 = *(v29 + 8);
      *(v29 + 8) = v30;
    }
  }

  v32 = JSALog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Notifying JS about cookie storage change", buf, 2u);
  }

  v33 = +[JSABridge sharedInstance];
  v34 = [*(a1 + 32) cookieStorageChangeHandler];
  [v33 enqueueManagedValueCall:v34 arguments:0 file:@"JSACookieStorage.m" line:230];

  v35 = objc_retainBlock(*(a1 + 40));
  v36 = v35;
  if (v35)
  {
    (*(v35 + 2))(v35);
  }

  _Block_object_dispose(&v49, 8);
}

void sub_27748(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v9 = v8;
  if (v8 && [v8 isEqual:v7])
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v10];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_277FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 expirationDate];
  if (v4)
  {
    v7 = v4;
    v5 = [[NSTimer alloc] initWithFireDate:v4 interval:*(a1 + 32) target:"_handleCookieDidExpire:" selector:0 userInfo:0 repeats:1.79769313e308];
    v6 = +[NSRunLoop currentRunLoop];
    [v6 addTimer:v5 forMode:NSRunLoopCommonModes];

    [*(a1 + 40) addObject:v5];
    v4 = v7;
  }
}

uint64_t sub_278C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSecure])
  {
    v4 = *(a1 + 48) == [v3 isSecure];
  }

  else
  {
    v4 = 1;
  }

  v5 = [v3 expiresDate];
  if (v5)
  {
    v6 = [v3 expiresDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7 >= CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 32);
  v10 = [v3 domain];
  v11 = [v9 hasSuffix:v10];

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = [v3 path];
    v14 = [v12 hasPrefix:v13];
  }

  else
  {
    v14 = 1;
  }

  if (!v8 || !v4)
  {
    v11 = 0;
  }

  return v11 & v14;
}

void sub_27ACC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL sub_27AEC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_27B04()
{
  v2 = *(v0 + 56);

  return [v2 signalWithCompletion:0];
}

id sub_27B1C()
{
  result = [objc_allocWithZone(type metadata accessor for HotReloadController()) init];
  qword_CA3C8 = result;
  return result;
}

id URLParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static HotReloadController.shared.getter()
{
  if (qword_CA3C0 != -1)
  {
    swift_once();
  }

  v1 = qword_CA3C8;

  return v1;
}

BOOL sub_27C94()
{
  v1 = *(v0 + OBJC_IVAR___JSAHotReloadController_hotReloadCount);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16) > 0;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

id HotReloadController.init()()
{
  v24 = sub_8481C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_847FC() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_83DDC() - 8) + 64);
  __chkstk_darwin();
  *&v0[OBJC_IVAR___JSAHotReloadController_notificationObserver] = 0;
  v7 = OBJC_IVAR___JSAHotReloadController_hotReloadCount;
  sub_2805C(&qword_CA508, &unk_A0410);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v23 = v0;
  *&v0[v7] = v8;
  *&v0[OBJC_IVAR___JSAHotReloadController_subscribers] = &_swiftEmptyArrayStorage;
  v9 = sub_280A4();
  v21 = "tionType";
  v22 = v9;
  sub_83DCC();
  v26 = &_swiftEmptyArrayStorage;
  v20 = sub_2842C(&qword_CAD90, &type metadata accessor for OS_dispatch_queue.Attributes);
  v19 = sub_2805C(&qword_CA520, &unk_A1670);
  sub_28474(&qword_CADA0, &qword_CA520, &unk_A1670);
  sub_8496C();
  v10 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v11 = *(v1 + 104);
  v17 = v4;
  v18 = v1 + 104;
  v11(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v12 = sub_8485C();
  v13 = v23;
  *&v23[OBJC_IVAR___JSAHotReloadController_queue] = v12;
  sub_83DCC();
  v26 = &_swiftEmptyArrayStorage;
  sub_8496C();
  v11(v17, v10, v24);
  *&v13[OBJC_IVAR___JSAHotReloadController_subscriberQueue] = sub_8485C();
  v14 = type metadata accessor for HotReloadController();
  v25.receiver = v13;
  v25.super_class = v14;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_2805C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_280A4()
{
  result = qword_CA518;
  if (!qword_CA518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CA518);
  }

  return result;
}

uint64_t sub_280F0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_281A8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_281E0(void (*a1)(uint64_t))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR___JSAHotReloadController_notificationObserver];

  if (v3)
  {

    if (!a1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (qword_CA498 != -1)
  {
    swift_once();
  }

  v5 = sub_83D6C();
  sub_2C284(v5, qword_CB3E0);
  v6 = sub_83D4C();
  v7 = sub_847CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Starting hot reload mode", v8, 2u);
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for HotReloadNotificationObserver();
  swift_allocObject();
  v10 = sub_6B014();
  v11 = *&v9[OBJC_IVAR___JSAHotReloadController_notificationObserver];
  *&v9[OBJC_IVAR___JSAHotReloadController_notificationObserver] = v10;

  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = *&v12[OBJC_IVAR___JSAHotReloadController_notificationObserver];

  if (v13)
  {
    v14 = swift_unknownObjectUnownedLoadStrong();
    *(v13 + 32) = &off_B4D80;
    swift_unknownObjectWeakAssign();
  }

  if (a1)
  {
LABEL_3:
    a1(v4);
  }
}

void sub_283B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_281E0(*(v0 + 16));
}

uint64_t sub_283C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_28404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2841C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2842C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28474(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_280F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_285A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = sub_83D9C();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_83DDC();
  v25 = *(v13 - 8);
  v26 = v13;
  v14 = *(v25 + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + OBJC_IVAR___JSAHotReloadController_queue);
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v18;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_283C0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_2841C(a1);

  sub_83DAC();
  v28 = &_swiftEmptyArrayStorage;
  sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
  sub_8496C();
  sub_8484C();
  _Block_release(v20);

  (*(v27 + 8))(v12, v9);
  (*(v25 + 8))(v16, v26);
}

uint64_t sub_288AC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v19 = a2;
  v22 = a1;
  v2 = sub_83D9C();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_83DDC();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_CA498 != -1)
  {
    swift_once();
  }

  v10 = sub_83D6C();
  sub_2C284(v10, qword_CB3E0);
  v11 = sub_83D4C();
  v12 = sub_847CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Stopping hot reload mode", v13, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = *&Strong[OBJC_IVAR___JSAHotReloadController_notificationObserver];
  *&Strong[OBJC_IVAR___JSAHotReloadController_notificationObserver] = 0;

  sub_280A4();
  v16 = sub_8482C();
  aBlock[4] = sub_2CF00;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_283C0;
  aBlock[3] = &unk_B4ED8;
  v17 = _Block_copy(aBlock);
  sub_83DAC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
  sub_8496C();
  sub_8484C();
  _Block_release(v17);

  (*(v21 + 8))(v5, v2);
  result = (*(v6 + 8))(v9, v20);
  if (v22)
  {
    return v22(result);
  }

  return result;
}

uint64_t sub_28C48()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_28D54(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___JSAHotReloadController_subscriberQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29068;
  *(v5 + 24) = v4;
  v11[4] = sub_29098;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_290C0;
  v11[3] = &unk_B4CE0;
  v6 = _Block_copy(v11);
  v7 = v3;
  v8 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v7, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_28EC8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___JSAHotReloadController_subscribers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = *(a1 + v4);

    v9 = 0;
    while (v9 < *(v5 + 16))
    {
      sub_2C13C(v7, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_2C1AC(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
        }
      }

      ++v9;
      v7 += 8;
      if (v6 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  a2 = *(a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v4) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a2 = sub_617E4(0, a2[2] + 1, 1, a2);
    *(a1 + v4) = a2;
  }

  v14 = a2[2];
  v13 = a2[3];
  if (v14 >= v13 >> 1)
  {
    a2 = sub_617E4((v13 > 1), v14 + 1, 1, a2);
  }

  a2[2] = v14 + 1;
  sub_2C214(v16, &a2[v14 + 4]);
  *(a1 + v4) = a2;
  return swift_endAccess();
}

uint64_t sub_29098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29100(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___JSAHotReloadController_subscriberQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29440;
  *(v5 + 24) = v4;
  v11[4] = sub_2CF1C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_290C0;
  v11[3] = &unk_B4D58;
  v6 = _Block_copy(v11);
  v7 = v3;
  v8 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v7, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29274(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___JSAHotReloadController_subscribers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v10 = &_swiftEmptyArrayStorage;
    while (v8 < *(v5 + 16))
    {
      sub_2C13C(v9, v18);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v12 = Strong, swift_unknownObjectRelease(), v12 == a2) || !swift_unknownObjectWeakLoadStrong())
      {
        result = sub_2C1AC(v18);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_2C214(v18, &v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3AF30(0, v10[2] + 1, 1);
          v10 = v19;
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_3AF30((v14 > 1), v15 + 1, 1);
          v10 = v19;
        }

        v10[2] = v15 + 1;
        result = sub_2C214(&v17, &v10[v15 + 4]);
      }

      ++v8;
      v9 += 8;
      if (v6 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_15:

    v16 = *(a1 + v4);
    *(a1 + v4) = v10;
  }

  return result;
}

uint64_t sub_29400()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_29460(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id HotReloadController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HotReloadController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_296F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29710(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2974C(unsigned __int8 a1, void *a2)
{
  v4 = sub_83D9C();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  (__chkstk_darwin)();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_83DDC();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_83DFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (__chkstk_darwin)();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21 - 8);
  v24 = &v34 - v23;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        sub_43974(0xD000000000000015, 0x800000000009BB40);
        sub_8465C();
        v25 = sub_8468C();
        (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
        sub_8464C();
        v26 = a2;
        v27 = sub_8463C();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v26;
        sub_2D4A4(0, 0, v24, &unk_A0860, v28);
      }

      else
      {
        sub_43E9C();
        if (v31)
        {
          sub_43974(0xD00000000000001FLL, 0x800000000009BB20);
          sub_280A4();
          v35 = sub_8482C();
          sub_83DEC();
          sub_83E1C();
          v36 = *(v14 + 8);
          v36(v18, v13);
          aBlock[4] = sub_2CF00;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_283C0;
          aBlock[3] = &unk_B4F50;
          v34 = _Block_copy(aBlock);
          sub_83DAC();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
          sub_2805C(&unk_CAE50, &unk_A0420);
          sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
          sub_8496C();
          v33 = v34;
          v32 = v35;
          sub_8480C();
          _Block_release(v33);

          (*(v39 + 8))(v7, v4);
          (*(v38 + 8))(v12, v37);
          v36(v20, v13);
        }
      }

      return;
    }

    v29 = "Hot reloading the app";
    v30 = 0xD000000000000018;
    goto LABEL_14;
  }

  if (a1)
  {
    v29 = "Installing the new build";
    v30 = 0xD000000000000017;
LABEL_14:

    sub_43974(v30, v29 | 0x8000000000000000);
    return;
  }

  sub_432DC();
}

uint64_t sub_29CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_83D9C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_83DDC();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_8464C();
  v4[16] = sub_8463C();
  v12 = sub_8460C();
  v4[17] = v12;
  v4[18] = v11;

  return _swift_task_switch(sub_29E30, v12, v11);
}

uint64_t sub_29E30()
{
  v1 = type metadata accessor for PackageProvisioner();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v5 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
  v6 = sub_83E4C();
  *(v0 + 152) = [v4 initWithLaunching:0 processVariant:v5 overridePackageURLCachePath:0 on:v6];

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_29F58;

  return PackageProvisioner.provision()();
}

uint64_t sub_29F58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return _swift_task_switch(sub_2A080, v5, v4);
}

uint64_t sub_2A080()
{
  v1 = v0[21];
  v2 = v0[16];

  if (v1)
  {
    v3 = v0[21];
    v4 = v0[19];
    v5 = v0[9];
    sub_2A380(v3);
  }

  else
  {
    if (qword_CA498 != -1)
    {
      swift_once();
    }

    v6 = sub_83D6C();
    sub_2C284(v6, qword_CB3E0);
    v7 = sub_83D4C();
    v8 = sub_8478C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Provisioner failed to provision, bailing out.", v9, 2u);
    }

    v10 = v0[15];
    v20 = v0[19];
    v21 = v0[14];
    v11 = v0[12];
    v22 = v0[13];
    v12 = v0[10];
    v13 = v0[11];

    sub_280A4();
    v19 = sub_8482C();
    v0[6] = sub_2CF00;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_283C0;
    v0[5] = &unk_B4FA0;
    v14 = _Block_copy(v0 + 2);
    sub_83DAC();
    v0[8] = &_swiftEmptyArrayStorage;
    sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
    sub_2805C(&unk_CAE50, &unk_A0420);
    sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
    sub_8496C();
    sub_8484C();

    _Block_release(v14);

    (*(v13 + 8))(v11, v12);
    (*(v21 + 8))(v10, v22);
  }

  v15 = v0[15];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

void sub_2A380(void *a1)
{
  v3 = sub_83D9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_83DDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR___JSAHotReloadController_hotReloadCount];
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v34 = a1;
    v35 = v9;
    v36 = v7;
    v37 = v8;
    v38 = v4;
    v39 = v3;
    *(v13 + 16) = v16;
    os_unfair_lock_unlock((v13 + 24));
    v17 = dispatch_group_create();
    v18 = *&v1[OBJC_IVAR___JSAHotReloadController_subscriberQueue];
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_2CA8C;
    *(v20 + 24) = v19;
    v45 = sub_2CF1C;
    v46 = v20;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_290C0;
    v44 = &unk_B5018;
    v21 = _Block_copy(&aBlock);
    v22 = v18;
    v23 = v1;
    v24 = v17;

    dispatch_sync(v22, v21);

    _Block_release(v21);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      sub_280A4();
      v25 = sub_8482C();
      v26 = swift_allocObject();
      v27 = v34;
      *(v26 + 16) = v34;
      *(v26 + 24) = v23;
      v45 = sub_2CAA4;
      v46 = v26;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_283C0;
      v44 = &unk_B5068;
      v28 = _Block_copy(&aBlock);
      v29 = v23;
      v30 = v27;
      sub_83DAC();
      v40 = &_swiftEmptyArrayStorage;
      sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
      sub_2805C(&unk_CAE50, &unk_A0420);
      sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
      v31 = v36;
      v32 = v39;
      sub_8496C();
      sub_847DC();
      _Block_release(v28);

      (*(v38 + 8))(v31, v32);
      (*(v35 + 8))(v12, v37);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_2A7E4(void *a1, NSObject *a2)
{
  if (qword_CA498 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = sub_83D6C();
    sub_2C284(v4, qword_CB3E0);
    v5 = a1;
    v6 = sub_83D4C();
    v7 = sub_8479C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = OBJC_IVAR___JSAHotReloadController_subscribers;
      swift_beginAccess();
      *(v8 + 4) = *(*(v5 + v9) + 16);

      _os_log_impl(&dword_0, v6, v7, "Waiting for %ld subscribers to finish with willReloadScript", v8, 0xCu);
    }

    else
    {
    }

    v10 = OBJC_IVAR___JSAHotReloadController_subscribers;
    swift_beginAccess();
    v25 = v10;
    v11 = *(v5 + v10);
    v12 = *(v11 + 16);

    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = v11 + 32;
    a1 = &_swiftEmptyArrayStorage;
    while (v13 < *(v11 + 16))
    {
      sub_2C13C(v14, v27);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        dispatch_group_enter(a2);
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        aBlock[4] = sub_2CB34;
        aBlock[5] = v17;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_283C0;
        aBlock[3] = &unk_B51D0;
        v18 = _Block_copy(aBlock);
        v19 = a2;

        [v16 hotReloadControllerWillReloadScript:v5 completion:v18];
        swift_unknownObjectRelease();
        _Block_release(v18);
        sub_2C214(v27, aBlock);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3AF30(0, a1[2] + 1, 1);
          a1 = v28;
        }

        v22 = a1[2];
        v21 = a1[3];
        if (v22 >= v21 >> 1)
        {
          sub_3AF30((v21 > 1), v22 + 1, 1);
          a1 = v28;
        }

        a1[2] = v22 + 1;
        sub_2C214(aBlock, &a1[v22 + 4]);
      }

      else
      {
        sub_2C1AC(v27);
      }

      ++v13;
      v14 += 8;
      if (v12 == v13)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  a1 = &_swiftEmptyArrayStorage;
LABEL_17:

  v23 = *(v5 + v25);
  *(v5 + v25) = a1;
}

void sub_2AB30(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v5[4] = sub_2CAAC;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_283C0;
  v5[3] = &unk_B5090;
  v4 = _Block_copy(v5);

  [v2 setupWithPackage:a1 completion:v4];
  _Block_release(v4);
}

void sub_2AC3C(uint64_t a1)
{
  v2 = sub_83D9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_83DDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = *&Strong[OBJC_IVAR___JSAHotReloadController_hotReloadCount];

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v29 = v8;
    v30 = v6;
    v31 = v7;
    v32 = v3;
    v33 = v2;
    *(v13 + 16) = v16;
    os_unfair_lock_unlock((v13 + 24));

    v17 = dispatch_group_create();
    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = *&v18[OBJC_IVAR___JSAHotReloadController_subscriberQueue];

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_2CAF4;
    *(v21 + 24) = v20;
    v39 = sub_2CF1C;
    v40 = v21;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_290C0;
    v38 = &unk_B5108;
    v22 = _Block_copy(&aBlock);

    v23 = v17;

    dispatch_sync(v19, v22);

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_280A4();
      v25 = sub_8482C();
      v39 = sub_2B464;
      v40 = 0;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_283C0;
      v38 = &unk_B5130;
      v26 = _Block_copy(&aBlock);
      sub_83DAC();
      v34 = &_swiftEmptyArrayStorage;
      sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
      sub_2805C(&unk_CAE50, &unk_A0420);
      sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
      v27 = v30;
      v28 = v33;
      sub_8496C();
      sub_847DC();
      _Block_release(v26);

      (*(v32 + 8))(v27, v28);
      (*(v29 + 8))(v11, v31);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_2B098(uint64_t a1, NSObject *a2)
{
  if (qword_CA498 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = sub_83D6C();
    sub_2C284(v4, qword_CB3E0);

    v5 = sub_83D4C();
    v6 = sub_8479C();
    v7 = &OBJC_PROTOCOL___JSAHotReloadControllerSubscribing;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v10 = OBJC_IVAR___JSAHotReloadController_subscribers;
      swift_beginAccess();
      v11 = *&Strong[v10];

      v12 = *(v11 + 16);

      *(v8 + 4) = v12;
      v7 = &OBJC_PROTOCOL___JSAHotReloadControllerSubscribing;

      _os_log_impl(&dword_0, v5, v6, "Waiting for %ld subscribers to finish with didReloadScript", v8, 0xCu);
    }

    else
    {
    }

    v32 = swift_unknownObjectUnownedLoadStrong();
    v13 = swift_unknownObjectUnownedLoadStrong();
    isa = v7[18].isa;
    swift_beginAccess();
    v15 = *&isa[v13];

    v33 = *(v15 + 16);
    if (!v33)
    {
      break;
    }

    v16 = 0;
    v17 = v15 + 32;
    v18 = &_swiftEmptyArrayStorage;
    while (v16 < *(v15 + 16))
    {
      sub_2C13C(v17, v35);
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        dispatch_group_enter(a2);
        v21 = a1;
        v22 = swift_unknownObjectUnownedLoadStrong();
        v23 = swift_allocObject();
        *(v23 + 16) = a2;
        aBlock[4] = sub_2CF58;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_283C0;
        aBlock[3] = &unk_B5180;
        v24 = _Block_copy(aBlock);
        v25 = a2;

        [v20 hotReloadControllerDidReloadScript:v22 completion:v24];
        swift_unknownObjectRelease();
        _Block_release(v24);

        sub_2C214(v35, aBlock);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3AF30(0, v18[2] + 1, 1);
          v18 = v36;
        }

        v28 = v18[2];
        v27 = v18[3];
        a1 = v21;
        if (v28 >= v27 >> 1)
        {
          sub_3AF30((v27 > 1), v28 + 1, 1);
          v18 = v36;
        }

        v18[2] = v28 + 1;
        sub_2C214(aBlock, &v18[v28 + 4]);
      }

      else
      {
        sub_2C1AC(v35);
      }

      ++v16;
      v17 += 8;
      if (v33 == v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_17:

  v29 = OBJC_IVAR___JSAHotReloadController_subscribers;
  swift_beginAccess();
  v30 = *&v32[v29];
  *&v32[v29] = v18;
}

void *sub_2B464()
{
  if (qword_CA498 != -1)
  {
    swift_once();
  }

  v0 = sub_83D6C();
  sub_2C284(v0, qword_CB3E0);
  v1 = sub_83D4C();
  v2 = sub_8479C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Hot reload is complete", v3, 2u);
  }

  return sub_432DC();
}

uint64_t sub_2B574(uint64_t a1, uint64_t a2)
{
  result = sub_83B6C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_2B5C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_83B7C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2B620@<X0>(void *a1@<X8>)
{
  result = sub_83B8C();
  *a1 = v3;
  return result;
}

uint64_t sub_2B650(uint64_t a1, uint64_t a2)
{
  result = sub_846EC();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_2B6A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_846FC();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_2B6FC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_8470C();
  *a1 = v3;
  return result;
}

uint64_t sub_2B724()
{
  v1 = *v0;
  sub_843AC();
  v2 = sub_8452C();

  return v2;
}

uint64_t sub_2B760()
{
  v1 = *v0;
  sub_843AC();
  sub_8446C();
}

Swift::Int sub_2B7B4()
{
  v1 = *v0;
  sub_843AC();
  sub_84CCC();
  sub_8446C();
  v2 = sub_84D0C();

  return v2;
}

uint64_t sub_2B828(uint64_t a1, id *a2)
{
  result = sub_8438C();
  *a2 = 0;
  return result;
}

uint64_t sub_2B8A0(uint64_t a1, id *a2)
{
  v3 = sub_8439C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2B920@<X0>(void *a1@<X8>)
{
  sub_843AC();
  v2 = sub_8437C();

  *a1 = v2;
  return result;
}

uint64_t sub_2B968(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_843AC();
  v6 = v5;
  if (v4 == sub_843AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_84BEC();
  }

  return v9 & 1;
}

uint64_t sub_2B9F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_843AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2BA20()
{
  sub_2842C(&qword_CA650, type metadata accessor for FileAttributeKey);
  sub_2842C(&qword_CA658, type metadata accessor for FileAttributeKey);

  return sub_84B4C();
}

uint64_t sub_2BADC()
{
  sub_2842C(&qword_CA660, type metadata accessor for OpenExternalURLOptionsKey);
  sub_2842C(&qword_CA668, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_84B4C();
}

void *sub_2BB98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_2BBA8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2BBB4()
{
  v2 = *v0;
  sub_2842C(&qword_CA670, type metadata accessor for Level);
  sub_2842C(&qword_CA678, type metadata accessor for Level);
  sub_2CE4C();
  return sub_84B4C();
}

_DWORD *sub_2BC7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_2BC8C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2BC98()
{
  v2 = *v0;
  sub_2842C(&qword_CA5C0, type metadata accessor for OperationPriority);
  sub_2842C(&qword_CA5C8, type metadata accessor for OperationPriority);
  return sub_84B4C();
}

uint64_t sub_2BD54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_8437C();

  *a2 = v5;
  return result;
}

uint64_t sub_2BD9C()
{
  sub_2842C(&qword_CA5D0, type metadata accessor for FigaroKey);
  sub_2842C(&qword_CA5D8, type metadata accessor for FigaroKey);

  return sub_84B4C();
}

void sub_2BFC8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_84CFC(*&v1);
}

uint64_t sub_2C004(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

void sub_2C024()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_84CEC(LODWORD(v1));
}

uint64_t sub_2C060(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_2C0EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2C0FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA5E0, &qword_A0848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C1AC(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA5E0, &qword_A0848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2C214(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA5E0, &qword_A0848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C284(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2C2BC(unsigned __int8 a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_83D9C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_83DDC();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_CA498 != -1)
  {
    swift_once();
  }

  v14 = sub_83D6C();
  sub_2C284(v14, qword_CB3E0);
  v15 = sub_83D4C();
  v16 = sub_8479C();
  if (os_log_type_enabled(v15, v16))
  {
    v43 = v4;
    v42 = v3;
    v17 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v18 = 0xE700000000000000;
    v19 = 0x696C6C6174736E69;
    *v17 = 136315394;
    v20 = 0xEA0000000000676ELL;
    v21 = 0xE500000000000000;
    v22 = 0x7964616572;
    if (a1 != 3)
    {
      v22 = 0x74616E696D726574;
      v21 = 0xEA00000000006465;
    }

    if (a1 != 2)
    {
      v19 = v22;
      v20 = v21;
    }

    v23 = 0x676E69646C697562;
    if (a1)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v23 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v24 = v23;
    }

    else
    {
      v24 = v19;
    }

    if (a1 <= 1u)
    {
      v25 = v18;
    }

    else
    {
      v25 = v20;
    }

    v26 = sub_3A93C(v24, v25, aBlock);

    v27 = v43;
    *(v17 + 4) = v26;
    v28 = 0xE700000000000000;
    *(v17 + 12) = 2080;
    v29 = 0x696C6C6174736E69;
    v30 = 0xEA0000000000676ELL;
    v31 = 0xE500000000000000;
    v32 = 0x7964616572;
    if (v27 != 3)
    {
      v32 = 0x74616E696D726574;
      v31 = 0xEA00000000006465;
    }

    if (v27 != 2)
    {
      v29 = v32;
      v30 = v31;
    }

    v33 = 0x676E69646C697562;
    if (v27)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v33 = 0x6E776F6E6B6E75;
    }

    if (v27 <= 1)
    {
      v34 = v33;
    }

    else
    {
      v34 = v29;
    }

    if (v27 <= 1)
    {
      v35 = v28;
    }

    else
    {
      v35 = v30;
    }

    v4 = sub_3A93C(v34, v35, aBlock);

    *(v17 + 14) = v4;
    _os_log_impl(&dword_0, v15, v16, "Transitioning from %s to %s", v17, 0x16u);
    swift_arrayDestroy();

    v3 = v42;
    LOBYTE(v4) = v43;
  }

  else
  {
  }

  sub_280A4();
  v36 = sub_8482C();
  v37 = swift_allocObject();
  *(v37 + 16) = v4;
  *(v37 + 24) = v3;
  aBlock[4] = sub_2C858;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_283C0;
  aBlock[3] = &unk_B4F28;
  v38 = _Block_copy(aBlock);
  v39 = v3;

  sub_83DAC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2842C(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
  sub_8496C();
  sub_8484C();
  _Block_release(v38);

  (*(v46 + 8))(v9, v6);
  return (*(v44 + 8))(v13, v45);
}

uint64_t sub_2C820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2C864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2C8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2C958;

  return sub_29CE0(a1, v4, v5, v6);
}

uint64_t sub_2C958()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2CA4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2CAB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2CAFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2CB78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2CE4C()
{
  result = qword_CA680;
  if (!qword_CA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA680);
  }

  return result;
}

id PackageProvisioner.__allocating_init(launching:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v6 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
  v7 = sub_83E4C();
  v8 = [v5 initWithLaunching:a1 & 1 processVariant:v6 overridePackageURLCachePath:0 on:v7];

  return v8;
}

uint64_t sub_2D03C()
{
  v1 = v0[7];
  v2 = OBJC_IVAR___JSAPackageProvisioner_state;
  v0[8] = OBJC_IVAR___JSAPackageProvisioner_state;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0[7] + OBJC_IVAR___JSAPackageProvisioner_packagePromise);
    v4 = sub_2805C(&qword_CA6A8, &qword_A0D58);
    v5 = sub_38254(&qword_CA6B0, &qword_CA6A8, &qword_A0D58);
    v6 = async function pointer to dispatch thunk of Future.then()[1];
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_2D38C;

    return dispatch thunk of Future.then()(v0 + 5, v4, v5);
  }

  else
  {
    *(v1 + v2) = 1;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_2D1CC;
    v9 = v0[7];

    return sub_2E9DC();
  }
}

uint64_t sub_2D1CC(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_2D2E4, v3, 0);
}

uint64_t sub_2D2E4()
{
  v2 = v0[10];
  if (v2)
  {
    if (*(v2 + OBJC_IVAR___JSAPackage_isBundled))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 4;
  }

  v4 = v0[7];
  *(v4 + v0[8]) = v3;
  v5 = *(v4 + OBJC_IVAR___JSAPackageProvisioner_packagePromise);
  v0[6] = v2;
  sub_8423C();
  v6 = v0[10];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2D38C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {

    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 40);
  }

  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_2D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_2805C(&qword_CA5E8, &qword_A0850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_37660(a3, v26 - v10, &qword_CA5E8, &qword_A0850);
  v12 = sub_8468C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_38328(v11, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_8460C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_8442C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_38328(a3, &qword_CA5E8, &qword_A0850);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_38328(a3, &qword_CA5E8, &qword_A0850);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2D7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_37660(a3, v27 - v11, &qword_CA5E8, &qword_A0850);
  v13 = sub_8468C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_38328(v12, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_8460C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_8442C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_2805C(&qword_CA728, &qword_A0F20);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_38328(a3, &qword_CA5E8, &qword_A0850);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_38328(a3, &qword_CA5E8, &qword_A0850);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_2805C(&qword_CA728, &qword_A0F20);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

JSApp::PackageProvisionerState_optional __swiftcall PackageProvisionerState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int sub_2DAE8()
{
  v1 = *v0;
  sub_84CCC();
  sub_84CDC(v1);
  return sub_84D0C();
}

Swift::Int sub_2DB5C()
{
  v1 = *v0;
  sub_84CCC();
  sub_84CDC(v1);
  return sub_84D0C();
}

uint64_t sub_2DBB4()
{
  v0 = sub_839CC();
  sub_38490(v0, qword_CA688);
  sub_2C284(v0, qword_CA688);
  return sub_8392C();
}

uint64_t sub_2DC18()
{
  v0 = sub_83F9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19[-1] - v6;
  v8 = sub_2805C(&qword_CA718, &qword_A0F00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-1] - v11;
  if (qword_CA428 != -1)
  {
    swift_once();
  }

  v13 = sub_2C284(v8, qword_CACE8);
  (*(v9 + 16))(v12, v13, v8);
  sub_83BAC();
  (*(v9 + 8))(v12, v8);
  if (v19[0])
  {
    v14 = 1;
  }

  else
  {
    v14 = _s5JSApp8DefaultsC14bootURLIsLocalSbvgZ_0();
  }

  v15 = sub_83BDC();
  v16 = &enum case for JetPackSigningPolicy.ignoreMissingButValidateIfProvided(_:);
  if ((v15 & v14 & 1) == 0)
  {
    v16 = &enum case for JetPackSigningPolicy.required(_:);
  }

  (*(v1 + 104))(v7, *v16, v0);
  (*(v1 + 16))(v5, v7, v0);
  v19[3] = sub_8400C();
  v19[4] = &protocol witness table for JetPackManagedKeyProvider;
  sub_382A8(v19);
  sub_83FFC();
  sub_83E3C();
  return (*(v1 + 8))(v7, v0);
}

uint64_t PackageProvisioner.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___JSAPackageProvisioner_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id PackageProvisioner.init(launching:)(char a1)
{
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v3 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
  v4 = sub_83E4C();
  v5 = [v1 initWithLaunching:a1 & 1 processVariant:v3 overridePackageURLCachePath:0 on:v4];

  return v5;
}

id PackageProvisioner.__allocating_init(launching:onQueue:)(char a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  if (qword_CA458 != -1)
  {
    v11 = v8;
    swift_once();
    v8 = v11;
  }

  v9 = [v8 initWithLaunching:a1 & 1 processVariant:*(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant) overridePackageURLCachePath:0 on:a2];

  return v9;
}

id PackageProvisioner.init(launching:onQueue:)(char a1, void *a2)
{
  if (qword_CA458 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v4 = [v2 initWithLaunching:a1 & 1 processVariant:*(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant) overridePackageURLCachePath:0 on:a2];

  return v4;
}

id PackageProvisioner.__allocating_init(launching:processVariant:overridePackageURLCachePath:on:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;

  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR___JSAPackageProvisioner_logger;
  if (qword_CA4C8 != -1)
  {
    swift_once();
  }

  v14 = sub_83D6C();
  v15 = sub_2C284(v14, qword_CB470);
  (*(*(v14 - 8) + 16))(&v12[v13], v15, v14);
  v12[OBJC_IVAR___JSAPackageProvisioner_state] = 0;
  v16 = OBJC_IVAR___JSAPackageProvisioner_packagePromise;
  sub_2805C(&qword_CA6A8, &qword_A0D58);
  *&v12[v16] = sub_8424C();
  *&v12[OBJC_IVAR___JSAPackageProvisioner_processVariant] = a2;
  v12[OBJC_IVAR___JSAPackageProvisioner_isLaunching] = a1 & 1;
  *&v12[OBJC_IVAR___JSAPackageProvisioner_unpackQueue] = a5;
  v18.receiver = v12;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id PackageProvisioner.init(launching:processVariant:overridePackageURLCachePath:on:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();

  swift_defaultActor_initialize();
  v11 = OBJC_IVAR___JSAPackageProvisioner_logger;
  if (qword_CA4C8 != -1)
  {
    swift_once();
  }

  v12 = sub_83D6C();
  v13 = sub_2C284(v12, qword_CB470);
  (*(*(v12 - 8) + 16))(&v6[v11], v13, v12);
  v6[OBJC_IVAR___JSAPackageProvisioner_state] = 0;
  v14 = OBJC_IVAR___JSAPackageProvisioner_packagePromise;
  sub_2805C(&qword_CA6A8, &qword_A0D58);
  *&v6[v14] = sub_8424C();
  *&v6[OBJC_IVAR___JSAPackageProvisioner_processVariant] = a2;
  v6[OBJC_IVAR___JSAPackageProvisioner_isLaunching] = a1 & 1;
  *&v6[OBJC_IVAR___JSAPackageProvisioner_unpackQueue] = a5;
  v16.receiver = v6;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t PackageProvisioner.provision(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  if (*(v2 + OBJC_IVAR___JSAPackageProvisioner_isLaunching) == 1)
  {
    sub_8466C();
    v12 = sub_8468C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_8468C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  sub_37660(v11, v9, &qword_CA5E8, &qword_A0850);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v2;

  sub_2D4A4(0, 0, v9, &unk_A0D78, v14);

  return sub_38328(v11, &qword_CA5E8, &qword_A0850);
}

uint64_t sub_2E748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_2E7DC;

  return PackageProvisioner.provision()();
}

uint64_t sub_2E7DC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_2E8DC, 0, 0);
}

uint64_t sub_2E8DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2E9DC()
{
  v1[34] = v0;
  v2 = sub_83EFC();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = sub_83CDC();
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v7 = *(v6 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v8 = sub_83D6C();
  v1[44] = v8;
  v9 = *(v8 - 8);
  v1[45] = v9;
  v1[46] = *(v9 + 64);
  v1[47] = swift_task_alloc();
  v10 = *(*(sub_2805C(&qword_CA5E8, &qword_A0850) - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v11 = sub_2805C(&qword_CA718, &qword_A0F00);
  v1[49] = v11;
  v12 = *(v11 - 8);
  v1[50] = v12;
  v13 = *(v12 + 64) + 15;
  v1[51] = swift_task_alloc();
  v14 = sub_83C9C();
  v1[52] = v14;
  v15 = *(v14 - 8);
  v1[53] = v15;
  v16 = *(v15 + 64) + 15;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v17 = sub_83CCC();
  v1[60] = v17;
  v18 = *(v17 - 8);
  v1[61] = v18;
  v19 = *(v18 + 64) + 15;
  v1[62] = swift_task_alloc();

  return _swift_task_switch(sub_2ED14, v0, 0);
}

uint64_t sub_2ED14()
{
  v101 = v0;
  v1 = JSASignpost();
  if (!v1)
  {
    __break(1u);
    return Task<>.value.getter(v1, v2, v3);
  }

  v4 = *(v0 + 496);
  v5 = *(v0 + 472);
  sub_83CAC();
  sub_83CBC();
  sub_83C7C();
  v6 = sub_83CBC();
  v7 = sub_8487C();
  if (sub_848CC())
  {
    v8 = *(v0 + 472);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = qos_class_self();
    v10 = sub_83C8C();
    _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v10, "Package Provision", "qos: 0x%x", v9, 8u);
  }

  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v13 = *(v0 + 416);
  v14 = *(v0 + 424);
  v15 = *(v0 + 272);

  (*(v14 + 16))(v12, v11, v13);
  v16 = sub_83D2C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 504) = sub_83D1C();
  v19 = [objc_opt_self() defaultBag];
  *(v0 + 512) = v19;
  v20 = *(v15 + OBJC_IVAR___JSAPackageProvisioner_isLaunching);
  *(v0 + 601) = v20;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  if (*(v15 + OBJC_IVAR___JSAPackageProvisioner_processVariant))
  {
    v22 = *(v0 + 272) + OBJC_IVAR___JSAPackageProvisioner_logger;
    v23 = sub_83D4C();
    v24 = sub_847CC();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_39;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v100 = v26;
    *v25 = 136315138;
    if (v20)
    {
      v27 = 0x68636E75616CLL;
    }

    else
    {
      v27 = 0x756F72676B636162;
    }

    if (v20)
    {
      v28 = 0xE600000000000000;
    }

    else
    {
      v28 = 0xEA0000000000646ELL;
    }

    v29 = sub_3A93C(v27, v28, &v100);

    *(v25 + 4) = v29;
    v30 = "JSAPackageProvisioner [%s] Skipped regular package because running tests";
    goto LABEL_38;
  }

  v31 = v19;
  if (qword_CA470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB321 == 1)
  {
    v32 = *(v0 + 272) + OBJC_IVAR___JSAPackageProvisioner_logger;
    v23 = sub_83D4C();
    v24 = sub_847CC();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_39;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v100 = v26;
    *v25 = 136315138;
    if (v20)
    {
      v33 = 0x68636E75616CLL;
    }

    else
    {
      v33 = 0x756F72676B636162;
    }

    if (v20)
    {
      v34 = 0xE600000000000000;
    }

    else
    {
      v34 = 0xEA0000000000646ELL;
    }

    v35 = sub_3A93C(v33, v34, &v100);

    *(v25 + 4) = v35;
    v30 = "JSAPackageProvisioner [%s] Skipped regular package because running from offline cache";
    goto LABEL_38;
  }

  if (qword_CA468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB320 != 1)
  {
    if (v20)
    {
      if (qword_CA400 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 400);
      v65 = *(v0 + 408);
      v67 = *(v0 + 392);
      v68 = sub_2C284(v67, qword_CAC70);
      (*(v66 + 16))(v65, v68, v67);
      sub_83BAC();
      (*(v66 + 8))(v65, v67);
      if (*(v0 + 600) == 1)
      {
        v69 = *(v0 + 272) + OBJC_IVAR___JSAPackageProvisioner_logger;
        v70 = sub_83D4C();
        v71 = sub_847CC();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v100 = v73;
          *v72 = 136315138;
          v74 = sub_3A93C(0x68636E75616CLL, 0xE600000000000000, &v100);

          *(v72 + 4) = v74;
          _os_log_impl(&dword_0, v70, v71, "JSAPackageProvisioner [%s] Skipped regular package due to user default", v72, 0xCu);
          sub_371A8(v73);
        }

        goto LABEL_40;
      }
    }

    v75 = *(v0 + 384);
    v76 = *(v0 + 272);
    sub_30AC0(v31, v21, (v0 + 16));
    v77 = sub_8468C();
    *(v0 + 520) = v77;
    v78 = *(v77 - 8);
    v79 = *(v78 + 56);
    *(v0 + 528) = v79;
    *(v0 + 536) = (v78 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v79(v75, 1, 1, v77);
    sub_370FC(v0 + 16, v0 + 56);
    v80 = sub_38448(&qword_CA720, type metadata accessor for PackageProvisioner);
    v81 = swift_allocObject();
    *(v81 + 16) = v76;
    *(v81 + 24) = v80;
    *(v81 + 32) = v76;
    sub_371F4((v0 + 56), v81 + 40);
    *(v81 + 80) = v21;
    swift_retain_n();
    v82 = sub_2D7A4(0, 0, v75, &unk_A0F18, v81);
    v83 = 0;
    *(v0 + 544) = v82;
    if (v20)
    {
      v84 = *(v0 + 384);
      v79(v84, 1, 1, v77);
      v85 = swift_allocObject();
      v85[2] = 0;
      v85[3] = 0;
      v85[4] = v82;

      v83 = sub_33D9C(0, 0, v84, &unk_A0F58, v85);
    }

    *(v0 + 552) = v83;
    v86 = async function pointer to Task<>.value.getter[1];
    v87 = swift_task_alloc();
    *(v0 + 560) = v87;
    v3 = sub_2805C(&qword_CA728, &qword_A0F20);
    *v87 = v0;
    v87[1] = sub_2F898;
    v1 = (v0 + 264);
    v2 = v82;

    return Task<>.value.getter(v1, v2, v3);
  }

  v36 = *(v0 + 272) + OBJC_IVAR___JSAPackageProvisioner_logger;
  v23 = sub_83D4C();
  v24 = sub_847CC();
  if (!os_log_type_enabled(v23, v24))
  {
    goto LABEL_39;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v100 = v26;
  *v25 = 136315138;
  if (v20)
  {
    v37 = 0x68636E75616CLL;
  }

  else
  {
    v37 = 0x756F72676B636162;
  }

  if (v20)
  {
    v38 = 0xE600000000000000;
  }

  else
  {
    v38 = 0xEA0000000000646ELL;
  }

  v39 = sub_3A93C(v37, v38, &v100);

  *(v25 + 4) = v39;
  v30 = "JSAPackageProvisioner [%s] Skipped regular package because generating offline cache";
LABEL_38:
  _os_log_impl(&dword_0, v23, v24, v30, v25, 0xCu);
  sub_371A8(v26);

LABEL_39:

  if (*(v0 + 601) == 1)
  {
LABEL_40:
    v40 = swift_task_alloc();
    *(v0 + 584) = v40;
    *v40 = v0;
    v40[1] = sub_306D4;
    v41 = *(v0 + 272);

    return sub_350D8(2);
  }

  v43 = *(v0 + 504);
  v44 = *(v0 + 496);
  v45 = *(v0 + 432);

  v46 = sub_83CBC();
  sub_83D0C();
  v47 = sub_8486C();
  if (sub_848CC())
  {
    v48 = *(v0 + 504);
    v50 = *(v0 + 312);
    v49 = *(v0 + 320);
    v51 = *(v0 + 304);

    sub_83D3C();

    if ((*(v50 + 88))(v49, v51) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v52 = 0;
      v53 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
      v53 = "qos: 0x%x";
      v52 = 1;
    }

    v54 = *(v0 + 432);
    v55 = swift_slowAlloc();
    *v55 = 0;
    *(v55 + 1) = v52;
    *(v55 + 2) = 1024;
    *(v55 + 4) = qos_class_self();
    v56 = sub_83C8C();
    _os_signpost_emit_with_name_impl(&dword_0, v46, v47, v56, "Package Provision", v53, v55, 8u);
  }

  v57 = *(v0 + 496);
  v58 = *(v0 + 504);
  v59 = *(v0 + 480);
  v60 = *(v0 + 488);
  v61 = *(v0 + 472);
  v88 = *(v0 + 464);
  v89 = *(v0 + 456);
  v90 = *(v0 + 448);
  v91 = *(v0 + 440);
  v62 = *(v0 + 416);
  v92 = *(v0 + 408);
  v93 = *(v0 + 384);
  v94 = *(v0 + 376);
  v95 = *(v0 + 344);
  v96 = *(v0 + 336);
  v97 = *(v0 + 328);
  v98 = *(v0 + 320);
  v99 = *(v0 + 296);
  v63 = *(*(v0 + 424) + 8);
  v63(*(v0 + 432), v62);

  v63(v61, v62);
  (*(v60 + 8))(v57, v59);

  v64 = *(v0 + 8);

  return v64(0);
}

uint64_t sub_2F898()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return _swift_task_switch(sub_2F9A8, v2, 0);
}

uint64_t sub_2F9A8()
{
  if (*(v0 + 264))
  {
    v73 = *(v0 + 264);
    if (*(v0 + 552))
    {
      v1 = *(v0 + 552);

      sub_2805C(&qword_CA738, &qword_A1870);
      sub_8469C();
    }

    v2 = *(v0 + 536);
    v3 = *(v0 + 528);
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);
    v63 = v5;
    v65 = *(v0 + 544);
    v67 = *(v0 + 496);
    v69 = *(v0 + 456);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v8 = *(v0 + 360);
    v59 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 272);
    if (*(v0 + 601))
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    v61 = v11;
    [objc_opt_self() updateUsedBootstrapFallback:0];
    v3(v6, 1, 1, v4);
    v12 = OBJC_IVAR___JSAPackageProvisioner_logger;
    sub_370FC(v0 + 16, v0 + 176);
    (*(v8 + 16))(v7, v10 + v12, v9);
    v13 = (*(v8 + 80) + 72) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_371F4((v0 + 176), v14 + 32);
    (*(v8 + 32))(v14 + v13, v7, v9);
    *(v14 + v13 + v59) = v61;
    sub_3BBC8(0, 0, v6, &unk_A0F40, v14);

    sub_38328(v6, &qword_CA5E8, &qword_A0850);
    sub_371A8((v0 + 16));
    v15 = sub_83CBC();
    sub_83D0C();
    v16 = sub_8486C();
    if ((sub_848CC() & 1) == 0)
    {
      v23 = (v0 + 456);
LABEL_25:

      v38 = *v23;
      v40 = *(v0 + 496);
      v39 = *(v0 + 504);
      v41 = *(v0 + 480);
      v42 = *(v0 + 488);
      v44 = *(v0 + 464);
      v43 = *(v0 + 472);
      v55 = *(v0 + 456);
      v56 = *(v0 + 448);
      v57 = *(v0 + 440);
      v58 = *(v0 + 432);
      v45 = *(v0 + 416);
      v60 = *(v0 + 408);
      v62 = *(v0 + 384);
      v64 = *(v0 + 376);
      v66 = *(v0 + 344);
      v68 = *(v0 + 336);
      v70 = *(v0 + 328);
      v71 = *(v0 + 320);
      v72 = *(v0 + 296);
      v46 = *(*(v0 + 424) + 8);
      v46(v38, v45);

      v46(v43, v45);
      (*(v42 + 8))(v40, v41);

      v47 = *(v0 + 8);

      return v47(v73);
    }

    v17 = *(v0 + 504);
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 312);

    sub_83D3C();

    if ((*(v20 + 88))(v18, v19) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v21 = 0;
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 312) + 8))(*(v0 + 344), *(v0 + 304));
      v22 = "qos: 0x%x";
      v21 = 1;
    }

    v23 = (v0 + 456);
LABEL_24:
    v35 = *v23;
    v36 = swift_slowAlloc();
    *v36 = 0;
    *(v36 + 1) = v21;
    *(v36 + 2) = 1024;
    *(v36 + 4) = qos_class_self();
    v37 = sub_83C8C();
    _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v37, "Package Provision", v22, v36, 8u);

    goto LABEL_25;
  }

  if (*(v0 + 601) == 1)
  {
  }

  else
  {
    v24 = sub_84BEC();

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 280);
  sub_370FC(v0 + 16, v0 + 96);
  sub_2805C(&qword_CA730, &qword_A0F28);
  if (swift_dynamicCast())
  {
    v27 = *(v0 + 272);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    sub_349A8((v0 + 136));
    v28 = swift_task_alloc();
    *(v0 + 568) = v28;
    *v28 = v0;
    v28[1] = sub_300E0;
    v29 = *(v0 + 272);

    return sub_31FF8(v0 + 136, 1);
  }

LABEL_18:
  v31 = *(v0 + 552);
  v32 = *(v0 + 544);
  sub_371A8((v0 + 16));

  if (*(v0 + 601) != 1)
  {
    v73 = 0;
    v48 = *(v0 + 504);
    v49 = *(v0 + 496);
    v23 = (v0 + 432);
    v50 = *(v0 + 432);

    v15 = sub_83CBC();
    sub_83D0C();
    v16 = sub_8486C();
    if ((sub_848CC() & 1) == 0)
    {
      goto LABEL_25;
    }

    v51 = *(v0 + 504);
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v54 = *(v0 + 304);

    sub_83D3C();

    if ((*(v53 + 88))(v52, v54) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v21 = 0;
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
      v22 = "qos: 0x%x";
      v21 = 1;
    }

    goto LABEL_24;
  }

  v33 = swift_task_alloc();
  *(v0 + 584) = v33;
  *v33 = v0;
  v33[1] = sub_306D4;
  v34 = *(v0 + 272);

  return sub_350D8(2);
}