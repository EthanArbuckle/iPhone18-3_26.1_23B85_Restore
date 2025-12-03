@interface CNPostalAddressesDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
@end

@implementation CNPostalAddressesDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 5;
  }

  return a3 != 0;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v8[0] = @"Street";
  v8[1] = @"City";
  v8[2] = @"State";
  v8[3] = @"ZIP";
  v8[4] = @"Country";
  v8[5] = @"CountryCode";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v4 = objc_opt_class();
  v5 = +[ABSConstantsMapping ABToCNPersonAddressConstantsMapping];
  v6 = [self dictionaryBasedMultiValueTransformWithLabelMapping:v2 inputKeys:v3 destinationClass:v4 valueMapping:v5];

  return v6;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = *MEMORY[0x277CBD948];
  v11[0] = *MEMORY[0x277CBD980];
  v11[1] = v3;
  v4 = *MEMORY[0x277CBD968];
  v11[2] = *MEMORY[0x277CBD978];
  v11[3] = v4;
  v5 = *MEMORY[0x277CBD958];
  v11[4] = *MEMORY[0x277CBD950];
  v11[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
  v7 = objc_opt_class();
  v8 = +[ABSConstantsMapping CNToABPersonAddressConstantsMapping];
  v9 = [self dictionaryBasedMultiValueTransformWithLabelMapping:v2 inputKeys:v6 destinationClass:v7 valueMapping:v8];

  return v9;
}

@end