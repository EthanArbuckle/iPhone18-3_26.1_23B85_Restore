@interface ImmediatePanGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ImmediatePanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = ImmediatePanGestureRecognizer;
  [(ImmediatePanGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(ImmediatePanGestureRecognizer *)self setState:1];
}

@end