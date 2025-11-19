@interface CFLookupDiskArbitrationFunction
@end

@implementation CFLookupDiskArbitrationFunction

void *___CFLookupDiskArbitrationFunction_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/DiskArbitration.framework/DiskArbitration", 5);
  _CFLookupDiskArbitrationFunction_image = result;
  return result;
}

@end