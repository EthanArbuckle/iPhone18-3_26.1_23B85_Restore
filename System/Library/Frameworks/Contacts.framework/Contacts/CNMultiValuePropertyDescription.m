@interface CNMultiValuePropertyDescription
- (BOOL)applyABMultivalueValueBytes:(char *)a3 length:(unint64_t)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7 toCNMultivalueRepresentation:(id)a8;
- (BOOL)applyCNValue:(id)a3 toArray:(id)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7;
- (BOOL)applyDictionary:(id)a3 identifier:(id)a4 legacyIdentifier:(int)a5 label:(id)a6 toCNMultivalueRepresentation:(id)a7;
- (BOOL)isEqualIgnoringIdentifiersForContact:(id)a3 other:(id)a4;
- (BOOL)isValidMultiValueValue:(id)a3 error:(id *)a4;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (NSArray)standardLabels;
- (__CFString)ABMultiValueLabelFromCNLabeledValueLabel:(id)a3;
- (id)CNLabeledValueLabelFromABMultiValueLabel:(__CFString *)a3;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3 destinationClass:(Class)a4 settersByABKeys:(id)a5;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4;
- (id)CNValueFromABValue:(void *)a3;
- (id)standardLabelsWithOptions:(unint64_t)a3;
- (id)stringForIndexingForContact:(id)a3;
- (id)valueWithResetIdentifiers:(id)a3;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3 gettersByABKeys:(id)a4;
- (void)ABMutableMultiValueForABPerson:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)assertValueType:(id)a3;
@end

@implementation CNMultiValuePropertyDescription

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4
{
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)applyCNValue:(id)a3 toArray:(id)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7
{
  v7 = *&a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[CNLabeledValue alloc] primitiveInitWithIdentifier:v12 label:v11 value:v14];

  [v15 setIOSLegacyIdentifier:v7];
  [v13 addObject:v15];

  return 1;
}

- (BOOL)applyABMultivalueValueBytes:(char *)a3 length:(unint64_t)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7 toCNMultivalueRepresentation:(id)a8
{
  v9 = *&a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValueBytes:a3 length:a4];
  [(CNMultiValuePropertyDescription *)self applyCNValue:v17 toArray:v14 identifier:v16 legacyIdentifier:v9 label:v15];

  return 1;
}

- (BOOL)applyDictionary:(id)a3 identifier:(id)a4 legacyIdentifier:(int)a5 label:(id)a6 toCNMultivalueRepresentation:(id)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = *MEMORY[0x1E698A328];
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = [v12 objectForKey:v13];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 componentsSeparatedByString:{@", "}];
    v20 = [v12 mutableCopy];
    [v20 setObject:v19 forKey:v13];

    v12 = v20;
  }

  v21 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:v12];

  v22 = [(CNMultiValuePropertyDescription *)self applyCNValue:v21 toArray:v14 identifier:v16 legacyIdentifier:v9 label:v15];
  return v22;
}

