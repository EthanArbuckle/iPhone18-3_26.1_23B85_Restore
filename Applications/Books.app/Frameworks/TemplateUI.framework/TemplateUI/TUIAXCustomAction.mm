@interface TUIAXCustomAction
- (TUIAXCustomAction)initWithRefId:(id)a3 trigger:(id)a4;
- (TUIAXCustomAction)initWithTrigger:(id)a3 actionData:(id)a4 actionObject:(id)a5 actionDelegate:(id)a6 controlIdentifier:(id)a7;
- (TUIActionHandlerDelegate)actionDelegate;
- (id)copyFromReference:(id)a3;
- (id)dereferenceByCollector:(id)a3;
- (void)invokeWithArguments:(id)a3;
@end

@implementation TUIAXCustomAction

- (TUIAXCustomAction)initWithTrigger:(id)a3 actionData:(id)a4 actionObject:(id)a5 actionDelegate:(id)a6 controlIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = TUIAXCustomAction;
  v18 = [(TUIAXCustomAction *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_trigger, a3);
    objc_storeStrong(&v19->_actionData, a4);
    objc_storeWeak(&v19->_actionDelegate, v16);
    objc_storeStrong(&v19->_actionObject, a5);
    objc_storeStrong(&v19->_controlIdentifier, a7);
  }

  return v19;
}

- (TUIAXCustomAction)initWithRefId:(id)a3 trigger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIAXCustomAction;
  v9 = [(TUIAXCustomAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_refId, a3);
    objc_storeStrong(&v10->_trigger, a4);
  }

  return v10;
}

- (id)copyFromReference:(id)a3
{
  v4 = a3;
  v5 = [TUIAXCustomAction alloc];
  v6 = [v4 trigger];
  v7 = [v4 actionData];
  v8 = [v4 actionObject];
  v9 = [v4 actionDelegate];
  v10 = [v4 controlIdentifier];

  v11 = [(TUIAXCustomAction *)v5 initWithTrigger:v6 actionData:v7 actionObject:v8 actionDelegate:v9 controlIdentifier:v10];
  v12 = [(TUIAXCustomAction *)self label];
  [(TUIAXCustomAction *)v11 setLabel:v12];

  [(TUIAXCustomAction *)v11 setIsDefault:[(TUIAXCustomAction *)self isDefault]];
  return v11;
}

- (id)dereferenceByCollector:(id)a3
{
  trigger = self->_trigger;
  if (!trigger)
  {
    trigger = @"press";
  }

  v6 = trigger;
  v7 = [a3 customActionByRefIdAndTrigger];
  v8 = [v7 objectForKeyedSubscript:self->_refId];
  v9 = [v8 objectForKeyedSubscript:v6];

  return v9;
}

- (void)invokeWithArguments:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  if (WeakRetained)
  {
    v5 = self->_actionData;
    v6 = [(TUIElementBehaviorArgumentsMap *)v5 arguments];
    v7 = [v6 dictionaryByAddingEntriesFromDictionary:v10];

    v8 = [(TUIElementBehaviorArgumentsMap *)v5 behavior];
    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_actionDelegate);
      [v9 handleActionForObject:self->_actionObject withName:v8 arguments:v7];
    }
  }
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end