@interface STSegmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STSegmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STSegmentItem" hasInstanceVariable:@"_titleText" withType:"NSString"];
  [v3 validateClass:@"STSegmentItem" hasInstanceVariable:@"_detailText" withType:"NSString"];
}

@end