@interface SUUIStarRatingControlAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SUUIStarRatingControlAccessibility

- (void)accessibilityDecrement
{
  v3 = [(SUUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  integerValue = [v3 integerValue];

  [(SUUIStarRatingControlAccessibility *)self _axSetRating:integerValue - 1];
}

- (void)accessibilityIncrement
{
  v3 = [(SUUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  integerValue = [v3 integerValue];

  [(SUUIStarRatingControlAccessibility *)self _axSetRating:integerValue + 1];
}

void __51__SUUIStarRatingControlAccessibility__axSetRating___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserRating:*(a1 + 40)];
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  [v3 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(SUUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  [v2 integerValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = -1.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end