@interface SKUIGiftComposeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)loadView;
@end

@implementation SKUIGiftComposeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIGiftComposeViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SKUIGiftComposeViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
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