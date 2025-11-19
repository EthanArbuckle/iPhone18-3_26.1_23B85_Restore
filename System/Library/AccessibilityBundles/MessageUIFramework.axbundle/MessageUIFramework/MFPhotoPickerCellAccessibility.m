@interface MFPhotoPickerCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MFPhotoPickerCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MFPhotoPickerCellAccessibility;
  return *MEMORY[0x29EDC7F88] | [(MFPhotoPickerCellAccessibility *)&v3 accessibilityTraits];
}

@end