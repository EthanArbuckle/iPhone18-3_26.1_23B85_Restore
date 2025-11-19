@interface XPCExtensionInterface
+ (id)extensionInterface;
+ (id)hostInterface;
@end

@implementation XPCExtensionInterface

+ (id)extensionInterface
{
  if (extensionInterface_onceToken != -1)
  {
    +[XPCExtensionInterface extensionInterface];
  }

  v3 = extensionInterface_sExtensionInterface;

  return v3;
}

uint64_t __43__XPCExtensionInterface_extensionInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41A6220];
  v1 = extensionInterface_sExtensionInterface;
  extensionInterface_sExtensionInterface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)hostInterface
{
  if (hostInterface_onceToken != -1)
  {
    +[XPCExtensionInterface hostInterface];
  }

  v3 = hostInterface_sHostInterface;

  return v3;
}

uint64_t __38__XPCExtensionInterface_hostInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41C21E0];
  v1 = hostInterface_sHostInterface;
  hostInterface_sHostInterface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end