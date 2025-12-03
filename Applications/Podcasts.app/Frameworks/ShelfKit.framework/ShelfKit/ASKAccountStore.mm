@interface ASKAccountStore
+ (ACAccount)activeAccountFromDefaultStore;
+ (NSNumber)uniqueIdentifierFromActiveAccountInDefaultStore;
@end

@implementation ASKAccountStore

+ (ACAccount)activeAccountFromDefaultStore
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

+ (NSNumber)uniqueIdentifierFromActiveAccountInDefaultStore
{
  activeAccountFromDefaultStore = [self activeAccountFromDefaultStore];
  ams_DSID = [activeAccountFromDefaultStore ams_DSID];

  return ams_DSID;
}

@end