@interface NSUUID(FPAdditions)
- (id)fp_UUIDWithObfuscation:()FPAdditions;
- (uint64_t)fp_UUID;
@end

@implementation NSUUID(FPAdditions)

- (uint64_t)fp_UUID
{
  shouldObfuscateFilenames = fp_shouldObfuscateFilenames();

  return [self fp_UUIDWithObfuscation:shouldObfuscateFilenames];
}

- (id)fp_UUIDWithObfuscation:()FPAdditions
{
  uUIDString = [self UUIDString];
  v5 = uUIDString;
  if (a3 && ![uUIDString isEqualToString:@"00000000-0000-0000-0000-000000000000"])
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