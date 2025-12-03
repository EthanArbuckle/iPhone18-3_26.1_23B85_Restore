@interface CRLPointPathSource
+ (id)p_percentageNumberFormatter;
+ (id)pathSourceWithType:(unint64_t)type point:(CGPoint)point naturalSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_isArrowType;
- (BOOL)p_isFlippedDoubleArrow;
- (BOOL)p_isRightFacingArrow;
- (CGPath)newFeedbackPathForKnob:(unint64_t)knob;
- (CGPath)p_newArrowPath;
- (CGPath)p_newPlusPath;
- (CGPath)p_newStarPath;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)maxPointValue;
- (CGPoint)minPointValue;
- (CGPoint)p_getControlKnobPointForArrow;
- (CGPoint)p_getControlKnobPointForPlus;
- (CGPoint)p_getControlKnobPointForStarInnerRadius;
- (CGPoint)p_getControlKnobPointForStarPoints;
- (CGPoint)point;
- (CGSize)naturalSize;
- (CRLPointPathSource)initWithType:(unint64_t)type point:(CGPoint)point naturalSize:(CGSize)size;
- (double)arrowHead;
- (double)arrowIndent;
- (double)maxArrowHead;
- (double)maxArrowIndent;
- (double)starRadius;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crlaxLabelComponentForKnobTag:(unint64_t)tag;
- (id)crlaxUserInputLabelForKnobTag:(unint64_t)tag;
- (id)crlaxValueForKnobTag:(unint64_t)tag;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)knob;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)inferredLocalizedAccessibilityDescriptionPlaceholder;
- (id)name;
- (id)p_innerRadiusLocalizedPercent;
- (unint64_t)hash;
- (unint64_t)numberOfControlKnobs;
- (unint64_t)starPoints;
- (void)p_setControlKnobPointForArrow:(CGPoint)arrow;
- (void)p_setControlKnobPointForPlus:(CGPoint)plus;
- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)radius;
- (void)p_setControlKnobPointForStarPoints:(CGPoint)points;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
@end

@implementation CRLPointPathSource

+ (id)pathSourceWithType:(unint64_t)type point:(CGPoint)point naturalSize:(CGSize)size
{
  v5 = [[self alloc] initWithType:type point:point.x naturalSize:{point.y, size.width, size.height}];

  return v5;
}

+ (id)p_percentageNumberFormatter
{
  if (qword_101A34D40 != -1)
  {
    sub_101360FD8();
  }

  v3 = qword_101A34D48;

  return v3;
}

