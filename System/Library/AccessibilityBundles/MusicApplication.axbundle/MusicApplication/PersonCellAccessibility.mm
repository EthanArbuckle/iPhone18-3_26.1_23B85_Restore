@interface PersonCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PersonCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.PersonCell" hasInstanceMethod:@"personName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.PersonCell" isKindOfClass:@"MusicApplication.HorizontalLockupCollectionViewCell"];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasProperty:@"accessoryView" withType:"@"];
}

- (id)accessibilityValue
{
  v2 = [(PersonCellAccessibility *)self safeValueForKey:@"accessoryView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PersonCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PersonCellAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  v3 = [(PersonCellAccessibility *)self safeValueForKey:@"accessoryView"];
  v4 = v3;
  if (v3)
  {
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __48__PersonCellAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2DD778;
    v12 = v3;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    accessibilityActivate = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PersonCellAccessibility;
    accessibilityActivate = [(PersonCellAccessibility *)&v7 accessibilityActivate];
  }

  return accessibilityActivate;
}

@end