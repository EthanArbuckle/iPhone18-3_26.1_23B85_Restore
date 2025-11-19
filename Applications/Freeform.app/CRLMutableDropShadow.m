@interface CRLMutableDropShadow
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAngle:(double)a3;
- (void)setColor:(id)a3;
- (void)setOffset:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setRadius:(double)a3;
@end

@implementation CRLMutableDropShadow

- (void)setAngle:(double)a3
{
  sub_1001208E0(a3);

  [(CRLShadow *)self i_setAngle:?];
}

- (void)setOffset:(double)a3
{
  [(CRLShadow *)self clampOffset:a3];

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
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013569F8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356A0C(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356AC8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v7, v5);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMutableDropShadow setColor:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowMutableMethods.h"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:34 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
  }

  [(CRLShadow *)self i_setColor:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLDropShadow allocWithZone:a3];
  [(CRLShadow *)self angle];
  v6 = v5;
  [(CRLShadow *)self offset];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLShadow *)self opacity];
  v12 = v11;
  v13 = [(CRLShadow *)self color];
  v14 = [(CRLDropShadow *)v4 initWithAngle:v13 offset:[(CRLShadow *)self isEnabled] radius:v6 opacity:v8 color:v10 enabled:v12];

  return v14;
}

@end