@interface TUIBoxAndActionBuilder
- (id)finalizeTriggers;
- (void)addTrigger:(id)a3 withBehavior:(id)a4;
@end

@implementation TUIBoxAndActionBuilder

- (void)addTrigger:(id)a3 withBehavior:(id)a4
{
  v10 = a3;
  v6 = a4;
  actionsMap = self->_actionsMap;
  if (!actionsMap)
  {
    v8 = objc_opt_new();
    v9 = self->_actionsMap;
    self->_actionsMap = v8;

    actionsMap = self->_actionsMap;
  }

  [(NSMutableDictionary *)actionsMap setObject:v6 forKeyedSubscript:v10];
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actionsMap];

  return v2;
}

@end