@interface BKUIPearlEnrollControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BKUIPearlEnrollControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instructionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"coachingController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BKUIPearlCoachingController" hasInstanceMethod:@"instructionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"enrollViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_instructionView" withType:"BKUIPearlInstructionView"];
  [v3 validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"setCoachingHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
}

@end