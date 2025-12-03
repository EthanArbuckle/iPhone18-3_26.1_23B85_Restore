@interface _UILegibilityLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)description;
@end

@implementation _UILegibilityLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UILegibilityLabel" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(_UILegibilityLabelAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return [(_UILegibilityLabelAccessibility *)self _accessibilityViewIsVisible]& 1;
  }

  isAccessibilityUserDefinedElement2 = [(_UILegibilityLabelAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v7.receiver = self;
  v7.super_class = _UILegibilityLabelAccessibility;
  v5 = [(_UILegibilityLabelAccessibility *)&v7 description];
  accessibilityLabel = [(_UILegibilityLabelAccessibility *)selfCopy accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v5, accessibilityLabel];
  MEMORY[0x29EDC9740](accessibilityLabel);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

@end