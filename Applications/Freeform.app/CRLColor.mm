@interface CRLColor
+ (CRLColor)blackColor;
+ (CRLColor)blueColor;
+ (CRLColor)brownColor;
+ (CRLColor)clearColor;
+ (CRLColor)colorWithCGColor:(CGColor *)a3;
+ (CRLColor)colorWithHexString:(id)a3;
+ (CRLColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (CRLColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (CRLColor)colorWithPatternImage:(id)a3;
+ (CRLColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (CRLColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (CRLColor)colorWithUIColor:(id)a3;
+ (CRLColor)colorWithWhite:(double)a3 alpha:(double)a4;
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
+ (id)colorNamed:(id)a3 fallbackColor:(id)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)improvesContrastWhenDisplayedOverAlternateBackgroundColor:(id)a3 ratherThanStandardBackgroundColor:(id)a4 inScenario:(unint64_t)a5;
- (BOOL)isEqualWithTolerance:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)p_colorIsEqualToColor:(id)a3 inColorRGBSpace:(unint64_t)a4 withTolerance:(double)a5;
- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3;
- (CGColor)CGColor;
- (CIColor)CIColor;
- (CRLColor)colorWithAlphaComponent:(double)a3;
- (CRLColor)grayscaleColor;
- (CRLColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4;
- (CRLColor)initWithCoder:(id)a3;
- (CRLColor)initWithCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7;
- (CRLColor)initWithHexString:(id)a3;
- (CRLColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
- (CRLColor)initWithPatternImage:(id)a3;
- (CRLColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7;
- (CRLColor)initWithUIColor:(id)a3;
- (CRLColor)invertedColor;
- (NSString)hexString;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)contrastRatioWithColor:(id)a3;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)a3;
- (double)relativeLuminance;
- (double)saturationComponent;
- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)colorByCompositingSourceOverDestinationColor:(id)a3;
- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)p_colorForComparingWithColor:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getRGBAComponents:(double *)a3;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation CRLColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (CRLColor)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (CRLColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (CRLColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithRed:a7 green:a3 blue:a4 alpha:a5 colorSpace:a6];

  return v7;
}

+ (CRLColor)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (CRLColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  return v6;
}

+ (CRLColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithHue:a7 saturation:a3 brightness:a4 alpha:a5 targetRGBSpace:a6];

  return v7;
}

+ (CRLColor)colorWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPatternImage:v4];

  return v5;
}

+ (CRLColor)colorWithHexString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHexString:v4];

  return v5;
}

+ (CRLColor)colorWithUIColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUIColor:v4];

  return v5;
}

+ (id)colorNamed:(id)a3 fallbackColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [UIColor colorNamed:v5];
  if (v7)
  {
    v8 = [CRLColor colorWithUIColor:v7];
  }

  else
  {
    v8 = v6;
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372F50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372F64(v5, v9);
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
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:113 isFatal:0 description:"Catalog color (named %@) is missing.", v5];
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
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (CRLColor)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (CRLColor)lightGrayColor
{
  v2 = [[a1 alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (CRLColor)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (CRLColor)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (CRLColor)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (CRLColor)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (CRLColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4
{
  if (!a3)
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
    if (CGColorGetPattern(a3))
    {
      if (a4 != 2)
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
      Copy = CGColorCreateCopy(a3);
      goto LABEL_66;
    }

    ColorSpace = CGColorGetColorSpace(a3);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 1)
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

        v19 = CGColorGetColorSpace(a3);
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
              a4 = 1;
              goto LABEL_23;
            }
          }
        }

        goto LABEL_51;
      }

      v24 = CGColorGetColorSpace(a3);
      v25 = sub_1000CCD4C();
      if (!CFEqual(v24, v25))
      {
        v26 = sub_1000CCE28();
        if (!CFEqual(v24, v26))
        {
          v46 = CGColorGetColorSpace(a3);
          if (CGColorSpaceGetModel(v46) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v46))
          {
            a4 = 1;
            v47 = sub_1000CCE28();
          }

          else
          {
            v47 = sub_1000CCD4C();
            a4 = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v47, kCGRenderingIntentDefault, a3, 0);
          if (Copy)
          {
LABEL_66:
            v10->mCGColor = Copy;
            v10->mColorRGBSpace = a4;
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
        a4 = 1;
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

      v30 = CGColorGetColorSpace(a3);
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
          a4 = 0;
          goto LABEL_23;
        }
      }
    }

    a4 = 0;
    goto LABEL_65;
  }

  return v10;
}

