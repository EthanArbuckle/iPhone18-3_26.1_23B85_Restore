@interface CNCompoundMultiValuePropertyDescription
- (id)dictionaryTransform;
- (id)fromDictionaryTransform;
- (id)stringForIndexingForContact:(id)contact;
@end

@implementation CNCompoundMultiValuePropertyDescription

- (id)dictionaryTransform
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)fromDictionaryTransform
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)stringForIndexingForContact:(id)contact
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(CNPropertyDescription *)self CNValueForContact:contact];
  if ([v4 count])
  {
    string = [MEMORY[0x1E696AD60] string];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          dictionaryTransform = [(CNCompoundMultiValuePropertyDescription *)self dictionaryTransform];
          value = [v10 value];
          v13 = (dictionaryTransform)[2](dictionaryTransform, value);

          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __71__CNCompoundMultiValuePropertyDescription_stringForIndexingForContact___block_invoke;
          v16[3] = &unk_1E7416290;
          v17 = string;
          [v13 enumerateKeysAndObjectsUsingBlock:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

void __71__CNCompoundMultiValuePropertyDescription_stringForIndexingForContact___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) appendString:v4];
    [*(a1 + 32) appendString:@" "];
  }
}

@end