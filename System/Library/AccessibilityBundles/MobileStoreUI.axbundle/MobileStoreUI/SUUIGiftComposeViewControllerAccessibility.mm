@interface SUUIGiftComposeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)loadView;
@end

@implementation SUUIGiftComposeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIGiftComposeViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SUUIGiftComposeViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SUUIGiftComposeViewControllerAccessibility;
  [(SUUIGiftComposeViewControllerAccessibility *)&v4 loadView];
  v3 = [(SUUIGiftComposeViewControllerAccessibility *)self safeValueForKey:@"_tableView"];
  [v3 setAccessibilityIdentifier:@"GiftTableView"];
}

@end