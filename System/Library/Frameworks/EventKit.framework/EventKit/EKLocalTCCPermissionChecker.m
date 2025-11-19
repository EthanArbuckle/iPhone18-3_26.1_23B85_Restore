@interface EKLocalTCCPermissionChecker
- (void)requestAuthorization:(unint64_t)a3 forService:(__CFString *)a4 clientDictionary:(id)a5 completion:(id)a6;
@end

@implementation EKLocalTCCPermissionChecker

- (void)requestAuthorization:(unint64_t)a3 forService:(__CFString *)a4 clientDictionary:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = a5;
  v9 = tcc_credential_singleton_for_self();
  v10 = v7;
  CalRequestAuthorizationForServiceWithCompletion();
}

uint64_t __91__EKLocalTCCPermissionChecker_requestAuthorization_forService_clientDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _authorizationForService:*(a1 + 48)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end