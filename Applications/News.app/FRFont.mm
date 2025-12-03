@interface FRFont
+ (BOOL)_shouldUnregisterFontWithFileURL:(id)l;
+ (BOOL)_unregisterFontAtFileURL:(id)l error:(id *)error;
+ (BOOL)registerFontWithURL:(id)l error:(id *)error;
+ (id)_postScriptNameForFontAtFileURL:(id)l;
+ (id)_referenceCountedSet;
+ (id)_registrationQueue;
+ (unint64_t)_referenceCountForFontWithFileURL:(id)l;
+ (void)_decreaseReferenceCountForFontWithFileURL:(id)l;
+ (void)_increaseReferenceCountForFontWithFileURL:(id)l;
+ (void)unregisterFontWithURL:(id)l;
@end

@implementation FRFont

+ (BOOL)registerFontWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
  _registrationQueue = [self _registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057188;
  block[3] = &unk_1000C5AE8;
  v12 = lCopy;
  v13 = v17;
  v14 = &v19;
  selfCopy = self;
  errorCopy = error;
  v8 = lCopy;
  dispatch_sync(_registrationQueue, block);

  v9 = *(v20 + 24);
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

+ (void)unregisterFontWithURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072C98();
  }

  _registrationQueue = [self _registrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000575B8;
  v7[3] = &unk_1000C5A18;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  dispatch_sync(_registrationQueue, v7);
}

+ (void)_increaseReferenceCountForFontWithFileURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072D5C();
  }

  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Increasing reference count for font at URL %{public}@", &v7, 0xCu);
  }

  _referenceCountedSet = [self _referenceCountedSet];
  [_referenceCountedSet addObject:lCopy];
}

+ (void)_decreaseReferenceCountForFontWithFileURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072E20();
  }

  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decreasing reference count for font at URL %{public}@", buf, 0xCu);
  }

  _referenceCountedSet = [self _referenceCountedSet];
  [_referenceCountedSet removeObject:lCopy];
  if ([self _shouldUnregisterFontWithFileURL:lCopy])
  {
    v10 = 0;
    v7 = [self _unregisterFontAtFileURL:lCopy error:&v10];
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

+ (unint64_t)_referenceCountForFontWithFileURL:(id)l
{
  lCopy = l;
  _referenceCountedSet = [self _referenceCountedSet];
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073044();
  }

  v6 = [_referenceCountedSet countForObject:lCopy];

  return v6;
}

+ (BOOL)_shouldUnregisterFontWithFileURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073108();
  }

  v5 = [self _referenceCountForFontWithFileURL:lCopy] == 0;

  return v5;
}

+ (BOOL)_unregisterFontAtFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000731CC();
  }

  if (*error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073290();
  }

  error = 0;
  v6 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = lCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to unregister font at URL %{public}@", buf, 0xCu);
  }

  v7 = CTFontManagerUnregisterFontsForURL(lCopy, kCTFontManagerScopeProcess, &error);
  if (v7)
  {
    v8 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = lCopy;
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
      v18 = lCopy;
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
  *error = v9;

  return v7;
}

+ (id)_postScriptNameForFontAtFileURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073354();
  }

  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(lCopy);
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