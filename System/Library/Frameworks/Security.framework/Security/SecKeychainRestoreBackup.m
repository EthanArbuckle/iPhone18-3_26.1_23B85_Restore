@interface SecKeychainRestoreBackup
@end

@implementation SecKeychainRestoreBackup

uint64_t ___SecKeychainRestoreBackup_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainRestoreBackup_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_14_10725;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = SecOSStatusWith(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___SecKeychainRestoreBackup_block_invoke_2(void *a1, CFTypeRef *a2)
{
  if (gSecurityd && *(gSecurityd + 64))
  {
    v4 = a1[4];
    v10 = *(gSecurityd + 64);
    v5 = SecSecurityClientGet();
    v6 = a1[5];
    v7 = a1[6];

    return v10(v4, v5, v6, v7, a2);
  }

  else
  {
    v9 = a1[4];
    SecSecurityClientGet();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __data_client_data_data_to_error_request_block_invoke;
    v11[3] = &__block_descriptor_tmp_35_10727;
    v11[4] = v9;
    v12 = *(a1 + 5);
    return securityd_send_sync_and_do(0xAu, a2, v11, 0);
  }
}

@end