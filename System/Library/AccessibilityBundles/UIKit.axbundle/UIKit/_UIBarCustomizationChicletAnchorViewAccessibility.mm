@interface _UIBarCustomizationChicletAnchorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAllDragSourceDescriptors;
- (id)_accessibilityAllDropPointDescriptors;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)axBarCustomizationRepresentedItem;
@end

@implementation _UIBarCustomizationChicletAnchorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIBarCustomizationContainerView"];
  [location[0] validateClass:@"_UIBarCustomizationChicletAnchorView" hasProperty:@"chiclet" withType:?];
  [location[0] validateClass:@"_UIBarCustomizationChiclet" hasProperty:@"representedItem" withType:"@"];
  [location[0] validateClass:? hasProperty:? withType:?];
  [location[0] validateClass:@"_UIBarCustomizationItem" hasProperty:@"identifier" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  axBarCustomizationRepresentedItem = [(_UIBarCustomizationChicletAnchorViewAccessibility *)self axBarCustomizationRepresentedItem];
  v3 = [axBarCustomizationRepresentedItem safeStringForKey:@"name"];
  v5 = UIKitAccessibilityLocalizedString();
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](axBarCustomizationRepresentedItem);

  return v5;
}

- (id)accessibilityIdentifier
{
  axBarCustomizationRepresentedItem = [(_UIBarCustomizationChicletAnchorViewAccessibility *)self axBarCustomizationRepresentedItem];
  v4 = [axBarCustomizationRepresentedItem safeStringForKey:@"identifier"];
  MEMORY[0x29EDC9740](axBarCustomizationRepresentedItem);

  return v4;
}

- (id)_accessibilityAllDragSourceDescriptors
{
  v24[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v21[1] = a2;
  axBarCustomizationChiclet = [(_UIBarCustomizationChicletAnchorViewAccessibility *)self axBarCustomizationChiclet];
  v21[0] = [axBarCustomizationChiclet accessibilityUserDefinedDragSourceDescriptors];
  MEMORY[0x29EDC9740](axBarCustomizationChiclet);
  if (v21[0])
  {
    v23 = MEMORY[0x29EDC9748](v21[0]);
    v20 = 1;
  }

  else
  {
    [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy bounds];
    v19 = v26;
    CGRectGetMidX(v26);
    CGRectGetMidY(v19);
    CGPointMake_11();
    *&v18 = v2;
    *(&v18 + 1) = v3;
    v17 = [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy _accessibilityFindViewAncestor:&__block_literal_global_48 startWithSelf:1];
    [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy convertPoint:v17 toView:v18];
    *&v16 = v4;
    *(&v16 + 1) = v5;
    v18 = v16;
    v10 = objc_alloc(MEMORY[0x29EDC7900]);
    v9 = MEMORY[0x29EDBA0F8];
    v13 = UIKitAccessibilityLocalizedString();
    accessibilityLabel = [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy accessibilityLabel];
    v11 = [v9 localizedStringWithFormat:v13, accessibilityLabel];
    v15 = [v10 initWithName:v18 point:? inView:?];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](accessibilityLabel);
    *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    v24[0] = v15;
    v23 = [MEMORY[0x29EDB8D80] arrayWithObjects:v24 count:{1, v6}];
    v20 = 1;
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(v21, 0);
  v7 = v23;

  return v7;
}

- (id)_accessibilityAllDropPointDescriptors
{
  v36[2] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v33[1] = a2;
  axBarCustomizationChiclet = [(_UIBarCustomizationChicletAnchorViewAccessibility *)self axBarCustomizationChiclet];
  v33[0] = [axBarCustomizationChiclet accessibilityUserDefinedDropPointDescriptors];
  MEMORY[0x29EDC9740](axBarCustomizationChiclet);
  if (v33[0])
  {
    v35 = MEMORY[0x29EDC9748](v33[0]);
    v32 = 1;
  }

  else
  {
    [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy bounds];
    v31 = v38;
    CGRectGetMaxX(v38);
    CGRectGetMidY(v31);
    CGPointMake_11();
    *&v30 = v2;
    *(&v30 + 1) = v3;
    CGRectGetMinX(v31);
    CGRectGetMidY(v31);
    CGPointMake_11();
    *&v29 = v4;
    *(&v29 + 1) = v5;
    v28 = [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy _accessibilityFindViewAncestor:&__block_literal_global_316 startWithSelf:1];
    [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy convertPoint:v28 toView:v30];
    *&v27 = v6;
    *(&v27 + 1) = v7;
    v30 = v27;
    v14 = objc_alloc(MEMORY[0x29EDC7900]);
    v13 = MEMORY[0x29EDBA0F8];
    v17 = UIKitAccessibilityLocalizedString();
    accessibilityLabel = [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy accessibilityLabel];
    v15 = [v13 localizedStringWithFormat:v17, accessibilityLabel];
    v26 = [v14 initWithName:v30 point:? inView:?];
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](accessibilityLabel);
    MEMORY[0x29EDC9740](v17);
    [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy convertPoint:v28 toView:v29];
    *&v25 = v8;
    *(&v25 + 1) = v9;
    v29 = v25;
    v19 = objc_alloc(MEMORY[0x29EDC7900]);
    v18 = MEMORY[0x29EDBA0F8];
    v22 = UIKitAccessibilityLocalizedString();
    accessibilityLabel2 = [(_UIBarCustomizationChicletAnchorViewAccessibility *)selfCopy accessibilityLabel];
    v20 = [v18 localizedStringWithFormat:v22, accessibilityLabel2];
    v24 = [v19 initWithName:v29 point:? inView:?];
    MEMORY[0x29EDC9740](v20);
    MEMORY[0x29EDC9740](accessibilityLabel2);
    *&v10 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    v36[0] = v26;
    v36[1] = v24;
    v35 = [MEMORY[0x29EDB8D80] arrayWithObjects:v36 count:{2, v10}];
    v32 = 1;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(v33, 0);
  v11 = v35;

  return v11;
}

- (id)axBarCustomizationRepresentedItem
{
  axBarCustomizationChiclet = [(_UIBarCustomizationChicletAnchorViewAccessibility *)self axBarCustomizationChiclet];
  v4 = [axBarCustomizationChiclet safeValueForKey:@"representedItem"];
  MEMORY[0x29EDC9740](axBarCustomizationChiclet);

  return v4;
}

@end