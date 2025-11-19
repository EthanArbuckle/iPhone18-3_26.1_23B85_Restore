@interface _SFAccountPickerTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation _SFAccountPickerTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFAccountPickerTableViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"_SFAccountPickerTableViewController" hasInstanceMethod:@"_rowTypeForIndexPath:" withFullSignature:{"q", "@", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _SFAccountPickerTableViewControllerAccessibility;
  v8 = [(_SFAccountPickerTableViewControllerAccessibility *)&v16 tableView:v6 cellForRowAtIndexPath:v7];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = v7;
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