@interface CRLScalarPathSource
+ (id)chevronWithScalar:(double)scalar naturalSize:(CGSize)size;
+ (id)pathSourceWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size;
+ (id)regularPolygonWithScalar:(double)scalar naturalSize:(CGSize)size;
+ (id)roundedRectangleWithScalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangular;
- (CGPath)newFeedbackPathForKnob:(unint64_t)knob;
- (CGPath)p_newChevronPath;
- (CGPath)p_newRegularPolygonPath;
- (CGPath)p_newRoundedRectPath;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)p_getControlKnobPointForChevron;
- (CGPoint)p_getControlKnobPointForRegularPolygon;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGSize)naturalSize;
- (CRLScalarPathSource)initWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve;
- (double)cornerRadius;
- (double)maxCornerRadius;
- (double)maxScalar;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crlaxLabelComponentForKnobTag:(unint64_t)tag;
- (id)crlaxValueForKnobTag:(unint64_t)tag;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)knob;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)inferredLocalizedAccessibilityDescriptionPlaceholder;
- (id)name;
- (unint64_t)hash;
- (unint64_t)numberOfSides;
- (void)p_setControlKnobPointForChevron:(CGPoint)chevron;
- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)polygon;
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setIsCurveContinuous:(BOOL)continuous;
- (void)setScalarValue:(id)value;
@end

@implementation CRLScalarPathSource

+ (id)roundedRectangleWithScalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve
{
  v5 = [[CRLScalarPathSource alloc] initWithType:0 scalar:curve naturalSize:scalar continuousCurve:size.width, size.height];

  return v5;
}

+ (id)regularPolygonWithScalar:(double)scalar naturalSize:(CGSize)size
{
  v4 = [[CRLScalarPathSource alloc] initWithType:1 scalar:0 naturalSize:scalar continuousCurve:size.width, size.height];

  return v4;
}

+ (id)chevronWithScalar:(double)scalar naturalSize:(CGSize)size
{
  v4 = [[CRLScalarPathSource alloc] initWithType:2 scalar:0 naturalSize:scalar continuousCurve:size.width, size.height];

  return v4;
}

+ (id)pathSourceWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size
{
  v5 = [[CRLScalarPathSource alloc] initWithType:type scalar:0 naturalSize:scalar continuousCurve:size.width, size.height];

  return v5;
}

