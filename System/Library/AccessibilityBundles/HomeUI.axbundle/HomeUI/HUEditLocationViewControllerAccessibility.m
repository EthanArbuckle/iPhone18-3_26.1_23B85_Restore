@interface HUEditLocationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
@end

@implementation HUEditLocationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUEditLocationViewController" hasInstanceMethod:@"setupCell:forItem:indexPath:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"HUEditLocationViewController" hasInstanceMethod:@"homeItemManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUEditLocationItemManager" hasInstanceMethod:@"inviteUsersItem" withFullSignature:{"@", 0}];
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = HUEditLocationViewControllerAccessibility;
  v9 = a4;
  [(HUEditLocationViewControllerAccessibility *)&v11 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUEditLocationViewControllerAccessibility *)self safeValueForKeyPath:@"homeItemManager.inviteUsersItem", v11.receiver, v11.super_class];
  LODWORD(self) = [v10 isEqual:v9];

  if (self)
  {
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }
}

@end