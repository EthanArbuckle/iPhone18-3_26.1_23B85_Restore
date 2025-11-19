@interface ASCCacheValue
- (ASCCacheValue)initWithValue:(id)a3;
@end

@implementation ASCCacheValue

- (ASCCacheValue)initWithValue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASCCacheValue;
  v5 = [(ASCCacheValue *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASCCacheValue *)v5 setValue:v4];
  }

  return v6;
}

@end