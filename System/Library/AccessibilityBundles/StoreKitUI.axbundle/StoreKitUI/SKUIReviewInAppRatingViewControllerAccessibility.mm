@interface SKUIReviewInAppRatingViewControllerAccessibility
- (void)setState:(unint64_t)state;
@end

@implementation SKUIReviewInAppRatingViewControllerAccessibility

- (void)setState:(unint64_t)state
{
  v3.receiver = self;
  v3.super_class = SKUIReviewInAppRatingViewControllerAccessibility;
  [(SKUIReviewInAppRatingViewControllerAccessibility *)&v3 setState:state];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end