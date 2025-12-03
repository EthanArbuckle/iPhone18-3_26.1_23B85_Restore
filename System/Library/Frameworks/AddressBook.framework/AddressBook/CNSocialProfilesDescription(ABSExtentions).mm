@interface CNSocialProfilesDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
@end

@implementation CNSocialProfilesDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 46;
  }

  return a3 != 0;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__CNSocialProfilesDescription_ABSExtentions__CNLabeledValueFromABSMultiValueTranform__block_invoke;
  v3[3] = &unk_278A04A98;
  v3[4] = self;
  v1 = MEMORY[0x2383B6390](v3);

  return v1;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = *MEMORY[0x277CBD9F8];
  v10[0] = *MEMORY[0x277CBD9E8];
  v10[1] = v3;
  v4 = *MEMORY[0x277CBD9B0];
  v10[2] = *MEMORY[0x277CBD9F0];
  v10[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v6 = objc_opt_class();
  v7 = +[ABSConstantsMapping CNToABPersonSocialProfileConstantsMapping];
  v8 = [self dictionaryBasedMultiValueTransformWithLabelMapping:v2 inputKeys:v5 destinationClass:v6 valueMapping:v7];

  return v8;
}

@end