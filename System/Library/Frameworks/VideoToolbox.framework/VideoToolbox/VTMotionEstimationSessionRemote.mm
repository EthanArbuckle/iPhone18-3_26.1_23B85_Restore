@interface VTMotionEstimationSessionRemote
@end

@implementation VTMotionEstimationSessionRemote

uint64_t __VTMotionEstimationSessionRemote_Create_block_invoke(uint64_t a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(buffer, 0, sizeof(buffer));
  v12 = getpid();
  proc_name(v12, buffer, 0x20u);
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 240);
  v15 = *(a1 + 48);
  v16 = *(a1 + 52);
  if (v13)
  {
    BytePtr = CFDataGetBytePtr(v13);
    v18 = *(a1 + 40);
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
  LODWORD(result) = VTCompressionSessionRemoteClient_MotionEstimationCreate(a2, a3, v14, v15, v16, BytePtr, Length, buffer, a4, a5, a6, &v21);
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