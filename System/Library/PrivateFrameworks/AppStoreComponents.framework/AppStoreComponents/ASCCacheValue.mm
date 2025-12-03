@interface ASCCacheValue
- (ASCCacheValue)initWithValue:(id)value;
@end

@implementation ASCCacheValue

- (ASCCacheValue)initWithValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = ASCCacheValue;
  v5 = [(ASCCacheValue *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASCCacheValue *)v5 setValue:valueCopy];
  }

  return v6;
}

@end