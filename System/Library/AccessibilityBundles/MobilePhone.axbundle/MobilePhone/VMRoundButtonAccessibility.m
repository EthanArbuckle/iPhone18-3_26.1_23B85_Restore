@interface VMRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)configureButtonUsingAudioRoute:(id)a3;
@end

@implementation VMRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VMRoundButton" hasInstanceVariable:@"_type" withType:"Q"];
  [v3 validateClass:@"VMRoundButton" hasInstanceMethod:@"setButtonType:enabled:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"VMRoundButton" hasInstanceMethod:@"configureButtonUsingAudioRoute:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TURoute" hasProperty:@"name" withType:"@"];
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

- (void)configureButtonUsingAudioRoute:(id)a3
{
  v6.receiver = self;
  v6.super_class = VMRoundButtonAccessibility;
  v4 = a3;
  [(VMRoundButtonAccessibility *)&v6 configureButtonUsingAudioRoute:v4];
  v5 = [v4 safeStringForKey:{@"name", v6.receiver, v6.super_class}];

  [(VMRoundButtonAccessibility *)self setAccessibilityValue:v5];
}

@end