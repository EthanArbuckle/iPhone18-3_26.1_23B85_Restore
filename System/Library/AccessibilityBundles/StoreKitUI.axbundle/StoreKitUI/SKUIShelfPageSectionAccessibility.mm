@interface SKUIShelfPageSectionAccessibility
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation SKUIShelfPageSectionAccessibility

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = SKUIShelfPageSectionAccessibility;
  [(SKUIShelfPageSectionAccessibility *)&v4 collectionView:a3 didSelectItemAtIndexPath:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end