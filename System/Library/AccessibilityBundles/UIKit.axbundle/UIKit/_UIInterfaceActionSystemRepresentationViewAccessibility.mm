@interface _UIInterfaceActionSystemRepresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIInterfaceActionSystemRepresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIInterfaceActionSystemRepresentationView" hasInstanceVariable:@"_labelsView" withType:"_UIInterfaceActionLabelsPropertyView"];
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"_UIInterfaceActionLabelsPropertyView" hasInstanceVariable:@"_classificationLabel" withType:"UILabel"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v9[1] = a2;
  v6 = [(_UIInterfaceActionSystemRepresentationViewAccessibility *)self safeValueForKey:?];
  v9[0] = [v6 safeValueForKey:@"_titleLabel"];
  v7 = [(_UIInterfaceActionSystemRepresentationViewAccessibility *)selfCopy safeValueForKey:@"_labelsView", MEMORY[0x29EDC9740](v6).n128_f64[0]];
  location = [v7 safeValueForKey:@"_classificationLabel"];
  if (([location _accessibilityViewIsVisible] & 1) == 0)
  {
    objc_storeStrong(&location, 0);
  }

  accessibilityLabel = [v9[0] accessibilityLabel];
  accessibilityLabel2 = [location accessibilityLabel];
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](accessibilityLabel2);
  MEMORY[0x29EDC9740](accessibilityLabel);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

@end