- (CRLScalarPathSource)initWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve
{
  curveCopy = curve;
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = CRLScalarPathSource;
  v11 = [(CRLScalarPathSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CRLScalarPathSource *)v11 setType:type];
    [(CRLScalarPathSource *)v12 setScalar:scalar];
    [(CRLScalarPathSource *)v12 setNaturalSize:width, height];
    [(CRLScalarPathSource *)v12 setIsCurveContinuous:curveCopy];
    [(CRLScalarPathSource *)v12 setShouldShowKnob:1];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CRLScalarPathSource;
  v4 = [(CRLPathSource *)&v6 copyWithZone:zone];
  [v4 setType:{-[CRLScalarPathSource type](self, "type")}];
  [(CRLScalarPathSource *)self scalar];
  [v4 setScalar:?];
  [(CRLScalarPathSource *)self naturalSize];
  [v4 setNaturalSize:?];
  [v4 setIsCurveContinuous:{-[CRLScalarPathSource isCurveContinuous](self, "isCurveContinuous")}];
  [v4 setShouldShowKnob:{-[CRLScalarPathSource shouldShowKnob](self, "shouldShowKnob")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = CRLScalarPathSource;
    if ([(CRLPathSource *)&v21 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = sub_100013F00(v5, equalCopy);
      type = [(CRLScalarPathSource *)self type];
      if (type == [v6 type] && ((-[CRLScalarPathSource scalar](self, "scalar"), v9 = v8, objc_msgSend(v6, "scalar"), v9 == v10) || vabdd_f64(v9, v10) < 0.00999999978) && (-[CRLScalarPathSource naturalSize](self, "naturalSize"), v12 = v11, v14 = v13, objc_msgSend(v6, "naturalSize"), sub_10011ECC8(v12, v14, v15, v16)) && (v17 = -[CRLScalarPathSource isCurveContinuous](self, "isCurveContinuous"), v17 == objc_msgSend(v6, "isCurveContinuous")))
      {
        shouldShowKnob = [(CRLScalarPathSource *)self shouldShowKnob];
        v18 = shouldShowKnob ^ [v6 shouldShowKnob] ^ 1;
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = CRLScalarPathSource;
  v3 = [(CRLScalarPathSource *)&v12 description];
  v4 = [v3 mutableCopy];

  type = [(CRLScalarPathSource *)self type];
  [(CRLScalarPathSource *)self scalar];
  v7 = v6;
  [(CRLScalarPathSource *)self naturalSize];
  v8 = NSStringFromCGSize(v14);
  v9 = [NSString stringWithFormat:@" type=%lu; scalar=%f; natural size=%@; continuous curve=%d", type, v7, v8, [(CRLScalarPathSource *)self isCurveContinuous]];;
  [v4 appendString:v9];

  if (![(CRLScalarPathSource *)self shouldShowKnob])
  {
    v10 = [NSString stringWithFormat:@" shouldShowKnob=%d", [(CRLScalarPathSource *)self shouldShowKnob]];
    [v4 appendString:v10];
  }

  return v4;
}

- (void)setIsCurveContinuous:(BOOL)continuous
{
  if (continuous)
  {
    if (![(CRLScalarPathSource *)self type])
    {
      v7 = 1;
      goto LABEL_13;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373FDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373FF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374078();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLScalarPathSource setIsCurveContinuous:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:137 isFatal:0 description:"Trying to make a non-rounded-rectangle path continuously curve"];
  }

  v7 = 0;
LABEL_13:
  self->mIsCurveContinuous = v7;
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(CRLScalarPathSource *)self type])
  {
    [(CRLPathSource *)self uniformScaleForScalingToNaturalSize:width, height];
    self->mScalar = v6 * self->mScalar;
  }

  self->mNaturalSize.width = width;
  self->mNaturalSize.height = height;
}

- (void)setScalarValue:(id)value
{
  [value floatValue];
  v5 = v4;

  [(CRLScalarPathSource *)self setScalar:v5];
}

- (double)maxScalar
{
  type = [(CRLScalarPathSource *)self type];
  if (type == 2)
  {
    [(CRLScalarPathSource *)self naturalSize];
    return v10 / v11;
  }

  else if (type == 1)
  {
    return 100.0;
  }

  else
  {
    result = 0.0;
    if (!type)
    {
      [(CRLScalarPathSource *)self naturalSize];
      v6 = v5;
      y = CGPointZero.y;
      v9 = sub_100120090(CGPointZero.x, y, 0.0, v8) * 0.5;
      result = sub_100120090(CGPointZero.x, y, v6, 0.0) * 0.5;
      if (v9 < result)
      {
        return v9;
      }
    }
  }

  return result;
}

- (double)cornerRadius
{
  if ([(CRLScalarPathSource *)self type])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013740A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013740B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137413C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLScalarPathSource cornerRadius]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:191 isFatal:0 description:"called cornerRadius on wrong type pathSource"];
  }

  [(CRLScalarPathSource *)self scalar];
  v7 = v6;
  [(CRLScalarPathSource *)self maxCornerRadius];
  return sub_1004C3240(v7, 0.0, v8);
}

- (double)maxCornerRadius
{
  if ([(CRLScalarPathSource *)self type])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374164();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374178();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374200();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLScalarPathSource maxCornerRadius]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:197 isFatal:0 description:"called cornerRadius on wrong type pathSource"];
  }

  [(CRLScalarPathSource *)self maxScalar];
  return result;
}

