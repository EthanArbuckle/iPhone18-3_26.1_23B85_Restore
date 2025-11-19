@interface HDIdentifierTable
- (id)objectWithIdentifier:(unint64_t)a3;
- (unint64_t)addObject:(id)a3;
@end

@implementation HDIdentifierTable

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [NSException raise:NSInvalidArgumentException format:@"object cannot be nil"];
  }

  if (!self->_map)
  {
    v5 = *&NSIntegerMapKeyCallBacks.retain;
    *&keyCallBacks.hash = *&NSIntegerMapKeyCallBacks.hash;
    *&keyCallBacks.retain = v5;
    *&keyCallBacks.describe = *&NSIntegerMapKeyCallBacks.describe;
    v13 = NSObjectMapValueCallBacks;
    v6 = NSCreateMapTable(&keyCallBacks, &v13, 0);
    map = self->_map;
    self->_map = v6;
  }

  do
  {
    v8 = self->_map;
    nextIdentifier = self->_nextIdentifier;
    if (nextIdentifier + 1 > 1)
    {
      v10 = (nextIdentifier + 1);
    }

    else
    {
      v10 = &dword_0 + 1;
    }

    self->_nextIdentifier = v10;
  }

  while (NSMapGet(v8, v10));
  NSMapInsert(self->_map, self->_nextIdentifier, v4);
  v11 = self->_nextIdentifier;

  return v11;
}

- (id)objectWithIdentifier:(unint64_t)a3
{
  if (a3)
  {
    v4 = NSMapGet(self->_map, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end