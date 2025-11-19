@interface PIVTokenDriver
- (id)tokenDriver:(id)a3 createTokenForSmartCard:(id)a4 AID:(id)a5 error:(id *)a6;
@end

@implementation PIVTokenDriver

- (id)tokenDriver:(id)a3 createTokenForSmartCard:(id)a4 AID:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = [[PIVToken alloc] initWithSmartCard:v10 AID:v9 PIVDriver:self error:a6];

  return v11;
}

@end