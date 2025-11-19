@interface WFUnitTypePickerParameter
- (id)localizedLabelForPossibleState:(id)a3;
- (id)possibleStates;
@end

@implementation WFUnitTypePickerParameter

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = MEMORY[0x277D7A050];
  v4 = [a3 value];
  v5 = [v3 localizedStringForUnitType:v4];

  return v5;
}

- (id)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = [MEMORY[0x277D7A050] availableUnitTypes];
    v5 = [v4 if_compactMap:&__block_literal_global_7559];
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