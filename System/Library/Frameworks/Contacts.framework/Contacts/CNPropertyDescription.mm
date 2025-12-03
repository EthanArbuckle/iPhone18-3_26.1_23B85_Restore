@interface CNPropertyDescription
+ (id)os_log;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)isValue:(id)value equalToEmptyEquivalentOrValue:(id)orValue;
- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error;
- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error;
- (BOOL)supportsABLazyLoading;
- (CNPropertyDescription)initWithCoder:(id)coder;
- (CNPropertyDescription)initWithKey:(id)key readSelector:(SEL)selector writeSelector:(SEL)writeSelector;
- (NSArray)equivalentLabelSets;
- (SEL)readSelector;
- (SEL)writeSelector;
- (id)CNValueForContact:(id)contact;
- (id)stringForIndexingForContact:(id)contact;
- (id)unifiableLabelsForLabel:(id)label;
- (void)ABValueForABPerson:(void *)person;
- (void)assertValueType:(id)type;
- (void)copyFromABPerson:(void *)person toContact:(id)contact;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)encodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
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

- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error
{
  property = 0;
  [(CNPropertyDescription *)self abPropertyID:&property];
  if (ABPersonGetTypeOfProperty(property) == 1 && ![value length])
  {
    value = 0;
  }

  return ABRecordSetValue(person, property, value, error);
}

- (void)ABValueForABPerson:(void *)person
{
  property = 0;
  [(CNPropertyDescription *)self abPropertyID:&property];
  result = ABRecordCopyValue(person, property);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error
{
  cf = 0;
  v7 = [(CNPropertyDescription *)self setABValue:[(CNPropertyDescription *)self ABValueFromCNValue:value onABPerson:person error:context], person, &cf];
  v8 = v7;
  if (error)
  {
    if (!v7)
    {
      *error = [CNErrorFactory errorForiOSABError:cf];
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v8;
}

- (void)copyFromABPerson:(void *)person toContact:(id)contact
{
  contactCopy = contact;
  v7 = [(CNPropertyDescription *)self CNValueFromABValue:[(CNPropertyDescription *)self ABValueForABPerson:person]];
  [(CNPropertyDescription *)self setCNValue:v7 onContact:contactCopy];
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

- (CNPropertyDescription)initWithKey:(id)key readSelector:(SEL)selector writeSelector:(SEL)writeSelector
{
  keyCopy = key;
  v21.receiver = self;
  v21.super_class = CNPropertyDescription;
  v9 = [(CNPropertyDescription *)&v21 init];
  if (v9)
  {
    v10 = [keyCopy copy];
    key = v9->_key;
    v9->_key = v10;

    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v9->_readSelector = selectorCopy;
    if (writeSelector)
    {
      writeSelectorCopy = writeSelector;
    }

    else
    {
      writeSelectorCopy = 0;
    }

    v9->_writeSelector = writeSelectorCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CNPropertyDescription_initWithKey_readSelector_writeSelector___block_invoke;
    aBlock[3] = &unk_1E7416FB8;
    v20 = keyCopy;
    v14 = _Block_copy(aBlock);
    v15 = [v14 copy];
    valueForKeyTransform = v9->_valueForKeyTransform;
    v9->_valueForKeyTransform = v15;

    v17 = v9;
  }

  return v9;
}

- (CNPropertyDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];

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

- (id)unifiableLabelsForLabel:(id)label
{
  v29 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  array = [MEMORY[0x1E695DF70] array];
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
        if ([v10 containsObject:labelCopy])
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
                if (([v16 isEqualToString:labelCopy] & 1) == 0)
                {
                  [array addObject:v16];
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

  return array;
}

- (BOOL)isValue:(id)value equalToEmptyEquivalentOrValue:(id)orValue
{
  valueCopy = value;
  orValueCopy = orValue;
  nilValue = orValueCopy;
  if (!valueCopy)
  {
    valueCopy = [(CNPropertyDescription *)self nilValue];
    if (nilValue)
    {
      goto LABEL_3;
    }

LABEL_5:
    nilValue = [(CNPropertyDescription *)self nilValue];
    goto LABEL_3;
  }

  if (!orValueCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [MEMORY[0x1E69966F0] isObject:valueCopy equalToOther:nilValue];

  return v9;
}

- (void)encodeUsingCoder:(id)coder contact:(id)contact
{
  coderCopy = coder;
  contactCopy = contact;
  selfCopy = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  coderCopy = coder;
  contactCopy = contact;
  selfCopy = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)assertValueType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    [(CNPropertyDescription *)self valueClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = CNPropertyInvalidTypeExceptionName;
      v6 = objc_opt_class();
      v7 = [(CNPropertyDescription *)self key];
      [v4 raise:v5 format:{@"Value %@ has incorrect type %@ for key %@. It should be %@.", typeCopy, v6, v7, -[CNPropertyDescription valueClass](self, "valueClass")}];
    }
  }
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  valueCopy = value;
  v7 = valueCopy;
  if (valueCopy && [valueCopy conformsToProtocol:&unk_1F0993B08])
  {
    v12 = 0;
    v8 = [v7 isValid:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && error)
    {
      v10 = [(CNPropertyDescription *)self key];
      *error = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  valueCopy = value;
  v8 = [(CNPropertyDescription *)self key];
  [contactCopy setValue:valueCopy forKey:v8];
}

- (id)CNValueForContact:(id)contact
{
  contactCopy = contact;
  v5 = [(CNPropertyDescription *)self key];
  v6 = [contactCopy valueForKey:v5];

  return v6;
}

- (id)stringForIndexingForContact:(id)contact
{
  contactCopy = contact;
  if ([(CNPropertyDescription *)self isSingleValue])
  {
    v5 = [(CNPropertyDescription *)self CNValueForContact:contactCopy];
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