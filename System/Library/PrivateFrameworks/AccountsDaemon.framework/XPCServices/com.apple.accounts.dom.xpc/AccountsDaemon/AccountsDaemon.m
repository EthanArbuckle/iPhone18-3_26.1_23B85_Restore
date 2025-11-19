void sub_100001E48(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000207C;
  v30 = sub_10000208C;
  v31 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002094;
  v20[3] = &unk_100008230;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = &v26;
  v25 = &v32;
  [v2 enumerateKeysAndObjectsUsingBlock:v20];
  [*(a1 + 48) _decrementBusyCounterForAccount:*(a1 + 40)];
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  _ACSignpostGetNanoseconds();
  v8 = sub_10000328C();
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "PerformActions", &unk_100004FF1, v19, 2u);
  }

  v11 = sub_10000328C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000390C((a1 + 72), v11, v12, v13, v14, v15, v16, v17);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, *(v33 + 24), v27[5]);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_10000204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000207C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002094(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = sub_10000328C();
  v8 = _ACSignpostCreate();

  v9 = sub_10000328C();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138543618;
    v39 = v5;
    v40 = 1026;
    LODWORD(v41) = [v6 type];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PerformActionOwner", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@  Action=%{public,signpost.telemetry:number1,name=Action}d  enableTelemetry=YES ", buf, 0x12u);
  }

  v12 = sub_10000328C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v6 type];
    *buf = 134218498;
    v39 = v8;
    v40 = 2114;
    v41 = v5;
    v42 = 1026;
    LODWORD(v43) = v33;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: PerformActionOwner  Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@  Action=%{public,signpost.telemetry:number1,name=Action}d  enableTelemetry=YES ", buf, 0x1Cu);
  }

  v13 = _ACLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    *buf = 138412802;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    v42 = 2112;
    v43 = v34;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Asking owner of dataclass %@ to perform action %@ for account %@", buf, 0x20u);
  }

  v14 = [*(a1 + 40) _ownerForDataclass:v5];
  if (objc_opt_respondsToSelector())
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v37 = 0;
    v17 = [v14 performAction:v6 forAccount:v15 withChildren:v16 forDataclass:v5 withError:&v37];
    v18 = v37;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = _ACLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100003988(v14, v21);
      }

      v17 = 0;
      v18 = 0;
      v19 = 1;
      goto LABEL_18;
    }

    v17 = [v14 performAction:v6 forAccount:*(a1 + 32) withChildren:*(a1 + 48) forDataclass:v5];
    v18 = 0;
  }

  v19 = v18 == 0;
  if (!v18 && (v17 & 1) != 0)
  {
    v18 = 0;
    v20 = 1;
    goto LABEL_24;
  }

LABEL_18:
  v35 = v17;
  v22 = v8;
  v23 = v8 - 1;
  v24 = _ACLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100003A00();
  }

  if (v19)
  {
    v25 = [NSError errorWithDomain:ACErrorDomain code:17 userInfo:0];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    v28 = *(*(a1 + 56) + 8);
    v29 = v18;
    v27 = *(v28 + 40);
    *(v28 + 40) = v29;
  }

  v11 = v23;
  v8 = v22;
  v20 = v35;
LABEL_24:
  _ACSignpostGetNanoseconds();
  v30 = sub_10000328C();
  v31 = v30;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, v8, "PerformActionOwner", &unk_100004FF1, buf, 2u);
  }

  v32 = sub_10000328C();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100003A78();
  }

  *(*(*(a1 + 64) + 8) + 24) &= v20;
  objc_autoreleasePoolPop(context);
}

void sub_1000029C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003158(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100003178(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = +[NSXPCListener serviceListener];
  v4 = objc_alloc_init(ACDataclassOwnersManagerListener);
  [v3 setDelegate:v4];
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DOM XPC Service resuming...", buf, 2u);
  }

  [v3 resume];
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DOM XPC Service is returning control!", v8, 2u);
  }

  return 0;
}

id sub_10000328C()
{
  if (qword_10000C810 != -1)
  {
    sub_100003B58();
  }

  v1 = qword_10000C808;

  return v1;
}

void sub_1000032D0(id a1)
{
  qword_10000C808 = os_log_create("com.apple.accounts", "dataclass.signpost");

  _objc_release_x1();
}

void sub_1000033C8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: DataclassPreload ", &v2, 0xCu);
}

void sub_100003894(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_100003158(&_mh_execute_header, a2, a3, "BEGIN [%lld]: PerformActions actions: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100003988(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dataclass owner does not implement performAction:forAccount:withChildren:forDataclass: %@", &v2, 0xCu);
}

void sub_100003AE0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundlePath];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Found dataclass owner at path %@", a1, 0xCu);
}