@interface HMFMessage(HMXPC)
+ (id)messageHeadersWithXPCTimeoutDisabled:()HMXPC;
- (uint64_t)hm_isXPCTimeoutDisabled;
@end

@implementation HMFMessage(HMXPC)

- (uint64_t)hm_isXPCTimeoutDisabled
{
  v1 = [a1 headers];
  v2 = [v1 hmf_BOOLForKey:@"HMXPCMessageHeaderKeyIsXPCTimeoutDisabled"];

  return v2;
}

+ (id)messageHeadersWithXPCTimeoutDisabled:()HMXPC
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"HMXPCMessageHeaderKeyIsXPCTimeoutDisabled";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end