@interface ARUIRingUniformsCache
+ (id)cacheWithLimit:(unint64_t)limit;
+ (id)defaultCache;
- (ARUIRingUniformsCache)initWithLimit:(unint64_t)limit;
- (id)uniformsForRing:(id)ring renderedInContext:(id)context;
@end

@implementation ARUIRingUniformsCache

+ (id)defaultCache
{
  v2 = [[ARUIRingUniformsCache alloc] initWithLimit:10];

  return v2;
}

+ (id)cacheWithLimit:(unint64_t)limit
{
  v3 = [[ARUIRingUniformsCache alloc] initWithLimit:limit];

  return v3;
}

- (ARUIRingUniformsCache)initWithLimit:(unint64_t)limit
{
  v8.receiver = self;
  v8.super_class = ARUIRingUniformsCache;
  v4 = [(ARUIRingUniformsCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v4->_cache;
    v4->_cache = v5;

    [(NSCache *)v4->_cache setCountLimit:limit];
  }

  return v4;
}

- (id)uniformsForRing:(id)ring renderedInContext:(id)context
{
  ringCopy = ring;
  contextCopy = context;
  v8 = [ARUIRingUniformsCacheKey keyForRing:ringCopy context:contextCopy];
  v9 = [(NSCache *)self->_cache objectForKey:v8];
  if (!v9)
  {
    v9 = [[ARUIRingUniforms alloc] initWithRing:ringCopy inContext:contextCopy];
    [(NSCache *)self->_cache setObject:v9 forKey:v8];
  }

  return v9;
}

@end