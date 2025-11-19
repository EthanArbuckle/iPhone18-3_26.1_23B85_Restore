@interface IMConfigurationPredicate
+ (IMConfigurationPredicate)predicateWithBlock:(id)a3;
+ (IMConfigurationPredicate)predicateWithTraitCollection:(id)a3;
+ (id)OSXPredicate;
+ (id)compactHeightPredicate;
+ (id)compactWidthPredicate;
+ (id)defaultPredicate;
+ (id)falsePredicate;
+ (id)iOSPredicate;
+ (id)iPad10SizeClassPredicate;
+ (id)iPadOtherSizeClassPredicate;
+ (id)iPadSizeClassPredicate;
+ (id)landscapePredicate;
+ (id)largePhoneSizeClassPredicate;
+ (id)megaPadPortraitOneHalfExactSizePredicate;
+ (id)megaPadPortraitOneThirdExactSizePredicate;
+ (id)megaPadPortraitThreeFifthsExactSizePredicate;
+ (id)megaPadPortraitTwoFifthsExactSizePredicate;
+ (id)megaPadPortraitTwoThirdsExactSizePredicate;
+ (id)megaPadSizeClassPredicate;
+ (id)megaPhoneSizeClassPredicate;
+ (id)phoneSizeClassPredicate;
+ (id)portraitPredicate;
+ (id)proMaxPhoneLandscapeExactSizePredicate;
+ (id)readingModeHorizontalScrollPredicate;
+ (id)readingModePagedPredicate;
+ (id)readingModeVerticalScrollPredicate;
+ (id)regularHeightPredicate;
+ (id)regularWidthPredicate;
+ (id)superMegaPhoneLandscapeExactSizePredicate;
+ (id)superMegaPhonePortraitExactSizePredicate;
+ (id)superPhoneLandscapeExactSizePredicate;
+ (id)superPhonePortraitExactSizePredicate;
+ (id)tallPhoneSizeClassPredicate;
+ (id)truePredicate;
- (BOOL)evaluateWithContext:(id)a3;
- (IMConfigurationPredicate)init;
- (id)description;
@end

@implementation IMConfigurationPredicate

+ (id)phoneSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:320.0, 480.0];
  [v2 setDebugIdentifier:@"iPhone Display Class Size"];

  return v2;
}

+ (id)tallPhoneSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:320.0, 568.0];
  [v2 setDebugIdentifier:@"iPhone Display Class Size"];

  return v2;
}

+ (id)largePhoneSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:375.0, 667.0];
  [v2 setDebugIdentifier:@"largePhone Display Class Size"];

  return v2;
}

+ (id)megaPhoneSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:414.0, 736.0];
  [v2 setDebugIdentifier:@"megaPhone Display Class Size"];

  return v2;
}

+ (id)superPhonePortraitExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:375.0, 812.0];
  [v2 setDebugIdentifier:@"superPhone Portrait Size"];

  return v2;
}

+ (id)superPhoneLandscapeExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:812.0, 375.0];
  [v2 setDebugIdentifier:@"superPhone Landscape Size"];

  return v2;
}

+ (id)superMegaPhonePortraitExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:414.0, 896.0];
  [v2 setDebugIdentifier:@"superMegaPhone Portrait Size"];

  return v2;
}

+ (id)superMegaPhoneLandscapeExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:896.0, 414.0];
  [v2 setDebugIdentifier:@"superMegaPhone Landscape Size"];

  return v2;
}

+ (id)proMaxPhoneLandscapeExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:926.0, 428.0];
  [v2 setDebugIdentifier:@"proMaxPhone Landscape Size"];

  return v2;
}

+ (id)iPadSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:768.0, 1024.0];
  [v2 setDebugIdentifier:@"iPad Display Class Size"];

  return v2;
}

+ (id)iPad10SizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:834.0, 1112.0];
  [v2 setDebugIdentifier:@"iPad10 Display Class Size"];

  return v2;
}

+ (id)iPadOtherSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:834.0, 1194.0];
  [v2 setDebugIdentifier:@"iPad Other Display Class Size"];

  return v2;
}

+ (id)megaPadSizeClassPredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForDisplayClassSize:1024.0, 1366.0];
  [v2 setDebugIdentifier:@"megaPad Display Class Size"];

  return v2;
}

+ (id)megaPadPortraitOneThirdExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:375.0, 1024.0];
  [v2 setDebugIdentifier:@"megaPad Portrait One Third Size"];

  return v2;
}

+ (id)megaPadPortraitOneHalfExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:678.0, 1024.0];
  [v2 setDebugIdentifier:@"megaPad Portrait One Half Size"];

  return v2;
}

+ (id)megaPadPortraitTwoThirdsExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:981.0, 1024.0];
  [v2 setDebugIdentifier:@"megaPad Portrait Two Thirds Size"];

  return v2;
}

+ (id)megaPadPortraitTwoFifthsExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:375.0, 1366.0];
  [v2 setDebugIdentifier:@"megaPad Portrait Two Fifths Size"];

  return v2;
}

+ (id)megaPadPortraitThreeFifthsExactSizePredicate
{
  v2 = [IMSizeConfigurationPredicate predicateForExactSize:639.0, 1366.0];
  [v2 setDebugIdentifier:@"megaPad Portrait Three Fifths Size"];

  return v2;
}

+ (id)portraitPredicate
{
  v2 = +[IMOrientationConfigurationPredicate portraitPredicate];
  [v2 setDebugIdentifier:@"Portrait"];

  return v2;
}

+ (id)landscapePredicate
{
  v2 = +[IMOrientationConfigurationPredicate landscapePredicate];
  [v2 setDebugIdentifier:@"Landscape"];

  return v2;
}

+ (IMConfigurationPredicate)predicateWithBlock:(id)a3
{
  v3 = [IMBlockConfigurationPredicate predicateWithBlock:a3];
  [v3 setDebugIdentifier:@"block"];

  return v3;
}

+ (IMConfigurationPredicate)predicateWithTraitCollection:(id)a3
{
  v3 = [IMTraitCollectionConfigurationPredicate predicateWithTraitCollection:a3];
  [v3 setDebugIdentifier:@"traitCollection"];

  return v3;
}

+ (id)compactWidthPredicate
{
  v2 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];

  [v3 setDebugIdentifier:@"Compact Width"];

  return v3;
}

+ (id)regularWidthPredicate
{
  v2 = [UITraitCollection traitCollectionWithHorizontalSizeClass:2];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];

  [v3 setDebugIdentifier:@"Regular Width"];

  return v3;
}

+ (id)compactHeightPredicate
{
  v2 = [UITraitCollection traitCollectionWithVerticalSizeClass:1];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];

  [v3 setDebugIdentifier:@"Compact Height"];

  return v3;
}

+ (id)regularHeightPredicate
{
  v2 = [UITraitCollection traitCollectionWithVerticalSizeClass:2];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];

  [v3 setDebugIdentifier:@"Regular Height"];

  return v3;
}

+ (id)iOSPredicate
{
  v2 = +[IMOSConfigurationPredicate iOSPredicate];
  [v2 setDebugIdentifier:@"iOS"];

  return v2;
}

+ (id)OSXPredicate
{
  v2 = +[IMOSConfigurationPredicate OSXPredicate];
  [v2 setDebugIdentifier:@"OSX"];

  return v2;
}

+ (id)truePredicate
{
  v2 = [IMBoolValueConfigurationPredicate predicateWithValue:1];
  [v2 setDebugIdentifier:@"TRUE"];

  return v2;
}

+ (id)falsePredicate
{
  v2 = [IMBoolValueConfigurationPredicate predicateWithValue:0];
  [v2 setDebugIdentifier:@"FALSE"];

  return v2;
}

+ (id)defaultPredicate
{
  v2 = [IMBoolValueConfigurationPredicate predicateWithValue:1];
  [v2 setDebugIdentifier:@"DEFAULT"];

  return v2;
}

- (IMConfigurationPredicate)init
{
  v3.receiver = self;
  v3.super_class = IMConfigurationPredicate;
  result = [(IMConfigurationPredicate *)&v3 init];
  if (result)
  {
    result->_score = 1;
  }

  return result;
}

- (id)description
{
  v2 = [(IMConfigurationPredicate *)self debugIdentifier];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

- (BOOL)evaluateWithContext:(id)a3
{
  v3 = BCIMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[IMConfigurationPredicate evaluateWithContext:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/Configuration/IMConfigurationPredicate.m";
    v10 = 1024;
    v11 = 290;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s %s:%d", &v6, 0x1Cu);
  }

  v4 = BCIMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "@This is an abstract method", &v6, 2u);
  }

  return 0;
}

+ (id)readingModePagedPredicate
{
  v2 = [UITraitCollection bk_traitCollectionWithReadingMode:1];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];
  [v3 setDebugIdentifier:@"Reading Mode Paged"];

  return v3;
}

+ (id)readingModeVerticalScrollPredicate
{
  v2 = [UITraitCollection bk_traitCollectionWithReadingMode:2];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];
  [v3 setDebugIdentifier:@"Reading Mode Vertical Scroll"];

  return v3;
}

+ (id)readingModeHorizontalScrollPredicate
{
  v2 = [UITraitCollection bk_traitCollectionWithReadingMode:3];
  v3 = [IMConfigurationPredicate predicateWithTraitCollection:v2];
  [v3 setDebugIdentifier:@"Reading Mode Horizontal Scroll"];

  return v3;
}

@end