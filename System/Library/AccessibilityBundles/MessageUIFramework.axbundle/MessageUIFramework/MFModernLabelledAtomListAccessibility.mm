@interface MFModernLabelledAtomListAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisString;
- (id)accessibilityElements;
@end

@implementation MFModernLabelledAtomListAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFModernLabelledAtomList" hasInstanceMethod:@"labelText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFModernLabelledAtomList" hasInstanceMethod:@"atomDisplayStrings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFModernLabelledAtomList" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakThisString
{
  v3 = [(MFModernLabelledAtomListAccessibility *)self safeValueForKey:@"labelText"];
  v4 = [(MFModernLabelledAtomListAccessibility *)self safeValueForKey:@"atomDisplayStrings"];
  v5 = __UIAccessibilitySafeClass();

  v8 = [v5 componentsJoinedByString:{@", "}];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];
  v4 = [subviews mutableCopy];

  v5 = [v2 safeUIViewForKey:@"label"];
  if (v5)
  {
    v6 = [v4 indexOfObject:v5];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v6];
      [v4 insertObject:v5 atIndex:0];
    }
  }

  return v4;
}

@end