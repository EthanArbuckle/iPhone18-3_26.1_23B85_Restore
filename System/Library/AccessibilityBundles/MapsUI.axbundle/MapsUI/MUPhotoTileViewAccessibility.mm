@interface MUPhotoTileViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MUPhotoTileViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MUPhotoTileViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MUPhotoTileViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F88];
}

@end