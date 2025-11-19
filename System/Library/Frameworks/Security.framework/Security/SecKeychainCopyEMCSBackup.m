@interface SecKeychainCopyEMCSBackup
@end

@implementation SecKeychainCopyEMCSBackup

uint64_t ___SecKeychainCopyEMCSBackup_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 56)) != 0)
  {
    v3 = SecSecurityClientGet();
    result = v2(v3, *(a1 + 40), 0, 1, 0);
  }

  else
  {
    SecSecurityClientGet();
    result = client_data_data_BOOL_to_data_error_request(*(a1 + 40), 0, 1);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end