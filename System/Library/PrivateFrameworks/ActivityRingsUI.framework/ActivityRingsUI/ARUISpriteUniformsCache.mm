@interface ARUISpriteUniformsCache
+ (id)cacheWithLimit:(unint64_t)limit;
+ (id)defaultCache;
- (ARUISpriteUniformsCache)initWithLimit:(unint64_t)limit;
- (id)uniformsForSprite:(id)sprite renderedInContext:(id)context;
@end

@implementation ARUISpriteUniformsCache

+ (id)defaultCache
{
  v2 = [[ARUISpriteUniformsCache alloc] initWithLimit:3];

  return v2;
}

+ (id)cacheWithLimit:(unint64_t)limit
{
  v3 = [[ARUISpriteUniformsCache alloc] initWithLimit:limit];

  return v3;
}

- (ARUISpriteUniformsCache)initWithLimit:(unint64_t)limit
{
  v8.receiver = self;
  v8.super_class = ARUISpriteUniformsCache;
  v4 = [(ARUISpriteUniformsCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v4->_cache;
    v4->_cache = v5;

    [(NSCache *)v4->_cache setCountLimit:limit];
  }

  return v4;
}

- (id)uniformsForSprite:(id)sprite renderedInContext:(id)context
{
  spriteCopy = sprite;
  contextCopy = context;
  v8 = [ARUISpriteUniformsCacheKey keyForSprite:spriteCopy context:contextCopy];
  v9 = [(NSCache *)self->_cache objectForKey:v8];
  if (!v9)
  {
    v9 = [[ARUISpriteUniforms alloc] initWithSprite:spriteCopy inContext:contextCopy];
    [(NSCache *)self->_cache setObject:v9 forKey:v8];
  }

  return v9;
}

@end