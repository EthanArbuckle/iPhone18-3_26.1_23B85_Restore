@interface ARUIRingUniformsCacheKey
+ (id)keyForRing:(id)ring context:(id)context;
- (ARUIRingUniformsCacheKey)initWithRing:(id)ring context:(id)context;
- (BOOL)isEqual:(id)equal;
@end

@implementation ARUIRingUniformsCacheKey

+ (id)keyForRing:(id)ring context:(id)context
{
  contextCopy = context;
  ringCopy = ring;
  v7 = [[ARUIRingUniformsCacheKey alloc] initWithRing:ringCopy context:contextCopy];

  return v7;
}

- (ARUIRingUniformsCacheKey)initWithRing:(id)ring context:(id)context
{
  ringCopy = ring;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = ARUIRingUniformsCacheKey;
  v8 = [(ARUIRingUniformsCacheKey *)&v11 init];
  if (v8)
  {
    v9 = +[ARUIHashBuilder builder];
    [v9 appendObject:ringCopy];
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
    hashValue = [(ARUIRingUniformsCacheKey *)self hashValue];
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