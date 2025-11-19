@interface ApplicationStateDidChangeNotification
@end

@implementation ApplicationStateDidChangeNotification

uint64_t __playerceleste_ApplicationStateDidChangeNotification_block_invoke(uint64_t a1)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80, &qword_1ED4CBA80);
  FigSimpleMutexLock();
  v2 = &qword_1ED4CBA90;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (v2[1] == *(*(a1 + 40) + 8))
    {
      FigSimpleMutexUnlock();
      FigCFDictionaryGetInt32IfPresent();
      playerceleste_updatePlayerBasedOnAppState(*(a1 + 48), 0);
      return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
    }
  }

  FigSimpleMutexUnlock();
  return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
}

@end