- (CRLColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7
{
  if (!a7 || a7 == 2)
  {
    v13 = sub_1000CCD4C();
  }

  else if (a7 == 1)
  {
    v13 = sub_1000CCE28();
  }

  else
  {
    v13 = 0;
  }

  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v14 = CGColorCreate(v13, components);
  v15 = [(CRLColor *)self initWithCGColor:v14 colorSpace:a7];
  CGColorRelease(v14);
  return v15;
}

- (CRLColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  if (a7)
  {
    if (a7 == 1)
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

  v13 = sub_1000CD2D8(v12, a3, a4, a5, a6);
  v14 = [(CRLColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (CRLColor)initWithCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v8 = sub_1000CCC9C();
  v9 = CGColorCreate(v8, &v12);
  v10 = [(CRLColor *)self initWithCGColor:v9, *&v12, *&v13, *&v14, *&v15, *&v16];
  CGColorRelease(v9);
  return v10;
}

- (CRLColor)initWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    memset(&v15, 0, sizeof(v15));
    [v4 scale];
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

- (CRLColor)initWithHexString:(id)a3
{
  v4 = [a3 uppercaseString];
  if ([v4 rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(v4, "length"))
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137362C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373640(v4, v13);
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
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:384 isFatal:0 description:"Invalid hex string: %@", v4];

    v12 = 0;
  }

  else
  {
    v6 = [v4 substringWithRange:{1, 2}];
    v7 = sub_100435F04(v6, v6);

    v8 = [v4 substringWithRange:{3, 2}];
    v9 = sub_100435F04(v8, v8);

    v10 = [v4 substringWithRange:{5, 2}];
    v11 = sub_100435F04(v10, v10);

    v12 = [(CRLColor *)self initWithRed:(v7 / 255.0) green:(v9 / 255.0) blue:(v11 / 255.0) alpha:1.0];
  }

  return v12;
}

- (CRLColor)initWithUIColor:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v8 = [v4 CGColor];
  if (CGColorGetPattern(v8))
  {
    v9 = [(CRLColor *)self initWithCGColor:v8];
  }

  else
  {
    v10 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, v8, 0);
    v12 = sub_1000CCD4C();
    v13 = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, CopyByMatchingToColorSpace, 0);
    v14 = sub_1000CCE28();
    v15 = CGColorCreateCopyByMatchingToColorSpace(v14, kCGRenderingIntentDefault, v13, 0);
    v16 = [CRLColor colorWithCGColor:CopyByMatchingToColorSpace];
    v17 = [CRLColor colorWithCGColor:v15];
    if ([v16 isEqualWithTolerance:v17])
    {
      ColorSpace = CGColorGetColorSpace(v8);
      v19 = sub_1000CCDC4();
      if (CFEqual(ColorSpace, v19) || (v20 = CGColorGetColorSpace(v8), v21 = sub_1000CCD4C(), CFEqual(v20, v21)))
      {
        v22 = sub_1000CCD4C();
        Components = CGColorGetComponents(v8);
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

- (BOOL)isEqualWithTolerance:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  LOBYTE(self) = [(CRLColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)alphaComponent
{
  v2 = [(CRLColor *)self CGColor];

  return CGColorGetAlpha(v2);
}

- (void)getRGBAComponents:(double *)a3
{
  if (a3)
  {
    [(CRLColor *)self redComponent];
    *a3 = v5;
    [(CRLColor *)self greenComponent];
    *(a3 + 1) = v6;
    [(CRLColor *)self blueComponent];
    *(a3 + 2) = v7;
    [(CRLColor *)self alphaComponent];
    *(a3 + 3) = v8;
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
  v2 = [(CRLColor *)self CGColor];

  return [UIColor colorWithCGColor:v2];
}

- (CIColor)CIColor
{
  v3 = [CIColor alloc];
  v4 = [(CRLColor *)self UIColor];
  v5 = [v3 initWithColor:v4];

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
      v6 = [CRLColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
      if (v6)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v6 = self;
    if (v6)
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

  v6 = 0;
LABEL_15:

  return v6;
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

- (CRLColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, a3);
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

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3
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
  switch(a3)
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

- (double)contrastRatioWithColor:(id)a3
{
  v4 = a3;
  [(CRLColor *)self relativeLuminance];
  v6 = v5;
  [v4 relativeLuminance];
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

- (BOOL)improvesContrastWhenDisplayedOverAlternateBackgroundColor:(id)a3 ratherThanStandardBackgroundColor:(id)a4 inScenario:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 >= 4)
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
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:718 isFatal:0 description:"Unhandled contrast scenario (%zu).", a5];

    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = dbl_101465B78[a5];
    v11 = dbl_101465B98[a5];
  }

  v15 = [(CRLColor *)self colorByCompositingSourceOverDestinationColor:v9];
  [v15 contrastRatioWithColor:v9];
  if (v16 >= v10)
  {
    v22 = 0;
  }

  else
  {
    v17 = v16;
    v18 = [(CRLColor *)self colorByCompositingSourceOverDestinationColor:v8];
    [v18 contrastRatioWithColor:v8];
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
      v21 = [v9 colorWithAlphaComponent:1.0];
      v22 = [v20 isAlmostEqualToColor:v21];
    }
  }

  return v22;
}

- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v4 = [(CRLColor *)self newBlendedColorWithFraction:a4 ofColor:a3];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->mColorRGBSpace == 2)
  {
    goto LABEL_2;
  }

  if ([v6 colorRGBSpace] == 2)
  {
    v8 = v7;
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
      v60 = sub_1004C3260(v58, v59, a3);
      [(CRLColor *)self greenComponent];
      v62 = v61;
      [v7 greenComponent];
      v64 = sub_1004C3260(v62, v63, a3);
      [(CRLColor *)self blueComponent];
      v66 = v65;
      [v7 blueComponent];
      v68 = sub_1004C3260(v66, v67, a3);
      [(CRLColor *)self alphaComponent];
      v70 = v69;
      [v7 alphaComponent];
      v27 = sub_1004C3260(v70, v71, a3);
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
        v8 = self;
LABEL_18:
        v55 = v8;
        goto LABEL_19;
      }

      v11 = [CRLColor alloc];
      [(CRLColor *)self redComponent];
      v13 = v12;
      [v7 redComponent];
      v15 = sub_1004C3260(v13, v14, a3);
      [(CRLColor *)self greenComponent];
      v17 = v16;
      [v7 greenComponent];
      v19 = sub_1004C3260(v17, v18, a3);
      [(CRLColor *)self blueComponent];
      v21 = v20;
      [v7 blueComponent];
      v23 = sub_1004C3260(v21, v22, a3);
      [(CRLColor *)self alphaComponent];
      v25 = v24;
      [v7 alphaComponent];
      v27 = sub_1004C3260(v25, v26, a3);
      v28 = v11;
      v29 = v15;
      v30 = v19;
      v31 = v23;
      v32 = 0;
    }

    v8 = [(CRLColor *)v28 initWithRed:v32 green:v29 blue:v30 alpha:v31 colorSpace:v27];
    goto LABEL_18;
  }

  if ([(CRLColor *)self colorRGBSpace]== 1)
  {
    v33 = self;
  }

  else
  {
    v34 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v34, kCGRenderingIntentDefault, [(CRLColor *)self CGColor], 0);
    v33 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];
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
  [(CRLColor *)v33 redComponent];
  v41 = v40;
  [(CRLColor *)v36 redComponent];
  v43 = sub_1004C3260(v41, v42, a3);
  [(CRLColor *)v33 greenComponent];
  v45 = v44;
  [(CRLColor *)v36 greenComponent];
  v47 = sub_1004C3260(v45, v46, a3);
  [(CRLColor *)v33 blueComponent];
  v49 = v48;
  [(CRLColor *)v36 blueComponent];
  v51 = sub_1004C3260(v49, v50, a3);
  [(CRLColor *)v33 alphaComponent];
  v53 = v52;
  [(CRLColor *)v36 alphaComponent];
  v55 = [(CRLColor *)v39 initWithRed:1 green:v43 blue:v47 alpha:v51 colorSpace:sub_1004C3260(v53, v54, a3)];

