@interface CARTemplateUIDashboardButton
- (void)focusableItemPressed:(BOOL)pressed;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation CARTemplateUIDashboardButton

- (void)focusableItemPressed:(BOOL)pressed
{
  v3 = 0.8;
  if (!pressed)
  {
    v3 = 1.0;
  }

  [(CARTemplateUIDashboardButton *)self setAlpha:v3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIDashboardButton;
  [(CARTemplateUIDashboardButton *)&v4 touchesCancelled:cancelled withEvent:event];
}

@end