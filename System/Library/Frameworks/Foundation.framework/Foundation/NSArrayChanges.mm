@interface NSArrayChanges
+ (id)allocWithZone:(_NSZone *)zone;
- (NSArrayChanges)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addChange:(id)change;
- (void)addChanges:(id)changes;
- (void)addObject:(id)object;
- (void)applyChangesToArray:(id)array;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateChanges:(unint64_t)changes usingBlock:(id)block;
- (void)enumerateChangesUsingBlock:(id)block;
- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)sortUsingFunction:(void *)function context:(void *)context;
- (void)sortUsingSelector:(SEL)selector;
- (void)updateObject:(id)object atIndex:(unint64_t)index;
@end

@implementation NSArrayChanges

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSArrayChanges == self)
  {

    return [(NSArrayChanges *)NSConcreteArrayChanges allocWithZone:zone];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSArrayChanges;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSArrayChanges)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSArrayChanges;
  v4 = [(NSArrayChanges *)&v8 init];
  if (v4)
  {
    v7 = 0;
    [coder decodeValueOfObjCType:"Q" at:&v7 size:8];
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        -[NSArrayChanges addChange:](v4, "addChange:", [coder decodeObject]);
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = [(NSArrayChanges *)self changeCount];
  [coder encodeValueOfObjCType:"Q" at:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NSArrayChanges_encodeWithCoder___block_invoke;
  v5[3] = &unk_1E69F53D8;
  v5[4] = coder;
  [(NSArrayChanges *)self enumerateChangesUsingBlock:v5];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)enumerateChangesUsingBlock:(id)block
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)enumerateChanges:(unint64_t)changes usingBlock:(id)block
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)addChange:(id)change
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)updateObject:(id)object atIndex:(unint64_t)index
{
  v5 = [[NSArrayChange alloc] initWithType:1 sourceIndex:index destinationIndex:index value:object];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v5 = [[NSArrayChange alloc] initWithType:4 sourceIndex:index destinationIndex:index value:object];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v5 = [[NSArrayChange alloc] initWithType:5 sourceIndex:index destinationIndex:toIndex value:[(NSArrayChanges *)self objectAtIndex:index]];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v4 = [[NSArrayChange alloc] initWithType:3 sourceIndex:index destinationIndex:index value:0];
  [(NSArrayChanges *)self addChange:v4];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v5 = [[NSArrayChange alloc] initWithType:2 sourceIndex:index destinationIndex:index value:object];
  [(NSArrayChanges *)self addChange:v5];
}

- (void)applyChangesToArray:(id)array
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__NSArrayChanges_NSArrayChangeActions__applyChangesToArray___block_invoke;
  v3[3] = &unk_1E69F53D8;
  v3[4] = array;
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

- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  firstIndex = [indexes firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = firstIndex;
    do
    {
      [(NSArrayChanges *)self moveObjectAtIndex:v8 toIndex:index];
      v8 = [indexes indexGreaterThanIndex:v8];
      ++index;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex
{
  if (index != atIndex)
  {
    indexCopy2 = atIndex;
    v8 = [(NSArrayChanges *)self objectAtIndex:?];
    v9 = [(NSArrayChanges *)self objectAtIndex:indexCopy2];
    if (index <= indexCopy2)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (index <= indexCopy2)
    {
      indexCopy = indexCopy2;
    }

    else
    {
      v8 = v9;
      indexCopy = index;
    }

    if (index < indexCopy2)
    {
      indexCopy2 = index;
    }

    v12 = [[NSArrayChange alloc] initWithType:5 sourceIndex:indexCopy2 destinationIndex:indexCopy value:v8];
    v13 = [[NSArrayChange alloc] initWithType:5 sourceIndex:indexCopy - 1 destinationIndex:indexCopy2 value:v10];
    [(NSArrayChanges *)self addChange:v12];
    [(NSArrayChanges *)self addChange:v13];
  }
}

- (void)addChanges:(id)changes
{
  if ([changes count])
  {
    v5 = 0;
    do
    {
      -[NSArrayChanges addChange:](self, "addChange:", [changes objectAtIndexedSubscript:v5++]);
    }

    while (v5 < [changes count]);
  }
}

- (void)addObject:(id)object
{
  v5 = [(NSArrayChanges *)self count];

  [(NSArrayChanges *)self insertObject:object atIndex:v5];
}

- (void)removeLastObject
{
  v3 = [(NSArrayChanges *)self count];
  if (v3)
  {

    [(NSArrayChanges *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)sortUsingFunction:(void *)function context:(void *)context
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__NSArrayChanges_NSMutableArrayOverrides__sortUsingFunction_context___block_invoke;
  v4[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v4[4] = function;
  v4[5] = context;
  [(NSArrayChanges *)self sortWithOptions:0 usingComparator:v4];
}

- (void)sortUsingSelector:(SEL)selector
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__NSArrayChanges_NSMutableArrayOverrides__sortUsingSelector___block_invoke;
  v3[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v3[4] = selector;
  [(NSArrayChanges *)self sortWithOptions:0 usingComparator:v3];
}

@end