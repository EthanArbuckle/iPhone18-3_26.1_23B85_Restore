@interface UpsellBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UpsellBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.UpsellBannerView" hasInstanceMethod:@"showsAppleMusicLogo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.UpsellBannerView" hasInstanceMethod:@"regularText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(UpsellBannerViewAccessibility *)self safeBoolForKey:@"showsAppleMusicLogo"];
  objc_opt_class();
  v4 = [(UpsellBannerViewAccessibility *)self safeValueForKey:@"regularText"];
  v5 = __UIAccessibilityCastAsClass();

  if (v3)
  {
    v6 = accessibilityMusicLocalizedString(@"apple.music");
    v7 = __UIAXStringForVariables();
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end