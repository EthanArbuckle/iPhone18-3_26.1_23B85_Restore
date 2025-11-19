@interface PKVectorTimestamp
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKVectorTimestamp)init;
- (PKVectorTimestamp)initWithArchive:(const void *)a3;
- (PKVectorTimestamp)initWithCoder:(id)a3;
- (PKVectorTimestamp)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serialize;
- (id)shortDescription;
- (id)sortedUUIDs;
- (int64_t)compareClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5;
- (unint64_t)clockForUUID:(id)a3;
- (unint64_t)compareTo:(id)a3;
- (unint64_t)subclockForUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementClockForUUID:(id)a3;
- (void)mergeWithTimestamp:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)setClock:(unint64_t)a3 forUUID:(id)a4;
- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5;
- (void)unionClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5;
@end

@implementation PKVectorTimestamp

- (PKVectorTimestamp)init
{
  v6.receiver = self;
  v6.super_class = PKVectorTimestamp;
  v2 = [(PKVectorTimestamp *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clock = v2->_clock;
    v2->_clock = v3;
  }

  return v2;
}

- (PKVectorTimestamp)initWithData:(id)a3
{
  v4 = a3;
  v5 = [[PKVectorMultiTimestamp alloc] initWithData:v4 andCapacity:1];
  v6 = [(PKVectorMultiTimestamp *)v5 timestamps];
  v7 = [v6 objectAtIndexedSubscript:0];

  return v7;
}

- (PKVectorTimestamp)initWithArchive:(const void *)a3
{
  v4 = [[PKVectorMultiTimestamp alloc] initWithArchive:a3 andCapacity:1];
  v5 = [(PKVectorMultiTimestamp *)v4 timestamps];
  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

- (void)saveToArchive:(void *)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [PKVectorMultiTimestamp alloc];
  v8[0] = self;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [(PKVectorMultiTimestamp *)v5 initWithTimestamps:v6];

  [(PKVectorMultiTimestamp *)v7 saveToArchive:a3];
}

- (id)serialize
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [PKVectorMultiTimestamp alloc];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(PKVectorMultiTimestamp *)v3 initWithTimestamps:v4];

  v6 = [(PKVectorMultiTimestamp *)v5 serialize];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKVectorTimestamp);
  [(PKVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKVectorTimestamp *)self compareTo:v4]== 0;

  return v5;
}

- (unint64_t)clockForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:a3];
  v4 = [v3 clock];

  return v4;
}

- (unint64_t)subclockForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:a3];
  v4 = [v3 subclock];

  return v4;
}

- (void)setClock:(unint64_t)a3 forUUID:(id)a4
{
  clock = self->_clock;
  v7 = a4;
  v8 = [(NSMutableDictionary *)clock objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(PKVectorTimestampElement);
  }

  v9 = v8;
  [(PKVectorTimestampElement *)v8 setClock:a3];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:v7];
}

- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(PKVectorTimestampElement);
  [(PKVectorTimestampElement *)v9 setClock:a3];
  [(PKVectorTimestampElement *)v9 setSubclock:a4];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:v8];
}

- (void)unionClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5
{
  v8 = a5;
  if ([(PKVectorTimestamp *)self compareClock:a3 subclock:a4 forUUID:?]== -1)
  {
    [(PKVectorTimestamp *)self setClock:a3 subclock:a4 forUUID:v8];
  }
}

- (int64_t)compareClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5
{
  v7 = [(PKVectorTimestamp *)self clockElementForUUID:a5];
  if ([v7 clock] > a3)
  {
    goto LABEL_2;
  }

  if ([v7 clock] < a3)
  {
    v8 = -1;
    goto LABEL_9;
  }

  if ([v7 subclock] > a4)
  {
LABEL_2:
    v8 = 1;
  }

  else if ([v7 subclock] >= a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_9:

  return v8;
}

- (void)incrementClockForUUID:(id)a3
{
  v4 = a3;
  [(PKVectorTimestamp *)self setClock:[(PKVectorTimestamp *)self clockForUUID:v4]+ 1 forUUID:v4];
}

- (id)sortedUUIDs
{
  v2 = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_PK_compare_];

  return v3;
}

- (unint64_t)compareTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(PKVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 allUUIDs];
  [v7 addObjectsFromArray:v8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {

    v25 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v29;
  obj = v9;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v28 + 1) + 8 * i);
      v17 = [(PKVectorTimestamp *)self clockElementForUUID:v16];
      v18 = [v4 clockElementForUUID:v16];
      v19 = [v17 clock];
      if (v19 >= [v18 clock])
      {
        v20 = [v17 clock];
        if (v20 > [v18 clock])
        {
          v12 = 1;
          goto LABEL_12;
        }

        v21 = [v17 subclock];
        if (v21 >= [v18 subclock])
        {
          v22 = [v17 subclock];
          v12 |= v22 > [v18 subclock];
          goto LABEL_12;
        }
      }

      v13 = 1;
LABEL_12:

      if (v13 & 1) != 0 && (v12)
      {
        v9 = obj;
        v23 = 1;
        v24 = 4;
        goto LABEL_20;
      }
    }

    v9 = obj;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v23 = v13 & 1;
  if (v12)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

LABEL_20:

  v25 = v23 | v24;
LABEL_22:

  return v25;
}

- (void)mergeWithTimestamp:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v4 allUUIDs];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(PKVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [v4 clockElementForUUID:v9];
        v12 = [v10 clock];
        v13 = v10;
        if (v12 <= [v11 clock])
        {
          v14 = [v10 clock];
          if (v14 != [v11 clock] || (v15 = objc_msgSend(v10, "subclock"), v13 = v10, v15 <= objc_msgSend(v11, "subclock")))
          {
            v13 = v11;
          }
        }

        -[PKVectorTimestamp setClock:subclock:forUUID:](self, "setClock:subclock:forUUID:", [v13 clock], objc_msgSend(v13, "subclock"), v9);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PKVectorTimestamp *)self sortedUUIDs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(PKVectorTimestamp *)self clockElementForUUID:v9];
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        v11 = [v9 PK_shortDescription];
        [v3 appendFormat:@"%@:%lu.%lu", v11, objc_msgSend(v10, "clock"), objc_msgSend(v10, "subclock")];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKVectorTimestamp *)self shortDescription];
  [v3 appendFormat:@"<%@ %p %@>", v5, self, v6];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PKVectorTimestamp *)self serialize];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"timestamp"];
  }
}

- (PKVectorTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];

  if (v5)
  {
    v6 = [(PKVectorTimestamp *)self initWithData:v5];
  }

  else
  {
    v6 = [(PKVectorTimestamp *)self init];
  }

  v7 = v6;

  return v7;
}

@end