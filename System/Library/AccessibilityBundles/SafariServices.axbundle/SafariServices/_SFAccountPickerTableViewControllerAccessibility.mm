@interface _SFAccountPickerTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation _SFAccountPickerTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFAccountPickerTableViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"_SFAccountPickerTableViewController" hasInstanceMethod:@"_rowTypeForIndexPath:" withFullSignature:{"q", "@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = _SFAccountPickerTableViewControllerAccessibility;
  v8 = [(_SFAccountPickerTableViewControllerAccessibility *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = pathCopy;
  AXPerformSafeBlock();
  v10 = v13[3];

  _Block_object_dispose(&v12, 8);
  if (v10 == 1)
  {
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }

  return v8;
}

@end