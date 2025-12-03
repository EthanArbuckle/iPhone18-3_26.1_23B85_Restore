@interface ICShowDebugMenuGestureRecognizer
- (ICShowDebugMenuGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation ICShowDebugMenuGestureRecognizer

- (ICShowDebugMenuGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = ICShowDebugMenuGestureRecognizer;
  v4 = [(ICShowDebugMenuGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(ICShowDebugMenuGestureRecognizer *)v4 setNumberOfTapsRequired:2];
    [(ICShowDebugMenuGestureRecognizer *)v5 setNumberOfTouchesRequired:4];
    [(ICShowDebugMenuGestureRecognizer *)v5 setDelegate:v5];
  }

  return v5;
}

@end