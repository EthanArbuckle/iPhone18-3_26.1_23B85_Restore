@interface NSConcreteMapTableValueEnumerator
+ (id)enumeratorWithMapTable:(id)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation NSConcreteMapTableValueEnumerator

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteMapTableValueEnumerator;
  [(NSConcreteMapTableValueEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  counter = self->counter;
  mapTable = self->mapTable;
  if (counter >= mapTable->capacity)
  {
    return 0;
  }

  while (1)
  {
    v5 = (*(mapTable->keys.internalProps + 3))(&mapTable->keys.items[counter], 0);
    v6 = (*(self->mapTable->values.internalProps + 3))(&self->mapTable->values.items[self->counter], 0);
    v7 = v6;
    ++self->counter;
    v8 = *(self->mapTable->keys.internalProps + 4);
    if (v5 && v6 != 0)
    {
      break;
    }

    v8(v5);
    (*(self->mapTable->values.internalProps + 4))(v7);
    counter = self->counter;
    mapTable = self->mapTable;
    if (counter >= mapTable->capacity)
    {
      return 0;
    }
  }

  v8(v5);
  (*(self->mapTable->values.internalProps + 5))(v7);
  return v7;
}

+ (id)enumeratorWithMapTable:(id)a3
{
  v4 = [NSConcreteMapTableValueEnumerator alloc];
  v4->mapTable = a3;
  v4->counter = 0;

  return v4;
}

@end