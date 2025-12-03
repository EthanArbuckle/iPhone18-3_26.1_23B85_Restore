@interface HDFitnessMachineConnection
- (HDFitnessMachineConnection)initWithUUID:(id)d client:(id)client;
@end

@implementation HDFitnessMachineConnection

- (HDFitnessMachineConnection)initWithUUID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = HDFitnessMachineConnection;
  v9 = [(HDFitnessMachineConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_client, client);
  }

  return v10;
}

@end