@interface FigByteStreamServer
@end

@implementation FigByteStreamServer

uint64_t __FigByteStreamServer_CopyMemoryPool_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CA510 = result;
  return result;
}

@end