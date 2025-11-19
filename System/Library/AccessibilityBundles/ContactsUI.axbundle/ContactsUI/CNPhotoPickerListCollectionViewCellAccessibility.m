@interface CNPhotoPickerListCollectionViewCellAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation CNPhotoPickerListCollectionViewCellAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerListCollectionViewCellAccessibility;
  v4 = [(CNPhotoPickerListCollectionViewCellAccessibility *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v5];

  return v4;
}

@end