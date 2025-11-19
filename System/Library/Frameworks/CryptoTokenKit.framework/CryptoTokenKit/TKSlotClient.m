@interface TKSlotClient
+ (BOOL)handleConnection:(id)a3 server:(id)a4;
- (TKProtocolSlotClientNotification)notification;
- (void)dealloc;
- (void)endNFCSlotWithName:(id)a3 reply:(id)a4;
- (void)reportChangesForSlotType:(id)a3 reply:(id)a4;
- (void)startNFCSlotWithName:(id)a3 uiSheetMessage:(id)a4 supportedAppIdentifiers:(id)a5 reply:(id)a6;
- (void)updateNFCSlotUIMessageWithMessage:(id)a3 slotName:(id)a4 reply:(id)a5;
@end

@implementation TKSlotClient

+ (BOOL)handleConnection:(id)a3 server:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TKSlotClient);
  server = v7->_server;
  v7->_server = v5;
  v9 = v5;

  objc_storeWeak(&v7->_connection, v6);
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotClient];

  [v6 setExportedInterface:v10];
  [v6 setExportedObject:v7];

  return 1;
}

- (void)reportChangesForSlotType:(id)a3 reply:(id)a4
{
  objc_storeStrong(&self->_slotType, a3);
  v7 = a3;
  v8 = a4;
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotClientNotification];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setRemoteObjectInterface:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F0C4;
  v12[3] = &unk_100038710;
  v12[4] = self;
  v11 = objc_loadWeakRetained(&self->_connection);
  [v11 setInvalidationHandler:v12];

  [(TKSlotServer *)self->_server addClient:self reply:v8];
}

- (void)startNFCSlotWithName:(id)a3 uiSheetMessage:(id)a4 supportedAppIdentifiers:(id)a5 reply:(id)a6
{
  server = self->_server;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer startNFCSlotWithName:uiMessage:supportedAppIdentifiers:connectionPID:reply:](server, "startNFCSlotWithName:uiMessage:supportedAppIdentifiers:connectionPID:reply:", v14, v13, v12, [WeakRetained processIdentifier], v11);
}

- (void)endNFCSlotWithName:(id)a3 reply:(id)a4
{
  server = self->_server;
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer endAndRemoveNFCSlotWithSlotName:connectionPID:reply:](server, "endAndRemoveNFCSlotWithSlotName:connectionPID:reply:", v8, [WeakRetained processIdentifier], v7);
}

- (void)updateNFCSlotUIMessageWithMessage:(id)a3 slotName:(id)a4 reply:(id)a5
{
  server = self->_server;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer updateNFCSlotUIMessageWithMessage:slotName:connectionPID:reply:](server, "updateNFCSlotUIMessageWithMessage:slotName:connectionPID:reply:", v11, v10, [WeakRetained processIdentifier], v9);
}

- (TKProtocolSlotClientNotification)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = [WeakRetained remoteObjectProxy];

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = TKSlotClient;
  [(TKSlotClient *)&v4 dealloc];
}

@end