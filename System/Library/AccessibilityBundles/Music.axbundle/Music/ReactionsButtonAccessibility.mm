@interface ReactionsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation ReactionsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"reactionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TtCE5MusicO11MusicCoreUI9Reactions7Control" hasSwiftField:@"context" withSwiftType:"Context"];
  [validationsCopy validateSwiftEnum:@"MusicCoreUI.Reactions"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(ReactionsButtonAccessibility *)self safeSwiftValueForKey:@"context"];
  v4 = [v3 safeSwiftArrayForKey:@"reactions"];
  firstObject = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  reactionText = [v6 reactionText];

  return reactionText;
}

@end