@interface SCATCustomFocusingView
- (BOOL)updateFocusState:(int64_t)state;
- (SCATCustomFocusingView)initWithFrame:(CGRect)frame;
@end

@implementation SCATCustomFocusingView

- (SCATCustomFocusingView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SCATCustomFocusingView;
  result = [(SCATCustomFocusingView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_focusState = -1;
  }

  return result;
}

- (BOOL)updateFocusState:(int64_t)state
{
  focusState = self->_focusState;
  if (focusState != state)
  {
    self->_focusState = state;
  }

  return focusState != state;
}

@end