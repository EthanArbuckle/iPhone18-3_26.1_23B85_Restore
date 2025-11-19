@interface CPFreeupBytes
@end

@implementation CPFreeupBytes

uint64_t ___CPFreeupBytes_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/CacheDelete.framework/CacheDelete", 1);
  _CPFreeupBytes__CacheDeletePurgeSpaceWithInfo = dlsym(v0, "CacheDeletePurgeSpaceWithInfo");

  return dlclose(v0);
}

@end