@interface _TUIElementFocusItemBuilder
- (id)finalizeLinkEntities;
- (id)finalizeTriggers;
- (void)addLinkEntity:(id)a3;
- (void)addTrigger:(id)a3 withBehavior:(id)a4;
- (void)addTrigger:(id)a3 withRefId:(id)a4;
@end

@implementation _TUIElementFocusItemBuilder

- (void)addTrigger:(id)a3 withBehavior:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    actions = self->_actions;
    if (!actions)
    {
      v8 = objc_opt_new();
      v9 = self->_actions;
      self->_actions = v8;

      actions = self->_actions;
    }

    [(NSMutableDictionary *)actions setObject:v6 forKeyedSubscript:v10];
    [(NSMutableDictionary *)self->_actionsWithRefId setObject:0 forKeyedSubscript:v10];
  }
}

- (void)addTrigger:(id)a3 withRefId:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    actionsWithRefId = self->_actionsWithRefId;
    if (!actionsWithRefId)
    {
      v8 = objc_opt_new();
      v9 = self->_actionsWithRefId;
      self->_actionsWithRefId = v8;

      actionsWithRefId = self->_actionsWithRefId;
    }

    [(NSMutableDictionary *)actionsWithRefId setObject:v6 forKeyedSubscript:v10];
    [(NSMutableDictionary *)self->_actions setObject:0 forKeyedSubscript:v10];
  }
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actions refIdMap:self->_actionsWithRefId];

  return v2;
}

- (void)addLinkEntity:(id)a3
{
  v4 = a3;
  linkEntities = self->_linkEntities;
  v8 = v4;
  if (!linkEntities)
  {
    v6 = objc_opt_new();
    v7 = self->_linkEntities;
    self->_linkEntities = v6;

    v4 = v8;
    linkEntities = self->_linkEntities;
  }

  [(NSMutableArray *)linkEntities addObject:v4];
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

@end