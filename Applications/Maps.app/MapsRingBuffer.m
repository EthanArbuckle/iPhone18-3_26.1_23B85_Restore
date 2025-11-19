@interface MapsRingBuffer
- (MapsRingBuffer)initWithLength:(unint64_t)a3;
- (id)_orderedObjects;
- (id)debugDescription;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)push:(id)a3;
- (void)removeAllObjects;
@end

@implementation MapsRingBuffer

- (unint64_t)count
{
  v2 = [(MapsRingBuffer *)self array];
  v3 = [v2 count];

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

  v4 = [(MapsRingBuffer *)self array];
  [v4 removeAllObjects];

  [(MapsRingBuffer *)self setPosition:0];
  [(MapsRingBuffer *)self setMutation:[(MapsRingBuffer *)self mutation]+ 1];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  result = [(MapsRingBuffer *)self count:a3];
  if (result)
  {
    if (a3->var0)
    {
      if (a3->var3[3] == 1 && a3->var3[0] == a3->var3[1])
      {
        return 0;
      }
    }

    else
    {
      v9 = [(MapsRingBuffer *)self count];
      if (v9 >= [(MapsRingBuffer *)self length])
      {
        v10 = [(MapsRingBuffer *)self position];
      }

      else
      {
        v10 = 0;
      }

      a3->var3[0] = v10;
      a3->var3[1] = v10;
      v11 = [(MapsRingBuffer *)self count];
      if (v11 >= [(MapsRingBuffer *)self length])
      {
        v12 = [(MapsRingBuffer *)self length];
      }

      else
      {
        v12 = [(MapsRingBuffer *)self count];
      }

      a3->var3[2] = v12;
      a3->var3[3] = 0;
      a3->var2 = &self->_mutation;
      a3->var0 = 1;
    }

    v13 = [(MapsRingBuffer *)self array];
    *a4 = [v13 objectAtIndexedSubscript:a3->var3[0]];

    a3->var1 = a4;
    v14 = a3->var3[0] + 1;
    a3->var3[0] = v14;
    if (v14 == a3->var3[2])
    {
      a3->var3[0] = 0;
      result = 1;
      a3->var3[3] = 1;
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
  v4 = self;
  v5 = [(MapsRingBuffer *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [(MapsRingBuffer *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MapsRingBuffer *)self _orderedObjects];
  v6 = [NSString stringWithFormat:@"<%@: %p\norderedObjects:%@\nlength:%lu\ncount:%lu>", v4, self, v5, [(MapsRingBuffer *)self length], [(MapsRingBuffer *)self count]];

  return v6;
}

- (id)lastObject
{
  if ([(MapsRingBuffer *)self count])
  {
    v3 = [(MapsRingBuffer *)self position];
    v4 = [(MapsRingBuffer *)self array];
    if (v3)
    {
      v5 = [(MapsRingBuffer *)self position];
    }

    else
    {
      v5 = [(MapsRingBuffer *)self count];
    }

    v6 = [v4 objectAtIndexedSubscript:v5 - 1];
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
    v5 = [(MapsRingBuffer *)self array];
    if (v3 >= v4)
    {
      v6 = [(MapsRingBuffer *)self position];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)push:(id)a3
{
  v4 = a3;
  v5 = [(MapsRingBuffer *)self length];
  v6 = sub_10001C3F0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v11 = 134218499;
      v12 = self;
      v13 = 2113;
      v14 = v4;
      v15 = 2048;
      v16 = [(MapsRingBuffer *)self position];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%p] Pushing object %{private}@ at position %lu", &v11, 0x20u);
    }

    v8 = [(MapsRingBuffer *)self array];
    [v8 setObject:v4 atIndexedSubscript:{-[MapsRingBuffer position](self, "position")}];

    [(MapsRingBuffer *)self setPosition:([(MapsRingBuffer *)self position]+ 1) % [(MapsRingBuffer *)self length]];
    v9 = sub_10001C3F0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(MapsRingBuffer *)self position];
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%p] Updated position: %lu", &v11, 0x16u);
    }

    [(MapsRingBuffer *)self setMutation:[(MapsRingBuffer *)self mutation]+ 1];
  }

  else
  {
    if (v7)
    {
      v11 = 134218243;
      v12 = self;
      v13 = 2113;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%p] Length is 0; ignoring push of object %{private}@", &v11, 0x16u);
    }
  }
}

- (MapsRingBuffer)initWithLength:(unint64_t)a3
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
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Creating ring buffer with length: %lu", buf, 0x16u);
    }

    v4->_length = a3;
    v6 = [NSMutableArray arrayWithCapacity:a3];
    array = v4->_array;
    v4->_array = v6;
  }

  return v4;
}

@end