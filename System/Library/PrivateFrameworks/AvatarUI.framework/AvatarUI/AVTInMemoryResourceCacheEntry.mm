@interface AVTInMemoryResourceCacheEntry
- (AVTInMemoryResourceCacheEntry)initWithResource:(id)resource changeToken:(id)token key:(id)key cost:(unint64_t)cost;
- (id)description;
- (void)dealloc;
@end

@implementation AVTInMemoryResourceCacheEntry

- (AVTInMemoryResourceCacheEntry)initWithResource:(id)resource changeToken:(id)token key:(id)key cost:(unint64_t)cost
{
  resourceCopy = resource;
  tokenCopy = token;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = AVTInMemoryResourceCacheEntry;
  v14 = [(AVTInMemoryResourceCacheEntry *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resource, resource);
    objc_storeStrong(&v15->_changeToken, token);
    v16 = [keyCopy copy];
    key = v15->_key;
    v15->_key = v16;

    v15->_cost = cost;
  }

  return v15;
}

- (void)dealloc
{
  [(AVTCacheableResourceChangeToken *)self->_changeToken stopObservingChanges];
  v3.receiver = self;
  v3.super_class = AVTInMemoryResourceCacheEntry;
  [(AVTInMemoryResourceCacheEntry *)&v3 dealloc];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AVTInMemoryResourceCacheEntry;
  v3 = [(AVTInMemoryResourceCacheEntry *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" key: "];
  v5 = [(AVTInMemoryResourceCacheEntry *)self key];
  [v4 appendString:v5];

  v6 = [v4 copy];

  return v6;
}

@end