@interface _TUIElementFocusItemBuilder
- (id)finalizeLinkEntities;
- (id)finalizeTriggers;
- (void)addLinkEntity:(id)entity;
- (void)addTrigger:(id)trigger withBehavior:(id)behavior;
- (void)addTrigger:(id)trigger withRefId:(id)id;
@end

@implementation _TUIElementFocusItemBuilder

- (void)addTrigger:(id)trigger withBehavior:(id)behavior
{
  triggerCopy = trigger;
  behaviorCopy = behavior;
  if (triggerCopy)
  {
    actions = self->_actions;
    if (!actions)
    {
      v8 = objc_opt_new();
      v9 = self->_actions;
      self->_actions = v8;

      actions = self->_actions;
    }

    [(NSMutableDictionary *)actions setObject:behaviorCopy forKeyedSubscript:triggerCopy];
    [(NSMutableDictionary *)self->_actionsWithRefId setObject:0 forKeyedSubscript:triggerCopy];
  }
}

- (void)addTrigger:(id)trigger withRefId:(id)id
{
  triggerCopy = trigger;
  idCopy = id;
  if (triggerCopy)
  {
    actionsWithRefId = self->_actionsWithRefId;
    if (!actionsWithRefId)
    {
      v8 = objc_opt_new();
      v9 = self->_actionsWithRefId;
      self->_actionsWithRefId = v8;

      actionsWithRefId = self->_actionsWithRefId;
    }

    [(NSMutableDictionary *)actionsWithRefId setObject:idCopy forKeyedSubscript:triggerCopy];
    [(NSMutableDictionary *)self->_actions setObject:0 forKeyedSubscript:triggerCopy];
  }
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actions refIdMap:self->_actionsWithRefId];

  return v2;
}

- (void)addLinkEntity:(id)entity
{
  entityCopy = entity;
  linkEntities = self->_linkEntities;
  v8 = entityCopy;
  if (!linkEntities)
  {
    v6 = objc_opt_new();
    v7 = self->_linkEntities;
    self->_linkEntities = v6;

    entityCopy = v8;
    linkEntities = self->_linkEntities;
  }

  [(NSMutableArray *)linkEntities addObject:entityCopy];
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

@end