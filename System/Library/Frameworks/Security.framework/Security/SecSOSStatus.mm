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

    connection = [(SecSOSStatus *)v2 connection];

    if (connection)
    {
      connection2 = [(SecSOSStatus *)v2 connection];
      [connection2 setRemoteObjectInterface:v3];

      connection3 = [(SecSOSStatus *)v2 connection];
      [connection3 resume];

      connection = v2;
    }
  }

  else
  {
    connection = 0;
  }

  return connection;
}

@end