@interface MFContactsManager
+ (BOOL)isAuthorizedToUseContacts;
+ (id)sharedManager;
- (MFContactsManager)init;
- (MFContactsManager)initWithContactStore:(id)a3;
@end

@implementation MFContactsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MFContactsManager sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

void __34__MFContactsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MFContactsManager);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;
}

+ (BOOL)isAuthorizedToUseContacts
{
  if (isAuthorizedToUseContacts_onceToken != -1)
  {
    +[MFContactsManager isAuthorizedToUseContacts];
  }

  return isAuthorizedToUseContacts_sIsAuthorizedToUseContacts;
}

uint64_t __46__MFContactsManager_isAuthorizedToUseContacts__block_invoke()
{
  result = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
  isAuthorizedToUseContacts_sIsAuthorizedToUseContacts = (result - 3) < 0xFFFFFFFFFFFFFFFELL;
  return result;
}

- (MFContactsManager)init
{
  v3 = MSSharedContactStore();
  v4 = [(MFContactsManager *)self initWithContactStore:v3];

  return v4;
}

- (MFContactsManager)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFContactsManager;
  v6 = [(MFContactsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

@end