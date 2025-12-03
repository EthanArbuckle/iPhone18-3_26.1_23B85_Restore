@interface VMRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)configureButtonUsingAudioRoute:(id)route;
@end

@implementation VMRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VMRoundButton" hasInstanceVariable:@"_type" withType:"Q"];
  [validationsCopy validateClass:@"VMRoundButton" hasInstanceMethod:@"setButtonType:enabled:" withFullSignature:{"v", "Q", "B", 0}];
  [validationsCopy validateClass:@"VMRoundButton" hasInstanceMethod:@"configureButtonUsingAudioRoute:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TURoute" hasProperty:@"name" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(VMRoundButtonAccessibility *)self safeUnsignedIntegerForKey:@"_type"]- 1;
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(off_29F2D5C00[v2]);
  }

  return v3;
}

- (void)configureButtonUsingAudioRoute:(id)route
{
  v6.receiver = self;
  v6.super_class = VMRoundButtonAccessibility;
  routeCopy = route;
  [(VMRoundButtonAccessibility *)&v6 configureButtonUsingAudioRoute:routeCopy];
  v5 = [routeCopy safeStringForKey:{@"name", v6.receiver, v6.super_class}];

  [(VMRoundButtonAccessibility *)self setAccessibilityValue:v5];
}

@end