@interface CRLImageCompatibilityChecker
+ (void)initialize;
- (CRLImageCompatibilityChecker)initWithImageData:(id)data;
- (void)checkCompatibilityUpToLevel:(int64_t)level completionHandler:(id)handler;
@end

@implementation CRLImageCompatibilityChecker

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[CRLWidthLimitedQueue alloc] initWithLimit:10];
    v3 = qword_101A34660;
    qword_101A34660 = v2;
  }
}

- (CRLImageCompatibilityChecker)initWithImageData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AE04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AE18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131AEC8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageCompatibilityChecker initWithImageData:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:40 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "imageData != nil"];
  }

  v12.receiver = self;
  v12.super_class = CRLImageCompatibilityChecker;
  v9 = [(CRLImageCompatibilityChecker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageData, data);
  }

  return v10;
}

- (void)checkCompatibilityUpToLevel:(int64_t)level completionHandler:(id)handler
{
  handlerCopy = handler;
  if (level <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AEF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AF04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131AFB4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:49 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "maxDesiredCompatibilityLevel > CRLMediaCompatibilityLevelNone"];
  }

  v10 = qword_101A34660;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100132BC0;
  v12[3] = &unk_10183F0D0;
  v13 = handlerCopy;
  levelCopy = level;
  v12[4] = self;
  v11 = handlerCopy;
  [v10 performAsync:v12];
}

@end