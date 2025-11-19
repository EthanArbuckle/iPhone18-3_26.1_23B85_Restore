@interface UIPinchGestureRecognizer
+ (void)addPinchGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5;
@end

@implementation UIPinchGestureRecognizer

+ (void)addPinchGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[UIPinchGestureRecognizer alloc] initWithTarget:v7 action:a5];

  [v8 addGestureRecognizer:v9];
}

@end