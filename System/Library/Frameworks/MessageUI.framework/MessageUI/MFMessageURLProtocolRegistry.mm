@interface MFMessageURLProtocolRegistry
@end

@implementation MFMessageURLProtocolRegistry

void __47___MFMessageURLProtocolRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedRegistry_instance;
  sharedRegistry_instance = v1;
}

@end