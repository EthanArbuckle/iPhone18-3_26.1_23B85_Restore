@interface VideosExtrasGridCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation VideosExtrasGridCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VideosExtrasGridCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VideosExtrasGridCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end