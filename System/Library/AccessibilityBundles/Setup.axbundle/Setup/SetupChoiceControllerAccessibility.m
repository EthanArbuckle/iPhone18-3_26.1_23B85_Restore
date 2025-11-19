@interface SetupChoiceControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation SetupChoiceControllerAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  objc_opt_class();
  v13.receiver = self;
  v13.super_class = SetupChoiceControllerAccessibility;
  v8 = [(SetupChoiceControllerAccessibility *)&v13 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = __UIAccessibilityCastAsClass();

  if (v14 == 1)
  {
    abort();
  }

  NSClassFromString(&cfstr_Buddysetuptabl.isa);
  if (objc_opt_isKindOfClass())
  {
    [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    [v9 setIsAccessibilityElement:1];
    v10 = [v9 textLabel];
    v11 = [v10 accessibilityLabel];
    [v9 setAccessibilityLabel:v11];
  }

  return v9;
}

@end