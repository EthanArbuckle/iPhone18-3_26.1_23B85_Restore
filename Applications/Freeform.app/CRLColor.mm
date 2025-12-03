@interface CRLColor
+ (CRLColor)blackColor;
+ (CRLColor)blueColor;
+ (CRLColor)brownColor;
+ (CRLColor)clearColor;
+ (CRLColor)colorWithCGColor:(CGColor *)color;
+ (CRLColor)colorWithHexString:(id)string;
+ (CRLColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (CRLColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
+ (CRLColor)colorWithPatternImage:(id)image;
+ (CRLColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (CRLColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space;
+ (CRLColor)colorWithUIColor:(id)color;
+ (CRLColor)colorWithWhite:(double)white alpha:(double)alpha;
+ (CRLColor)cyanColor;
+ (CRLColor)grayColor;
+ (CRLColor)greenColor;
+ (CRLColor)lightGrayColor;
+ (CRLColor)magentaColor;
+ (CRLColor)orangeColor;
+ (CRLColor)purpleColor;
+ (CRLColor)randomColor;
+ (CRLColor)redColor;
+ (CRLColor)whiteColor;
+ (CRLColor)yellowColor;
+ (id)colorNamed:(id)named fallbackColor:(id)color;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)improvesContrastWhenDisplayedOverAlternateBackgroundColor:(id)color ratherThanStandardBackgroundColor:(id)backgroundColor inScenario:(unint64_t)scenario;
- (BOOL)isEqualWithTolerance:(id)tolerance;
- (BOOL)isNearlyWhite;
- (BOOL)p_colorIsEqualToColor:(id)color inColorRGBSpace:(unint64_t)space withTolerance:(double)tolerance;
- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGColor)CGColor;
- (CIColor)CIColor;
- (CRLColor)colorWithAlphaComponent:(double)component;
- (CRLColor)grayscaleColor;
- (CRLColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space;
- (CRLColor)initWithCoder:(id)coder;
- (CRLColor)initWithCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha;
- (CRLColor)initWithHexString:(id)string;
- (CRLColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
- (CRLColor)initWithPatternImage:(id)image;
- (CRLColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space;
- (CRLColor)initWithUIColor:(id)color;
- (CRLColor)invertedColor;
- (NSString)hexString;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)contrastRatioWithColor:(id)color;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)index;
- (double)relativeLuminance;
- (double)saturationComponent;
- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)colorByCompositingSourceOverDestinationColor:(id)color;
- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)p_colorForComparingWithColor:(id)color;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getRGBAComponents:(double *)components;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation CRLColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (CRLColor)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (CRLColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (CRLColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithRed:space green:red blue:green alpha:blue colorSpace:alpha];

  return v7;
}

+ (CRLColor)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (CRLColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = [[self alloc] initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  return v6;
}

+ (CRLColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithHue:space saturation:hue brightness:saturation alpha:brightness targetRGBSpace:alpha];

  return v7;
}

+ (CRLColor)colorWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] initWithPatternImage:imageCopy];

  return v5;
}

+ (CRLColor)colorWithHexString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithHexString:stringCopy];

  return v5;
}

+ (CRLColor)colorWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithUIColor:colorCopy];

  return v5;
}

+ (id)colorNamed:(id)named fallbackColor:(id)color
{
  namedCopy = named;
  colorCopy = color;
  v7 = [UIColor colorNamed:namedCopy];
  if (v7)
  {
    v8 = [CRLColor colorWithUIColor:v7];
  }

  else
  {
    v8 = colorCopy;
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372F50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372F64(namedCopy, v9);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372FF4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v10);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLColor colorNamed:fallbackColor:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:113 isFatal:0 description:"Catalog color (named %@) is missing.", namedCopy];
  }

  return v8;
}

+ (CRLColor)randomColor
{
  v2 = sub_1000CCF18();
  v3 = [CRLColor colorWithCGColor:v2];
  CGColorRelease(v2);

  return v3;
}

