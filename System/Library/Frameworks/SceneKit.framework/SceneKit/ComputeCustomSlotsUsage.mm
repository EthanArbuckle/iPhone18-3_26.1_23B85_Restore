@interface ComputeCustomSlotsUsage
@end

@implementation ComputeCustomSlotsUsage

void ____ComputeCustomSlotsUsage_block_invoke(uint64_t a1, const void *a2, CFTypeRef cf)
{
  v3 = cf;
  v6 = CFGetTypeID(cf);
  if (v6 == C3DValueGetTypeID())
  {
    if (C3DValueGetTypeSemantic(v3) != 1)
    {
      return;
    }

    v3 = *C3DValueGetBytes(v3);
  }

  else if (v6 != C3DEffectSlotGetTypeID())
  {
    return;
  }

  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 162);
    if (v8 == 8)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ____ComputeCustomSlotsUsage_block_invoke_cold_1(v9);
      }
    }

    else
    {
      *(v7 + 8 * v8 + 216) = a2;
      CFRetain(a2);
      UVSet = C3DEffectSlotGetUVSet(v3);
      if (UVSet == -1)
      {
        v11 = 0;
      }

      else
      {
        v11 = UVSet;
      }

      HasInterpolationModesPerKey = C3DKeyframeControllerHasInterpolationModesPerKey(v3);
      *(*(a1 + 32) + v8 + 203) = __UpdateHashCodeUVSetForEffectProperty(*(a1 + 32), v11, HasInterpolationModesPerKey, v8 + 27);
      ++*(*(a1 + 32) + 162);
    }
  }
}

void ____ComputeCustomSlotsUsage_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 8;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Too many uniform custom samplers given (Max is %d)", v1, 8u);
}

@end