- (CRLPointPathSource)initWithType:(unint64_t)type point:(CGPoint)point naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  v13.receiver = self;
  v13.super_class = CRLPointPathSource;
  v10 = [(CRLPointPathSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CRLPointPathSource *)v10 setType:type];
    [(CRLPointPathSource *)v11 setPoint:x, y];
    [(CRLPointPathSource *)v11 setNaturalSize:width, height];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CRLPointPathSource;
  v4 = [(CRLPathSource *)&v6 copyWithZone:zone];
  [v4 setType:{-[CRLPointPathSource type](self, "type")}];
  [(CRLPointPathSource *)self point];
  [v4 setPoint:?];
  [(CRLPointPathSource *)self naturalSize];
  [v4 setNaturalSize:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = CRLPointPathSource;
    if ([(CRLPathSource *)&v22 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = sub_100014370(v5, equalCopy);
      type = [(CRLPointPathSource *)self type];
      if (type == [v6 type] && (-[CRLPointPathSource point](self, "point"), v9 = v8, v11 = v10, objc_msgSend(v6, "point"), sub_10011ECC8(v9, v11, v12, v13)))
      {
        [(CRLPointPathSource *)self naturalSize];
        v15 = v14;
        v17 = v16;
        [v6 naturalSize];
        v20 = sub_10011ECC8(v15, v17, v18, v19);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
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
  v10.receiver = self;
  v10.super_class = CRLPointPathSource;
  v3 = [(CRLPointPathSource *)&v10 description];
  v4 = [v3 mutableCopy];

  type = [(CRLPointPathSource *)self type];
  [(CRLPointPathSource *)self point];
  v6 = NSStringFromCGPoint(v12);
  [(CRLPointPathSource *)self naturalSize];
  v7 = NSStringFromCGSize(v13);
  v8 = [NSString stringWithFormat:@" type=%lu; point=%@; natural size=%@", type, v6, v7];;
  [v4 appendString:v8];

  return v4;
}

- (CGPoint)minPointValue
{
  y = CGPointZero.y;
  type = [(CRLPointPathSource *)self type];
  if (type == 100)
  {
    v4 = 0.1;
  }

  else
  {
    v4 = y;
  }

  x = 3.0;
  if (type != 100)
  {
    x = CGPointZero.x;
  }

  result.y = v4;
  result.x = x;
  return result;
}

- (CGPoint)maxPointValue
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  type = [(CRLPointPathSource *)self type];
  if (type > 99)
  {
    if (type == 100)
    {
      y = 1.0;
      x = 100.0;
    }

    else if (type == 200)
    {
      [(CRLPointPathSource *)self naturalSize];
      x = v7 * 0.5;
      y = v8 * 0.5;
    }
  }

  else if (type >= 2)
  {
    if (type == 10)
    {
      [(CRLPointPathSource *)self naturalSize];
      y = 0.5;
      x = v9 * 0.5;
    }
  }

  else
  {
    [(CRLPointPathSource *)self naturalSize];
    x = v6;
    y = 0.5;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (unint64_t)starPoints
{
  if ([(CRLPointPathSource *)self type]!= 100)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360FEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101361000();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361088();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource starPoints]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:161 isFatal:0 description:"asking for starPoints on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self point];
  return v6;
}

- (double)starRadius
{
  if ([(CRLPointPathSource *)self type]!= 100)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013610B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013610C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136114C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource starRadius]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:177 isFatal:0 description:"asking for starRadius on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self point];
  return v6;
}

- (BOOL)p_isArrowType
{
  if ([(CRLPointPathSource *)self type])
  {
    type = [(CRLPointPathSource *)self type];
    if (type != 1)
    {
      LOBYTE(type) = [(CRLPointPathSource *)self type]== 10;
    }
  }

  else
  {
    LOBYTE(type) = 1;
  }

  return type;
}

- (double)arrowIndent
{
  if (![(CRLPointPathSource *)self p_isArrowType])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101361174();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101361188();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361210();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource arrowIndent]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:194 isFatal:0 description:"asking for arrowIndent on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self point];
  return v6;
}

- (double)maxArrowIndent
{
  if (![(CRLPointPathSource *)self p_isArrowType])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101361238();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136124C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013612D4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource maxArrowIndent]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:199 isFatal:0 description:"asking for arrowIndent on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self maxPointValue];
  return v6;
}

- (double)arrowHead
{
  if (![(CRLPointPathSource *)self p_isArrowType])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013612FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101361310();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361398();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource arrowHead]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:208 isFatal:0 description:"asking for arrowIndent on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self point];
  return result;
}

- (double)maxArrowHead
{
  if (![(CRLPointPathSource *)self p_isArrowType])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013613C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013613D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136145C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPointPathSource maxArrowHead]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPointPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:213 isFatal:0 description:"asking for arrowIndent on wrong type of pathSource"];
  }

  [(CRLPointPathSource *)self maxPointValue];
  return result;
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0 || type == 200)
  {
    [(CRLPathSource *)self uniformScaleForScalingToNaturalSize:width, height];
    self->mPoint.x = v7 * self->mPoint.x;
  }

  self->mNaturalSize.width = width;
  self->mNaturalSize.height = height;
}

