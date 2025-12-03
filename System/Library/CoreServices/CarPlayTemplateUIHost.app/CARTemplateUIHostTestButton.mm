@interface CARTemplateUIHostTestButton
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation CARTemplateUIHostTestButton

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIHostTestButton;
  [(CARTemplateUIHostTestButton *)&v4 touchesCancelled:cancelled withEvent:event];
}

@end