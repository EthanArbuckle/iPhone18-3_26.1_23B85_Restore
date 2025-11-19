@interface SLService
+ (id)allServices;
+ (id)serviceForServiceType:(id)a3;
- (BOOL)hasAccounts;
- (id)serviceType;
@end

@implementation SLService

+ (id)serviceForServiceType:(id)a3
{
  v3 = [SLRemoteService remoteServiceForTypeIdentifier:a3];
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
  v2 = [(SLService *)self accountTypeIdentifier];
  v3 = [MEMORY[0x1E6959A48] accountsWithAccountTypeIdentifierExist:v2];
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v3 = [v4 updateExistenceCacheOfAccountWithTypeIdentifier:v2];
  }

  return v3 != 2;
}

- (id)serviceType
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Someone didn't override -serviceType" userInfo:0];
  objc_exception_throw(v2);
}

@end