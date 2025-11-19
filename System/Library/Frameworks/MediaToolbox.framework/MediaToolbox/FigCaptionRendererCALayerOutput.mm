@interface FigCaptionRendererCALayerOutput
@end

@implementation FigCaptionRendererCALayerOutput

uint64_t __FigCaptionRendererCALayerOutput_Finalize_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) removeFromSuperlayer];

  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

@end