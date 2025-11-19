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
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithColor:(id)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithUIColor:(id)a3;
+ (id)colorWithWhite:(double)a3 alpha:(double)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3;
- (CGColor)CGColor;
- (CRLColorFill)initWithCGColor:(CGColor *)a3;
- (CRLColorFill)initWithColor:(id)a3;
- (CRLColorFill)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (CRLColorFill)initWithUIColor:(id)a3;
- (CRLColorFill)initWithWhite:(double)a3 alpha:(double)a4;
- (UIColor)UIColor;
- (double)luminance;
- (double)opacity;
- (double)p_hsbComponentWithIndex:(unint64_t)a3;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)applyToRenderable:(id)a3 withScale:(double)a4;
- (void)i_setColor:(id)a3;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation CRLColorFill

+ (id)colorWithColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithColor:v4];

  return v5;
}

+ (id)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (id)colorWithUIColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUIColor:v4];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableColorFill alloc];
  v5 = [(CRLColorFill *)self color];
  v6 = [(CRLColorFill *)v4 initWithColor:v5];

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

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = [CRLColor objectWithItemProviderData:a3 typeIdentifier:a4 error:a5];
  if (v6)
  {
    v7 = [[a1 alloc] initWithColor:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CRLColorFill)initWithColor:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v9 = [v4 copy];
    color = v8->_color;
    v8->_color = v9;
  }

  return v8;
}

- (CRLColorFill)initWithCGColor:(CGColor *)a3
{
  v4 = [CRLColor colorWithCGColor:a3];
  v5 = [(CRLColorFill *)self initWithColor:v4];

  return v5;
}

- (CRLColorFill)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v7 = [CRLColor colorWithRed:a3 green:a4 blue:a5 alpha:a6];
  v8 = [(CRLColorFill *)self initWithColor:v7];

  return v8;
}

- (CRLColorFill)initWithWhite:(double)a3 alpha:(double)a4
{
  v5 = [CRLColor colorWithWhite:a3 alpha:a4];
  v6 = [(CRLColorFill *)self initWithColor:v5];

  return v6;
}

- (CRLColorFill)initWithUIColor:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v8 = [CRLColor colorWithUIColor:v4];
  v9 = [(CRLColorFill *)self initWithColor:v8];

  return v9;
}

- (void)i_setColor:(id)a3
{
  v4 = [a3 copy];
  color = self->_color;
  self->_color = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);
    if (v6)
    {
      v7 = v6;
      v8 = [(CRLColorFill *)self color];
      v9 = [v7 color];
      v10 = [v8 isEqual:v9];
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
  v2 = [(CRLColorFill *)self color];
  v3 = [v2 UIColor];

  return v3;
}

- (id)grayscaleColor
{
  v2 = [(CRLColorFill *)self color];
  v3 = [v2 grayscaleColor];
  v4 = [CRLColorFill colorWithColor:v3];

  return v4;
}

- (id)invertedColor
{
  v2 = [(CRLColorFill *)self color];
  v3 = [v2 invertedColor];
  v4 = [CRLColorFill colorWithColor:v3];

  return v4;
}

- (BOOL)isNearlyWhite
{
  v2 = [(CRLColorFill *)self color];
  v3 = [v2 isNearlyWhite];

  return v3;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3
{
  v4 = [(CRLColorFill *)self color];
  LOBYTE(a3) = [v4 requiresOutlineOnBackgroundWithAppearance:a3];

  return a3;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CRLColorFill *)self color];
  [v9 paintRect:a4 inContext:{x, y, width, height}];
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v6 = [(CRLColorFill *)self color];
  [v6 paintPath:a3 inContext:a4];
}

- (void)applyToRenderable:(id)a3 withScale:(double)a4
{
  v5 = a3;
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

  [v5 setContents:0];
  v9 = [(CRLColorFill *)self isClear];
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = [(CRLColorFill *)self CGColor];
  }

  [v5 setBackgroundColor:v10];
}

- (double)p_hsbComponentWithIndex:(unint64_t)a3
{
  v4 = [(CRLColorFill *)self color:0];
  v5 = [v4 UIColor];
  [v5 getHue:&v7 saturation:&v7 + 8 brightness:&v8 alpha:&v8 + 8];

  return *(&v7 + a3);
}

- (CGColor)CGColor
{
  v2 = [(CRLColorFill *)self color];
  v3 = [v2 CGColor];

  return v3;
}

- (double)opacity
{
  v2 = [(CRLColorFill *)self color];
  [v2 alphaComponent];
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