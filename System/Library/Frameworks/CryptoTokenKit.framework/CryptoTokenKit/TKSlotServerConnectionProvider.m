@interface TKSlotServerConnectionProvider
- (TKSlotServerConnectionProvider)initWithReplyQueue:(id)a3;
- (id)makeSlotServerConnectionWithExportedObject:(id)a3;
@end

@implementation TKSlotServerConnectionProvider

- (TKSlotServerConnectionProvider)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKSlotServerConnectionProvider;
  v6 = [(TKSlotServerConnectionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, a3);
  }

  return v7;
}

- (id)makeSlotServerConnectionWithExportedObject:(id)a3
{
  v4 = a3;
  v5 = [TKXPCConnectionConfigurationDefault alloc];
  v6 = [TKXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___TKProtocolSlotClient];
  v7 = [TKXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___TKProtocolSlotClientNotification];
  v8 = [(TKXPCConnectionConfigurationDefault *)v5 initWithRemoteObjectInterface:v6 exportedInterface:v7 exportedObject:v4 replyQueue:self->_replyQueue];

  v9 = [TKXPCConnectionDefault alloc];
  v10 = [(TKXPCConnectionDefault *)v9 initWithMachServiceName:TKProtocolSlotClientName options:4096];
  [(TKXPCConnectionDefault *)v10 configureWithConfiguration:v8];

  return v10;
}

@end