@interface ServerOneTimeInitialization
@end

@implementation ServerOneTimeInitialization

uint64_t __figXPC_ServerOneTimeInitialization_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  gCommonServerListenerQueue = FigDispatchQueueCreateWithPriority("FigXPCServerCommonListenerQueue", 0, 44);
  qword_1ED4CDB30 = dispatch_queue_create("FigXPCServerCommonTimeoutQueue", 0);
  gCommonServerProcessCleanupQueue = dispatch_queue_create("FigXPCServerCommonProcessCleanupQueue", v0);
  if (FigServer_IsMediaserverd() && !audiomxd_enabled() || (in_audio_mx_server_process() & 1) != 0 || !FigServer_IsServerProcess() || FigServer_IsAirplayd() || FigServer_IsCameracaptured())
  {
    qword_1ED4CDB38 |= 1uLL;
  }

  if (FigServer_IsMediaplaybackd())
  {
    qword_1ED4CDB38 |= 2uLL;
  }

  result = FigSimpleMutexCreate();
  gSelfTerminationLock = result;
  return result;
}

@end