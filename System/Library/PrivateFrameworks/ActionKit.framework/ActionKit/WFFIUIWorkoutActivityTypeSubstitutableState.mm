@interface WFFIUIWorkoutActivityTypeSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFFIUIWorkoutActivityTypeSubstitutableState

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
      v17[2] = __104__WFFIUIWorkoutActivityTypeSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_278C21810;
      v18 = valueHandlerCopy;
      [variable3 getObjectRepresentationForClass:v15 context:contextCopy completionHandler:v17];

      variable2 = v18;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFFIUIWorkoutActivityTypeSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v16 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }
}

void __104__WFFIUIWorkoutActivityTypeSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = [WFFitnessUIHelper activityTypeForLocalizedActivityName:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  getFIUIWorkoutActivityTypeClass_22440();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFIUIWorkoutActivityTypeSubstitutableState.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:getFIUIWorkoutActivityTypeClass()]"}];
  }

  v6 = objc_opt_new();
  if ([valueCopy isCategorizedOtherWorkout])
  {
    auxiliaryTypeIdentifier = [valueCopy auxiliaryTypeIdentifier];
  }

  else
  {
    auxiliaryTypeIdentifier = [valueCopy identifier];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:auxiliaryTypeIdentifier];
  [v6 setObject:v8 forKey:@"Identifier"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(valueCopy, "isIndoor")}];
  [v6 setObject:v9 forKey:@"IsIndoor"];

  metadata = [valueCopy metadata];
  [v6 setObject:metadata forKey:@"Metadata"];

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = WFEnforceClass(representationCopy, v6);

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"Identifier"];
    v9 = objc_opt_class();
    v10 = WFEnforceClass(v8, v9);
    integerValue = [v10 integerValue];

    v12 = [v7 objectForKeyedSubscript:@"IsIndoor"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass(v12, v13);
    bOOLValue = [v14 BOOLValue];

    v16 = [v7 objectForKeyedSubscript:@"Metadata"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass(v16, v17);

    v19 = [objc_alloc(getFIUIWorkoutActivityTypeClass_22440()) initWithActivityTypeIdentifier:integerValue isIndoor:bOOLValue metadata:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end