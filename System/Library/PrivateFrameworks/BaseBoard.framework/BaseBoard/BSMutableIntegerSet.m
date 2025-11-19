@interface BSMutableIntegerSet
- (BOOL)addValue:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)minusSet:(id)a3;
- (void)removeValue:(int64_t)a3;
- (void)unionSet:(id)a3;
@end

@implementation BSMutableIntegerSet

- (BOOL)addValue:(int64_t)a3
{
  if (a3)
  {
    return NSHashInsertIfAbsent(self->super._hashTable, a3) == 0;
  }

  if (self->super._hasZeroValue)
  {
    return 0;
  }

  result = 1;
  self->super._hasZeroValue = 1;
  return result;
}

- (void)removeValue:(int64_t)a3
{
  if (a3)
  {
    NSHashRemove(self->super._hashTable, a3);
  }

  else
  {
    self->super._hasZeroValue = 0;
  }
}

- (void)unionSet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [(NSHashTable *)self->super._hashTable unionHashTable:v4[1]];
    v4 = v5;
    if (*(v5 + 16) == 1)
    {
      self->super._hasZeroValue = 1;
    }
  }
}

- (void)minusSet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [(NSHashTable *)self->super._hashTable minusHashTable:v4[1]];
    v4 = v5;
    if (*(v5 + 16) == 1)
    {
      self->super._hasZeroValue = 0;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [BSIntegerSet allocWithZone:?];
  v6 = [(NSHashTable *)self->super._hashTable copyWithZone:a3];
  v7 = [(BSIntegerSet *)v5 _initWithHashTable:v6 hasZeroValue:self->super._hasZeroValue];

  return v7;
}

@end