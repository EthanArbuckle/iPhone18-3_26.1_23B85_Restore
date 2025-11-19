@interface NSUUID(AuthKit)
- (uint64_t)ak_uuidData;
@end

@implementation NSUUID(AuthKit)

- (uint64_t)ak_uuidData
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 getUUIDBytes:?];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];
  *MEMORY[0x1E69E9840];
  return v2;
}

@end