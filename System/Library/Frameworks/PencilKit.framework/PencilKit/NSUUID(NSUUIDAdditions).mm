@interface NSUUID(NSUUIDAdditions)
+ (id)PK_zero;
- (id)PK_shortDescription;
- (uint64_t)PK_compare:()NSUUIDAdditions;
@end

@implementation NSUUID(NSUUIDAdditions)

+ (id)PK_zero
{
  if (_MergedGlobals_124 != -1)
  {
    dispatch_once(&_MergedGlobals_124, &__block_literal_global_17);
  }

  v1 = qword_1ED6A4FF0;

  return v1;
}

- (uint64_t)PK_compare:()NSUUIDAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v9 = 0;
  *uu2 = 0;
  v7 = 0;
  v4 = a3;
  [a1 getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  return uuid_compare(uu1, uu2);
}

- (id)PK_shortDescription
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", LOBYTE(v3[0]), BYTE1(v3[0])];

  return v1;
}

@end