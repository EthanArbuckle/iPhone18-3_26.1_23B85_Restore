@interface BSMutableIntegerSet
- (BOOL)addValue:(int64_t)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)minusSet:(id)set;
- (void)removeValue:(int64_t)value;
- (void)unionSet:(id)set;
@end

@implementation BSMutableIntegerSet

- (BOOL)addValue:(int64_t)value
{
  if (value)
  {
    return NSHashInsertIfAbsent(self->super._hashTable, value) == 0;
  }

  if (self->super._hasZeroValue)
  {
    return 0;
  }

  result = 1;
  self->super._hasZeroValue = 1;
  return result;
}

- (void)removeValue:(int64_t)value
{
  if (value)
  {
    NSHashRemove(self->super._hashTable, value);
  }

  else
  {
    self->super._hasZeroValue = 0;
  }
}

- (void)unionSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    v5 = setCopy;
    [(NSHashTable *)self->super._hashTable unionHashTable:setCopy[1]];
    setCopy = v5;
    if (*(v5 + 16) == 1)
    {
      self->super._hasZeroValue = 1;
    }
  }
}

- (void)minusSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    v5 = setCopy;
    [(NSHashTable *)self->super._hashTable minusHashTable:setCopy[1]];
    setCopy = v5;
    if (*(v5 + 16) == 1)
    {
      self->super._hasZeroValue = 0;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [BSIntegerSet allocWithZone:?];
  v6 = [(NSHashTable *)self->super._hashTable copyWithZone:zone];
  v7 = [(BSIntegerSet *)v5 _initWithHashTable:v6 hasZeroValue:self->super._hasZeroValue];

  return v7;
}

@end