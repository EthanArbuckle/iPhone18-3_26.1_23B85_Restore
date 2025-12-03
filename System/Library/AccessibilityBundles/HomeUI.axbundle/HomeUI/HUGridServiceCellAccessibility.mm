@interface HUGridServiceCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_asIsSensor;
- (id)_axComposedString;
- (id)_axServiceIconDescription;
- (id)_axServiceNameComponents;
- (id)accessibilityIdentifier;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUGridServiceCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HFSensorServiceItem"];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"serviceItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"serviceTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"coloredDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCellTextView" hasInstanceMethod:@"serviceNameComponents" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HFServiceNameComponents" hasInstanceMethod:@"composedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HFServiceNameComponents" hasInstanceMethod:@"serviceName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HFServiceNameComponents" hasInstanceMethod:@"roomName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"accessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUCheckmarkAccessoryView" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"showingProgressIndicator" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUGridServiceCellTextView" hasInstanceMethod:@"_combinedAttributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCellTextView" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"_textConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"accessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"exclamationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"displayStyle" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"HUGridServiceCellTextConfiguration" hasInstanceMethod:@"nameComponents" withFullSignature:{"@", 0}];
}

- (id)_axServiceNameComponents
{
  v2 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"serviceTextView"];
  v3 = [v2 safeValueForKey:@"serviceNameComponents"];

  return v3;
}

- (id)_axServiceIconDescription
{
  v2 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"iconView"];
  v3 = [v2 safeValueForKey:@"iconDescriptor"];
  accessibilityValue = [v3 accessibilityValue];

  return accessibilityValue;
}

- (id)_axComposedString
{
  objc_opt_class();
  _axServiceNameComponents = [(HUGridServiceCellAccessibility *)self _axServiceNameComponents];
  v4 = [_axServiceNameComponents safeValueForKey:@"composedString"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (BOOL)_asIsSensor
{
  v2 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"serviceItem"];
  MEMORY[0x29C2DA460](@"HFSensorServiceItem");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityIdentifier
{
  v3 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"iconView"];
  v4 = [v3 safeIntegerForKey:@"displayStyle"];

  v5 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"_textConfiguration"];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = [v5 safeValueForKeyPath:@"nameComponents.serviceName"];
  v8 = [v5 safeValueForKeyPath:@"nameComponents.roomName"];
  v9 = [(HUGridServiceCellAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v10 = [v6 stringWithFormat:@"%@, %@, %@, %ld", v7, v8, v9, v4];

  return v10;
}

- (id)accessibilityValue
{
  _axServiceIconDescription = [(HUGridServiceCellAccessibility *)self _axServiceIconDescription];
  _axComposedString = [(HUGridServiceCellAccessibility *)self _axComposedString];
  if ([(HUGridServiceCellAccessibility *)self safeBoolForKey:@"showingProgressIndicator"])
  {
    v5 = accessibilityHomeUILocalizedString(@"in.progress");
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"accessoryView"];
  v7 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"exclamationView"];
  v8 = v7;
  if (v6 != v7)
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"accessoryView"];
  _accessibilityViewIsVisible = [v9 _accessibilityViewIsVisible];

  if (!_accessibilityViewIsVisible)
  {
    goto LABEL_8;
  }

  v11 = accessibilityHomeUILocalizedString(@"attention.icon");
LABEL_9:
  v12 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"coloredDescriptionLabel"];
  accessibilityLabel = [v12 accessibilityLabel];
  if ([v12 _accessibilityViewIsVisible] && objc_msgSend(accessibilityLabel, "length"))
  {
    v14 = __UIAXStringForVariables();
  }

  else if ([(HUGridServiceCellAccessibility *)self _asIsSensor])
  {
    v14 = 0;
  }

  else
  {
    v15 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"serviceTextView"];
    v16 = [v15 safeValueForKey:@"descriptionText"];
    if ([v16 length] && (objc_msgSend(v16, "isEqualToString:", _axComposedString) & 1) == 0)
    {
      v14 = __UIAXStringForVariables();
      string = v16;
    }

    else
    {
      v23 = _axComposedString;
      v25 = 0;
      objc_opt_class();
      v17 = [v15 safeValueForKey:@"_combinedAttributedString"];
      v18 = __UIAccessibilityCastAsClass();

      v22 = v18;
      string = [v18 string];

      _axComposedString = v23;
      if ([string length] && (objc_msgSend(string, "isEqualToString:", v23) & 1) == 0)
      {
        v14 = __UIAXStringForVariables();
      }

      else
      {
        v24.receiver = self;
        v24.super_class = HUGridServiceCellAccessibility;
        accessibilityValue = [(HUGridServiceCellAccessibility *)&v24 accessibilityValue];
        v14 = __UIAXStringForVariables();

        _axComposedString = v23;
      }
    }
  }

  return v14;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(HUGridServiceCellAccessibility *)self safeValueForKey:@"accessoryView"];
  MEMORY[0x29C2DA460](@"HUCheckmarkAccessoryView");
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 safeBoolForKey:@"checked"])
  {
    v3 = *MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
  }

  else
  {
    v3 = *MEMORY[0x29EDC7F70];
  }

  return v3;
}

@end