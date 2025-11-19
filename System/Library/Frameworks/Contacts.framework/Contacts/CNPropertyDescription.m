@interface CNPropertyDescription
+ (id)os_log;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)isValue:(id)a3 equalToEmptyEquivalentOrValue:(id)a4;
- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5;
- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6;
- (BOOL)supportsABLazyLoading;
- (CNPropertyDescription)initWithCoder:(id)a3;
- (CNPropertyDescription)initWithKey:(id)a3 readSelector:(SEL)a4 writeSelector:(SEL)a5;
- (NSArray)equivalentLabelSets;
- (SEL)readSelector;
- (SEL)writeSelector;
- (id)CNValueForContact:(id)a3;
- (id)stringForIndexingForContact:(id)a3;
- (id)unifiableLabelsForLabel:(id)a3;
- (void)ABValueForABPerson:(void *)a3;
- (void)assertValueType:(id)a3;
- (void)copyFromABPerson:(void *)a3 toContact:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)encodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNPropertyDescription

uint64_t __44__CNPropertyDescription_equivalentLabelSets__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v1 = equivalentLabelSets_cn_once_object_1;
  equivalentLabelSets_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSArray)equivalentLabelSets
{
  if (equivalentLabelSets_cn_once_token_1 != -1)
  {
    [CNPropertyDescription equivalentLabelSets];
  }

  v3 = equivalentLabelSets_cn_once_object_1;

  return v3;
}

- (BOOL)supportsABLazyLoading
{
  v3 = -1;
  if ([(CNPropertyDescription *)self abPropertyID:&v3])
  {
    return ABCPersonPropertySupportsLazyLoading();
  }

  else
  {
    return 1;
  }
}

- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5
{
  property = 0;
  [(CNPropertyDescription *)self abPropertyID:&property];
  if (ABPersonGetTypeOfProperty(property) == 1 && ![a3 length])
  {
    a3 = 0;
  }

  return ABRecordSetValue(a4, property, a3, a5);
}

- (void)ABValueForABPerson:(void *)a3
{
  property = 0;
  [(CNPropertyDescription *)self abPropertyID:&property];
  result = ABRecordCopyValue(a3, property);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6
{
  cf = 0;
  v7 = [(CNPropertyDescription *)self setABValue:[(CNPropertyDescription *)self ABValueFromCNValue:a3 onABPerson:a4 error:a5], a4, &cf];
  v8 = v7;
  if (a6)
  {
    if (!v7)
    {
      *a6 = [CNErrorFactory errorForiOSABError:cf];
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v8;
}

- (void)copyFromABPerson:(void *)a3 toContact:(id)a4
{
  v6 = a4;
  v7 = [(CNPropertyDescription *)self CNValueFromABValue:[(CNPropertyDescription *)self ABValueForABPerson:a3]];
  [(CNPropertyDescription *)self setCNValue:v7 onContact:v6];
}

+ (id)os_log
{
  if (os_log_cn_once_token_0_20 != -1)
  {
    +[CNPropertyDescription os_log];
  }

  v3 = os_log_cn_once_object_0_20;

  return v3;
}

uint64_t __31__CNPropertyDescription_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNPropertyDescription");
  v1 = os_log_cn_once_object_0_20;
  os_log_cn_once_object_0_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNPropertyDescription)initWithKey:(id)a3 readSelector:(SEL)a4 writeSelector:(SEL)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = CNPropertyDescription;
  v9 = [(CNPropertyDescription *)&v21 init];
  if (v9)
  {
    v10 = [v8 copy];
    key = v9->_key;
    v9->_key = v10;

    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v9->_readSelector = v12;
    if (a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    v9->_writeSelector = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CNPropertyDescription_initWithKey_readSelector_writeSelector___block_invoke;
    aBlock[3] = &unk_1E7416FB8;
    v20 = v8;
    v14 = _Block_copy(aBlock);
    v15 = [v14 copy];
    valueForKeyTransform = v9->_valueForKeyTransform;
    v9->_valueForKeyTransform = v15;

    v17 = v9;
  }

  return v9;
}

- (CNPropertyDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];

  if (v5)
  {
    v6 = +[CN contactPropertiesByKey];
    v7 = [(CNPropertyDescription *)v6 objectForKeyedSubscript:v5];

    self = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unifiableLabelsForLabel:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CNPropertyDescription *)self equivalentLabelSets];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 containsObject:v4])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v19 + 1) + 8 * j);
                if (([v16 isEqualToString:v4] & 1) == 0)
                {
                  [v5 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)isValue:(id)a3 equalToEmptyEquivalentOrValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v6 = [(CNPropertyDescription *)self nilValue];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = [(CNPropertyDescription *)self nilValue];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [MEMORY[0x1E69966F0] isObject:v6 equalToOther:v8];

  return v9;
}

- (void)encodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)assertValueType:(id)a3
{
  v8 = a3;
  if (v8)
  {
    [(CNPropertyDescription *)self valueClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = CNPropertyInvalidTypeExceptionName;
      v6 = objc_opt_class();
      v7 = [(CNPropertyDescription *)self key];
      [v4 raise:v5 format:{@"Value %@ has incorrect type %@ for key %@. It should be %@.", v8, v6, v7, -[CNPropertyDescription valueClass](self, "valueClass")}];
    }
  }
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 conformsToProtocol:&unk_1F0993B08])
  {
    v12 = 0;
    v8 = [v7 isValid:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && a4)
    {
      v10 = [(CNPropertyDescription *)self key];
      *a4 = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNPropertyDescription *)self key];
  [v6 setValue:v7 forKey:v8];
}

- (id)CNValueForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyDescription *)self key];
  v6 = [v4 valueForKey:v5];

  return v6;
}

- (id)stringForIndexingForContact:(id)a3
{
  v4 = a3;
  if ([(CNPropertyDescription *)self isSingleValue])
  {
    v5 = [(CNPropertyDescription *)self CNValueForContact:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SEL)readSelector
{
  if (self->_readSelector)
  {
    return self->_readSelector;
  }

  else
  {
    return 0;
  }
}

- (SEL)writeSelector
{
  if (self->_writeSelector)
  {
    return self->_writeSelector;
  }

  else
  {
    return 0;
  }
}

@end