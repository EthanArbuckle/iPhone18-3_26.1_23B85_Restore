@interface SKUIGiftComposeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)loadView;
@end

@implementation SKUIGiftComposeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIGiftComposeViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SKUIGiftComposeViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SKUIGiftComposeViewControllerAccessibility;
  [(SKUIGiftComposeViewControllerAccessibility *)&v4 loadView];
  v3 = [(SKUIGiftComposeViewControllerAccessibility *)self safeValueForKey:@"_tableView"];
  [v3 setAccessibilityIdentifier:@"GiftTableView"];
}

@end