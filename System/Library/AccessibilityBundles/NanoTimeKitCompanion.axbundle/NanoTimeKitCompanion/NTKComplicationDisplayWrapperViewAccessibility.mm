@interface NTKComplicationDisplayWrapperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityUserTestingChildren;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (int64_t)_accessibilityFocusRingStyle;
- (unint64_t)accessibilityTraits;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason animation:(unint64_t)animation;
@end

@implementation NTKComplicationDisplayWrapperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_currentComplicationView" withType:"UIView<CDComplicationDisplay>"];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_template" withType:"CLKComplicationTemplate"];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceVariable:@"_tapEnabled" withType:"B"];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceMethod:@"complicationSlotIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" hasInstanceMethod:@"setComplicationTemplate:reason:animation:" withFullSignature:{"v", "@", "q", "Q", 0}];
  [validationsCopy validateClass:@"NTKComplicationDisplayWrapperView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  isAccessibilityElement = [v4 isAccessibilityElement];

  if (isAccessibilityElement)
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
  _accessibilityUserTestingChildren = [(NTKComplicationDisplayWrapperViewAccessibility *)&v4 _accessibilityUserTestingChildren];

  return _accessibilityUserTestingChildren;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
    accessibilityLabel = [v5 accessibilityLabel];

    if ([accessibilityLabel length])
    {
      accessibilityLabel2 = accessibilityLabel;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = NTKComplicationDisplayWrapperViewAccessibility;
      accessibilityLabel2 = [(NTKComplicationDisplayWrapperViewAccessibility *)&v9 accessibilityLabel];
    }

    accessibilityUserDefinedLabel2 = accessibilityLabel2;
  }

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v7.receiver = self;
  v7.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  accessibilityHint = [(NTKComplicationDisplayWrapperViewAccessibility *)&v7 accessibilityHint];
  if ([accessibilityHint length])
  {
    accessibilityHint2 = accessibilityHint;
  }

  else
  {
    v5 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
    accessibilityHint2 = [v5 accessibilityHint];
  }

  return accessibilityHint2;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  accessibilityTraits = [v4 accessibilityTraits];

  [v3 alpha];
  if (v6 >= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = kAXNotEnabledTrait;
  }

  return v7 | accessibilityTraits;
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
    accessibilityPath = [v3 accessibilityPath];
    if (accessibilityPath || ([(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationPathOverride], (accessibilityPath = objc_claimAutoreleasedReturnValue()) != 0))
    {
      _accessibilityCirclePathBasedOnBoundsWidth = accessibilityPath;

      goto LABEL_10;
    }

    accessibilityComplicationKeylineStyle = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationKeylineStyle];
    v8 = accessibilityComplicationKeylineStyle;
    if (accessibilityComplicationKeylineStyle && [accessibilityComplicationKeylineStyle integerValue] == &dword_0 + 1)
    {
      _accessibilityCirclePathBasedOnBoundsWidth = [v4 _accessibilityCirclePathBasedOnBoundsWidth];

      goto LABEL_10;
    }
  }

  v10.receiver = self;
  v10.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  _accessibilityCirclePathBasedOnBoundsWidth = [(NTKComplicationDisplayWrapperViewAccessibility *)&v10 accessibilityPath];
LABEL_10:

  return _accessibilityCirclePathBasedOnBoundsWidth;
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
      accessibilityActivate = 1;
      [v3 sendActionsForControlEvents:1];
      [v3 sendActionsForControlEvents:64];
    }

    else
    {
      accessibilityActivate = 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKComplicationDisplayWrapperViewAccessibility;
    accessibilityActivate = [(NTKComplicationDisplayWrapperViewAccessibility *)&v6 accessibilityActivate];
  }

  return accessibilityActivate;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  switch(value)
  {
    case 15002:
      accessibilityComplicationSlotIdentifier = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationSlotIdentifier];
      break;
    case 15001:
      accessibilityComplicationSlotIdentifier = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityComplicationIdentifier];
      break;
    case 15000:
      accessibilityComplicationSlotIdentifier = [(NTKComplicationDisplayWrapperViewAccessibility *)self accessibilityFaceIdentifier];
      break;
    default:
      v5.receiver = self;
      v5.super_class = NTKComplicationDisplayWrapperViewAccessibility;
      accessibilityComplicationSlotIdentifier = [(NTKComplicationDisplayWrapperViewAccessibility *)&v5 _iosAccessibilityAttributeValue:?];
      break;
  }

  return accessibilityComplicationSlotIdentifier;
}

- (int64_t)_accessibilityFocusRingStyle
{
  v2 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_currentComplicationView"];
  _accessibilityFocusRingStyle = [v2 _accessibilityFocusRingStyle];

  return _accessibilityFocusRingStyle;
}

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason animation:(unint64_t)animation
{
  templateCopy = template;
  v9 = [(NTKComplicationDisplayWrapperViewAccessibility *)self safeValueForKey:@"_template"];

  v10.receiver = self;
  v10.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  [(NTKComplicationDisplayWrapperViewAccessibility *)&v10 setComplicationTemplate:templateCopy reason:reason animation:animation];
  LODWORD(animation) = UIAccessibilityIsVoiceOverRunning();

  if (animation && v9 != templateCopy && _accessibilityTimeTravelIsActive())
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
      _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];

      return _accessibilityViewIsVisible;
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
    _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

    if (_accessibilityViewIsVisible)
    {
      return 1;
    }
  }

  v6.receiver = self;
  v6.super_class = NTKComplicationDisplayWrapperViewAccessibility;
  return [(NTKComplicationDisplayWrapperViewAccessibility *)&v6 _isEligibleForFocusInteraction];
}

@end