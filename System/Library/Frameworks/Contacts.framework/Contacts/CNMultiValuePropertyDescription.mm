@interface CNMultiValuePropertyDescription
- (BOOL)applyABMultivalueValueBytes:(char *)bytes length:(unint64_t)length identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation;
- (BOOL)applyCNValue:(id)value toArray:(id)array identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label;
- (BOOL)applyDictionary:(id)dictionary identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation;
- (BOOL)isEqualIgnoringIdentifiersForContact:(id)contact other:(id)other;
- (BOOL)isValidMultiValueValue:(id)value error:(id *)error;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (NSArray)standardLabels;
- (__CFString)ABMultiValueLabelFromCNLabeledValueLabel:(id)label;
- (id)CNLabeledValueLabelFromABMultiValueLabel:(__CFString *)label;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value destinationClass:(Class)class settersByABKeys:(id)keys;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (id)standardLabelsWithOptions:(unint64_t)options;
- (id)stringForIndexingForContact:(id)contact;
- (id)valueWithResetIdentifiers:(id)identifiers;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value gettersByABKeys:(id)keys;
- (void)ABMutableMultiValueForABPerson:(void *)person;
- (void)ABValueFromCNValue:(id)value;
- (void)assertValueType:(id)type;
@end

@implementation CNMultiValuePropertyDescription

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length
{
  if (bytes)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:length encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)applyCNValue:(id)value toArray:(id)array identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label
{
  v7 = *&legacyIdentifier;
  labelCopy = label;
  identifierCopy = identifier;
  arrayCopy = array;
  valueCopy = value;
  v15 = [[CNLabeledValue alloc] primitiveInitWithIdentifier:identifierCopy label:labelCopy value:valueCopy];

  [v15 setIOSLegacyIdentifier:v7];
  [arrayCopy addObject:v15];

  return 1;
}

- (BOOL)applyABMultivalueValueBytes:(char *)bytes length:(unint64_t)length identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation
{
  v9 = *&legacyIdentifier;
  representationCopy = representation;
  labelCopy = label;
  identifierCopy = identifier;
  v17 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValueBytes:bytes length:length];
  [(CNMultiValuePropertyDescription *)self applyCNValue:v17 toArray:representationCopy identifier:identifierCopy legacyIdentifier:v9 label:labelCopy];

  return 1;
}

- (BOOL)applyDictionary:(id)dictionary identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation
{
  v9 = *&legacyIdentifier;
  dictionaryCopy = dictionary;
  v13 = *MEMORY[0x1E698A328];
  representationCopy = representation;
  labelCopy = label;
  identifierCopy = identifier;
  v17 = [dictionaryCopy objectForKey:v13];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 componentsSeparatedByString:{@", "}];
    v20 = [dictionaryCopy mutableCopy];
    [v20 setObject:v19 forKey:v13];

    dictionaryCopy = v20;
  }

  v21 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:dictionaryCopy];

  v22 = [(CNMultiValuePropertyDescription *)self applyCNValue:v21 toArray:representationCopy identifier:identifierCopy legacyIdentifier:v9 label:labelCopy];
  return v22;
}

- (void)ABValueFromCNValue:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v22 = v21 = self;
  Mutable = ABMultiValueCreateMutable([(CNMultiValuePropertyDescription *)self abPropertyType]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = valueCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v10);
        value = [v12 value];
        [(CNMultiValuePropertyDescription *)v21 ABMultiValueValueFromCNLabeledValueValue:value];
        label = [v12 label];
        v15 = [v22 mappedConstant:label];

        identifier = [v12 identifier];
        v8 = v11 + 1;
        ABMultiValueInsertValueAndLabelAndUUIDAtIndex();

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(Mutable, 0);
  ABMultiValueSetPrimaryIdentifier(Mutable, IdentifierAtIndex);
  if (Mutable)
  {
    v18 = CFAutorelease(Mutable);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)CNValueFromABValue:(void *)value
{
  array = [MEMORY[0x1E695DF70] array];
  Count = ABMultiValueGetCount(value);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = ABMultiValueCopyValueAtIndex(value, i);
      v7 = ABMultiValueCopyLabelAtIndex(value, i);
      IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(value, i);
      v9 = ABMultiValueCopyUUIDAtIndex();
      v10 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:v6];
      v11 = [(CNMultiValuePropertyDescription *)self CNLabeledValueLabelFromABMultiValueLabel:v7];
      if (v10)
      {
        v12 = [[CNLabeledValue alloc] primitiveInitWithIdentifier:v9 label:v11 value:v10];
        [v12 setIOSLegacyIdentifier:IdentifierAtIndex];
        [array addObject:v12];
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v13 = array;
  v14 = [array copy];

  return v14;
}

- (id)CNLabeledValueLabelFromABMultiValueLabel:(__CFString *)label
{
  v4 = +[CNiOSABConstantsMapping ABToCNLabelConstantsMapping];
  v5 = [v4 mappedConstant:label];

  return v5;
}

