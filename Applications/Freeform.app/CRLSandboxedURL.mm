@interface CRLSandboxedURL
+ (id)sandboxedURLByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
+ (id)sandboxedURLByResolvingBookmarkData:(id)data relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CRLSandboxedURL)init;
- (CRLSandboxedURL)initWithURL:(id)l;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
- (id)normalize;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CRLSandboxedURL

- (CRLSandboxedURL)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183EEC8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLSandboxedURL init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m";
    v18 = 1024;
    v19 = 28;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183EEE8);
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

  v7 = [NSString stringWithUTF8String:"[CRLSandboxedURL init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:28 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLSandboxedURL init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLSandboxedURL)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v18.receiver = self;
    v18.super_class = CRLSandboxedURL;
    v5 = [(CRLSandboxedURL *)&v18 init];
    if (v5)
    {
      if ([lCopy isFileURL])
      {
        v6 = [lCopy copy];
        URL = v5->_URL;
        v5->_URL = v6;

        startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
      }

      else
      {
        v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131A9E8();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131AA10(lCopy, v10, v11);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131AACC();
        }

        v12 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v12);
        }

        v13 = [NSString stringWithUTF8String:"[CRLSandboxedURL initWithURL:]"];
        v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
        [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:39 isFatal:0 description:"Sandboxed URL should not be initialized with a non-file URL. URL=%@", lCopy];

        v15 = [lCopy copy];
        v16 = v5->_URL;
        v5->_URL = v15;

        startAccessingSecurityScopedResource = 0;
      }

      v5->_URLStartedAccessingSecurityScopedResource = startAccessingSecurityScopedResource;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  v14 = [[NSURL alloc] initByResolvingBookmarkData:dataCopy options:options | 0x8000 relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  if (v14)
  {
    v15 = [(CRLSandboxedURL *)self initWithURL:v14];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

+ (id)sandboxedURLByResolvingBookmarkData:(id)data relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  v12 = [[self alloc] initByResolvingBookmarkData:dataCopy relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  return v12;
}

+ (id)sandboxedURLByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  v14 = [[self alloc] initByResolvingBookmarkData:dataCopy options:options relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  return v14;
}

- (void)dealloc
{
  if (self->_URLStartedAccessingSecurityScopedResource)
  {
    [(NSURL *)self->_URL stopAccessingSecurityScopedResource];
  }

  v3.receiver = self;
  v3.super_class = CRLSandboxedURL;
  [(CRLSandboxedURL *)&v3 dealloc];
}

- (id)normalize
{
  v3 = [(CRLSandboxedURL *)self URL];
  if (([v3 isFileURL] & 1) == 0)
  {
    p_super = self;
    goto LABEL_12;
  }

  path = [v3 path];
  if (path)
  {
    v5 = [[NSURL alloc] initFileURLWithPath:path];
    if (v5 && ([v3 isEqual:v5] & 1) == 0)
    {
      originalSandboxedURLForNormalizing = [(CRLSandboxedURL *)self originalSandboxedURLForNormalizing];
      v7 = originalSandboxedURLForNormalizing;
      if (originalSandboxedURLForNormalizing == self || (-[CRLSandboxedURL URL](originalSandboxedURLForNormalizing, "URL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v5], v8, (v9 & 1) == 0))
      {
        v10 = [[TSUNormalizedSandboxedURL alloc] initWithURL:v5 originalSandboxedURL:v7];
      }

      else
      {
        v10 = v7;
      }

      p_super = &v10->super;

      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
  }

  p_super = self;
LABEL_11:

LABEL_12:

  return p_super;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CRLSandboxedURL allocWithZone:?], "initWithURL:", self->_URL];
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131ABB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131ABCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131AC54();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Copy should never be nil.", v12, v13, v14, v15, v16, v17, v18, "[CRLSandboxedURL copyWithZone:]");
    v19 = [NSString stringWithUTF8String:"[CRLSandboxedURL copyWithZone:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:125 isFatal:1 description:"Copy should never be nil."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v21, v22);
    abort();
  }

  v5 = v4;
  hasSandboxAccess = [(CRLSandboxedURL *)v4 hasSandboxAccess];
  if (hasSandboxAccess != [(CRLSandboxedURL *)self hasSandboxAccess])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AAF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AB08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131AB90();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLSandboxedURL copyWithZone:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:126 isFatal:0 description:"Sanboxing access didn't transfer as expected to sandboxed URL copy."];
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_URLStartedAccessingSecurityScopedResource)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@: %p URL=%@, hasSandboxAccess=%@>", v4, self, self->_URL, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    v7 = [(CRLSandboxedURL *)self URL];
    v8 = [v6 URL];
    if ([v7 isEqual:v8])
    {
      hasSandboxAccess = [(CRLSandboxedURL *)self hasSandboxAccess];
      v10 = hasSandboxAccess ^ [v6 hasSandboxAccess] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRLSandboxedURL *)self URL];
  v4 = [v3 hash];
  hasSandboxAccess = [(CRLSandboxedURL *)self hasSandboxAccess];

  return v4 ^ hasSandboxAccess;
}

@end