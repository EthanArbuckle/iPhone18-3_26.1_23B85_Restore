@interface CKDSecuritydAccount
+ (id)securitydAccount;
- (id)keysChanged:(id)changed error:(id *)error;
- (id)syncWithPeers:(id)peers backups:(id)backups error:(id *)error;
@end

@implementation CKDSecuritydAccount

- (id)syncWithPeers:(id)peers backups:(id)backups error:(id *)error
{
  v5 = SOSCCProcessSyncWithPeers();

  return v5;
}

- (id)keysChanged:(id)changed error:(id *)error
{
  updated = _SecKeychainSyncUpdateMessage();
  if (error)
  {
    v6 = 0;
    *error = 0;
  }

  v7 = [NSSet setWithArray:updated];

  return v7;
}

+ (id)securitydAccount
{
  v2 = objc_alloc_init(CKDSecuritydAccount);

  return v2;
}

@end