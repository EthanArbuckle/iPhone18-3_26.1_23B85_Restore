@interface VSIdentityProviderInfoQueryResult
- (id)description;
@end

@implementation VSIdentityProviderInfoQueryResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(VSIdentityProviderInfoQueryResult *)self identityProvider];
  v5 = [(VSIdentityProviderInfoQueryResult *)self designatedAppBundleIdentifier];
  v6 = [v3 stringWithFormat:@"<VSSetTopBoxInfoQueryResult: %p idenityProvider=%@ designatedAppBundleIdentifier=%@>", self, v4, v5];

  return v6;
}

@end