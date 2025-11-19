@interface UIGestureRecognizer
- (void)cancel;
@end

@implementation UIGestureRecognizer

- (void)cancel
{
  if ([(UIGestureRecognizer *)self state])
  {
    if ([(UIGestureRecognizer *)self state]!= 1 && [(UIGestureRecognizer *)self state]!= 2)
    {
      return;
    }

    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  [(UIGestureRecognizer *)self setState:v3];
}

@end