@interface _SWBaseCollaborationSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_SWBaseCollaborationSource)initWithItemIdentifier:(id)a3 domain:(id)a4 extension:(id)a5;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
@end

@implementation _SWBaseCollaborationSource

- (_SWBaseCollaborationSource)initWithItemIdentifier:(id)a3 domain:(id)a4 extension:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 conformsToProtocol:&unk_1F4E1F5B8])
  {
    v18.receiver = self;
    v18.super_class = _SWBaseCollaborationSource;
    v12 = [(_SWBaseCollaborationSource *)&v18 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_itemIdentifier, a3);
      objc_storeStrong(&v13->_domain, a4);
      objc_storeStrong(&v13->_extension, a5);
      v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
      listeners = v13->_listeners;
      v13->_listeners = v14;
    }

    self = v13;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = [MEMORY[0x1E696B0D8] anonymousListener];
  [v4 setDelegate:self];
  v5 = [v4 endpoint];
  [v4 resume];
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_listeners addObject:v4];
  objc_sync_exit(v6);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SWBaseCollaborationSource *)self interface];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = self;
  objc_sync_enter(v9);
  [(NSHashTable *)v9->_listeners removeObject:v6];
  objc_sync_exit(v9);

  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___SWBaseCollaborationSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_1E8412460;
  v10 = v6;
  v15 = v10;
  [v7 setInvalidationHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___SWBaseCollaborationSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_1E8412488;
  objc_copyWeak(&v13, &location);
  [v7 setInterruptionHandler:v12];
  [v7 resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

@end