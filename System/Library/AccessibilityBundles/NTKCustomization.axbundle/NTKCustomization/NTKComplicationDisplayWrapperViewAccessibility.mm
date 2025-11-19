@interface NTKComplicationDisplayWrapperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityUserTestingChildren;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (int64_t)_accessibilityFocusRingStyle;
- (unint64_t)accessibilityTraits;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4 animation:(unint64_t)a5;
@end

@implementation NTKComplicationDisplayWrapperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_currentComplicationView" withType:"UIView<CDComplicationDisplay>"];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_template" withType:"CLKComplicationTemplate"];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_tapEnabled" withType:"B"];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceMethod:@"complicationSlotIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceMethod:@"setComplicationTemplate:reason:animation:" withFullSignature:{"v", "@", "q", "Q", 0}];
  [v3 validateClass:@"NTKComplicationDisplayWrapperView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  v5 = [v4 isAccessibilityElement];

  if (v5)
  {
    return 1;
  }

  if ([(NTKComplicationDisplayWrapperViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v6 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_template"];
    v3 = v6 != 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKComplicationDisplayWrapperViewAccessibility;
    return [(NTKComplicationDisplayWrapperViewAccessibility *)&v8 isAccessibilityElement];
  }

  return v3;
}

- (id)_accessibilityUserTestingChildren
{
  v4.receiver = self;
  v4.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v4 _accessibilityUserTestingChildren];

  return v2;
}

- (id)accessibilityLabel
{
  v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
    v6 = [v5 accessibilityLabel];

    if ([v6 length])
    {
      v7 = v6;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = NTKComplicationDisplayWrapperViewAccessibility;
      v7 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v9 accessibilityLabel];
    }

    v4 = v7;
  }

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v7.receiver = self;
  v7.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v7 accessibilityHint];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
    v4 = [v5 accessibilityHint];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  v5 = [v4 accessibilityTraits];

  [v3 alpha];
  if (v6 >= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = kAXNotEnabledTrait;
  }

  return v7 | v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityPath
{
  v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityPath];
    if (v5 || ([(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationPathOverride], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;

      goto LABEL_10;
    }

    v7 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationKeylineStyle];
    v8 = v7;
    if (v7 && [v7 integerValue] == &dword_0 + 1)
    {
      v6 = [v4 _accessibilityCirclePathBasedOnBoundsWidth];

      goto LABEL_10;
    }
  }

  v10.receiver = self;
  v10.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  v6 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v10 accessibilityPath];
LABEL_10:

  return v6;
}

- (BOOL)accessibilityActivate
{
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if (v3)
  {
    if ([(NTKComplicationDisplayWrapperViewAccessibility *)self safeBoolForKey:@"_tapEnabled"])
    {
      v4 = 1;
      [v3 sendActionsForControlEvents:1];
      [v3 sendActionsForControlEvents:64];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKComplicationDisplayWrapperViewAccessibility;
    v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v6 accessibilityActivate];
  }

  return v4;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  switch(a3)
  {
    case 15002:
      v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationSlotIdentifier];
      break;
    case 15001:
      v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationIdentifier];
      break;
    case 15000:
      v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityFaceIdentifier];
      break;
    default:
      v5.receiver = self;
      v5.super_class = NTKComplicationDisplayWrapperViewAccessibility;
      v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v5 _iosAccessibilityAttributeValue:?];
      break;
  }

  return v3;
}

- (int64_t)_accessibilityFocusRingStyle
{
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  v3 = [v2 _accessibilityFocusRingStyle];

  return v3;
}

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4 animation:(unint64_t)a5
{
  v8 = a3;
  v9 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_template"];

  v10.receiver = self;
  v10.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  [(NTKComplicationDisplayWrapperViewAccessibility *)&v10 setComplicationTemplate:v8 reason:a4 animation:a5];
  LODWORD(a5) = UIAccessibilityIsVoiceOverRunning();

  if (a5 && v9 != v8 && _accessibilityTimeTravelIsActive())
  {
    if ([(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityElementIsFocused])
    {
      AudioServicesPlaySystemSound(0x5F2u);
    }
  }
}

- (BOOL)canBecomeFocused
{
  if ([(NTKComplicationDisplayWrapperViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    if ([(NTKComplicationDisplayWrapperViewAccessibility *)self isAccessibilityElement])
    {
      return 1;
    }

    else
    {
      v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeUIViewForKey:@"_currentComplicationView"];
      v5 = [v4 _accessibilityViewIsVisible];

      return v5;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKComplicationDisplayWrapperViewAccessibility;
    return [(NTKComplicationDisplayWrapperViewAccessibility *)&v6 canBecomeFocused];
  }
}

- (BOOL)_isEligibleForFocusInteraction
{
  if ([(NTKComplicationDisplayWrapperViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeUIViewForKey:@"_currentComplicationView"];
    v4 = [v3 _accessibilityViewIsVisible];

    if (v4)
    {
      return 1;
    }
  }

  v6.receiver = self;
  v6.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  return [(NTKComplicationDisplayWrapperViewAccessibility *)&v6 _isEligibleForFocusInteraction];
}

@end