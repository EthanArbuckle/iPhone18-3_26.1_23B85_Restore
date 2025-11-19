@interface _TUIElementAXActionsObjectBuilder
- (void)addAXAction:(id)a3;
@end

@implementation _TUIElementAXActionsObjectBuilder

- (void)addAXAction:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v8 = v4;
  if (!actions)
  {
    v6 = objc_opt_new();
    v7 = self->_actions;
    self->_actions = v6;

    v4 = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:v4];
}

@end