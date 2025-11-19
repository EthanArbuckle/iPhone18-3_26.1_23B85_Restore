@interface ExecuteShaderModifiersTextureProxy
@end

@implementation ExecuteShaderModifiersTextureProxy

CFTypeID ___ExecuteShaderModifiersTextureProxy_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  TypeID = C3DEffectSlotGetTypeID();
  result = CFGetTypeID(a3);
  if (a3)
  {
    if (TypeID == result)
    {
      result = C3DRendererContextExecuteSlotTextureProxy(*(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), a3);
      *(*(a1 + 32) + 388) |= result;
    }
  }

  return result;
}

@end