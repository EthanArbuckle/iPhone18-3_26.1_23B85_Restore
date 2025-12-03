@interface CRLRulerUnits
+ (id)formatterForRulerUnits:(unint64_t)units decimalPlaces:(int)places trailingZeros:(BOOL)zeros lenient:(BOOL)lenient;
+ (id)instance;
- (CRLRulerUnits)init;
- (double)convertPointsToRulerUnits:(double)units;
- (double)convertRulerUnitsToPoints:(double)points;
- (id)compatibleRulerUnits;
- (id)formatter:(BOOL)formatter lenient:(BOOL)lenient;
- (id)localizedCompatibleRulerAbbreviatedUnits;
- (id)localizedCompatibleRulerUnits;
- (void)setCenterRulerOrigin:(BOOL)origin;
- (void)setRulerUnits:(unint64_t)units;
- (void)setShowRulerAsPercentage:(BOOL)percentage;
@end

@implementation CRLRulerUnits

+ (id)instance
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013232B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013232C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132335C();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v2);
    }

    v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLRulerUnits instance]");
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRulerUnits.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:64 isFatal:0 description:"Trying to acquire CRLRulerUnits singleton from a secondary thread - this class is not thread safe."];
  }

  if (qword_101A346F0 != -1)
  {
    sub_101323384();
  }

  v5 = qword_101A346F8;

  return v5;
}

- (CRLRulerUnits)init
{
  v5.receiver = self;
  v5.super_class = CRLRulerUnits;
  v2 = [(CRLRulerUnits *)&v5 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v2->_rulerUnits = [v3 integerForKey:@"CRLRulerUnitTypeUserDefault"];
    v2->_showRulerAsPercentage = [v3 BOOLForKey:@"ShowRulerAsPercentage"];
    v2->_centerRulerOrigin = [v3 BOOLForKey:@"CenterRulerOrigin"];
    v2->_preferredPixelUnit = 2;
  }

  return v2;
}

- (void)setRulerUnits:(unint64_t)units
{
  if (self->_rulerUnits != units)
  {
    self->_rulerUnits = units;
    formatter = self->_formatter;
    self->_formatter = 0;

    lenientFormatter = self->_lenientFormatter;
    self->_lenientFormatter = 0;

    highPrecisionFormatter = self->_highPrecisionFormatter;
    self->_highPrecisionFormatter = 0;

    lenientHighPrecisionFormatter = self->_lenientHighPrecisionFormatter;
    self->_lenientHighPrecisionFormatter = 0;

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setInteger:self->_rulerUnits forKey:@"CRLRulerUnitTypeUserDefault"];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"RulerUnitsDidChange" object:self];
  }
}

- (void)setShowRulerAsPercentage:(BOOL)percentage
{
  if (self->_showRulerAsPercentage != percentage)
  {
    self->_showRulerAsPercentage = percentage;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:self->_showRulerAsPercentage forKey:@"ShowRulerAsPercentage"];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"ShowRulerAsPercentageDidChange" object:self];
  }
}

- (void)setCenterRulerOrigin:(BOOL)origin
{
  if (self->_centerRulerOrigin != origin)
  {
    self->_centerRulerOrigin = origin;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:self->_centerRulerOrigin forKey:@"CenterRulerOrigin"];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CenterRulerOriginDidChange" object:self];
  }
}

- (double)convertRulerUnitsToPoints:(double)points
{
  rulerUnits = self->_rulerUnits;
  v4 = 1.0;
  if (rulerUnits <= 3)
  {
    v4 = dbl_101462BC8[rulerUnits];
  }

  return v4 * points;
}

- (double)convertPointsToRulerUnits:(double)units
{
  rulerUnits = self->_rulerUnits;
  v4 = 1.0;
  if (rulerUnits <= 3)
  {
    v4 = dbl_101462BC8[rulerUnits];
  }

  return units / v4;
}