LABEL_19:
  return v55;
}

- (id)colorByCompositingSourceOverDestinationColor:(id)a3
{
  v4 = a3;
  [(CRLColor *)self alphaComponent];
  if (v5 == 1.0)
  {
    v6 = self;
  }

  else
  {
    v7 = [(CRLColor *)self p_colorForComparingWithColor:v4];
    v8 = [v4 p_colorForComparingWithColor:self];

    [v7 getRGBAComponents:v17];
    [v8 getRGBAComponents:v15];
    v9 = v18;
    v10 = v16;
    v11 = 1.0 - v18;
    v12 = v18 + v16 * (1.0 - v18);
    v13 = [CRLColor alloc];
    v6 = -[CRLColor initWithRed:green:blue:alpha:colorSpace:](v13, "initWithRed:green:blue:alpha:colorSpace:", [v7 colorRGBSpace], (v11 * (v10 * v15[0]) + v17[0] * v9) / v12, (v11 * (v10 * v15[1]) + v17[1] * v9) / v12, (v11 * (v10 * v15[2]) + v17[2] * v9) / v12, v12);

    v4 = v8;
  }

  return v6;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(a4, v11);

  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  CGContextAddPath(a4, a3);
  CGContextFillPath(a4);

  CGContextRestoreGState(a4);
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

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v5 = [UIColor objectWithItemProviderData:a3 typeIdentifier:a4 error:a5];
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

- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [v6 colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    v9 = [(CRLColor *)self CGColor];
    v10 = [v7 CGColor];
    if (v9 == v10)
    {
      v19 = 1;
    }

    else
    {
      v11 = v10;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1004380CC;
      v21[3] = &unk_101862C60;
      *&v21[4] = a4;
      v12 = objc_retainBlock(v21);
      ColorSpace = CGColorGetColorSpace(v9);
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
        v19 = (v12[2])(v12, v9, v11);
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

- (double)p_rgbComponentWithIndex:(unsigned __int8)a3
{
  v3 = a3;
  Components = CGColorGetComponents([(CRLColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(CRLColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[v3] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[v3];
  }

  return result;
}

- (id)p_colorForComparingWithColor:(id)a3
{
  v4 = a3;
  v5 = [(CRLColor *)self colorRGBSpace];
  v6 = [v4 colorRGBSpace];

  v7 = self;
  if (!v5 && v6 == 1)
  {
    v8 = sub_1000CCE28();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v8, kCGRenderingIntentDefault, v7->mCGColor, 0);
    v10 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];

    CGColorRelease(CopyByMatchingToColorSpace);
    v7 = v10;
  }

  return v7;
}

- (BOOL)p_colorIsEqualToColor:(id)a3 inColorRGBSpace:(unint64_t)a4 withTolerance:(double)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_100438648(a4);
  if ([(CRLColor *)v9 colorRGBSpace]!= a4)
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, v9->mCGColor, 0);
    v12 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:a4];

    CGColorRelease(CopyByMatchingToColorSpace);
    v9 = v12;
  }

  v13 = v8;
  v14 = v13;
  if ([(CRLColor *)v13 colorRGBSpace]!= a4)
  {
    v15 = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, [(CRLColor *)v13 CGColor], 0);
    v14 = [[CRLColor alloc] initWithCGColor:v15 colorSpace:a4];

    CGColorRelease(v15);
  }

  v16 = [(CRLColor *)v9 p_isEqualToColor:v14 withTolerance:a5];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (CGColorGetPattern([(CRLColor *)self CGColor]))
  {
    +[UIColor blackColor];
  }

  else
  {
    [(CRLColor *)self UIColor];
  }
  v5 = ;
  [v4 encodeObject:v5 forKey:@"UIColor"];
}

- (CRLColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIColor"];

  v6 = [(CRLColor *)self initWithUIColor:v5];
  return v6;
}

@end