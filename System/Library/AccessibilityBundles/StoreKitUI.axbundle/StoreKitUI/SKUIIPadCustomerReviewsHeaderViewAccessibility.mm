@interface SKUIIPadCustomerReviewsHeaderViewAccessibility
- (SKUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)context;
@end

@implementation SKUIIPadCustomerReviewsHeaderViewAccessibility

- (SKUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)context
{
  v6.receiver = self;
  v6.super_class = SKUIIPadCustomerReviewsHeaderViewAccessibility;
  v3 = [(SKUIIPadCustomerReviewsHeaderViewAccessibility *)&v6 initWithClientContext:context];
  v4 = [(SKUIIPadCustomerReviewsHeaderViewAccessibility *)v3 safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end