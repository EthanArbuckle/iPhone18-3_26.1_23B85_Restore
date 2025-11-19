@interface SKUIIPadCustomerReviewsHeaderViewAccessibility
- (SKUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)a3;
@end

@implementation SKUIIPadCustomerReviewsHeaderViewAccessibility

- (SKUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUIIPadCustomerReviewsHeaderViewAccessibility;
  v3 = [(SKUIIPadCustomerReviewsHeaderViewAccessibility *)&v6 initWithClientContext:a3];
  v4 = [(SKUIIPadCustomerReviewsHeaderViewAccessibility *)v3 safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end