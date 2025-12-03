@interface SUUIReviewListTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SUUIReviewListTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIReviewListTitleView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIReviewListTitleView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
}

@end