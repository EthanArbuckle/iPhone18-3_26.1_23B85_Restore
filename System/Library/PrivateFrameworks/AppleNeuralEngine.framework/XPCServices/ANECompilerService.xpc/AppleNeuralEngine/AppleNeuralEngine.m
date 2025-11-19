void sub_100001174(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.modelCacheAsyncIO", v1);
  v3 = qword_100021AF0;
  qword_100021AF0 = v2;

  qword_100021AF8 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_1000018E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001930(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100002AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_ERROR))
  {
    sub_100010CC8(a1, v4, v3);
  }
}

void sub_100002B0C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v8 = [NSNumber numberWithBool:a2];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: status=%@", &v9, 0x16u);
  }
}

void sub_100002CDC(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) startDanglingModelGC];
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100003898(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = NSStringFromSelector(v9);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: URL=%@ : error=%@", &v12, 0x20u);
  }

  return 0;
}

void sub_100004038(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_1000040D0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.storageAsyncIO", v1);
  v3 = qword_100021B08;
  qword_100021B08 = v2;

  qword_100021B10 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_100004AC4(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_100021B10);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_INFO))
    {
      v6 = a1[23];
      v7 = v5;
      v8 = NSStringFromSelector(v6);
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      *v18 = v8;
      *&v18[8] = 1024;
      *&v18[10] = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  v12 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v13 = qword_100021B10;
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109376;
    *v18 = v16;
    *&v18[4] = 2050;
    *&v18[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v3, "_ANED_MODEL_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_100004CD4(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

void sub_1000053D4(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_100021B10);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_INFO))
    {
      v6 = a1[23];
      v7 = v5;
      v8 = NSStringFromSelector(v6);
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      *v18 = v8;
      *&v18[8] = 1024;
      *&v18[10] = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  v12 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v13 = qword_100021B10;
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109376;
    *v18 = v16;
    *&v18[4] = 2050;
    *&v18[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v3, "_ANED_WEIGHT_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_1000055E4(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

uint64_t sub_100006948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100021B10;
  if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = NSStringFromSelector(v9);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: URL=%@ : error=%@", &v12, 0x20u);
  }

  return 1;
}

void sub_100007EAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10000A0D0(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) removeStaleModels];
  objc_autoreleasePoolPop(v2);
}

void sub_10000A3A4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10000A614(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *&v24 = 0;
      *(&v24 + 1) = &v24;
      v25 = 0x2020000000;
      v26 = xpc_activity_set_state(v3, 4);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000A8F0;
      v16[3] = &unk_10001C678;
      v17 = *(a1 + 32);
      v18 = v3;
      v19 = &v24;
      v5 = objc_retainBlock(v16);
      v6 = +[_ANELog daemon];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) name];
        v8 = *(*(&v24 + 1) + 24);
        *buf = 138412546;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Running activity %@, extended=%d", buf, 0x12u);
      }

      if (*(*(&v24 + 1) + 24) == 1)
      {
        v9 = [*(a1 + 32) queue];
        dispatch_async(v9, v5);
      }

      else
      {
        (v5[2])(v5);
      }

      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v10 = +[_ANELog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) name];
      LODWORD(v24) = 138412290;
      *(&v24 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checking-in activity %@", &v24, 0xCu);
    }

    v12 = xpc_activity_copy_criteria(v3);
    if (!v12 || ([*(a1 + 32) executionCriteria], v13 = objc_claimAutoreleasedReturnValue(), v14 = xpc_equal(v12, v13), v13, !v14))
    {
      v15 = [*(a1 + 32) executionCriteria];
      xpc_activity_set_criteria(v3, v15);
    }
  }
}

void sub_10000A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A8F0(uint64_t a1)
{
  getpid();
  proc_set_cpumon_params();
  v2 = [*(a1 + 32) name];
  [v2 UTF8String];
  v3 = os_transaction_create();

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) handler];
  v5[2]();

  objc_autoreleasePoolPop(v4);
  getpid();
  proc_set_cpumon_defaults();
  xpc_activity_set_state(*(a1 + 40), 5);
  v6 = +[_ANELog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) name];
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done running activity %@, extended=%d", &v9, 0x12u);
  }
}

