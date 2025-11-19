@interface UILongPressGestureRecognizer
+ (void)addLongPressGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 minimumPressDuration:(double)a6 touchCount:(int64_t)a7;
@end

@implementation UILongPressGestureRecognizer

+ (void)addLongPressGestureRecognizerToView:(id)a3 withTarget:(id)a4 action:(SEL)a5 minimumPressDuration:(double)a6 touchCount:(int64_t)a7
{
  v11 = a4;
  v12 = a3;
  v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:v11 action:a5];

  [v13 setMinimumPressDuration:a6];
  [v13 setNumberOfTouchesRequired:a7];
  [v12 addGestureRecognizer:v13];
}

@end