@interface SetupChoiceControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation SetupChoiceControllerAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v14 = 0;
  objc_opt_class();
  v13.receiver = self;
  v13.super_class = SetupChoiceControllerAccessibility;
  v8 = [(SetupChoiceControllerAccessibility *)&v13 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
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
    textLabel = [v9 textLabel];
    accessibilityLabel = [textLabel accessibilityLabel];
    [v9 setAccessibilityLabel:accessibilityLabel];
  }

  return v9;
}

@end