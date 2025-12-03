@interface AUHSXPCSharedListenerManager
- (void)builtForPlatform:(unsigned int)platform againstMinimumSDK:(unsigned int)k reply:(id)reply;
- (void)getProgramSDKVersion:(id)version;
- (void)warmUpClassNamed:(id)named withReply:(id)reply;
@end

@implementation AUHSXPCSharedListenerManager

- (void)warmUpClassNamed:(id)named withReply:(id)reply
{
  aClassName = named;
  replyCopy = reply;
  remoteWarmUp = [NSClassFromString(aClassName) remoteWarmUp];
  replyCopy[2](replyCopy, remoteWarmUp);
}

- (void)getProgramSDKVersion:(id)version
{
  versionCopy = version;
  program_sdk_version = dyld_get_program_sdk_version();
  (*(version + 2))(versionCopy, program_sdk_version);
}

- (void)builtForPlatform:(unsigned int)platform againstMinimumSDK:(unsigned int)k reply:(id)reply
{
  replyCopy = reply;
  if (platform <= 7 && ((1 << platform) & 0xC6) != 0)
  {
    v6 = dyld_program_sdk_at_least();
    replyCopy[2](replyCopy, 0, v6);
  }

  else
  {
    v7 = sub_100001074(1, @"unsupported platform");
    (replyCopy)[2](replyCopy, v7, 0);
  }
}

@end