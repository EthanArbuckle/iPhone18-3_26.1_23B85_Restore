@interface CreateRPCTimeoutThread
@end

@implementation CreateRPCTimeoutThread

void __fpServer_CreateRPCTimeoutThread_block_invoke()
{
  qword_1EAF1CAB8 = FigDispatchQueueCreateWithPriority("FigRPCTimeoutServerQueue", 0, 35);
  dword_1EAF1CAC0 = 0;
  v1 = bootstrap_check_in(*MEMORY[0x1E69E99F8], "com.apple.coremedia.admin", &dword_1EAF1CAC0);
  if (v1)
  {
    v4 = qword_1ED4CC338;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v1, "<<<< FigRPCTimeoutClientServer >>>>", 0x13B, v0, v2, v3);
  }

  else
  {
    qword_1EAF1CAC8 = dispatch_source_create(MEMORY[0x1E69E96D8], dword_1EAF1CAC0, 0, qword_1EAF1CAB8);
    dispatch_source_set_cancel_handler(qword_1EAF1CAC8, &__block_literal_global_14_0);
    dispatch_source_set_event_handler(qword_1EAF1CAC8, &__block_literal_global_17);
    v5 = qword_1EAF1CAC8;

    dispatch_resume(v5);
  }
}

void __fpServer_CreateRPCTimeoutThread_block_invoke_2()
{
  FigMachPortReleaseReceiveRight_(dword_1EAF1CAC0, 0, 0, 0, 0);
  FigMachPortReleaseSendRight_(dword_1EAF1CAC0, 0, 0, 0, 0);
  dispatch_release(qword_1EAF1CAC8);
  qword_1EAF1CAC8 = 0;
}

@end