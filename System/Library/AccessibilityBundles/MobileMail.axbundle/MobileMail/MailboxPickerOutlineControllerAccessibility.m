@interface MailboxPickerOutlineControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)shelfButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MailboxPickerOutlineControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"shelfButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"_updateToolbarItems:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MailboxPickerOutlineControllerAccessibility;
  [(MailboxPickerOutlineControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

- (id)shelfButtonItem
{
  v5.receiver = self;
  v5.super_class = MailboxPickerOutlineControllerAccessibility;
  v2 = [(MailboxPickerOutlineControllerAccessibility *)&v5 shelfButtonItem];
  v3 = accessibilityLocalizedString(@"app.shelf.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end