@interface CRLShadow
+ (CRLShadow)shadowWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled;
+ (CRLShadow)shadowWithNSShadow:(id)shadow;
+ (id)defaultShadowPresets;
+ (id)p_defaultShadowEnabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (CGImage)i_newEmptyImage;
- (CGPoint)offsetDelta;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CGRect)shadowBoundsForRect:(CGRect)rect;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalAngle:(double)angle;
- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform;
- (NSShadow)NSShadow;
- (NSString)typeDescription;
- (id)description;
- (id)i_initWithOpacity:(double)opacity color:(id)color angle:(double)angle offset:(double)offset radius:(double)radius enabled:(BOOL)enabled;
- (void)applyToContext:(CGContext *)context viewScale:(double)scale flipped:(BOOL)flipped extraOffset:(CGSize)offset;
- (void)i_setColor:(id)color;
@end

@implementation CRLShadow

- (id)i_initWithOpacity:(double)opacity color:(id)color angle:(double)angle offset:(double)offset radius:(double)radius enabled:(BOOL)enabled
{
  colorCopy = color;
  if (!colorCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133344C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013334E8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLShadow i_initWithOpacity:color:angle:offset:radius:enabled:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadow.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:44 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
  }

  v27.receiver = self;
  v27.super_class = CRLShadow;
  v18 = [(CRLShadow *)&v27 init];
  v19 = v18;
  if (v18)
  {
    [(CRLShadow *)v18 clampOpacity:opacity];
    v19->mOpacity = v20;
    v21 = [colorCopy copy];
    mColor = v19->mColor;
    v19->mColor = v21;

    sub_1001208E0(angle);
    v19->mAngle = v23;
    [(CRLShadow *)v19 clampOffset:offset];
    v19->mOffset = v24;
    v19->mEnabled = enabled;
    [(CRLShadow *)v19 clampRadius:radius];
    v19->mRadius = v25;
  }

  return v19;
}

+ (id)p_defaultShadowEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = [CRLDropShadow alloc];
  v5 = +[CRLColor blackColor];
  v6 = [(CRLDropShadow *)v4 initWithAngle:v5 offset:enabledCopy radius:90.0 opacity:2.0 color:3.0 enabled:0.25];

  return v6;
}

+ (CRLShadow)shadowWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  colorCopy = color;
  v14 = [[CRLDropShadow alloc] initWithAngle:colorCopy offset:enabledCopy radius:angle opacity:offset color:radius enabled:opacity];

  return v14;
}

