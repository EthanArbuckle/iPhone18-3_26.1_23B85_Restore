@interface CCUISensorAttributionCompactControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUISensorAttributionCompactControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUISensorAttributionCompactControl" hasInstanceMethod:@"showingCamera" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUISensorAttributionCompactControl" hasInstanceMethod:@"showingLocation" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUISensorAttributionCompactControl" hasInstanceMethod:@"showingMicrophone" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUISensorAttributionCompactControl" hasInstanceMethod:@"setExpanded:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"CCUISensorAttributionCompactControl" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isUserInteractionEnabled" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  v3 = [(CCUISensorAttributionCompactControlAccessibility *)self safeBoolForKey:@"showingCamera"];
  v4 = [(CCUISensorAttributionCompactControlAccessibility *)self safeBoolForKey:@"showingMicrophone"];
  v5 = [(CCUISensorAttributionCompactControlAccessibility *)self safeBoolForKey:@"showingLocation"];
  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v3)
  {
    v10 = accessibilityLocalizedString(@"control.center.camera.used");
    [v6 axSafelyAddObject:v10];

    if (!v4)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v11 = accessibilityLocalizedString(@"control.center.microphone.used");
  [v6 axSafelyAddObject:v11];

  if (v5)
  {
LABEL_4:
    v7 = accessibilityLocalizedString(@"control.center.location.used");
    [v6 axSafelyAddObject:v7];
  }

LABEL_5:
  v8 = MEMORY[0x29C2D22D0](v6);

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CCUISensorAttributionCompactControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CCUISensorAttributionCompactControlAccessibility *)&v3 accessibilityTraits];
}

@end