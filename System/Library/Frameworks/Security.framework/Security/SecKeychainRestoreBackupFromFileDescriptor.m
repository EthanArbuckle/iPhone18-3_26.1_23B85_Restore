@interface SecKeychainRestoreBackupFromFileDescriptor
@end

@implementation SecKeychainRestoreBackupFromFileDescriptor

uint64_t ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_7_10717;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke_3;
  v3[3] = &unk_1E70DF000;
  v3[4] = *(a1 + 32);
  return securityd_send_sync_and_do(0xAu, v1, v4, v3);
}

BOOL ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  xpc_dictionary_set_fd(xdict, "fileDescriptor", *(a1 + 48));
  result = SecXPCDictionarySetData(xdict, "keybag", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);
    if (v7)
    {

      return SecXPCDictionarySetData(xdict, "password", v7, a3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke_3(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "status");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end