@interface _SFNavigationBarURLButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrame:(id)frame;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)label;
- (id)accessibilityValue:(id)value;
@end

@implementation _SFNavigationBarURLButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_progressView" withType:"_SFFluidProgressView"];
  [validationsCopy validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_URLLabel" withType:"SFURLLabel"];
  [validationsCopy validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_URLOutline" withType:"_SFNavigationBarURLButton"];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceVariable:@"_state" withType:"WBSFluidProgressState"];
  [validationsCopy validateClass:@"_SFNavigationBarURLButton" isKindOfClass:@"UIButton"];
}

- (id)accessibilityLabel:(id)label
{
  v3 = [(_SFNavigationBarURLButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar", a2, label)];
  v4 = [v3 safeValueForKey:@"_URLOutline"];
  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame:(id)frame
{
  frameCopy = frame;
  v5 = [(_SFNavigationBarURLButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar")];
  objc_opt_class();
  v6 = [v5 safeValueForKey:@"_URLLabel"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 accessibilityFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)accessibilityValue:(id)value
{
  v3 = [(_SFNavigationBarURLButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar", a2, value)];
  v4 = [v3 safeValueForKey:@"_progressView"];
  v5 = [v4 safeValueForKey:@"_state"];
  v6 = [v5 safeValueForKey:@"fluidProgressValue"];
  [v6 floatValue];
  v8 = v7;

  v9 = 0;
  if (v8 < 1.0 && v8 > 0.0)
  {
    v9 = AXFormatFloatWithPercentage();
  }

  v10 = [v3 safeValueForKey:@"_URLOutline"];
  accessibilityValue = [v10 accessibilityValue];
  v11 = __UIAXStringForVariables();

  return v11;
}

- (id)accessibilityElements
{
  v15[1] = *MEMORY[0x29EDCA608];
  if ([(_SFNavigationBarURLButtonAccessibility *)self isUserInteractionEnabled])
  {
    v3 = MEMORY[0x29EDC7620];
    array = [(_SFNavigationBarURLButtonAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
      [v5 setAccessibilityDelegate:self];
      accessibilityIdentifier = [(_SFNavigationBarURLButtonAccessibility *)self accessibilityIdentifier];
      [v5 setAccessibilityIdentifier:accessibilityIdentifier];

      objc_opt_class();
      v7 = __UIAccessibilityCastAsClass();
      v8 = objc_alloc(MEMORY[0x29EDC7900]);
      v9 = accessibilitySafariServicesLocalizedString(@"drop.onto.address.bar");
      v10 = [v8 initWithName:v9 view:v7];

      v15[0] = v10;
      v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];
      [v5 setAccessibilityDropPointDescriptors:v11];

      [array addObject:v5];
      [(_SFNavigationBarURLButtonAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
    }

    v12 = [array mutableCopy];

    v13 = [(_SFNavigationBarURLButtonAccessibility *)self safeValueForKey:@"_accessibleSubviews"];
    [v12 addObjectsFromArray:v13];
    [v12 sortUsingSelector:sel_accessibilityCompareGeometry_];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)accessibilityFrame
{
  [(_SFNavigationBarURLButtonAccessibility *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (AXRequestingClient() && AXRequestingClient() != 10)
  {
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    *v11.n128_u64 = CGRectInset(v20, 10.0, 0.0);
    v4 = v11.n128_f64[0];
    v6 = v12.n128_f64[0];
    v8 = v13.n128_f64[0];
    v10 = v14.n128_f64[0];
  }

  v11.n128_f64[0] = v4;
  v12.n128_f64[0] = v6;
  v13.n128_f64[0] = v8;
  v14.n128_f64[0] = v10;

  MEMORY[0x2A1C69F48](self, v11, v12, v13, v14);
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end