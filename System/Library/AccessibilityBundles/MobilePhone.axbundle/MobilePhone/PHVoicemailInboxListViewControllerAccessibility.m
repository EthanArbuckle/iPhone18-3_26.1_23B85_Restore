@interface PHVoicemailInboxListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PHVoicemailInboxListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHVoicemailInboxListViewController" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PHVoicemailInboxListViewController" hasInstanceMethod:@"tableView:didDeselectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewControllerAccessibility;
  v5 = a4;
  v6 = a3;
  [(PHVoicemailInboxListViewControllerAccessibility *)&v8 tableView:v6 didSelectRowAtIndexPath:v5];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v7 = [v6 cellForRowAtIndexPath:{v5, v8.receiver, v8.super_class}];

  [v7 _accessibilitySetBoolValue:1 forKey:@"Selected"];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewControllerAccessibility;
  v5 = a4;
  v6 = a3;
  [(PHVoicemailInboxListViewControllerAccessibility *)&v8 tableView:v6 didDeselectRowAtIndexPath:v5];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v7 = [v6 cellForRowAtIndexPath:{v5, v8.receiver, v8.super_class}];

  [v7 _accessibilitySetBoolValue:0 forKey:@"Selected"];
}

@end