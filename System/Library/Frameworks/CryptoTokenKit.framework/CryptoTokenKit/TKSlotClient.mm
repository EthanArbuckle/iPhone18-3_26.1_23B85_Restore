@interface TKSlotClient
+ (BOOL)handleConnection:(id)connection server:(id)server;
- (TKProtocolSlotClientNotification)notification;
- (void)dealloc;
- (void)endNFCSlotWithName:(id)name reply:(id)reply;
- (void)reportChangesForSlotType:(id)type reply:(id)reply;
- (void)startNFCSlotWithName:(id)name uiSheetMessage:(id)message supportedAppIdentifiers:(id)identifiers reply:(id)reply;
- (void)updateNFCSlotUIMessageWithMessage:(id)message slotName:(id)name reply:(id)reply;
@end

@implementation TKSlotClient

+ (BOOL)handleConnection:(id)connection server:(id)server
{
  serverCopy = server;
  connectionCopy = connection;
  v7 = objc_alloc_init(TKSlotClient);
  server = v7->_server;
  v7->_server = serverCopy;
  v9 = serverCopy;

  objc_storeWeak(&v7->_connection, connectionCopy);
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotClient];

  [connectionCopy setExportedInterface:v10];
  [connectionCopy setExportedObject:v7];

  return 1;
}

- (void)reportChangesForSlotType:(id)type reply:(id)reply
{
  objc_storeStrong(&self->_slotType, type);
  typeCopy = type;
  replyCopy = reply;
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

  [(TKSlotServer *)self->_server addClient:self reply:replyCopy];
}

- (void)startNFCSlotWithName:(id)name uiSheetMessage:(id)message supportedAppIdentifiers:(id)identifiers reply:(id)reply
{
  server = self->_server;
  replyCopy = reply;
  identifiersCopy = identifiers;
  messageCopy = message;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer startNFCSlotWithName:uiMessage:supportedAppIdentifiers:connectionPID:reply:](server, "startNFCSlotWithName:uiMessage:supportedAppIdentifiers:connectionPID:reply:", nameCopy, messageCopy, identifiersCopy, [WeakRetained processIdentifier], replyCopy);
}

- (void)endNFCSlotWithName:(id)name reply:(id)reply
{
  server = self->_server;
  replyCopy = reply;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer endAndRemoveNFCSlotWithSlotName:connectionPID:reply:](server, "endAndRemoveNFCSlotWithSlotName:connectionPID:reply:", nameCopy, [WeakRetained processIdentifier], replyCopy);
}

- (void)updateNFCSlotUIMessageWithMessage:(id)message slotName:(id)name reply:(id)reply
{
  server = self->_server;
  replyCopy = reply;
  nameCopy = name;
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  -[TKSlotServer updateNFCSlotUIMessageWithMessage:slotName:connectionPID:reply:](server, "updateNFCSlotUIMessageWithMessage:slotName:connectionPID:reply:", messageCopy, nameCopy, [WeakRetained processIdentifier], replyCopy);
}

- (TKProtocolSlotClientNotification)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
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