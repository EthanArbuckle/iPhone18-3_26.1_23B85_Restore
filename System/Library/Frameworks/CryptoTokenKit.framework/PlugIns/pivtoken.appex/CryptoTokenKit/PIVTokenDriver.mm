@interface PIVTokenDriver
- (id)tokenDriver:(id)driver createTokenForSmartCard:(id)card AID:(id)d error:(id *)error;
@end

@implementation PIVTokenDriver

- (id)tokenDriver:(id)driver createTokenForSmartCard:(id)card AID:(id)d error:(id *)error
{
  dCopy = d;
  cardCopy = card;
  v11 = [[PIVToken alloc] initWithSmartCard:cardCopy AID:dCopy PIVDriver:self error:error];

  return v11;
}

@end