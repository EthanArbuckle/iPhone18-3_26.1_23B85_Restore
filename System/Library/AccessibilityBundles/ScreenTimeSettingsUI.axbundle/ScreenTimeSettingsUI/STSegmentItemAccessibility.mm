@interface STSegmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STSegmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSegmentItem" hasInstanceVariable:@"_titleText" withType:"NSString"];
  [validationsCopy validateClass:@"STSegmentItem" hasInstanceVariable:@"_detailText" withType:"NSString"];
}

@end