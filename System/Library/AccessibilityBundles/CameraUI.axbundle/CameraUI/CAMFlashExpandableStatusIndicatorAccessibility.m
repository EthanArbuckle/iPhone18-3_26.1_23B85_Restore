@interface CAMFlashExpandableStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_axCurrentFlashValue;
- (id)accessibilityValue;
- (void)_axCurrentFlashValue;
@end

@implementation CAMFlashExpandableStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFlashExpandableStatusIndicator" hasInstanceMethod:@"flashMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMFlashExpandableStatusIndicator" hasInstanceMethod:@"isFlashUnavailable" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  v3 = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  if (v3)
  {
    v4 = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMFlashExpandableStatusIndicatorAccessibility;
    v4 = [(CAMFlashExpandableStatusIndicatorAccessibility *)&v7 accessibilityValue];
  }

  v5 = v4;

  return v5;
}

- (BOOL)accessibilityActivate
{
  v8.receiver = self;
  v8.super_class = CAMFlashExpandableStatusIndicatorAccessibility;
  v3 = [(CAMFlashExpandableStatusIndicatorAccessibility *)&v8 accessibilityActivate];
  v4 = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return v3;
}

- (id)_axCurrentFlashValue
{
  if ([(CAMFlashExpandableStatusIndicatorAccessibility *)self safeBoolForKey:@"isFlashUnavailable"])
  {
    v3 = @"FLASH_MODE_BUTTON_UNAVAILABLE";
LABEL_3:
    v4 = accessibilityCameraKitLocalizedString(v3);
    goto LABEL_4;
  }

  v6 = [(CAMFlashExpandableStatusIndicatorAccessibility *)self safeValueForKey:@"flashMode"];
  v7 = [v6 integerValue];

  switch(v7)
  {
    case 2:
      v3 = @"FLASH_MODE_BUTTON_VALUE_AUTO";
      goto LABEL_3;
    case 1:
      v3 = @"FLASH_MODE_BUTTON_VALUE_ON";
      goto LABEL_3;
    case 0:
      v3 = @"FLASH_MODE_BUTTON_VALUE_OFF";
      goto LABEL_3;
  }

  v8 = AXLogAppAccessibility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CAMFlashExpandableStatusIndicatorAccessibility *)v7 _axCurrentFlashValue];
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (void)_axCurrentFlashValue
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_29BC67000, a2, OS_LOG_TYPE_ERROR, "CAMFlashMode unhandled : %lu", &v2, 0xCu);
}

@end