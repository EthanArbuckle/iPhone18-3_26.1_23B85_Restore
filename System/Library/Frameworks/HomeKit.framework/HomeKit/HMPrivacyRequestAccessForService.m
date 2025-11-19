@interface HMPrivacyRequestAccessForService
@end

@implementation HMPrivacyRequestAccessForService

uint64_t ____HMPrivacyRequestAccessForService_block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = ____HMPrivacyRequestAccessForService_block_invoke_2;
    v9 = &unk_1E754A0B8;
    v10 = *(a1 + 48);
    v11 = v2;
    dispatch_async(v4, &v6);
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), a2 != 0);
  }

  return [*(a1 + 40) invalidate];
}

@end