@interface UILongPressGestureRecognizer
+ (void)addLongPressGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action minimumPressDuration:(double)duration touchCount:(int64_t)count;
@end

@implementation UILongPressGestureRecognizer

+ (void)addLongPressGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action minimumPressDuration:(double)duration touchCount:(int64_t)count
{
  targetCopy = target;
  viewCopy = view;
  v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [v13 setMinimumPressDuration:duration];
  [v13 setNumberOfTouchesRequired:count];
  [viewCopy addGestureRecognizer:v13];
}

@end