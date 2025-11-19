@interface PKPencilObserverGestureRecognizer
+ (PKPencilObserverGestureRecognizer)pencilObserverWithDelegate:(uint64_t)a1;
- (CGPoint)locationInView:(id)a3;
- (void)_endGestureIfNecessary;
- (void)_inputPointFromTouch:(void *)a3 event:(void *)a4 checkPredicted:(int)a5;
- (void)setDelegate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PKPencilObserverGestureRecognizer

+ (PKPencilObserverGestureRecognizer)pencilObserverWithDelegate:(uint64_t)a1
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPencilObserverGestureRecognizer;
  [(PKPencilObserverGestureRecognizer *)&v7 setDelegate:v4];
  v5 = v4;
  self->_delegateRespondsToDidBegin = objc_opt_respondsToSelector() & 1;
  self->_delegateRespondsToDidMove = objc_opt_respondsToSelector() & 1;
  v6 = objc_opt_respondsToSelector();

  self->_delegateRespondsToDidEnd = v6 & 1;
}

- (CGPoint)locationInView:(id)a3
{
  if (a3 && self->_drawingTouch)
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

- (void)_inputPointFromTouch:(void *)a3 event:(void *)a4 checkPredicted:(int)a5
{
  v16 = a3;
  v9 = a4;
  if (a2)
  {
    v10 = [a2 view];
    if (v10)
    {
      v11 = v16;
      if (a5)
      {
        v12 = [v9 predictedTouchesForTouch:v11];
        if ([v12 count])
        {
          v13 = [v12 lastObject];

          v11 = v13;
        }
      }

      [v11 PK_locationInView:v10];
      [(PKInputPointUtility *)v10 drawingInputPoint:v11 view:0 touch:23 predicted:a1 activeInputProperties:v14, v15];
    }

    else
    {
      *(a1 + 128) = 0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  if (!self->_drawingTouch)
  {
    v7 = [a3 objectsPassingTest:&__block_literal_global_40];
    v8 = [v7 anyObject];

    if (v8)
    {
      objc_storeStrong(&self->_drawingTouch, v8);
      [(PKPencilObserverGestureRecognizer *)self setState:1];
      if (self->_delegateRespondsToDidBegin)
      {
        v9 = [(PKPencilObserverGestureRecognizer *)self delegate];
        [(PKPencilObserverGestureRecognizer *)v10 _inputPointFromTouch:v8 event:v6 checkPredicted:0];
        [v9 pencilObserver:self didBeginAtPoint:v10];
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  if ([a3 containsObject:self->_drawingTouch] && self->_delegateRespondsToDidMove)
  {
    v7 = [(PKPencilObserverGestureRecognizer *)self delegate];
    [(PKPencilObserverGestureRecognizer *)v8 _inputPointFromTouch:self->_drawingTouch event:v6 checkPredicted:1];
    [v7 pencilObserver:self didMoveToPoint:v8];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if (self)
  {
    if ([(PKPencilObserverGestureRecognizer *)self state:a3])
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(PKPencilObserverGestureRecognizer *)self setState:3, a4];

  [(PKPencilObserverGestureRecognizer *)self _endGestureIfNecessary];
}

- (void)_endGestureIfNecessary
{
  if (a1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      *(a1 + 280) = 0;

      if (*(a1 + 290) == 1)
      {
        v3 = [a1 delegate];
        [v3 pencilObserverDidEnd:a1];
      }
    }
  }
}

@end