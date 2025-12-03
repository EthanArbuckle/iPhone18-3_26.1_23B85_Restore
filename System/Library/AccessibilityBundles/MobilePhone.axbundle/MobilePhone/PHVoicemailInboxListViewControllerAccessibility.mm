@interface PHVoicemailInboxListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PHVoicemailInboxListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHVoicemailInboxListViewController" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"PHVoicemailInboxListViewController" hasInstanceMethod:@"tableView:didDeselectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewControllerAccessibility;
  pathCopy = path;
  viewCopy = view;
  [(PHVoicemailInboxListViewControllerAccessibility *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v7 = [viewCopy cellForRowAtIndexPath:{pathCopy, v8.receiver, v8.super_class}];

  [v7 _accessibilitySetBoolValue:1 forKey:@"Selected"];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PHVoicemailInboxListViewControllerAccessibility;
  pathCopy = path;
  viewCopy = view;
  [(PHVoicemailInboxListViewControllerAccessibility *)&v8 tableView:viewCopy didDeselectRowAtIndexPath:pathCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v7 = [viewCopy cellForRowAtIndexPath:{pathCopy, v8.receiver, v8.super_class}];

  [v7 _accessibilitySetBoolValue:0 forKey:@"Selected"];
}

@end