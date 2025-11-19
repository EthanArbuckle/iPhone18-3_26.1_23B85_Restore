@interface _EXExtensionProcess(MTSDeviceSetupExtensionProcess)
- (MTSXPCConnection)makeMTSXPCConnectionWithError:()MTSDeviceSetupExtensionProcess;
@end

@implementation _EXExtensionProcess(MTSDeviceSetupExtensionProcess)

- (MTSXPCConnection)makeMTSXPCConnectionWithError:()MTSDeviceSetupExtensionProcess
{
  v1 = [a1 makeXPCConnectionWithError:?];
  if (v1)
  {
    v2 = [[MTSXPCConnection alloc] initWithXPCConnection:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end