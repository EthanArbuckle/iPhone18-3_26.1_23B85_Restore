@interface CARTemplateUIHostTestButton
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation CARTemplateUIHostTestButton

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIHostTestButton;
  [(CARTemplateUIHostTestButton *)&v4 touchesCancelled:a3 withEvent:a4];
}

@end