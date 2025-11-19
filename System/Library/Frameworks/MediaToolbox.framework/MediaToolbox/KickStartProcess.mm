@interface KickStartProcess
@end

@implementation KickStartProcess

void __figMediaParserdUtilities_KickStartProcess_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    dword_1ED4CA56C = FigXPCRemoteClientCreate();
    CFRelease(v1);
  }

  else
  {
    dword_1ED4CA56C = -12786;
  }
}

@end