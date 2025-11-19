@interface VTTemporalFilterSessionRemote
@end

@implementation VTTemporalFilterSessionRemote

uint64_t __VTTemporalFilterSessionRemote_Create_block_invoke(uint64_t a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  memset(buffer, 0, sizeof(buffer));
  v7 = getpid();
  proc_name(v7, buffer, 0x20u);
  src = *(a1 + 40);
  v8 = *(*(a1 + 32) + 240);
  v9 = *(a1 + 84);
  v25 = *(a1 + 80);
  v10 = *(a1 + 48);
  if (v10)
  {
    BytePtr = CFDataGetBytePtr(v10);
    v12 = *(a1 + 48);
    if (v12)
    {
      Length = CFDataGetLength(v12);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = CFDataGetBytePtr(v14);
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = CFDataGetLength(v16);
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 0;
LABEL_11:
  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = CFDataGetBytePtr(v18);
    v20 = *(a1 + 64);
    if (v20)
    {
      v21 = CFDataGetLength(v20);
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = 0;
LABEL_16:
  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = CFDataGetBytePtr(v22);
    v22 = *(a1 + 72);
    if (v22)
    {
      LODWORD(v22) = CFDataGetLength(v22);
    }
  }

  else
  {
    v23 = 0;
  }

  LODWORD(result) = VTCompressionSessionRemoteClient_TemporalFilterCreate(a2, a3, v8, src, v25, v9, BytePtr, Length, v15, v17, v19, v21, v23, v22, buffer, a4, a5, a6, &v32);
  if (result)
  {
    return result;
  }

  else
  {
    return v32;
  }
}

@end