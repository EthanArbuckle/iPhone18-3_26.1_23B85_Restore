@interface CRLLineEnd
+ (CRLLineEnd)lineEndWithIdentifier:(id)a3;
+ (CRLLineEnd)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6;
+ (CRLLineEnd)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7;
+ (CRLLineEnd)lineEndWithType:(int64_t)a3;
+ (id)accessibilityDescriptionFor:(int64_t)a3;
+ (id)filledArrow;
+ (id)filledCircle;
+ (id)filledDiamond;
+ (id)filledSquare;
+ (id)invertedArrow;
+ (id)line;
+ (id)openArrow;
+ (id)openCircle;
+ (id)openSquare;
+ (id)simpleArrow;
+ (int64_t)lineEndTypeFromLineEnd:(id)a3;
- (BOOL)isArrow;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CGImage)newLineEndImageOnRight:(BOOL)a3 forContentsScale:(double)a4 withSize:(CGSize)a5;
- (CGPoint)endPoint;
- (CRLBezierPath)wrapPath;
- (CRLLineEnd)initWithBezierPath:(id)a3 wrapPath:(id)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8;
- (CRLLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8;
- (NSString)accessibilityDescription;
- (double)scaleForStrokeWidth:(double)result;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CRLLineEnd

- (CRLBezierPath)wrapPath
{
  wrapPath = self->_wrapPath;
  if (!wrapPath)
  {
    wrapPath = self->_path;
  }

  v4 = [(CRLBezierPath *)wrapPath copy];

  return v4;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)simpleArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathCloseSubpath(Mutable);
  v3 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"simple arrow" identifier:3.0, 0.0];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)filledCircle
{
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 6.0;
  v11.size.height = 6.0;
  v12 = CGRectInset(v11, 0.5, 0.5);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  Mutable = CGPathCreateMutable();
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled circle" identifier:MidX, CGRectGetMinY(v15)];
  CGPathRelease(Mutable);

  return v8;
}

+ (id)filledDiamond
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 3.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 3.0);
  CGPathCloseSubpath(Mutable);
  v3 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled diamond" identifier:3.0, 0.331400007];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)openArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 5.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathMoveToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 5.0);
  v3 = [[CRLLineEnd alloc] initWithPath:Mutable wrapPath:0 endPoint:0 isFilled:@"open arrow" identifier:1 lineJoin:3.0, 0.0];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)filledArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 1.5);
  CGPathCloseSubpath(Mutable);
  v3 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled arrow" identifier:3.0, 1.5];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)filledSquare
{
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 6.0;
  v11.size.height = 6.0;
  v12 = CGRectInset(v11, 0.5, 0.5);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  Mutable = CGPathCreateMutable();
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGPathAddRect(Mutable, 0, v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled square" identifier:MidX, CGRectGetMinY(v15)];
  CGPathRelease(Mutable);

  return v8;
}

+ (id)openSquare
{
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 6.0;
  v11.size.height = 6.0;
  v12 = CGRectInset(v11, 1.0, 1.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  Mutable = CGPathCreateMutable();
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGPathAddRect(Mutable, 0, v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = [CRLLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open square" identifier:MidX, CGRectGetMinY(v15) + -0.800000012];
  CGPathRelease(Mutable);

  return v8;
}

+ (id)openCircle
{
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 6.0;
  v11.size.height = 6.0;
  v12 = CGRectInset(v11, 0.5, 0.5);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  Mutable = CGPathCreateMutable();
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = [CRLLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open circle" identifier:MidX, CGRectGetMinY(v15) + -0.800000012];
  CGPathRelease(Mutable);

  return v8;
}

+ (id)invertedArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 3.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 3.0);
  CGPathCloseSubpath(Mutable);
  v3 = [CRLLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"inverted arrow" identifier:3.0, 0.331400007];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)line
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  v3 = [CRLLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"line" identifier:3.0, -0.800000012];
  CGPathRelease(Mutable);

  return v3;
}

+ (CRLLineEnd)lineEndWithType:(int64_t)a3
{
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        a1 = +[CRLLineEnd line];
        goto LABEL_35;
      }

      if (a3 == 10)
      {
        a1 = +[CRLLineEnd none];
        goto LABEL_35;
      }

      if (a3 != 11)
      {
        goto LABEL_35;
      }

      v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013927E0();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013927F4(v3, v4);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013928A0();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v5, v3);
      }

      v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLLineEnd lineEndWithType:]");
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLLineEnd.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:"Should not ask for line end with this type (count)"];

