@interface NSSetChanges
+ (id)allocWithZone:(_NSZone *)a3;
- (void)addChange:(id)a3;
- (void)addObject:(id)a3;
- (void)applyChangesToSet:(id)a3;
- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateChangesUsingBlock:(id)a3;
- (void)removeObject:(id)a3;
@end

@implementation NSSetChanges

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSSetChanges == a1)
  {

    return [(NSSetChanges *)NSConcreteSetChanges allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSSetChanges;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

- (void)addChange:(id)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)enumerateChangesUsingBlock:(id)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)addObject:(id)a3
{
  v4 = [[NSSetChange alloc] initWithType:2 object:a3];
  [(NSSetChanges *)self addChange:v4];
}

- (void)removeObject:(id)a3
{
  v4 = [[NSSetChange alloc] initWithType:3 object:a3];
  [(NSSetChanges *)self addChange:v4];
}

- (void)applyChangesToSet:(id)a3
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__NSSetChanges_NSSetChangeActions__applyChangesToSet___block_invoke;
  v3[3] = &unk_1E69F6468;
  v3[4] = a3;
  [(NSSetChanges *)self enumerateChangesUsingBlock:v3];
}

uint64_t __54__NSSetChanges_NSSetChangeActions__applyChangesToSet___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 changeType] == 2)
  {
    v4 = *(a1 + 32);
    v5 = [a2 value];

    return [v4 addObject:v5];
  }

  else
  {
    result = [a2 changeType];
    if (result == 3)
    {
      v7 = *(a1 + 32);
      v8 = [a2 value];

      return [v7 removeObject:v8];
    }
  }

  return result;
}

@end