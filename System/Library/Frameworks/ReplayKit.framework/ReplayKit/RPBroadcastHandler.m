@interface RPBroadcastHandler
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPBroadcastHandler)init;
- (void)_completeRequestWithReturnItems:(id)a3;
@end

@implementation RPBroadcastHandler

- (void)_completeRequestWithReturnItems:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_serviceInfo)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"RPBroadcastExtensionKeyExtensionServiceInfo"];
    v8 = [v6 initWithString:v7];
    [v5 setAttributedTitle:v8];

    v9 = objc_alloc(MEMORY[0x277CCAA88]);
    v10 = [v9 initWithItem:self->_serviceInfo typeIdentifier:*MEMORY[0x277CC2050]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v5 setAttachments:v11];

    v12 = [v4 arrayByAddingObject:v5];

    [(RPBroadcastHandler *)self setServiceInfo:0];
    v4 = v12;
  }

  v13 = [(RPBroadcastHandler *)self extensionContext];
  [v13 completeRequestReturningItems:v4 completionHandler:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (RPBroadcastHandler)init
{
  v6.receiver = self;
  v6.super_class = RPBroadcastHandler;
  v2 = [(RPBroadcastHandler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE98] anonymousListener];
    [(RPBroadcastHandler *)v2 setListener:v3];

    [(NSXPCListener *)v2->_listener resume];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v4 = [(NSXPCListener *)v2->_listener endpoint];
    [(RPBroadcastHandler *)v2 setListenerEndpoint:v4];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12[8] = *MEMORY[0x277D85DE8];
  [(RPBroadcastHandler *)self setConnection:a4];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D944E8];
  v6 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v12[7] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];
  v8 = [v6 setWithArray:v7];
  [v5 setClasses:v8 forSelector:sel_processPayload_completion_ argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)self->_connection setExportedInterface:v5];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D94558];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v9];

  [(NSXPCConnection *)self->_connection resume];
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

@end