- (__CFString)ABMultiValueLabelFromCNLabeledValueLabel:(id)label
{
  labelCopy = label;
  v4 = +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v5 = [v4 mappedConstant:labelCopy];

  return v5;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value destinationClass:(Class)class settersByABKeys:(id)keys
{
  keysCopy = keys;
  v8 = objc_alloc_init(class);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __116__CNMultiValuePropertyDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue_destinationClass_settersByABKeys___block_invoke;
  v11[3] = &unk_1E7415CF8;
  valueCopy = value;
  v9 = v8;
  v12 = v9;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

void __116__CNMultiValuePropertyDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue_destinationClass_settersByABKeys___block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v6 = a3;
  Value = CFDictionaryGetValue(*(a1 + 40), a2);
  if (Value)
  {
    v6[2](v6, *(a1 + 32), Value);
  }
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value gettersByABKeys:(id)keys
{
  valueCopy = value;
  v6 = *MEMORY[0x1E695E480];
  keysCopy = keys;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__CNMultiValuePropertyDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue_gettersByABKeys___block_invoke;
  v11[3] = &unk_1E7415CF8;
  v9 = valueCopy;
  v12 = v9;
  v13 = Mutable;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v11];

  if (Mutable)
  {
    Mutable = CFAutorelease(Mutable);
  }

  return Mutable;
}

void __99__CNMultiValuePropertyDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue_gettersByABKeys___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  key = a2;
  v5 = (*(a3 + 16))(a3, *(a1 + 32));
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 != CFStringGetTypeID() || CFStringGetLength(v6) >= 1)
    {
      CFDictionarySetValue(*(a1 + 40), key, v6);
    }
  }
}

- (void)ABMutableMultiValueForABPerson:(void *)person
{
  v4 = [(CNPropertyDescription *)self ABValueForABPerson:person];
  if (v4)
  {
    result = ABMultiValueCreateMutableCopy(v4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = ABMultiValueCreateMutable([(CNMultiValuePropertyDescription *)self abPropertyType]);
    if (!result)
    {
      return result;
    }
  }

  return CFAutorelease(result);
}

- (BOOL)isEqualIgnoringIdentifiersForContact:(id)contact other:(id)other
{
  otherCopy = other;
  v7 = [(CNPropertyDescription *)self CNValueForContact:contact];
  v8 = [(CNPropertyDescription *)self CNValueForContact:otherCopy];

  LOBYTE(otherCopy) = [CNLabeledValue isArrayOfEntries:v7 equalToArrayOfEntriesIgnoringIdentifiers:v8];
  return otherCopy;
}

- (void)assertValueType:(id)type
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v24.receiver = self;
  v24.super_class = CNMultiValuePropertyDescription;
  [(CNPropertyDescription *)&v24 assertValueType:typeCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = typeCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = CNPropertyInvalidTypeExceptionName;
          v11 = objc_opt_class();
          v12 = [(CNPropertyDescription *)self key];
          [v9 raise:v10 format:{@"Labeled value %@ has incorrect type %@ for key %@. It should be %@.", v8, v11, v12, objc_opt_class()}];
        }

        label = [v8 label];
        if (label)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = MEMORY[0x1E695DF30];
            v15 = CNPropertyInvalidTypeExceptionName;
            v16 = objc_opt_class();
            [v14 raise:v15 format:{@"Labeled value %@ label %@ has incorrect type %@. It should be %@.", v8, label, v16, objc_opt_class()}];
          }
        }

        value = [v8 value];
        [(CNMultiValuePropertyDescription *)self labeledValueClass];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:CNPropertyInvalidTypeExceptionName format:{@"Labeled value %@ value %@ has incorrect type %@. It should be %@.", v8, value, objc_opt_class(), -[CNMultiValuePropertyDescription labeledValueClass](self, "labeledValueClass")}];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = valueCopy;
  if (valueCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = valueCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          value = [*(*(&v23 + 1) + 8 * i) value];
          v22 = 0;
          v14 = [(CNMultiValuePropertyDescription *)self isValidMultiValueValue:value error:&v22];
          v15 = v22;
          v16 = v15;
          if (!v14)
          {
            if (error)
            {
              v18 = [(CNPropertyDescription *)self key];
              v27[0] = v18;
              v27[1] = @"value";
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
              v20 = [v19 componentsJoinedByString:@"."];
              *error = [CNErrorFactory errorByPrependingKeyPath:v20 toKeyPathsInError:v16];
            }

            v17 = 0;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_14:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)isValidMultiValueValue:(id)value error:(id *)error
{
  valueCopy = value;
  if ([valueCopy conformsToProtocol:&unk_1F0993B08])
  {
    v6 = [valueCopy isValid:error];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)stringForIndexingForContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([(objc_class *)[(CNMultiValuePropertyDescription *)self labeledValueClass] isSubclassOfClass:objc_opt_class()])
  {
    v5 = [(CNPropertyDescription *)self CNValueForContact:contactCopy];
    if ([v5 count])
    {
      string = [MEMORY[0x1E696AD60] string];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            value = [*(*(&v14 + 1) + 8 * i) value];
            [string appendString:value];

            [string appendString:@" "];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    else
    {
      string = 0;
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)valueWithResetIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = identifiersCopy;
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
        label = [v10 label];
        value = [v10 value];
        v13 = [CNLabeledValue labeledValueWithLabel:label value:value];

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)standardLabelsWithOptions:(unint64_t)options
{
  if ((options & 2) != 0)
  {
    standardLabels = MEMORY[0x1E695E0F0];
  }

  else
  {
    standardLabels = [(CNMultiValuePropertyDescription *)self standardLabels];
  }

  return standardLabels;
}

- (NSArray)standardLabels
{
  if (standardLabels_cn_once_token_0 != -1)
  {
    [CNMultiValuePropertyDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_0;

  return v3;
}

uint64_t __49__CNMultiValuePropertyDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Home>!$_", @"_$!<Work>!$_", @"_$!<School>!$_", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_0;
  standardLabels_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end