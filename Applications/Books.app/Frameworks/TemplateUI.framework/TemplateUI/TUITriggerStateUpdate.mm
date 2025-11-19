@interface TUITriggerStateUpdate
- (TUITriggerStateUpdate)initWithTriggerStateUpdate:(id)a3;
- (id)valueForTriggerWithName:(id)a3;
- (unint64_t)observationModeForTriggerWithName:(id)a3;
- (unint64_t)stateForTriggerWithName:(id)a3;
@end

@implementation TUITriggerStateUpdate

- (TUITriggerStateUpdate)initWithTriggerStateUpdate:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TUITriggerStateUpdate;
  v5 = [(TUITriggerStateUpdate *)&v19 init];
  if (v5)
  {
    v6 = [v4 triggerNameToTriggerMapping];
    v7 = [v6 copy];
    triggerNameToTriggerMapping = v5->_triggerNameToTriggerMapping;
    v5->_triggerNameToTriggerMapping = v7;

    v9 = [v4 triggerToStateMapping];
    v10 = [v9 copy];
    triggerToStateMapping = v5->_triggerToStateMapping;
    v5->_triggerToStateMapping = v10;

    v12 = [v4 triggerToValueMapping];
    v13 = [v12 copy];
    triggerToValueMapping = v5->_triggerToValueMapping;
    v5->_triggerToValueMapping = v13;

    v15 = [v4 orderedKeys];
    v16 = [v15 copy];
    orderedKeys = v5->_orderedKeys;
    v5->_orderedKeys = v16;
  }

  return v5;
}

- (unint64_t)stateForTriggerWithName:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSDictionary *)self->_triggerToStateMapping valueForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)valueForTriggerWithName:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_triggerToValueMapping valueForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)observationModeForTriggerWithName:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSDictionary *)self->_triggerNameToTriggerMapping valueForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 observationMode];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end