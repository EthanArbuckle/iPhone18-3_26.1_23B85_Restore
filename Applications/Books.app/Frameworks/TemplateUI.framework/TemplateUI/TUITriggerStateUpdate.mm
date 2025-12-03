@interface TUITriggerStateUpdate
- (TUITriggerStateUpdate)initWithTriggerStateUpdate:(id)update;
- (id)valueForTriggerWithName:(id)name;
- (unint64_t)observationModeForTriggerWithName:(id)name;
- (unint64_t)stateForTriggerWithName:(id)name;
@end

@implementation TUITriggerStateUpdate

- (TUITriggerStateUpdate)initWithTriggerStateUpdate:(id)update
{
  updateCopy = update;
  v19.receiver = self;
  v19.super_class = TUITriggerStateUpdate;
  v5 = [(TUITriggerStateUpdate *)&v19 init];
  if (v5)
  {
    triggerNameToTriggerMapping = [updateCopy triggerNameToTriggerMapping];
    v7 = [triggerNameToTriggerMapping copy];
    triggerNameToTriggerMapping = v5->_triggerNameToTriggerMapping;
    v5->_triggerNameToTriggerMapping = v7;

    triggerToStateMapping = [updateCopy triggerToStateMapping];
    v10 = [triggerToStateMapping copy];
    triggerToStateMapping = v5->_triggerToStateMapping;
    v5->_triggerToStateMapping = v10;

    triggerToValueMapping = [updateCopy triggerToValueMapping];
    v13 = [triggerToValueMapping copy];
    triggerToValueMapping = v5->_triggerToValueMapping;
    v5->_triggerToValueMapping = v13;

    orderedKeys = [updateCopy orderedKeys];
    v16 = [orderedKeys copy];
    orderedKeys = v5->_orderedKeys;
    v5->_orderedKeys = v16;
  }

  return v5;
}

- (unint64_t)stateForTriggerWithName:(id)name
{
  nameCopy = name;
  if (nameCopy && ([(NSDictionary *)self->_triggerToStateMapping valueForKey:nameCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)valueForTriggerWithName:(id)name
{
  if (name)
  {
    v4 = [(NSDictionary *)self->_triggerToValueMapping valueForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)observationModeForTriggerWithName:(id)name
{
  nameCopy = name;
  if (nameCopy && ([(NSDictionary *)self->_triggerNameToTriggerMapping valueForKey:nameCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    observationMode = [v5 observationMode];
  }

  else
  {
    observationMode = 0;
  }

  return observationMode;
}

@end