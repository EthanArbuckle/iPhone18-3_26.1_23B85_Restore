@interface TUIStateAndActionBuilder
- (id)finalizeAnimationGroups;
- (id)finalizeTriggers;
- (void)addAnimationGroup:(id)group withName:(id)name;
- (void)addModel:(id)model forState:(id)state;
- (void)addTrigger:(id)trigger withBehavior:(id)behavior;
@end

@implementation TUIStateAndActionBuilder

- (void)addTrigger:(id)trigger withBehavior:(id)behavior
{
  triggerCopy = trigger;
  behaviorCopy = behavior;
  actionsMap = self->_actionsMap;
  if (!actionsMap)
  {
    v8 = objc_opt_new();
    v9 = self->_actionsMap;
    self->_actionsMap = v8;

    actionsMap = self->_actionsMap;
  }

  [(NSMutableDictionary *)actionsMap setObject:behaviorCopy forKeyedSubscript:triggerCopy];
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actionsMap];

  return v2;
}

- (void)addModel:(id)model forState:(id)state
{
  modelCopy = model;
  stateCopy = state;
  if (!self->_states)
  {
    v8 = objc_opt_new();
    states = self->_states;
    self->_states = v8;
  }

  v10 = objc_alloc_init(TUIStateModel);
  [(TUIStateModel *)v10 setState:stateCopy];
  v12 = modelCopy;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [(TUISingleModelContainer *)v10 updateModelChildren:v11];

  [(NSMutableDictionary *)self->_states setObject:v10 forKey:stateCopy];
}

- (void)addAnimationGroup:(id)group withName:(id)name
{
  groupCopy = group;
  nameCopy = name;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:groupCopy forKeyedSubscript:nameCopy];
}

- (id)finalizeAnimationGroups
{
  if ([(NSMutableDictionary *)self->_animations count])
  {
    v3 = objc_alloc_init(TUIAnimationGroupCollection);
    [(TUIAnimationGroupCollection *)v3 setGroups:self->_animations];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end