void sub_10000B214(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10000B33C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10000C634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v54 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000C908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C920(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *(a1 + 56);
  kdebug_trace();
  v9 = qword_100021B20;
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 56);
    v13[0] = 67109376;
    v13[1] = 0;
    v14 = 1024;
    v15 = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v11, "_ANEF_JIT_ANEC_COMPILE", "%u ret:%d", v13, 0xEu);
  }
}

void sub_10000DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v56 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_10000DE0C(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void sub_10000DE64(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t sub_10000E264(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  return result;
}

void sub_10000E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = 0;
  *(a3 + 22) = v3;
  *(a3 + 24) = a2;
}

void sub_10000E2A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

uint64_t sub_10000E2C0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

void sub_10000E2D8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_10000E2F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F08C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v3 = +[_ANELog compiler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100011CA0(v3);
    }
  }

  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

uint64_t sub_10000F7F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F810(uint64_t a1)
{
  v2 = +[_ANELog compiler];
  v3 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v4 = [v3 isEqualToString:kANEFModelANECIRValue];

  v5 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v6 = [v5 isEqualToString:kANEFModelMILValue];

  v7 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v8 = [v7 isEqualToString:kANEFModelMLIRValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v10 = [v9 isEqualToString:kANEFModelLLIRBundleValue];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100011D58(v10, v2);
  }

  if ((v4 & v6) != 1)
  {
    v150 = [*(a1 + 32) objectForKeyedSubscript:kANEFNetPlistFilenameKey];
    v12 = [*(a1 + 32) objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey];
    v148 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelIsEncryptedKey];
    v13 = [v148 BOOLValue];
    v14 = v2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100011DD4(a1, v13, v14);
    }

    oslog = v14;

    v156 = 0;
    v15 = *(a1 + 40);
    v16 = (a1 + 40);
    v17 = *(a1 + 48);
    v155 = 0;
    v18 = [_ANESandboxingHelper consumeSandboxExtension:v15 forModel:v17 error:&v155];
    v19 = v155;
    v146 = v18;
    v147 = v19;
    if (v18 < 0 && v19)
    {
      v20 = *(a1 + 96);
      v21 = NSStringFromSelector(*(a1 + 112));
      v22 = [_ANEErrors fileAccessErrorForMethod:v21];
      v23 = &__NSDictionary0__struct;
      (*(v20 + 16))(v20, 0, &__NSDictionary0__struct, v22);

      [*(a1 + 48) string_id];
      kdebug_trace();
      v24 = +[_ANELog compiler];
      v25 = v24;
      v26 = *(a1 + 120);
      if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v150;
        v28 = v12;
      }

      else
      {
        v27 = v150;
        v28 = v12;
        if (os_signpost_enabled(v24))
        {
          v29 = [*(a1 + 48) string_id];
          *buf = 134217984;
          *v158 = v29;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, v26, "_ANEC_MODEL_COMPILE", "model.string_id:%llu", buf, 0xCu);
        }
      }

