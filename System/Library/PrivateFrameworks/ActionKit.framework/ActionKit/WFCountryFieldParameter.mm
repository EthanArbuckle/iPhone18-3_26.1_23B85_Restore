@interface WFCountryFieldParameter
- (id)currentCountry;
- (id)defaultSerializedRepresentation;
@end

@implementation WFCountryFieldParameter

- (id)defaultSerializedRepresentation
{
  stateClass = [(WFCountryFieldParameter *)self stateClass];
  if (stateClass != objc_opt_class())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCountryFieldParameter.m" lineNumber:21 description:@"-stateClass expected to be WFVariableStringParameterState"];
  }

  currentCountry = [(WFCountryFieldParameter *)self currentCountry];
  if (currentCountry)
  {
    v6 = objc_alloc(MEMORY[0x277D7CA30]);
    v7 = [objc_alloc(MEMORY[0x277D7CA28]) initWithString:currentCountry];
    v8 = [v6 initWithVariableString:v7];

    serializedRepresentation = [v8 serializedRepresentation];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFCountryFieldParameter;
    serializedRepresentation = [(WFCountryFieldParameter *)&v12 defaultSerializedRepresentation];
  }

  return serializedRepresentation;
}

- (id)currentCountry
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = *MEMORY[0x277CBE690];
  v4 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  v5 = [currentLocale displayNameForKey:v3 value:v4];

  return v5;
}

@end