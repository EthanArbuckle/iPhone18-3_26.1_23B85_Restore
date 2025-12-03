@interface MobileMail_UISwipeHandlerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MobileMail_UISwipeHandlerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UISwipeHandler" hasInstanceMethod:@"_swipeRecognizerEnded: wasCancelled:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"_UISwipeHandler" hasInstanceMethod:@"swipeController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipeActionHost" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipedIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
}

@end