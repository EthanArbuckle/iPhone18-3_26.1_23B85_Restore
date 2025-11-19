@interface VTTileDecompressionSessionRemote
@end

@implementation VTTileDecompressionSessionRemote

uint64_t __VTTileDecompressionSessionRemote_Create_block_invoke(void *a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(buffer, 0, sizeof(buffer));
  v12 = getpid();
  proc_name(v12, buffer, 0x20u);
  v13 = a1[5];
  v14 = *(a1[4] + 248);
  v16 = a1[6];
  v15 = a1[7];
  if (v15)
  {
    BytePtr = CFDataGetBytePtr(v15);
    v18 = a1[7];
    if (v18)
    {
      Length = CFDataGetLength(v18);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  LODWORD(result) = VTDecompressionSessionRemoteClient_TileCreate(a2, a3, v14, v13, v16, BytePtr, Length, buffer, a4, a5, a6, &v21);
  if (result)
  {
    return result;
  }

  else
  {
    return v21;
  }
}

@end