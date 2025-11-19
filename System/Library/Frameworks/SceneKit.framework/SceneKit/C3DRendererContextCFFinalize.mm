@interface C3DRendererContextCFFinalize
@end

@implementation C3DRendererContextCFFinalize

void ___C3DRendererContextCFFinalize_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    C3DRendererContextDeleteBufferObject(*(a1 + 32), *a3);

    CFRelease(v3);
  }
}

uint64_t ___C3DRendererContextCFFinalize_block_invoke_2(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a1 + 32);
  v5 = *a3;
  result = (*(v3 + 1944))(1, &v5, v3);
  --*(v3 + 428);
  return result;
}

@end