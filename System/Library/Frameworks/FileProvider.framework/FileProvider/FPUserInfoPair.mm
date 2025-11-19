@interface FPUserInfoPair
- (FPUserInfoPair)initWithA:(id)a3 b:(id)a4;
@end

@implementation FPUserInfoPair

- (FPUserInfoPair)initWithA:(id)a3 b:(id)a4
{
  v6 = a4;
  [(FPUserInfoPair *)self setA:a3];
  [(FPUserInfoPair *)self setB:v6];

  return self;
}

@end