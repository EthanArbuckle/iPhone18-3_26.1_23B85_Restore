@interface CNSocialProfilesDescription
@end

@implementation CNSocialProfilesDescription

id __85__CNSocialProfilesDescription_ABSExtentions__CNLabeledValueFromABSMultiValueTranform__block_invoke(uint64_t a1, void *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 value];
  v5 = completedSocialProfileFromSocialProfile(v4);

  v6 = MEMORY[0x277CBDB20];
  v7 = [v3 label];

  v8 = [v6 labeledValueWithLabel:v7 value:v5];

  v9 = *(a1 + 32);
  v10 = +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  v17[0] = @"url";
  v17[1] = @"username";
  v17[2] = @"identifier";
  v17[3] = @"service";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v12 = objc_opt_class();
  v13 = +[ABSConstantsMapping ABToCNPersonSocialProfileConstantsMapping];
  v14 = [v9 dictionaryBasedMultiValueTransformWithLabelMapping:v10 inputKeys:v11 destinationClass:v12 valueMapping:v13];

  v15 = (v14)[2](v14, v8);

  return v15;
}

@end