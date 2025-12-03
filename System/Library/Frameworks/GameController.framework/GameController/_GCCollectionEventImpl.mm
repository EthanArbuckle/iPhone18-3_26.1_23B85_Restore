@interface _GCCollectionEventImpl
- (BOOL)hasValidValueForKey:(unint64_t)key;
- (NSString)debugDescription;
- (NSString)description;
- (_GCCollectionEventImpl)initWithCollectionEvent:(id)event;
- (_GCCollectionEventImpl)initWithTimeStamp:(unint64_t)stamp keys:(const unint64_t *)keys values:(const float *)values count:(unint64_t)count;
- (float)floatValueForKey:(unint64_t)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFloatValue:(float)value forKey:(unint64_t)key;
@end

@implementation _GCCollectionEventImpl

- (_GCCollectionEventImpl)initWithTimeStamp:(unint64_t)stamp keys:(const unint64_t *)keys values:(const float *)values count:(unint64_t)count
{
  v20.receiver = self;
  v20.super_class = _GCCollectionEventImpl;
  v10 = [(_GCCollectionEventImpl *)&v20 init];
  v10->_timestamp = stamp;
  v11 = objc_opt_new();
  values = v10->_values;
  v10->_values = v11;

  for (; count; --count)
  {
    v14 = v10->_values;
    v15 = *values++;
    LODWORD(v13) = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v17 = *keys++;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
    [(NSMutableDictionary *)v14 setObject:v16 forKey:v18];
  }

  return v10;
}

- (_GCCollectionEventImpl)initWithCollectionEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v23.receiver = self;
  v23.super_class = _GCCollectionEventImpl;
  v5 = [(_GCCollectionEventImpl *)&v23 init];
  v5->_timestamp = [eventCopy timestamp];
  v6 = objc_opt_new();
  values = v5->_values;
  v5->_values = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [eventCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = v5->_values;
        v15 = MEMORY[0x1E696AD98];
        [eventCopy floatValueForKey:{objc_msgSend(v13, "unsignedLongLongValue")}];
        v16 = [v15 numberWithFloat:?];
        [(NSMutableDictionary *)v14 setObject:v16 forKey:v13];
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v4[1] = self->_timestamp;
  v5 = [(NSMutableDictionary *)self->_values mutableCopy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [v3 appendString:@"{\n"];
  values = self->_values;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___GCCollectionEventImpl_description__block_invoke;
  v7[3] = &unk_1E841A510;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)values enumerateKeysAndObjectsUsingBlock:v7];
  [v5 appendString:@"}"];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_GCCollectionEventImpl *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (BOOL)hasValidValueForKey:(unint64_t)key
{
  values = self->_values;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)values objectForKey:v4];
  LOBYTE(values) = v5 != 0;

  return values;
}

- (float)floatValueForKey:(unint64_t)key
{
  values = self->_values;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)values objectForKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setFloatValue:(float)value forKey:(unint64_t)key
{
  values = self->_values;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)values setObject:v7 forKey:v6];
}

@end