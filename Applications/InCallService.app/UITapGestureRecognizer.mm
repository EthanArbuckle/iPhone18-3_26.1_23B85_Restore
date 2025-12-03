@interface UITapGestureRecognizer
+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action;
+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action tapCount:(unint64_t)count;
+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action tapCount:(unint64_t)count touchCount:(unint64_t)touchCount;
@end

@implementation UITapGestureRecognizer

+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  viewCopy = view;
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [viewCopy addGestureRecognizer:v9];
}

+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action tapCount:(unint64_t)count
{
  targetCopy = target;
  viewCopy = view;
  v11 = [[UITapGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v11 setNumberOfTapsRequired:count];
  [viewCopy addGestureRecognizer:v11];
}

+ (void)addTapGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action tapCount:(unint64_t)count touchCount:(unint64_t)touchCount
{
  targetCopy = target;
  viewCopy = view;
  v13 = [[UITapGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v13 setNumberOfTapsRequired:count];
  [v13 setNumberOfTouchesRequired:touchCount];
  [viewCopy addGestureRecognizer:v13];
}

@end