@interface AVTInMemoryResourceCacheEntry
- (AVTInMemoryResourceCacheEntry)initWithResource:(id)a3 changeToken:(id)a4 key:(id)a5 cost:(unint64_t)a6;
- (id)description;
- (void)dealloc;
@end

@implementation AVTInMemoryResourceCacheEntry

- (AVTInMemoryResourceCacheEntry)initWithResource:(id)a3 changeToken:(id)a4 key:(id)a5 cost:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = AVTInMemoryResourceCacheEntry;
  v14 = [(AVTInMemoryResourceCacheEntry *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resource, a3);
    objc_storeStrong(&v15->_changeToken, a4);
    v16 = [v13 copy];
    key = v15->_key;
    v15->_key = v16;

    v15->_cost = a6;
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