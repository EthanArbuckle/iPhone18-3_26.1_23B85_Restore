@interface ACAccount
- (NSData)safari_accountHash;
- (NSData)safari_deprecatedUsernameAccountHash;
@end

@implementation ACAccount

- (NSData)safari_deprecatedUsernameAccountHash
{
  v2 = [(ACAccount *)self username];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 safari_SHA1Hash];

  return v4;
}

- (NSData)safari_accountHash
{
  v2 = [(ACAccount *)self aa_altDSID];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 safari_SHA1Hash];

  return v4;
}

@end