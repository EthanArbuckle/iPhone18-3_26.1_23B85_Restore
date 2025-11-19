@interface VTDecompressionSessionRemote
@end

@implementation VTDecompressionSessionRemote

uint64_t __VTDecompressionSessionRemote_Create_block_invoke(void *a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  memset(buffer, 0, sizeof(buffer));
  v10 = getpid();
  proc_name(v10, buffer, 0x20u);
  v11 = a1[5];
  v12 = *(a1[4] + 248);
  v14 = a1[6];
  v13 = a1[7];
  if (v13)
  {
    BytePtr = CFDataGetBytePtr(v13);
    v16 = a1[7];
    if (v16)
    {
      Length = CFDataGetLength(v16);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  v18 = a1[8];
  if (v18)
  {
    v19 = CFDataGetBytePtr(v18);
    v18 = a1[8];
    if (v18)
    {
      LODWORD(v18) = CFDataGetLength(v18);
    }
  }

  else
  {
    v19 = 0;
  }

  LODWORD(result) = VTDecompressionSessionRemoteClient_Create(a2, a3, v12, v11, v14, BytePtr, Length, v19, v18, buffer, a4, a5, a6, &v23);
  if (result)
  {
    return result;
  }

  else
  {
    return v23;
  }
}

uint64_t __VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke(void *a1)
{
  result = VTDecompressionSessionRemoteClient_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(a1[6] + 24), *(a1[5] + 8) + 24);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __VTDecompressionSessionRemote_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke(void *a1)
{
  result = VTDecompressionSessionRemoteClient_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(a1[8] + 24), *(a1[5] + 8) + 24, *(a1[6] + 8) + 24, (*(a1[7] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __VTDecompressionSessionRemote_DecodeTile_block_invoke(uint64_t a1)
{
  result = FigAtomicIncrement32();
  if (result == 1)
  {
    result = FigSemaphoreWaitRelative();
  }

  *(*(a1 + 40) + 80) = *(*(a1 + 32) + 32);
  *(*(a1 + 32) + 32) = *(a1 + 40);
  return result;
}

uint64_t __VTDecompressionSessionRemote_DecodeTile_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 32);
  if (v1)
  {
    v2 = result;
    do
    {
      while (1)
      {
        v3 = v1;
        v1 = *(v1 + 80);
        v4 = *(v2 + 40);
        if (v3 == v4)
        {
          v5 = *(v4 + 40);
          if (v5)
          {
            CFRelease(v5);
            v3 = *(v2 + 40);
          }

          v6 = *(v2 + 32);
          v9 = *(v6 + 32);
          v8 = (v6 + 32);
          v7 = v9;
          if (v9 != v3)
          {
            do
            {
              v10 = v7;
              v7 = *(v7 + 80);
            }

            while (v7 != v3);
            v8 = (v10 + 80);
          }

          *v8 = *(v7 + 80);
          free(*(v2 + 40));
          result = FigAtomicDecrement32();
          if (!result)
          {
            break;
          }
        }

        if (!v1)
        {
          return result;
        }
      }

      result = FigSemaphoreSignal();
    }

    while (v1);
  }

  return result;
}

@end