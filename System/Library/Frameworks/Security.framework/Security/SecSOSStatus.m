@interface SecSOSStatus
- (SecSOSStatus)init;
@end

@implementation SecSOSStatus

- (SecSOSStatus)init
{
  v9.receiver = self;
  v9.super_class = SecSOSStatus;
  v2 = [(SecSOSStatus *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFABB4B8];
    _SOSControlSetupInterface(v3);
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.securityd.sos" options:0];
    [(SecSOSStatus *)v2 setConnection:v4];

    v5 = [(SecSOSStatus *)v2 connection];

    if (v5)
    {
      v6 = [(SecSOSStatus *)v2 connection];
      [v6 setRemoteObjectInterface:v3];

      v7 = [(SecSOSStatus *)v2 connection];
      [v7 resume];

      v5 = v2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end