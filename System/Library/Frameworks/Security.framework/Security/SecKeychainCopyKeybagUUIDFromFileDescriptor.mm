@interface SecKeychainCopyKeybagUUIDFromFileDescriptor
@end

@implementation SecKeychainCopyKeybagUUIDFromFileDescriptor

uint64_t ___SecKeychainCopyKeybagUUIDFromFileDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___SecKeychainCopyKeybagUUIDFromFileDescriptor_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_10_10721;
  v5 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainCopyKeybagUUIDFromFileDescriptor_block_invoke_3;
  v3[3] = &unk_1E70DF070;
  v3[4] = *(a1 + 32);
  return securityd_send_sync_and_do(0x68u, v1, v4, v3);
}

BOOL ___SecKeychainCopyKeybagUUIDFromFileDescriptor_block_invoke_3(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyString(a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

@end