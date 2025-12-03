@interface BKUIPearlEnrollControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BKUIPearlEnrollControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"coachingController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlCoachingController" hasInstanceMethod:@"instructionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"enrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_instructionView" withType:"BKUIPearlInstructionView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"setCoachingHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
}

@end