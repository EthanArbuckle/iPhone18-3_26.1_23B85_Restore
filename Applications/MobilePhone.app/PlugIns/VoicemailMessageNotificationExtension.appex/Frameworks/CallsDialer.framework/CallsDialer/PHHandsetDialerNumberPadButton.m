@interface PHHandsetDialerNumberPadButton
+ (double)outerCircleDiameter;
+ (double)verticalPadding;
- (id)buttonColor;
@end

@implementation PHHandsetDialerNumberPadButton

+ (double)verticalPadding
{
  if (+[PHUIConfiguration handsetDialerSpacing](PHUIConfiguration, "handsetDialerSpacing") || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasCurrentAudioCalls], v5, v4 = 3.5, (v6 & 1) == 0) && !+[PHUIConfiguration requiresSmallScreenConfig](PHUIConfiguration, "requiresSmallScreenConfig"))
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___PHHandsetDialerNumberPadButton;
    objc_msgSendSuper2(&v8, "verticalPadding");
    return v3;
  }

  return v4;
}

+ (double)outerCircleDiameter
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___PHHandsetDialerNumberPadButton;
  objc_msgSendSuper2(&v6, "outerCircleDiameter");
  v3 = v2;
  if (+[PHUIConfiguration requiresSmallScreenConfig])
  {
    return 67.0;
  }

  if (+[PHInCallUIUtilities hasMultipleSenderIdentities])
  {
    v4 = +[PHUIConfiguration handsetDialerSpacing];
    if (v4 == &dword_0 + 2)
    {
      return 73.0;
    }

    else if (!v4)
    {
      return 70.0;
    }
  }

  return v3;
}

- (id)buttonColor
{
  if ([objc_opt_class() isUsingGlass])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHHandsetDialerNumberPadButton;
    v3 = [(PHHandsetDialerNumberPadButton *)&v5 buttonColor];
  }

  return v3;
}

@end