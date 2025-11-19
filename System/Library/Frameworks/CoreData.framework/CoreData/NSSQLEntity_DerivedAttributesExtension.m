@interface NSSQLEntity_DerivedAttributesExtension
- (NSSQLEntity_DerivedAttributesExtension)initWithEntity:(id)a3;
- (uint64_t)addDerivationKeypath:(void *)key forAttribute:;
- (void)_generateTriggerSQL;
- (void)dealloc;
@end

@implementation NSSQLEntity_DerivedAttributesExtension

- (void)dealloc
{
  derivedAttributes = self->_derivedAttributes;
  if (derivedAttributes)
  {
    CFRelease(derivedAttributes);
  }

  self->_triggerSQL = 0;
  self->_migrationSQL = 0;
  v4.receiver = self;
  v4.super_class = NSSQLEntity_DerivedAttributesExtension;
  [(NSSQLEntity_DerivedAttributesExtension *)&v4 dealloc];
}

- (void)_generateTriggerSQL
{
  if (a1)
  {
    if (!*(a1 + 24))
    {
      v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(a1 + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 32) setValue:v3 forKey:@"dropStatements"];

      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 32) setValue:v4 forKey:@"dataStatements"];

      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 32) setValue:v5 forKey:@"triggerCreationStatements"];

      v6 = *(a1 + 16);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __61__NSSQLEntity_DerivedAttributesExtension__generateTriggerSQL__block_invoke;
      v7[3] = &unk_1E6EC48B8;
      v7[4] = a1;
      [v6 enumerateKeysAndObjectsUsingBlock:v7];
      [v2 drain];
    }
  }
}

- (NSSQLEntity_DerivedAttributesExtension)initWithEntity:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSSQLEntity_DerivedAttributesExtension;
  v4 = [(NSSQLEntity_DerivedAttributesExtension *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_entity = a3;
    memset(&v7, 0, 24);
    *&v7.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v7.hash = *(MEMORY[0x1E695E9D8] + 40);
    v4->_derivedAttributes = CFDictionaryCreateMutable(0, 0, &v7, MEMORY[0x1E695E9E8]);
  }

  return v5;
}

- (uint64_t)addDerivationKeypath:(void *)key forAttribute:
{
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(*(result + 16), key);
    if (!Value)
    {
      Value = objc_alloc_init(MEMORY[0x1E695DFA8]);
      CFDictionarySetValue(*(v5 + 16), key, Value);
    }

    result = [a2 count];
    if (result)
    {

      return [Value addObject:a2];
    }
  }

  return result;
}

@end