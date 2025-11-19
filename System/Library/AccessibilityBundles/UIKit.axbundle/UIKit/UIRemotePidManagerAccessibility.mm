@interface UIRemotePidManagerAccessibility
@end

@implementation UIRemotePidManagerAccessibility

double __50___UIRemotePidManagerAccessibility_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_UIRemotePidManagerAccessibility);
  v1 = sharedInstance__shared;
  sharedInstance__shared = v0;
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

double __40___UIRemotePidManagerAccessibility_init__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end