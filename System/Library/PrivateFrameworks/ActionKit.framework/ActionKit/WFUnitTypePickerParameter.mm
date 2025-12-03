@interface WFUnitTypePickerParameter
- (id)localizedLabelForPossibleState:(id)state;
- (id)possibleStates;
@end

@implementation WFUnitTypePickerParameter

- (id)localizedLabelForPossibleState:(id)state
{
  v3 = MEMORY[0x277D7A050];
  value = [state value];
  v5 = [v3 localizedStringForUnitType:value];

  return v5;
}

- (id)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    availableUnitTypes = [MEMORY[0x277D7A050] availableUnitTypes];
    v5 = [availableUnitTypes if_compactMap:&__block_literal_global_7559];
    v6 = self->_possibleStates;
    self->_possibleStates = v5;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

id __43__WFUnitTypePickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

@end