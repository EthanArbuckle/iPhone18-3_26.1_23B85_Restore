@interface WBHomeButtonGestureRecognizer
- (WBHomeButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation WBHomeButtonGestureRecognizer

- (WBHomeButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = WBHomeButtonGestureRecognizer;
  v4 = [(WBHomeButtonGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(WBHomeButtonGestureRecognizer *)v4 setRecognizesOnPressPhaseBegan:1];
  }

  return v5;
}

@end