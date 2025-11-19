@interface WFMeasurementCreateAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (id)currentUnit;
- (id)currentUnitTypeState;
- (id)currentValue;
- (id)parametersRequiringUserInputAlongsideParameter:(id)a3;
- (id)unitParameter;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFMeasurementCreateAction

- (id)currentUnitTypeState
{
  v2 = [(WFMeasurementCreateAction *)self parameterStateForKey:@"WFMeasurementUnitType"];
  v3 = [v2 value];

  return v3;
}

- (id)unitParameter
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(WFMeasurementCreateAction *)self parameterForKey:@"WFMeasurementUnit"];
  v3 = objc_opt_class();
  v4 = v2;
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315906;
      v11 = "WFEnforceClass";
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v7 = v15;
      _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v10, 0x2Au);
    }

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)parametersRequiringUserInputAlongsideParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v5 isEqualToString:@"WFMeasurementUnitType"];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = [(WFMeasurementCreateAction *)self parameterForKey:@"WFMeasurementUnit"];
    v9 = [v7 setWithObject:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFMeasurementCreateAction;
    v9 = [(WFMeasurementCreateAction *)&v11 parametersRequiringUserInputAlongsideParameter:v4];
  }

  return v9;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = WFMeasurementCreateAction;
  v7 = [(WFMeasurementCreateAction *)&v11 setParameterState:a3 forKey:v6];
  if (v7)
  {
    if ([v6 isEqualToString:@"WFMeasurementUnitType"])
    {
      v8 = [(WFMeasurementCreateAction *)self currentUnitTypeState];
      v9 = [(WFMeasurementCreateAction *)self unitParameter];
      [v9 setUnitType:v8];
      [v9 setHidden:v8 == 0];
    }

    else if ([v6 isEqualToString:@"WFMeasurementUnit"])
    {
      [(WFMeasurementCreateAction *)self outputDetailsUpdated];
    }
  }

  return v7;
}

- (void)initializeParameters
{
  v6.receiver = self;
  v6.super_class = WFMeasurementCreateAction;
  [(WFMeasurementCreateAction *)&v6 initializeParameters];
  v3 = [(WFMeasurementCreateAction *)self currentUnitTypeState];
  v4 = [(WFMeasurementCreateAction *)self unitParameter];
  [v4 setUnitType:v3];

  v5 = [(WFMeasurementCreateAction *)self unitParameter];
  [v5 setHidden:v3 == 0];
}

- (id)currentValue
{
  v2 = [(WFMeasurementCreateAction *)self parameterValueForKey:@"WFMeasurementUnit" ofClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 magnitude];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentUnit
{
  v3 = [(WFMeasurementCreateAction *)self parameterValueForKey:@"WFMeasurementUnit" ofClass:objc_opt_class()];
  if (v3)
  {
    v4 = [(WFMeasurementCreateAction *)self parameterValueForKey:@"WFMeasurementUnitType" ofClass:objc_opt_class()];
    v5 = [MEMORY[0x277D7A050] availableUnitsForUnitType:v4];
    v6 = [v3 unitString];
    v7 = [v5 objectMatchingKey:@"symbol" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [(WFMeasurementCreateAction *)self currentUnit];
  v5 = [(WFMeasurementCreateAction *)self currentValue];
  if (v4)
  {
    v6 = MEMORY[0x277CFC2F8];
    v7 = objc_alloc(MEMORY[0x277CCAB10]);
    [v5 doubleValue];
    v8 = [v7 initWithDoubleValue:v4 unit:?];
    v9 = [v6 itemWithObject:v8];

    v10 = MEMORY[0x277CFC2E0];
    v18 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v12 = [v10 collectionWithItems:v11];
    [(WFMeasurementCreateAction *)self setOutput:v12];

    [(WFMeasurementCreateAction *)self finishRunningWithError:0];
  }

  else
  {
    v9 = WFLocalizedString(@"Measurement failed because no unit was specified. Please pick a unit.");
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D7CB30];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v13 errorWithDomain:v14 code:5 userInfo:v15];
    [(WFMeasurementCreateAction *)self finishRunningWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end