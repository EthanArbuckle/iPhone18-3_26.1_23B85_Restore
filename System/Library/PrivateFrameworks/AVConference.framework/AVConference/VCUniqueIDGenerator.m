@interface VCUniqueIDGenerator
@end

@implementation VCUniqueIDGenerator

uint64_t ___VCUniqueIDGenerator_GenerateIDInternal_block_invoke()
{
  pthread_mutex_lock(&generateIDLock);
  currentID = hwrandom();

  return pthread_mutex_unlock(&generateIDLock);
}

@end