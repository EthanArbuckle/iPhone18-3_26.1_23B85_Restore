@interface CalendarAssistantUIControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
@end

@implementation CalendarAssistantUIControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CalendarAssistantUIController" hasInstanceMethod:@"tableView: viewForHeaderInSection:" withFullSignature:{"@", "@", "q", 0}];
  [v3 validateClass:@"CalendarAssistantUIController" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CalendarAssistantUISnippetSection" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CalendarAssistantUIControllerAccessibility;
  v7 = [(CalendarAssistantUIControllerAccessibility *)&v14 tableView:v6 viewForHeaderInSection:a4];
  if (v7)
  {
    objc_opt_class();
    v8 = [(CalendarAssistantUIControllerAccessibility *)self safeValueForKey:@"sections"];
    v9 = __UIAccessibilityCastAsClass();

    if ([v9 count] > a4)
    {
      v10 = [v9 objectAtIndex:a4];
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