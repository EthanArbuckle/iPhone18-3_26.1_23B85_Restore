@interface SecKeychainCopyOTABackup
@end

@implementation SecKeychainCopyOTABackup

uint64_t ___SecKeychainCopyOTABackup_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 56)) != 0)
  {
    v3 = SecSecurityClientGet();
    result = v2(v3, 0, 0, 0, 0);
  }

  else
  {
    SecSecurityClientGet();
    result = client_data_data_BOOL_to_data_error_request(0, 0, 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end