LABEL_82:

      goto LABEL_83;
    }

    v145 = [_ANECloneHelper cloneIfWritable:*(a1 + 48) isEncryptedModel:v13 cloneDirectory:*(a1 + 56)];
    if (!v145)
    {
      (*(*(a1 + 96) + 16))();
    }

    v28 = v12;
    if (v4)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v30 = +[_ANELog compiler];
      v31 = v30;
      v32 = *(a1 + 120);
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v33 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v158 = 1;
        *&v158[4] = 2048;
        *&v158[6] = v33;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, v32, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v34 = oslog;
      v27 = v150;
      v35 = v145;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v139 = NSStringFromSelector(*(a1 + 112));
        v98 = *(a1 + 64);
        v136 = [*(a1 + 48) modelURL];
        v99 = [*(a1 + 48) sourceURL];
        v100 = [*(a1 + 48) key];
        v101 = *(a1 + 72);
        *buf = 138413826;
        *v158 = v139;
        *&v158[8] = 2112;
        *&v158[10] = v98;
        v28 = v12;
        v35 = v145;
        v159 = 2112;
        v160 = v136;
        v161 = 2112;
        v162 = v99;
        v163 = 2112;
        v164 = v145;
        v165 = 2112;
        v166 = v100;
        v102 = v100;
        v167 = 2112;
        v168 = v101;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@: ANECIRModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);

        v27 = v150;
      }

      v36 = [*(a1 + 48) sourceURL];
      v37 = *(a1 + 48);
      if (v36)
      {
        [v37 sourceURL];
      }

      else
      {
        [v37 modelURL];
      }
      v52 = ;

      v53 = *(a1 + 64);
      v54 = *(a1 + 72);
      v55 = *(a1 + 80);
      v56 = *(a1 + 32);
      v57 = *(*(a1 + 104) + 8);
      obj = *(v57 + 40);
      LOBYTE(v132) = v13;
      v23 = [_ANECVAIRCompiler compileModelAt:v35 csIdentity:v53 plistFilename:v27 optionsFilename:v28 outputURL:v54 saveSourceURL:v52 aotModelBinaryPath:v55 isEncryptedModel:v132 options:v56 ok:&v156 error:&obj];
      objc_storeStrong((v57 + 40), obj);
      [*(a1 + 48) string_id];
      kdebug_trace();
      v58 = +[_ANELog compiler];
      v59 = v58;
      v60 = *(a1 + 120);
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v58))
      {
        goto LABEL_70;
      }

      v61 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v158 = 2;
      *&v158[4] = 2048;
      *&v158[6] = v61;
