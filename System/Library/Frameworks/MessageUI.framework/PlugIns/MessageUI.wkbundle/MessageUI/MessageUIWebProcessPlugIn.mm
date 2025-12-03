@interface MessageUIWebProcessPlugIn
- (BOOL)blockRemoteContent;
- (BOOL)isPad;
- (MessageUIWebProcessPlugIn)init;
- (NSString)defaultComposeFontFamily;
- (NSString)remoteContentProxySchemePrefix;
- (double)defaultComposeFontPixelSize;
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
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
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"isPad"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (double)defaultComposeFontPixelSize
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"defaultComposeFontPixelSize"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSString)defaultComposeFontFamily
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"defaultComposeFontFamily"];

  return v3;
}

- (BOOL)blockRemoteContent
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"showRemoteImages"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (NSString)remoteContentProxySchemePrefix
{
  parameters = [(WKWebProcessPlugInController *)self->_controller parameters];
  v3 = [parameters valueForKey:@"remoteContentProxySchemePrefix"];

  return v3;
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v5 = [[ComposeBodyFieldBundleController alloc] initWithPlugIn:self contextController:controllerCopy];
  [(NSMapTable *)self->_fieldControllersByContext setObject:v5 forKey:controllerCopy];
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NSMapTable *)self->_fieldControllersByContext objectForKey:?];
  [v5 invalidate];
  [(NSMapTable *)self->_fieldControllersByContext removeObjectForKey:controllerCopy];
}

@end