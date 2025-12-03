@interface UGCAddPhotoCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UGCAddPhotoCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UGCAddPhotoCollectionViewCell" hasInstanceVariable:@"_cameraLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"UGCAddPhotoCollectionViewCell" hasInstanceMethod:@"isDimmed" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(UGCAddPhotoCollectionViewCellAccessibility *)self safeValueForKey:@"_cameraLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(UGCAddPhotoCollectionViewCellAccessibility *)self safeBoolForKey:@"isDimmed"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end