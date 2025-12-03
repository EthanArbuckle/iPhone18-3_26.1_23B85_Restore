@interface CRLMutableCurvedShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAngle:(double)angle;
- (void)setColor:(id)color;
- (void)setOffset:(double)offset;
- (void)setOpacity:(double)opacity;
- (void)setRadius:(double)radius;
@end

@implementation CRLMutableCurvedShadow

- (void)setAngle:(double)angle
{
  sub_1001208E0(angle);

  [(CRLShadow *)self i_setAngle:?];
}

- (void)setOffset:(double)offset
{
  [(CRLCurvedShadow *)self clampOffset:offset];

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

  [(CRLShadow *)self i_setColor:colorCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLCurvedShadow allocWithZone:zone];
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
  color = [(CRLShadow *)self color];
  v16 = [(CRLCurvedShadow *)v4 initWithOffset:color angle:[(CRLShadow *)self isEnabled] radius:v6 curve:v8 opacity:v10 color:v12 enabled:v14];

  return v16;
}

@end