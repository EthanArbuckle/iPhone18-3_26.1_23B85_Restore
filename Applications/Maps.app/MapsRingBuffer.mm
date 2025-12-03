@interface MapsRingBuffer
- (MapsRingBuffer)initWithLength:(unint64_t)length;
- (id)_orderedObjects;
- (id)debugDescription;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)push:(id)push;
- (void)removeAllObjects;
@end

@implementation MapsRingBuffer

- (unint64_t)count
{
  array = [(MapsRingBuffer *)self array];
  v3 = [array count];

  return v3;
}

- (void)removeAllObjects
{
  v3 = sub_10001C3F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Removing all objects", v5, 2u);
  }

  array = [(MapsRingBuffer *)self array];
  [array removeAllObjects];

  [(MapsRingBuffer *)self setPosition:0];
  [(MapsRingBuffer *)self setMutation:[(MapsRingBuffer *)self mutation]+ 1];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  result = [(MapsRingBuffer *)self count:state];
  if (result)
  {
    if (state->var0)
    {
      if (state->var3[3] == 1 && state->var3[0] == state->var3[1])
      {
        return 0;
      }
    }

    else
    {
      v9 = [(MapsRingBuffer *)self count];
      if (v9 >= [(MapsRingBuffer *)self length])
      {
        position = [(MapsRingBuffer *)self position];
      }

      else
      {
        position = 0;
      }

      state->var3[0] = position;
      state->var3[1] = position;
      v11 = [(MapsRingBuffer *)self count];
      if (v11 >= [(MapsRingBuffer *)self length])
      {
        v12 = [(MapsRingBuffer *)self length];
      }

      else
      {
        v12 = [(MapsRingBuffer *)self count];
      }

      state->var3[2] = v12;
      state->var3[3] = 0;
      state->var2 = &self->_mutation;
      state->var0 = 1;
    }

    array = [(MapsRingBuffer *)self array];
    *objects = [array objectAtIndexedSubscript:state->var3[0]];

    state->var1 = objects;
    v14 = state->var3[0] + 1;
    state->var3[0] = v14;
    if (v14 == state->var3[2])
    {
      state->var3[0] = 0;
      result = 1;
      state->var3[3] = 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)_orderedObjects
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v5 = [(MapsRingBuffer *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        [v3 addObject:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [(MapsRingBuffer *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _orderedObjects = [(MapsRingBuffer *)self _orderedObjects];
  v6 = [NSString stringWithFormat:@"<%@: %p\norderedObjects:%@\nlength:%lu\ncount:%lu>", v4, self, _orderedObjects, [(MapsRingBuffer *)self length], [(MapsRingBuffer *)self count]];

  return v6;
}

- (id)lastObject
{
  if ([(MapsRingBuffer *)self count])
  {
    position = [(MapsRingBuffer *)self position];
    array = [(MapsRingBuffer *)self array];
    if (position)
    {
      position2 = [(MapsRingBuffer *)self position];
    }

    else
    {
      position2 = [(MapsRingBuffer *)self count];
    }

    v6 = [array objectAtIndexedSubscript:position2 - 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)firstObject
{
  if ([(MapsRingBuffer *)self count])
  {
    v3 = [(MapsRingBuffer *)self count];
    v4 = [(MapsRingBuffer *)self length];
    array = [(MapsRingBuffer *)self array];
    if (v3 >= v4)
    {
      position = [(MapsRingBuffer *)self position];
    }

    else
    {
      position = 0;
    }

    v7 = [array objectAtIndexedSubscript:position];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)push:(id)push
{
  pushCopy = push;
  v5 = [(MapsRingBuffer *)self length];
  v6 = sub_10001C3F0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v11 = 134218499;
      selfCopy3 = self;
      v13 = 2113;
      v14 = pushCopy;
      v15 = 2048;
      position = [(MapsRingBuffer *)self position];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%p] Pushing object %{private}@ at position %lu", &v11, 0x20u);
    }

    array = [(MapsRingBuffer *)self array];
    [array setObject:pushCopy atIndexedSubscript:{-[MapsRingBuffer position](self, "position")}];

    [(MapsRingBuffer *)self setPosition:([(MapsRingBuffer *)self position]+ 1) % [(MapsRingBuffer *)self length]];
    v9 = sub_10001C3F0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      position2 = [(MapsRingBuffer *)self position];
      v11 = 134218240;
      selfCopy3 = self;
      v13 = 2048;
      v14 = position2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%p] Updated position: %lu", &v11, 0x16u);
    }

    [(MapsRingBuffer *)self setMutation:[(MapsRingBuffer *)self mutation]+ 1];
  }

  else
  {
    if (v7)
    {
      v11 = 134218243;
      selfCopy3 = self;
      v13 = 2113;
      v14 = pushCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%p] Length is 0; ignoring push of object %{private}@", &v11, 0x16u);
    }
  }
}

- (MapsRingBuffer)initWithLength:(unint64_t)length
{
  v9.receiver = self;
  v9.super_class = MapsRingBuffer;
  v4 = [(MapsRingBuffer *)&v9 init];
  if (v4)
  {
    v5 = sub_10001C3F0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v11 = v4;
      v12 = 2048;
      lengthCopy = length;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Creating ring buffer with length: %lu", buf, 0x16u);
    }

    v4->_length = length;
    v6 = [NSMutableArray arrayWithCapacity:length];
    array = v4->_array;
    v4->_array = v6;
  }

  return v4;
}

@end