+ (CRLColor)clearColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (CRLColor)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (CRLColor)lightGrayColor
{
  v2 = [[self alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (CRLColor)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (CRLColor)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (CRLColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space
{
  if (!color)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137301C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373030();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013730CC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:190 isFatal:0 description:"invalid nil value for '%{public}s'", "CGColor"];
  }

  v50.receiver = self;
  v50.super_class = CRLColor;
  v10 = [(CRLColor *)&v50 init];
  if (v10)
  {
    if (CGColorGetPattern(color))
    {
      if (space != 2)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013730F4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137311C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013731AC();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v11);
        }

        v12 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
        [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:261 isFatal:0 description:"If the color has a pattern, its color space should be Unspecified"];
LABEL_23:
      }

LABEL_65:
      Copy = CGColorCreateCopy(color);
      goto LABEL_66;
    }

    ColorSpace = CGColorGetColorSpace(color);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (space)
    {
      if (space != 2)
      {
        if (space != 1)
        {
          goto LABEL_65;
        }

        if (Model != kCGColorSpaceModelRGB)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101373394();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013733BC();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10137344C();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v16);
          }

          v17 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
          v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
          [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:212 isFatal:0 description:"Color specified as P3 isn't even RGB!"];
        }

        v19 = CGColorGetColorSpace(color);
        v20 = sub_1000CCD4C();
        if (!CFEqual(v19, v20))
        {
          v21 = sub_1000CCE28();
          if (!CFEqual(v19, v21))
          {
            v22 = sub_1000CCC44();
            if (!CFEqual(v19, v22))
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101373474();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10137349C();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10137352C();
              }

              v23 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10130F3A8(v23);
              }

              v12 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
              v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
              [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:217 isFatal:0 description:"Color specified as P3 isn't P3, sRGB or Device RGB"];
              space = 1;
              goto LABEL_23;
            }
          }
        }

        goto LABEL_51;
      }

      v24 = CGColorGetColorSpace(color);
      v25 = sub_1000CCD4C();
      if (!CFEqual(v24, v25))
      {
        v26 = sub_1000CCE28();
        if (!CFEqual(v24, v26))
        {
          v46 = CGColorGetColorSpace(color);
          if (CGColorSpaceGetModel(v46) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v46))
          {
            space = 1;
            v47 = sub_1000CCE28();
          }

          else
          {
            v47 = sub_1000CCD4C();
            space = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v47, kCGRenderingIntentDefault, color, 0);
          if (Copy)
          {
LABEL_66:
            v10->mCGColor = Copy;
            v10->mColorRGBSpace = space;
            if (!CGColorGetPattern(Copy))
            {
              Components = CGColorGetComponents(v10->mCGColor);
              NumberOfComponents = CGColorGetNumberOfComponents(v10->mCGColor);
              v36 = __chkstk_darwin(NumberOfComponents);
              v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
              v39 = (&v49 - v38);
              if (v36)
              {
                v40 = (&v49 - v38);
                do
                {
                  v41 = *Components++;
                  v42 = v41;
                  *v40++ = v42;
                  --v36;
                }

                while (v36);
              }

              v43 = CGColorGetColorSpace(v10->mCGColor);
              v44 = CGColorCreate(v43, v39);
              CGColorRelease(v10->mCGColor);
              v10->mCGColor = v44;
            }

            return v10;
          }

          goto LABEL_65;
        }

LABEL_51:
        space = 1;
        goto LABEL_65;
      }
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013731D4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013731FC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137328C();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v27);
        }

        v28 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:223 isFatal:0 description:"Color specified as sRGB isn't even RGB!"];
      }

      v30 = CGColorGetColorSpace(color);
      v31 = sub_1000CCD4C();
      if (!CFEqual(v30, v31))
      {
        v32 = sub_1000CCC44();
        if (!CFEqual(v30, v32))
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013732B4();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013732DC();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10137336C();
          }

          v48 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v48);
          }

          v12 = [NSString stringWithUTF8String:"[CRLColor initWithCGColor:colorSpace:]"];
          v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
          [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:227 isFatal:0 description:"Color specified as sRGB isn't sRGB or Device RGB"];
          space = 0;
          goto LABEL_23;
        }
      }
    }

    space = 0;
    goto LABEL_65;
  }

  return v10;
}

