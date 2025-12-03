@interface HUEditLocationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
@end

@implementation HUEditLocationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUEditLocationViewController" hasInstanceMethod:@"setupCell:forItem:indexPath:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"HUEditLocationViewController" hasInstanceMethod:@"homeItemManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUEditLocationItemManager" hasInstanceMethod:@"inviteUsersItem" withFullSignature:{"@", 0}];
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = HUEditLocationViewControllerAccessibility;
  itemCopy = item;
  [(HUEditLocationViewControllerAccessibility *)&v11 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = [(HUEditLocationViewControllerAccessibility *)self safeValueForKeyPath:@"homeItemManager.inviteUsersItem", v11.receiver, v11.super_class];
  LODWORD(self) = [v10 isEqual:itemCopy];

  if (self)
  {
    [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }
}

@end