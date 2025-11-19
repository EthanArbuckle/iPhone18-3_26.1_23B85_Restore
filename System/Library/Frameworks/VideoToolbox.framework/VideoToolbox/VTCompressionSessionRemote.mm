@interface VTCompressionSessionRemote
@end

@implementation VTCompressionSessionRemote

uint64_t __VTCompressionSessionRemote_Create_block_invoke(uint64_t a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, uint64_t *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0;
  memset(buffer, 0, sizeof(buffer));
  v7 = getpid();
  proc_name(v7, buffer, 0x20u);
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 240);
  v10 = *(a1 + 64);
  v11 = *(a1 + 68);
  v12 = *(a1 + 72);
  if (v8)
  {
    BytePtr = CFDataGetBytePtr(v8);
    v14 = *(a1 + 40);
    if (v14)
    {
      Length = CFDataGetLength(v14);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = CFDataGetBytePtr(v16);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = CFDataGetLength(v18);
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = 0;
LABEL_11:
  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = CFDataGetBytePtr(v20);
    v20 = *(a1 + 56);
    if (v20)
    {
      LODWORD(v20) = CFDataGetLength(v20);
    }
  }

  else
  {
    v21 = 0;
  }

  LODWORD(result) = VTCompressionSessionRemoteClient_Create(a2, a3, v9, v10, v11, v12, BytePtr, Length, v17, v19, v21, v20, buffer, a4, a5, a6, &v28);
  if (result)
  {
    return result;
  }

  else
  {
    return v28;
  }
}

uint64_t __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke(uint64_t a1)
{
  result = FigAtomicIncrement32();
  if (result == 1)
  {
    result = FigSemaphoreWaitRelative();
  }

  *(*(a1 + 40) + 48) = *(*(a1 + 32) + 40);
  *(*(a1 + 32) + 40) = *(a1 + 40);
  return result;
}

uint64_t __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = result;
    do
    {
      while (1)
      {
        v3 = v1;
        v1 = *(v1 + 48);
        v4 = *(v2 + 40);
        if (v3 == v4)
        {
          v5 = *(v4 + 32);
          if (v5)
          {
            _Block_release(v5);
            v3 = *(v2 + 40);
          }

          v6 = *(v2 + 32);
          v9 = *(v6 + 40);
          v8 = (v6 + 40);
          v7 = v9;
          if (v9 != v3)
          {
            do
            {
              v10 = v7;
              v7 = *(v7 + 48);
            }

            while (v7 != v3);
            v8 = (v10 + 48);
          }

          *v8 = *(v7 + 48);
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