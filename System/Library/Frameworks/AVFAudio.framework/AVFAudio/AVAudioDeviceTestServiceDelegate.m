@interface AVAudioDeviceTestServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation AVAudioDeviceTestServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.avfaudio.devicetest"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3864788];
    [v4 setExportedInterface:v7];

    v8 = objc_opt_new();
    [v4 setExportedObject:v8];
    [v4 resume];
  }

  else
  {
    [v4 invalidate];
  }

  return v6;
}

@end