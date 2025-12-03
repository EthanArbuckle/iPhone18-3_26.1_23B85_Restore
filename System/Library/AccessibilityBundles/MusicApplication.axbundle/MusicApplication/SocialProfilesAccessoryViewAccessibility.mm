@interface SocialProfilesAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isTransparentFocusItem;
@end

@implementation SocialProfilesAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.PromotionalImageryView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
}

- (BOOL)isTransparentFocusItem
{
  if (([(SocialProfilesAccessoryViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SocialProfilesAccessoryViewAccessibility;
  return [(SocialProfilesAccessoryViewAccessibility *)&v4 isTransparentFocusItem];
}

@end