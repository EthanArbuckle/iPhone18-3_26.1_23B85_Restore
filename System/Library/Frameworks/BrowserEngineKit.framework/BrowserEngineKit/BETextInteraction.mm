@interface BETextInteraction
- (BETextInteraction)init;
- (BETextInteractionDelegate)delegate;
- (UIView)view;
- (id)beTextInput;
- (void)didMoveToView:(id)a3;
- (void)selectionBoundaryAdjustedToPoint:(CGPoint)a3 touchPhase:(int64_t)a4 flags:(unint64_t)a5;
- (void)selectionChangedWithGestureAtPoint:(CGPoint)a3 gesture:(int64_t)a4 state:(int64_t)a5 flags:(unint64_t)a6;
- (void)selectionDidChange:(id)a3;
- (void)selectionWillChange:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation BETextInteraction

- (BETextInteraction)init
{
  v6.receiver = self;
  v6.super_class = BETextInteraction;
  v2 = [(BETextInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DC6C0]);
    interaction = v2->_interaction;
    v2->_interaction = v3;

    [(UIAsyncTextInteraction *)v2->_interaction setDelegate:v2];
  }

  return v2;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)beTextInput
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained conformsToProtocol:&unk_1F10F27F8];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_view);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)selectionChangedWithGestureAtPoint:(CGPoint)a3 gesture:(int64_t)a4 state:(int64_t)a5 flags:(unint64_t)a6
{
  interaction = self->_interaction;
  if ((a4 - 1) > 0xD)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_19D520750[a4 - 1];
  }

  [(UIAsyncTextInteraction *)interaction selectionChangedWithGestureAt:v7 withGesture:a5 withState:a6 & 7 withFlags:a3.x, a3.y];
}

- (void)selectionBoundaryAdjustedToPoint:(CGPoint)a3 touchPhase:(int64_t)a4 flags:(unint64_t)a5
{
  interaction = self->_interaction;
  if (a4 >= 5)
  {
    a4 = 5;
  }

  [(UIAsyncTextInteraction *)interaction selectionChangedWithTouchAt:a4 withSelectionTouch:a5 & 7 withFlags:a3.x, a3.y];
}

- (void)willMoveToView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained removeInteraction:self->_interaction];
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_view, v4);
  [v4 addInteraction:self->_interaction];
}

- (void)selectionWillChange:(id)a3
{
  v4 = [(BETextInteraction *)self delegate];
  [v4 systemWillChangeSelectionForInteraction:self];

  v6 = [(BETextInteraction *)self beTextInput];
  v5 = [v6 asyncInputDelegate];
  [v5 selectionWillChangeForTextInput:v6];
}

- (void)selectionDidChange:(id)a3
{
  v6 = [(BETextInteraction *)self beTextInput];
  v4 = [v6 asyncInputDelegate];
  [v4 selectionDidChangeForTextInput:v6];

  v5 = [(BETextInteraction *)self delegate];
  [v5 systemDidChangeSelectionForInteraction:self];
}

- (BETextInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end