@interface HOLocationListViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation HOLocationListViewControllerAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = HOLocationListViewControllerAccessibility;
  v8 = [(HOLocationListViewControllerAccessibility *)&v14 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  tableView = [v9 tableView];
  isEditing = [tableView isEditing];

  v12 = *MEMORY[0x29EDC7FA8];
  if (!isEditing)
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v12];

  return v8;
}

@end