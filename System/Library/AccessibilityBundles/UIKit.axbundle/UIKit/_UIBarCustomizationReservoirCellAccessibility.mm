@interface _UIBarCustomizationReservoirCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAllDragSourceDescriptors;
- (id)_accessibilityAllDropPointDescriptors;
@end

@implementation _UIBarCustomizationReservoirCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIBarCustomizationContainerView"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAllDragSourceDescriptors
{
  v22[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v20 = a2;
  [(_UIBarCustomizationReservoirCellAccessibility *)self bounds];
  v19 = v24;
  MidX = CGRectGetMidX(v24);
  CGRectGetMidY(v19);
  CGPointMake();
  *&v18 = v2;
  *(&v18 + 1) = v3;
  v17 = [(_UIBarCustomizationReservoirCellAccessibility *)selfCopy _accessibilityFindViewAncestor:&__block_literal_global_7 startWithSelf:1];
  [(_UIBarCustomizationReservoirCellAccessibility *)selfCopy convertPoint:v17 toView:v18];
  *&v16 = v4;
  *(&v16 + 1) = v5;
  v18 = v16;
  v10 = objc_alloc(MEMORY[0x29EDC7900]);
  v9 = MEMORY[0x29EDBA0F8];
  v13 = UIKitAccessibilityLocalizedString();
  accessibilityLabel = [(_UIBarCustomizationReservoirCellAccessibility *)selfCopy accessibilityLabel];
  v11 = [v9 localizedStringWithFormat:v13, accessibilityLabel, *&MidX];
  v15 = [v10 initWithName:v18 point:? inView:?];
  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](accessibilityLabel);
  *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
  v22[0] = v15;
  v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v22 count:{1, v6}];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);

  return v14;
}

- (id)_accessibilityAllDropPointDescriptors
{
  v17[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [(_UIBarCustomizationReservoirCellAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_297 startWithSelf:1];
  [(_UIBarCustomizationReservoirCellAccessibility *)selfCopy bounds];
  v14 = v19;
  CGRectGetMidX(v19);
  CGRectGetMidY(v14);
  CGPointMake();
  [(_UIBarCustomizationReservoirCellAccessibility *)selfCopy convertPoint:v15[0] toView:v2, v3];
  *&v12 = v4;
  *(&v12 + 1) = v5;
  v13 = v12;
  v8 = objc_alloc(MEMORY[0x29EDC7900]);
  v9 = UIKitAccessibilityLocalizedString();
  v11 = [v8 initWithName:v12 point:? inView:?];
  *&v6 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v17[0] = v11;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:{1, v6}];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v15, 0);

  return v10;
}

@end