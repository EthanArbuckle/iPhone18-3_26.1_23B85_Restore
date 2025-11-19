@interface SCATCustomFocusingView
- (BOOL)updateFocusState:(int64_t)a3;
- (SCATCustomFocusingView)initWithFrame:(CGRect)a3;
@end

@implementation SCATCustomFocusingView

- (SCATCustomFocusingView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SCATCustomFocusingView;
  result = [(SCATCustomFocusingView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_focusState = -1;
  }

  return result;
}

- (BOOL)updateFocusState:(int64_t)a3
{
  focusState = self->_focusState;
  if (focusState != a3)
  {
    self->_focusState = a3;
  }

  return focusState != a3;
}

@end