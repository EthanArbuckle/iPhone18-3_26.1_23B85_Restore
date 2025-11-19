@interface SecKeychainBackupSyncable
@end

@implementation SecKeychainBackupSyncable

BOOL ___SecKeychainBackupSyncable_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (gSecurityd && (v3 = *(gSecurityd + 128)) != 0)
  {
    v4 = v3(*(a1 + 40), *(a1 + 48), *(a1 + 56), a2);
  }

  else
  {
    v5 = *(a1 + 56);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __data_data_dict_to_dict_error_request_block_invoke;
    v8[3] = &__block_descriptor_tmp_39_10741;
    v9 = *(a1 + 40);
    v10 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __data_data_dict_to_dict_error_request_block_invoke_2;
    v7[3] = &unk_1E70DF370;
    v7[4] = &v11;
    securityd_send_sync_and_do(0xBu, a2, v8, v7);
    v4 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  **(a1 + 32) = v4;
  return **(a1 + 32) != 0;
}

@end