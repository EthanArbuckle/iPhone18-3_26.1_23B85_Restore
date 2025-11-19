@interface MKTransitDeparturesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableTextAccessibleLabel:(id)a3;
@end

@implementation MKTransitDeparturesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKTransitDeparturesCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_primaryLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MKThemeMultiPartLabel"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_secondaryLabel" withType:"MKThemeMultiPartLabel"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_lineImageView" withType:"UIImageView"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_showIncidentIcon" withType:"B"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_departureLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MKTransitDeparturesCell" hasInstanceVariable:@"_tertiaryLabel" withType:"MKThemeMultiPartLabel"];
}

- (id)tableTextAccessibleLabel:(id)a3
{
  v23[2] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_lineImageView"];
  v6 = [v5 accessibilityLabel];

  if ([(MKTransitDeparturesCellAccessibility *)self _axIsCountdownCell])
  {
    v7 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
    v8 = [v7 accessibilityLabel];

    v9 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
    v10 = [v9 accessibilityLabel];

    if ([(MKTransitDeparturesCellAccessibility *)self safeBoolForKey:@"_showIncidentIcon"])
    {
      v11 = AXMapKitLocString(@"HAS_INCIDENT");
    }

    else
    {
      v11 = 0;
    }

    v13 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_departureLabel"];
    v14 = [v13 accessibilityLabel];

    v15 = [(MKTransitDeparturesCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
    v16 = [v15 accessibilityLabel];

    if ([v14 length] && objc_msgSend(v16, "length"))
    {
      v23[0] = v14;
      v23[1] = v16;
      v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:v23 count:2];
      v18 = [v17 componentsJoinedByString:@" "];
    }

    else
    {
      if ([v14 length])
      {
        v19 = v14;
      }

      else
      {
        v19 = v16;
      }

      v18 = v19;
    }

    v12 = __UIAXStringForVariables();
  }

  else
  {
    v22.receiver = self;
    v22.super_class = MKTransitDeparturesCellAccessibility;
    v8 = [(MKTransitDeparturesCellAccessibility *)&v22 tableTextAccessibleLabel:v4];
    v12 = __UIAXStringForVariables();
  }

  v20 = *MEMORY[0x29EDCA608];

  return v12;
}

@end