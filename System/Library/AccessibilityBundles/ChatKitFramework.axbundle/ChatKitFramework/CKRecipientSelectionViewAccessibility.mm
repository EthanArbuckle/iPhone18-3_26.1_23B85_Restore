@interface CKRecipientSelectionViewAccessibility
- (void)setFrame:(CGRect)frame;
@end

@implementation CKRecipientSelectionViewAccessibility

- (void)setFrame:(CGRect)frame
{
  y = frame.origin.y;
  v5.receiver = self;
  v5.super_class = CKRecipientSelectionViewAccessibility;
  [(CKRecipientSelectionViewAccessibility *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CKRecipientSelectionViewAccessibility *)self setAccessibilityElementsHidden:y < 0.0];
}

@end