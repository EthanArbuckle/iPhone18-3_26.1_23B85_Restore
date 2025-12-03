@interface CRLMutableShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAngle:(double)angle;
- (void)setColor:(id)color;
- (void)setOffset:(double)offset;
- (void)setOpacity:(double)opacity;
- (void)setRadius:(double)radius;
@end

@implementation CRLMutableShadow

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101848C08);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLMutableShadow copyWithZone:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadow.m";
    v26 = 1024;
    v27 = 456;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101848C28);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLMutableShadow copyWithZone:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadow.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:456 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLMutableShadow copyWithZone:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)setAngle:(double)angle
{
  sub_1001208E0(angle);

  [(CRLShadow *)self i_setAngle:?];
}

- (void)setOffset:(double)offset
{
  [(CRLShadow *)self clampOffset:offset];

  [(CRLShadow *)self i_setOffset:?];
}

- (void)setRadius:(double)radius
{
  [(CRLShadow *)self clampRadius:radius];

  [(CRLShadow *)self i_setRadius:?];
}

- (void)setOpacity:(double)opacity
{
  [(CRLShadow *)self clampOpacity:opacity];

  [(CRLShadow *)self i_setOpacity:?];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013335E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013335FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333698();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMutableShadow setColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowMutableMethods.h"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:34 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
  }

  [(CRLShadow *)self i_setColor:colorCopy];
}

@end