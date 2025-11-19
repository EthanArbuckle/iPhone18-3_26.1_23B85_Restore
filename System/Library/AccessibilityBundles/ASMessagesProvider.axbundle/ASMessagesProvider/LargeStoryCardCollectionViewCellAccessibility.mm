@interface LargeStoryCardCollectionViewCellAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation LargeStoryCardCollectionViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v3.receiver = self;
  v3.super_class = LargeStoryCardCollectionViewCellAccessibility;
  return [(LargeStoryCardCollectionViewCellAccessibility *)&v3 isAccessibilityElement];
}

@end