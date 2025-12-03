@interface AVAudioDeviceTestServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation AVAudioDeviceTestServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.avfaudio.devicetest"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3864788];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_opt_new();
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
  }

  return bOOLValue;
}

@end