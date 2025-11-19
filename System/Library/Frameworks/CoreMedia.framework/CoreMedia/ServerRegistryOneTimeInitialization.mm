@interface ServerRegistryOneTimeInitialization
@end

@implementation ServerRegistryOneTimeInitialization

CFMutableArrayRef __figXPC_ServerRegistryOneTimeInitialization_block_invoke()
{
  gServerRegistry_0 = dispatch_queue_create("FigXPCServerRegistryQueue", 0);
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  gServerRegistry_1 = result;
  return result;
}

@end