- (CRLColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space
{
  if (!space || space == 2)
  {
    v13 = sub_1000CCD4C();
  }

  else if (space == 1)
  {
    v13 = sub_1000CCE28();
  }

  else
  {
    v13 = 0;
  }

  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
  v14 = CGColorCreate(v13, components);
  v15 = [(CRLColor *)self initWithCGColor:v14 colorSpace:space];
  CGColorRelease(v14);
  return v15;
}

- (CRLColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  if (space)
  {
    if (space == 1)
    {
      v12 = sub_1000CCE28();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = sub_1000CCD4C();
  }

  v13 = sub_1000CD2D8(v12, hue, saturation, brightness, alpha);
  v14 = [(CRLColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (CRLColor)initWithCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha
{
  cyanCopy = cyan;
  magentaCopy = magenta;
  yellowCopy = yellow;
  blackCopy = black;
  alphaCopy = alpha;
  v8 = sub_1000CCC9C();
  v9 = CGColorCreate(v8, &cyanCopy);
  v10 = [(CRLColor *)self initWithCGColor:v9, *&cyanCopy, *&magentaCopy, *&yellowCopy, *&blackCopy, *&alphaCopy];
  CGColorRelease(v9);
  return v10;
}

- (CRLColor)initWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    memset(&v15, 0, sizeof(v15));
    [imageCopy scale];
    v7 = 1.0 / v6;
    [v5 scale];
    CGAffineTransformMakeScale(&v15, v7, 1.0 / v8);
    v9 = sub_1000CD240([v5 CGImage], &v15);
    v10 = [(CRLColor *)self initWithCGColor:v9];
    CGColorRelease(v9);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373554();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373568();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373604();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLColor initWithPatternImage:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:366 isFatal:0 description:"invalid nil value for '%{public}s'", "patternImage"];

    v10 = 0;
  }

  return v10;
}

- (CRLColor)initWithHexString:(id)string
{
  uppercaseString = [string uppercaseString];
  if ([uppercaseString rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(uppercaseString, "length"))
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137362C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373640(uppercaseString, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013736D0();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLColor initWithHexString:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:384 isFatal:0 description:"Invalid hex string: %@", uppercaseString];

    v12 = 0;
  }

  else
  {
    v6 = [uppercaseString substringWithRange:{1, 2}];
    v7 = sub_100435F04(v6, v6);

    v8 = [uppercaseString substringWithRange:{3, 2}];
    v9 = sub_100435F04(v8, v8);

    v10 = [uppercaseString substringWithRange:{5, 2}];
    v11 = sub_100435F04(v10, v10);

    v12 = [(CRLColor *)self initWithRed:(v7 / 255.0) green:(v9 / 255.0) blue:(v11 / 255.0) alpha:1.0];
  }

  return v12;
}

- (CRLColor)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013736F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137370C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013737A8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLColor initWithUIColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:403 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];
  }

  cGColor = [colorCopy CGColor];
  if (CGColorGetPattern(cGColor))
  {
    v9 = [(CRLColor *)self initWithCGColor:cGColor];
  }

  else
  {
    v10 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, cGColor, 0);
    v12 = sub_1000CCD4C();
    v13 = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, CopyByMatchingToColorSpace, 0);
    v14 = sub_1000CCE28();
    v15 = CGColorCreateCopyByMatchingToColorSpace(v14, kCGRenderingIntentDefault, v13, 0);
    v16 = [CRLColor colorWithCGColor:CopyByMatchingToColorSpace];
    v17 = [CRLColor colorWithCGColor:v15];
    if ([v16 isEqualWithTolerance:v17])
    {
      ColorSpace = CGColorGetColorSpace(cGColor);
      v19 = sub_1000CCDC4();
      if (CFEqual(ColorSpace, v19) || (v20 = CGColorGetColorSpace(cGColor), v21 = sub_1000CCD4C(), CFEqual(v20, v21)))
      {
        v22 = sub_1000CCD4C();
        Components = CGColorGetComponents(cGColor);
        v24 = CGColorCreate(v22, Components);
        v25 = v24;
      }

      else
      {
        v25 = 0;
        v24 = v13;
      }
    }

    else
    {
      v25 = 0;
      v24 = CopyByMatchingToColorSpace;
    }

    v26 = [(CRLColor *)self initWithCGColor:v24];
    CGColorRelease(CopyByMatchingToColorSpace);
    CGColorRelease(v13);
    CGColorRelease(v15);
    if (v25)
    {
      CGColorRelease(v25);
    }

    v9 = v26;
  }

  return v9;
}

- (void)dealloc
{
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = CRLColor;
  [(CRLColor *)&v3 dealloc];
}

