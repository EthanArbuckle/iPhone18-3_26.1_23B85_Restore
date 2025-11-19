@interface ARUISpriteUniformsCache
+ (id)cacheWithLimit:(unint64_t)a3;
+ (id)defaultCache;
- (ARUISpriteUniformsCache)initWithLimit:(unint64_t)a3;
- (id)uniformsForSprite:(id)a3 renderedInContext:(id)a4;
@end

@implementation ARUISpriteUniformsCache

+ (id)defaultCache
{
  v2 = [[ARUISpriteUniformsCache alloc] initWithLimit:3];

  return v2;
}

+ (id)cacheWithLimit:(unint64_t)a3
{
  v3 = [[ARUISpriteUniformsCache alloc] initWithLimit:a3];

  return v3;
}

- (ARUISpriteUniformsCache)initWithLimit:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ARUISpriteUniformsCache;
  v4 = [(ARUISpriteUniformsCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v4->_cache;
    v4->_cache = v5;

    [(NSCache *)v4->_cache setCountLimit:a3];
  }

  return v4;
}

- (id)uniformsForSprite:(id)a3 renderedInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ARUISpriteUniformsCacheKey keyForSprite:v6 context:v7];
  v9 = [(NSCache *)self->_cache objectForKey:v8];
  if (!v9)
  {
    v9 = [[ARUISpriteUniforms alloc] initWithSprite:v6 inContext:v7];
    [(NSCache *)self->_cache setObject:v9 forKey:v8];
  }

  return v9;
}

@end