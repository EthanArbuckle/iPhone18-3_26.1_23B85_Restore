@interface SKUIReviewListTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SKUIReviewListTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIReviewListTitleView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIReviewListTitleView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
}

@end