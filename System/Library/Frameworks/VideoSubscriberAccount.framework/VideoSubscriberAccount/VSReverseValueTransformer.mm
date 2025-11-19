@interface VSReverseValueTransformer
+ (id)reverseValueTransformerWithValueTransformer:(id)a3;
- (VSReverseValueTransformer)init;
- (VSReverseValueTransformer)initWithValueTransformer:(id)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSReverseValueTransformer

+ (id)reverseValueTransformerWithValueTransformer:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277CBEAD8];
      v5 = *MEMORY[0x277CBE660];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 raise:v5 format:{@"Unexpectedly, valueTransformer was %@, instead of VSReverseValueTransformer.", v7}];
    }

    v8 = [v3 valueTransformer];
LABEL_18:
    v9 = v8;
    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [[VSReverseValueTransformer alloc] initWithValueTransformer:v3];
    goto LABEL_18;
  }

  v9 = objc_alloc_init(VSCompoundValueTransformer);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE660];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v11 raise:v12 format:{@"Unexpectedly, valueTransformer was %@, instead of VSCompoundValueTransformer.", v14}];
  }

  v15 = [v3 valueTransformers];
  v16 = [v15 reverseObjectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [VSReverseValueTransformer reverseValueTransformerWithValueTransformer:*(*(&v23 + 1) + 8 * i)];
        [v10 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [(VSCompoundValueTransformer *)v9 setValueTransformers:v10];
  if (!v9)
  {
LABEL_19:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

LABEL_20:

  return v9;
}

- (VSReverseValueTransformer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSReverseValueTransformer)initWithValueTransformer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VSReverseValueTransformer;
  v6 = [(VSReverseValueTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueTransformer, a3);
  }

  return v7;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  v5 = [(VSReverseValueTransformer *)self valueTransformer];
  v6 = [v5 reverseTransformedValue:v4];

  return v6;
}

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  v5 = [(VSReverseValueTransformer *)self valueTransformer];
  v6 = [v5 transformedValue:v4];

  return v6;
}

@end