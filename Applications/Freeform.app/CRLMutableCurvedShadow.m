@interface CRLMutableCurvedShadow
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAngle:(double)a3;
- (void)setColor:(id)a3;
- (void)setOffset:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setRadius:(double)a3;
@end

@implementation CRLMutableCurvedShadow

- (void)setAngle:(double)a3
{
  sub_1001208E0(a3);

  [(CRLShadow *)self i_setAngle:?];
}

- (void)setOffset:(double)a3
{
  [(CRLCurvedShadow *)self clampOffset:a3];

  [(CRLShadow *)self i_setOffset:?];
}

- (void)setRadius:(double)a3
{
  [(CRLShadow *)self clampRadius:a3];

  [(CRLShadow *)self i_setRadius:?];
}

- (void)setOpacity:(double)a3
{
  [(CRLShadow *)self clampOpacity:a3];

  [(CRLShadow *)self i_setOpacity:?];
}

- (void)setColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360028();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136003C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013600E0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMutableCurvedShadow setColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowMutableMethods.h"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:34 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
  }

  [(CRLShadow *)self i_setColor:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLCurvedShadow allocWithZone:a3];
  [(CRLShadow *)self offset];
  v6 = v5;
  [(CRLShadow *)self angle];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLCurvedShadow *)self curve];
  v12 = v11;
  [(CRLShadow *)self opacity];
  v14 = v13;
  v15 = [(CRLShadow *)self color];
  v16 = [(CRLCurvedShadow *)v4 initWithOffset:v15 angle:[(CRLShadow *)self isEnabled] radius:v6 curve:v8 opacity:v10 color:v12 enabled:v14];

  return v16;
}

@end