@interface CNTransportButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (int64_t)_axTransportType;
@end

@implementation CNTransportButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNFaceTimeCell"];
  [v3 validateClass:@"CNTransportButton" hasInstanceMethod:@"transportType" withFullSignature:{"q", 0}];
}

- (int64_t)_axTransportType
{
  v2 = [(CNTransportButtonAccessibility *)self safeValueForKey:@"transportType"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsVoiceOverRunning() || _AXSAssistiveTouchScannerEnabled())
  {
    v3 = [(CNTransportButtonAccessibility *)self _axTransportType];
    if (v3)
    {
      LOBYTE(v3) = [(CNTransportButtonAccessibility *)self _axTransportType]!= 6;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(CNTransportButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  MEMORY[0x29C2D1D40](@"CNFaceTimeCell");
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(CNTransportButtonAccessibility *)self _axTransportType];
  v6 = 0;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        if (isKindOfClass)
        {
          v7 = @"transport.button.phone.facetime";
        }

        else
        {
          v7 = @"transport.button.phone";
        }

        break;
      case 2:
        v7 = @"transport.button.text";
        break;
      case 3:
        v7 = @"transport.button.video";
        break;
      default:
        goto LABEL_19;
    }
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      v7 = @"transport.button.medical.id";
    }

    else
    {
      if (v5 != 7)
      {
        goto LABEL_19;
      }

      v7 = @"transport.button.tty";
    }
  }

  else if (v5 == 4)
  {
    v7 = @"transport.button.email";
  }

  else
  {
    v7 = @"transport.button.map";
  }

  v6 = accessibilityLocalizedString(v7);
LABEL_19:
  v8 = [v3 accessibilityLabel];
  v11 = [v3 accessibilityValue];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end