+ (CRLShadow)shadowWithNSShadow:(id)shadow
{
  shadowCopy = shadow;
  [shadowCopy shadowOffset];
  v5 = v4;
  v7 = v6;
  shadowColor = [shadowCopy shadowColor];
  cGColor = [shadowColor CGColor];

  v10 = sub_1001208D0(v5, v7) * 57.2957795;
  v11 = sub_100120074(v5, v7);
  [shadowCopy shadowBlurRadius];
  v13 = v12;

  v14 = [CRLColor colorWithCGColor:cGColor];
  [v14 alphaComponent];
  v16 = v15;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(cGColor, 1.0);
  v18 = [CRLColor colorWithCGColor:CopyWithAlpha];
  v19 = [CRLShadow shadowWithAngle:v18 offset:1 radius:v10 opacity:v11 color:v13 enabled:v16];

  CGColorRelease(CopyWithAlpha);

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);

    if (v6)
    {
      [(CRLShadow *)self angle];
      v8 = v7;
      [v6 angle];
      if (v8 == v9 || vabdd_f64(v8, v9) < fabs(v9 * 0.000000999999997))
      {
        [(CRLShadow *)self offset];
        v11 = v10;
        [v6 offset];
        if (v11 == v12 || vabdd_f64(v11, v12) < fabs(v12 * 0.000000999999997))
        {
          [(CRLShadow *)self radius];
          v14 = v13;
          [v6 radius];
          if (v14 == v15 || vabdd_f64(v14, v15) < fabs(v15 * 0.000000999999997))
          {
            [(CRLShadow *)self opacity];
            v17 = v16;
            [v6 opacity];
            if (v17 == v18 || vabdd_f64(v17, v18) < fabs(v18 * 0.000000999999997))
            {
              isEnabled = [(CRLShadow *)self isEnabled];
              if (isEnabled == [v6 isEnabled])
              {
                color = [(CRLShadow *)self color];
                color2 = [v6 color];
                if ([color isEqual:color2])
                {
                  shadowType = [(CRLShadow *)self shadowType];
                  shadowType2 = [v6 shadowType];

                  if (shadowType == shadowType2)
                  {
                    v24 = 1;
LABEL_18:

                    return v24;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }

    v24 = 0;
    goto LABEL_18;
  }

  return 1;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12 = *&self->mAngle;
  mRadius = self->mRadius;
  mOpacity = self->mOpacity;
  mColor = self->mColor;
  if (self->mEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  typeDescription = [(CRLShadow *)self typeDescription];
  v10 = [NSString stringWithFormat:@"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@ type=%@>", v4, self, v12, *&mRadius, *&mOpacity, mColor, v8, typeDescription];

  return v10;
}

- (NSString)typeDescription
{
  shadowType = [(CRLShadow *)self shadowType];
  if (shadowType > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_101848C88 + shadowType);
  }
}

- (void)i_setColor:(id)color
{
  v4 = [color copy];
  mColor = self->mColor;
  self->mColor = v4;
}

- (CGPoint)offsetDelta
{
  v8 = 0.0;
  v9 = 0.0;
  [(CRLShadow *)self offset];
  v4 = v3;
  [(CRLShadow *)self angle];
  sub_100120F28(&v8, v4, v5 * 0.0174532925);
  v6 = v8;
  v7 = v9;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)applyToContext:(CGContext *)context viewScale:(double)scale flipped:(BOOL)flipped extraOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  flippedCopy = flipped;
  if ([(CRLShadow *)self isEnabled])
  {
    v31 = 0.0;
    v32 = 0.0;
    [(CRLShadow *)self angle];
    if (flippedCopy)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    v14 = sub_100510940(context);
    v15 = sub_100510A7C(context);
    v16 = v15;
    if (v14)
    {
      width = sub_10011F340(width, height, 1.0 / v15);
      height = v17;
      v16 = 1.0;
    }

    [(CRLShadow *)self radius];
    v19 = v16 * (v18 * scale);
    [(CRLShadow *)self offset];
    sub_100120F28(&v31, v16 * (v20 * scale), v13 * 0.0174532925);
    v33.width = width;
    v33.height = height;
    v21 = CGContextConvertSizeToDeviceSpace(context, v33);
    v22 = v31 + v21.width;
    v23 = v21.height + v32;
    color = [(CRLShadow *)self color];
    cGColor = [color CGColor];
    [(CRLShadow *)self opacity];
    v27 = v26;
    color2 = [(CRLShadow *)self color];
    Alpha = CGColorGetAlpha([color2 CGColor]);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(cGColor, v27 * Alpha);

    v34.width = v22;
    v34.height = v23;
    CGContextSetShadowWithColor(context, v34, v19, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGImage)i_newEmptyImage
{
  v2 = sub_10050DF80(3, 1.0, 1.0);
  Image = CGBitmapContextCreateImage(v2);
  CGContextRelease(v2);
  return Image;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CRLShadow *)self isEnabled])
  {
    [(CRLShadow *)self radius];
    v11 = -v10;
    [(CRLShadow *)self radius];
    v13 = -v12;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, v11, v13);
    v14 = v30.origin.x;
    v15 = v30.origin.y;
    v16 = v30.size.width;
    v17 = v30.size.height;
    [(CRLShadow *)self offsetDelta];
    v18 = *&transform->c;
    v28[0] = *&transform->a;
    v28[1] = v18;
    v28[2] = *&transform->tx;
    v21 = sub_10012119C(v28, v19, v20);
    v23 = v22;
    v31.origin.x = v14;
    v31.origin.y = v15;
    v31.size.width = v16;
    v31.size.height = v17;
    v35 = CGRectOffset(v31, v21, v23);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectUnion(v32, v35);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect
{
  v3 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v3;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [(CRLShadow *)self shadowBoundsForRect:v8 additionalTransform:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)rect additionalAngle:(double)angle
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGAffineTransformMakeRotation(&v13, angle * 0.0174532925);
  [(CRLShadow *)self shadowBoundsForRect:&v13 additionalTransform:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (id)defaultShadowPresets
{
  v2 = +[NSMutableArray array];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &qword_101463040[8 * v3];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 4);
    v10 = [CRLColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v11 = [[CRLDropShadow alloc] initWithAngle:v10 offset:1 radius:v7 opacity:v8 color:v9 enabled:0.5];
    [v2 addObject:v11];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return v2;
}

- (NSShadow)NSShadow
{
  if ([(CRLShadow *)self isEnabled])
  {
    v3 = objc_alloc_init(NSShadow);
    [(CRLShadow *)self angle];
    v5 = v4 * 0.0174532925;
    [(CRLShadow *)self offset];
    v7 = v6;
    v8 = sub_100120F98(v5);
    v10 = v9;
    color = [(CRLShadow *)self color];
    cGColor = [color CGColor];

    [(CRLShadow *)self opacity];
    v14 = v13;
    Alpha = CGColorGetAlpha(cGColor);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(cGColor, v14 * Alpha);
    if (!CopyWithAlpha)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101333510();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101333524();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013335C0();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLShadow NSShadow]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadow.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:427 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
    }

    v20 = [UIColor colorWithCGColor:CopyWithAlpha];
    if (v20)
    {
      [v3 setShadowColor:v20];
    }

    [v3 setShadowOffset:{sub_10011F340(v8, v10, v7)}];
    [(CRLShadow *)self radius];
    [v3 setShadowBlurRadius:?];
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end