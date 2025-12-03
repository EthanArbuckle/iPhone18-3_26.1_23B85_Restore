@interface UISwipeGestureRecognizer
+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action;
+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action direction:(unint64_t)direction;
+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action direction:(unint64_t)direction touchCount:(unint64_t)count;
+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action touchCount:(unint64_t)count;
@end

@implementation UISwipeGestureRecognizer

+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  viewCopy = view;
  v9 = [[UISwipeGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [viewCopy addGestureRecognizer:v9];
}

+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action direction:(unint64_t)direction
{
  targetCopy = target;
  viewCopy = view;
  v11 = [[UISwipeGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v11 setDirection:direction];
  [viewCopy addGestureRecognizer:v11];
}

+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action touchCount:(unint64_t)count
{
  targetCopy = target;
  viewCopy = view;
  v11 = [[UISwipeGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v11 setNumberOfTouchesRequired:count];
  [viewCopy addGestureRecognizer:v11];
}

+ (void)addSwipeGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action direction:(unint64_t)direction touchCount:(unint64_t)count
{
  targetCopy = target;
  viewCopy = view;
  v13 = [[UISwipeGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v13 setDirection:direction];
  [v13 setNumberOfTouchesRequired:count];
  [viewCopy addGestureRecognizer:v13];
}

@end