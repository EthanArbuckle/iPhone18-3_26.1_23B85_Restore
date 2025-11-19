@interface CNContactRelationsDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
@end

@implementation CNContactRelationsDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 23;
  }

  return a3 != 0;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v2 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v3 = [a1 multiValueTransformWithLabelMapping:v2 valueTransform:&__block_literal_global_46];

  return v3;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = [a1 multiValueTransformWithLabelMapping:v2 valueTransform:&__block_literal_global_49];

  return v3;
}

@end