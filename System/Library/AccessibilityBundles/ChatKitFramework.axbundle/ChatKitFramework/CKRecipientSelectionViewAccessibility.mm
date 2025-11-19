@interface CKRecipientSelectionViewAccessibility
- (void)setFrame:(CGRect)a3;
@end

@implementation CKRecipientSelectionViewAccessibility

- (void)setFrame:(CGRect)a3
{
  y = a3.origin.y;
  v5.receiver = self;
  v5.super_class = CKRecipientSelectionViewAccessibility;
  [(CKRecipientSelectionViewAccessibility *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CKRecipientSelectionViewAccessibility *)self setAccessibilityElementsHidden:y < 0.0];
}

@end