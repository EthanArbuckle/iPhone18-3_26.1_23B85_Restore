@interface _TUIElementLinkEntityBuilder
- (id)finalizeLinkEntityWithContext:(id)a3;
- (void)addLinkEntityAction:(id)a3;
@end

@implementation _TUIElementLinkEntityBuilder

- (void)addLinkEntityAction:(id)a3
{
  v10 = a3;
  v4 = [v10 name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v10 name];
    actions = self->_actions;
    if (!actions)
    {
      v8 = objc_opt_new();
      v9 = self->_actions;
      self->_actions = v8;

      actions = self->_actions;
    }

    [(NSMutableDictionary *)actions setObject:v10 forKeyedSubscript:v6];
  }
}

- (id)finalizeLinkEntityWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type && self->_identifier && self->_title)
  {
    v6 = [[TUILinkEntityModel alloc] initWithType:self->_type identifier:self->_identifier title:self->_title actionsMap:self->_actions];
  }

  else
  {
    [v4 reportError:1016];
    v6 = 0;
  }

  return v6;
}

@end