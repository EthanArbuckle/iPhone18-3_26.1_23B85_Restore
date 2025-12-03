@interface BETextInteraction
- (BETextInteraction)init;
- (BETextInteractionDelegate)delegate;
- (UIView)view;
- (id)beTextInput;
- (void)didMoveToView:(id)view;
- (void)selectionBoundaryAdjustedToPoint:(CGPoint)point touchPhase:(int64_t)phase flags:(unint64_t)flags;
- (void)selectionChangedWithGestureAtPoint:(CGPoint)point gesture:(int64_t)gesture state:(int64_t)state flags:(unint64_t)flags;
- (void)selectionDidChange:(id)change;
- (void)selectionWillChange:(id)change;
- (void)willMoveToView:(id)view;
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

- (void)selectionChangedWithGestureAtPoint:(CGPoint)point gesture:(int64_t)gesture state:(int64_t)state flags:(unint64_t)flags
{
  interaction = self->_interaction;
  if ((gesture - 1) > 0xD)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_19D520750[gesture - 1];
  }

  [(UIAsyncTextInteraction *)interaction selectionChangedWithGestureAt:v7 withGesture:state withState:flags & 7 withFlags:point.x, point.y];
}

- (void)selectionBoundaryAdjustedToPoint:(CGPoint)point touchPhase:(int64_t)phase flags:(unint64_t)flags
{
  interaction = self->_interaction;
  if (phase >= 5)
  {
    phase = 5;
  }

  [(UIAsyncTextInteraction *)interaction selectionChangedWithTouchAt:phase withSelectionTouch:flags & 7 withFlags:point.x, point.y];
}

- (void)willMoveToView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained removeInteraction:self->_interaction];
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  [viewCopy addInteraction:self->_interaction];
}

- (void)selectionWillChange:(id)change
{
  delegate = [(BETextInteraction *)self delegate];
  [delegate systemWillChangeSelectionForInteraction:self];

  beTextInput = [(BETextInteraction *)self beTextInput];
  asyncInputDelegate = [beTextInput asyncInputDelegate];
  [asyncInputDelegate selectionWillChangeForTextInput:beTextInput];
}

- (void)selectionDidChange:(id)change
{
  beTextInput = [(BETextInteraction *)self beTextInput];
  asyncInputDelegate = [beTextInput asyncInputDelegate];
  [asyncInputDelegate selectionDidChangeForTextInput:beTextInput];

  delegate = [(BETextInteraction *)self delegate];
  [delegate systemDidChangeSelectionForInteraction:self];
}

- (BETextInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end