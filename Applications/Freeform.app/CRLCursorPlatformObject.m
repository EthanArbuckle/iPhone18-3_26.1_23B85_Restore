@interface CRLCursorPlatformObject
+ (id)cursorPlatformObjectWithPointerRegionRequest:(id)a3;
- (CRLCursorPlatformObject)initWithPointerRegionRequest:(id)a3;
@end

@implementation CRLCursorPlatformObject

+ (id)cursorPlatformObjectWithPointerRegionRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPointerRegionRequest:v4];

  return v5;
}

- (CRLCursorPlatformObject)initWithPointerRegionRequest:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136318C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013631A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136323C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCursorPlatformObject initWithPointerRegionRequest:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:662 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "pointerRequest != nil"];
  }

  v12.receiver = self;
  v12.super_class = CRLCursorPlatformObject;
  v9 = [(CRLCursorPlatformObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pointerRequest, a3);
  }

  return v10;
}

@end