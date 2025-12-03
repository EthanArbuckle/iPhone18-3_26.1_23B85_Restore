@interface SLService
+ (id)allServices;
+ (id)serviceForServiceType:(id)type;
- (BOOL)hasAccounts;
- (id)serviceType;
@end

@implementation SLService

+ (id)serviceForServiceType:(id)type
{
  v3 = [SLRemoteService remoteServiceForTypeIdentifier:type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)allServices
{
  v2 = +[SLRemoteService remoteServices];
  v3 = [v2 valueForKey:@"serviceType"];
  v4 = [v3 mutableCopy];

  return v4;
}

- (BOOL)hasAccounts
{
  accountTypeIdentifier = [(SLService *)self accountTypeIdentifier];
  v3 = [MEMORY[0x1E6959A48] accountsWithAccountTypeIdentifierExist:accountTypeIdentifier];
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v3 = [v4 updateExistenceCacheOfAccountWithTypeIdentifier:accountTypeIdentifier];
  }

  return v3 != 2;
}

- (id)serviceType
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Someone didn't override -serviceType" userInfo:0];
  objc_exception_throw(v2);
}

@end