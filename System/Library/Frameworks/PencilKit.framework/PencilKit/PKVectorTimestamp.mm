@interface PKVectorTimestamp
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKVectorTimestamp)init;
- (PKVectorTimestamp)initWithArchive:(const void *)archive;
- (PKVectorTimestamp)initWithCoder:(id)coder;
- (PKVectorTimestamp)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serialize;
- (id)shortDescription;
- (id)sortedUUIDs;
- (int64_t)compareClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)compareTo:(id)to;
- (unint64_t)subclockForUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)incrementClockForUUID:(id)d;
- (void)mergeWithTimestamp:(id)timestamp;
- (void)saveToArchive:(void *)archive;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
- (void)unionClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
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

- (PKVectorTimestamp)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[PKVectorMultiTimestamp alloc] initWithData:dataCopy andCapacity:1];
  timestamps = [(PKVectorMultiTimestamp *)v5 timestamps];
  v7 = [timestamps objectAtIndexedSubscript:0];

  return v7;
}

- (PKVectorTimestamp)initWithArchive:(const void *)archive
{
  v4 = [[PKVectorMultiTimestamp alloc] initWithArchive:archive andCapacity:1];
  timestamps = [(PKVectorMultiTimestamp *)v4 timestamps];
  v6 = [timestamps objectAtIndexedSubscript:0];

  return v6;
}

- (void)saveToArchive:(void *)archive
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [PKVectorMultiTimestamp alloc];
  v8[0] = self;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [(PKVectorMultiTimestamp *)v5 initWithTimestamps:v6];

  [(PKVectorMultiTimestamp *)v7 saveToArchive:archive];
}

- (id)serialize
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [PKVectorMultiTimestamp alloc];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(PKVectorMultiTimestamp *)v3 initWithTimestamps:v4];

  serialize = [(PKVectorMultiTimestamp *)v5 serialize];

  return serialize;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKVectorTimestamp);
  [(PKVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKVectorTimestamp *)self compareTo:equalCopy]== 0;

  return v5;
}

- (unint64_t)clockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  clock = [v3 clock];

  return clock;
}

- (unint64_t)subclockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  subclock = [v3 subclock];

  return subclock;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d
{
  clock = self->_clock;
  dCopy = d;
  v8 = [(NSMutableDictionary *)clock objectForKeyedSubscript:dCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(PKVectorTimestampElement);
  }

  v9 = v8;
  [(PKVectorTimestampElement *)v8 setClock:clock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  v9 = objc_alloc_init(PKVectorTimestampElement);
  [(PKVectorTimestampElement *)v9 setClock:clock];
  [(PKVectorTimestampElement *)v9 setSubclock:subclock];
  [(NSMutableDictionary *)self->_clock setObject:v9 forKey:dCopy];
}

- (void)unionClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  if ([(PKVectorTimestamp *)self compareClock:clock subclock:subclock forUUID:?]== -1)
  {
    [(PKVectorTimestamp *)self setClock:clock subclock:subclock forUUID:dCopy];
  }
}

- (int64_t)compareClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  v7 = [(PKVectorTimestamp *)self clockElementForUUID:d];
  if ([v7 clock] > clock)
  {
    goto LABEL_2;
  }

  if ([v7 clock] < clock)
  {
    v8 = -1;
    goto LABEL_9;
  }

  if ([v7 subclock] > subclock)
  {
LABEL_2:
    v8 = 1;
  }

  else if ([v7 subclock] >= subclock)
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

- (void)incrementClockForUUID:(id)d
{
  dCopy = d;
  [(PKVectorTimestamp *)self setClock:[(PKVectorTimestamp *)self clockForUUID:dCopy]+ 1 forUUID:dCopy];
}

- (id)sortedUUIDs
{
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_PK_compare_];

  return v3;
}

- (unint64_t)compareTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = MEMORY[0x1E695DFA8];
  allUUIDs = [(PKVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:allUUIDs];

  allUUIDs2 = [toCopy allUUIDs];
  [v7 addObjectsFromArray:allUUIDs2];

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
      v18 = [toCopy clockElementForUUID:v16];
      clock = [v17 clock];
      if (clock >= [v18 clock])
      {
        clock2 = [v17 clock];
        if (clock2 > [v18 clock])
        {
          v12 = 1;
          goto LABEL_12;
        }

        subclock = [v17 subclock];
        if (subclock >= [v18 subclock])
        {
          subclock2 = [v17 subclock];
          v12 |= subclock2 > [v18 subclock];
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

- (void)mergeWithTimestamp:(id)timestamp
{
  v22 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [timestampCopy allUUIDs];
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
        v11 = [timestampCopy clockElementForUUID:v9];
        clock = [v10 clock];
        v13 = v10;
        if (clock <= [v11 clock])
        {
          clock2 = [v10 clock];
          if (clock2 != [v11 clock] || (v15 = objc_msgSend(v10, "subclock"), v13 = v10, v15 <= objc_msgSend(v11, "subclock")))
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
  sortedUUIDs = [(PKVectorTimestamp *)self sortedUUIDs];
  v5 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(sortedUUIDs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(PKVectorTimestamp *)self clockElementForUUID:v9];
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        pK_shortDescription = [v9 PK_shortDescription];
        [v3 appendFormat:@"%@:%lu.%lu", pK_shortDescription, objc_msgSend(v10, "clock"), objc_msgSend(v10, "subclock")];
      }

      v6 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  shortDescription = [(PKVectorTimestamp *)self shortDescription];
  [v3 appendFormat:@"<%@ %p %@>", v5, self, shortDescription];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(PKVectorTimestamp *)self serialize];
  if (serialize)
  {
    [coderCopy encodeObject:serialize forKey:@"timestamp"];
  }
}

- (PKVectorTimestamp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];

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