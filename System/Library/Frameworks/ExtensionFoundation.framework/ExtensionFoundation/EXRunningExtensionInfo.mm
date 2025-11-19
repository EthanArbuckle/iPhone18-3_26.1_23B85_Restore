@interface EXRunningExtensionInfo
@end

@implementation EXRunningExtensionInfo

uint64_t __57___EXRunningExtensionInfo_extensionInfoForCurrentProcess__block_invoke()
{
  extensionInfoForCurrentProcess_extensionForCurrentProcess = [[_EXRunningExtensionInfo alloc] initForCurrentProcess];

  return MEMORY[0x1EEE66BB8]();
}

@end