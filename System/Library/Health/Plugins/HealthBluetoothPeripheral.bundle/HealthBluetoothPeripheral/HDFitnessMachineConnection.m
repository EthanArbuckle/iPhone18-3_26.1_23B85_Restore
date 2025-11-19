@interface HDFitnessMachineConnection
- (HDFitnessMachineConnection)initWithUUID:(id)a3 client:(id)a4;
@end

@implementation HDFitnessMachineConnection

- (HDFitnessMachineConnection)initWithUUID:(id)a3 client:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDFitnessMachineConnection;
  v9 = [(HDFitnessMachineConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_client, a4);
  }

  return v10;
}

@end