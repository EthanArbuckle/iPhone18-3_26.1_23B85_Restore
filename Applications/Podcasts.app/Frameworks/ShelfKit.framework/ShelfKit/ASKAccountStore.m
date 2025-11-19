@interface ASKAccountStore
+ (ACAccount)activeAccountFromDefaultStore;
+ (NSNumber)uniqueIdentifierFromActiveAccountInDefaultStore;
@end

@implementation ASKAccountStore

+ (ACAccount)activeAccountFromDefaultStore
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

+ (NSNumber)uniqueIdentifierFromActiveAccountInDefaultStore
{
  v2 = [a1 activeAccountFromDefaultStore];
  v3 = [v2 ams_DSID];

  return v3;
}

@end