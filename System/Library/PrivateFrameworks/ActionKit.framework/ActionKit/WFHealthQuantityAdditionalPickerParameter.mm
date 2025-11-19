@interface WFHealthQuantityAdditionalPickerParameter
- (BOOL)isHidden;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)a3;
- (id)localizedLabelWithContext:(id)a3;
- (id)possibleStates;
- (void)setQuantityType:(id)a3;
- (void)updatePossibleStates;
@end

@implementation WFHealthQuantityAdditionalPickerParameter

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = a3;
  v4 = [v3 value];
  v5 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:v4];

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 hk_localizedName];
  }

  else
  {
    v8 = [v3 value];
    v7 = WFLocalizedParameterValue(v8);
  }

  return v7;
}

- (id)localizedLabelWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCCBC0]];

  if (v7)
  {
    v8 = @"Reason";
LABEL_7:
    v13 = WFLocalizedStringResourceWithKey(v8, v8);
    v14 = [v4 localize:v13];

    goto LABEL_8;
  }

  v9 = [v5 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCCC98]];

  if (v10)
  {
    v8 = @"Test Type";
    goto LABEL_7;
  }

  v11 = [v5 identifier];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC970]];

  if (v12)
  {
    v8 = @"Meal Time";
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = WFHealthQuantityAdditionalPickerParameter;
  v14 = [(WFHealthQuantityAdditionalPickerParameter *)&v16 localizedLabelWithContext:v4];
LABEL_8:

  return v14;
}

- (BOOL)isHidden
{
  v2 = [(WFHealthQuantityAdditionalPickerParameter *)self possibleStates];
  v3 = [v2 count] == 0;

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
  v2 = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCC970]];

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
    v4 = [(WFHealthQuantityAdditionalPickerParameter *)self quantityType];
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:*MEMORY[0x277CCCBC0]];

    if (v6)
    {
      v7 = +[WFHealthKitHelper readableInsulinDeliveryReasonValues];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 identifier];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCCC98]];

    if (v9)
    {
      v10 = +[WFHealthKitHelper readableVO2MaxTestTypeValues];

      v7 = v10;
    }

    v11 = [v4 identifier];
    v12 = [v11 isEqualToString:*MEMORY[0x277CCC970]];

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

- (void)setQuantityType:(id)a3
{
  objc_storeStrong(&self->_quantityType, a3);

  [(WFHealthQuantityAdditionalPickerParameter *)self updatePossibleStates];
}

@end