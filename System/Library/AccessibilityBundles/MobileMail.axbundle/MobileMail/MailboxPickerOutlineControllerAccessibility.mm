@interface MailboxPickerOutlineControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)shelfButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MailboxPickerOutlineControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"shelfButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailboxPickerOutlineController" hasInstanceMethod:@"_updateToolbarItems:" withFullSignature:{"v", "B", 0}];
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
  shelfButtonItem = [(MailboxPickerOutlineControllerAccessibility *)&v5 shelfButtonItem];
  v3 = accessibilityLocalizedString(@"app.shelf.button");
  [shelfButtonItem setAccessibilityLabel:v3];

  return shelfButtonItem;
}

@end