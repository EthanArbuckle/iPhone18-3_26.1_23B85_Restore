@interface ARUISpriteUniformsCacheKey
+ (id)keyForSprite:(id)a3 context:(id)a4;
- (ARUISpriteUniformsCacheKey)initWithSprite:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation ARUISpriteUniformsCacheKey

+ (id)keyForSprite:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ARUISpriteUniformsCacheKey alloc] initWithSprite:v6 context:v5];

  return v7;
}

- (ARUISpriteUniformsCacheKey)initWithSprite:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ARUISpriteUniformsCacheKey;
  v8 = [(ARUISpriteUniformsCacheKey *)&v11 init];
  if (v8)
  {
    v9 = +[ARUIHashBuilder builder];
    [v9 appendObject:v6];
    [v9 appendObject:v7];
    v8->_hashValue = [v9 hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ARUISpriteUniformsCacheKey *)self hashValue];
    v7 = [v5 hashValue];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end