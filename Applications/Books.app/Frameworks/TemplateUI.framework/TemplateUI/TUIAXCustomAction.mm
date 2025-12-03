@interface TUIAXCustomAction
- (TUIAXCustomAction)initWithRefId:(id)id trigger:(id)trigger;
- (TUIAXCustomAction)initWithTrigger:(id)trigger actionData:(id)data actionObject:(id)object actionDelegate:(id)delegate controlIdentifier:(id)identifier;
- (TUIActionHandlerDelegate)actionDelegate;
- (id)copyFromReference:(id)reference;
- (id)dereferenceByCollector:(id)collector;
- (void)invokeWithArguments:(id)arguments;
@end

@implementation TUIAXCustomAction

- (TUIAXCustomAction)initWithTrigger:(id)trigger actionData:(id)data actionObject:(id)object actionDelegate:(id)delegate controlIdentifier:(id)identifier
{
  triggerCopy = trigger;
  dataCopy = data;
  objectCopy = object;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = TUIAXCustomAction;
  v18 = [(TUIAXCustomAction *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_trigger, trigger);
    objc_storeStrong(&v19->_actionData, data);
    objc_storeWeak(&v19->_actionDelegate, delegateCopy);
    objc_storeStrong(&v19->_actionObject, object);
    objc_storeStrong(&v19->_controlIdentifier, identifier);
  }

  return v19;
}

- (TUIAXCustomAction)initWithRefId:(id)id trigger:(id)trigger
{
  idCopy = id;
  triggerCopy = trigger;
  v12.receiver = self;
  v12.super_class = TUIAXCustomAction;
  v9 = [(TUIAXCustomAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_refId, id);
    objc_storeStrong(&v10->_trigger, trigger);
  }

  return v10;
}

- (id)copyFromReference:(id)reference
{
  referenceCopy = reference;
  v5 = [TUIAXCustomAction alloc];
  trigger = [referenceCopy trigger];
  actionData = [referenceCopy actionData];
  actionObject = [referenceCopy actionObject];
  actionDelegate = [referenceCopy actionDelegate];
  controlIdentifier = [referenceCopy controlIdentifier];

  v11 = [(TUIAXCustomAction *)v5 initWithTrigger:trigger actionData:actionData actionObject:actionObject actionDelegate:actionDelegate controlIdentifier:controlIdentifier];
  label = [(TUIAXCustomAction *)self label];
  [(TUIAXCustomAction *)v11 setLabel:label];

  [(TUIAXCustomAction *)v11 setIsDefault:[(TUIAXCustomAction *)self isDefault]];
  return v11;
}

- (id)dereferenceByCollector:(id)collector
{
  trigger = self->_trigger;
  if (!trigger)
  {
    trigger = @"press";
  }

  v6 = trigger;
  customActionByRefIdAndTrigger = [collector customActionByRefIdAndTrigger];
  v8 = [customActionByRefIdAndTrigger objectForKeyedSubscript:self->_refId];
  v9 = [v8 objectForKeyedSubscript:v6];

  return v9;
}

- (void)invokeWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  if (WeakRetained)
  {
    v5 = self->_actionData;
    arguments = [(TUIElementBehaviorArgumentsMap *)v5 arguments];
    v7 = [arguments dictionaryByAddingEntriesFromDictionary:argumentsCopy];

    behavior = [(TUIElementBehaviorArgumentsMap *)v5 behavior];
    if (behavior)
    {
      v9 = objc_loadWeakRetained(&self->_actionDelegate);
      [v9 handleActionForObject:self->_actionObject withName:behavior arguments:v7];
    }
  }
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end