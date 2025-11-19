@interface USKToken_helper
+ (id)tokenWithString:(id)a3;
@end

@implementation USKToken_helper

+ (id)tokenWithString:(id)a3
{
  v3 = [[USKToken_weak alloc] initWithString:a3];

  return v3;
}

@end