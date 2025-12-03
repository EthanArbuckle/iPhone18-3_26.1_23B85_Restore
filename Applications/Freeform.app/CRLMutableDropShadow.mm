@interface CRLMutableDropShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAngle:(double)angle;
- (void)setColor:(id)color;
- (void)setOffset:(double)offset;
- (void)setOpacity:(double)opacity;
- (void)setRadius:(double)radius;
@end

@implementation CRLMutableDropShadow

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

  [(CRLShadow *)self i_setColor:colorCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLDropShadow allocWithZone:zone];
  [(CRLShadow *)self angle];
  v6 = v5;
  [(CRLShadow *)self offset];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLShadow *)self opacity];
  v12 = v11;
  color = [(CRLShadow *)self color];
  v14 = [(CRLDropShadow *)v4 initWithAngle:color offset:[(CRLShadow *)self isEnabled] radius:v6 opacity:v8 color:v10 enabled:v12];

  return v14;
}

@end