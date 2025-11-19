@interface NSData
@end

@implementation NSData

void __46__NSData_HKUUID__hk_enumerateUUIDsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
  (*(*(a1 + 32) + 16))();
}

void __51__NSData_HKUUID__hk_enumerateUUIDsWithError_block___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v11 = *(v5 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__NSData_HKUUID__hk_enumerateUUIDsWithError_block___block_invoke_2;
  v7[3] = &unk_1E7379E18;
  v9 = a2;
  v8 = *(a1 + 32);
  v10 = a3;
  v6 = HKWithAutoreleasePool(&v11, v7);
  objc_storeStrong((v5 + 40), v11);
  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

uint64_t __51__NSData_HKUUID__hk_enumerateUUIDsWithError_block___block_invoke_2(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1[5]];
  v3 = a1[6];
  v4 = (*(a1[4] + 16))();

  return v4;
}

@end