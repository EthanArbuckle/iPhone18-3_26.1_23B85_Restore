@interface _TUIElementLinkEntityBuilder
- (id)finalizeLinkEntityWithContext:(id)context;
- (void)addLinkEntityAction:(id)action;
@end

@implementation _TUIElementLinkEntityBuilder

- (void)addLinkEntityAction:(id)action
{
  actionCopy = action;
  name = [actionCopy name];
  v5 = [name length];

  if (v5)
  {
    name2 = [actionCopy name];
    actions = self->_actions;
    if (!actions)
    {
      v8 = objc_opt_new();
      v9 = self->_actions;
      self->_actions = v8;

      actions = self->_actions;
    }

    [(NSMutableDictionary *)actions setObject:actionCopy forKeyedSubscript:name2];
  }
}

- (id)finalizeLinkEntityWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_type && self->_identifier && self->_title)
  {
    v6 = [[TUILinkEntityModel alloc] initWithType:self->_type identifier:self->_identifier title:self->_title actionsMap:self->_actions];
  }

  else
  {
    [contextCopy reportError:1016];
    v6 = 0;
  }

  return v6;
}

@end