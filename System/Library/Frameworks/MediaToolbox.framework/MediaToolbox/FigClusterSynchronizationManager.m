@interface FigClusterSynchronizationManager
@end

@implementation FigClusterSynchronizationManager

void __FigClusterSynchronizationManager_ClientIsPlaying_block_invoke(uint64_t a1)
{
  if (figClusterSynchManager_shouldDisableOdeonStereoClockLink())
  {
    if (dword_1EAF17140)
    {
      v2 = OUTLINED_FUNCTION_4_64();
      v10 = OUTLINED_FUNCTION_88_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
      if (OUTLINED_FUNCTION_77_0(v10))
      {
        OUTLINED_FUNCTION_1_82();
        OUTLINED_FUNCTION_2_79();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
    }

    figClusterSynchManager_ensureStopped();
  }

  else
  {
    v11 = _MergedGlobals_58;
    if (*(a1 + 40) != _MergedGlobals_58)
    {
      _MergedGlobals_58 = 1;
      *(*(*(a1 + 32) + 8) + 24) = figClusterSynchManager_ensureStarted();
      if (!*(*(*(a1 + 32) + 8) + 24) && qword_1ED4CAAF0 && *(a1 + 40) != v11)
      {
        v12 = qword_1ED4CAAF8;

        CFSetApplyFunction(v12, figClusterSynchManager_AddPort, 0);
      }
    }
  }
}

@end