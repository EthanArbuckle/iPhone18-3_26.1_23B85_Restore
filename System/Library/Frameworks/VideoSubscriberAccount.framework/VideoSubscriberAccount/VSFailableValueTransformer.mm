@interface VSFailableValueTransformer
- (NSValueTransformer)objectValueTransformer;
- (id)transformedValue:(id)value;
@end

@implementation VSFailableValueTransformer

- (NSValueTransformer)objectValueTransformer
{
  v2 = self->_objectValueTransformer;
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAE68]);
  }

  return v2;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  if (valueCopy)
  {
    v6 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v7 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, value was %@, instead of VSFailable.", v9}];
      }

      v10 = v6;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __47__VSFailableValueTransformer_transformedValue___block_invoke;
      v18[3] = &unk_278B740A0;
      v18[4] = self;
      v18[5] = &v19;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__VSFailableValueTransformer_transformedValue___block_invoke_2;
      v15[3] = &unk_278B740C8;
      v17 = &v19;
      v11 = v10;
      v16 = v11;
      [v11 unwrapObject:v18 error:v15];
    }

    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __47__VSFailableValueTransformer_transformedValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 objectValueTransformer];
  v5 = [v8 transformedValue:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end