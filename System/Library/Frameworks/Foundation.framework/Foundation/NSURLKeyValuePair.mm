@interface NSURLKeyValuePair
+ (id)pair;
+ (id)pairWithKey:(id)key value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSURLKeyValuePair)initWithKey:(id)key value:(id)value;
- (void)dealloc;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
@end

@implementation NSURLKeyValuePair

+ (id)pair
{
  v2 = [[NSURLKeyValuePair alloc] initWithKey:0 value:0];

  return v2;
}

+ (id)pairWithKey:(id)key value:(id)value
{
  v4 = [[NSURLKeyValuePair alloc] initWithKey:key value:value];

  return v4;
}

- (NSURLKeyValuePair)initWithKey:(id)key value:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSURLKeyValuePair;
  v6 = [(NSURLKeyValuePair *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NSURLKeyValuePair *)v6 setKey:key];
    [(NSURLKeyValuePair *)v7 setValue:value];
    v7->hash = [key hash];
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSURLKeyValuePair;
  [(NSURLKeyValuePair *)&v3 dealloc];
}

- (void)setKey:(id)key
{
  key = self->key;
  if (key != key)
  {

    self->key = key;
  }
}

- (void)setValue:(id)value
{
  value = self->value;
  if (value != value)
  {

    self->value = value;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      v5 = [self->key isEqual:{objc_msgSend(equal, "key")}];
      if (v5)
      {
        value = self->value;
        value = [equal value];

        LOBYTE(v5) = [value isEqual:value];
      }
    }
  }

  return v5;
}

@end