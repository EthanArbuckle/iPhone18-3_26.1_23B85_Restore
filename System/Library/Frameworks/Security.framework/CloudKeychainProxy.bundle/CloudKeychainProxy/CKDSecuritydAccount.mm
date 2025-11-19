@interface CKDSecuritydAccount
+ (id)securitydAccount;
- (id)keysChanged:(id)a3 error:(id *)a4;
- (id)syncWithPeers:(id)a3 backups:(id)a4 error:(id *)a5;
@end

@implementation CKDSecuritydAccount

- (id)syncWithPeers:(id)a3 backups:(id)a4 error:(id *)a5
{
  v5 = SOSCCProcessSyncWithPeers();

  return v5;
}

- (id)keysChanged:(id)a3 error:(id *)a4
{
  updated = _SecKeychainSyncUpdateMessage();
  if (a4)
  {
    v6 = 0;
    *a4 = 0;
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