LABEL_27:
      a1 = +[CRLLineEnd simpleArrow];
      goto LABEL_35;
    }

    if (a3 == 6)
    {
      a1 = +[CRLLineEnd openSquare];
      goto LABEL_35;
    }

    if (a3 == 7)
    {
      +[CRLLineEnd openCircle];
    }

    else
    {
      +[CRLLineEnd invertedArrow];
    }

    a1 = LABEL_11:;
    goto LABEL_35;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      a1 = +[CRLLineEnd openArrow];
      goto LABEL_35;
    }

    if (a3 == 4)
    {
      +[CRLLineEnd filledArrow];
    }

    else
    {
      +[CRLLineEnd filledSquare];
    }

    goto LABEL_11;
  }

  switch(a3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      a1 = +[CRLLineEnd filledCircle];
      break;
    case 2:
      a1 = +[CRLLineEnd filledDiamond];
      break;
  }

LABEL_35:

  return a1;
}

+ (CRLLineEnd)lineEndWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"simple arrow"])
  {
    v4 = +[CRLLineEnd simpleArrow];
LABEL_23:
    v5 = v4;
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"filled circle"])
  {
    v4 = +[CRLLineEnd filledCircle];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled diamond"])
  {
    v4 = +[CRLLineEnd filledDiamond];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open arrow"])
  {
    v4 = +[CRLLineEnd openArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled arrow"])
  {
    v4 = +[CRLLineEnd filledArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled square"])
  {
    v4 = +[CRLLineEnd filledSquare];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open square"])
  {
    v4 = +[CRLLineEnd openSquare];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open circle"])
  {
    v4 = +[CRLLineEnd openCircle];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"inverted arrow"])
  {
    v4 = +[CRLLineEnd invertedArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"line"])
  {
    v4 = +[CRLLineEnd line];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"none"])
  {
    v4 = +[CRLLineEnd none];
    goto LABEL_23;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

+ (int64_t)lineEndTypeFromLineEnd:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:@"simple arrow"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"filled circle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"filled diamond"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"open arrow"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"filled arrow"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"filled square"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"open square"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"open circle"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"inverted arrow"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"line"])
  {
    v4 = 9;
  }

  else
  {
    [v3 isEqualToString:@"none"];
    v4 = 10;
  }

  return v4;
}

- (NSString)accessibilityDescription
{
  v2 = [CRLLineEnd lineEndTypeFromLineEnd:self];

  return [CRLLineEnd accessibilityDescriptionFor:v2];
}

+ (id)accessibilityDescriptionFor:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_26;
        }

        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Filled circle";
      }

      else
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Simple arrow";
      }
    }

    else if (a3 == 2)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Filled diamond";
    }

    else if (a3 == 3)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Open arrow";
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Filled arrow";
    }
  }

  else if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Inverted arrow";
        break;
      case 9:
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Line";
        break;
      case 10:
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"NONE_ACCESSIBILITY_LABEL";
        v7 = @"None";
        goto LABEL_25;
      default:
        goto LABEL_26;
    }
  }

  else if (a3 == 5)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Filled square";
  }

  else if (a3 == 6)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Open square";
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Open circle";
  }

  v7 = 0;
LABEL_25:
  v3 = [v4 localizedStringForKey:v6 value:v7 table:0];

LABEL_26:

  return v3;
}

+ (CRLLineEnd)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithPath:a3 endPoint:v6 isFilled:v10 identifier:{x, y}];

  return v11;
}

+ (CRLLineEnd)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7
{
  v7 = a6;
  y = a5.y;
  x = a5.x;
  v12 = a7;
  v13 = [objc_alloc(objc_opt_class()) initWithPath:a3 wrapPath:a4 endPoint:v7 isFilled:v12 identifier:0 lineJoin:{x, y}];

  return v13;
}

