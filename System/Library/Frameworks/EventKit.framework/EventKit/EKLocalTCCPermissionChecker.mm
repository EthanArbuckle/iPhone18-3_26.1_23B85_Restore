@interface EKLocalTCCPermissionChecker
- (void)requestAuthorization:(unint64_t)authorization forService:(__CFString *)service clientDictionary:(id)dictionary completion:(id)completion;
@end

@implementation EKLocalTCCPermissionChecker

- (void)requestAuthorization:(unint64_t)authorization forService:(__CFString *)service clientDictionary:(id)dictionary completion:(id)completion
{
  completionCopy = completion;
  dictionaryCopy = dictionary;
  v9 = tcc_credential_singleton_for_self();
  v10 = completionCopy;
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