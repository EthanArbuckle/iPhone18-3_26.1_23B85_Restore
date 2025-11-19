@interface VTMultiPassStorageRemote
@end

@implementation VTMultiPassStorageRemote

uint64_t __VTMultiPassStorageRemote_Create_block_invoke(uint64_t a1, mach_port_name_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(buffer, 0, sizeof(buffer));
  v12 = getpid();
  proc_name(v12, buffer, 0x20u);
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 240);
  if (v13)
  {
    v15 = strlen(*(a1 + 40)) + 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    BytePtr = CFDataGetBytePtr(v16);
    v18 = *(a1 + 48);
    if (v18)
    {
      Length = CFDataGetLength(v18);
      goto LABEL_9;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_9:
  v20 = *(a1 + 72);
  v23[0] = *(a1 + 56);
  v23[1] = v20;
  v23[2] = *(a1 + 88);
  LODWORD(result) = VTCompressionSessionRemoteClient_MultiPassStorageCreate(a2, a3, v14, v13, v15, v23, BytePtr, Length, buffer, a4, a5, a6, &v22);
  if (result)
  {
    return result;
  }

  else
  {
    return v22;
  }
}

@end