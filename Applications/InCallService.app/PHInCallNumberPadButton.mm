@interface PHInCallNumberPadButton
+ (BOOL)usesButtonColorMatrixFilters;
+ (BOOL)usesEmergencyCallButtonColorMatrixFilters;
+ (double)horizontalPadding;
+ (double)outerCircleDiameter;
+ (double)unhighlightedCircleViewAlpha;
- (id)initForCharacter:(int64_t)character style:(int64_t)style;
@end

@implementation PHInCallNumberPadButton

+ (double)outerCircleDiameter
{
  v3 = +[CNKFeatures sharedInstance];
  isDialPadEnabled = [v3 isDialPadEnabled];

  if (isDialPadEnabled)
  {
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    if (v7 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10 * 0.1976;
    return roundf(v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___PHInCallNumberPadButton;
    objc_msgSendSuper2(&v13, "outerCircleDiameter");
  }

  return result;
}

+ (double)horizontalPadding
{
  v3 = +[CNKFeatures sharedInstance];
  isDialPadEnabled = [v3 isDialPadEnabled];

  if (isDialPadEnabled)
  {
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    if (v7 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10 + v10 * -0.102 * 2.0;
    [self outerCircleDiameter];
    return (v11 + v12 * -3.0) * 0.25;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___PHInCallNumberPadButton;
    objc_msgSendSuper2(&v14, "horizontalPadding");
  }

  return result;
}

- (id)initForCharacter:(int64_t)character style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = PHInCallNumberPadButton;
  v4 = [(PHInCallNumberPadButton *)&v9 initForCharacter:character style:style];
  v5 = v4;
  if (v4)
  {
    layer = [v4 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [v5 layer];
    [layer2 setAllowsGroupBlending:0];
  }

  return v5;
}

+ (double)unhighlightedCircleViewAlpha
{
  v2 = 1.0;
  if (!+[PHInCallNumberPadButton isUsingGlass])
  {
    v3 = +[PHInCallUtilities sharedInstance];
    if ([v3 isIPadIdiom])
    {
      v2 = 0.100000001;
    }

    else
    {
      v2 = 0.0;
    }
  }

  return v2;
}

+ (BOOL)usesButtonColorMatrixFilters
{
  if (+[PHInCallNumberPadButton isUsingGlass])
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = +[PHInCallUtilities sharedInstance];
    v2 = [v3 isIPadIdiom] ^ 1;
  }

  return v2;
}

+ (BOOL)usesEmergencyCallButtonColorMatrixFilters
{
  v2 = +[CNKFeatures sharedInstance];
  if ([v2 isEnhancedEmergencyEnabled])
  {
    v3 = +[TUCallCenter sharedInstance];
    frontmostCall = [v3 frontmostCall];
    isEmergency = [frontmostCall isEmergency];
  }

  else
  {
    isEmergency = 0;
  }

  return isEmergency;
}

@end