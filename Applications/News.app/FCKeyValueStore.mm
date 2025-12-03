@interface FCKeyValueStore
- (double)maxForKey:(id)key;
- (double)minForKey:(id)key;
- (id)ringBufferForKey:(id)key;
- (id)ringBufferForKey:(id)key capacity:(unint64_t)capacity;
- (void)setRingBuffers:(id)buffers;
@end

@implementation FCKeyValueStore

- (id)ringBufferForKey:(id)key capacity:(unint64_t)capacity
{
  keyCopy = key;
  objc_opt_class();
  v7 = [(FCKeyValueStore *)self objectForKeyedSubscript:keyCopy];

  v8 = FCDynamicCast();

  v9 = [[FRRingBuffer alloc] initWithCapacity:capacity dictionary:v8];

  return v9;
}

- (id)ringBufferForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(FCKeyValueStore *)self objectForKeyedSubscript:keyCopy];

  v6 = FCDynamicCast();

  v7 = [[FRRingBuffer alloc] initWithCapacity:75 dictionary:v6];

  return v7;
}

- (void)setRingBuffers:(id)buffers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C0E8;
  v3[3] = &unk_1000C5C88;
  v3[4] = self;
  [buffers enumerateKeysAndObjectsUsingBlock:v3];
}

- (double)minForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(FCKeyValueStore *)self objectForKeyedSubscript:keyCopy];

  v6 = FCDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"Min"];
  v8 = FCDynamicCast();

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 1.79769313e308;
  }

  return v10;
}

- (double)maxForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(FCKeyValueStore *)self objectForKeyedSubscript:keyCopy];

  v6 = FCDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"Max"];
  v8 = FCDynamicCast();

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = -1.79769313e308;
  }

  return v10;
}

@end