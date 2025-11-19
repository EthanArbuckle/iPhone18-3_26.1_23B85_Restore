@interface SecKeychainRestoreSyncable
@end

@implementation SecKeychainRestoreSyncable

uint64_t ___SecKeychainRestoreSyncable_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainRestoreSyncable_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_21_10745;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = SecOSStatusWith(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___SecKeychainRestoreSyncable_block_invoke_2(void *a1, CFTypeRef *a2)
{
  if (gSecurityd && (v5 = *(gSecurityd + 136)) != 0)
  {
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[4];

    return v5(v8, v6, v7, a2);
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v10 = a1[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __dict_data_data_to_error_request_block_invoke;
    v11[3] = &__block_descriptor_tmp_41_10746;
    v12 = *(a1 + 2);
    v13 = v10;
    return securityd_send_sync_and_do(0xCu, a2, v11, 0);
  }
}

@end