- (BOOL)isEqualWithTolerance:(id)tolerance
{
  toleranceCopy = tolerance;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, toleranceCopy);

  LOBYTE(self) = [(CRLColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)alphaComponent
{
  cGColor = [(CRLColor *)self CGColor];

  return CGColorGetAlpha(cGColor);
}

- (void)getRGBAComponents:(double *)components
{
  if (components)
  {
    [(CRLColor *)self redComponent];
    *components = v5;
    [(CRLColor *)self greenComponent];
    *(components + 1) = v6;
    [(CRLColor *)self blueComponent];
    *(components + 2) = v7;
    [(CRLColor *)self alphaComponent];
    *(components + 3) = v8;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013737D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013737E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373874();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLColor getRGBAComponents:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:517 isFatal:0 description:"rgbaComponents is NULL!"];
  }
}

- (double)hueComponent
{
  v10 = 0;
  v11 = 0.0;
  v9 = 0;
  [(CRLColor *)self redComponent];
  v4 = v3;
  [(CRLColor *)self greenComponent];
  v6 = v5;
  [(CRLColor *)self blueComponent];
  sub_1000CD450(&v11, &v10, &v9, v4, v6, v7);
  return v11;
}

- (double)saturationComponent
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0;
  [(CRLColor *)self redComponent];
  v4 = v3;
  [(CRLColor *)self greenComponent];
  v6 = v5;
  [(CRLColor *)self blueComponent];
  sub_1000CD450(&v11, &v10, &v9, v4, v6, v7);
  return v10;
}

- (double)brightnessComponent
{
  v10 = 0;
  v11 = 0;
  v9 = 0.0;
  [(CRLColor *)self redComponent];
  v4 = v3;
  [(CRLColor *)self greenComponent];
  v6 = v5;
  [(CRLColor *)self blueComponent];
  sub_1000CD450(&v11, &v10, &v9, v4, v6, v7);
  return v9;
}

- (UIColor)UIColor
{
  cGColor = [(CRLColor *)self CGColor];

  return [UIColor colorWithCGColor:cGColor];
}

- (CIColor)CIColor
{
  v3 = [CIColor alloc];
  uIColor = [(CRLColor *)self UIColor];
  v5 = [v3 initWithColor:uIColor];

  return v5;
}

- (CRLColor)grayscaleColor
{
  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(CRLColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model)
  {
    if (Model == kCGColorSpaceModelRGB)
    {
      selfCopy = [CRLColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
      if (selfCopy)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    selfCopy = self;
    if (selfCopy)
    {
      goto LABEL_15;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137389C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013738B0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137394C();
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130F3A8(v7);
  }

  v8 = [NSString stringWithUTF8String:"[CRLColor grayscaleColor]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:588 isFatal:0 description:"invalid nil value for '%{public}s'", "grayscale"];

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (CRLColor)invertedColor
{
  if (CGColorGetNumberOfComponents([(CRLColor *)self CGColor]) != 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373974();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373988(v3);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373A50();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLColor invertedColor]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:593 isFatal:0 description:"Wrong number of components while inverting color. %zi instead of 4", CGColorGetNumberOfComponents([(CRLColor *)self CGColor])];
  }

  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  v8 = [CRLColor colorWithRed:1.0 - *Components green:1.0 - Components[1] blue:1.0 - Components[2] alpha:Components[3]];

  return v8;
}

- (CRLColor)colorWithAlphaComponent:(double)component
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, component);
  v4 = [CRLColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);

  return v4;
}

- (double)luminance
{
  if (CGColorGetNumberOfComponents([(CRLColor *)self CGColor]) != 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373A78();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373A8C(v3);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373B54();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLColor luminance]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:608 isFatal:0 description:"Wrong number of components to calculate luminance. Got %zi instead of 4.", CGColorGetNumberOfComponents([(CRLColor *)self CGColor])];
  }

  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  result = fmax(Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3], 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)relativeLuminance
{
  if (CGColorGetNumberOfComponents([(CRLColor *)self CGColor]) != 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373B7C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373B90(v3);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373C58();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLColor relativeLuminance]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:618 isFatal:0 description:"Wrong number of components to calculate relative luminance. Got %zi instead of 4.", CGColorGetNumberOfComponents([(CRLColor *)self CGColor])];
  }

  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  v8 = *Components;
  v9 = Components[1];
  v10 = Components[2];
  if (*Components <= 0.03928)
  {
    v11 = v8 / 12.92;
  }

  else
  {
    v11 = pow((v8 + 0.055) / 1.055, 2.4);
  }

  if (v9 <= 0.03928)
  {
    v12 = v9 / 12.92;
  }

  else
  {
    v12 = pow((v9 + 0.055) / 1.055, 2.4);
  }

  if (v10 <= 0.03928)
  {
    v13 = v10 / 12.92;
  }

  else
  {
    v13 = pow((v10 + 0.055) / 1.055, 2.4);
  }

  return v12 * 0.7152 + v11 * 0.2126 + v13 * 0.0722;
}

