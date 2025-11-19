id BooksThumbsLog(void)
{
  if (qword_1000081D8 != -1)
  {
    sub_100001894();
  }

  v1 = qword_1000081D0;

  return v1;
}

void sub_100000E34(id a1)
{
  qword_1000081D0 = os_log_create("com.apple.iBooks", "BooksThumbs");

  _objc_release_x1();
}

id sub_10000141C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 URLByAppendingPathComponent:@"iTunesArtwork" isDirectory:0];
  v6 = [NSData dataWithContentsOfURL:v5];
  if (!v6)
  {
    v7 = [v4 path];
    v8 = +[BLLibrary defaultBookLibrary];
    v9 = [NSURL fileURLWithPath:v7];
    v10 = [v8 _perUserBookURLForBookURL:v9];
    v11 = [v10 path];
    v12 = [v11 mutableCopy];

    if (([v12 hasSuffix:@"/"] & 1) == 0)
    {
      [v12 appendString:@"/"];
    }

    operator new();
  }

  return v6;
}

void sub_100001874(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000019BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered an error while trying to get cover image data: %{public}@", &v2, 0xCu);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}