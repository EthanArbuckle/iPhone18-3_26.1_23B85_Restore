@interface MobileMail_UISwipeHandlerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MobileMail_UISwipeHandlerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UISwipeHandler" hasInstanceMethod:@"_swipeRecognizerEnded: wasCancelled:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"_UISwipeHandler" hasInstanceMethod:@"swipeController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipeActionHost" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipedIndexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
}

@end