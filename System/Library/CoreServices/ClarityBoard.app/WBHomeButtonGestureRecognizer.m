@interface WBHomeButtonGestureRecognizer
- (WBHomeButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation WBHomeButtonGestureRecognizer

- (WBHomeButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = WBHomeButtonGestureRecognizer;
  v4 = [(WBHomeButtonGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(WBHomeButtonGestureRecognizer *)v4 setRecognizesOnPressPhaseBegan:1];
  }

  return v5;
}

@end