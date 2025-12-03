@interface _SFSharingLinkExtractor
- (_SFSharingLinkExtractor)initWithWebView:(id)view;
- (void)fetchSharingLinkWithCompletionHandler:(id)handler;
@end

@implementation _SFSharingLinkExtractor

- (_SFSharingLinkExtractor)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _SFSharingLinkExtractor;
  v5 = [(_SFSharingLinkExtractor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)fetchSharingLinkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

  v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50BB310];
  v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
  [v7 fetchSharingLinkWithCompletionHandler:handlerCopy];
}

@end