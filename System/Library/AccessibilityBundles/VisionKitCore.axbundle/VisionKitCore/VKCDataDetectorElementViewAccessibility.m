@interface VKCDataDetectorElementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsDataDetectorOfType:(unint64_t)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)accessibilityLabel;
@end

@implementation VKCDataDetectorElementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKCDataDetectorElementView" hasInstanceMethod:@"dataDetectorElement" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCDataDetectorElementView" hasInstanceMethod:@"allowLongPressDDActivationOnly" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VKCTextDataDetectorElement" isKindOfClass:@"VKCBaseDataDetectorElement"];
  [v3 validateClass:@"VKCBaseDataDetectorElement" hasInstanceMethod:@"scannerResult" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCTextDataDetectorElement" hasInstanceMethod:@"dataDetectorTypes" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"DDScannerResult" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(VKCDataDetectorElementViewAccessibility *)self safeValueForKeyPath:@"dataDetectorElement.scannerResult"];
  v3 = [v2 safeStringForKey:@"value"];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = accessibilityLocalizedString(@"detected.data.element");
  [v3 axSafelyAddObject:v4];

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:1])
  {
    v5 = @"phone.number";
LABEL_25:
    v6 = accessibilityLocalizedString(v5);
    [v3 axSafelyAddObject:v6];

    goto LABEL_26;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:2])
  {
    v5 = @"address";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:4])
  {
    v5 = @"calendar.event";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:8])
  {
    v5 = @"shipment.tracking";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:16])
  {
    v5 = @"flight.number";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:32])
  {
    v5 = @"lookup.suggestion";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:64])
  {
    v5 = @"web.url";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:128])
  {
    v5 = @"mail.url";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:256])
  {
    v5 = @"url";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:512])
  {
    v5 = @"email";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:0x200000])
  {
    v5 = @"mr.code";
    goto LABEL_25;
  }

  if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:0x400000])
  {
    v5 = @"app.code";
    goto LABEL_25;
  }

  if (![(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:1024])
  {
    if ([(VKCDataDetectorElementViewAccessibility *)self _axIsDataDetectorOfType:2048])
    {
      v5 = @"money";
      goto LABEL_25;
    }

    v9 = AXLogAppAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(VKCDataDetectorElementViewAccessibility *)self accessibilityLabel];
    }
  }

LABEL_26:
  v7 = MEMORY[0x29ED40430](v3);

  return v7;
}

- (BOOL)_axIsDataDetectorOfType:(unint64_t)a3
{
  v4 = [(VKCDataDetectorElementViewAccessibility *)self safeValueForKey:@"dataDetectorElement"];
  v5 = [v4 safeUnsignedIntegerForKey:@"dataDetectorTypes"];

  return (a3 & ~v5) == 0;
}

- (void)accessibilityLabel
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = [a1 safeValueForKey:@"dataDetectorElement"];
  v5 = 134217984;
  v6 = [v3 safeUnsignedIntegerForKey:@"dataDetectorTypes"];
  _os_log_error_impl(&dword_29C768000, a2, OS_LOG_TYPE_ERROR, "Detector type : %lu should be included in accessibility label", &v5, 0xCu);

  v4 = *MEMORY[0x29EDCA608];
}

@end