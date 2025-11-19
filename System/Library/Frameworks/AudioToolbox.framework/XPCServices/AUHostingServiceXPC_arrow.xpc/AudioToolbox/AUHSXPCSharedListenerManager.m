@interface AUHSXPCSharedListenerManager
- (void)builtForPlatform:(unsigned int)a3 againstMinimumSDK:(unsigned int)a4 reply:(id)a5;
- (void)getProgramSDKVersion:(id)a3;
- (void)warmUpClassNamed:(id)a3 withReply:(id)a4;
@end

@implementation AUHSXPCSharedListenerManager

- (void)warmUpClassNamed:(id)a3 withReply:(id)a4
{
  aClassName = a3;
  v5 = a4;
  v6 = [NSClassFromString(aClassName) remoteWarmUp];
  v5[2](v5, v6);
}

- (void)getProgramSDKVersion:(id)a3
{
  v5 = a3;
  program_sdk_version = dyld_get_program_sdk_version();
  (*(a3 + 2))(v5, program_sdk_version);
}

- (void)builtForPlatform:(unsigned int)a3 againstMinimumSDK:(unsigned int)a4 reply:(id)a5
{
  v8 = a5;
  if (a3 <= 7 && ((1 << a3) & 0xC6) != 0)
  {
    v6 = dyld_program_sdk_at_least();
    v8[2](v8, 0, v6);
  }

  else
  {
    v7 = sub_100001074(1, @"unsupported platform");
    (v8)[2](v8, v7, 0);
  }
}

@end