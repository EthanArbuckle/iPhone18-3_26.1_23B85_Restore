@interface WFAccountPickerParameter
- (NSArray)possibleStates;
- (WFAccountPickerParameter)initWithDefinition:(id)a3;
- (id)accountWithName:(id)a3;
- (id)defaultSerializedRepresentation;
- (void)dealloc;
- (void)possibleStatesDidChange;
- (void)wasAddedToWorkflow;
@end

@implementation WFAccountPickerParameter

- (id)accountWithName:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)[(WFAccountPickerParameter *)self accountClass] accounts];
  v6 = [v5 objectMatchingKey:@"localizedName" value:v4];

  return v6;
}

- (NSArray)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = [(objc_class *)[(WFAccountPickerParameter *)self accountClass] accounts];
    v5 = [v4 if_compactMap:&__block_literal_global_7879];
    v6 = self->_possibleStates;
    self->_possibleStates = v5;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

id __42__WFAccountPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 localizedName];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D7C928]);
    v5 = [v2 localizedName];
    v6 = [v4 initWithValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultSerializedRepresentation
{
  v2 = [(objc_class *)[(WFAccountPickerParameter *)self accountClass] accounts];
  v3 = [v2 firstObject];
  v4 = [v3 localizedName];

  if (v4)
  {
    v5 = [MEMORY[0x277D7C928] serializedRepresentationFromValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)possibleStatesDidChange
{
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  [(WFAccountPickerParameter *)self defaultSerializedRepresentationDidChange];
  v4.receiver = self;
  v4.super_class = WFAccountPickerParameter;
  [(WFAccountPickerParameter *)&v4 possibleStatesDidChange];
}

- (void)wasAddedToWorkflow
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = WFAccountPickerParameter;
  [(WFAccountPickerParameter *)&v13 wasAddedToWorkflow];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(objc_class *)[(WFAccountPickerParameter *)self accountClass] accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) refreshWithCompletionHandler:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(WFAccountPickerParameter *)self accountClass];
  v4 = [(WFAccountPickerParameter *)self observer];
  [(objc_class *)v3 removeAccountObserver:v4];

  v5.receiver = self;
  v5.super_class = WFAccountPickerParameter;
  [(WFAccountPickerParameter *)&v5 dealloc];
}

- (WFAccountPickerParameter)initWithDefinition:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WFAccountPickerParameter;
  v5 = [(WFAccountPickerParameter *)&v23 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AccountClass"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v25 = "WFEnforceClass";
        v26 = 2114;
        v27 = v8;
        v28 = 2114;
        v29 = v11;
        v30 = 2114;
        v31 = v7;
        v12 = v11;
        _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v13 = NSClassFromString(v9);
    accountClass = v5->_accountClass;
    v5->_accountClass = v13;

    objc_initWeak(buf, v5);
    v15 = v5->_accountClass;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__WFAccountPickerParameter_initWithDefinition___block_invoke;
    v21[3] = &unk_278C1EEF0;
    objc_copyWeak(&v22, buf);
    v16 = [(objc_class *)v15 addAccountObserver:v21];
    observer = v5->_observer;
    v5->_observer = v16;

    v18 = v5;
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

void __47__WFAccountPickerParameter_initWithDefinition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained possibleStatesDidChange];
}

@end