void sub_1B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1C50()
{
  if (qword_C5E0 != -1)
  {
    dispatch_once(&qword_C5E0, &stru_82D0);
  }

  v1 = qword_C5D8;

  return v1;
}

void sub_1CA4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15 && !v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = [v15 objectForKeyedSubscript:@"plan"];
    v7 = [v6 objectForKeyedSubscript:@"name"];

    v8 = [v15 objectForKeyedSubscript:@"gradient"];
    if (v8 || ([v15 objectForKeyedSubscript:@"weights"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      *(*(*(a1 + 48) + 8) + 24) = [v8 length] >> 2;
    }

    else
    {
      v9 = +[NSNull null];
    }

    [*(*(*(a1 + 56) + 8) + 40) setObject:v9 forKeyedSubscript:v7];

    v10 = [v15 mutableCopy];
    [v10 removeObjectForKey:@"gradient"];
    [v10 removeObjectForKey:@"weights"];
    if ([v10 count] != &dword_0 + 1 || (objc_msgSend(v10, "objectForKeyedSubscript:", @"plan"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      [*(*(*(a1 + 64) + 8) + 40) setObject:v10 forKeyedSubscript:v7];
    }
  }

  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1E6C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15 && !v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = [v15 objectForKeyedSubscript:@"plan"];
    v7 = [v6 objectForKeyedSubscript:@"name"];

    v8 = [v15 objectForKeyedSubscript:@"gradient"];
    if (v8 || ([v15 objectForKeyedSubscript:@"weights"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      *(*(*(a1 + 48) + 8) + 24) = [v8 length] >> 2;
    }

    else
    {
      v9 = +[NSNull null];
    }

    [*(*(*(a1 + 56) + 8) + 40) setObject:v9 forKeyedSubscript:v7];

    v10 = [v15 mutableCopy];
    [v10 removeObjectForKey:@"gradient"];
    [v10 removeObjectForKey:@"weights"];
    if ([v10 count] != &dword_0 + 1 || (objc_msgSend(v10, "objectForKeyedSubscript:", @"plan"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      [*(*(*(a1 + 64) + 8) + 40) setObject:v10 forKeyedSubscript:v7];
    }
  }

  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2034(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = os_log_create("com.apple.proactive", "pmldes");
  v3 = qword_C5D8;
  qword_C5D8 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_22F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2314(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_C5C0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_2760;
    v6[4] = &unk_8278;
    v6[5] = v6;
    v7 = off_8260;
    v8 = 0;
    qword_C5C0 = _sl_dlopen();
  }

  if (!qword_C5C0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreSuggestionsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PMLDESPlugin.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SGSuggestionsService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getSGSuggestionsServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PMLDESPlugin.m" lineNumber:30 description:{@"Unable to find class %s", "SGSuggestionsService"}];

LABEL_10:
    __break(1u);
  }

  qword_C5B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_2500(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_C5D0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_26EC;
    v6[4] = &unk_8278;
    v6[5] = v6;
    v7 = off_8298;
    v8 = 0;
    qword_C5D0 = _sl_dlopen();
  }

  if (!qword_C5D0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *DistributedEvaluationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PMLDESPlugin.m" lineNumber:34 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DESPFLEncryptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getDESPFLEncryptorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PMLDESPlugin.m" lineNumber:35 description:{@"Unable to find class %s", "DESPFLEncryptor"}];

LABEL_10:
    __break(1u);
  }

  qword_C5C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_26EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C5D0 = result;
  return result;
}

uint64_t sub_2760(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C5C0 = result;
  return result;
}