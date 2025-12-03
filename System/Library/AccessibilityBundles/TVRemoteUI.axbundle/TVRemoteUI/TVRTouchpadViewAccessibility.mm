@interface TVRTouchpadViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsDirectTouching;
- (BOOL)_accessibilityIsMatchPoint;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityFocusChanged:(id)changed;
@end

@implementation TVRTouchpadViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRTouchpadView" hasInstanceMethod:@"touchProcessor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRMatchPointTouchProcessor"];
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  else
  {
    return ![(TVRTouchpadViewAccessibility *)self _accessibilityIsMatchPoint];
  }
}

- (BOOL)accessibilityActivate
{
  [(TVRTouchpadViewAccessibility *)self _accessibilitySetIsDirectTouching:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];

  v4 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v5 = accessibilityLocalizedString(@"tv.remote.touchpad.start.interaction");
  v6 = [v4 initWithStringOrAttributedString:v5];

  [v6 setAttribute:&unk_2A2343AD0 forKey:*MEMORY[0x29EDBD860]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);

  return 1;
}

- (unint64_t)accessibilityTraits
{
  v3 = MEMORY[0x29EDC7FA0];
  if (!UIAccessibilityIsSwitchControlRunning() && [(TVRTouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v3 = MEMORY[0x29EDC7F68];
  }

  return *v3;
}

- (id)accessibilityLabel
{
  if ([(TVRTouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v5.receiver = self;
    v5.super_class = TVRTouchpadViewAccessibility;
    accessibilityLabel = [(TVRTouchpadViewAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"tv.remote.touchpad.view");
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(TVRTouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v5.receiver = self;
    v5.super_class = TVRTouchpadViewAccessibility;
    accessibilityHint = [(TVRTouchpadViewAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"tv.remote.touchpad.hint");
  }

  return accessibilityHint;
}

- (BOOL)_accessibilityIsMatchPoint
{
  v2 = [(TVRTouchpadViewAccessibility *)self safeValueForKey:@"touchProcessor"];
  NSClassFromString(&cfstr_Tvrmatchpointt.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_accessibilityFocusChanged:(id)changed
{
  [(TVRTouchpadViewAccessibility *)self _accessibilitySetIsDirectTouching:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v4 = MEMORY[0x29EDBD7E8];
  v5 = accessibilityLocalizedString(@"tv.remote.touchpad.stopped.interaction");
  argument = [v4 axAttributedStringWithString:v5];

  [argument setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC7EB8] object:0];
}

- (BOOL)_accessibilityIsDirectTouching
{
  v2 = objc_getAssociatedObject(self, &isDirectTouching);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end