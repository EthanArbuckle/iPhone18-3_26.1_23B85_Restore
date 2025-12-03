@interface UpsellBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UpsellBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.UpsellBannerView" hasInstanceMethod:@"showsAppleMusicLogo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.UpsellBannerView" hasInstanceMethod:@"regularText" withFullSignature:{"@", 0}];
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