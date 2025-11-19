@interface CRLTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)a3 subdirectory:(id)a4 error:(id *)a5;
- (CRLTemporaryDirectory)init;
- (CRLTemporaryDirectory)initWithSignature:(id)a3 subdirectory:(id)a4 error:(id *)a5;
- (NSString)path;
- (NSURL)URL;
- (id)initForWritingToURL:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)removeDirectory;
@end

@implementation CRLTemporaryDirectory

- (CRLTemporaryDirectory)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (CRLAssertCat_init_token != -1)
  {
    dispatch_once(&CRLAssertCat_init_token, &stru_1000C3978);
  }

  v3 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLTemporaryDirectory init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m";
    v18 = 1024;
    v19 = 23;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (CRLAssertCat_init_token != -1)
  {
    dispatch_once(&CRLAssertCat_init_token, &stru_1000C3998);
  }

  v4 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:23 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLTemporaryDirectory init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLTemporaryDirectory)initWithSignature:(id)a3 subdirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CRLTemporaryDirectory;
  v10 = [(CRLTemporaryDirectory *)&v13 init];
  v11 = v10;
  if (v10 && ![(CRLTemporaryDirectory *)v10 _createDirectoryWithSignature:v8 subdirectory:v9 error:a5])
  {

    v11 = 0;
  }

  return v11;
}

- (id)initForWritingToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CRLTemporaryDirectory;
  v7 = [(CRLTemporaryDirectory *)&v13 init];
  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:a4];

    v10 = [v9 path];
    path = v7->_path;
    v7->_path = v10;

    if (!v9)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_path && !self->_leak)
  {
    [(CRLTemporaryDirectory *)self removeDirectory];
  }

  v3.receiver = self;
  v3.super_class = CRLTemporaryDirectory;
  [(CRLTemporaryDirectory *)&v3 dealloc];
}

- (NSString)path
{
  path = self->_path;
  if (!path)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_1000896B8();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000896CC();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_100089760();
    }

    v4 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087834(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory path]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:71 isFatal:0 description:"Directory has already been removed"];

    path = self->_path;
  }

  return path;
}

- (NSURL)URL
{
  v2 = [(CRLTemporaryDirectory *)self path];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1];

  return v3;
}

- (void)removeDirectory
{
  p_path = &self->_path;
  if (self->_path)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = *p_path;
    v12 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
    }

    else
    {
      v10 = [v6 crl_isNoSuchFileError];

      if ((v10 & 1) == 0)
      {
        if (CRLDefaultCat_init_token != -1)
        {
          sub_100089788();
        }

        v11 = CRLDefaultCat_log_t;
        if (os_log_type_enabled(CRLDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_1000897B0(v7, p_path, v11);
        }
      }
    }

    v9 = *p_path;
    *p_path = 0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10008983C();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100089850();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_1000898E4();
    }

    v8 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087834(v8);
    }

    v7 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory removeDirectory]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v9 lineNumber:92 isFatal:0 description:"Directory has already been removed"];
  }
}

- (BOOL)_createDirectoryWithSignature:(id)a3 subdirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1000C76D8;
  }

  if (qword_1000D9390 != -1)
  {
    sub_10008990C();
  }

  v11 = [qword_1000D9388 stringByAppendingFormat:@"_%@_%d_%d", v10, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(dword_1000D9398, 1u) + 1];
  if ([v11 length] >= 0x100)
  {
    v12 = [v11 substringToIndex:255];

    v11 = v12;
  }

  v13 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v13)
  {
    [NSString stringWithUTF8String:v13];
  }

  else
  {
    NSTemporaryDirectory();
  }
  v14 = ;
  v15 = v14;
  if (v9)
  {
    v16 = [v14 stringByAppendingPathComponent:v9];

    v15 = v16;
  }

  v17 = [v15 stringByAppendingPathComponent:v11];
  v18 = +[NSFileManager defaultManager];
  v24 = 0;
  v19 = [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  objc_storeStrong(&self->_path, v17);
  if (a5 && (v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = v20;
      *a5 = v20;
    }

    else
    {
      v22 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
      *a5 = v22;
    }
  }

  return v19;
}

@end