@interface ARCircularArray
- (ARCircularArray)initWithCapacity:(int64_t)capacity;
- (NSArray)allObjects;
- (id)addObject:(id)object;
@end

@implementation ARCircularArray

- (ARCircularArray)initWithCapacity:(int64_t)capacity
{
  v10.receiver = self;
  v10.super_class = ARCircularArray;
  v4 = [(ARCircularArray *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (capacity <= 1)
    {
      capacityCopy = 1;
    }

    else
    {
      capacityCopy = capacity;
    }

    v4->_capacity = capacityCopy;
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:?];
    objects = v5->_objects;
    v5->_objects = v7;
  }

  return v5;
}

- (NSArray)allObjects
{
  array = [(NSMutableOrderedSet *)self->_objects array];
  v3 = [array copy];

  return v3;
}

- (id)addObject:(id)object
{
  objectCopy = object;
  if (([(NSMutableOrderedSet *)self->_objects containsObject:objectCopy]& 1) != 0)
  {
    firstObject = 0;
  }

  else
  {
    v6 = [(NSMutableOrderedSet *)self->_objects count];
    objects = self->_objects;
    if (v6 == self->_capacity)
    {
      firstObject = [(NSMutableOrderedSet *)objects firstObject];
      [(NSMutableOrderedSet *)self->_objects removeObject:firstObject];
      objects = self->_objects;
    }

    else
    {
      firstObject = 0;
    }

    [(NSMutableOrderedSet *)objects addObject:objectCopy];
  }

  return firstObject;
}

@end