@interface NSPointerArray
+ (NSPointerArray)allocWithZone:(_NSZone *)a3;
+ (NSPointerArray)pointerArrayWithOptions:(NSPointerFunctionsOptions)options;
+ (NSPointerArray)pointerArrayWithPointerFunctions:(NSPointerFunctions *)functions;
+ (NSPointerArray)strongObjectsPointerArray;
+ (NSPointerArray)weakObjectsPointerArray;
+ (id)pointerArrayWithStrongObjects;
+ (id)pointerArrayWithWeakObjects;
- (NSArray)allObjects;
- (NSPointerArray)initWithCoder:(id)a3;
@end

@implementation NSPointerArray

+ (NSPointerArray)strongObjectsPointerArray
{
  v2 = objc_alloc_init(NSConcretePointerArray);

  return v2;
}

+ (NSPointerArray)weakObjectsPointerArray
{
  v2 = [[NSConcretePointerArray alloc] initWithOptions:5];

  return v2;
}

- (NSArray)allObjects
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSPointerArray *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v10 + 1) + 8 * v7))
        {
          [(NSArray *)v3 addObject:?];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (NSPointerArray)pointerArrayWithOptions:(NSPointerFunctionsOptions)options
{
  v4 = objc_opt_self();
  v5 = [NSAllocateObject(v4 0];

  return v5;
}

+ (NSPointerArray)pointerArrayWithPointerFunctions:(NSPointerFunctions *)functions
{
  v4 = objc_opt_self();
  v5 = [NSAllocateObject(v4 0];

  return v5;
}

+ (NSPointerArray)allocWithZone:(_NSZone *)a3
{
  v3 = objc_opt_self();

  return NSAllocateObject(v3, 0, 0);
}

- (NSPointerArray)initWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSPointerArray;
  [(NSPointerArray *)&v5 dealloc];
  return [[NSConcretePointerArray alloc] initWithCoder:a3];
}

+ (id)pointerArrayWithStrongObjects
{
  v2 = objc_alloc_init(NSConcretePointerArray);

  return v2;
}

+ (id)pointerArrayWithWeakObjects
{
  v2 = [[NSConcretePointerArray alloc] initWithOptions:1];

  return v2;
}

@end