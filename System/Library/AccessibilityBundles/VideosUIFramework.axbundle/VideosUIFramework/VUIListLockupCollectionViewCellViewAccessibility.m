@interface VUIListLockupCollectionViewCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation VUIListLockupCollectionViewCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIListLockupCollectionViewCellView" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"VUIListLockupCollectionViewCellView" hasProperty:@"subTitleLabel" withType:"@"];
  [v3 validateClass:@"VUIListLockupCollectionViewCellView" hasProperty:@"primaryButton" withType:"@"];
  [v3 validateClass:@"VUIListLockupCollectionViewCellView" hasProperty:@"secondaryButton" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = [(VUIListLockupCollectionViewCellViewAccessibility *)self safeValueForKeyPath:@"titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(VUIListLockupCollectionViewCellViewAccessibility *)self safeValueForKeyPath:@"subTitleLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(VUIListLockupCollectionViewCellViewAccessibility *)self safeValueForKey:@"primaryButton"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VUIListLockupCollectionViewCellViewAccessibility;
    v5 = [(VUIListLockupCollectionViewCellViewAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(VUIListLockupCollectionViewCellViewAccessibility *)self safeValueForKey:@"primaryButton"];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VUIListLockupCollectionViewCellViewAccessibility;
    [(VUIListLockupCollectionViewCellViewAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)accessibilityCustomActions
{
  v19 = 0;
  objc_opt_class();
  v3 = [(VUIListLockupCollectionViewCellViewAccessibility *)self safeValueForKey:@"secondaryButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];
  v6 = v5;
  if (v4 && [v5 length])
  {
    v17.receiver = self;
    v17.super_class = VUIListLockupCollectionViewCellViewAccessibility;
    v7 = [(VUIListLockupCollectionViewCellViewAccessibility *)&v17 accessibilityCustomActions];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = [MEMORY[0x29EDB8DE8] array];
    }

    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __78__VUIListLockupCollectionViewCellViewAccessibility_accessibilityCustomActions__block_invoke;
    v15 = &unk_29F31C430;
    v16 = v4;
    v10 = [v9 initWithName:v6 actionHandler:&v12];
    [v8 addObject:{v10, v12, v13, v14, v15}];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VUIListLockupCollectionViewCellViewAccessibility;
    v8 = [(VUIListLockupCollectionViewCellViewAccessibility *)&v18 accessibilityCustomActions];
  }

  return v8;
}

@end