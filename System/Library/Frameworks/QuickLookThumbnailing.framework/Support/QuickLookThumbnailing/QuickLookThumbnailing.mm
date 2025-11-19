uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.quicklook.ThumbnailsAgent"];
  v2 = qword_10000C8F0;
  qword_10000C8F0 = v1;

  v3 = objc_alloc_init(QLThumbnailsServiceDelegate);
  v4 = qword_10000C900;
  qword_10000C900 = v3;

  [qword_10000C8F0 setDelegate:qword_10000C900];
  [qword_10000C8F0 resume];
  [QLThumbnailAdditionIndex setUpCleanupXPCActivitySynchronously:1];
  v5 = +[QLServerThread sharedInstance];
  v6 = qword_10000C8F8;
  qword_10000C8F8 = v5;

  v7 = +[QLThumbnailAdditionIndex sharedInstance];
  [QLCacheDeleteHandler setUpCacheDeleteWithThumbnailAdditionIndex:v7];

  objc_autoreleasePoolPop(v0);
  v8 = +[NSRunLoop mainRunLoop];
  [v8 run];

  v9 = qltLogHandles;
  if (!qltLogHandles)
  {
    QLTInitLogging();
    v9 = qltLogHandles;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10000240C(v9);
  }

  return 0;
}

id sub_100001170(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 isFileURL])
  {
    v3 = open([v2 fileSystemRepresentation], 0x8000, 0);
    if (v3 < 0)
    {
      v8 = sub_1000013F4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000024D4();
      }
    }

    else
    {
      v4 = v3;
      if (fcntl(v3, 50, v11) == -1)
      {
        v9 = sub_1000013F4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100002450();
        }

        close(v4);
      }

      else
      {
        close(v4);
        if (v11[0])
        {
          v5 = sandbox_extension_issue_file();
          if (v5)
          {
            v6 = v5;
            v7 = [NSString stringWithUTF8String:v5];
            free(v6);
            goto LABEL_15;
          }
        }
      }
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

id sub_1000013F4()
{
  v0 = qltLogHandles;
  if (!qltLogHandles)
  {
    QLTInitLogging();
    v0 = qltLogHandles;
  }

  return v0;
}

void sub_100001674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000016A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CFURLPromiseCopyPhysicalURL();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  if (!access([v7 fileSystemRepresentation], 4))
  {
    v9 = *__error();
    v10 = NSPOSIXErrorDomain;
LABEL_12:
    v12 = [NSError errorWithDomain:v10 code:v9 userInfo:0, v15];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 auditToken];
  }

  v15 = [v7 fileSystemRepresentation];
  if (sandbox_check_by_audit_token())
  {
    v11 = sub_1000013F4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000025E4((a1 + 32), v7, v11);
    }

    v10 = QLThumbnailsServiceErrorDomain;
    v9 = 1;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_100001D40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000023EC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100002450()
{
  v0 = __error();
  strerror(*v0);
  sub_1000023D4();
  sub_1000023EC(&_mh_execute_header, v1, v2, "failed to get real path for %s: %s", v3, v4, v5, v6, v7);
}

void sub_1000024D4()
{
  v0 = __error();
  strerror(*v0);
  sub_1000023D4();
  sub_1000023EC(&_mh_execute_header, v1, v2, "failed to open path %s: %s", v3, v4, v5, v6, v7);
}

void sub_100002558(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not find application identifier for pid %d: %@", v4, 0x12u);
}

void sub_1000025E4(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 pid];
  v6[0] = 67109378;
  v6[1] = v5;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Client (pid %d) does not have sandbox access to %@", v6, 0x12u);
}