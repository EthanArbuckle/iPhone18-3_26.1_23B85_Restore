@interface CNInstantMessageAddressesDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
@end

@implementation CNInstantMessageAddressesDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 13;
  }

  return a3 != 0;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v8[0] = @"username";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = objc_opt_class();
  v5 = +[ABSConstantsMapping ABToCNPersonInstantMessageConstantsMapping];
  v6 = [self dictionaryBasedMultiValueTransformWithLabelMapping:v2 inputKeys:v3 destinationClass:v4 valueMapping:v5];

  return v6;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = *MEMORY[0x277CBD1E8];
  v9[0] = *MEMORY[0x277CBD1F0];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = objc_opt_class();
  v6 = +[ABSConstantsMapping CNToABPersonInstantMessageConstantsMapping];
  v7 = [self dictionaryBasedMultiValueTransformWithLabelMapping:v2 inputKeys:v4 destinationClass:v5 valueMapping:v6];

  return v7;
}

@end