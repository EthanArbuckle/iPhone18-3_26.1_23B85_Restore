@interface WFAppendVariableAction
- (id)accessibilityName;
- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider;
- (id)variableName;
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFAppendVariableAction

- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider
{
  providerCopy = provider;
  dProviderCopy = dProvider;
  variableName = [(WFAppendVariableAction *)self variableName];
  if ([variableName length])
  {
    v9 = [objc_alloc(MEMORY[0x277D7C9E8]) initWithName:variableName variableProvider:providerCopy aggrandizements:0];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFAppendVariableAction;
    v9 = [(WFAppendVariableAction *)&v12 outputVariableWithVariableProvider:providerCopy UUIDProvider:dProviderCopy];
  }

  v10 = v9;

  return v10;
}

- (id)accessibilityName
{
  localizedName = [(WFAppendVariableAction *)self localizedName];
  variableName = [(WFAppendVariableAction *)self variableName];
  v5 = variableName;
  v6 = &stru_2850323E8;
  if (variableName)
  {
    v6 = variableName;
  }

  v7 = [localizedName stringByAppendingFormat:@" (%@)", v6];

  return v7;
}

- (id)variableName
{
  v2 = [(WFAppendVariableAction *)self parameterStateForKey:@"WFVariableName"];
  string = [v2 string];

  return string;
}

- (void)runWithInput:(id)input error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = [(WFAppendVariableAction *)self parameterValueForKey:@"WFVariableName" ofClass:objc_opt_class()];
  variableSource = [(WFAppendVariableAction *)self variableSource];
  v8 = [variableSource contentForVariableWithName:v6];
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
  items = [inputCopy items];
  v13 = [items copy];

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

  variableSource2 = [(WFAppendVariableAction *)self variableSource];
  [variableSource2 setContent:v11 forVariableWithName:v6];

  [(WFAppendVariableAction *)self setOutput:v11];
  v19 = *MEMORY[0x277D85DE8];
}

@end