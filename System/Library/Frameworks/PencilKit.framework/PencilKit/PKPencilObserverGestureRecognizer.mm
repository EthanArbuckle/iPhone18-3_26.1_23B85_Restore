@interface PKPencilObserverGestureRecognizer
+ (PKPencilObserverGestureRecognizer)pencilObserverWithDelegate:(uint64_t)delegate;
- (CGPoint)locationInView:(id)view;
- (void)_endGestureIfNecessary;
- (void)_inputPointFromTouch:(void *)touch event:(void *)event checkPredicted:(int)predicted;
- (void)setDelegate:(id)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKPencilObserverGestureRecognizer

+ (PKPencilObserverGestureRecognizer)pencilObserverWithDelegate:(uint64_t)delegate
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(PKPencilObserverGestureRecognizer);
  v4 = v3;
  if (v3)
  {
    [(PKPencilObserverGestureRecognizer *)v3 setName:@"pencilkit.pencilObserver"];
    [(PKPencilObserverGestureRecognizer *)v4 setDelegate:v2];
    [(PKPencilObserverGestureRecognizer *)v4 setDelaysTouchesEnded:0];
    [(PKPencilObserverGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(PKPencilObserverGestureRecognizer *)v4 setRequiresExclusiveTouchType:0];
    [(PKPencilObserverGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1F47C1A30];
    v5 = v4;
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7.receiver = self;
  v7.super_class = PKPencilObserverGestureRecognizer;
  [(PKPencilObserverGestureRecognizer *)&v7 setDelegate:delegateCopy];
  v5 = delegateCopy;
  self->_delegateRespondsToDidBegin = objc_opt_respondsToSelector() & 1;
  self->_delegateRespondsToDidMove = objc_opt_respondsToSelector() & 1;
  v6 = objc_opt_respondsToSelector();

  self->_delegateRespondsToDidEnd = v6 & 1;
}

- (CGPoint)locationInView:(id)view
{
  if (view && self->_drawingTouch)
  {
    drawingTouch = self->_drawingTouch;

    [(UITouch *)drawingTouch PK_locationInView:?];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = PKPencilObserverGestureRecognizer;
    [(PKPencilObserverGestureRecognizer *)&v8 locationInView:?];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_inputPointFromTouch:(void *)touch event:(void *)event checkPredicted:(int)predicted
{
  touchCopy = touch;
  eventCopy = event;
  if (a2)
  {
    view = [a2 view];
    if (view)
    {
      v11 = touchCopy;
      if (predicted)
      {
        v12 = [eventCopy predictedTouchesForTouch:v11];
        if ([v12 count])
        {
          lastObject = [v12 lastObject];

          v11 = lastObject;
        }
      }

      [v11 PK_locationInView:view];
      [(PKInputPointUtility *)view drawingInputPoint:v11 view:0 touch:23 predicted:self activeInputProperties:v14, v15];
    }

    else
    {
      *(self + 128) = 0;
      *(self + 96) = 0u;
      *(self + 112) = 0u;
      *(self + 64) = 0u;
      *(self + 80) = 0u;
      *(self + 32) = 0u;
      *(self + 48) = 0u;
      *self = 0u;
      *(self + 16) = 0u;
    }
  }

  else
  {
    *(self + 128) = 0;
    *(self + 96) = 0u;
    *(self + 112) = 0u;
    *(self + 64) = 0u;
    *(self + 80) = 0u;
    *(self + 32) = 0u;
    *(self + 48) = 0u;
    *self = 0u;
    *(self + 16) = 0u;
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  if (!self->_drawingTouch)
  {
    v7 = [began objectsPassingTest:&__block_literal_global_40];
    anyObject = [v7 anyObject];

    if (anyObject)
    {
      objc_storeStrong(&self->_drawingTouch, anyObject);
      [(PKPencilObserverGestureRecognizer *)self setState:1];
      if (self->_delegateRespondsToDidBegin)
      {
        delegate = [(PKPencilObserverGestureRecognizer *)self delegate];
        [(PKPencilObserverGestureRecognizer *)v10 _inputPointFromTouch:anyObject event:eventCopy checkPredicted:0];
        [delegate pencilObserver:self didBeginAtPoint:v10];
      }
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  if ([moved containsObject:self->_drawingTouch] && self->_delegateRespondsToDidMove)
  {
    delegate = [(PKPencilObserverGestureRecognizer *)self delegate];
    [(PKPencilObserverGestureRecognizer *)v8 _inputPointFromTouch:self->_drawingTouch event:eventCopy checkPredicted:1];
    [delegate pencilObserver:self didMoveToPoint:v8];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self)
  {
    if ([(PKPencilObserverGestureRecognizer *)self state:cancelled])
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    [(PKPencilObserverGestureRecognizer *)self setState:v5];

    [(PKPencilObserverGestureRecognizer *)self _endGestureIfNecessary];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(PKPencilObserverGestureRecognizer *)self setState:3, event];

  [(PKPencilObserverGestureRecognizer *)self _endGestureIfNecessary];
}

- (void)_endGestureIfNecessary
{
  if (self)
  {
    v2 = *(self + 280);
    if (v2)
    {
      *(self + 280) = 0;

      if (*(self + 290) == 1)
      {
        delegate = [self delegate];
        [delegate pencilObserverDidEnd:self];
      }
    }
  }
}

@end