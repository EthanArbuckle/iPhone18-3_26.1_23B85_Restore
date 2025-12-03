@interface CalendarAssistantUIControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
@end

@implementation CalendarAssistantUIControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CalendarAssistantUIController" hasInstanceMethod:@"tableView: viewForHeaderInSection:" withFullSignature:{"@", "@", "q", 0}];
  [validationsCopy validateClass:@"CalendarAssistantUIController" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CalendarAssistantUISnippetSection" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = CalendarAssistantUIControllerAccessibility;
  v7 = [(CalendarAssistantUIControllerAccessibility *)&v14 tableView:viewCopy viewForHeaderInSection:section];
  if (v7)
  {
    objc_opt_class();
    v8 = [(CalendarAssistantUIControllerAccessibility *)self safeValueForKey:@"sections"];
    v9 = __UIAccessibilityCastAsClass();

    if ([v9 count] > section)
    {
      v10 = [v9 objectAtIndex:section];
      v11 = [v10 safeValueForKey:@"date"];
      v12 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v11 dateStyle:4 timeStyle:0];
      [v7 setAccessibilityLabel:v12];
      [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
      [v7 setIsAccessibilityElement:1];
    }
  }

  return v7;
}

@end