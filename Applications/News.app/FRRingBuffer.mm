@interface FRRingBuffer
- (FRRingBuffer)initWithCapacity:(unint64_t)capacity;
- (FRRingBuffer)initWithCapacity:(unint64_t)capacity dictionary:(id)dictionary;
- (NSDictionary)dictionary;
- (NSMutableArray)values;
- (id)description;
- (void)insertValue:(double)value;
@end

@implementation FRRingBuffer

- (FRRingBuffer)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = FRRingBuffer;
  v4 = [(FRRingBuffer *)&v6 init];
  if (v4)
  {
    if (!capacity && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100073E94();
    }

    [(FRRingBuffer *)v4 setCapacity:capacity];
  }

  return v4;
}

- (FRRingBuffer)initWithCapacity:(unint64_t)capacity dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = [(FRRingBuffer *)self initWithCapacity:capacity];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    objc_opt_class();
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Values"];
    v10 = FCDynamicCast();

    if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100073F4C();
    }

    v11 = [v10 mutableCopy];
    [(FRRingBuffer *)v8 setValues:v11];

    objc_opt_class();
    v12 = [dictionaryCopy objectForKeyedSubscript:@"Position"];
    v13 = FCDynamicCast();

    if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100074004();
    }

    -[FRRingBuffer setPosition:](v8, "setPosition:", [v13 integerValue]);
    objc_opt_class();
    v14 = [dictionaryCopy objectForKeyedSubscript:@"Min"];
    v15 = FCDynamicCast();

    if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000740BC();
    }

    [v15 doubleValue];
    [(FRRingBuffer *)v8 setMin:?];
    objc_opt_class();
    v16 = [dictionaryCopy objectForKeyedSubscript:@"Max"];
    v17 = FCDynamicCast();

    if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100074174();
    }

    [v17 doubleValue];
    [(FRRingBuffer *)v8 setMax:?];
  }

  return v8;
}

- (NSMutableArray)values
{
  values = self->_values;
  if (!values)
  {
    v4 = objc_opt_new();
    [(FRRingBuffer *)self setValues:v4];

    if ([(FRRingBuffer *)self capacity])
    {
      v5 = 0;
      do
      {
        [(NSMutableArray *)self->_values setObject:&off_1000CB500 atIndexedSubscript:v5++];
      }

      while ([(FRRingBuffer *)self capacity]> v5);
    }

    [(FRRingBuffer *)self setMin:1.79769313e308];
    [(FRRingBuffer *)self setMax:-1.79769313e308];
    [(FRRingBuffer *)self setPosition:0];
    values = self->_values;
  }

  return values;
}

- (void)insertValue:(double)value
{
  values = [(FRRingBuffer *)self values];
  v6 = [values objectAtIndexedSubscript:{-[FRRingBuffer position](self, "position")}];
  [v6 doubleValue];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:value];
  values2 = [(FRRingBuffer *)self values];
  [values2 setObject:v9 atIndexedSubscript:{-[FRRingBuffer position](self, "position")}];

  v11 = [(FRRingBuffer *)self position]+ 1;
  capacity = [(FRRingBuffer *)self capacity];
  if (capacity <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = capacity;
  }

  [(FRRingBuffer *)self setPosition:v11 % v13];
  [(FRRingBuffer *)self min];
  if (v8 == -1.79769313e308)
  {
    goto LABEL_5;
  }

  if (v8 != v14)
  {
    [(FRRingBuffer *)self max];
    if (v8 != v16)
    {
      [(FRRingBuffer *)self min];
LABEL_5:
      if (v14 > value)
      {
        [(FRRingBuffer *)self setMin:value];
      }

      [(FRRingBuffer *)self max];
      if (v15 < value)
      {

        [(FRRingBuffer *)self setMax:value];
      }

      return;
    }
  }

  *&self->_min = xmmword_1000B6F40;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  values3 = [(FRRingBuffer *)self values];
  v18 = [values3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(values3);
        }

        [*(*(&v25 + 1) + 8 * i) doubleValue];
        v23 = fmin(self->_min, v22);
        v24 = fmax(self->_max, v22);
        self->_min = v23;
        self->_max = v24;
      }

      v19 = [values3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }
}

- (NSDictionary)dictionary
{
  v9[0] = @"Values";
  values = [(FRRingBuffer *)self values];
  v10[0] = values;
  v9[1] = @"Position";
  v4 = [NSNumber numberWithUnsignedInteger:[(FRRingBuffer *)self position]];
  v10[1] = v4;
  v9[2] = @"Min";
  [(FRRingBuffer *)self min];
  v5 = [NSNumber numberWithDouble:?];
  v10[2] = v5;
  v9[3] = @"Max";
  [(FRRingBuffer *)self max];
  v6 = [NSNumber numberWithDouble:?];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)description
{
  values = [(FRRingBuffer *)self values];
  v4 = [NSNumber numberWithUnsignedInteger:[(FRRingBuffer *)self position]];
  [(FRRingBuffer *)self min];
  v5 = [NSNumber numberWithDouble:?];
  [(FRRingBuffer *)self max];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [NSString stringWithFormat:@"Ring Buffer with Values : %@\nPosition : %@\nMin : %@\nMax : %@\n", values, v4, v5, v6];

  return v7;
}

@end