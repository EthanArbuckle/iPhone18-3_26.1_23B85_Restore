int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_1000010A4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.storageAsyncIO", v1);
  v3 = qword_10000C8B8;
  qword_10000C8B8 = v2;

  qword_10000C8C0 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_100001A98(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_10000C8C0);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
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
  v13 = qword_10000C8C0;
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

void sub_100001CA8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
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

void sub_1000023A8(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_10000C8C0);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
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
  v13 = qword_10000C8C0;
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

void sub_1000025B8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
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

uint64_t sub_10000391C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
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

void sub_100004E80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_1000050AC(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: modelFilePath=%@", v8);
}

void sub_10000515C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: +updateAccessTimeForFilePath:%@ failed", buf, 0x16u);
}

void sub_1000051C4(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: weightFilePath=%@", v8);
}

void sub_100005274(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: filePath=%@", v8);
}

void sub_100005320(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: Skipping update for filePath=%@", v8);
}

void sub_1000053CC(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: +setAccessTime:forFilePath failed", &v5, 0xCu);
}

void sub_100005474()
{
  sub_100004E6C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to remove %@ : error=%@", v2, 0x16u);
}

void sub_1000054F0(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  sub_100004E80(&_mh_execute_header, a3, a3, "Mark %s as purgeable (flags 0x%llx)", &v4);
}

void sub_100005574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

void sub_10000561C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: garbageCollectDanglingModelsAtPath: failed", &v5, 0xCu);
}