- (unint64_t)numberOfSides
{
  if ([(CRLScalarPathSource *)self type]!= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374228();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137423C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013742C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLScalarPathSource numberOfSides]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:202 isFatal:0 description:"called numberOfSides on wrong type pathSource"];
  }

  [(CRLScalarPathSource *)self scalar];
  return v6;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  type = [(CRLScalarPathSource *)self type];
  if (type == 2)
  {
    [(CRLScalarPathSource *)self p_getControlKnobPointForChevron];
  }

  else if (type == 1)
  {
    [(CRLScalarPathSource *)self p_getControlKnobPointForRegularPolygon];
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (!type)
    {
      [(CRLScalarPathSource *)self p_getControlKnobPointForRoundedRect:0.0];
    }
  }

  result.y = v5;
  result.x = v6;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type = [(CRLScalarPathSource *)self type];
  switch(type)
  {
    case 2uLL:

      [(CRLScalarPathSource *)self p_setControlKnobPointForChevron:x, y];
      break;
    case 1uLL:

      [(CRLScalarPathSource *)self p_setControlKnobPointForRegularPolygon:x, y];
      break;
    case 0uLL:

      [(CRLScalarPathSource *)self p_setControlKnobPointForRoundedRect:x, y];
      break;
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)knob
{
  type = [(CRLScalarPathSource *)self type];
  switch(type)
  {
    case 2uLL:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013742EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101374300();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101374388();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLScalarPathSource getFeedbackStringForKnob:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:262 isFatal:0 description:"Need to provide feedback string for chevron!"];

      v10 = &stru_1018BCA28;
      break;
    case 1uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"Sides: %d";
      goto LABEL_6;
    case 0uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"Radius: %d pt";
LABEL_6:
      v8 = [v5 localizedStringForKey:v7 value:0 table:0];
      [(CRLScalarPathSource *)self scalar];
      v10 = [NSString localizedStringWithFormat:v8, v9];

      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (CGPath)newFeedbackPathForKnob:(unint64_t)knob
{
  if ([(CRLScalarPathSource *)self type]!= 1)
  {
    return 0;
  }

  bezierPath = [(CRLPathSource *)self bezierPath];
  [bezierPath bounds];
  v6 = v5;
  v8 = v7;

  Mutable = CGPathCreateMutable();
  [(CRLScalarPathSource *)self naturalSize];
  v11 = -(v6 - v10 * 0.15);
  [(CRLScalarPathSource *)self naturalSize];
  v13 = -(v8 - v12 * 0.15);
  [(CRLScalarPathSource *)self naturalSize];
  v15 = v14 * 0.7;
  [(CRLScalarPathSource *)self naturalSize];
  v18.size.height = v16 * 0.7;
  v18.origin.x = v11;
  v18.origin.y = v13;
  v18.size.width = v15;
  CGPathAddEllipseInRect(Mutable, 0, v18);
  return Mutable;
}

- (id)bezierPathWithoutFlips
{
  type = [(CRLScalarPathSource *)self type];
  switch(type)
  {
    case 2uLL:
      p_newChevronPath = [(CRLScalarPathSource *)self p_newChevronPath];
      goto LABEL_7;
    case 1uLL:
      p_newChevronPath = [(CRLScalarPathSource *)self p_newRegularPolygonPath];
      goto LABEL_7;
    case 0uLL:
      p_newChevronPath = [(CRLScalarPathSource *)self p_newRoundedRectPath];
LABEL_7:
      v5 = p_newChevronPath;
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v6 = [CRLBezierPath bezierPathWithCGPath:v5];
  CGPathRelease(v5);

  return v6;
}

- (BOOL)isRectangular
{
  if ([(CRLScalarPathSource *)self type])
  {
    return 0;
  }

  [(CRLScalarPathSource *)self scalar];
  return v4 == 0.0;
}

- (id)name
{
  type = [(CRLScalarPathSource *)self type];
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_101862EC0 + type);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (CGPath)p_newRoundedRectPath
{
  [(CRLScalarPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  y = CGPointZero.y;
  [(CRLScalarPathSource *)self scalar];
  v9 = v8;
  v10 = sub_100120090(CGPointZero.x, y, 0.0, v6) * 0.5;
  v11 = sub_100120090(CGPointZero.x, y, v4, 0.0) * 0.5;
  if (v10 < v11)
  {
    v11 = v10;
  }

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_10011ECB4();
  v17 = [CRLBezierPath bezierPathWithRoundedRect:[(CRLScalarPathSource *)self isCurveContinuous]^ 1 upperRightRadius:0 lowerRightRadius:v13 lowerLeftRadius:v14 upperLeftRadius:v15 useLegacyCorners:v16 keepNoOpElements:v12, v12, v12, v12];
  v18 = CGPathRetain([v17 CGPath]);

  return v18;
}

- (CGPath)p_newRegularPolygonPath
{
  Mutable = CGPathCreateMutable();
  [(CRLScalarPathSource *)self scalar];
  v5 = fmax(v4, 3.0);
  [(CRLScalarPathSource *)self naturalSize];
  v7 = v6 * 0.5;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeScale(&m, 1.0, v8 / v6);
  v11 = m;
  CGAffineTransformTranslate(&v12, &v11, v7, v7);
  m = v12;
  v12.a = 0.0;
  v12.b = 0.0;
  if (v5)
  {
    v9 = 0;
    do
    {
      sub_100120F28(&v12.a, v7, 6.28318531 / v5 * v9 + -1.57079633);
      if (v9)
      {
        CGPathAddLineToPoint(Mutable, &m, v12.a, v12.b);
      }

      else
      {
        CGPathMoveToPoint(Mutable, &m, v12.a, v12.b);
      }

      ++v9;
    }

    while (v5 != v9);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newChevronPath
{
  Mutable = CGPathCreateMutable();
  [(CRLScalarPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  [(CRLScalarPathSource *)self scalar];
  v9 = sub_1004C3240(v7 * v8, 0.0, v5);
  if (v9 == 0.0)
  {
    v14.origin.x = sub_10011ECB4();
    CGPathAddRect(Mutable, 0, v14);
  }

  else
  {
    v10 = v9;
    y = CGPointZero.y;
    v12 = v5 - v9;
    CGPathMoveToPoint(Mutable, 0, CGPointZero.x, y);
    CGPathAddLineToPoint(Mutable, 0, v12, 0.0);
    CGPathAddLineToPoint(Mutable, 0, v5, v7 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, v12, v7);
    CGPathAddLineToPoint(Mutable, 0, 0.0, v7);
    CGPathAddLineToPoint(Mutable, 0, v10, v7 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, CGPointZero.x, y);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect
{
  x = rect.x;
  [(CRLScalarPathSource *)self naturalSize:rect.x];
  v6 = v5;
  y = CGPointZero.y;
  v9 = sub_100120090(CGPointZero.x, y, 0.0, v8) * 0.5;
  v10 = sub_100120090(CGPointZero.x, y, v6, 0.0) * 0.5;
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1004C3240(x, 0.0, v11);

  [(CRLScalarPathSource *)self setScalar:v12];
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  [(CRLScalarPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  y = CGPointZero.y;
  [(CRLScalarPathSource *)self scalar];
  v9 = v8;
  v10 = sub_100120090(CGPointZero.x, y, 0.0, v6) * 0.5;
  v11 = sub_100120090(CGPointZero.x, y, v4, 0.0) * 0.5;
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = sub_1004C3240(v9, 0.0, v12);
  v14 = 0.0;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)polygon
{
  y = polygon.y;
  x = polygon.x;
  [(CRLScalarPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  if ([(CRLPathSource *)self hasVerticalFlip])
  {
    v10 = v9 - y;
  }

  else
  {
    v10 = y;
  }

  v11 = x - v7 * 0.5;
  v12 = v7 / v9 * (v10 - v9 * 0.5);
  v13 = -v11;
  v14 = sub_100120074(v11, v12);
  v15 = acos(v13 / v14);
  if (v12 > 0.0)
  {
    v15 = 6.28318531 - v15;
  }

  v16 = v15 / 6.28318531 + -0.25;
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1.0;
  }

  v18 = +[CRLScalarPathSource crlaxMaximumAllowedPolygonPointsDuringAdjustment];
  v19 = v17 * 9.0 + 3.5;
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 3;
  }

  [(CRLScalarPathSource *)self scalar];
  if (v21 != 3 || v20 == 4)
  {
    [(CRLScalarPathSource *)self scalar];
    if (v22 != v18 || v20 == v18 - 1)
    {

      [(CRLScalarPathSource *)self setScalar:v20];
    }
  }
}

- (CGPoint)p_getControlKnobPointForRegularPolygon
{
  [(CRLScalarPathSource *)self scalar];
  v4 = fmax(v3, 3.0);
  [(CRLScalarPathSource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  v9 = v5 * 0.5;
  v13 = 0.0;
  v14 = 0.0;
  sub_100120F28(&v13, v5 * 0.5 * 0.7, (((v4 - 3) / 9.0) + -0.25) * 6.28318531);
  v13 = v9 + v13;
  v14 = v8 * 0.5 + v8 / v6 * v14;
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v11 = v13;
  v12 = v14;
  if (hasVerticalFlip)
  {
    v12 = v8 - v14;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)p_setControlKnobPointForChevron:(CGPoint)chevron
{
  x = chevron.x;
  [(CRLScalarPathSource *)self naturalSize:chevron.x];
  v7 = sub_1004C3240(x, 0.0, v5) / v6;

  [(CRLScalarPathSource *)self setScalar:v7];
}

- (CGPoint)p_getControlKnobPointForChevron
{
  [(CRLScalarPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  [(CRLScalarPathSource *)self scalar];
  v8 = sub_1004C3240(v7 * v6, 0.0, v4);
  v9 = v6 * 0.5;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (![userDefinedName length])
  {
    inferredAccessibilityDescription = [(CRLScalarPathSource *)self inferredAccessibilityDescription];

    userDefinedName = inferredAccessibilityDescription;
  }

  return userDefinedName;
}

- (id)inferredAccessibilityDescription
{
  type = [(CRLScalarPathSource *)self type];
  [(CRLScalarPathSource *)self scalar];
  v5 = llround(v4);
  if (type != 1)
  {
    if (type)
    {
      v9 = &stru_1018BCA28;
      goto LABEL_19;
    }

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Rounded rectangle";
    }

    else
    {
      v8 = @"Square";
    }

    goto LABEL_17;
  }

  if (v5 <= 7)
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"Pentagon";
      }

      else
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        if (v5 == 6)
        {
          v8 = @"Hexagon";
        }

        else
        {
          v8 = @"Heptagon";
        }
      }

      goto LABEL_17;
    }

    if (v5 == 3)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Triangle";
      goto LABEL_17;
    }

    if (v5 == 4)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Diamond";
      goto LABEL_17;
    }

LABEL_33:
    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:@"%@ sided polygon" value:0 table:0];
    v12 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = [NSString stringWithFormat:v11, v12];

    goto LABEL_18;
  }

  if (v5 <= 9)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5 == 8)
    {
      v8 = @"Octagon";
    }

    else
    {
      v8 = @"Nonagon";
    }

    goto LABEL_17;
  }

  if (v5 == 10)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Decagon";
    goto LABEL_17;
  }

  if (v5 == 11)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Hendecagon";
    goto LABEL_17;
  }

  if (v5 != 12)
  {
    goto LABEL_33;
  }

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  v8 = @"Dodecagon";
LABEL_17:
  v9 = [v6 localizedStringForKey:v8 value:0 table:0];
LABEL_18:

LABEL_19:

  return v9;
}

- (id)inferredLocalizedAccessibilityDescriptionPlaceholder
{
  type = [(CRLScalarPathSource *)self type];
  [(CRLScalarPathSource *)self scalar];
  v5 = llround(v4);
  if (type != 1)
  {
    if (type)
    {
      v9 = &stru_1018BCA28;
      goto LABEL_19;
    }

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Describe the selected rounded rectangle.";
    }

    else
    {
      v8 = @"Describe the selected square.";
    }

    goto LABEL_17;
  }

  if (v5 <= 7)
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"Describe the selected pentagon.";
      }

      else
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        if (v5 == 6)
        {
          v8 = @"Describe the selected hexagon.";
        }

        else
        {
          v8 = @"Describe the selected heptagon.";
        }
      }

      goto LABEL_17;
    }

    if (v5 == 3)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Describe the selected triangle.";
      goto LABEL_17;
    }

    if (v5 == 4)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Describe the selected diamond.";
      goto LABEL_17;
    }

