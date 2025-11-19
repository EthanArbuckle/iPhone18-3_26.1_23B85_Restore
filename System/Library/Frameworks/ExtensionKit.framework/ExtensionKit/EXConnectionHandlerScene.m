@interface EXConnectionHandlerScene
@end

@implementation EXConnectionHandlerScene

uint64_t __52___EXConnectionHandlerScene_shouldAcceptConnection___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) conformsToProtocol:&unk_1F4E08D90];
  if (result)
  {
    result = [*(a1[4] + 8) shouldAcceptXPCConnection:a1[5]];
    *(*(a1[6] + 8) + 24) = result;
  }

  return result;
}

@end