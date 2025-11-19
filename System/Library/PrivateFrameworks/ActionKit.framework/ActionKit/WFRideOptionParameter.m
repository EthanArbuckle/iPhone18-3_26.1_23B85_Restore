@interface WFRideOptionParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (WFAction)action;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)setAction:(id)a3;
@end

@implementation WFRideOptionParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v5 = a4;
  v6 = [(WFRideOptionParameter *)self definition];
  v7 = [v6 objectForKey:@"PartySizeKey"];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {

    [(WFRideOptionParameter *)self stateValidityCriteriaDidChange];
  }
}

- (void)setAction:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_action);
    [v5 removeEventObserver:self];

    v6 = objc_storeWeak(&self->_action, obj);
    [obj addEventObserver:self];
  }
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v5 = a3;
  v6 = [(WFDynamicEnumerationParameter *)self possibleStates];
  if (!v6)
  {
    v3 = [(WFDynamicEnumerationParameter *)self possibleStatesLoadingError];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v7 = [v5 value];

  if (!v6)
  {

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = 1;
    goto LABEL_14;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = MEMORY[0x277CBEB98];
  v9 = [(WFDynamicEnumerationParameter *)self possibleStates];
  v10 = [v9 valueForKeyPath:@"value.name"];
  v11 = [v8 setWithArray:v10];

  v12 = [v5 value];
  v13 = [v12 name];
  v14 = [v11 containsObject:v13];

  if (v14)
  {
    v15 = [(WFRideOptionParameter *)self action];
    v16 = [(WFRideOptionParameter *)self definition];
    v17 = [v16 objectForKey:@"PartySizeKey"];
    v18 = [v15 parameterStateForKey:v17];

    v19 = [v18 value];

    if (v19)
    {
      v20 = [v18 value];
      v21 = [v20 number];
      v22 = [v21 unsignedIntegerValue];

      v23 = [v5 value];
      v24 = [v23 wf_isAvailableForPartySize:v22];
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