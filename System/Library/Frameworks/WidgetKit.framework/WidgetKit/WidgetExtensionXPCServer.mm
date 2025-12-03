@interface WidgetExtensionXPCServer
- (BOOL)shouldAcceptConnection:(id)connection;
- (_TtC9WidgetKit24WidgetExtensionXPCServer)init;
@end

@implementation WidgetExtensionXPCServer

- (BOOL)shouldAcceptConnection:(id)connection
{
  v4 = objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer.ExportedObject());
  connectionCopy = connection;
  v6 = sub_192035854(connectionCopy);
  _extensionAuxiliaryVendorProtocol = [type metadata accessor for _WidgetExtensionBaseContext() _extensionAuxiliaryVendorProtocol];
  [connectionCopy setExportedInterface_];

  [connectionCopy setExportedObject_];
  [connectionCopy resume];

  return 1;
}

- (_TtC9WidgetKit24WidgetExtensionXPCServer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetExtensionXPCServer();
  return [(WidgetExtensionXPCServer *)&v3 init];
}

@end