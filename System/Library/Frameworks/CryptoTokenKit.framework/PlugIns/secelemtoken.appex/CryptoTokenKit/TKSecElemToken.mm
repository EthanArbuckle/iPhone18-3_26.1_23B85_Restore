@interface TKSecElemToken
- (TKSecElemToken)initWithTokenDriver:(id)driver instanceID:(id)d error:(id *)error;
- (id)token:(id)token createSessionWithError:(id *)error;
@end

@implementation TKSecElemToken

- (TKSecElemToken)initWithTokenDriver:(id)driver instanceID:(id)d error:(id *)error
{
  v6.receiver = self;
  v6.super_class = TKSecElemToken;
  return [(TKSecElemToken *)&v6 initWithTokenDriver:driver instanceID:d, error];
}

- (id)token:(id)token createSessionWithError:(id *)error
{
  v4 = [[TKSecElemTokenSession alloc] initWithToken:self];

  return v4;
}

@end