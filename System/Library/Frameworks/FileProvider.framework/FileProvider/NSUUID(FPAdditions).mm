@interface NSUUID(FPAdditions)
- (id)fp_UUIDWithObfuscation:()FPAdditions;
- (uint64_t)fp_UUID;
@end

@implementation NSUUID(FPAdditions)

- (uint64_t)fp_UUID
{
  shouldObfuscateFilenames = fp_shouldObfuscateFilenames();

  return [a1 fp_UUIDWithObfuscation:shouldObfuscateFilenames];
}

- (id)fp_UUIDWithObfuscation:()FPAdditions
{
  v4 = [a1 UUIDString];
  v5 = v4;
  if (a3 && ![v4 isEqualToString:@"00000000-0000-0000-0000-000000000000"])
  {
    v7 = [v5 substringToIndex:2];
    v8 = [v5 substringFromIndex:{objc_msgSend(v5, "length") - 2}];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@", v7, v8];
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end