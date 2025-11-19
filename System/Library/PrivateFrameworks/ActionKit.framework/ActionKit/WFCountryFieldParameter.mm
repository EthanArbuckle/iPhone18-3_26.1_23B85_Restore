@interface WFCountryFieldParameter
- (id)currentCountry;
- (id)defaultSerializedRepresentation;
@end

@implementation WFCountryFieldParameter

- (id)defaultSerializedRepresentation
{
  v4 = [(WFCountryFieldParameter *)self stateClass];
  if (v4 != objc_opt_class())
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFCountryFieldParameter.m" lineNumber:21 description:@"-stateClass expected to be WFVariableStringParameterState"];
  }

  v5 = [(WFCountryFieldParameter *)self currentCountry];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D7CA30]);
    v7 = [objc_alloc(MEMORY[0x277D7CA28]) initWithString:v5];
    v8 = [v6 initWithVariableString:v7];

    v9 = [v8 serializedRepresentation];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFCountryFieldParameter;
    v9 = [(WFCountryFieldParameter *)&v12 defaultSerializedRepresentation];
  }

  return v9;
}

- (id)currentCountry
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = *MEMORY[0x277CBE690];
  v4 = [v2 objectForKey:*MEMORY[0x277CBE690]];
  v5 = [v2 displayNameForKey:v3 value:v4];

  return v5;
}

@end