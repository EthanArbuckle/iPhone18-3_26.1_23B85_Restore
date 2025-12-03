@interface WFWorkoutGoalQuantityFieldParameter
+ (id)unitConversion;
- (BOOL)parameterStateIsValid:(id)valid;
- (WFAction)action;
- (id)currentWorkoutActivityType;
- (id)defaultSerializedRepresentation;
- (id)defaultState;
- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)setAction:(id)action;
- (void)updateCurrentStateWithNewUnitString:(id)string currentState:(id)state;
- (void)updatePossibleUnits;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFWorkoutGoalQuantityFieldParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style
{
  v6 = MEMORY[0x277CCDAB0];
  magnitudeCopy = magnitude;
  v8 = [v6 wf_safeUnitFromString:unit];
  v9 = MEMORY[0x277CCABB0];
  [magnitudeCopy doubleValue];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [WFHealthKitHelper localizedDisplayNameForUnit:v8 value:v12];

  return v13;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  possibleUnits = [(WFWorkoutGoalQuantityFieldParameter *)self possibleUnits];

  if (possibleUnits)
  {
    possibleUnits2 = [(WFWorkoutGoalQuantityFieldParameter *)self possibleUnits];
    unitString = [validCopy unitString];
    v8 = [possibleUnits2 containsObject:unitString];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)updatePossibleUnits
{
  action = [(WFWorkoutGoalQuantityFieldParameter *)self action];
  v4 = [(WFWorkoutGoalQuantityFieldParameter *)self key];
  v5 = [action parameterStateForKey:v4];

  unitString = [v5 unitString];
  v7 = [unitString copy];

  v8 = [MEMORY[0x277CCDAB0] unitFromString:v7];
  v9 = +[WFWorkoutGoalQuantityFieldParameter unitConversion];
  v10 = [v9 objectForKey:v8];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__19561;
  v24[4] = __Block_byref_object_dispose__19562;
  v25 = 0;
  objc_initWeak(&location, self);
  currentWorkoutActivityType = [(WFWorkoutGoalQuantityFieldParameter *)self currentWorkoutActivityType];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke;
  v16[3] = &unk_278C1BBC8;
  objc_copyWeak(&v22, &location);
  v16[4] = self;
  v12 = v8;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v21 = v24;
  v14 = v7;
  v19 = v14;
  v15 = v5;
  v20 = v15;
  [WFFitnessUIHelper preferredUnitsForActivityType:currentWorkoutActivityType completion:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

void __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke_2;
    v19[3] = &unk_278C1BB78;
    v12 = *(a1 + 32);
    v5 = *(&v12 + 1);
    v6 = *(a1 + 48);
    v22 = *(a1 + 72);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v20 = v12;
    v21 = v8;
    v9 = [v3 if_map:v19];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke_3;
    block[3] = &unk_278C1BBA0;
    block[4] = *(a1 + 32);
    v14 = v9;
    v10 = *(a1 + 64);
    v18 = *(a1 + 72);
    v15 = WeakRetained;
    v16 = v10;
    v17 = *(a1 + 56);
    v11 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

id __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 unitString];
  if (!*(*(a1 + 32) + 224))
  {
    if (*(a1 + 40))
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        if ([v11 containsObject:v5])
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
        }
      }
    }
  }

  v7 = *(*(a1 + 32) + 224);
  if (v7)
  {
    if ([v7 count] <= a3)
    {
      goto LABEL_16;
    }

    v7 = *(*(a1 + 32) + 224);
  }

  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isEqualToString:v6];
  }

  else
  {
    v10 = 1;
  }

  v12 = [*(a1 + 56) isEqualToString:v9];
  if ((v10 & 1) == 0 && v12)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  }

LABEL_16:

  return v6;
}

void __58__WFWorkoutGoalQuantityFieldParameter_updatePossibleUnits__block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 224), *(a1 + 40));
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);

    [v2 updateCurrentStateWithNewUnitString:? currentState:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
    v5 = [v4 containsObject:*(a1 + 64)];

    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 40) firstObject];
      [v6 updateCurrentStateWithNewUnitString:v7 currentState:*(a1 + 56)];
    }
  }
}

- (void)updateCurrentStateWithNewUnitString:(id)string currentState:(id)state
{
  v6 = MEMORY[0x277D7C788];
  stateCopy = state;
  stringCopy = string;
  v9 = [v6 alloc];
  magnitudeState = [stateCopy magnitudeState];

  v13 = [v9 initWithMagnitudeState:magnitudeState unitString:stringCopy];
  action = [(WFWorkoutGoalQuantityFieldParameter *)self action];
  v12 = [(WFWorkoutGoalQuantityFieldParameter *)self key];
  [action setParameterState:v13 forKey:v12];
}

