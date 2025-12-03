@interface _TUIElementAXActionsObjectBuilder
- (void)addAXAction:(id)action;
@end

@implementation _TUIElementAXActionsObjectBuilder

- (void)addAXAction:(id)action
{
  actionCopy = action;
  actions = self->_actions;
  v8 = actionCopy;
  if (!actions)
  {
    v6 = objc_opt_new();
    v7 = self->_actions;
    self->_actions = v6;

    actionCopy = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:actionCopy];
}

@end