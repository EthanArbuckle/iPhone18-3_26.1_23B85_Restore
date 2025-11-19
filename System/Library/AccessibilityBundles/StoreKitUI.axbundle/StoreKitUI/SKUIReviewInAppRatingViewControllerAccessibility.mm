@interface SKUIReviewInAppRatingViewControllerAccessibility
- (void)setState:(unint64_t)a3;
@end

@implementation SKUIReviewInAppRatingViewControllerAccessibility

- (void)setState:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = SKUIReviewInAppRatingViewControllerAccessibility;
  [(SKUIReviewInAppRatingViewControllerAccessibility *)&v3 setState:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end