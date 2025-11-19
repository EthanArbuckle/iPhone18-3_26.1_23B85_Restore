@interface NSData
@end

@implementation NSData

uint64_t __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke()
{
  qword_1ED6E32B8 = dispatch_queue_create("com.apple.AppleMediaServices.AESKeyGeneration", MEMORY[0x1E69E96A8]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke_48()
{
  qword_1ED6E32C8 = objc_alloc_init(AMSThreadSafeDictionary);

  return MEMORY[0x1EEE66BB8]();
}

void __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke_52(uint64_t a1)
{
  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = SecItemCopyMatching(*(a1 + 48), &result);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = result;
  }
}

void __66__NSData_AppleMediaServices___AESKeyForDataProtectionClass_error___block_invoke_53(uint64_t a1)
{
  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = SecItemCopyMatching(*(a1 + 48), &result);
  if (!*(*(*(a1 + 32) + 8) + 24) || (CFDictionaryAddValue(*(a1 + 48), *MEMORY[0x1E697ABD8], [*(a1 + 56) _accessibleAttributeForDataProtectionClass:*(a1 + 64)]), CFDictionaryAddValue(*(a1 + 48), *MEMORY[0x1E697B3C0], objc_msgSend(*(a1 + 56), "ams_generateEncryptionKey")), (*(*(*(a1 + 32) + 8) + 24) = SecItemAdd(*(a1 + 48), &result)) == 0))
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = result;
  }
}

@end