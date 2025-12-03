@interface _TUIHostedFactoryViewState
- (CGPoint)anchorPoint;
- (_TUIHostedFactoryViewState)initWithIdentifier:(id)identifier view:(id)view flags:(unint64_t)flags;
- (void)recycleViewWithController:(id)controller;
@end

@implementation _TUIHostedFactoryViewState

- (_TUIHostedFactoryViewState)initWithIdentifier:(id)identifier view:(id)view flags:(unint64_t)flags
{
  identifierCopy = identifier;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = _TUIHostedFactoryViewState;
  v11 = [(_TUIHostedFactoryViewState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_view, view);
    v12->_previouslyAppeared = 1;
    v12->_flags = flags;
  }

  return v12;
}

- (void)recycleViewWithController:(id)controller
{
  controllerCopy = controller;
  [(UIView *)self->_view removeFromSuperview];
  if ((self->_flags & 8) != 0)
  {
    [controllerCopy makeAvailableForReuse:self];
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