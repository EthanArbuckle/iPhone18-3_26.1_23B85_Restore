@interface _TUIDragInteraction
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (TUIDragControllerDelegate)dragDelegate;
@end

@implementation _TUIDragInteraction

- (TUIActionHandlerDelegate)actionHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerDelegate);

  return WeakRetained;
}

- (TUIDragControllerDelegate)dragDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  return WeakRetained;
}

@end