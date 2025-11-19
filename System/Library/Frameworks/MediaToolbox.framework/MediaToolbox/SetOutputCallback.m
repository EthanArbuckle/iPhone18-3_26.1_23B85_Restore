@interface SetOutputCallback
@end

@implementation SetOutputCallback

void *__basicVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = result[6];
  v4 = *(v2 + 296);
  if (v4 != v3 || *(v2 + 304) != result[7])
  {
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *(v2 + 296) = v3;
      *(result[5] + 304) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
      *(*(v1[4] + 8) + 24) = result;
    }
  }

  return result;
}

void *__openglVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = result[6];
  v4 = *(v2 + 648);
  if (v4 != v3 || *(v2 + 656) != result[7])
  {
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *(v2 + 648) = v3;
      *(result[5] + 656) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
      *(*(v1[4] + 8) + 24) = result;
    }
  }

  return result;
}

void *__mvc_SetOutputCallback_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = result[6];
  v4 = *(v2 + 24);
  if (v4 != v3 || *(v2 + 32) != result[7])
  {
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *(v2 + 24) = v3;
      *(result[5] + 32) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
      *(*(v1[4] + 8) + 24) = result;
    }
  }

  return result;
}

void *__customVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = result[6];
  v4 = *(v2 + 176);
  if (v4 != v3 || *(v2 + 184) != result[7])
  {
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *(v2 + 176) = v3;
      *(result[5] + 184) = result[7];
      if (!*(result[5] + 176))
      {
        FigSimpleMutexLock();
        CFSetApplyFunction(*(v1[5] + 304), customVideoCompositor_purgePendingFrame, v1[8]);
        CFSetRemoveAllValues(*(v1[5] + 304));

        return FigSimpleMutexUnlock();
      }
    }

    else
    {
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
      *(*(v1[4] + 8) + 24) = result;
    }
  }

  return result;
}

@end