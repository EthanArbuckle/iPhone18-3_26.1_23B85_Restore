@interface WFMapsAppPickerParameter
- (WFMapsAppPickerParameter)initWithDefinition:(id)definition;
- (id)localizedLabelForPossibleState:(id)state;
- (id)possibleStatesForLocalization;
- (void)addObservers;
- (void)dealloc;
- (void)refreshInstalledApps;
- (void)removeObservers;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFMapsAppPickerParameter

- (void)removeObservers
{
  mEMORY[0x277D7C540] = [MEMORY[0x277D7C540] sharedRegistry];
  supportedAppIdentifiers = [(WFMapsAppPickerParameter *)self supportedAppIdentifiers];
  array = [supportedAppIdentifiers array];
  [mEMORY[0x277D7C540] removeInstallStatusObserver:self forAppIdentifiers:array];
}

- (void)addObservers
{
  mEMORY[0x277D7C540] = [MEMORY[0x277D7C540] sharedRegistry];
  supportedAppIdentifiers = [(WFMapsAppPickerParameter *)self supportedAppIdentifiers];
  array = [supportedAppIdentifiers array];
  [mEMORY[0x277D7C540] addInstallStatusObserver:self forAppIdentifiers:array];
}

- (void)refreshInstalledApps
{
  mEMORY[0x277D7C540] = [MEMORY[0x277D7C540] sharedRegistry];
  supportedAppIdentifiers = [(WFMapsAppPickerParameter *)self supportedAppIdentifiers];
  array = [supportedAppIdentifiers array];
  v9 = [mEMORY[0x277D7C540] appsWithIdentifiers:array];

  v6 = [v9 if_compactMap:&__block_literal_global_245];
  possibleStates = self->_possibleStates;
  self->_possibleStates = v6;

  [(WFMapsAppPickerParameter *)self possibleStatesDidChange];
  possibleStates = [(WFMapsAppPickerParameter *)self possibleStates];
  -[WFMapsAppPickerParameter setHidden:](self, "setHidden:", [possibleStates count] < 2);
}

id __48__WFMapsAppPickerParameter_refreshInstalledApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isInstalled])
  {
    v3 = objc_alloc(MEMORY[0x277D7C928]);
    v4 = WFMapsAppNamesByIdentifier();
    v5 = [v2 identifier];
    v6 = [v4 objectForKey:v5];
    v7 = [v3 initWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedLabelForPossibleState:(id)state
{
  value = [state value];
  v4 = WFLocalizedMapsAppNameForAppName(value);

  return v4;
}

- (id)possibleStatesForLocalization
{
  v2 = WFMapsAppNamesByIdentifier();
  allValues = [v2 allValues];
  v4 = [allValues if_compactMap:&__block_literal_global_240];

  return v4;
}

id __57__WFMapsAppPickerParameter_possibleStatesForLocalization__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (void)dealloc
{
  [(WFMapsAppPickerParameter *)self removeObservers];
  v3.receiver = self;
  v3.super_class = WFMapsAppPickerParameter;
  [(WFMapsAppPickerParameter *)&v3 dealloc];
}

- (void)wasRemovedFromWorkflow
{
  v3.receiver = self;
  v3.super_class = WFMapsAppPickerParameter;
  [(WFMapsAppPickerParameter *)&v3 wasRemovedFromWorkflow];
  [(WFMapsAppPickerParameter *)self removeObservers];
}

- (void)wasAddedToWorkflow
{
  v3.receiver = self;
  v3.super_class = WFMapsAppPickerParameter;
  [(WFMapsAppPickerParameter *)&v3 wasAddedToWorkflow];
  [(WFMapsAppPickerParameter *)self refreshInstalledApps];
  [(WFMapsAppPickerParameter *)self addObservers];
}

- (WFMapsAppPickerParameter)initWithDefinition:(id)definition
{
  v29 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  v20.receiver = self;
  v20.super_class = WFMapsAppPickerParameter;
  v5 = [(WFMapsAppPickerParameter *)&v20 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"SupportedApps"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v22 = "WFEnforceClass";
        v23 = 2114;
        v24 = v8;
        v25 = 2114;
        v26 = v11;
        v27 = 2114;
        v28 = v7;
        v12 = v11;
        _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v13 = MEMORY[0x277CBEB70];
    v14 = [v9 if_compactMap:&__block_literal_global_4324];
    v15 = [v13 orderedSetWithArray:v14];
    supportedAppIdentifiers = v5->_supportedAppIdentifiers;
    v5->_supportedAppIdentifiers = v15;

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

id __47__WFMapsAppPickerParameter_initWithDefinition___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WFMapsAppNamesByIdentifier();
  v4 = [v3 allKeysForObject:v2];

  v5 = [v4 firstObject];

  return v5;
}

@end