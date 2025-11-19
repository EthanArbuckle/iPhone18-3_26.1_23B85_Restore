@interface WFHKUnitSubstitutableState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFHKUnitSubstitutableState

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFHKUnitSubstitutableState.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[HKUnit class]]"}];
  }

  v6 = [v5 unitString];

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
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

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87__WFHKUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_278C21810;
      v18 = v10;
      [v14 getObjectRepresentationForClass:v15 context:v8 completionHandler:v17];

      v12 = v18;
    }
  }

  else
  {
    v16 = [(WFVariableSubstitutableParameterState *)self value];
    (*(v10 + 2))(v10, v16, 0);
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