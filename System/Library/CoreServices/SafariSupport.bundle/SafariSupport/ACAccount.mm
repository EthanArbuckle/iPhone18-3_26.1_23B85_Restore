@interface ACAccount
- (NSData)safari_accountHash;
- (NSData)safari_deprecatedUsernameAccountHash;
@end

@implementation ACAccount

- (NSData)safari_deprecatedUsernameAccountHash
{
  username = [(ACAccount *)self username];
  v3 = [username dataUsingEncoding:4];
  safari_SHA1Hash = [v3 safari_SHA1Hash];

  return safari_SHA1Hash;
}

- (NSData)safari_accountHash
{
  aa_altDSID = [(ACAccount *)self aa_altDSID];
  v3 = [aa_altDSID dataUsingEncoding:4];
  safari_SHA1Hash = [v3 safari_SHA1Hash];

  return safari_SHA1Hash;
}

@end