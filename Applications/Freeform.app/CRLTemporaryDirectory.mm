@interface CRLTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (CRLTemporaryDirectory)init;
- (CRLTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (NSString)path;
- (NSURL)URL;
- (id)initForWritingToURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)removeDirectory;
@end

@implementation CRLTemporaryDirectory

- (CRLTemporaryDirectory)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183FD58);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
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

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183FD78);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
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

- (CRLTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  v13.receiver = self;
  v13.super_class = CRLTemporaryDirectory;
  v10 = [(CRLTemporaryDirectory *)&v13 init];
  v11 = v10;
  if (v10 && ![(CRLTemporaryDirectory *)v10 _createDirectoryWithSignature:signatureCopy subdirectory:subdirectoryCopy error:error])
  {

    v11 = 0;
  }

  return v11;
}

- (id)initForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = CRLTemporaryDirectory;
  v7 = [(CRLTemporaryDirectory *)&v13 init];
  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

    path = [v9 path];
    path = v7->_path;
    v7->_path = path;

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
    if (qword_101AD5A10 != -1)
    {
      sub_10131D734();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D748();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D7DC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
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
  path = [(CRLTemporaryDirectory *)self path];
  v3 = [NSURL fileURLWithPath:path isDirectory:1];

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
      crl_isNoSuchFileError = [v6 crl_isNoSuchFileError];

      if ((crl_isNoSuchFileError & 1) == 0)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_10131D804();
        }

        v11 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_10131D82C(v7, p_path, v11);
        }
      }
    }

    v9 = *p_path;
    *p_path = 0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D8B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D8CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D960();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v7 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory removeDirectory]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v9 lineNumber:92 isFatal:0 description:"Directory has already been removed"];
  }
}

- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  if (signatureCopy)
  {
    v10 = signatureCopy;
  }

  else
  {
    v10 = &stru_1018BCA28;
  }

  if (qword_101A34678 != -1)
  {
    sub_10131D988();
  }

  v11 = [qword_101A34670 stringByAppendingFormat:@"_%@_%d_%d", v10, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(&dword_101A34680, 1u) + 1];
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
  if (subdirectoryCopy)
  {
    v16 = [v14 stringByAppendingPathComponent:subdirectoryCopy];

    v15 = v16;
  }

  v17 = [v15 stringByAppendingPathComponent:v11];
  v18 = +[NSFileManager defaultManager];
  v24 = 0;
  v19 = [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  objc_storeStrong(&self->_path, v17);
  if (error && (v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      v22 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
      *error = v22;
    }
  }

  return v19;
}

@end