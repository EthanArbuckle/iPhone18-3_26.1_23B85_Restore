@interface CoreColor
+ (id)blackColorWithSystem:(unsigned __int8)a3;
+ (id)colorWithSystem:(unsigned __int8)a3 cgColor:(CGColor *)a4;
+ (id)systemBlueColorWithSystem:(unsigned __int8)a3;
+ (id)systemBrownColorWithSystem:(unsigned __int8)a3;
+ (id)systemCyanColorWithSystem:(unsigned __int8)a3;
+ (id)systemGrayColorWithSystem:(unsigned __int8)a3;
+ (id)systemGreenColorWithSystem:(unsigned __int8)a3;
+ (id)systemIndigoColorWithSystem:(unsigned __int8)a3;
+ (id)systemMintColorWithSystem:(unsigned __int8)a3;
+ (id)systemOrangeColorWithSystem:(unsigned __int8)a3;
+ (id)systemPinkColorWithSystem:(unsigned __int8)a3;
+ (id)systemPurpleColorWithSystem:(unsigned __int8)a3;
+ (id)systemRedColorWithSystem:(unsigned __int8)a3;
+ (id)systemTealColorWithSystem:(unsigned __int8)a3;
+ (id)systemYellowColorWithSystem:(unsigned __int8)a3;
- (CoreColor)colorWithAlphaComponent:(double)a3;
- (CoreColor)initWithCGColor:(CGColor *)a3;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation CoreColor

+ (id)colorWithSystem:(unsigned __int8)a3 cgColor:(CGColor *)a4
{
  v6 = CoreColorClass(a3);
  if (v6)
  {

    return [v6 colorWithCGColor:a4];
  }

  else
  {
    v8 = [[a1 alloc] initWithCGColor:a4];

    return v8;
  }
}

+ (id)blackColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 blackColor];
}

+ (id)systemRedColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemRedColor];
}

+ (id)systemOrangeColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemOrangeColor];
}

+ (id)systemYellowColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemYellowColor];
}

+ (id)systemGreenColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemGreenColor];
}

+ (id)systemTealColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemTealColor];
}

+ (id)systemMintColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemMintColor];
}

+ (id)systemCyanColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemCyanColor];
}

+ (id)systemBlueColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemBlueColor];
}

+ (id)systemIndigoColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemIndigoColor];
}

+ (id)systemPurpleColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemPurpleColor];
}

+ (id)systemPinkColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemPinkColor];
}

+ (id)systemBrownColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemBrownColor];
}

+ (id)systemGrayColorWithSystem:(unsigned __int8)a3
{
  v3 = CoreColorClass(a3);

  return [v3 systemGrayColor];
}

- (CoreColor)initWithCGColor:(CGColor *)a3
{
  v6.receiver = self;
  v6.super_class = CoreColor;
  v4 = [(CoreColor *)&v6 init];
  if (v4)
  {
    v4->_color = CGColorRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = CoreColor;
  [(CoreColor *)&v3 dealloc];
}

- (void)set
{
  v3 = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (v3)
  {
    v4 = v3;
    CGContextSetFillColorWithColor(v3, [(CoreColor *)self CGColor]);
    v5 = [(CoreColor *)self CGColor];

    CGContextSetStrokeColorWithColor(v4, v5);
  }
}

- (void)setFill
{
  v3 = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (v3)
  {
    v4 = v3;
    v5 = [(CoreColor *)self CGColor];

    CGContextSetFillColorWithColor(v4, v5);
  }
}

- (void)setStroke
{
  v3 = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (v3)
  {
    v4 = v3;
    v5 = [(CoreColor *)self CGColor];

    CGContextSetStrokeColorWithColor(v4, v5);
  }
}

- (CoreColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->_color, a3);
  v4 = [CoreColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);
  return v4;
}

@end