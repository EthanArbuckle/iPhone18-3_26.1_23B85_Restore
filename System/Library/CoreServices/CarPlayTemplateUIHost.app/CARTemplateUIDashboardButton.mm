@interface CARTemplateUIDashboardButton
- (void)focusableItemPressed:(BOOL)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation CARTemplateUIDashboardButton

- (void)focusableItemPressed:(BOOL)a3
{
  v3 = 0.8;
  if (!a3)
  {
    v3 = 1.0;
  }

  [(CARTemplateUIDashboardButton *)self setAlpha:v3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIDashboardButton;
  [(CARTemplateUIDashboardButton *)&v4 touchesCancelled:a3 withEvent:a4];
}

@end