@interface ISLanguageViewControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation ISLanguageViewControllerAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = ISLanguageViewControllerAccessibility;
  v4 = [(ISLanguageViewControllerAccessibility *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  v6 = [v5 attributedText];

  v7 = [v6 attributesAtIndex:0 effectiveRange:0];
  v8 = [v7 objectForKey:*MEMORY[0x29EDB9530]];

  v9 = [v4 textLabel];
  [v9 setAccessibilityLanguage:v8];

  return v4;
}

@end