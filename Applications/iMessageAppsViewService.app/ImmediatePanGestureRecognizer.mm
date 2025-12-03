@interface ImmediatePanGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ImmediatePanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(ImmediatePanGestureRecognizer *)self setState:1];
}

@end