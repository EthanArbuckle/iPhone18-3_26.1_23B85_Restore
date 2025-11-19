@interface SecKeychainWriteBackupToFileDescriptor
@end

@implementation SecKeychainWriteBackupToFileDescriptor

uint64_t ___SecKeychainWriteBackupToFileDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___SecKeychainWriteBackupToFileDescriptor_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_4_10714;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainWriteBackupToFileDescriptor_block_invoke_3;
  v3[3] = &unk_1E70DEF90;
  v3[4] = *(a1 + 32);
  return securityd_send_sync_and_do(9u, v1, v4, v3);
}

BOOL ___SecKeychainWriteBackupToFileDescriptor_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = SecXPCDictionarySetData(a2, "keybag", v6, a3)))
  {
    v8 = *(a1 + 40);
    if (!v8 || (result = SecXPCDictionarySetData(a2, "password", v8, a3)))
    {
      xpc_dictionary_set_fd(a2, "fileDescriptor", *(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL ___SecKeychainWriteBackupToFileDescriptor_block_invoke_3(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "status");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end