LABEL_47:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_EVENT, v60, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
LABEL_70:

      v25 = v145;
      goto LABEL_71;
    }

    if (((v6 | v8 | v10) & 1) == 0)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v45 = +[_ANELog compiler];
      v46 = v45;
      v47 = *(a1 + 120);
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        v48 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v158 = 3;
        *&v158[4] = 2048;
        *&v158[6] = v48;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v47, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v49 = oslog;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v140 = NSStringFromSelector(*(a1 + 112));
        v106 = *(a1 + 64);
        v107 = [*(a1 + 48) modelURL];
        v108 = [*(a1 + 48) sourceURL];
        v109 = [*(a1 + 48) key];
        v110 = *(a1 + 72);
        *buf = 138413826;
        *v158 = v140;
        *&v158[8] = 2112;
        *&v158[10] = v106;
        v159 = 2112;
        v160 = v107;
        v161 = 2112;
        v162 = v108;
        v163 = 2112;
        v164 = v145;
        v165 = 2112;
        v166 = v109;
        v111 = v109;
        v167 = 2112;
        v168 = v110;
        _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%@: CoreMLModel: bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);
      }

      v50 = [*(a1 + 48) sourceURL];
      v51 = *(a1 + 48);
      v144 = (a1 + 40);
      if (v50)
      {
        [v51 sourceURL];
      }

      else
      {
        [v51 modelURL];
      }
      v68 = ;

      v69 = v68;
      v70 = [v68 path];
      v71 = *(a1 + 64);
      v72 = [*(a1 + 48) key];
      v74 = *(a1 + 80);
      v73 = *(a1 + 88);
      v75 = *(a1 + 72);
      v76 = *(a1 + 32);
      v77 = *(*(a1 + 104) + 8);
      v153 = *(v77 + 40);
      LOBYTE(v133) = v13;
      v23 = [_ANECoreMLModelCompiler compileModelAt:v145 csIdentity:v71 key:v72 optionsFilename:v12 tempDirectory:v73 outputURL:v75 saveSourceModelPath:v70 aotModelBinaryPath:v74 isEncryptedModel:v133 options:v76 ok:&v156 error:&v153];
      objc_storeStrong((v77 + 40), v153);

      [*(a1 + 48) string_id];
      kdebug_trace();
      v78 = +[_ANELog compiler];
      v79 = v78;
      v80 = *(a1 + 120);
      if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        v81 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v158 = 4;
        *&v158[4] = 2048;
        *&v158[6] = v81;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_EVENT, v80, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v28 = v12;
      goto LABEL_62;
    }

    if (v6)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v38 = +[_ANELog compiler];
      v39 = v38;
      v40 = *(a1 + 120);
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v41 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v158 = 5;
        *&v158[4] = 2048;
        *&v158[6] = v41;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, v40, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v42 = oslog;
      v27 = v150;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v112 = NSStringFromSelector(*(a1 + 112));
        v141 = *(a1 + 64);
        v113 = [*(a1 + 48) modelURL];
        v114 = [*(a1 + 48) sourceURL];
        v115 = [*(a1 + 48) key];
        v116 = *(a1 + 72);
        *buf = 138413826;
        *v158 = v112;
        *&v158[8] = 2112;
        *&v158[10] = v141;
        v159 = 2112;
        v160 = v113;
        v161 = 2112;
        v162 = v114;
        v163 = 2112;
        v164 = v145;
        v165 = 2112;
        v166 = v115;
        v167 = 2112;
        v168 = v116;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@: MILModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);

        v27 = v150;
        v28 = v12;
      }

      if (!v27)
      {
        v27 = +[_ANEStrings defaultMILFileName];
      }

      v43 = [*(a1 + 48) sourceURL];
      v44 = *(a1 + 48);
      if (v43)
      {
        [v44 sourceURL];
      }

      else
      {
        [v44 modelURL];
      }
      v52 = ;

      v82 = *(a1 + 64);
      v83 = *(a1 + 72);
      v84 = *(a1 + 80);
      v85 = *(a1 + 32);
      v86 = *(*(a1 + 104) + 8);
      v152 = *(v86 + 40);
      LOBYTE(v132) = v13;
      v23 = [_ANEMILCompiler compileModelAt:v145 modelName:v27 csIdentity:v82 optionsFilename:v28 outputURL:v83 saveSourceURL:v52 aotModelBinaryPath:v84 isEncryptedModel:v132 options:v85 ok:&v156 error:&v152];
      objc_storeStrong((v86 + 40), v152);
      [*(a1 + 48) string_id];
      kdebug_trace();
      v87 = +[_ANELog compiler];
      v59 = v87;
      v60 = *(a1 + 120);
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v87))
      {
        goto LABEL_70;
      }

      v88 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v158 = 6;
      *&v158[4] = 2048;
      *&v158[6] = v88;
      goto LABEL_47;
    }

    if (((v8 | v10) & 1) == 0)
    {
      v27 = v150;
      v25 = v145;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100011E8C(oslog);
      }

      v23 = &__NSDictionary0__struct;
      goto LABEL_71;
    }

    [*(a1 + 48) string_id];
    kdebug_trace();
    v62 = +[_ANELog compiler];
    v63 = v62;
    v64 = *(a1 + 120);
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      v65 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v158 = 5;
      *&v158[4] = 2048;
      *&v158[6] = v65;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_EVENT, v64, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
    }

    v66 = oslog;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v143 = NSStringFromSelector(*(a1 + 112));
      v135 = *(a1 + 64);
      v134 = [*(a1 + 48) modelURL];
      v138 = [*(a1 + 48) sourceURL];
      v128 = [*(a1 + 48) key];
      v129 = *(a1 + 72);
      *buf = 138413826;
      *v158 = v143;
      *&v158[8] = 2112;
      *&v158[10] = v135;
      v159 = 2112;
      v160 = v134;
      v161 = 2112;
      v162 = v138;
      v163 = 2112;
      v164 = v145;
      v165 = 2112;
      v166 = v128;
      v130 = v128;
      v167 = 2112;
      v168 = v129;
      _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "%@: MLIRModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);
    }

    if (!v150)
    {
      if (v8)
      {
        v67 = +[_ANEStrings defaultMLIRFileName];
      }

      else
      {
        if (!v10)
        {
          v150 = 0;
          goto LABEL_88;
        }

        v67 = +[_ANEStrings defaultLLIRBundleName];
      }

      v150 = v67;
    }

