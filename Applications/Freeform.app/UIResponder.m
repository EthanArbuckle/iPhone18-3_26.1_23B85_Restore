@interface UIResponder
- (int64_t)crl_textInputSource;
@end

@implementation UIResponder

- (int64_t)crl_textInputSource
{
  if (objc_opt_respondsToSelector())
  {

    return [(UIResponder *)self _textInputSource];
  }

  else
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320B08();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320B1C(v3, v4);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320BC8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v5, v3);
    }

    v6 = [NSString stringWithUTF8String:"[UIResponder(CRLAdditions) crl_textInputSource]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIResponder_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:19 isFatal:0 description:"Responder does not respond to _textInputSource."];

    return 0;
  }
}

@end