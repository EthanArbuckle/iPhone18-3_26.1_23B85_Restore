@interface C3DRendererContextMeshWillDie
@end

@implementation C3DRendererContextMeshWillDie

void ___C3DRendererContextMeshWillDie_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___C3DRendererContextMeshWillDie_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_27;
  v3[4] = v2;
  v4 = *(a1 + 40);
  C3DRendererContextExecuteOnContext(v2, v3);
  C3DRendererContextReleaseContext(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

uint64_t ___C3DRendererContextMeshWillDie_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = (*(v1 + 1944))(1, &v3, v1);
  --*(v1 + 428);
  return result;
}

@end