- (unint64_t)numberOfControlKnobs
{
  if ([(CRLPointPathSource *)self type]== 100)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    [(CRLPointPathSource *)self p_getControlKnobPointForArrow];
  }

  else if (type == 100)
  {
    if (position == 12)
    {
      [(CRLPointPathSource *)self p_getControlKnobPointForStarPoints];
    }

    else
    {
      [(CRLPointPathSource *)self p_getControlKnobPointForStarInnerRadius];
    }
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    if (type == 200)
    {
      [(CRLPointPathSource *)self p_getControlKnobPointForPlus:0.0];
    }
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {

    [(CRLPointPathSource *)self p_setControlKnobPointForArrow:x, y];
  }

  else if (type == 100)
  {
    if (position == 12)
    {

      [(CRLPointPathSource *)self p_setControlKnobPointForStarPoints:x, y];
    }

    else
    {

      [(CRLPointPathSource *)self p_setControlKnobPointForStarInnerRadius:x, y];
    }
  }

  else if (type == 200)
  {

    [(CRLPointPathSource *)self p_setControlKnobPointForPlus:x, y];
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)knob
{
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0 || type == 200)
  {
    v10 = &stru_1018BCA28;
  }

  else if (type == 100)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (knob == 12)
    {
      v8 = [v6 localizedStringForKey:@"Points: %d" value:0 table:0];
      [(CRLPointPathSource *)self point];
      v10 = [NSString localizedStringWithFormat:v8, v9];
    }

    else
    {
      v8 = [v6 localizedStringForKey:@"Radius: %@" value:0 table:0];
      p_innerRadiusLocalizedPercent = [(CRLPointPathSource *)self p_innerRadiusLocalizedPercent];
      v10 = [NSString localizedStringWithFormat:v8, p_innerRadiusLocalizedPercent];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGPath)newFeedbackPathForKnob:(unint64_t)knob
{
  type = [(CRLPointPathSource *)self type];
  Mutable = 0;
  if (knob == 12 && type == 100)
  {
    bezierPath = [(CRLPathSource *)self bezierPath];
    [bezierPath bounds];
    v9 = v8;
    v11 = v10;

    Mutable = CGPathCreateMutable();
    [(CRLPointPathSource *)self naturalSize];
    v13 = -(v9 - v12 * 0.15);
    [(CRLPointPathSource *)self naturalSize];
    v15 = -(v11 - v14 * 0.15);
    [(CRLPointPathSource *)self naturalSize];
    v17 = v16 * 0.7;
    [(CRLPointPathSource *)self naturalSize];
    v20.size.height = v18 * 0.7;
    v20.origin.x = v13;
    v20.origin.y = v15;
    v20.size.width = v17;
    CGPathAddEllipseInRect(Mutable, 0, v20);
  }

  return Mutable;
}

- (id)bezierPathWithoutFlips
{
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    p_newArrowPath = [(CRLPointPathSource *)self p_newArrowPath];
LABEL_8:
    v5 = p_newArrowPath;
    goto LABEL_9;
  }

  if (type == 100)
  {
    p_newArrowPath = [(CRLPointPathSource *)self p_newStarPath];
    goto LABEL_8;
  }

  if (type == 200)
  {
    p_newArrowPath = [(CRLPointPathSource *)self p_newPlusPath];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:
  v6 = [CRLBezierPath bezierPathWithCGPath:v5];
  CGPathRelease(v5);

  return v6;
}

- (id)name
{
  type = [(CRLPointPathSource *)self type];
  v3 = 0;
  if (type > 99)
  {
    if (type == 100)
    {
      v4 = @"Star";
    }

    else
    {
      if (type != 200)
      {
        goto LABEL_11;
      }

      v4 = @"Plus";
    }
  }

  else if (type >= 2)
  {
    if (type != 10)
    {
      goto LABEL_11;
    }

    v4 = @"Double Arrow";
  }

  else
  {
    v4 = @"Arrow";
  }

  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:v4 value:0 table:0];

LABEL_11:

  return v3;
}

