@interface BLSMemoryByteCountFormatter
+ (id)sharedFormatter;
@end

@implementation BLSMemoryByteCountFormatter

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[BLSMemoryByteCountFormatter sharedFormatter];
  }

  v3 = sharedFormatter_byteCountFormatter;

  return v3;
}

uint64_t __46__BLSMemoryByteCountFormatter_sharedFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  v1 = sharedFormatter_byteCountFormatter;
  sharedFormatter_byteCountFormatter = v0;

  v2 = sharedFormatter_byteCountFormatter;

  return [v2 setCountStyle:1];
}

@end