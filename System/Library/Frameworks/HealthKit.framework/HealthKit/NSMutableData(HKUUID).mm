@interface NSMutableData(HKUUID)
- (uint64_t)hk_appendBytesWithUUID:()HKUUID;
@end

@implementation NSMutableData(HKUUID)

- (uint64_t)hk_appendBytesWithUUID:()HKUUID
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = result;
    v5[0] = 0;
    v5[1] = 0;
    [a3 getUUIDBytes:v5];
    result = [v3 appendBytes:v5 length:16];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end