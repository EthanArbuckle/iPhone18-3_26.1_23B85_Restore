@interface CRLColorFill
+ (CRLColorFill)blackColor;
+ (CRLColorFill)blueColor;
+ (CRLColorFill)brownColor;
+ (CRLColorFill)clearColor;
+ (CRLColorFill)cyanColor;
+ (CRLColorFill)grayColor;
+ (CRLColorFill)greenColor;
+ (CRLColorFill)magentaColor;
+ (CRLColorFill)orangeColor;
+ (CRLColorFill)purpleColor;
+ (CRLColorFill)randomColor;
+ (CRLColorFill)redColor;
+ (CRLColorFill)whiteColor;
+ (CRLColorFill)yellowColor;
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithColor:(id)color;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithUIColor:(id)color;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNearlyWhite;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGColor)CGColor;
- (CRLColorFill)initWithCGColor:(CGColor *)color;
- (CRLColorFill)initWithColor:(id)color;
- (CRLColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (CRLColorFill)initWithUIColor:(id)color;
- (CRLColorFill)initWithWhite:(double)white alpha:(double)alpha;
- (UIColor)UIColor;
- (double)luminance;
- (double)opacity;
- (double)p_hsbComponentWithIndex:(unint64_t)index;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyToRenderable:(id)renderable withScale:(double)scale;
- (void)i_setColor:(id)color;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation CRLColorFill

+ (id)colorWithColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithColor:colorCopy];

  return v5;
}

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (id)colorWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithUIColor:colorCopy];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableColorFill alloc];
  color = [(CRLColorFill *)self color];
  v6 = [(CRLColorFill *)v4 initWithColor:color];

  return v6;
}

+ (CRLColorFill)randomColor
{
  v2 = sub_1000CCF18();
  v3 = [CRLColorFill colorWithCGColor:v2];
  CGColorRelease(v2);

  return v3;
}

+ (CRLColorFill)clearColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor clearColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)blackColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor blackColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)whiteColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor whiteColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)grayColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor grayColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)redColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor redColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)greenColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor greenColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)blueColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor blueColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)cyanColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor cyanColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)yellowColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor yellowColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)magentaColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor magentaColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)orangeColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor orangeColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)purpleColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor purpleColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (CRLColorFill)brownColor
{
  v2 = [CRLColorFill alloc];
  v3 = +[CRLColor brownColor];
  v4 = [(CRLColorFill *)v2 initWithColor:v3];

  return v4;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v6 = [CRLColor objectWithItemProviderData:data typeIdentifier:identifier error:error];
  if (v6)
  {
    v7 = [[self alloc] initWithColor:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CRLColorFill)initWithColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013629EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362A00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362A94();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLColorFill initWithColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLColorFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:145 isFatal:0 description:"invalid nil value for color"];
  }

  v12.receiver = self;
  v12.super_class = CRLColorFill;
  v8 = [(CRLColorFill *)&v12 init];
  if (v8)
  {
    v9 = [colorCopy copy];
    color = v8->_color;
    v8->_color = v9;
  }

  return v8;
}

- (CRLColorFill)initWithCGColor:(CGColor *)color
{
  v4 = [CRLColor colorWithCGColor:color];
  v5 = [(CRLColorFill *)self initWithColor:v4];

  return v5;
}

- (CRLColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v7 = [CRLColor colorWithRed:red green:green blue:blue alpha:alpha];
  v8 = [(CRLColorFill *)self initWithColor:v7];

  return v8;
}

- (CRLColorFill)initWithWhite:(double)white alpha:(double)alpha
{
  v5 = [CRLColor colorWithWhite:white alpha:alpha];
  v6 = [(CRLColorFill *)self initWithColor:v5];

  return v6;
}

- (CRLColorFill)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101362ABC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362AD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362B80();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLColorFill initWithUIColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLColorFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:170 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];
  }

  v8 = [CRLColor colorWithUIColor:colorCopy];
  v9 = [(CRLColorFill *)self initWithColor:v8];

  return v9;
}

- (void)i_setColor:(id)color
{
  v4 = [color copy];
  color = self->_color;
  self->_color = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);
    if (v6)
    {
      v7 = v6;
      color = [(CRLColorFill *)self color];
      color2 = [v7 color];
      v10 = [color isEqual:color2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (UIColor)UIColor
{
  color = [(CRLColorFill *)self color];
  uIColor = [color UIColor];

  return uIColor;
}

- (id)grayscaleColor
{
  color = [(CRLColorFill *)self color];
  grayscaleColor = [color grayscaleColor];
  v4 = [CRLColorFill colorWithColor:grayscaleColor];

  return v4;
}

- (id)invertedColor
{
  color = [(CRLColorFill *)self color];
  invertedColor = [color invertedColor];
  v4 = [CRLColorFill colorWithColor:invertedColor];

  return v4;
}

- (BOOL)isNearlyWhite
{
  color = [(CRLColorFill *)self color];
  isNearlyWhite = [color isNearlyWhite];

  return isNearlyWhite;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
{
  color = [(CRLColorFill *)self color];
  LOBYTE(appearance) = [color requiresOutlineOnBackgroundWithAppearance:appearance];

  return appearance;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  color = [(CRLColorFill *)self color];
  [color paintRect:context inContext:{x, y, width, height}];
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  color = [(CRLColorFill *)self color];
  [color paintPath:path inContext:context];
}

- (void)applyToRenderable:(id)renderable withScale:(double)scale
{
  renderableCopy = renderable;
  if (![(CRLColorFill *)self canApplyToRenderable])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101362BA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362BBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362C50();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLColorFill applyToRenderable:withScale:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLColorFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:259 isFatal:0 description:"Applying color fill with unsupported properties to CRLCanvasRenderable"];
  }

  [renderableCopy setContents:0];
  isClear = [(CRLColorFill *)self isClear];
  cGColor = 0;
  if ((isClear & 1) == 0)
  {
    cGColor = [(CRLColorFill *)self CGColor];
  }

  [renderableCopy setBackgroundColor:cGColor];
}

- (double)p_hsbComponentWithIndex:(unint64_t)index
{
  v4 = [(CRLColorFill *)self color:0];
  uIColor = [v4 UIColor];
  [uIColor getHue:&v7 saturation:&v7 + 8 brightness:&v8 alpha:&v8 + 8];

  return *(&v7 + index);
}

- (CGColor)CGColor
{
  color = [(CRLColorFill *)self color];
  cGColor = [color CGColor];

  return cGColor;
}

- (double)opacity
{
  color = [(CRLColorFill *)self color];
  [color alphaComponent];
  v4 = v3;

  return v4;
}

- (double)luminance
{
  Components = CGColorGetComponents([(CRLColorFill *)self CGColor]);
  result = fmax(Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3], 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

@end