LABEL_88:
    v144 = (a1 + 40);
    v117 = [*(a1 + 48) sourceURL];
    v118 = *(a1 + 48);
    if (v117)
    {
      [v118 sourceURL];
    }

    else
    {
      [v118 modelURL];
    }
    v119 = ;

    v137 = *(a1 + 64);
    v142 = *(a1 + 72);
    v120 = *(a1 + 80);
    v121 = *(a1 + 32);
    v122 = [*(a1 + 48) mpsConstants];
    v123 = *(*(a1 + 104) + 8);
    v151 = *(v123 + 40);
    LOBYTE(v132) = v13;
    v131 = v120;
    v28 = v12;
    v23 = [_ANEMLIRCompiler compileModelAt:v145 modelName:v150 csIdentity:v137 optionsFilename:v12 outputURL:v142 saveSourceURL:v119 aotModelBinaryPath:v131 isEncryptedModel:v132 options:v121 mpsConstants:v122 ok:&v156 error:&v151];
    objc_storeStrong((v123 + 40), v151);

    [*(a1 + 48) string_id];
    kdebug_trace();
    v124 = +[_ANELog compiler];
    v125 = v124;
    v126 = *(a1 + 120);
    if (v126 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
    {
      v127 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v158 = 6;
      *&v158[4] = 2048;
      *&v158[6] = v127;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_EVENT, v126, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
    }

LABEL_62:
    v27 = v150;
    v25 = v145;
    v16 = v144;
LABEL_71:
    v89 = v156;
    v90 = oslog;
    v91 = v90;
    if (v89 == 1)
    {
      v92 = v146;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v93 = NSStringFromSelector(*(a1 + 112));
        v94 = *(a1 + 72);
        *buf = 138413058;
        *v158 = v93;
        *&v158[8] = 2112;
        *&v158[10] = v25;
        v159 = 2112;
        v160 = v94;
        v161 = 2112;
        v162 = v23;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%@: SUCCESS: model=%@ : output=%@ : lAttr=%@ : lErr=(nil)", buf, 0x2Au);
      }

      v95 = *(*(a1 + 96) + 16);
    }

    else
    {
      v92 = v146;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v103 = NSStringFromSelector(*(a1 + 112));
        v104 = *(a1 + 72);
        v105 = *(*(*(a1 + 104) + 8) + 40);
        *buf = 138413314;
        *v158 = v103;
        *&v158[8] = 2112;
        *&v158[10] = v25;
        v159 = 2112;
        v160 = v104;
        v161 = 2112;
        v162 = v23;
        v163 = 2112;
        v164 = v105;
        _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%@: ERROR: model=%@ : output=%@ : lAttr=%@ : lErr=%@", buf, 0x34u);
      }

      v96 = *(*(*(a1 + 104) + 8) + 40);
      v95 = *(*(a1 + 96) + 16);
    }

    v95();
    v156 = [_ANESandboxingHelper releaseSandboxExtension:*v16 handle:v92];
    if ((v156 & 1) == 0)
    {
      v97 = v91;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        sub_100011ED0(v16, v92, v97);
      }
    }

    goto LABEL_82;
  }

  v11 = v2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100011F88(a1, v11);
  }

  (*(*(a1 + 96) + 16))();
LABEL_83:
}

void sub_100010AAC(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_1000039B0();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: nil currentConnection", v5, 0xCu);
}

void sub_100010B54(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_1000039B0();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: FAILED creating %@", v7, 0x16u);
}

void sub_100010C10(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_1000039B0();
  v6 = 2112;
  v7 = @"com.apple.private.ANEStorageMaintainer";
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@", v5, 0x16u);
}

void sub_100010CC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *(a1 + 32);
  sub_1000039B0();
  v11 = 2112;
  v12 = v9;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@ : error=%@", v10, 0x20u);
}

void sub_100010D94(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: %@", buf, 0x16u);
}

void sub_100010E10(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: modelFilePath=%@", v8);
}

