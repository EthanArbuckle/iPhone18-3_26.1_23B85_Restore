@interface WFRideOptionParameter
- (BOOL)parameterStateIsValid:(id)valid;
- (WFAction)action;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)setAction:(id)action;
@end

@implementation WFRideOptionParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  keyCopy = key;
  definition = [(WFRideOptionParameter *)self definition];
  v7 = [definition objectForKey:@"PartySizeKey"];
  v8 = [keyCopy isEqualToString:v7];

  if (v8)
  {

    [(WFRideOptionParameter *)self stateValidityCriteriaDidChange];
  }
}

- (void)setAction:(id)action
{
  obj = action;
  WeakRetained = objc_loadWeakRetained(&self->_action);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_action);
    [v5 removeEventObserver:self];

    v6 = objc_storeWeak(&self->_action, obj);
    [obj addEventObserver:self];
  }
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  possibleStates = [(WFDynamicEnumerationParameter *)self possibleStates];
  if (!possibleStates)
  {
    possibleStatesLoadingError = [(WFDynamicEnumerationParameter *)self possibleStatesLoadingError];
    if (!possibleStatesLoadingError)
    {
      goto LABEL_9;
    }
  }

  value = [validCopy value];

  if (!possibleStates)
  {

    if (value)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = 1;
    goto LABEL_14;
  }

  if (!value)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = MEMORY[0x277CBEB98];
  possibleStates2 = [(WFDynamicEnumerationParameter *)self possibleStates];
  v10 = [possibleStates2 valueForKeyPath:@"value.name"];
  v11 = [v8 setWithArray:v10];

  value2 = [validCopy value];
  name = [value2 name];
  v14 = [v11 containsObject:name];

  if (v14)
  {
    action = [(WFRideOptionParameter *)self action];
    definition = [(WFRideOptionParameter *)self definition];
    v17 = [definition objectForKey:@"PartySizeKey"];
    v18 = [action parameterStateForKey:v17];

    value3 = [v18 value];

    if (value3)
    {
      value4 = [v18 value];
      number = [value4 number];
      unsignedIntegerValue = [number unsignedIntegerValue];

      value5 = [validCopy value];
      v24 = [value5 wf_isAvailableForPartySize:unsignedIntegerValue];
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_14:
  return v24;
}

@end