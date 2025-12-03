@interface NowPlayingRouteSharePlayTogetherControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation NowPlayingRouteSharePlayTogetherControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.NowPlayingRouteSharePlayTogetherControl" hasSwiftField:@"sharePlayTogetherButton" withSwiftType:"UIButton"];
  [validationsCopy validateClass:@"Music.NowPlayingRouteSharePlayTogetherControl" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = NowPlayingRouteSharePlayTogetherControlAccessibility;
  [(NowPlayingRouteSharePlayTogetherControlAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v11 = 0;
  objc_opt_class();
  v3 = [(NowPlayingRouteSharePlayTogetherControlAccessibility *)self safeSwiftValueForKey:@"sharePlayTogetherButton"];
  v4 = __UIAccessibilityCastAsClass();

  configuration = [v4 configuration];
  title = [configuration title];

  v7 = accessibilityMusicLocalizedString(@"shareplay");
  [v4 setAccessibilityLabel:v7];

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __98__NowPlayingRouteSharePlayTogetherControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &unk_29F2DC728;
  v10 = title;
  v8 = title;
  [v4 setAccessibilityValueBlock:v9];
}

id __98__NowPlayingRouteSharePlayTogetherControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) integerValue])
  {
    v2 = accessibilityMusicLocalizedString(@"PARTICIPANT_COUNT");
    [*(a1 + 32) integerValue];
    v3 = AXCFormattedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NowPlayingRouteSharePlayTogetherControlAccessibility;
  [(NowPlayingRouteSharePlayTogetherControlAccessibility *)&v3 layoutSubviews];
  [(NowPlayingRouteSharePlayTogetherControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end