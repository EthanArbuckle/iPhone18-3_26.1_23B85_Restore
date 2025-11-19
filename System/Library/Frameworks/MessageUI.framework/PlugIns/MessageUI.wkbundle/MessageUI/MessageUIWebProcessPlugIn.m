@interface MessageUIWebProcessPlugIn
- (BOOL)blockRemoteContent;
- (BOOL)isPad;
- (MessageUIWebProcessPlugIn)init;
- (NSString)defaultComposeFontFamily;
- (NSString)remoteContentProxySchemePrefix;
- (double)defaultComposeFontPixelSize;
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation MessageUIWebProcessPlugIn

- (MessageUIWebProcessPlugIn)init
{
  v6.receiver = self;
  v6.super_class = MessageUIWebProcessPlugIn;
  v2 = [(MessageUIWebProcessPlugIn *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    fieldControllersByContext = v2->_fieldControllersByContext;
    v2->_fieldControllersByContext = v3;
  }

  return v2;
}

- (BOOL)isPad
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"isPad"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)defaultComposeFontPixelSize
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"defaultComposeFontPixelSize"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSString)defaultComposeFontFamily
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"defaultComposeFontFamily"];

  return v3;
}

- (BOOL)blockRemoteContent
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"showRemoteImages"];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (NSString)remoteContentProxySchemePrefix
{
  v2 = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [v2 valueForKey:@"remoteContentProxySchemePrefix"];

  return v3;
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v6 = a4;
  v5 = [[ComposeBodyFieldBundleController alloc] initWithPlugIn:self contextController:v6];
  [(NSMapTable *)self->_fieldControllersByContext setObject:v5 forKey:v6];
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  v6 = a4;
  v5 = [(NSMapTable *)self->_fieldControllersByContext objectForKey:?];
  [v5 invalidate];
  [(NSMapTable *)self->_fieldControllersByContext removeObjectForKey:v6];
}

@end