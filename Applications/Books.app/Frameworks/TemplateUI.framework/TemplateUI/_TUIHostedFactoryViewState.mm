@interface _TUIHostedFactoryViewState
- (CGPoint)anchorPoint;
- (_TUIHostedFactoryViewState)initWithIdentifier:(id)a3 view:(id)a4 flags:(unint64_t)a5;
- (void)recycleViewWithController:(id)a3;
@end

@implementation _TUIHostedFactoryViewState

- (_TUIHostedFactoryViewState)initWithIdentifier:(id)a3 view:(id)a4 flags:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _TUIHostedFactoryViewState;
  v11 = [(_TUIHostedFactoryViewState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_view, a4);
    v12->_previouslyAppeared = 1;
    v12->_flags = a5;
  }

  return v12;
}

- (void)recycleViewWithController:(id)a3
{
  v4 = a3;
  [(UIView *)self->_view removeFromSuperview];
  if ((self->_flags & 8) != 0)
  {
    [v4 makeAvailableForReuse:self];
  }
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end