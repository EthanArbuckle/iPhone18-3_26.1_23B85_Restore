@interface TVRUITouchpadViewAccessibility
- (BOOL)_accessibilityIsDirectTouching;
- (BOOL)accessibilityActivate;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityFocusChanged:(id)changed;
@end

@implementation TVRUITouchpadViewAccessibility

- (BOOL)accessibilityActivate
{
  [(TVRUITouchpadViewAccessibility *)self _accessibilitySetIsDirectTouching:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];

  v4 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v5 = accessibilityLocalizedString(@"tv.remote.touchpad.start.interaction");
  v6 = [v4 initWithStringOrAttributedString:v5];

  [v6 setAttribute:&unk_2A2343AE8 forKey:*MEMORY[0x29EDBD860]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);

  return 1;
}

- (unint64_t)accessibilityTraits
{
  v3 = MEMORY[0x29EDC7FA0];
  if (!UIAccessibilityIsSwitchControlRunning() && [(TVRUITouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v3 = MEMORY[0x29EDC7F68];
  }

  return *v3;
}

- (id)accessibilityLabel
{
  if ([(TVRUITouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v5.receiver = self;
    v5.super_class = TVRUITouchpadViewAccessibility;
    accessibilityLabel = [(TVRUITouchpadViewAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"tv.remote.touchpad.view");
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(TVRUITouchpadViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v5.receiver = self;
    v5.super_class = TVRUITouchpadViewAccessibility;
    accessibilityHint = [(TVRUITouchpadViewAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"tv.remote.touchpad.hint");
  }

  return accessibilityHint;
}

- (void)_accessibilityFocusChanged:(id)changed
{
  [(TVRUITouchpadViewAccessibility *)self _accessibilitySetIsDirectTouching:0];
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
  v2 = objc_getAssociatedObject(self, &isDirectTouching_0);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end