@interface FPUserInfoPair
- (FPUserInfoPair)initWithA:(id)a b:(id)b;
@end

@implementation FPUserInfoPair

- (FPUserInfoPair)initWithA:(id)a b:(id)b
{
  bCopy = b;
  [(FPUserInfoPair *)self setA:a];
  [(FPUserInfoPair *)self setB:bCopy];

  return self;
}

@end