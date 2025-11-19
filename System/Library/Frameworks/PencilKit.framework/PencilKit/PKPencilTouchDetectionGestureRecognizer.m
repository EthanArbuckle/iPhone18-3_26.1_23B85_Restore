@interface PKPencilTouchDetectionGestureRecognizer
- (PKPencilTouchDetectionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)updateTimestampsforTouches:(id)a3 withEvent:(id)a4;
@end

@implementation PKPencilTouchDetectionGestureRecognizer

- (PKPencilTouchDetectionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = PKPencilTouchDetectionGestureRecognizer;
  v4 = [(PKPencilTouchDetectionGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(PKPencilTouchDetectionGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1F47C1910];
    [(PKPencilTouchDetectionGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(PKPencilTouchDetectionGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)updateTimestampsforTouches:(id)a3 withEvent:(id)a4
{
  v5 = [a4 PK_isEventFromCrayon];
  v6 = [(PKPencilTouchDetectionGestureRecognizer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PKPencilTouchDetectionGestureRecognizer *)self delegate];
    [v8 updateTimestampForType:v5];
  }
}

@end