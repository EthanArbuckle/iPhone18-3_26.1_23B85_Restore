@interface TUIAXCustomActionsCollector
- (TUIAXCustomActionsCollector)init;
- (void)addActionTriggerHandler:(id)a3 controlIdentifier:(id)a4;
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

- (void)addActionTriggerHandler:(id)a3 controlIdentifier:(id)a4
{
  v5 = a3;
  v27 = a4;
  v6 = [v5 actionsData];
  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v6;
  obj = [v6 allTriggers];
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
        v14 = [v5 actionObject];
        v15 = [v5 actionDelegate];
        v16 = [(TUIAXCustomAction *)v12 initWithTrigger:v11 actionData:v13 actionObject:v14 actionDelegate:v15 controlIdentifier:v27];

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

  v17 = [v5 refId];
  if (v17)
  {
    v18 = v17;
    customActionByRefIdAndTrigger = self->_customActionByRefIdAndTrigger;
    v20 = [v5 refId];
    v21 = [(NSMutableDictionary *)customActionByRefIdAndTrigger objectForKey:v20];

    if (!v21)
    {
      v22 = self->_customActionByRefIdAndTrigger;
      v23 = [v5 refId];
      [(NSMutableDictionary *)v22 setObject:v28 forKey:v23];
    }
  }
}

@end