@interface LSAppRemovalServiceXPCInterface
@end

@implementation LSAppRemovalServiceXPCInterface

void ___LSAppRemovalServiceXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB2190];
  v1 = _LSAppRemovalServiceXPCInterface_interface;
  _LSAppRemovalServiceXPCInterface_interface = v0;
}

@end