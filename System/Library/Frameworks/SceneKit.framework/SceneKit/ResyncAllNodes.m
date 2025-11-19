@interface ResyncAllNodes
@end

@implementation ResyncAllNodes

uint64_t ____ResyncAllNodes_block_invoke(uint64_t a1, _DWORD *a2)
{
  C3DEnginePipelineRemoveNodeFromRendering(*(a1 + 32), a2);
  C3DEnginePipelineAddNodeToRendering(*(a1 + 32), *(a1 + 40), a2);
  return 0;
}

@end