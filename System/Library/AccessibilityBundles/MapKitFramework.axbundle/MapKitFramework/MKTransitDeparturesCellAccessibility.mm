@interface MKTransitDeparturesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableTextAccessibleLabel:(id)label;
@end

@implementation MKTransitDeparturesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKTransitDeparturesCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_primaryLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"MKThemeMultiPartLabel"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_secondaryLabel" withType:"MKThemeMultiPartLabel"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_lineImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_showIncidentIcon" withType:"B"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_departureLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_tertiaryLabel" withType:"MKThemeMultiPartLabel"];
}

- (id)tableTextAccessibleLabel:(id)label
{
  v23[2] = *MEMORY[0x29EDCA608];
  labelCopy = label;
  v5 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_lineImageView"];
  accessibilityLabel = [v5 accessibilityLabel];

  if ([(MKTransitDeparturesCellAccessibility *)self _axIsCountdownCell])
  {
    v7 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
    accessibilityLabel2 = [v7 accessibilityLabel];

    v9 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
    accessibilityLabel3 = [v9 accessibilityLabel];

    if ([(MKTransitDeparturesCellAccessibility *)self safeBoolForKey:@"_showIncidentIcon"])
    {
      v11 = AXMapKitLocString(@"HAS_INCIDENT");
    }

    else
    {
      v11 = 0;
    }

    v13 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_departureLabel"];
    accessibilityLabel4 = [v13 accessibilityLabel];

    v15 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
    accessibilityLabel5 = [v15 accessibilityLabel];

    if ([accessibilityLabel4 length] && objc_msgSend(accessibilityLabel5, "length"))
    {
      v23[0] = accessibilityLabel4;
      v23[1] = accessibilityLabel5;
      v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:v23 count:2];
      v18 = [v17 componentsJoinedByString:@" "];
    }

    else
    {
      if ([accessibilityLabel4 length])
      {
        v19 = accessibilityLabel4;
      }

      else
      {
        v19 = accessibilityLabel5;
      }

      v18 = v19;
    }

    v12 = __UIAXStringForVariables();
  }

  else
  {
    v22.receiver = self;
    v22.super_class = MKTransitDeparturesCellAccessibility;
    accessibilityLabel2 = [(MKTransitDeparturesCellAccessibility *)&v22 tableTextAccessibleLabel:labelCopy];
    v12 = __UIAXStringForVariables();
  }

  v20 = *MEMORY[0x29EDCA608];

  return v12;
}

@end