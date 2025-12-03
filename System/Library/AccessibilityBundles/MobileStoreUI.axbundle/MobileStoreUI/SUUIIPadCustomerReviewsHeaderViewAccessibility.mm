@interface SUUIIPadCustomerReviewsHeaderViewAccessibility
- (SUUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)context;
@end

@implementation SUUIIPadCustomerReviewsHeaderViewAccessibility

- (SUUIIPadCustomerReviewsHeaderViewAccessibility)initWithClientContext:(id)context
{
  v6.receiver = self;
  v6.super_class = SUUIIPadCustomerReviewsHeaderViewAccessibility;
  v3 = [(SUUIIPadCustomerReviewsHeaderViewAccessibility *)&v6 initWithClientContext:context];
  v4 = [(SUUIIPadCustomerReviewsHeaderViewAccessibility *)v3 safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end