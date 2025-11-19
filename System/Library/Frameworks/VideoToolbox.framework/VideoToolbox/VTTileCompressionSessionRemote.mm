@interface VTTileCompressionSessionRemote
@end

@implementation VTTileCompressionSessionRemote

uint64_t __VTTileCompressionSessionRemote_Create_block_invoke(uint64_t a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(buffer, 0, sizeof(buffer));
  v11 = getpid();
  proc_name(v11, buffer, 0x20u);
  v12 = *(a1 + 40);
  v13 = *(*(a1 + 32) + 240);
  v14 = *(a1 + 64);
  if (v12)
  {
    BytePtr = CFDataGetBytePtr(v12);
    v16 = *(a1 + 40);
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
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = CFDataGetBytePtr(v18);
    v18 = *(a1 + 48);
    if (v18)
    {
      LODWORD(v18) = CFDataGetLength(v18);
    }
  }

  else
  {
    v19 = 0;
  }

  LODWORD(result) = VTCompressionSessionRemoteClient_TileCreate(a2, a3, v13, *(a1 + 56), v14, BytePtr, Length, v19, v18, buffer, a4, a5, a6, &v22);
  if (result)
  {
    return result;
  }

  else
  {
    return v22;
  }
}

uint64_t __VTTileCompressionSessionRemote_EncodeTile_block_invoke(uint64_t a1)
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

uint64_t __VTTileCompressionSessionRemote_EncodeTile_block_invoke_2(uint64_t result)
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
        if (v3 == *(v2 + 40))
        {
          v4 = *(v2 + 32);
          v7 = *(v4 + 40);
          v6 = (v4 + 40);
          v5 = v7;
          if (v7 != v3)
          {
            do
            {
              v8 = v5;
              v5 = *(v5 + 48);
            }

            while (v5 != v3);
            v6 = (v8 + 48);
          }

          *v6 = *(v5 + 48);
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