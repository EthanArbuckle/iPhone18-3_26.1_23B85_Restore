void sub_100001A5C(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void sub_100001F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001FF0(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002070(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000020F0(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002170(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(a1 + 32);

    [v2 _openNewsArticleWithURL:?];
  }

  else
  {
    v3 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    [*(a1 + 40) cancelRequestWithError:v3];
  }
}

void sub_1000022F0(uint64_t a1)
{
  v6 = +[FCFeldsparIDProvider sharedInstance];
  v2 = [FCConfigurationManager alloc];
  v3 = +[FCContextConfiguration defaultConfiguration];
  v4 = [v2 initWithContextConfiguration:v3 contentHostDirectoryFileURL:*(a1 + 32) feldsparIDProvider:v6];
  v5 = qword_100011548;
  qword_100011548 = v4;
}

void sub_100002488(uint64_t a1)
{
  v1 = [*(a1 + 32) extensionContext];
  [v1 completeRequestReturningItems:0 completionHandler:0];
}

void sub_10000360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003668(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 filePath];
  if (v7)
  {
    v8 = [NSURL fileURLWithPath:v7 isDirectory:0];
    if (v8)
    {
      v9 = +[NSUUID UUID];
      v10 = [v9 UUIDString];

      v11 = [*(a1 + 32) URLByAppendingPathComponent:v10 isDirectory:0];
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 56) + 8);
      obj = *(v13 + 40);
      [v12 copyItemAtURL:v8 toURL:v11 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      v14 = *(a1 + 48);
      v15 = [v6 remoteURL];
      [v14 setObject:v11 forKeyedSubscript:v15];

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004960();
  }
}

void sub_100004018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [NSURL nss_NewsURLForArticleID:v5 internal:0 targetIsVideo:0 hardPaywall:1];
    v8 = FCOpenInNewsLog;
    if (!os_log_type_enabled(FCOpenInNewsLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v7 absoluteString];
    *buf = 138412290;
    v19 = v10;
    v11 = "Open article in News %@";
  }

  else
  {
    v17 = @"openinnewserror";
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [NSURL nss_NewsURLWithPathComponents:v12 internal:0];

    v13 = FCOpenInNewsLog;
    if (!os_log_type_enabled(FCOpenInNewsLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 32);
    v9 = v13;
    v10 = [v14 absoluteString];
    *buf = 138412290;
    v19 = v10;
    v11 = "Unable to open in News %@";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, buf, 0xCu);

LABEL_7:
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = +[LSApplicationWorkspace defaultWorkspace];
  [v16 openSensitiveURL:v7 withOptions:0];
}

void sub_10000427C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}

void sub_100004340()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_100004404()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "flintDocumentURLAssetHandlesByRemoteURL", v6, 2u);
}

void sub_1000044C8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_10000458C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "encodableElement", v6, 2u);
}

void sub_100004650()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_100004714()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_1000047D8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "referralItem", v6, 2u);
}

void sub_10000489C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sharedDirectoryFileURL", v6, 2u);
}

void sub_100004960()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceFilePath", v6, 2u);
}

void sub_100004A24()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_100004AE8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemClass", v6, 2u);
}

void sub_100004BAC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100001A4C();
  sub_100001A3C();
  sub_100001A28();
  sub_100001A5C(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryValue", v6, 2u);
}