@interface USKToken_helper
+ (id)tokenWithString:(id)string;
@end

@implementation USKToken_helper

+ (id)tokenWithString:(id)string
{
  v3 = [[USKToken_weak alloc] initWithString:string];

  return v3;
}

@end