@interface TUIAXCustomActionsCollector
- (TUIAXCustomActionsCollector)init;
- (void)addActionTriggerHandler:(id)handler controlIdentifier:(id)identifier;
@end

@implementation TUIAXCustomActionsCollector

- (TUIAXCustomActionsCollector)init
{
  v8.receiver = self;
  v8.super_class = TUIAXCustomActionsCollector;
  v2 = [(TUIAXCustomActionsCollector *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    customActionByRefIdAndTrigger = v2->_customActionByRefIdAndTrigger;
    v2->_customActionByRefIdAndTrigger = v3;

    v5 = objc_opt_new();
    customActionsForPress = v2->_customActionsForPress;
    v2->_customActionsForPress = v5;
  }

  return v2;
}

- (void)addActionTriggerHandler:(id)handler controlIdentifier:(id)identifier
{
  handlerCopy = handler;
  identifierCopy = identifier;
  actionsData = [handlerCopy actionsData];
  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = actionsData;
  obj = [actionsData allTriggers];
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = [TUIAXCustomAction alloc];
        v13 = [v26 behaviorDataForTrigger:v11];
        actionObject = [handlerCopy actionObject];
        actionDelegate = [handlerCopy actionDelegate];
        v16 = [(TUIAXCustomAction *)v12 initWithTrigger:v11 actionData:v13 actionObject:actionObject actionDelegate:actionDelegate controlIdentifier:identifierCopy];

        [v28 setObject:v16 forKey:v11];
        if ([v11 isEqualToString:@"press"])
        {
          [(NSMutableArray *)self->_customActionsForPress addObject:v16];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  refId = [handlerCopy refId];
  if (refId)
  {
    v18 = refId;
    customActionByRefIdAndTrigger = self->_customActionByRefIdAndTrigger;
    refId2 = [handlerCopy refId];
    v21 = [(NSMutableDictionary *)customActionByRefIdAndTrigger objectForKey:refId2];

    if (!v21)
    {
      v22 = self->_customActionByRefIdAndTrigger;
      refId3 = [handlerCopy refId];
      [(NSMutableDictionary *)v22 setObject:v28 forKey:refId3];
    }
  }
}

@end