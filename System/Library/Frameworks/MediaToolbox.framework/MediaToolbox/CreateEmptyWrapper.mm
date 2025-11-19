@interface CreateEmptyWrapper
@end

@implementation CreateEmptyWrapper

uint64_t __frr_CreateEmptyWrapper_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CAE60 = result;
  return result;
}

@end