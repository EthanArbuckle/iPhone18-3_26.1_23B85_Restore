@interface PuppetCollectionViewCellAccessibility
- (void)displaySelection:(BOOL)selection;
@end

@implementation PuppetCollectionViewCellAccessibility

- (void)displaySelection:(BOOL)selection
{
  selectionCopy = selection;
  v6.receiver = self;
  v6.super_class = PuppetCollectionViewCellAccessibility;
  [(PuppetCollectionViewCellAccessibility *)&v6 displaySelection:?];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!selectionCopy)
  {
    v5 = 0;
  }

  [(PuppetCollectionViewCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v5];
}

@end