- (BOOL)isNearlyWhite
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0.0;
  [(CRLColor *)self redComponent];
  v4 = v3;
  [(CRLColor *)self greenComponent];
  v6 = v5;
  [(CRLColor *)self blueComponent];
  sub_1000CD450(&v11, &v9, &v10, v4, v6, v7);
  return v9 < 0.1 && v10 > 0.9;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
{
  v14 = 0.0;
  v15 = 0;
  v13 = 0.0;
  [(CRLColor *)self redComponent];
  v6 = v5;
  [(CRLColor *)self greenComponent];
  v8 = v7;
  [(CRLColor *)self blueComponent];
  v10 = sub_1000CD450(&v15, &v13, &v14, v6, v8, v9);
  switch(appearance)
  {
    case 1uLL:
      return v13 < 0.200000003 && v14 > 0.899999976;
    case 3uLL:
      return sub_1000CD7DC([(CRLColor *)self CGColor]) <= 0.300000012;
    case 2uLL:
      v11 = sub_1000CD7DC([(CRLColor *)self CGColor]);
      return v11 <= 0.349999994 && v11 >= 0.0500000007;
    default:
      return 0;
  }
}

- (double)contrastRatioWithColor:(id)color
{
  colorCopy = color;
  [(CRLColor *)self relativeLuminance];
  v6 = v5;
  [colorCopy relativeLuminance];
  v8 = v7;

  if (v8 >= v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  return (v9 + 0.05) / (v10 + 0.05);
}

- (BOOL)improvesContrastWhenDisplayedOverAlternateBackgroundColor:(id)color ratherThanStandardBackgroundColor:(id)backgroundColor inScenario:(unint64_t)scenario
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  if (scenario >= 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373C80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373C94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373D20();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLColor improvesContrastWhenDisplayedOverAlternateBackgroundColor:ratherThanStandardBackgroundColor:inScenario:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:718 isFatal:0 description:"Unhandled contrast scenario (%zu).", scenario];

    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = dbl_101465B78[scenario];
    v11 = dbl_101465B98[scenario];
  }

  v15 = [(CRLColor *)self colorByCompositingSourceOverDestinationColor:backgroundColorCopy];
  [v15 contrastRatioWithColor:backgroundColorCopy];
  if (v16 >= v10)
  {
    v22 = 0;
  }

  else
  {
    v17 = v16;
    v18 = [(CRLColor *)self colorByCompositingSourceOverDestinationColor:colorCopy];
    [v18 contrastRatioWithColor:colorCopy];
    if (v19 <= v17)
    {
      v22 = 0;
    }

    else if (v19 >= v11)
    {
      v22 = 1;
    }

    else
    {
      v20 = [(CRLColor *)self colorWithAlphaComponent:1.0];
      v21 = [backgroundColorCopy colorWithAlphaComponent:1.0];
      v22 = [v20 isAlmostEqualToColor:v21];
    }
  }

  return v22;
}

- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v4 = [(CRLColor *)self newBlendedColorWithFraction:color ofColor:fraction];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (self->mColorRGBSpace == 2)
  {
    goto LABEL_2;
  }

  if ([colorCopy colorRGBSpace] == 2)
  {
    selfCopy = v7;
    goto LABEL_18;
  }

  mColorRGBSpace = self->mColorRGBSpace;
  if (mColorRGBSpace == [v7 colorRGBSpace])
  {
    v10 = self->mColorRGBSpace;
    if (v10 == 1)
    {
      v56 = [CRLColor alloc];
      [(CRLColor *)self redComponent];
      v58 = v57;
      [v7 redComponent];
      v60 = sub_1004C3260(v58, v59, fraction);
      [(CRLColor *)self greenComponent];
      v62 = v61;
      [v7 greenComponent];
      v64 = sub_1004C3260(v62, v63, fraction);
      [(CRLColor *)self blueComponent];
      v66 = v65;
      [v7 blueComponent];
      v68 = sub_1004C3260(v66, v67, fraction);
      [(CRLColor *)self alphaComponent];
      v70 = v69;
      [v7 alphaComponent];
      v27 = sub_1004C3260(v70, v71, fraction);
      v28 = v56;
      v29 = v60;
      v30 = v64;
      v31 = v68;
      v32 = 1;
    }

    else
    {
      if (v10)
      {
LABEL_2:
        selfCopy = self;
LABEL_18:
        v55 = selfCopy;
        goto LABEL_19;
      }

      v11 = [CRLColor alloc];
      [(CRLColor *)self redComponent];
      v13 = v12;
      [v7 redComponent];
      v15 = sub_1004C3260(v13, v14, fraction);
      [(CRLColor *)self greenComponent];
      v17 = v16;
      [v7 greenComponent];
      v19 = sub_1004C3260(v17, v18, fraction);
      [(CRLColor *)self blueComponent];
      v21 = v20;
      [v7 blueComponent];
      v23 = sub_1004C3260(v21, v22, fraction);
      [(CRLColor *)self alphaComponent];
      v25 = v24;
      [v7 alphaComponent];
      v27 = sub_1004C3260(v25, v26, fraction);
      v28 = v11;
      v29 = v15;
      v30 = v19;
      v31 = v23;
      v32 = 0;
    }

    selfCopy = [(CRLColor *)v28 initWithRed:v32 green:v29 blue:v30 alpha:v31 colorSpace:v27];
    goto LABEL_18;
  }

  if ([(CRLColor *)self colorRGBSpace]== 1)
  {
    selfCopy2 = self;
  }

  else
  {
    v34 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v34, kCGRenderingIntentDefault, [(CRLColor *)self CGColor], 0);
    selfCopy2 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];
    CGColorRelease(CopyByMatchingToColorSpace);
  }

  if ([v7 colorRGBSpace] == 1)
  {
    v36 = v7;
  }

  else
  {
    v37 = sub_1000CCE28();
    v38 = CGColorCreateCopyByMatchingToColorSpace(v37, kCGRenderingIntentDefault, [v7 CGColor], 0);
    v36 = [[CRLColor alloc] initWithCGColor:v38 colorSpace:1];
    CGColorRelease(v38);
  }

  v39 = [CRLColor alloc];
  [(CRLColor *)selfCopy2 redComponent];
  v41 = v40;
  [(CRLColor *)v36 redComponent];
  v43 = sub_1004C3260(v41, v42, fraction);
  [(CRLColor *)selfCopy2 greenComponent];
  v45 = v44;
  [(CRLColor *)v36 greenComponent];
  v47 = sub_1004C3260(v45, v46, fraction);
  [(CRLColor *)selfCopy2 blueComponent];
  v49 = v48;
  [(CRLColor *)v36 blueComponent];
  v51 = sub_1004C3260(v49, v50, fraction);
  [(CRLColor *)selfCopy2 alphaComponent];
  v53 = v52;
  [(CRLColor *)v36 alphaComponent];
  v55 = [(CRLColor *)v39 initWithRed:1 green:v43 blue:v47 alpha:v51 colorSpace:sub_1004C3260(v53, v54, fraction)];

LABEL_19:
  return v55;
}

- (id)colorByCompositingSourceOverDestinationColor:(id)color
{
  colorCopy = color;
  [(CRLColor *)self alphaComponent];
  if (v5 == 1.0)
  {
    selfCopy = self;
  }

  else
  {
    v7 = [(CRLColor *)self p_colorForComparingWithColor:colorCopy];
    v8 = [colorCopy p_colorForComparingWithColor:self];

    [v7 getRGBAComponents:v17];
    [v8 getRGBAComponents:v15];
    v9 = v18;
    v10 = v16;
    v11 = 1.0 - v18;
    v12 = v18 + v16 * (1.0 - v18);
    v13 = [CRLColor alloc];
    selfCopy = -[CRLColor initWithRed:green:blue:alpha:colorSpace:](v13, "initWithRed:green:blue:alpha:colorSpace:", [v7 colorRGBSpace], (v11 * (v10 * v15[0]) + v17[0] * v9) / v12, (v11 * (v10 * v15[1]) + v17[1] * v9) / v12, (v11 * (v10 * v15[2]) + v17[2] * v9) / v12, v12);

    colorCopy = v8;
  }

  return selfCopy;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(context, v11);

  CGContextRestoreGState(context);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  CGContextAddPath(context, path);
  CGContextFillPath(context);

  CGContextRestoreGState(context);
}