- (void)ABValueFromCNValue:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v22 = v21 = self;
  Mutable = ABMultiValueCreateMutable([(CNMultiValuePropertyDescription *)self abPropertyType]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
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
        v13 = [v12 value];
        [(CNMultiValuePropertyDescription *)v21 ABMultiValueValueFromCNLabeledValueValue:v13];
        v14 = [v12 label];
        v15 = [v22 mappedConstant:v14];

        v16 = [v12 identifier];
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

- (id)CNValueFromABValue:(void *)a3
{
  v16 = [MEMORY[0x1E695DF70] array];
  Count = ABMultiValueGetCount(a3);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = ABMultiValueCopyValueAtIndex(a3, i);
      v7 = ABMultiValueCopyLabelAtIndex(a3, i);
      IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(a3, i);
      v9 = ABMultiValueCopyUUIDAtIndex();
      v10 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:v6];
      v11 = [(CNMultiValuePropertyDescription *)self CNLabeledValueLabelFromABMultiValueLabel:v7];
      if (v10)
      {
        v12 = [[CNLabeledValue alloc] primitiveInitWithIdentifier:v9 label:v11 value:v10];
        [v12 setIOSLegacyIdentifier:IdentifierAtIndex];
        [v16 addObject:v12];
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

  v13 = v16;
  v14 = [v16 copy];

  return v14;
}

- (id)CNLabeledValueLabelFromABMultiValueLabel:(__CFString *)a3
{
  v4 = +[CNiOSABConstantsMapping ABToCNLabelConstantsMapping];
  v5 = [v4 mappedConstant:a3];

  return v5;
}

- (__CFString)ABMultiValueLabelFromCNLabeledValueLabel:(id)a3
{
  v3 = a3;
  v4 = +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v5 = [v4 mappedConstant:v3];

  return v5;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3 destinationClass:(Class)a4 settersByABKeys:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(a4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __116__CNMultiValuePropertyDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue_destinationClass_settersByABKeys___block_invoke;
  v11[3] = &unk_1E7415CF8;
  v13 = a3;
  v9 = v8;
  v12 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3 gettersByABKeys:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E695E480];
  v7 = a4;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__CNMultiValuePropertyDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue_gettersByABKeys___block_invoke;
  v11[3] = &unk_1E7415CF8;
  v9 = v5;
  v12 = v9;
  v13 = Mutable;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

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

- (void)ABMutableMultiValueForABPerson:(void *)a3
{
  v4 = [(CNPropertyDescription *)self ABValueForABPerson:a3];
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

- (BOOL)isEqualIgnoringIdentifiersForContact:(id)a3 other:(id)a4
{
  v6 = a4;
  v7 = [(CNPropertyDescription *)self CNValueForContact:a3];
  v8 = [(CNPropertyDescription *)self CNValueForContact:v6];

  LOBYTE(v6) = [CNLabeledValue isArrayOfEntries:v7 equalToArrayOfEntriesIgnoringIdentifiers:v8];
  return v6;
}

- (void)assertValueType:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CNMultiValuePropertyDescription;
  [(CNPropertyDescription *)&v24 assertValueType:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
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

        v13 = [v8 label];
        if (v13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = MEMORY[0x1E695DF30];
            v15 = CNPropertyInvalidTypeExceptionName;
            v16 = objc_opt_class();
            [v14 raise:v15 format:{@"Labeled value %@ label %@ has incorrect type %@. It should be %@.", v8, v13, v16, objc_opt_class()}];
          }
        }

        v17 = [v8 value];
        [(CNMultiValuePropertyDescription *)self labeledValueClass];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:CNPropertyInvalidTypeExceptionName format:{@"Labeled value %@ value %@ has incorrect type %@. It should be %@.", v8, v17, objc_opt_class(), -[CNMultiValuePropertyDescription labeledValueClass](self, "labeledValueClass")}];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
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

          v13 = [*(*(&v23 + 1) + 8 * i) value];
          v22 = 0;
          v14 = [(CNMultiValuePropertyDescription *)self isValidMultiValueValue:v13 error:&v22];
          v15 = v22;
          v16 = v15;
          if (!v14)
          {
            if (a4)
            {
              v18 = [(CNPropertyDescription *)self key];
              v27[0] = v18;
              v27[1] = @"value";
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
              v20 = [v19 componentsJoinedByString:@"."];
              *a4 = [CNErrorFactory errorByPrependingKeyPath:v20 toKeyPathsInError:v16];
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

- (BOOL)isValidMultiValueValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 conformsToProtocol:&unk_1F0993B08])
  {
    v6 = [v5 isValid:a4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)stringForIndexingForContact:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(objc_class *)[(CNMultiValuePropertyDescription *)self labeledValueClass] isSubclassOfClass:objc_opt_class()])
  {
    v5 = [(CNPropertyDescription *)self CNValueForContact:v4];
    if ([v5 count])
    {
      v6 = [MEMORY[0x1E696AD60] string];
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

            v12 = [*(*(&v14 + 1) + 8 * i) value];
            [v6 appendString:v12];

            [v6 appendString:@" "];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
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

- (id)valueWithResetIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 label];
        v12 = [v10 value];
        v13 = [CNLabeledValue labeledValueWithLabel:v11 value:v12];

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)standardLabelsWithOptions:(unint64_t)a3
{
  if ((a3 & 2) != 0)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [(CNMultiValuePropertyDescription *)self standardLabels];
  }

  return v4;
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