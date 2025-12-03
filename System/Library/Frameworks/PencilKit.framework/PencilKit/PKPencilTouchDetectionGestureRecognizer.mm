@interface PKPencilTouchDetectionGestureRecognizer
- (PKPencilTouchDetectionGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)updateTimestampsforTouches:(id)touches withEvent:(id)event;
@end

@implementation PKPencilTouchDetectionGestureRecognizer

- (PKPencilTouchDetectionGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PKPencilTouchDetectionGestureRecognizer;
  v4 = [(PKPencilTouchDetectionGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PKPencilTouchDetectionGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1F47C1910];
    [(PKPencilTouchDetectionGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(PKPencilTouchDetectionGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)updateTimestampsforTouches:(id)touches withEvent:(id)event
{
  pK_isEventFromCrayon = [event PK_isEventFromCrayon];
  delegate = [(PKPencilTouchDetectionGestureRecognizer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PKPencilTouchDetectionGestureRecognizer *)self delegate];
    [delegate2 updateTimestampForType:pK_isEventFromCrayon];
  }
}

@end