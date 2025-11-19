@interface ReactionsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation ReactionsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"reactionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TtCE5MusicO11MusicCoreUI9Reactions7Control" hasSwiftField:@"context" withSwiftType:"Context"];
  [v3 validateSwiftEnum:@"MusicCoreUI.Reactions"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(ReactionsButtonAccessibility *)self safeSwiftValueForKey:@"context"];
  v4 = [v3 safeSwiftArrayForKey:@"reactions"];
  v5 = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 reactionText];

  return v7;
}

@end