- (CRLLineEnd)initWithBezierPath:(id)a3 wrapPath:(id)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8
{
  y = a5.y;
  x = a5.x;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = CRLLineEnd;
  v18 = [(CRLLineEnd *)&v26 init];
  if (v18)
  {
    v19 = [v17 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    v18->_lineJoin = a8;
    v21 = [v15 copy];
    path = v18->_path;
    v18->_path = v21;

    v23 = [v16 copy];
    wrapPath = v18->_wrapPath;
    v18->_wrapPath = v23;

    v18->_endPoint.x = x;
    v18->_endPoint.y = y;
    v18->_isFilled = a6;
  }

  return v18;
}

- (CRLLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8
{
  v8 = *&a8;
  v9 = a6;
  y = a5.y;
  x = a5.x;
  v15 = a7;
  if (a3)
  {
    a3 = [CRLBezierPath bezierPathWithCGPath:a3];
  }

  if (a4)
  {
    a4 = [CRLBezierPath bezierPathWithCGPath:a4];
  }

  v16 = [(CRLLineEnd *)self initWithBezierPath:a3 wrapPath:a4 endPoint:v9 isFilled:v15 identifier:v8 lineJoin:x, y];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
LABEL_10:
    v12 = 1;
    goto LABEL_16;
  }

  if (![(CRLLineEnd *)v4 isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    v5 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  if ([(NSString *)self->_identifier isEqualToString:@"none"])
  {
    v6 = [(CRLLineEnd *)v5 identifier];
    v7 = [v6 isEqualToString:@"none"];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  lineJoin = self->_lineJoin;
  if (lineJoin == [(CRLLineEnd *)v5 lineJoin])
  {
    identifier = self->_identifier;
    v10 = [(CRLLineEnd *)v5 identifier];
    if ([(NSString *)identifier isEqualToString:v10])
    {
      path = self->_path;
      if (path | v5->_path)
      {
        v12 = [(CRLBezierPath *)path isEqual:?];
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  path = self->_path;
  wrapPath = self->_wrapPath;
  isFilled = self->_isFilled;
  identifier = self->_identifier;
  lineJoin = self->_lineJoin;
  x = self->_endPoint.x;
  y = self->_endPoint.y;

  return [v4 initWithBezierPath:path wrapPath:wrapPath endPoint:isFilled isFilled:identifier identifier:lineJoin lineJoin:{x, y}];
}

- (CGImage)newLineEndImageOnRight:(BOOL)a3 forContentsScale:(double)a4 withSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v10 = sub_10050DF80(11, a5.width * a4, a5.height * a4);
  CGContextScaleCTM(v10, a4, a4);
  CGContextSetRGBFillColor(v10, 0.0, 0.0, 0.0, 1.0);
  CGContextSetRGBStrokeColor(v10, 0.0, 0.0, 0.0, 1.0);
  v11 = *&CGAffineTransformIdentity.a;
  v12 = *&CGAffineTransformIdentity.c;
  *&v32.a = *&CGAffineTransformIdentity.a;
  *&v32.c = v12;
  v13 = *&CGAffineTransformIdentity.tx;
  *&v32.tx = v13;
  v14 = -width;
  if (v8)
  {
    *&transform.a = v11;
    *&transform.c = v12;
    *&transform.tx = v13;
    CGAffineTransformScale(&v32, &transform, -1.0, 1.0);
    v30 = v32;
    CGAffineTransformTranslate(&transform, &v30, v14, 0.0);
    v32 = transform;
  }

  v30 = v32;
  CGAffineTransformTranslate(&transform, &v30, 3.0, 1.0);
  v32 = transform;
  if (![(CRLLineEnd *)self isFilled])
  {
    v30 = v32;
    CGAffineTransformTranslate(&transform, &v30, 0.5, 0.0);
    v32 = transform;
  }

  BoundingBox = CGPathGetBoundingBox([(CRLBezierPath *)self->_path CGPath]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  v17 = BoundingBox.size.width;
  v18 = BoundingBox.size.height;
  MaxX = 0.0;
  if (CGRectGetMinX(BoundingBox) < 0.0)
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v17;
    v34.size.height = v18;
    MaxX = CGRectGetMaxX(v34);
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = v17;
  v35.size.height = v18;
  MaxY = CGRectGetMaxY(v35);
  v30 = v32;
  CGAffineTransformTranslate(&transform, &v30, MaxY, MaxX);
  v32 = transform;
  v30 = transform;
  CGAffineTransformRotate(&transform, &v30, 1.57079633);
  v32 = transform;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v17;
  v36.size.height = v18;
  v21 = CGRectGetHeight(v36);
  v22 = 1.5;
  if (v21 * 1.5 > height)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = v17;
    v37.size.height = v18;
    v22 = height / (CGRectGetHeight(v37) * 1.5) * 1.5;
  }

  v30 = v32;
  CGAffineTransformScale(&transform, &v30, v22, v22);
  v32 = transform;
  CGContextConcatCTM(v10, &transform);
  CGContextSetLineJoin(v10, [(CRLLineEnd *)self lineJoin]);
  CGContextSetLineWidth(v10, 0.5);
  v23 = [(CRLLineEnd *)self path];
  CGContextAddPath(v10, [v23 CGPath]);

  if ([(CRLLineEnd *)self isFilled])
  {
    CGContextFillPath(v10);
  }

  else
  {
    CGContextStrokePath(v10);
  }

  [(CRLLineEnd *)self endPoint];
  v25 = v24;
  [(CRLLineEnd *)self endPoint];
  CGContextMoveToPoint(v10, v25, v26 + 1.0);
  [(CRLLineEnd *)self endPoint];
  CGContextAddLineToPoint(v10, v27, v14);
  CGContextStrokePath(v10);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

- (BOOL)isNone
{
  v2 = [(CRLLineEnd *)self identifier];
  v3 = [v2 isEqualToString:@"none"];

  return v3;
}

- (BOOL)isArrow
{
  v3 = [(CRLLineEnd *)self identifier];
  if ([v3 isEqualToString:@"simple arrow"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLLineEnd *)self identifier];
    if ([v5 isEqualToString:@"open arrow"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(CRLLineEnd *)self identifier];
      v4 = [v6 isEqualToString:@"filled arrow"];
    }
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLLineEnd *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@ %p %@>", v4, self, v5];

  return v6;
}

- (double)scaleForStrokeWidth:(double)result
{
  if (result > 1.0)
  {
    return (result + -1.0) * 0.6 + 1.0;
  }

  return result;
}

@end