LABEL_33:
    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:@"Describe the selected %@ sided polygon." value:0 table:0];
    v12 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = [NSString stringWithFormat:v11, v12];

    goto LABEL_18;
  }

  if (v5 <= 9)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5 == 8)
    {
      v8 = @"Describe the selected octagon.";
    }

    else
    {
      v8 = @"Describe the selected nonagon.";
    }

    goto LABEL_17;
  }

  if (v5 == 10)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Describe the selected decagon.";
    goto LABEL_17;
  }

  if (v5 == 11)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Describe the selected hendecagon.";
    goto LABEL_17;
  }

  if (v5 != 12)
  {
    goto LABEL_33;
  }

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  v8 = @"Describe the selected dodecagon.";
LABEL_17:
  v9 = [v6 localizedStringForKey:v8 value:0 table:0];
LABEL_18:

LABEL_19:

  return v9;
}

- (id)crlaxLabelComponentForKnobTag:(unint64_t)tag
{
  type = [(CRLScalarPathSource *)self type];
  switch(type)
  {
    case 2uLL:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013743B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013743C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137444C();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLScalarPathSource crlaxLabelComponentForKnobTag:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:641 isFatal:0 description:"Need to provide axLabel component string for chevron!"];

      v8 = &stru_1018BCA28;
      break;
    case 1uLL:
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Sides";
      goto LABEL_6;
    case 0uLL:
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Radius";
LABEL_6:
      v7 = [v4 localizedStringForKey:v6 value:0 table:0];
      v8 = [NSString localizedStringWithFormat:v7];

      break;
    default:
      v8 = 0;
      break;
  }

  return v8;
}

- (id)crlaxValueForKnobTag:(unint64_t)tag
{
  type = [(CRLScalarPathSource *)self type];
  if (type == 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374474();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374488();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374510();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLScalarPathSource crlaxValueForKnobTag:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLScalarPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:660 isFatal:0 description:"Need to provide axValue string for chevron!"];

    v8 = &stru_1018BCA28;
  }

  else if (type == 1)
  {
    [(CRLScalarPathSource *)self scalar];
    v8 = [NSString stringWithFormat:@"%d", v9];
  }

  else if (type)
  {
    v8 = 0;
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"%d points" value:0 table:0];
    [(CRLScalarPathSource *)self scalar];
    v8 = [NSString localizedStringWithFormat:v6, v7];
  }

  return v8;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end