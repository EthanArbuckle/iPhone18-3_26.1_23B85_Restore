@interface GetPAPRegistryMutexAndList
@end

@implementation GetPAPRegistryMutexAndList

CFMutableDictionaryRef __pap_GetPAPRegistryMutexAndList_block_invoke()
{
  qword_1ED4CAC78 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CAC80 = result;
  return result;
}

@end