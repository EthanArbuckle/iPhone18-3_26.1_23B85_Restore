@interface WFFocusModesPickerParameter
- (WFFocusModesPickerParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)possibleStatesForEnumeration:(id)a3;
@end

@implementation WFFocusModesPickerParameter

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D7C438] defaultActivity];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD3E20]);
    v5 = [v3 activityIdentifier];
    v6 = [v3 activityDisplayName];
    v7 = [v4 initWithIdentifier:v5 displayString:v6];

    v8 = [objc_alloc(MEMORY[0x277D7C510]) initWithValue:v7];
    v9 = [v8 serializedRepresentation];
  }

  else
  {
    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[WFFocusModesPickerParameter defaultSerializedRepresentationForEnumeration:]";
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_FAULT, "%s Could not get defaultActivity from FocusModesManager.", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)possibleStatesForEnumeration:(id)a3
{
  v3 = [MEMORY[0x277D7C438] availableModes];
  v4 = [v3 if_compactMap:&__block_literal_global_15658];

  return v4;
}

id __60__WFFocusModesPickerParameter_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPlaceholder])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CD3E20]);
    v5 = [v2 activityIdentifier];
    v6 = [v2 activityDisplayName];
    v7 = [v4 initWithIdentifier:v5 displayString:v6];

    v3 = [objc_alloc(MEMORY[0x277D7C510]) initWithValue:v7];
  }

  return v3;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v4 = [a4 value];
  v5 = [v4 displayString];

  return v5;
}

- (WFFocusModesPickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFFocusModesPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end