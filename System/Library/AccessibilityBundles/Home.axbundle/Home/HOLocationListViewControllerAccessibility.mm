@interface HOLocationListViewControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation HOLocationListViewControllerAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HOLocationListViewControllerAccessibility;
  v8 = [(HOLocationListViewControllerAccessibility *)&v14 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v10 = [v9 tableView];
  v11 = [v10 isEditing];

  v12 = *MEMORY[0x29EDC7FA8];
  if (!v11)
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v12];

  return v8;
}

@end