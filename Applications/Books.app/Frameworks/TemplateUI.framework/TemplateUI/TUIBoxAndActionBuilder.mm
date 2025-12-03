@interface TUIBoxAndActionBuilder
- (id)finalizeTriggers;
- (void)addTrigger:(id)trigger withBehavior:(id)behavior;
@end

@implementation TUIBoxAndActionBuilder

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

@end