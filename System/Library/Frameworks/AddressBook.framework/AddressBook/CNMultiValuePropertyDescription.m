@interface CNMultiValuePropertyDescription
@end

@implementation CNMultiValuePropertyDescription

id __101__CNMultiValuePropertyDescription_ABSExtentions__multiValueTransformWithLabelMapping_valueTransform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = [v3 value];
    v6 = (*(*(a1 + 40) + 16))();
    v7 = [v4 label];
    v8 = [*(a1 + 32) mappedConstant:v7];
    v9 = [v6 copy];
    v10 = [v4 labeledValueBySettingLabel:v8 value:v9];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

id __141__CNMultiValuePropertyDescription_ABSExtentions__dictionaryBasedMultiValueTransformWithLabelMapping_inputKeys_destinationClass_valueMapping___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(*(a1 + 48));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 40) mappedConstant:{v10, v15}];
        v12 = [v3 valueForKey:v10];
        v13 = [*(a1 + 40) mappedConstant:v12];
        [v4 setValue:v13 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end