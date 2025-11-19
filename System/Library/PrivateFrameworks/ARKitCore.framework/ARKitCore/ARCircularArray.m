@interface ARCircularArray
- (ARCircularArray)initWithCapacity:(int64_t)a3;
- (NSArray)allObjects;
- (id)addObject:(id)a3;
@end

@implementation ARCircularArray

- (ARCircularArray)initWithCapacity:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = ARCircularArray;
  v4 = [(ARCircularArray *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (a3 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    v4->_capacity = v6;
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:?];
    objects = v5->_objects;
    v5->_objects = v7;
  }

  return v5;
}

- (NSArray)allObjects
{
  v2 = [(NSMutableOrderedSet *)self->_objects array];
  v3 = [v2 copy];

  return v3;
}

- (id)addObject:(id)a3
{
  v4 = a3;
  if (([(NSMutableOrderedSet *)self->_objects containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSMutableOrderedSet *)self->_objects count];
    objects = self->_objects;
    if (v6 == self->_capacity)
    {
      v5 = [(NSMutableOrderedSet *)objects firstObject];
      [(NSMutableOrderedSet *)self->_objects removeObject:v5];
      objects = self->_objects;
    }

    else
    {
      v5 = 0;
    }

    [(NSMutableOrderedSet *)objects addObject:v4];
  }

  return v5;
}

@end