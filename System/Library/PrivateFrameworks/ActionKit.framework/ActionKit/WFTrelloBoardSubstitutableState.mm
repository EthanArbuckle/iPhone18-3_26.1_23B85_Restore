@interface WFTrelloBoardSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFTrelloBoardSubstitutableState

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
      v17[2] = __92__WFTrelloBoardSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_278C21810;
      v18 = valueHandlerCopy;
      [variable3 getObjectRepresentationForClass:v15 context:contextCopy completionHandler:v17];

      variable2 = v18;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFTrelloBoardSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v16 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }
}

void __92__WFTrelloBoardSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  v9 = +[WFDiskCache workflowCache];
  v10 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v12 = [v10 setWithArray:v11];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WFTrelloBoardSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
  v17[3] = &unk_278C18E08;
  v13 = *(a1 + 32);
  v19 = v8;
  v20 = v13;
  v18 = v7;
  v14 = v8;
  v15 = v7;
  [v9 objectOfClasses:v12 forKey:@"WFTrelloBoards" completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __92__WFTrelloBoardSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = [a2 objectMatchingKey:@"name" value:a1[4]];
  (*(v3 + 16))(v3, v4, a1[5]);
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v22 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315906;
      v15 = "WFEnforceClass";
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v10 = v19;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if ([v8 count])
  {
    v11 = [MEMORY[0x277D7C768] modelOfClass:objc_opt_class() fromJSONDictionary:v8 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  if (value)
  {
    v4 = [MEMORY[0x277D7C768] JSONDictionaryFromModel:value error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end