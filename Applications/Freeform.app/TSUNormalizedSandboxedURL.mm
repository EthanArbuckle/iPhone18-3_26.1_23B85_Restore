@interface TSUNormalizedSandboxedURL
- (BOOL)hasSandboxAccess;
- (TSUNormalizedSandboxedURL)initWithURL:(id)l originalSandboxedURL:(id)rL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)originalSandboxedURLForNormalizing;
@end

@implementation TSUNormalizedSandboxedURL

- (TSUNormalizedSandboxedURL)initWithURL:(id)l originalSandboxedURL:(id)rL
{
  rLCopy = rL;
  v11.receiver = self;
  v11.super_class = TSUNormalizedSandboxedURL;
  v8 = [(CRLSandboxedURL *)&v11 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originalSandboxedURL, rL);
  }

  return v9;
}

- (BOOL)hasSandboxAccess
{
  v4.receiver = self;
  v4.super_class = TSUNormalizedSandboxedURL;
  if ([(CRLSandboxedURL *)&v4 hasSandboxAccess])
  {
    return 1;
  }

  else
  {
    return [(CRLSandboxedURL *)self->_originalSandboxedURL hasSandboxAccess];
  }
}

- (id)originalSandboxedURLForNormalizing
{
  v5.receiver = self;
  v5.super_class = TSUNormalizedSandboxedURL;
  if ([(CRLSandboxedURL *)&v5 hasSandboxAccess])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CRLSandboxedURL *)self->_originalSandboxedURL originalSandboxedURLForNormalizing];
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(CRLSandboxedURL *)self->_originalSandboxedURL copyWithZone:?];
  v6 = [TSUNormalizedSandboxedURL allocWithZone:zone];
  v7 = [(CRLSandboxedURL *)self URL];
  v8 = [(TSUNormalizedSandboxedURL *)v6 initWithURL:v7 originalSandboxedURL:v5];

  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AD40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AD54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131ADDC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Copy should never be nil.", v15, v16, v17, v18, v19, v20, v21, "[TSUNormalizedSandboxedURL copyWithZone:]");
    v22 = [NSString stringWithUTF8String:"[TSUNormalizedSandboxedURL copyWithZone:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:178 isFatal:1 description:"Copy should never be nil."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v24, v25);
    abort();
  }

  hasSandboxAccess = [(TSUNormalizedSandboxedURL *)v8 hasSandboxAccess];
  if (hasSandboxAccess != [(TSUNormalizedSandboxedURL *)self hasSandboxAccess])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AC7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AC90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131AD18();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[TSUNormalizedSandboxedURL copyWithZone:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSandboxedURL.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:179 isFatal:0 description:"Sanboxing access didn't transfer as expected to sandboxed URL copy."];
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLSandboxedURL *)self URL];
  v10.receiver = self;
  v10.super_class = TSUNormalizedSandboxedURL;
  hasSandboxAccess = [(CRLSandboxedURL *)&v10 hasSandboxAccess];
  v7 = @"NO";
  if (hasSandboxAccess)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p URL=%@, hasSandboxAccess=%@, originalSandboxedURL=%@>", v4, self, v5, v7, self->_originalSandboxedURL];

  return v8;
}

@end