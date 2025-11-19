@interface UGCAddPhotoCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UGCAddPhotoCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UGCAddPhotoCollectionViewCell" hasInstanceVariable:@"_cameraLabel" withType:"UILabel"];
  [v3 validateClass:@"UGCAddPhotoCollectionViewCell" hasInstanceMethod:@"isDimmed" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(UGCAddPhotoCollectionViewCellAccessibility *)self safeValueForKey:@"_cameraLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
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