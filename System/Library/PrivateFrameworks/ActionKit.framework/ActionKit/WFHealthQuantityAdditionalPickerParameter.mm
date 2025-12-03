@interface WFHealthQuantityAdditionalPickerParameter
- (BOOL)isHidden;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)state;
- (id)localizedLabelWithContext:(id)context;
- (id)possibleStates;
- (void)setQuantityType:(id)type;
- (void)updatePossibleStates;
@end

@implementation WFHealthQuantityAdditionalPickerParameter

- (id)localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  v5 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:value];

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    hk_localizedName = [v6 hk_localizedName];
  }

  else
  {
    value2 = [stateCopy value];
    hk_localizedName = WFLocalizedParameterValue(value2);
  }

  return hk_localizedName;
}

- (id)localizedLabelWithContext:(id)context
{
  contextCopy = context;
  quantityType = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
  identifier = [quantityType identifier];
  v7 = [identifier isEqualToString:*MEMORY[0x277CCCBC0]];

  if (v7)
  {
    v8 = @"Reason";
LABEL_7:
    v13 = WFLocalizedStringResourceWithKey(v8, v8);
    v14 = [contextCopy localize:v13];

    goto LABEL_8;
  }

  identifier2 = [quantityType identifier];
  v10 = [identifier2 isEqualToString:*MEMORY[0x277CCCC98]];

  if (v10)
  {
    v8 = @"Test Type";
    goto LABEL_7;
  }

  identifier3 = [quantityType identifier];
  v12 = [identifier3 isEqualToString:*MEMORY[0x277CCC970]];

  if (v12)
  {
    v8 = @"Meal Time";
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = WFHealthQuantityAdditionalPickerParameter;
  v14 = [(WFHealthQuantityAdditionalPickerParameter *)&v16 localizedLabelWithContext:contextCopy];
LABEL_8:

  return v14;
}

- (BOOL)isHidden
{
  possibleStates = [(WFHealthQuantityAdditionalPickerParameter *)self possibleStates];
  v3 = [possibleStates count] == 0;

  return v3;
}

- (void)updatePossibleStates
{
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  v4.receiver = self;
  v4.super_class = WFHealthQuantityAdditionalPickerParameter;
  [(WFHealthQuantityAdditionalPickerParameter *)&v4 possibleStatesDidChange];
}

- (id)defaultSerializedRepresentation
{
  quantityType = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
  identifier = [quantityType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x277CCC970]];

  if (v4)
  {
    v5 = MEMORY[0x277D7C928];
    v6 = WFLocalizedParameterValueMarker(@"Unspecified");
    v7 = [v5 serializedRepresentationFromValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    quantityType = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
    identifier = [quantityType identifier];
    v6 = [identifier isEqualToString:*MEMORY[0x277CCCBC0]];

    if (v6)
    {
      v7 = +[WFHealthKitHelper readableInsulinDeliveryReasonValues];
    }

    else
    {
      v7 = 0;
    }

    identifier2 = [quantityType identifier];
    v9 = [identifier2 isEqualToString:*MEMORY[0x277CCCC98]];

    if (v9)
    {
      v10 = +[WFHealthKitHelper readableVO2MaxTestTypeValues];

      v7 = v10;
    }

    identifier3 = [quantityType identifier];
    v12 = [identifier3 isEqualToString:*MEMORY[0x277CCC970]];

    if (v12)
    {
      v13 = +[WFHealthKitHelper readableBloodGlucoseMealTimeValues];

      v7 = v13;
    }

    v14 = [v7 if_compactMap:&__block_literal_global_9897];
    v15 = self->_possibleStates;
    self->_possibleStates = v14;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

id __59__WFHealthQuantityAdditionalPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (void)setQuantityType:(id)type
{
  objc_storeStrong(&self->_quantityType, type);

  [(WFHealthQuantityAdditionalPickerParameter *)self updatePossibleStates];
}

@end