@interface SUUIReviewListTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SUUIReviewListTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIReviewListTitleView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIReviewListTitleView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
}

@end