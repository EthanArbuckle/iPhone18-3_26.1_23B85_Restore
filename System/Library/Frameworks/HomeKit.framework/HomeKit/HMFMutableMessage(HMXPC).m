@interface HMFMutableMessage(HMXPC)
- (void)hm_setXPCTimeoutDisabled:()HMXPC;
@end

@implementation HMFMutableMessage(HMXPC)

- (void)hm_setXPCTimeoutDisabled:()HMXPC
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setHeaderValue:v2 forKey:@"HMXPCMessageHeaderKeyIsXPCTimeoutDisabled"];
}

@end