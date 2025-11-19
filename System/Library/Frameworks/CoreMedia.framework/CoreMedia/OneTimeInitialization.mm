@interface OneTimeInitialization
@end

@implementation OneTimeInitialization

uint64_t __remoteDeviceClock_OneTimeInitialization_block_invoke()
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  v2[0] = 1;
  v2[1] = remoteDeviceClock_DeadConnectionCallback;
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v0 = "com.apple.coremedia.mediaplaybackd.audiodeviceclock.xpc";
  }

  else
  {
    v0 = "com.apple.coremedia.audiodeviceclock.xpc";
  }

  result = FigXPCRemoteClientCreate(v0, v2, 0, &qword_1ED4CC930);
  _MergedGlobals_29 = result;
  return result;
}

@end