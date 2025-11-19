@interface ScreenshotCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ScreenshotCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ScreenshotCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F88] | [(ScreenshotCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end