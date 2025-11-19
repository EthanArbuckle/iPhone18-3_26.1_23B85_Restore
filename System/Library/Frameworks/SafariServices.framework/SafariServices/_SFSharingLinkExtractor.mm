@interface _SFSharingLinkExtractor
- (_SFSharingLinkExtractor)initWithWebView:(id)a3;
- (void)fetchSharingLinkWithCompletionHandler:(id)a3;
@end

@implementation _SFSharingLinkExtractor

- (_SFSharingLinkExtractor)initWithWebView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFSharingLinkExtractor;
  v5 = [(_SFSharingLinkExtractor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, v4);
    v7 = v6;
  }

  return v6;
}

- (void)fetchSharingLinkWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8 = [WeakRetained _remoteObjectRegistry];

  v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50BB310];
  v7 = [v8 remoteObjectProxyWithInterface:v6];
  [v7 fetchSharingLinkWithCompletionHandler:v4];
}

@end