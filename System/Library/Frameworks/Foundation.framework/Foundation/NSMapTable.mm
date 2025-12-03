@interface NSMapTable
+ (NSMapTable)alloc;
+ (NSMapTable)allocWithZone:(_NSZone *)zone;
+ (NSMapTable)mapTableWithKeyOptions:(NSPointerFunctionsOptions)keyOptions valueOptions:(NSPointerFunctionsOptions)valueOptions;
+ (NSMapTable)strongToStrongObjectsMapTable;
+ (NSMapTable)strongToWeakObjectsMapTable;
+ (NSMapTable)weakToStrongObjectsMapTable;
+ (NSMapTable)weakToWeakObjectsMapTable;
+ (id)mapTableWithStrongToStrongObjects;
+ (id)mapTableWithStrongToWeakObjects;
+ (id)mapTableWithWeakToStrongObjects;
+ (id)mapTableWithWeakToWeakObjects;
- (NSDictionary)dictionaryRepresentation;
- (NSMapTable)initWithCoder:(id)coder;
- (id)mutableDictionary;
@end

@implementation NSMapTable

- (NSDictionary)dictionaryRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMapTable *)self objectForKey:v8];
        if (v9)
        {
          [(NSDictionary *)dictionary setObject:v9 forKey:v8];
        }
      }

      v5 = [(NSMapTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (NSMapTable)alloc
{
  v2 = objc_opt_self();

  return NSAllocateObject(v2, 0, 0);
}

+ (NSMapTable)weakToStrongObjectsMapTable
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:16];

  return v2;
}

+ (NSMapTable)strongToStrongObjectsMapTable
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:16];

  return v2;
}

+ (NSMapTable)strongToWeakObjectsMapTable
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:16];

  return v2;
}

+ (NSMapTable)weakToWeakObjectsMapTable
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:5 valueOptions:5 capacity:16];

  return v2;
}

+ (id)mapTableWithWeakToStrongObjects
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:1 valueOptions:0 capacity:16];

  return v2;
}

+ (id)mapTableWithStrongToStrongObjects
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:16];

  return v2;
}

+ (NSMapTable)allocWithZone:(_NSZone *)zone
{
  v3 = objc_opt_self();

  return NSAllocateObject(v3, 0, 0);
}

+ (NSMapTable)mapTableWithKeyOptions:(NSPointerFunctionsOptions)keyOptions valueOptions:(NSPointerFunctionsOptions)valueOptions
{
  v4 = [[NSConcreteMapTable alloc] initWithKeyOptions:keyOptions valueOptions:valueOptions capacity:16];

  return v4;
}

+ (id)mapTableWithStrongToWeakObjects
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:0 valueOptions:1 capacity:16];

  return v2;
}

+ (id)mapTableWithWeakToWeakObjects
{
  v2 = [[NSConcreteMapTable alloc] initWithKeyOptions:1 valueOptions:1 capacity:16];

  return v2;
}

- (NSMapTable)initWithCoder:(id)coder
{
  v4 = [NSConcreteMapTable alloc];

  return [(NSConcreteMapTable *)v4 initWithCoder:coder];
}

- (id)mutableDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMapTable *)self objectForKey:v8];
        if (v9)
        {
          [dictionary setObject:v9 forKey:v8];
        }
      }

      v5 = [(NSMapTable *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  return dictionary;
}

@end