void sub_100010EC0(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: +updateAccessTimeForFilePath:%@ failed", buf, 0x16u);
}

void sub_100010F28(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: weightFilePath=%@", v8);
}

void sub_100010FD8(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: filePath=%@", v8);
}

void sub_100011084(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: Skipping update for filePath=%@", v8);
}

void sub_100011130(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: +setAccessTime:forFilePath failed", &v5, 0xCu);
}

void sub_1000111D8()
{
  sub_100007E98();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to remove %@ : error=%@", v2, 0x16u);
}

void sub_100011254(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  sub_100007EAC(&_mh_execute_header, a3, a3, "Mark %s as purgeable (flags 0x%llx)", &v4);
}

void sub_1000112D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

void sub_100011380(const char *a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = *__error();
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: fail to stat (%@) with errno=%{darwin:errno}d", &v7, 0x1Cu);
}

void sub_100011444(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000926C();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: sandbox_extension_issue_file() returned NULL. path=%@", v5, 0x16u);
}

void sub_1000114F4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000926C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension(%@) consumed", v5, 0x16u);
}

void sub_1000115A4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension is nil/not valid", &v5, 0xCu);
}

void sub_10001164C(const char *a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: %@", &v6, 0x16u);
}

void sub_1000116FC()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E298();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001174C()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E2A4(&_mh_execute_header, "%@: targetArchitecture=%@", v6, v7);
}

void sub_100011794(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000E2D8(&_mh_execute_header, a2, a3, "%@: compiling encrypted model", a2);
}

void sub_1000117E0()
{
  sub_10000E278();
  v4 = sub_10000E264(v1, 5.7781e-34, v2, v3);
  sub_10000E288(v4, v5, v6);
  sub_10000E298();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_100011830()
{
  sub_10000E278();
  v2 = *(*v1 + 40);
  sub_10000E2C0(v3, 5.778e-34, v1, v4);
  sub_10000E2A4(&_mh_execute_header, "%@: lAttr=%@", v5, v6);
}

void sub_10001187C()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E2A4(&_mh_execute_header, "%@: Attempt to create %@", v6, v7);
}

void sub_1000118C4(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000E2D8(&_mh_execute_header, a2, a3, "%@: compileModel is JITModel", a2);
}

void sub_100011A9C(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: %@", v7, 0x16u);
}

void sub_100011B50(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_100007E98();
  sub_10000F08C(&_mh_execute_header, v5, v6, "%@: optionsFilePath=%@", v7, v8, v9, v10, v11);
}

void sub_100011BF8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_100007E98();
  sub_10000F08C(&_mh_execute_header, v5, v6, "%@: lAttr=%@", v7, v8, v9, v10, v11);
}

void sub_100011CA0(NSObject *a1)
{
  v2 = *__error();
  v3 = 136315650;
  v4 = "main";
  v5 = 2080;
  v6 = "com.apple.aned";
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s: _set_user_dir_suffix(%s) FAILED. errno=%d", &v3, 0x1Cu);
}

void sub_100011D58(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "isLLIRBundle:%u", v2, 8u);
}

void sub_100011DD4(uint64_t a1, char a2, NSObject *a3)
{
  v5 = NSStringFromSelector(*(a1 + 112));
  v6 = 138412546;
  v7 = v5;
  v8 = 1024;
  v9 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: isEncryptedModel=%d", &v6, 0x12u);
}

void sub_100011ED0(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = *__error();
  v7 = 138412802;
  v8 = v5;
  v9 = 2048;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "releaseSandboxExtension:(%@) handle:(%lld) failed (%d)", &v7, 0x1Cu);
}

void sub_100011F88(uint64_t a1, NSObject *a2)
{
  v3 = NSStringFromSelector(*(a1 + 112));
  v4 = 138412802;
  v5 = v3;
  v6 = 2112;
  v7 = kANEFModelANECIRValue;
  v8 = 2112;
  v9 = kANEFModelMILValue;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: Can not specify both %@ and %@", &v4, 0x20u);
}