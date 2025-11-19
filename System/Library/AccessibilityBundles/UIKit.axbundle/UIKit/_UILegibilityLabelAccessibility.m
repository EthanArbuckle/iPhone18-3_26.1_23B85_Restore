@interface _UILegibilityLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)description;
@end

@implementation _UILegibilityLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UILegibilityLabel" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  v5 = [(_UILegibilityLabelAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return [(_UILegibilityLabelAccessibility *)self _accessibilityViewIsVisible]& 1;
  }

  v4 = [(_UILegibilityLabelAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v7.receiver = self;
  v7.super_class = _UILegibilityLabelAccessibility;
  v5 = [(_UILegibilityLabelAccessibility *)&v7 description];
  v4 = [(_UILegibilityLabelAccessibility *)v9 accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v5, v4];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

@end