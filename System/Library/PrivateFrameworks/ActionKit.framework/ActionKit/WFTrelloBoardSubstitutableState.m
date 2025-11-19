@interface WFTrelloBoardSubstitutableState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFTrelloBoardSubstitutableState

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
      v17[2] = __92__WFTrelloBoardSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_278C21810;
      v18 = v10;
      [v14 getObjectRepresentationForClass:v15 context:v8 completionHandler:v17];

      v12 = v18;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFTrelloBoardSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v16 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
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

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
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

+ (id)serializedRepresentationFromValue:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D7C768] JSONDictionaryFromModel:a3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end