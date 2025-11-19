@interface FigDataQueueServer
@end

@implementation FigDataQueueServer

void __FigDataQueueServer_EnsureServerAndCopyXPCEndpoint_block_invoke()
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6963408], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v0)
  {
    v1 = v0;
    v2 = FigXPCServerStartWithNewXPCEndpoint();
    CFRelease(v1);
  }

  else
  {
    __FigDataQueueServer_EnsureServerAndCopyXPCEndpoint_block_invoke_cold_1(&v3);
    v2 = v3;
  }

  _MergedGlobals_98 = v2;
}

uint64_t __FigDataQueueServer_EnsureServerAndCopyXPCEndpoint_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end