- (id)formatter:(BOOL)formatter lenient:(BOOL)lenient
{
  lenientCopy = lenient;
  if (!formatter)
  {
    if (lenient)
    {
LABEL_6:
      v7 = 0;
      v8 = 16;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  rulerUnits = self->_rulerUnits;
  if (lenient)
  {
    if (!rulerUnits)
    {
      v7 = 1;
      v8 = 32;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (rulerUnits)
  {
LABEL_8:
    v7 = 0;
    v8 = 8;
    goto LABEL_9;
  }

  v7 = 1;
  v8 = 24;
LABEL_9:
  v9 = *(&self->super.isa + v8);
  if (!v9)
  {
    v10 = self->_rulerUnits;
    if (v7)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      v11 = 0;
    }

    if (v10 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v9 = [objc_opt_class() formatterForRulerUnits:self->_rulerUnits decimalPlaces:v12 trailingZeros:0 lenient:lenientCopy];
    v13 = 16;
    if (v7)
    {
      v13 = 32;
    }

    v14 = 8;
    if (v7)
    {
      v14 = 24;
    }

    if (!lenientCopy)
    {
      v13 = v14;
    }

    objc_storeStrong((&self->super.isa + v13), v9);
  }

  return v9;
}

- (id)compatibleRulerUnits
{
  rulerUnits = self->_rulerUnits;
  if (rulerUnits > 4)
  {
    return &stru_1018BCA28;
  }

  else
  {
    return *(&off_101842050 + rulerUnits);
  }
}

- (id)localizedCompatibleRulerUnits
{
  rulerUnits = self->_rulerUnits;
  if (rulerUnits > 4)
  {
    v5 = &stru_1018BCA28;
  }

  else
  {
    v3 = *(&off_101842050 + rulerUnits);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (id)localizedCompatibleRulerAbbreviatedUnits
{
  rulerUnits = self->_rulerUnits;
  if (rulerUnits > 4)
  {
    v5 = &stru_1018BCA28;
  }

  else
  {
    v3 = *(&off_101842078 + rulerUnits);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

+ (id)formatterForRulerUnits:(unint64_t)units decimalPlaces:(int)places trailingZeros:(BOOL)zeros lenient:(BOOL)lenient
{
  lenientCopy = lenient;
  zerosCopy = zeros;
  v8 = *&places;
  if (units == 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013233AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013233C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323454();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v10);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLRulerUnits formatterForRulerUnits:decimalPlaces:trailingZeros:lenient:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRulerUnits.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:264 isFatal:0 description:"Pica formatting not currently supported"];
  }

  if (v8 < 1)
  {
    v14 = @"0";
  }

  else if (zerosCopy)
  {
    v13 = [[NSString alloc] initWithFormat:@"%%.%df", v8];
    v14 = [[NSString alloc] initWithFormat:v13, 0];
  }

  else
  {
    v14 = [[NSMutableString alloc] initWithString:@"0."];
    v15 = v8 + 1;
    do
    {
      [(__CFString *)v14 appendString:@"#"];
      --v15;
    }

    while (v15 > 1);
  }

  if (units > 1)
  {
    switch(units)
    {
      case 2uLL:
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        v19 = @"RULER_FORMAT_POINTS";
        v20 = @"%@ pt";
        break;
      case 4uLL:
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        v19 = @"RULER_FORMAT_PIXELS";
        v20 = @"%@ px";
        break;
      case 5uLL:
        v16 = @"%@";
        goto LABEL_29;
      default:
        goto LABEL_32;
    }

LABEL_28:
    v16 = [v17 localizedStringForKey:v19 value:v20 table:0];

    goto LABEL_29;
  }

  if (!units)
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"RULER_FORMAT_INCHES";
    v20 = @"%@ in";
    goto LABEL_28;
  }

  if (units == 1)
  {
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    v19 = @"RULER_FORMAT_CENTIMETERS";
    v20 = @"%@ cm";
    goto LABEL_28;
  }

LABEL_32:
  v16 = &stru_1018BCA28;
LABEL_29:
  v21 = [[NSString alloc] initWithFormat:v16, v14];
  v22 = objc_alloc_init(CRLPositiveZeroNumberFormatter);
  [(CRLPositiveZeroNumberFormatter *)v22 setPositiveFormat:v21];
  [(CRLPositiveZeroNumberFormatter *)v22 setLenient:lenientCopy];

  return v22;
}

@end