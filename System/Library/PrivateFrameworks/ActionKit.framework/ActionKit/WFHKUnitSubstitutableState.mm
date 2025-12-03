@interface WFHKUnitSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFHKUnitSubstitutableState

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHKUnitSubstitutableState.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[HKUnit class]]"}];
  }

  unitString = [valueCopy unitString];

  return unitString;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v21 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277CCDAB0] wf_safeUnitFromString:v7];

      goto LABEL_8;
    }

    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315906;
      v14 = "WFEnforceClass";
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v10 = v18;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v13, 0x2Au);
    }
  }

  v8 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87__WFHKUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_278C21810;
      v18 = valueHandlerCopy;
      [variable3 getObjectRepresentationForClass:v15 context:contextCopy completionHandler:v17];

      variable2 = v18;
    }
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    (*(valueHandlerCopy + 2))(valueHandlerCopy, value, 0);
  }
}

void __87__WFHKUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v7 = MEMORY[0x277CCDAB0];
    v8 = a5;
    v10 = [v7 wf_safeUnitFromString:a2];
    (*(v5 + 16))(v5);
  }

  else
  {
    v9 = *(v5 + 16);
    v10 = a5;
    v9(v5, 0);
  }
}

@end