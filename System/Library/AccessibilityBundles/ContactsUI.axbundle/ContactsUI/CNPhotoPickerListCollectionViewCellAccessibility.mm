@interface CNPhotoPickerListCollectionViewCellAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation CNPhotoPickerListCollectionViewCellAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerListCollectionViewCellAccessibility;
  v4 = [(CNPhotoPickerListCollectionViewCellAccessibility *)&v7 tableView:view cellForRowAtIndexPath:path];
  accessibilityTraits = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];

  return v4;
}

@end