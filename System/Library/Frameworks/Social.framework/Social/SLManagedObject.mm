@interface SLManagedObject
- (id)objectOfClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
- (void)setValuesWithObject:(id)object;
@end

@implementation SLManagedObject

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  entity = [(SLManagedObject *)self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = allKeys;
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
        [coderCopy encodeObject:v14 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)objectOfClass:(Class)class
{
  entity = [(SLManagedObject *)self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  v8 = [(SLManagedObject *)self dictionaryWithValuesForKeys:allKeys];
  v9 = objc_alloc_init(class);
  [v9 setValuesForKeysWithDictionary:v8];
  objectID = [(SLManagedObject *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  [v9 setValue:uRIRepresentation forKey:@"objectID"];

  return v9;
}

- (void)setValuesWithObject:(id)object
{
  objectCopy = object;
  entity = [(SLManagedObject *)self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  v7 = [objectCopy dictionaryWithValuesForKeys:allKeys];

  [(SLManagedObject *)self setValuesForKeysWithDictionary:v7];
}

@end