- (NSString)hexString
{
  [(CRLColor *)self redComponent];
  v4 = (v3 * 255.0);
  [(CRLColor *)self greenComponent];
  v6 = (v5 * 255.0);
  [(CRLColor *)self blueComponent];
  return [NSString stringWithFormat:@"#%02X%02X%02X", v4, v6, (v7 * 255.0)];
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v5 = [UIColor objectWithItemProviderData:data typeIdentifier:identifier error:error];
  v6 = v5;
  if (v5)
  {
    if (CGColorGetPattern([v5 CGColor]))
    {
      v7 = +[UIColor blackColor];

      v6 = v7;
    }

    v8 = [CRLColor colorWithUIColor:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance
{
  colorCopy = color;
  v7 = colorCopy;
  if (colorCopy && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [colorCopy colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    cGColor = [(CRLColor *)self CGColor];
    cGColor2 = [v7 CGColor];
    if (cGColor == cGColor2)
    {
      v19 = 1;
    }

    else
    {
      v11 = cGColor2;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1004380CC;
      v21[3] = &unk_101862C60;
      *&v21[4] = tolerance;
      v12 = objc_retainBlock(v21);
      ColorSpace = CGColorGetColorSpace(cGColor);
      Model = CGColorSpaceGetModel(ColorSpace);
      v15 = CGColorGetColorSpace(v11);
      if (Model != CGColorSpaceGetModel(v15))
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101373D48();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101373D70();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101373E00();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v16);
        }

        v17 = [NSString stringWithUTF8String:"[CRLColor p_isEqualToColor:withTolerance:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColor.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:966 isFatal:0 description:"CRLColors should always be RGB! Comparing two with different color models."];
      }

      if (CFEqual(ColorSpace, v15))
      {
        v19 = (v12[2])(v12, cGColor, v11);
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (double)p_rgbComponentWithIndex:(unsigned __int8)index
{
  indexCopy = index;
  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(CRLColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[indexCopy] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[indexCopy];
  }

  return result;
}

- (id)p_colorForComparingWithColor:(id)color
{
  colorCopy = color;
  colorRGBSpace = [(CRLColor *)self colorRGBSpace];
  colorRGBSpace2 = [colorCopy colorRGBSpace];

  selfCopy = self;
  if (!colorRGBSpace && colorRGBSpace2 == 1)
  {
    v8 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v8, kCGRenderingIntentDefault, selfCopy->mCGColor, 0);
    v10 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];

    CGColorRelease(CopyByMatchingToColorSpace);
    selfCopy = v10;
  }

  return selfCopy;
}

- (BOOL)p_colorIsEqualToColor:(id)color inColorRGBSpace:(unint64_t)space withTolerance:(double)tolerance
{
  colorCopy = color;
  selfCopy = self;
  v10 = sub_100438648(space);
  if ([(CRLColor *)selfCopy colorRGBSpace]!= space)
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, selfCopy->mCGColor, 0);
    v12 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:space];

    CGColorRelease(CopyByMatchingToColorSpace);
    selfCopy = v12;
  }

  v13 = colorCopy;
  v14 = v13;
  if ([(CRLColor *)v13 colorRGBSpace]!= space)
  {
    v15 = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, [(CRLColor *)v13 CGColor], 0);
    v14 = [[CRLColor alloc] initWithCGColor:v15 colorSpace:space];

    CGColorRelease(v15);
  }

  v16 = [(CRLColor *)selfCopy p_isEqualToColor:v14 withTolerance:tolerance];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (CGColorGetPattern([(CRLColor *)self CGColor]))
  {
    +[UIColor blackColor];
  }

  else
  {
    [(CRLColor *)self UIColor];
  }
  v5 = ;
  [coderCopy encodeObject:v5 forKey:@"UIColor"];
}

- (CRLColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIColor"];

  v6 = [(CRLColor *)self initWithUIColor:v5];
  return v6;
}

@end