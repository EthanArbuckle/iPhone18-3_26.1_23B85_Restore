@interface CoreColor
+ (id)blackColorWithSystem:(unsigned __int8)system;
+ (id)colorWithSystem:(unsigned __int8)system cgColor:(CGColor *)color;
+ (id)systemBlueColorWithSystem:(unsigned __int8)system;
+ (id)systemBrownColorWithSystem:(unsigned __int8)system;
+ (id)systemCyanColorWithSystem:(unsigned __int8)system;
+ (id)systemGrayColorWithSystem:(unsigned __int8)system;
+ (id)systemGreenColorWithSystem:(unsigned __int8)system;
+ (id)systemIndigoColorWithSystem:(unsigned __int8)system;
+ (id)systemMintColorWithSystem:(unsigned __int8)system;
+ (id)systemOrangeColorWithSystem:(unsigned __int8)system;
+ (id)systemPinkColorWithSystem:(unsigned __int8)system;
+ (id)systemPurpleColorWithSystem:(unsigned __int8)system;
+ (id)systemRedColorWithSystem:(unsigned __int8)system;
+ (id)systemTealColorWithSystem:(unsigned __int8)system;
+ (id)systemYellowColorWithSystem:(unsigned __int8)system;
- (CoreColor)colorWithAlphaComponent:(double)component;
- (CoreColor)initWithCGColor:(CGColor *)color;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation CoreColor

+ (id)colorWithSystem:(unsigned __int8)system cgColor:(CGColor *)color
{
  v6 = CoreColorClass(system);
  if (v6)
  {

    return [v6 colorWithCGColor:color];
  }

  else
  {
    v8 = [[self alloc] initWithCGColor:color];

    return v8;
  }
}

+ (id)blackColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 blackColor];
}

+ (id)systemRedColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemRedColor];
}

+ (id)systemOrangeColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemOrangeColor];
}

+ (id)systemYellowColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemYellowColor];
}

+ (id)systemGreenColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemGreenColor];
}

+ (id)systemTealColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemTealColor];
}

+ (id)systemMintColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemMintColor];
}

+ (id)systemCyanColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemCyanColor];
}

+ (id)systemBlueColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemBlueColor];
}

+ (id)systemIndigoColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemIndigoColor];
}

+ (id)systemPurpleColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemPurpleColor];
}

+ (id)systemPinkColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemPinkColor];
}

+ (id)systemBrownColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemBrownColor];
}

+ (id)systemGrayColorWithSystem:(unsigned __int8)system
{
  v3 = CoreColorClass(system);

  return [v3 systemGrayColor];
}

- (CoreColor)initWithCGColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = CoreColor;
  v4 = [(CoreColor *)&v6 init];
  if (v4)
  {
    v4->_color = CGColorRetain(color);
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
  cGContext = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (cGContext)
  {
    v4 = cGContext;
    CGContextSetFillColorWithColor(cGContext, [(CoreColor *)self CGColor]);
    cGColor = [(CoreColor *)self CGColor];

    CGContextSetStrokeColorWithColor(v4, cGColor);
  }
}

- (void)setFill
{
  cGContext = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (cGContext)
  {
    v4 = cGContext;
    cGColor = [(CoreColor *)self CGColor];

    CGContextSetFillColorWithColor(v4, cGColor);
  }
}

- (void)setStroke
{
  cGContext = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (cGContext)
  {
    v4 = cGContext;
    cGColor = [(CoreColor *)self CGColor];

    CGContextSetStrokeColorWithColor(v4, cGColor);
  }
}

- (CoreColor)colorWithAlphaComponent:(double)component
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->_color, component);
  v4 = [CoreColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);
  return v4;
}

@end