@interface SLManagedObject
- (id)objectOfClass:(Class)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setValuesWithObject:(id)a3;
@end

@implementation SLManagedObject

- (void)encodeWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SLManagedObject *)self entity];
  v6 = [v5 attributesByName];
  v7 = [v6 allKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(SLManagedObject *)self valueForKey:v13, v15];
        [v4 encodeObject:v14 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)objectOfClass:(Class)a3
{
  v5 = [(SLManagedObject *)self entity];
  v6 = [v5 attributesByName];
  v7 = [v6 allKeys];

  v8 = [(SLManagedObject *)self dictionaryWithValuesForKeys:v7];
  v9 = objc_alloc_init(a3);
  [v9 setValuesForKeysWithDictionary:v8];
  v10 = [(SLManagedObject *)self objectID];
  v11 = [v10 URIRepresentation];
  [v9 setValue:v11 forKey:@"objectID"];

  return v9;
}

- (void)setValuesWithObject:(id)a3
{
  v4 = a3;
  v5 = [(SLManagedObject *)self entity];
  v6 = [v5 attributesByName];
  v8 = [v6 allKeys];

  v7 = [v4 dictionaryWithValuesForKeys:v8];

  [(SLManagedObject *)self setValuesForKeysWithDictionary:v7];
}

@end