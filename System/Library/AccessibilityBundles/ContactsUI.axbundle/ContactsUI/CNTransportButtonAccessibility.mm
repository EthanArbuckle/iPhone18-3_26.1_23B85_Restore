@interface CNTransportButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (int64_t)_axTransportType;
@end

@implementation CNTransportButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNFaceTimeCell"];
  [validationsCopy validateClass:@"CNTransportButton" hasInstanceMethod:@"transportType" withFullSignature:{"q", 0}];
}

- (int64_t)_axTransportType
{
  v2 = [(CNTransportButtonAccessibility *)self safeValueForKey:@"transportType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsVoiceOverRunning() || _AXSAssistiveTouchScannerEnabled())
  {
    _axTransportType = [(CNTransportButtonAccessibility *)self _axTransportType];
    if (_axTransportType)
    {
      LOBYTE(_axTransportType) = [(CNTransportButtonAccessibility *)self _axTransportType]!= 6;
    }
  }

  else
  {
    LOBYTE(_axTransportType) = 1;
  }

  return _axTransportType;
}

- (id)accessibilityLabel
{
  v3 = [(CNTransportButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  MEMORY[0x29C2D1D40](@"CNFaceTimeCell");
  isKindOfClass = objc_opt_isKindOfClass();
  _axTransportType = [(CNTransportButtonAccessibility *)self _axTransportType];
  v6 = 0;
  if (_axTransportType <= 3)
  {
    switch(_axTransportType)
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

  else if (_axTransportType > 5)
  {
    if (_axTransportType == 6)
    {
      v7 = @"transport.button.medical.id";
    }

    else
    {
      if (_axTransportType != 7)
      {
        goto LABEL_19;
      }

      v7 = @"transport.button.tty";
    }
  }

  else if (_axTransportType == 4)
  {
    v7 = @"transport.button.email";
  }

  else
  {
    v7 = @"transport.button.map";
  }

  v6 = accessibilityLocalizedString(v7);
LABEL_19:
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityValue = [v3 accessibilityValue];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end