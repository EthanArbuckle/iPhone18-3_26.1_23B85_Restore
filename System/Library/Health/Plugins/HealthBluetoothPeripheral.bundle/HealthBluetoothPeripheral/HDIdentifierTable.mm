@interface HDIdentifierTable
- (id)objectWithIdentifier:(unint64_t)identifier;
- (unint64_t)addObject:(id)object;
@end

@implementation HDIdentifierTable

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
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
  NSMapInsert(self->_map, self->_nextIdentifier, objectCopy);
  v11 = self->_nextIdentifier;

  return v11;
}

- (id)objectWithIdentifier:(unint64_t)identifier
{
  if (identifier)
  {
    v4 = NSMapGet(self->_map, identifier);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end