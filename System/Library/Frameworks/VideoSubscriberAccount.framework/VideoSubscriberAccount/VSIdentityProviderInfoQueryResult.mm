@interface VSIdentityProviderInfoQueryResult
- (id)description;
@end

@implementation VSIdentityProviderInfoQueryResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identityProvider = [(VSIdentityProviderInfoQueryResult *)self identityProvider];
  designatedAppBundleIdentifier = [(VSIdentityProviderInfoQueryResult *)self designatedAppBundleIdentifier];
  v6 = [v3 stringWithFormat:@"<VSSetTopBoxInfoQueryResult: %p idenityProvider=%@ designatedAppBundleIdentifier=%@>", self, identityProvider, designatedAppBundleIdentifier];

  return v6;
}

@end