@interface ARUISpriteUniformsCacheKey
+ (id)keyForSprite:(id)sprite context:(id)context;
- (ARUISpriteUniformsCacheKey)initWithSprite:(id)sprite context:(id)context;
- (BOOL)isEqual:(id)equal;
@end

@implementation ARUISpriteUniformsCacheKey

+ (id)keyForSprite:(id)sprite context:(id)context
{
  contextCopy = context;
  spriteCopy = sprite;
  v7 = [[ARUISpriteUniformsCacheKey alloc] initWithSprite:spriteCopy context:contextCopy];

  return v7;
}

- (ARUISpriteUniformsCacheKey)initWithSprite:(id)sprite context:(id)context
{
  spriteCopy = sprite;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = ARUISpriteUniformsCacheKey;
  v8 = [(ARUISpriteUniformsCacheKey *)&v11 init];
  if (v8)
  {
    v9 = +[ARUIHashBuilder builder];
    [v9 appendObject:spriteCopy];
    [v9 appendObject:contextCopy];
    v8->_hashValue = [v9 hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    hashValue = [(ARUISpriteUniformsCacheKey *)self hashValue];
    hashValue2 = [v5 hashValue];

    v8 = hashValue == hashValue2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end