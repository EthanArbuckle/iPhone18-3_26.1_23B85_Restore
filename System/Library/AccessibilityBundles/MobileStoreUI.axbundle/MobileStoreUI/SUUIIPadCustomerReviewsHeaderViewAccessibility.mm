@interface SUUIIPadCustomerReviewsHeaderViewAccessibility
- (SUUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)a3;
@end

@implementation SUUIIPadCustomerReviewsHeaderViewAccessibility

- (SUUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIIPadCustomerReviewsHeaderViewAccessibility;
  v3 = [(SUUIIPadCustomerReviewsHeaderViewAccessibility *)&v6 initWithClientContext:a3];
  v4 = [(SUUIIPadCustomerReviewsHeaderViewAccessibility *)v3 safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end