- (CGPath)p_newArrowPath
{
  Mutable = CGPathCreateMutable();
  [(CRLPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  v8 = sub_10011ECB4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CRLPointPathSource *)self point];
  v16 = v15;
  v18 = v17;
  [(CRLPointPathSource *)self naturalSize];
  v20 = v18 * v19;
  mType = self->mType;
  if (mType == 1)
  {
    v24 = v5 - sub_1004C3240(v16, 0.0, v5);
  }

  else
  {
    if (mType == 10)
    {
      v22 = v5 * 0.5;
      v23 = v16;
    }

    else
    {
      v23 = v16;
      v22 = v5;
    }

    v24 = sub_1004C3240(v23, 0.0, v22);
  }

  v25 = sub_1004C3240(v20, 0.0, v7 * 0.5);
  v26 = v25;
  v27 = self->mType;
  if (v27 == 10)
  {
    v47 = v7 - v25;
    CGPathMoveToPoint(Mutable, 0, v24, v7 - v25);
    v58.origin.x = v8;
    v58.origin.y = v10;
    v58.size.width = v12;
    v58.size.height = v14;
    MaxY = CGRectGetMaxY(v58);
    CGPathAddLineToPoint(Mutable, 0, v24, MaxY);
    v59.origin.x = v8;
    v59.origin.y = v10;
    v59.size.width = v12;
    v59.size.height = v14;
    MinX = CGRectGetMinX(v59);
    v60.origin.x = v8;
    v60.origin.y = v10;
    v60.size.width = v12;
    v60.size.height = v14;
    MidY = CGRectGetMidY(v60);
    CGPathAddLineToPoint(Mutable, 0, MinX, MidY);
    CGPathAddLineToPoint(Mutable, 0, v24, 0.0);
    CGPathAddLineToPoint(Mutable, 0, v24, v26);
    v42 = v5 - v24;
    CGPathAddLineToPoint(Mutable, 0, v42, v26);
    CGPathAddLineToPoint(Mutable, 0, v42, 0.0);
    v61.origin.x = v8;
    v61.origin.y = v10;
    v61.size.width = v12;
    v61.size.height = v14;
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = v8;
    v62.origin.y = v10;
    v62.size.width = v12;
    v62.size.height = v14;
    v44 = CGRectGetMidY(v62);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v44);
    v63.origin.x = v8;
    v63.origin.y = v10;
    v63.size.width = v12;
    v63.size.height = v14;
    v45 = CGRectGetMaxY(v63);
    CGPathAddLineToPoint(Mutable, 0, v42, v45);
    CGPathAddLineToPoint(Mutable, 0, v42, v47);
    v38 = vabdd_f64(v26, v47);
  }

  else
  {
    if (v27 == 1)
    {
      v28 = v7 - v25;
      CGPathMoveToPoint(Mutable, 0, v24, v7 - v25);
      v53.origin.x = v8;
      v53.origin.y = v10;
      v53.size.width = v12;
      v53.size.height = v14;
      v34 = CGRectGetMaxY(v53);
      CGPathAddLineToPoint(Mutable, 0, v24, v34);
      v54.origin.x = v8;
      v54.origin.y = v10;
      v54.size.width = v12;
      v54.size.height = v14;
      v35 = CGRectGetMaxX(v54);
      v55.origin.x = v8;
      v55.origin.y = v10;
      v55.size.width = v12;
      v55.size.height = v14;
      v36 = CGRectGetMidY(v55);
      CGPathAddLineToPoint(Mutable, 0, v35, v36);
      CGPathAddLineToPoint(Mutable, 0, v24, 0.0);
      CGPathAddLineToPoint(Mutable, 0, v24, v26);
      v56.origin.x = v8;
      v56.origin.y = v10;
      v56.size.width = v12;
      v56.size.height = v14;
      v37 = CGRectGetMinX(v56);
      CGPathAddLineToPoint(Mutable, 0, v37, v26);
      v57.origin.x = v8;
      v57.origin.y = v10;
      v57.size.width = v12;
      v57.size.height = v14;
      v33 = CGRectGetMinX(v57);
    }

    else
    {
      if (v27)
      {
        return Mutable;
      }

      v28 = v7 - v25;
      CGPathMoveToPoint(Mutable, 0, v24, v7 - v25);
      v48.origin.x = v8;
      v48.origin.y = v10;
      v48.size.width = v12;
      v48.size.height = v14;
      v29 = CGRectGetMaxY(v48);
      CGPathAddLineToPoint(Mutable, 0, v24, v29);
      v49.origin.x = v8;
      v49.origin.y = v10;
      v49.size.width = v12;
      v49.size.height = v14;
      v30 = CGRectGetMinX(v49);
      v50.origin.x = v8;
      v50.origin.y = v10;
      v50.size.width = v12;
      v50.size.height = v14;
      v31 = CGRectGetMidY(v50);
      CGPathAddLineToPoint(Mutable, 0, v30, v31);
      CGPathAddLineToPoint(Mutable, 0, v24, 0.0);
      CGPathAddLineToPoint(Mutable, 0, v24, v26);
      v51.origin.x = v8;
      v51.origin.y = v10;
      v51.size.width = v12;
      v51.size.height = v14;
      v32 = CGRectGetMaxX(v51);
      CGPathAddLineToPoint(Mutable, 0, v32, v26);
      v52.origin.x = v8;
      v52.origin.y = v10;
      v52.size.width = v12;
      v52.size.height = v14;
      v33 = CGRectGetMaxX(v52);
    }

    CGPathAddLineToPoint(Mutable, 0, v33, v28);
    v38 = vabdd_f64(v26, v28);
  }

  if (v38 > 0.01)
  {
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newStarPath
{
  Mutable = CGPathCreateMutable();
  [(CRLPointPathSource *)self point];
  v5 = fmax(v4, 3.0);
  [(CRLPointPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  v10 = v6 * 0.5;
  v11 = 2 * v5;
  [(CRLPointPathSource *)self point];
  v13 = v12;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeScale(&m, 1.0, v9 / v7);
  v18 = m;
  CGAffineTransformTranslate(&v19, &v18, v7 * 0.5, v7 * 0.5);
  m = v19;
  if (v11)
  {
    v14 = 0;
    v15 = v13 * v10;
    while (1)
    {
      v19.a = 0.0;
      v19.b = 0.0;
      v16 = 6.28318531 / v11 * v14 + -1.57079633;
      if (v14)
      {
        break;
      }

      sub_100120F28(&v19.a, v7 * 0.5, v16);
      if (v14)
      {
        goto LABEL_7;
      }

      CGPathMoveToPoint(Mutable, &m, v19.a, v19.b);
LABEL_8:
      if (v11 == ++v14)
      {
        goto LABEL_9;
      }
    }

    sub_100120F28(&v19.a, v15, v16);
LABEL_7:
    CGPathAddLineToPoint(Mutable, &m, v19.a, v19.b);
    goto LABEL_8;
  }

LABEL_9:
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newPlusPath
{
  Mutable = CGPathCreateMutable();
  [(CRLPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  [(CRLPointPathSource *)self point];
  v9 = v8;
  v11 = sub_1004C3240((v5 - v10) * 0.5, 0.0, v5);
  v12 = sub_1004C3240((v7 - v9) * 0.5, 0.0, v7);
  CGPathMoveToPoint(Mutable, 0, v11, 0.0);
  CGPathAddLineToPoint(Mutable, 0, v5 - v11, 0.0);
  CGPathAddLineToPoint(Mutable, 0, v5 - v11, v12);
  CGPathAddLineToPoint(Mutable, 0, v5, v12);
  CGPathAddLineToPoint(Mutable, 0, v5, v7 - v12);
  CGPathAddLineToPoint(Mutable, 0, v5 - v11, v7 - v12);
  CGPathAddLineToPoint(Mutable, 0, v5 - v11, v7);
  CGPathAddLineToPoint(Mutable, 0, v11, v7);
  CGPathAddLineToPoint(Mutable, 0, v11, v7 - v12);
  CGPathAddLineToPoint(Mutable, 0, 0.0, v7 - v12);
  CGPathAddLineToPoint(Mutable, 0, 0.0, v12);
  CGPathAddLineToPoint(Mutable, 0, v11, v12);
  CGPathAddLineToPoint(Mutable, 0, v11, 0.0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (id)p_innerRadiusLocalizedPercent
{
  v3 = [NSNumber alloc];
  [(CRLPointPathSource *)self point];
  v5 = [v3 initWithDouble:v4];
  v6 = +[CRLPointPathSource p_percentageNumberFormatter];
  v7 = [v6 stringFromNumber:v5];

  return v7;
}

- (void)p_setControlKnobPointForArrow:(CGPoint)arrow
{
  y = arrow.y;
  x = arrow.x;
  [(CRLPointPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  v10 = v6 * 0.5;
  if (self->mType == 10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = sub_1004C3240(x, 0.0, v11);
  if ([(CRLPointPathSource *)self p_isRightFacingArrow])
  {
    v12 = v7 - v12;
  }

  v13 = sub_1004C3240(y / v9, 0.0, 0.5);
  self->mPoint.x = v12;
  self->mPoint.y = v13;
}

- (CGPoint)p_getControlKnobPointForArrow
{
  [(CRLPointPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  p_isRightFacingArrow = [(CRLPointPathSource *)self p_isRightFacingArrow];
  x = self->mPoint.x;
  if (p_isRightFacingArrow)
  {
    x = v4 - x;
  }

  v9 = v6 * self->mPoint.y;
  v10 = sub_1004C3240(x, 0.0, v4);
  v11 = sub_1004C3240(v9, 0.0, v6);
  v12 = v10;
  result.y = v11;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForStarPoints:(CGPoint)points
{
  y = points.y;
  x = points.x;
  [(CRLPointPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v11 = v9 - y;
  if (!hasVerticalFlip)
  {
    v11 = y;
  }

  v12 = x - v7 * 0.5;
  v13 = v7 / v9 * (v11 - v9 * 0.5);
  v14 = sub_100120074(v12, v13);
  v15 = acos(-v12 / v14);
  if (v13 > 0.0)
  {
    v15 = 6.28318531 - v15;
  }

  v16 = v15 / 6.28318531 + -0.25;
  if (v16 < 0.0)
  {
    v16 = v16 + 1.0;
  }

  v17 = (v16 * 18.0 + 3.5);
  if (v17 > 0x14)
  {
    v17 = 3;
  }

  v18 = self->mPoint.x;
  if ((v18 != 3 || v17 == 4) && (v18 != 20 || v17 == 19))
  {
    self->mPoint.x = v17;
  }
}

- (CGPoint)p_getControlKnobPointForStarPoints
{
  v3 = fmax(self->mPoint.x, 3.0);
  [(CRLPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  v8 = v4 * 0.5;
  v12 = 0.0;
  v13 = 0.0;
  sub_100120F28(&v12, v4 * 0.5 * 0.7, (((v3 - 3) / 18.0) + -0.25) * 6.28318531);
  v12 = v8 + v12;
  v13 = v7 * 0.5 + v7 / v5 * v13;
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v10 = v12;
  v11 = v13;
  if (hasVerticalFlip)
  {
    v11 = v7 - v13;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)radius
{
  y = radius.y;
  x = radius.x;
  [(CRLPointPathSource *)self naturalSize];
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

  v11 = sub_100120074(x - v7 * 0.5, v7 / v9 * (v10 - v9 * 0.5));
  p_mPoint = &self->mPoint;
  v13 = p_mPoint->x;
  v14 = sub_1004C3240(v11 / (v7 * 0.5), 0.1, 1.0);
  p_mPoint->x = v13;
  p_mPoint->y = v14;
}

- (CGPoint)p_getControlKnobPointForStarInnerRadius
{
  p_mPoint = &self->mPoint;
  v4 = fmax(self->mPoint.x, 3.0);
  [(CRLPointPathSource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  v9 = v5 * 0.5;
  v10 = p_mPoint->y * (v5 * 0.5);
  v14 = 0.0;
  v15 = 0.0;
  sub_100120F28(&v14, v10, 3.14159265 / v4 + -1.57079633);
  v14 = v9 + v14;
  v15 = v8 * 0.5 + v8 / v6 * v15;
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v12 = v14;
  v13 = v15;
  if (hasVerticalFlip)
  {
    v13 = v8 - v15;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForPlus:(CGPoint)plus
{
  y = plus.y;
  x = plus.x;
  [(CRLPointPathSource *)self naturalSize];
  v7 = v6;
  v8 = v6 - y * 2.0;
  v10 = sub_1004C3240(v9 - x * 2.0, 0.0, v9 * 0.5);
  v11 = sub_1004C3240(v8, 0.0, v7 * 0.5);
  self->mPoint.x = v10;
  self->mPoint.y = v11;
}

- (CGPoint)p_getControlKnobPointForPlus
{
  [(CRLPointPathSource *)self naturalSize];
  v4 = (v3 - self->mPoint.x) * 0.5;
  v6 = (v5 - self->mPoint.y) * 0.5;
  result.y = v6;
  result.x = v4;
  return result;
}

- (BOOL)p_isRightFacingArrow
{
  if (self->mType == 1)
  {
    return ![(CRLPathSource *)self hasHorizontalFlip:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)p_isFlippedDoubleArrow
{
  if (self->mType == 10)
  {
    return [(CRLPathSource *)self hasHorizontalFlip];
  }

  else
  {
    return 0;
  }
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (![userDefinedName length])
  {
    inferredAccessibilityDescription = [(CRLPointPathSource *)self inferredAccessibilityDescription];

    userDefinedName = inferredAccessibilityDescription;
  }

  return userDefinedName;
}

- (id)inferredAccessibilityDescription
{
  type = [(CRLPointPathSource *)self type];
  v3 = 0;
  if (type > 99)
  {
    if (type == 100)
    {
      v4 = @"Star";
    }

    else
    {
      if (type != 200)
      {
        goto LABEL_11;
      }

      v4 = @"Plus";
    }
  }

  else if (type >= 2)
  {
    if (type != 10)
    {
      goto LABEL_11;
    }

    v4 = @"Double arrow";
  }

  else
  {
    v4 = @"Arrow";
  }

  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:v4 value:0 table:0];

LABEL_11:

  return v3;
}

- (id)inferredLocalizedAccessibilityDescriptionPlaceholder
{
  type = [(CRLPointPathSource *)self type];
  v3 = 0;
  if (type > 99)
  {
    if (type == 100)
    {
      v4 = @"Describe the selected star.";
    }

    else
    {
      if (type != 200)
      {
        goto LABEL_11;
      }

      v4 = @"Describe the selected plus.";
    }
  }

  else if (type >= 2)
  {
    if (type != 10)
    {
      goto LABEL_11;
    }

    v4 = @"Describe the selected double arrow.";
  }

  else
  {
    v4 = @"Describe the selected arrow.";
  }

  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:v4 value:0 table:0];

LABEL_11:

  return v3;
}

- (id)crlaxLabelComponentForKnobTag:(unint64_t)tag
{
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    v5 = @"Tail length and width";
LABEL_4:
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:0 table:0];

    goto LABEL_10;
  }

  if (type == 100)
  {
    if (tag == 12)
    {
      v5 = @"Points";
      goto LABEL_4;
    }

    if (tag == 13)
    {
      v5 = @"Inner radius";
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)crlaxValueForKnobTag:(unint64_t)tag
{
  if ([(CRLPointPathSource *)self type]!= 100)
  {
LABEL_5:
    p_innerRadiusLocalizedPercent = 0;
    goto LABEL_6;
  }

  if (tag != 13)
  {
    if (tag == 12)
    {
      [(CRLPointPathSource *)self point];
      p_innerRadiusLocalizedPercent = [NSString stringWithFormat:@"%d", v5];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  p_innerRadiusLocalizedPercent = [(CRLPointPathSource *)self p_innerRadiusLocalizedPercent];
LABEL_6:

  return p_innerRadiusLocalizedPercent;
}

- (id)crlaxUserInputLabelForKnobTag:(unint64_t)tag
{
  v4 = [(CRLPointPathSource *)self crlaxLabelComponentForKnobTag:tag];
  type = [(CRLPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Tail" value:0 table:0];

    v4 = v7;
  }

  return v4;
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
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