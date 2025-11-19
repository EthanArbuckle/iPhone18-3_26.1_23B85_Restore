@interface CRLNonInteractiveInsertionContext
- (CGPoint)preferredCenter;
@end

@implementation CRLNonInteractiveInsertionContext

- (CGPoint)preferredCenter
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134EDC0();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10134EDD4(v2, v3);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134EE80();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v4, v2);
  }

  v5 = [NSString stringWithUTF8String:"[CRLNonInteractiveInsertionContext preferredCenter]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInsertionContext.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:197 isFatal:0 description:"The preferred center is not applicable for a noninteractive insertion context."];

  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

@end