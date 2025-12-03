@interface SUUIShelfPageSectionAccessibility
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation SUUIShelfPageSectionAccessibility

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = SUUIShelfPageSectionAccessibility;
  [(SUUIShelfPageSectionAccessibility *)&v4 collectionView:view didSelectItemAtIndexPath:path];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end