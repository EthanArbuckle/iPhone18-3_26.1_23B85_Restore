@interface FRFont
+ (BOOL)_shouldUnregisterFontWithFileURL:(id)a3;
+ (BOOL)_unregisterFontAtFileURL:(id)a3 error:(id *)a4;
+ (BOOL)registerFontWithURL:(id)a3 error:(id *)a4;
+ (id)_postScriptNameForFontAtFileURL:(id)a3;
+ (id)_referenceCountedSet;
+ (id)_registrationQueue;
+ (unint64_t)_referenceCountForFontWithFileURL:(id)a3;
+ (void)_decreaseReferenceCountForFontWithFileURL:(id)a3;
+ (void)_increaseReferenceCountForFontWithFileURL:(id)a3;
+ (void)unregisterFontWithURL:(id)a3;
@end

@implementation FRFont

+ (BOOL)registerFontWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072BD0();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100009C18;
  v17[4] = sub_100009F60;
  v18 = 0;
  v7 = [a1 _registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057188;
  block[3] = &unk_1000C5AE8;
  v12 = v6;
  v13 = v17;
  v14 = &v19;
  v15 = a1;
  v16 = a4;
  v8 = v6;
  dispatch_sync(v7, block);

  v9 = *(v20 + 24);
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

+ (void)unregisterFontWithURL:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072C98();
  }

  v5 = [a1 _registrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000575B8;
  v7[3] = &unk_1000C5A18;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (void)_increaseReferenceCountForFontWithFileURL:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072D5C();
  }

  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Increasing reference count for font at URL %{public}@", &v7, 0xCu);
  }

  v6 = [a1 _referenceCountedSet];
  [v6 addObject:v4];
}

+ (void)_decreaseReferenceCountForFontWithFileURL:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072E20();
  }

  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decreasing reference count for font at URL %{public}@", buf, 0xCu);
  }

  v6 = [a1 _referenceCountedSet];
  [v6 removeObject:v4];
  if ([a1 _shouldUnregisterFontWithFileURL:v4])
  {
    v10 = 0;
    v7 = [a1 _unregisterFontAtFileURL:v4 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100072EE4();
    }

    v9 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_100072F9C(v9, v8);
    }
  }
}

+ (unint64_t)_referenceCountForFontWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [a1 _referenceCountedSet];
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073044();
  }

  v6 = [v5 countForObject:v4];

  return v6;
}

+ (BOOL)_shouldUnregisterFontWithFileURL:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073108();
  }

  v5 = [a1 _referenceCountForFontWithFileURL:v4] == 0;

  return v5;
}

+ (BOOL)_unregisterFontAtFileURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000731CC();
  }

  if (*a4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073290();
  }

  error = 0;
  v6 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to unregister font at URL %{public}@", buf, 0xCu);
  }

  v7 = CTFontManagerUnregisterFontsForURL(v5, kCTFontManagerScopeProcess, &error);
  if (v7)
  {
    v8 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Font unregistration succeeded for font at URL %{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    Code = CFErrorGetCode(error);
    if ((Code - 201) > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:@"FRFontUnRegistationErrorDomain" userInfo:?];
    }

    v11 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
    {
      v14 = v11;
      v15 = [NSNumber numberWithLong:Code];
      *buf = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to unregister font at URL %{public}@ with error %{public}@ underlying error code: %{public}@", buf, 0x20u);
    }
  }

  if (error)
  {
    CFRelease(error);
  }

  v12 = v9;
  *a4 = v9;

  return v7;
}

+ (id)_postScriptNameForFontAtFileURL:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073354();
  }

  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v3);
  if (CFArrayGetCount(FontDescriptorsFromURL) != 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073418();
  }

  ValueAtIndex = CFArrayGetValueAtIndex(FontDescriptorsFromURL, 0);
  v6 = CTFontDescriptorCopyAttribute(ValueAtIndex, kCTFontNameAttribute);
  v7 = CFGetTypeID(v6);
  if (v7 != CFStringGetTypeID() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000734D0();
  }

  CFRelease(FontDescriptorsFromURL);
  v8 = v6;
  CFRelease(v8);

  return v8;
}

+ (id)_referenceCountedSet
{
  if (qword_1000E6328 != -1)
  {
    sub_100073588();
  }

  v3 = qword_1000E6330;

  return v3;
}

+ (id)_registrationQueue
{
  if (qword_1000E6338 != -1)
  {
    sub_10007359C();
  }

  v3 = qword_1000E6340;

  return v3;
}

@end