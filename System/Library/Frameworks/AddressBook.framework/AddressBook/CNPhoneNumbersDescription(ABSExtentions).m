@interface CNPhoneNumbersDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
- (uint64_t)isABSLabeledValueValue:()ABSExtentions equalToValue:;
@end

@implementation CNPhoneNumbersDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 3;
  }

  return a3 != 0;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v2 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v3 = [a1 multiValueTransformWithLabelMapping:v2 valueTransform:&__block_literal_global_7];

  return v3;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = [a1 multiValueTransformWithLabelMapping:v2 valueTransform:&__block_literal_global_44];

  return v3;
}

- (uint64_t)isABSLabeledValueValue:()ABSExtentions equalToValue:
{
  v5 = MEMORY[0x277CBDB70];
  v6 = a4;
  v7 = [v5 phoneNumberWithStringValue:a3];
  v8 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v6];

  if (v7 | v8)
  {
    v9 = [v8 isLikePhoneNumber:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end