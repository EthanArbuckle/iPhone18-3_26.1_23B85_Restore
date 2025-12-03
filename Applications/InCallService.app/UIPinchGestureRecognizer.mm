@interface UIPinchGestureRecognizer
+ (void)addPinchGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action;
@end

@implementation UIPinchGestureRecognizer

+ (void)addPinchGestureRecognizerToView:(id)view withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  viewCopy = view;
  v9 = [[UIPinchGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [viewCopy addGestureRecognizer:v9];
}

@end