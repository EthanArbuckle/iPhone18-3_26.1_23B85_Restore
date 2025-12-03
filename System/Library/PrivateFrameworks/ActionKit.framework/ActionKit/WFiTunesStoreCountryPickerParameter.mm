@interface WFiTunesStoreCountryPickerParameter
- (id)defaultSerializedRepresentation;
- (id)possibleStates;
@end

@implementation WFiTunesStoreCountryPickerParameter

- (id)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    iSOCountryCodes = [MEMORY[0x277CBEAF8] ISOCountryCodes];
    v5 = [iSOCountryCodes if_compactMap:&__block_literal_global_3775];
    v6 = self->_possibleStates;
    self->_possibleStates = v5;

    v7 = [(NSArray *)self->_possibleStates sortedArrayUsingComparator:&__block_literal_global_173];
    v8 = self->_possibleStates;
    self->_possibleStates = v7;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

uint64_t __53__WFiTunesStoreCountryPickerParameter_possibleStates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 value];
  v6 = [v4 value];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

WFiTunesStoreCountrySubstitutableState *__53__WFiTunesStoreCountryPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = a2;
  v4 = [v2 currentLocale];
  v5 = [v4 displayNameForKey:*MEMORY[0x277CBE690] value:v3];

  if ([v5 length])
  {
    v6 = [(WFVariableSubstitutableParameterState *)[WFiTunesStoreCountrySubstitutableState alloc] initWithValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultSerializedRepresentation
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = *MEMORY[0x277CBE690];
  v4 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  v5 = [currentLocale displayNameForKey:v3 value:v4];

  if ([v5 length])
  {
    v6 = [(WFStringSubstitutableState *)WFiTunesStoreCountrySubstitutableState serializedRepresentationFromValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end