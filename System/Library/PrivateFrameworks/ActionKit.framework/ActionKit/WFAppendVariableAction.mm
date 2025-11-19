@interface WFAppendVariableAction
- (id)accessibilityName;
- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4;
- (id)variableName;
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFAppendVariableAction

- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFAppendVariableAction *)self variableName];
  if ([v8 length])
  {
    v9 = [objc_alloc(MEMORY[0x277D7C9E8]) initWithName:v8 variableProvider:v6 aggrandizements:0];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFAppendVariableAction;
    v9 = [(WFAppendVariableAction *)&v12 outputVariableWithVariableProvider:v6 UUIDProvider:v7];
  }

  v10 = v9;

  return v10;
}

- (id)accessibilityName
{
  v3 = [(WFAppendVariableAction *)self localizedName];
  v4 = [(WFAppendVariableAction *)self variableName];
  v5 = v4;
  v6 = &stru_2850323E8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [v3 stringByAppendingFormat:@" (%@)", v6];

  return v7;
}

- (id)variableName
{
  v2 = [(WFAppendVariableAction *)self parameterStateForKey:@"WFVariableName"];
  v3 = [v2 string];

  return v3;
}

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(WFAppendVariableAction *)self parameterValueForKey:@"WFVariableName" ofClass:objc_opt_class()];
  v7 = [(WFAppendVariableAction *)self variableSource];
  v8 = [v7 contentForVariableWithName:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v5 items];
  v13 = [v12 copy];

  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v11 addItem:*(*(&v20 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = [(WFAppendVariableAction *)self variableSource];
  [v18 setContent:v11 forVariableWithName:v6];

  [(WFAppendVariableAction *)self setOutput:v11];
  v19 = *MEMORY[0x277D85DE8];
}

@end