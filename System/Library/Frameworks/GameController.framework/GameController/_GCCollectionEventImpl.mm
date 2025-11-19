@interface _GCCollectionEventImpl
- (BOOL)hasValidValueForKey:(unint64_t)a3;
- (NSString)debugDescription;
- (NSString)description;
- (_GCCollectionEventImpl)initWithCollectionEvent:(id)a3;
- (_GCCollectionEventImpl)initWithTimeStamp:(unint64_t)a3 keys:(const unint64_t *)a4 values:(const float *)a5 count:(unint64_t)a6;
- (float)floatValueForKey:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFloatValue:(float)a3 forKey:(unint64_t)a4;
@end

@implementation _GCCollectionEventImpl

- (_GCCollectionEventImpl)initWithTimeStamp:(unint64_t)a3 keys:(const unint64_t *)a4 values:(const float *)a5 count:(unint64_t)a6
{
  v20.receiver = self;
  v20.super_class = _GCCollectionEventImpl;
  v10 = [(_GCCollectionEventImpl *)&v20 init];
  v10->_timestamp = a3;
  v11 = objc_opt_new();
  values = v10->_values;
  v10->_values = v11;

  for (; a6; --a6)
  {
    v14 = v10->_values;
    v15 = *a5++;
    LODWORD(v13) = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v17 = *a4++;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
    [(NSMutableDictionary *)v14 setObject:v16 forKey:v18];
  }

  return v10;
}

- (_GCCollectionEventImpl)initWithCollectionEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _GCCollectionEventImpl;
  v5 = [(_GCCollectionEventImpl *)&v23 init];
  v5->_timestamp = [v4 timestamp];
  v6 = objc_opt_new();
  values = v5->_values;
  v5->_values = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v4 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = v5->_values;
        v15 = MEMORY[0x1E696AD98];
        [v4 floatValueForKey:{objc_msgSend(v13, "unsignedLongLongValue")}];
        v16 = [v15 numberWithFloat:?];
        [(NSMutableDictionary *)v14 setObject:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)hasValidValueForKey:(unint64_t)a3
{
  values = self->_values;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)values objectForKey:v4];
  LOBYTE(values) = v5 != 0;

  return values;
}

- (float)floatValueForKey:(unint64_t)a3
{
  values = self->_values;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)values objectForKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setFloatValue:(float)a3 forKey:(unint64_t)a4
{
  values = self->_values;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)values setObject:v7 forKey:v6];
}

@end