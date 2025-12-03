@interface VSCompoundValueTransformer
- (VSCompoundValueTransformer)init;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSCompoundValueTransformer

- (VSCompoundValueTransformer)init
{
  v6.receiver = self;
  v6.super_class = VSCompoundValueTransformer;
  v2 = [(VSCompoundValueTransformer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    valueTransformers = v2->_valueTransformers;
    v2->_valueTransformers = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)transformedValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = VSCompoundValueTransformer;
  v4 = [(VSCompoundValueTransformer *)&v16 transformedValue:value];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  valueTransformers = [(VSCompoundValueTransformer *)self valueTransformers];
  v6 = [valueTransformers countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(valueTransformers);
        }

        v4 = [*(*(&v12 + 1) + 8 * v9) transformedValue:v10];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [valueTransformers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)reverseTransformedValue:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  valueTransformers = [(VSCompoundValueTransformer *)self valueTransformers];
  reverseObjectEnumerator = [valueTransformers reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  v8 = valueCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    v8 = valueCopy;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = [*(*(&v14 + 1) + 8 * v11) reverseTransformedValue:v12];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v8;
}

@end