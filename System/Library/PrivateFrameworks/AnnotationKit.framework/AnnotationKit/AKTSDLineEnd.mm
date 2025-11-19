@interface AKTSDLineEnd
+ (AKTSDLineEnd)lineEndWithIdentifier:(id)a3;
+ (AKTSDLineEnd)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6;
+ (AKTSDLineEnd)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7;
+ (AKTSDLineEnd)lineEndWithType:(int)a3;
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
- (AKTSDLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CGPath)wrapPath;
- (CGPoint)endPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AKTSDLineEnd

+ (id)simpleArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathCloseSubpath(Mutable);
  v3 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"simple arrow" identifier:3.0, 0.0];
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
  v8 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled circle" identifier:MidX, CGRectGetMinY(v15)];
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
  v3 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled diamond" identifier:3.0, 0.331400007];
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
  v3 = [[AKTSDLineEnd alloc] initWithPath:Mutable wrapPath:0 endPoint:0 isFilled:@"open arrow" identifier:1 lineJoin:3.0, 0.0];
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
  v3 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled arrow" identifier:3.0, 1.5];
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
  v8 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled square" identifier:MidX, CGRectGetMinY(v15)];
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
  v8 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open square" identifier:MidX, CGRectGetMinY(v15) + -0.800000012];
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
  v8 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open circle" identifier:MidX, CGRectGetMinY(v15) + -0.800000012];
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
  v3 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"inverted arrow" identifier:3.0, 0.331400007];
  CGPathRelease(Mutable);

  return v3;
}

+ (id)line
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  v3 = [AKTSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"line" identifier:3.0, -0.800000012];
  CGPathRelease(Mutable);

  return v3;
}

+ (AKTSDLineEnd)lineEndWithType:(int)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v3 = +[AKTSDLineEnd filledCircle];
        }
      }

      else
      {
        v3 = +[AKTSDLineEnd simpleArrow];
      }
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          +[AKTSDLineEnd openArrow];
        }

        else
        {
          +[AKTSDLineEnd filledArrow];
        }

        goto LABEL_6;
      }

      v3 = +[AKTSDLineEnd filledDiamond];
    }
  }

  else if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v3 = +[AKTSDLineEnd invertedArrow];
        break;
      case 9:
        v3 = +[AKTSDLineEnd line];
        break;
      case 10:
        v3 = +[AKTSDLineEnd none];
        break;
    }
  }

  else
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        +[AKTSDLineEnd openSquare];
      }

      else
      {
        +[AKTSDLineEnd openCircle];
      }

      v3 = LABEL_6:;
      goto LABEL_25;
    }

    v3 = +[AKTSDLineEnd filledSquare];
  }

LABEL_25:

  return v3;
}

+ (AKTSDLineEnd)lineEndWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"simple arrow"])
  {
    v4 = +[AKTSDLineEnd simpleArrow];
LABEL_23:
    v5 = v4;
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"filled circle"])
  {
    v4 = +[AKTSDLineEnd filledCircle];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled diamond"])
  {
    v4 = +[AKTSDLineEnd filledDiamond];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open arrow"])
  {
    v4 = +[AKTSDLineEnd openArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled arrow"])
  {
    v4 = +[AKTSDLineEnd filledArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"filled square"])
  {
    v4 = +[AKTSDLineEnd filledSquare];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open square"])
  {
    v4 = +[AKTSDLineEnd openSquare];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"open circle"])
  {
    v4 = +[AKTSDLineEnd openCircle];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"inverted arrow"])
  {
    v4 = +[AKTSDLineEnd invertedArrow];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"line"])
  {
    v4 = +[AKTSDLineEnd line];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"none"])
  {
    v4 = +[AKTSDLineEnd none];
    goto LABEL_23;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

+ (AKTSDLineEnd)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithPath:a3 endPoint:v6 isFilled:v10 identifier:{x, y}];

  return v11;
}

+ (AKTSDLineEnd)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7
{
  v7 = a6;
  y = a5.y;
  x = a5.x;
  v12 = a7;
  v13 = [objc_alloc(objc_opt_class()) initWithPath:a3 wrapPath:a4 endPoint:v7 isFilled:v12 identifier:0 lineJoin:{x, y}];

  return v13;
}

- (AKTSDLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8
{
  y = a5.y;
  x = a5.x;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = AKTSDLineEnd;
  v16 = [(AKTSDLineEnd *)&v20 init];
  if (v16)
  {
    v17 = [v15 copy];
    mIdentifier = v16->mIdentifier;
    v16->mIdentifier = v17;

    v16->mLineJoin = a8;
    v16->mPath = CGPathCreateMutableCopy(a3);
    v16->mWrapPath = CGPathCreateMutableCopy(a4);
    v16->mEndPoint.x = x;
    v16->mEndPoint.y = y;
    v16->mIsFilled = a6;
  }

  return v16;
}

- (void)dealloc
{
  CGPathRelease(self->mPath);
  CGPathRelease(self->mWrapPath);
  v3.receiver = self;
  v3.super_class = AKTSDLineEnd;
  [(AKTSDLineEnd *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(AKTSDLineEnd *)v4 isMemberOfClass:objc_opt_class()])
  {
    mIdentifier = self->mIdentifier;
    v6 = v4;
    v7 = [(AKTSDLineEnd *)v6 identifier];
    v8 = [(NSString *)mIdentifier isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mPath = self->mPath;
  mWrapPath = self->mWrapPath;
  mIsFilled = self->mIsFilled;
  mIdentifier = self->mIdentifier;
  mLineJoin = self->mLineJoin;
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;

  return [v4 initWithPath:mPath wrapPath:mWrapPath endPoint:mIsFilled isFilled:mIdentifier identifier:mLineJoin lineJoin:{x, y}];
}

- (CGPath)wrapPath
{
  result = self->mWrapPath;
  if (!result)
  {
    return self->mPath;
  }

  return result;
}

- (BOOL)isNone
{
  v2 = [(AKTSDLineEnd *)self identifier];
  v3 = [v2 isEqualToString:@"none"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AKTSDLineEnd *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v5, self, v6];

  return v7;
}

- (CGPoint)endPoint
{
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end