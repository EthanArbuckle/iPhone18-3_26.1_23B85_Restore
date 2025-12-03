@interface CNMultiValuePropertyDescription(ABSExtentions)
- (CFTypeRef)ABSValueFromCNValue:()ABSExtentions;
- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform;
- (id)CNLabeledValueFromABSMultiValueTranform;
- (id)CNValueFromABSValue:()ABSExtentions;
- (id)dictionaryBasedMultiValueTransformWithLabelMapping:()ABSExtentions inputKeys:destinationClass:valueMapping:;
- (id)multiValueTransformWithLabelMapping:()ABSExtentions valueTransform:;
- (uint64_t)isABSLabeledValueValue:()ABSExtentions equalToValue:;
@end

@implementation CNMultiValuePropertyDescription(ABSExtentions)

- (CFTypeRef)ABSValueFromCNValue:()ABSExtentions
{
  v4 = a3;
  property = -1;
  if ([self absPropertyID:&property])
  {
    TypeOfProperty = ABPersonGetTypeOfProperty(property);
    v6 = v4;
    aBSMultiValueLabeledValueFromCNLabeledValueTransform = [self ABSMultiValueLabeledValueFromCNLabeledValueTransform];
    v8 = [v6 _cn_map:aBSMultiValueLabeledValueFromCNLabeledValueTransform];
    v9 = [v8 mutableCopy];

    v10 = [[ABSMultiValue alloc] initWithPropertyType:TypeOfProperty mutable:0 values:v9];
    if (v10)
    {
      v11 = CFAutorelease(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"AddressBookInvalidPropertyIDException" format:{@"%@ didn't return a absPropertyID", self}];
    v11 = *MEMORY[0x277CBEEE8];
  }

  return v11;
}

- (id)CNValueFromABSValue:()ABSExtentions
{
  values = [a3 values];
  cNLabeledValueFromABSMultiValueTranform = [self CNLabeledValueFromABSMultiValueTranform];
  v6 = [values _cn_map:cNLabeledValueFromABSMultiValueTranform];

  return v6;
}

- (id)CNLabeledValueFromABSMultiValueTranform
{
  v2 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v3 = [self passThroughMultivalueTransformWithLabelMapping:v2];

  return v3;
}

- (id)ABSMultiValueLabeledValueFromCNLabeledValueTransform
{
  v2 = +[ABSConstantsMapping CNToABLabelConstantsMapping];
  v3 = [self passThroughMultivalueTransformWithLabelMapping:v2];

  return v3;
}

- (id)multiValueTransformWithLabelMapping:()ABSExtentions valueTransform:
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__CNMultiValuePropertyDescription_ABSExtentions__multiValueTransformWithLabelMapping_valueTransform___block_invoke;
  v11[3] = &unk_278A049E8;
  v12 = v5;
  v13 = v6;
  v7 = v5;
  v8 = v6;
  v9 = [v11 copy];

  return v9;
}

- (id)dictionaryBasedMultiValueTransformWithLabelMapping:()ABSExtentions inputKeys:destinationClass:valueMapping:
{
  v10 = a4;
  v11 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __141__CNMultiValuePropertyDescription_ABSExtentions__dictionaryBasedMultiValueTransformWithLabelMapping_inputKeys_destinationClass_valueMapping___block_invoke;
  v16[3] = &unk_278A04A10;
  v18 = v11;
  v19 = a5;
  v17 = v10;
  v12 = v11;
  v13 = v10;
  v14 = [self multiValueTransformWithLabelMapping:a3 valueTransform:v16];

  return v14;
}

- (uint64_t)isABSLabeledValueValue:()ABSExtentions equalToValue:
{
  if (a3 | a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return 1;
  }
}

@end