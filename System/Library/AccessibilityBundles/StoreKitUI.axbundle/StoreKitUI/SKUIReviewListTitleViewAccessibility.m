@interface SKUIReviewListTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SKUIReviewListTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIReviewListTitleView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIReviewListTitleView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
}

@end