- (id)defaultState
{
  v24 = *MEMORY[0x277D85DE8];
  definition = [(WFWorkoutGoalQuantityFieldParameter *)self definition];
  v4 = [definition objectForKey:*MEMORY[0x277D7CE00]];
  v5 = objc_opt_class();
  v6 = v4;
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315906;
      v17 = "WFEnforceClass";
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v5;
      v9 = v21;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v16, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  possibleUnits = [(WFWorkoutGoalQuantityFieldParameter *)self possibleUnits];
  firstObject = [possibleUnits firstObject];

  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x277D7C6A8]) initWithValue:v7];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x277D7C788]) initWithMagnitudeState:v12 unitString:firstObject];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)defaultSerializedRepresentation
{
  defaultSerializedRepresentation = self->_defaultSerializedRepresentation;
  if (!defaultSerializedRepresentation)
  {
    defaultState = [(WFWorkoutGoalQuantityFieldParameter *)self defaultState];
    serializedRepresentation = [defaultState serializedRepresentation];
    v6 = self->_defaultSerializedRepresentation;
    self->_defaultSerializedRepresentation = serializedRepresentation;

    defaultSerializedRepresentation = self->_defaultSerializedRepresentation;
  }

  return defaultSerializedRepresentation;
}

- (id)currentWorkoutActivityType
{
  action = [(WFWorkoutGoalQuantityFieldParameter *)self action];
  definition = [(WFWorkoutGoalQuantityFieldParameter *)self definition];
  v5 = [definition objectForKey:@"WFWorkoutGoalKey"];
  v6 = [action parameterStateForKey:v5];

  value = [v6 value];

  return value;
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  keyCopy = key;
  definition = [(WFWorkoutGoalQuantityFieldParameter *)self definition];
  v7 = [definition objectForKey:@"WFWorkoutGoalKey"];
  v8 = [keyCopy isEqualToString:v7];

  if (v8)
  {

    [(WFWorkoutGoalQuantityFieldParameter *)self updatePossibleUnits];
  }
}

- (void)wasRemovedFromWorkflow
{
  v4.receiver = self;
  v4.super_class = WFWorkoutGoalQuantityFieldParameter;
  [(WFWorkoutGoalQuantityFieldParameter *)&v4 wasRemovedFromWorkflow];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCCE80] object:0];
}

- (void)wasAddedToWorkflow
{
  v4.receiver = self;
  v4.super_class = WFWorkoutGoalQuantityFieldParameter;
  [(WFWorkoutGoalQuantityFieldParameter *)&v4 wasAddedToWorkflow];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updatePossibleUnits name:*MEMORY[0x277CCCE80] object:0];
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

    [(WFWorkoutGoalQuantityFieldParameter *)self updatePossibleUnits];
  }
}

+ (id)unitConversion
{
  v25[7] = *MEMORY[0x277D85DE8];
  largeCalorieUnit = [MEMORY[0x277CCDAB0] largeCalorieUnit];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v4 = [MEMORY[0x277CCDAB0] jouleUnitWithMetricPrefix:9];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{largeCalorieUnit, kilocalorieUnit, v4, 0}];
  v6 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
  v23 = largeCalorieUnit;
  v24[0] = largeCalorieUnit;
  v20 = [v5 setByRemovingObject:largeCalorieUnit];
  v25[0] = v20;
  v22 = kilocalorieUnit;
  v24[1] = kilocalorieUnit;
  v10 = [v5 setByRemovingObject:kilocalorieUnit];
  v25[1] = v10;
  v21 = v4;
  v24[2] = v4;
  v11 = [v5 setByRemovingObject:v4];
  v25[2] = v11;
  v19 = v6;
  v24[3] = v6;
  v12 = [MEMORY[0x277CBEB98] setWithObject:mileUnit];
  v25[3] = v12;
  v24[4] = mileUnit;
  v13 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v25[4] = v13;
  v24[5] = meterUnit;
  v14 = [MEMORY[0x277CBEB98] setWithObject:yardUnit];
  v25[5] = v14;
  v24[6] = yardUnit;
  v15 = [MEMORY[0x277CBEB98] setWithObject:meterUnit];
  v25[6] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

@end