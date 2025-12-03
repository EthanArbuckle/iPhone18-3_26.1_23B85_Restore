@interface CAMFlashExpandableStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_axCurrentFlashValue;
- (id)accessibilityValue;
- (void)_axCurrentFlashValue;
@end

@implementation CAMFlashExpandableStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMFlashExpandableStatusIndicator" hasInstanceMethod:@"flashMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMFlashExpandableStatusIndicator" hasInstanceMethod:@"isFlashUnavailable" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  _axCurrentFlashValue = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  if (_axCurrentFlashValue)
  {
    _axCurrentFlashValue2 = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMFlashExpandableStatusIndicatorAccessibility;
    _axCurrentFlashValue2 = [(CAMFlashExpandableStatusIndicatorAccessibility *)&v7 accessibilityValue];
  }

  v5 = _axCurrentFlashValue2;

  return v5;
}

- (BOOL)accessibilityActivate
{
  v8.receiver = self;
  v8.super_class = CAMFlashExpandableStatusIndicatorAccessibility;
  accessibilityActivate = [(CAMFlashExpandableStatusIndicatorAccessibility *)&v8 accessibilityActivate];
  _axCurrentFlashValue = [(CAMFlashExpandableStatusIndicatorAccessibility *)self _axCurrentFlashValue];
  v5 = _axCurrentFlashValue;
  if (_axCurrentFlashValue)
  {
    v7 = _axCurrentFlashValue;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return accessibilityActivate;
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
  integerValue = [v6 integerValue];

  switch(integerValue)
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
    [(CAMFlashExpandableStatusIndicatorAccessibility *)integerValue _axCurrentFlashValue];
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (void)_axCurrentFlashValue
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_29BC67000, a2, OS_LOG_TYPE_ERROR, "CAMFlashMode unhandled : %lu", &v2, 0xCu);
}

@end