@interface TKXPCConnectionConfigurationDefault
- (TKXPCConnectionConfigurationDefault)initWithRemoteObjectInterface:(id)a3 exportedInterface:(id)a4 exportedObject:(id)a5 replyQueue:(id)a6;
@end

@implementation TKXPCConnectionConfigurationDefault

- (TKXPCConnectionConfigurationDefault)initWithRemoteObjectInterface:(id)a3 exportedInterface:(id)a4 exportedObject:(id)a5 replyQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TKXPCConnectionConfigurationDefault;
  v15 = [(TKXPCConnectionConfigurationDefault *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_exportedObject, a5);
    objc_storeStrong(&v16->_exportedInterface, a4);
    objc_storeStrong(&v16->_remoteObjectInterface, a3);
    objc_storeStrong(&v16->_replyQueue, a6);
  }

  return v16;
}

@end