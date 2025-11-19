@interface ARUIRingUniformsCache
+ (id)cacheWithLimit:(unint64_t)a3;
+ (id)defaultCache;
- (ARUIRingUniformsCache)initWithLimit:(unint64_t)a3;
- (id)uniformsForRing:(id)a3 renderedInContext:(id)a4;
@end

@implementation ARUIRingUniformsCache

+ (id)defaultCache
{
  v2 = [[ARUIRingUniformsCache alloc] initWithLimit:10];

  return v2;
}

+ (id)cacheWithLimit:(unint64_t)a3
{
  v3 = [[ARUIRingUniformsCache alloc] initWithLimit:a3];

  return v3;
}

- (ARUIRingUniformsCache)initWithLimit:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ARUIRingUniformsCache;
  v4 = [(ARUIRingUniformsCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v4->_cache;
    v4->_cache = v5;

    [(NSCache *)v4->_cache setCountLimit:a3];
  }

  return v4;
}

- (id)uniformsForRing:(id)a3 renderedInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ARUIRingUniformsCacheKey keyForRing:v6 context:v7];
  v9 = [(NSCache *)self->_cache objectForKey:v8];
  if (!v9)
  {
    v9 = [[ARUIRingUniforms alloc] initWithRing:v6 inContext:v7];
    [(NSCache *)self->_cache setObject:v9 forKey:v8];
  }

  return v9;
}

@end