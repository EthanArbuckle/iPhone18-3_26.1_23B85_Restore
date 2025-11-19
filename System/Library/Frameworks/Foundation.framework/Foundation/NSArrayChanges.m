@interface NSArrayChanges
+ (id)allocWithZone:(_NSZone *)a3;
- (NSArrayChanges)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addChange:(id)a3;
- (void)addChanges:(id)a3;
- (void)addObject:(id)a3;
- (void)applyChangesToArray:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateChangesUsingBlock:(id)a3;
- (void)exchangeObjectAtIndex:(unint64_t)a3 withObjectAtIndex:(unint64_t)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)moveObjectsAtIndexes:(id)a3 toIndex:(unint64_t)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)sortUsingFunction:(void *)a3 context:(void *)a4;
- (void)sortUsingSelector:(SEL)a3;
- (void)updateObject:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation NSArrayChanges

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSArrayChanges == a1)
  {

    return [(NSArrayChanges *)NSConcreteArrayChanges allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSArrayChanges;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

- (NSArrayChanges)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSArrayChanges;
  v4 = [(NSArrayChanges *)&v8 init];
  if (v4)
  {
    v7 = 0;
    [a3 decodeValueOfObjCType:"Q" at:&v7 size:8];
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        -[NSArrayChanges addChange:](v4, "addChange:", [a3 decodeObject]);
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = [(NSArrayChanges *)self changeCount];
  [a3 encodeValueOfObjCType:"Q" at:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NSArrayChanges_encodeWithCoder___block_invoke;
  v5[3] = &unk_1E69F53D8;
  v5[4] = a3;
  [(NSArrayChanges *)self enumerateChangesUsingBlock:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = [[NSArrayChanges allocWithZone:?]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__NSArrayChanges_copyWithZone___block_invoke;
  v6[3] = &unk_1E69F53D8;
  v6[4] = v4;
  [(NSArrayChanges *)self enumerateChangesUsingBlock:v6];
  return v4;
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

- (void)addChange:(id)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)updateObject:(id)a3 atIndex:(unint64_t)a4
{
  v5 = [[NSArrayChange alloc] initWithType:1 sourceIndex:a4 destinationIndex:a4 value:a3];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v5 = [[NSArrayChange alloc] initWithType:4 sourceIndex:a3 destinationIndex:a3 value:a4];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v5 = [[NSArrayChange alloc] initWithType:5 sourceIndex:a3 destinationIndex:a4 value:[(NSArrayChanges *)self objectAtIndex:a3]];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v4 = [[NSArrayChange alloc] initWithType:3 sourceIndex:a3 destinationIndex:a3 value:0];
  [(NSArrayChanges *)self addChange:v4];
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v5 = [[NSArrayChange alloc] initWithType:2 sourceIndex:a4 destinationIndex:a4 value:a3];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)applyChangesToArray:(id)a3
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__NSArrayChanges_NSArrayChangeActions__applyChangesToArray___block_invoke;
  v3[3] = &unk_1E69F53D8;
  v3[4] = a3;
  [(NSArrayChanges *)self enumerateChangesUsingBlock:v3];
}

uint64_t __60__NSArrayChanges_NSArrayChangeActions__applyChangesToArray___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 changeType];
  if (result <= 2)
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      v5 = *(a1 + 32);
      v6 = [a2 value];
      v7 = [a2 destinationIndex];

      return [v5 insertObject:v6 atIndex:v7];
    }

    goto LABEL_12;
  }

  if (result == 3)
  {
    v14 = *(a1 + 32);
    v15 = [a2 destinationIndex];

    return [v14 removeObjectAtIndex:v15];
  }

  else
  {
    if (result != 4)
    {
LABEL_12:
      result = [a2 changeType];
      if (result == 5)
      {
        v11 = *(a1 + 32);
        v12 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [a2 sourceIndex]);
        v13 = [a2 destinationIndex];

        return [v11 moveObjectsAtIndexes:v12 toIndex:v13];
      }

      return result;
    }

    v8 = *(a1 + 32);
    v9 = [a2 destinationIndex];
    v10 = [a2 value];

    return [v8 replaceObjectAtIndex:v9 withObject:v10];
  }
}

- (void)moveObjectsAtIndexes:(id)a3 toIndex:(unint64_t)a4
{
  v7 = [a3 firstIndex];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    do
    {
      [(NSArrayChanges *)self moveObjectAtIndex:v8 toIndex:a4];
      v8 = [a3 indexGreaterThanIndex:v8];
      ++a4;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (void)exchangeObjectAtIndex:(unint64_t)a3 withObjectAtIndex:(unint64_t)a4
{
  if (a3 != a4)
  {
    v5 = a4;
    v8 = [(NSArrayChanges *)self objectAtIndex:?];
    v9 = [(NSArrayChanges *)self objectAtIndex:v5];
    if (a3 <= v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (a3 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v8 = v9;
      v11 = a3;
    }

    if (a3 < v5)
    {
      v5 = a3;
    }

    v12 = [[NSArrayChange alloc] initWithType:5 sourceIndex:v5 destinationIndex:v11 value:v8];
    v13 = [[NSArrayChange alloc] initWithType:5 sourceIndex:v11 - 1 destinationIndex:v5 value:v10];
    [(NSArrayChanges *)self addChange:v12];
    [(NSArrayChanges *)self addChange:v13];
  }
}

- (void)addChanges:(id)a3
{
  if ([a3 count])
  {
    v5 = 0;
    do
    {
      -[NSArrayChanges addChange:](self, "addChange:", [a3 objectAtIndexedSubscript:v5++]);
    }

    while (v5 < [a3 count]);
  }
}

- (void)addObject:(id)a3
{
  v5 = [(NSArrayChanges *)self count];

  [(NSArrayChanges *)self insertObject:a3 atIndex:v5];
}

- (void)removeLastObject
{
  v3 = [(NSArrayChanges *)self count];
  if (v3)
  {

    [(NSArrayChanges *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)sortUsingFunction:(void *)a3 context:(void *)a4
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__NSArrayChanges_NSMutableArrayOverrides__sortUsingFunction_context___block_invoke;
  v4[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v4[4] = a3;
  v4[5] = a4;
  [(NSArrayChanges *)self sortWithOptions:0 usingComparator:v4];
}

- (void)sortUsingSelector:(SEL)a3
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__NSArrayChanges_NSMutableArrayOverrides__sortUsingSelector___block_invoke;
  v3[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v3[4] = a3;
  [(NSArrayChanges *)self sortWithOptions:0 usingComparator:v3];
}

@end