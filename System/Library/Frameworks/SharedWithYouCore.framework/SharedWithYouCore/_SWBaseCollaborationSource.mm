@interface _SWBaseCollaborationSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_SWBaseCollaborationSource)initWithItemIdentifier:(id)identifier domain:(id)domain extension:(id)extension;
- (id)makeListenerEndpointAndReturnError:(id *)error;
@end

@implementation _SWBaseCollaborationSource

- (_SWBaseCollaborationSource)initWithItemIdentifier:(id)identifier domain:(id)domain extension:(id)extension
{
  identifierCopy = identifier;
  domainCopy = domain;
  extensionCopy = extension;
  if ([extensionCopy conformsToProtocol:&unk_1F4E1F5B8])
  {
    v18.receiver = self;
    v18.super_class = _SWBaseCollaborationSource;
    v12 = [(_SWBaseCollaborationSource *)&v18 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_itemIdentifier, identifier);
      objc_storeStrong(&v13->_domain, domain);
      objc_storeStrong(&v13->_extension, extension);
      v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
      listeners = v13->_listeners;
      v13->_listeners = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [anonymousListener setDelegate:self];
  endpoint = [anonymousListener endpoint];
  [anonymousListener resume];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners addObject:anonymousListener];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  interface = [(_SWBaseCollaborationSource *)self interface];
  [connectionCopy setExportedInterface:interface];

  [connectionCopy setExportedObject:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, connectionCopy);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___SWBaseCollaborationSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_1E8412460;
  v10 = listenerCopy;
  v15 = v10;
  [connectionCopy setInvalidationHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___SWBaseCollaborationSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_1E8412488;
  objc_copyWeak(&v13, &location);
  [connectionCopy setInterruptionHandler:v12];
  [connectionCopy resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

@end